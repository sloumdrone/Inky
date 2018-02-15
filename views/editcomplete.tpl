<!DOCTYPE html>
<html>
    <head>
        %upcasename = str.title(pagename)
        <title>Inky: Edit Complete</title>
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
            <h4>Edit of {{upcasename}} is complete</h4>
        </header>

        <!-- Main page content -->
        <div class="bodytext" id="PageEntry">
            <p>
                Your edit of <b><a href="/wiki/{{pagename}}">{{pagename}}</a></b> is complete.
            </p>
        </div>
  </body>
</html>
