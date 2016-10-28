
# coding: utf-8

# In[1]:

import re
import os


# In[2]:

tuto_filename = 'test-tutorial.md'
slide_filename = re.sub(r'tutorial', r'slide', tuto_filename)


# In[3]:

f = open(tuto_filename, 'r')
os.system("sed -n -f regexify-print-tutorial-to-slides-backbone.sed " + tuto_filename + ">" + slide_filename)
get_ipython().system(u'cat $slide_filename')
f.close()

