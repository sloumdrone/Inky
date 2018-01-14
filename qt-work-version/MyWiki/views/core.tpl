<!DOCTYPE html>
<html>
<head>
%pagenameSpaces = pagename.replace('_',' ')
%upcasename = str.title(pagenameSpaces)
%bodytext = str.strip(bodytext)
<title>{{upcasename}}</title>
<link rel="stylesheet" type="text/css" id="current-theme" href="/styles/dark-main.css" />
</head>
<body>

<!--Menu items / top and side bar(s) -->

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

<!-- Page content unique to this page -->

  <div class="header">
    <div class="container">
      <h2>{{upcasename}}</h2>
    </div>
  </div>

  <div class="bodytext" id="PageEntry">{{!bodytext}}</div>


</div>

<!-- Footer -->

<div class="articlefoot">

  %if pagename not in ['main','about']:
      <a href="/delete/{{pagename}}" class="footerbox" onclick="return confirm('Are you sure you want to delete {{pagename}}?')">Delete</a>
      <a href="/rename/existing/{{pagename}}" class="footerbox">Rename</a>
      <a href="/edit/existing/{{pagename}}" class="footerbox">Edit</a>


  %else:
      <a href="#" class="footerbox">Delete</a>
      <a href="#" class="footerbox">Rename</a>
      <a href="#" class="footerbox">Edit</a>
  %end
</div>

<!-- Scripts -->
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
  function swapCSS(sheetname) {
    document.getElementById("current-theme").setAttribute("href",sheetname);
  }
</script>
</body>
</html>
