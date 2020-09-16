#! /bin/bash

echo "Enter filename to search text from"
read fileName

if [[ -f $fileName ]]
then
	echo "Enter the text to search"
	read grepvar
	grep -i -n $grepvar $fileName				# -i removing case sensitive
								# -n adding line number
else								# -c how many times word repeats
	echo "$fileName doesn't exists"				# -v all lines without word
fi
