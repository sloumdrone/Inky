<!DOCTYPE html>
<html>
    <head>
        %upcasename = str.title(pagename)
        <title>Inky | Search results</title>
        <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=2.0, minimum-scale=1.0">
        <link rel="stylesheet" type="text/css" href="/styles/new-dark-main.css" />
    </head>
    <body>
        <!-- Site header -->
        <div class="topBar">
            <div class="title-container">
                <a href="/wiki/main"><h1>Inky</h1></a>
                <h3 class="nosmall">A lightweight wiki engine</h3>
            </div>
            <div class="main-menu-container">
                <ul id="main-menu">
                    <li class="nosmall"><a href="/wiki/main" class="sideBarItem">Home</a></li>
                    <li class="notiny"><a href="/wiki/about" class="sideBarItem">About</a></li>
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
            <h4>Search results for "{{upcasename}}"</h4>
        </header>


        <div class="bodytext" id="PageEntry">
            %resultcount = len(results)
            %pagenameSpaces = pagename.replace('_',' ')
            <p>
                Your search for "<b>{{pagenameSpaces}}</b>" has returned {{resultcount}} results:
            </p>
            <p>
                %if resultcount:
                    <ul>
                    %for item in results:
                        <li>
                            <a href="/wiki/{{item}}">{{item.replace('_',' ').title()}}</a>
                        </li>
                    %end
                    </ul>
                    %if not found:
                        <p>Since no exact match was found for your search term, you may create the page "{{pagenameSpaces}}" by <a href="/wiki/{{pagename}}">clicking here.</a></p>
                    %end
                %else:
                    Since no results were found you may <a href="/wiki/{{pagename}}">click here</a> here to create "{{pagenameSpaces}}".
                %end
            </p>

        </div>
    </body>
</html>
