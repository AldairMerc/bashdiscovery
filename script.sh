#!/usr/bin/env bash

echo "Dame el endpoint a atacar: "
read url
echo "Como se llama el archivo: "
read file

echo -e "Attacking endpoint: $url\n\nHeaders and codes of endpoint: $url"> $file;
curl -I $url -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0' >> $file;
echo "URLS in this endpoint" >> $file; 
curl $url -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0' | grep -o 'href="[^"#"]*"' |$url = $url awk -F '"' '{if($2 !~ /^http/) print $url; else print $url $2}'| sort | uniq -u >> $file
#curl  '$url' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0' | grep -o 'href"[^"#"]"' | awk -F '"' '{if ($2 !~ /http/) print $2; else print $2}' | sort | uniq -u >> $file;
