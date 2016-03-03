#!/bin/bash
./gradlew clean build -i
npm install
./node_modules/.bin/grunt

find ../violations-lib/src/test/resources -name "*.html" | xargs rm
current_dir=`pwd`
current_dir="${current_dir//\//\\/}"
find ../violations-lib/src/test/resources -name "*.xml" | xargs sed -i "s/${current_dir}//"
