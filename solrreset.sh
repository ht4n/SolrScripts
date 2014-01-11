#!/bin/bash

echo $1
curl $1 --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml;charset=utf-8'

curl $1 --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
