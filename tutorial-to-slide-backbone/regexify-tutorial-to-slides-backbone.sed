# Indicate to keep YAML

/^\.\.\./,/\.\.\./ s_^_::KEEP::_g

# Change YAML value "layout" from tutorial to slide
s_\(layout:\)\ *tutorial_\1 slide_


# Indicate to keep titles
/^\ *\(\#\)/ s_^_::KEEP::_

# Indicate to keep images
s_\!\[[^\\]*\]\ *([^)]*)_\n::KEEP::&\n_g

# Indicate to keep new slides indication
/^---/ s_^_::KEEP::_





# Remove any line not indicated to be keept
#/./p
/::KEEP::/ s_::KEEP::__gp
