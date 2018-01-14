# MyWiki

MyWiki (To be renamed at a later point) is a Python based wiki utilizing the Bottle microframework. Why another Python wiki (or another wiki at all)? For the fun of it! Also, to improve upon features I found lacking in other lightweight Python wikis. I am targeting the PirateBox/LibraryBox community as a possible use case for this, as I have enjoyed MonkeyWiki on my PirateBox quite a bit, but thought it would be fun to expand on the concept.

Requirements:
---------------
- Bottle (pip install bottle)
- Python 2.x (originally built with 2.7.12)

--------------------------------------------------------
Install
--------------------------------------------------------

To install a local instance of MyWiki simply copy or clone the repository to a folder on your drive. Make sure you have the requirements downloaded. Bottle can be acquired through pip or through the developer site as a downloadable python file. I have used the pip method during development.

Once downloaded, simply run myWiki.py from the directory hosting all of the program files and direct your browser to port 8080 of localhost. You can set it up to run on a different port if you'd like. You can do so at the bottom of myWiki.py. I have played around with running the bottle server on my local machine with my IP rather than localhost, so that friends on my network could check things out... this results in performance issues that I believe to be related to the server that bottle builds by default. For any kind of large scale server deployment you will want to read the deployment section of Bottle's documentation (which covers a number of server infrastructures/technologies).



--------------------------------------------------------
Use
--------------------------------------------------------

Out of the box MyWiki has an about page and a home/main page. Both of which cannot be edited from within the app UI. They can, however, be edited by hand in the content folder. When editing them, use standard HTML (not MyWikiCode). To create more pages you just need to navigate to the page you'd like to create, as follows:

http://localhost:8080/wiki/foo

Just replace foo with whatever page you would like. In general, use underscores to represent spaces (as these will be converted by the wiki engine into spaces when displayed). This will take you to an edit page to create the article in question. Visit the main/Home page to learn about how to edit pages and create links to other pages.



--------------------------------------------------------
Features
--------------------------------------------------------

- Lightweight
- No need to manage a database
- Drag and drop, w/ minimal server customization
- HTML not allowed in editor, MyWikiCode has been created for secure article editing
- Ability to edit, rename, or delete articles
- With some minor coding, the ability to add static pages to the menu
- A robust template system via Bottle's built in template / tpl system, which allows for python code to be run in-line with html



--------------------------------------------------------
To-Do
--------------------------------------------------------

- Simplify the CSS structure
- Add a theme toggle to the top bar (switch between light, dark, and colorful)
- Add search with ranked results
- Expand MyWikiCode as needed
- Add media upload and embed (images, audio, video - in that order)
- Create a config file for easy non-code set-up.
