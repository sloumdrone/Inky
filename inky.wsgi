import sys, os, bottle

sys.path = ['/var/www/inky/'] + sys.path

os.chdir(os.path.dirname(__file__))

import Inky

application = bottle.default_app()
