#!/bin/bash

cat data/swc_feedback_day12.csv |cut -d"," -f "3"|tr " " "\n" |tr '[:upper:]' '[:lower:]'|sed 's/[^a-z ]//g' |awk '{if (length($1)>=4) print $1 }'| sort|uniq -ci|sort -n|./make_cloud.awk  > cloud.svg


