#!/bin/bash
# this script reads a file (SPARQL query) and URL encodes it for use as direct links
# ask user for input directory
read -p "Please provide a directory with files to be encoded: " -r input_dir
cd $input_dir && pwd
output_dir=$input_dir
base_url="https://query.wikidata.org/embed.html#"
# create a log file
logfile="links_embedded.md"
echo "" > "$logfile"

for file in $input_dir/*.rq;
    do
        name=$(basename $file  | cut -d. -f1)
        echo "converting SPARQL query \"$name\" to URL"
        # read the query into a string
        query=$(<$file)
        # URL-encode the string
        query_urlencoded=$(perl -MURI::Escape -e 'print uri_escape($ARGV[0])' "$query")
        # process the string by stripping out comments and condense whitespace
        query_clean=$(echo "$query_urlencoded" | perl -pe 's/(%20)*%23%20.+?%0A/%20/g' | perl -pe 's/(%20)+/%20/g')
        url="$base_url/$query_clean"
        # save with prefix as full URL
        echo "$url" > $output_dir/$name".txt"
        echo "[rq:$name]: $url" >> $logfile
    done