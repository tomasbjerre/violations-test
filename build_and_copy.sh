#!/bin/bash
./build.sh

#Fix
find . -name "*.html" | xargs rm
current_dir=`pwd`
current_dir="${current_dir//\//\\/}"
find . -name "*.xml" | xargs sed -i "s/${current_dir}//"

cp -Rv build/reports/* ../violations-lib/src/test/resources
