<!DOCTYPE html>
<html>
    <head>
        %pagenameSpaces = pagename.replace('_',' ')
        %upcasename = str.title(pagenameSpaces)
        %bodytext = str.strip(bodytext)
        <title>Inky: {{upcasename}}</title>
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
            <h4>{{upcasename}}</h4>
            %if pagename not in ['main','about']:
                <ul id="submenu">
                    <li> <a href="/delete/{{pagename}}" onclick="return confirm('Are you sure you want to delete {{pagename}}?')">Delete</a></li>
                    <li> | </li>
                    <li><a href="/rename/existing/{{pagename}}">Rename</a></li>
                    <li> | </li>
                    <li><a href="/edit/existing/{{pagename}}">Edit</a></li>
                </ul>
            %end
        </header>

        <!-- Main page content -->
        <div class="bodytext" id="PageEntry">{{!bodytext}}</div>
    </body>
</html>
