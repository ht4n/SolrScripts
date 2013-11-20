#!/bin/bash
file=$1
url=http://localhost:8983/solr/update/csv

echo "Updating $file"
echo "$url --data-binary @$file -H \'Content-type:text/plain; charset=utf-8\'"

curl $url?commit=true --data-binary @$file -H 'Content-type:text/plain; charset=utf-8'
