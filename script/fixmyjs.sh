#!/bin/bash
# you must install https://developers.google.com/closure/utilities/docs/linter_howto
# sudo pip install https://closure-linter.googlecode.com/svn/trunk/
find -regex ".*\.\(js\)" \
    -not -path "./bower_components/*" \
    -not -path "./node_modules/*" \
    -not -path "./dist/*" \
    -not -path "./.publish/*" \
    -not -path "./.tmp/*" \
    | xargs fixjsstyle

# you must install https://github.com/jshint/fixmyjs
# npm install fixmyjs -g
find -regex ".*\.\(js\)" \
    -not -path "./bower_components/*" \
    -not -path "./node_modules/*" \
    -not -path "./dist/*" \
    -not -path "./.publish/*" \
    -not -path "./.tmp/*" \
    | xargs fixmyjs

./script/formatCode.sh