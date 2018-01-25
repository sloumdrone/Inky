import re
import os, os.path


def test(loc,string):
    for item in os.listdir('./content/'):
        if re.search(r''+string,item,re.I):
            print item

test('./content/','an')
