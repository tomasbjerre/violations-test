#!/bin/bash
#Findbugs, Checkstyle, PMD
./gradlew clean build -i

./gradlew googleErrorProne > build/googleErrorProne.log 2>&1

#JSHint, CSSLint, ESLint
npm install -v
./node_modules/.bin/grunt

#Lint
mkdir -p build/reports/lint
./node_modules/.bin/csslint web/css-file2.css --format=lint-xml > build/reports/lint/lint.xml

#CPPLint
#cppcheck --quiet --enable=all --force --inline-suppr --xml --xml-version=2 . 2> cppcheck-result.xml
#cd ..

#Cpplint
mkdir -p build/reports/cpplint
cpplint cpp/test.cpp > build/reports/cpplint/cpplint.txt 2>&1

#xmllint
mkdir -p build/reports/xmllint
xmllint xml/myxml.xml xml/* > build/reports/xmllint/xmllint.txt 2>&1

#Flake8
flake8 python/project/file.py > build/flake8_2.txt

#PerlCritic
mkdir -p build/reports/perlcritic
perlcritic --verbose 5 perl/example.pl --brutal > build/reports/perlcritic/perlcritic.txt 2>&1
