<!DOCTYPE html>
<html>
  <head>
    %upcasename = str.title(pagename)
    %bodytext = str.strip(bodytext)
    <title>Edit: {{upcasename}}</title>
    <link rel="stylesheet" type="text/css" href="/styles/dark-main.css" />
  </head>
  <body>

    <div class="sideBar" style="display:none" id="mySidebar">
      <button class="barButton"
      onclick="sideBar_close()">&times;</button>
      <a href="/wiki/main" class="sideBarItem">Home</a>
      <a href="/wiki/about" class="sideBarItem">About</a>
      <a href="#" class="sideBarItem">Contact</a>
    </div>

    <div zclass="main" id="main">

      <div class="topBar">
        <button class="topButton" onclick="sideBar_open()">&#9776;</button>
        <div class="container">
          <h1>MyWiki</h1>
        </div>
      </div>

      <div class="header">
        <div class="container">
          <h2>{{upcasename}}</h2>
        </div>
      </div>


      <div class="bodytext" id="PageEntry">
        <p>
          <form action="/edit/{{pagename}}", method="POST">
            <textarea name="PageData" rows="25" cols="100" required>{{bodytext}}</textarea>
            <br />
            <input type="Submit" value="Publish" />
            <div  id="cancel-button">
              <a href="/wiki/{{pagename}}">Cancel</a>
            </div>
          </form>

            <ul>
              <li>b - bold</li>
              <li>i - italics</li>
              <li>F - internal wiki link</li>
              <li>s - subscript</li>
              <li>S - superscript</li>
              <li>q - block quote</li>
              <li>p - paragraph</li>
              <li>h - header row</li>
              <li>L - create a list (this should surround all the list items and list item tags)</li>
              <li>l - list item</li>
              <li>n - new line</li>
            </ul>

        </p>
      </div>
    </div>


<!--begin footer and scripts -->

    <div class="articlefoot">
      <a href="#" class="footerbox">Delete</a>
      <a href="#" class="footerbox">Rename</a>
      <a href="#" class="footerbox">Edit</a>
    </div>

    <script>
      function sideBar_open() {
        document.getElementById("main").style.marginLeft = "15%";
        document.getElementById("mySidebar").style.width = "15%";
        document.getElementById("mySidebar").style.display = "block";
      }
      function sideBar_close() {
        document.getElementById("main").style.marginLeft = "0%";
        document.getElementById("mySidebar").style.display = "none";
      }
    </script>
  </body>
</html>
