<!DOCTYPE html>
<html>
    <head>
        %upcasename = str.title(pagename)
        <title>Inky | Search results</title>
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
                            <input type="text" name="pagename" value="" placeholder="Page Name">
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
