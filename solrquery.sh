#!/bin/bash

query=$*

echo "Query: $query"

echo curl $solrquery$query
curl $solrquery$query
