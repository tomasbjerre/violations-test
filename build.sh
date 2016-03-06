#!/bin/bash
#Findbugs, Checkstyle, PMD
./gradlew clean build -i

#JSHint, CSSLint
npm install -v
./node_modules/.bin/grunt

#Lint
mkdir -p build/reports/lint
./node_modules/.bin/csslint web/css-file2.css --format=lint-xml > build/reports/lint/lint.xml

#CPPLint
#cppcheck --quiet --enable=all --force --inline-suppr --xml --xml-version=2 . 2> cppcheck-result.xml
#cd ..

#Flake8
flake8 python/project/file.py > build/flake8_2.txt
