<!DOCTYPE html>
<html>
    <head>
        %upcasename = str.title(pagename)
        <title>Inky | Rename Complete</title>
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
            <h4>Renaming of {{upcasename}} is complete</h4>
        </header>


        <div class="bodytext" id="PageEntry">
            <p>
                Your rename of <b>{{pagename}}</b> to <b><a href="/wiki/{{newNameForURL}}">{{newName}}</a></b> is complete.
            </p>
        </div>
    </body>
</html>
