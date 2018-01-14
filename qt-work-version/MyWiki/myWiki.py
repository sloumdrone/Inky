################################################################################
#----------------MyWiki---by-Brian-Evans---------------------------------------#
################################################################################

from bottle import route, run, template, static_file, post, request, get
import os.path, os

#####---------------------Main-page-view-functions-------------------------#####

@route('/wiki/<pagename>')
def build(pagename='main'):
    #Serves either an edit dialog or an existing page
    if not os.path.isfile('./content/' + str(pagename)):
        return template('editcreate', pagename=pagename)
    else:
        with open('./content/' + pagename, 'r') as textfile:
            bodytext = textfile.read()
        return template('core', pagename=pagename, bodytext=bodytext)

@route('/edit/<pagename>', method='POST')
def createedit(pagename):
    #Commits the edits supplied to it from 'build' or 'editExisting'
    pagedata = request.forms.get('PageData') #comes in as a string
    pagedata = stripHTML(pagedata)
    pagedata = alinkbuild(pagedata)
    pagedata = swapScript(pagedata,'ToHTML')
    fo = open('./content/' + pagename, 'w')
    fo.write(str.strip(pagedata))
    fo.close()
    return template('editcomplete', pagename=pagename)

@route('/edit/existing/<pagename>')
def editExisting(pagename):
    #Serves an edit page for a pre-existing article
    with open('./content/' + pagename, 'r') as textfile:
        bodytext = textfile.read()
        bodytext = alinkunbuild(bodytext)
        bodytext = swapScript(bodytext,'FromHTML')
        bodytext = str.strip(bodytext)
    return template('editexisting', pagename=pagename, bodytext=bodytext)

@route('/rename/<pagename>', method='POST')
def renameExisting(pagename):
    #Renames an existing page and is fed from a function titled 'renameEntry'
    newName = request.forms.get('newpagename')
    newNameForURL = newName.replace(' ','_')
    os.rename('./content/' + pagename, './content/' + newNameForURL)
    return template('renamecomplete', pagename=pagename, newName=newName, newNameForURL=newNameForURL)

@route('/rename/existing/<pagename>')
def renameEntry(pagename):
    #Serves an edit page to change an article's name
    return template('rename', pagename=pagename)

@route('/delete/<pagename>')
def deleteArticle(pagename):
    if os.path.isfile('./content/' + pagename):
        os.remove('./content/' + pagename)
        deletestatus = 'was successful.'
        return template('deletecomplete', pagename=pagename, deletestatus=deletestatus)
    else:
        deletestatus = 'failed. The article did not exist.'
        return template('deletecomplete', pagename=pagename, deletestatus=deletestatus)

@route('/styles/<css>')
def servestyle(css):
    #This serves the CSS to the templates
    return static_file(css,root='./styles/')





#####-------------Functions-for-editor(s)/String-Functions-----------------#####

def alinkbuild(string):
#Will build hyperlinks from WikiCode entered into the edit textareabox
#At present this allows for properly nested wikiCode within '[F: ... :F]' tags
    instances = string.count('[F: ')
    if instances > 0:
        for x in range(instances):
            start = string.find('[F: ') + 4
            end = string.find(' :F]')
            linktext = string[start:end]
            if linktext.count(':') > 1 and linktext.count(':') % 2 == 0:
                counter = linktext.count(':')/2
                linkname = linktext[4*counter:len(linktext)-4*counter]
                linkname = linkname.replace(' ','_')
            else:
                linkname = linktext.replace(' ','_')
            string = string.replace('[F: ' + linktext + ' :F]', '<a href="/wiki/' + linkname + '">' + linktext + '</a>')
        return string
    else:
        return string

def alinkunbuild(string):
#Deconstructs hyperlinks back into Wikicode for the edit textarea box
    instances = string.lower()
    instances = instances.count('<a href=')
    linklist = []
    marker = 0
    if instances > 0:
        for x in range(instances):
            start = string.lower().find('<a href=',marker)
            end = string.find('>',start + 1) + 1
            linklist.append(string[start:end])
            marker = end + 1
        for y in set(linklist):
            string = string.replace(y,'[F: ')
        string = string.replace('</a>',' :F]')
        return string
    else:
        return string

def stripHTML(string):
#Will strip all html tags from a string
    instances = string.count('<')
    if instances > 0:
        for x in range(instances):
            start = string.find('<')
            end = string.find('>') + 1
            linktext = string[start:end]
            string = string.replace(linktext,'').replace('  ',' ')
        return string
    else:
        return string

def swapScript(string,direction='FromHTML'):
    #Direction takes: 'FromHTML' and any other value (to go ToHTML)
    #Swaps html for wikiCode and vice versa
    tags = [
    ['<b>','[b: '],['</b>',' :b]'],
    ['<i>','[i: '],['</i>',' :i]'],
    ['<sub>','[s: '],['</sub>',' :s]'],
    ['<sup>','[S: '],['</sup>',' :S]'],
    ['<blockquote>','[q: '],['</blockquote>',' :q]'],
    ['<p>','[p: '],['</p>',' :p]'],
    ['<h3>','[h: '],['</h3><hr>',' :h]'],
    ['<ul>','[L: '],['</ul',' :L]'],
    ['<li>','[l: '],['</li>',' :l]'],
    ['<br>','[n: ']
    ]

    for x in tags:
        if direction == 'FromHTML':
            string = string.replace(x[0],x[1])
        else:
            string = string.replace(x[1],x[0])
    return string


#####---------------------------Run-the-server-----------------------------#####
if __name__ == '__main__':
    run(host='localhost', port=8080)
