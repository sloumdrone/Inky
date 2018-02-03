<!DOCTYPE html>
<html>
    <head>
        %upcasename = str.title(pagename)
        %bodytext = str.strip(bodytext)
        <title>Inky | Edit: {{upcasename}}</title>
        <link rel="stylesheet" type="text/css" href="/styles/new-dark-main.css" />
    </head>
    <body>
        <!-- Site header -->
        <div class="topBar">
            <div class="title-container">
                <h1>Inky</h1>
                <h3>A lightweight wiki engine</h3>
            </div>
            <div class="main-menu-container">
                <ul id="main-menu">
                    <li><a href="/wiki/main" class="sideBarItem">Home</a></li>
                    <li><a href="/wiki/about" class="sideBarItem">About</a></li>
                    <li>
                        <form class="search" action="/wiki/search" method="POST">
                            <input type="text" name="pagename" value="" placeholder="Page Name" pattern="^[\w\-\s]{1,30}$" title="Must contain only letters, numbers, underscores, & spaces">
                            <input type="submit" name="submit" value="->">
                        </form>
                    </li>
                </ul>
            </div>
        </div>


        <!-- Header for this page -->
        <header>
            <h4>Edit: {{upcasename}}</h4>
        </header>


        <div class="bodytext" id="PageEntry">
            <form action="/edit/{{pagename}}", method="POST">
                <textarea name="PageData" rows="25" cols="100" required class="edit-submit">{{bodytext}}</textarea>
                <br />
                <input type="Submit" value="Publish" class="edit-submit">
                <div  id="cancel-button">
                    <a href="/wiki/{{pagename}}">Cancel</a>
                </div>
            </form>
            <div class="edit-instructions">
                Learn to edit articles with <a href="/wiki/Inky_Markup" target="_blank">Inky Markup</a><br> <sub>(Opens in new window)</sub>
            </div>
        </div>
    </body>
</html>
