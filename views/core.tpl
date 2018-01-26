<!DOCTYPE html>
<html>
    <head>
        %pagenameSpaces = pagename.replace('_',' ')
        %upcasename = str.title(pagenameSpaces)
        %bodytext = str.strip(bodytext)
        <title>Inky: {{upcasename}}</title>
        <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=2.0, minimum-scale=1.0">
        <link rel="stylesheet" type="text/css" href="/styles/new-dark-main.css" />
        <script type="text/javascript" src="/js/main.js"></script>
    </head>
    <body>
        <!-- Site header -->
        <div class="topBar">
            <div class="title-container">
                <h1>Inky</h1>
                <h3 class="nosmall">A lightweight wiki engine</h3>
            </div>
            <div class="main-menu-container">
                <ul id="main-menu">
                    <li><a href="/wiki/main" class="sideBarItem">Home</a></li>
                    <li class="nosmall"><a href="/wiki/about" class="sideBarItem">About</a></li>
                    <li>
                        <form class="search" action="/wiki/search" method="POST">
                            <input type="text" name="pagename" value="" placeholder="Page Name" pattern="^[\w\-\s]{1,30}$" title="Must contain only letters, numbers, underscores, & spaces">
                            <input type="submit" name="submit" value="->">
                        </form>
                    </li>
                </ul>
            </div>
        </div>


        <header>
            <h4>{{upcasename}}</h4>
            %if pagename not in options['locked_files']:
                <ul id="submenu">
                    %if options['edit_ok']:
                        <li><a href="/edit/existing/{{pagename}}">Edit</a></li>
                    %end
                    %if options['edit_ok'] and options['rename_ok']:
                        <li> | </li>
                    %end
                    %if options['rename_ok']:
                        <li><a href="/rename/existing/{{pagename}}">Rename</a></li>
                    %end
                    %if (options['edit_ok'] and options['delete_ok']) or options['delete_ok'] and options['rename_ok']:
                        <li> | </li>
                    %end
                    %if options['delete_ok']:
                        <li> <span class="modal-toggle">Delete</span></li>
                    %end
                </ul>
            %end
        </header>


        <div class="bodytext" id="PageEntry">{{!bodytext}}</div>

        %if options['delete_ok']:
            <div id="modal" class="hidden">
                <div class="modal-body">
                    <p>Are you sure you want to delete "{{upcasename}}"?</p>
                    <a href="/delete/{{pagename}}"><button type="button" name="Yes" class="modal-button" id="delete">Yes</button></a>
                    <button type="button" name="Cancel" class="modal-button" id="cancel">Cancel</button>
                </div>
            </div>
        %end
    </body>
</html>
