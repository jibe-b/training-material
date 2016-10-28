# YAML

/^\.\.\./,/\.\.\./ p

# Change YAML value "layout" from tutorial to slide
s_\(layout:\)\ *tutorial_\1 slide_p

# Titles
/^\ *\(\#\)/p

# Images
s_\!\[[^\\]*\]\ *([^)]*)_\n&\n_gp

# New slide indication
/^---/p

# Remove box class
/^>/ s_>\ *{[^}]*}__p

# Boxes
/^>/ s_>__p


