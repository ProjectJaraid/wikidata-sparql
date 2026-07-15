#!/bin/bash
# this script reads a file (SPARQL query) and URL encodes it for use as direct links
# ask user for input directory
read -p "Please provide a directory with files to be encoded: " -r input_dir
output_dir=$input_dir
base_url="https://query.wikidata.org/embed.html#"
STRING="#title: الصحافة العربية حتى سنة ١٩٣٠"

for file in $input_dir/*.rq;
    do
        name=$(basename $file  | cut -d. -f1)
        echo "converting SPARQL query \"$name\" to URL"
        # read the query into a string
        query=$(<$file)
        # URL-encode the string
        query_urlencoded=$(perl -MURI::Escape -e 'print uri_escape($ARGV[0])' "$query")
        # save with prefix as full URL
        echo "$base_url$query_urlencoded" > $output_dir/$name".txt"
    done