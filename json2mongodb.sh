#!/bin/bash

cd <Your json path>
for files in `ls`
do
	/usr/local/mongodb/bin/mongoimport --db qzone --mode merge --type json --collection shuoshuo_data --file $files
	echo "$files is imported into qzone"
done
