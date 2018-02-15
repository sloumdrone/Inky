# Inky

Inky is a Python based wiki utilizing the Bottle micro-framework. Why another Python wiki (or another wiki at all)? For the fun of it! Also, to improve upon features I found lacking in other lightweight Python wikis. I am targeting the PirateBox/LibraryBox community as a possible use case for this, as I have enjoyed MonkeyWiki on my PirateBox quite a bit, but thought it would be fun to expand on the concept.

Requirements:
---------------
- Bottle (pip install bottle)
- Python 2.x (originally built with 2.7.12)
- A place to deploy (locally via localhost or on a server via a number of WSGI compliant server backends)

--------------------------------------------------------
Install/Deployment
--------------------------------------------------------

To install a local instance of Inky simply copy or clone the repository to a folder on your drive. Make sure you have the requirements downloaded. Bottle can be acquired through pip or through the developer site as a downloadable python file. I have used the pip method during development.

Once downloaded, simply run Inky.py from the directory hosting all of the program files and direct your browser to port 8080 of localhost. You can set it up to run on a different port if you'd like. You can do so at the bottom of Inky.py. I have played around with running the bottle server on my local machine with my IP rather than localhost, so that friends on my network could check things out... this results in performance issues that I believe to be related to the server that bottle builds by default. For any kind of large scale server deployment you will want to read the deployment section of Bottle's documentation (which covers a number of server infrastructures/technologies).

The live site for inky wiki was deployed on an AWS server running Apache2. Instructions can be found around the interwebs (as well as Bottle's documentation) on how to use Bottle with Apache. It is a pretty easy config if you are used to editing virtual host configuration files. If not, do not fear: I am happy to answer any questions. Just shoot me a message through GitHub, or create an issue and I will solve it to the best of my ability.


--------------------------------------------------------
Use
--------------------------------------------------------

Out of the box Inky has an about page and a home/main page describing the wiki and its origins/use. Search has been implemented as the main means of new page creation and page location. If you search for a page and an exact match is not found, you will be shown the closest options and asked if you rather create a page to match your search exactly. InkyMarkup, a markup syntax based on html, has been created to allow users to create well formatted and pretty articles while simultaneously providing security by stripping out any actual html they might include. Inky handles all of the transpiling between InkyMarkup and HTML (for edit and display respectively) on the backend for you.

As of the most recent version, Inky comes with a config file where the wiki owner can turn on and off features like: user editing, user rename, and user delete. They can also add articles to a global list that prohibits edits of any kind by users (regardless of other settings). They can also edit the regex for the search form. The hope is that the config file will grow as the features grow and allow non-programmers to be able to host and configure the wiki themselves (minus a little bit of regex).



--------------------------------------------------------
Features
--------------------------------------------------------

- Lightweight
- No need to manage a database
- Drag and drop, w/ minimal server customization
- HTML not allowed in editor, InkyMarkup has been created for secure article editing
- Ability to edit, rename, or delete articles (configurable by wiki administrator)
- An easy to use configuration file
- A simple but stylish dark themed look


--------------------------------------------------------
To-Do
--------------------------------------------------------

- Implement full user auth/sessions
- Create a db backend (SQLite), rather than system file storage
- Add a theme toggle (switch between light, dark, and colorful) and/or config
- Expand InkyMarkup as needed
- Add media upload and embed (images, audio, video - in that order)

--------------------------------------------------------
Modification Options
--------------------------------------------------------

If you want to add user authentication and session persistence for those users, an easy option is to work the code from [this repo](https://github.com/sloumdrone/bottle-auth-test) into Inky (which is on the official Inky to do list as well). It will provide basic authentication (that can be modified to support security level tastes) and persistent login sessions. User information is stored in a SQLite database. it would also be very possible to convert the raw file system being used by Inky into a system that stores articles in the SQLite db (also a to-do list item).

