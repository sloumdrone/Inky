<!DOCTYPE html>
<html>
    <head>
        %upcasename = str.title(pagename)
        <title>Inky | Create: {{upcasename}}</title>
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
            <h4>Create: {{upcasename}}</h4>
        </header>

        <!-- Main page content -->
        <div class="bodytext" id="PageEntry">
            <p>
                <form action="/edit/{{pagename}}", method="POST">
                    <textarea name="PageData" rows="25" cols="100" placeholder="Enter wiki text..." required class="edit-submit"></textarea>
                    <input type="Submit" value="Publish" class="edit-submit">
                    <div  id="cancel-button">
                        <a href="/wiki/{{pagename}}">Cancel</a>
                    </div>
                </form>
            </p>
        </div>
    </body>
</html>
