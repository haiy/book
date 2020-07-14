#!/bin/bash
file_list=$(ls *.pdf)
html_file=../readings.html
echo '---
layout: default
title: readings
permlink: readings
---



'> $html_file
#echo '<h3><a href=/>Home</a> Readings</h3>' >> $html_file
echo '<ul>' >> $html_file
for f in $file_list;
do
    echo "<li><a target='_blank' href=pdfs/$f>${f%.pdf}</a></li>" >> $html_file
done

echo '</ul>' >> $html_file
