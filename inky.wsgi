import sys, os, bottle

sys.path = ['/var/www/inky/'] + sys.path

# Change working directory so relative paths (and template lookup) work again
os.chdir(os.path.dirname(__file__))


print '<html><body>This is a test</body></html>'
#import Inky         # This loads the REST framework that you have implemented as apiserver.py (The file that handles get/post requests)

# ... build or import your bottle application here ...
# Do NOT use bottle.run() with mod_wsgi
application = bottle.default_app()
