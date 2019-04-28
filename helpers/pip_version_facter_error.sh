#!/bin/sh 

# Wrapper that provides --version to older pip versions 
# Used by puppet pip_version.rb module which expects --version 

if test "$*" -eq "--version"; then
  ver=$(/usr/bin/pip --version 2>/dev/null)
  if test $? != 0; then 
    ver=$(dpkg -l python-pip | awk '/^ii/{print $3}')
    echo "pip $ver form dpkg"
  else
    echo "$ver"
  fi
else
  exec /usr/bin/pip "$@"
fi
