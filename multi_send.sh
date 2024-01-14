#!/bin/bash
LIST_RECIPIENT="/home/berto/Documents/NewZealand/Jobs/final_list.txt"
LIST_RECIPIENT="/home/berto/Documents/Help/SendingEmails/list2.txt"
EOI="/home/berto/Documents/CV/Expression_of_interest.txt"
CV="/home/berto/Documents/CV/CV_Arcomano_Roberto.pdf"
HEADER="From: Roberto Arcomano <info@robertoarcomano.com>"
SUBJECT="Expression of Interest"

i=0
cat "$LIST_RECIPIENT"|while read EMAIL; do
    echo $i $EMAIL
    let i=i+1
    cat "$EOI" | mail -A "$CV" -a "$HEADER" -s "$SUBJECT" "$EMAIL"
    read -r b</dev/tty
done