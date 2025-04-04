#!/bin/bash
# changelog.sh
# sample shell script to generate changelog between git tags
#TODO: replace appending changelog with sed to inject changelog into html
#TODO: integrate into jenkins build script

if [ -z $1 ]; then
  echo Usage: $0 app [old_tag] [new_tag]
  exit 1
fi

if [ -z "$2" ]; then
  N=0
  for i in $(git tag) ; do
    tag_array[$N]="$i"
    let "N= $N + 1"
  done
  let "I= ${#tag_array[@]} - 2"
  previous_tag=${tag_array[$I]}
else
  previous_tag=$2
fi

if [ -z "$3" ]; then
  latest_tag=$(git describe --tags)
else
  latest_tag=$3
fi

echo "Generating changelog for $1 from $previous_tag to $latest_tag"

echo $latest_tag >> changelog.txt

git log $previous_tag...$latest_tag --pretty=format:'%H %s' --reverse |grep -v Merge >> changelog.txt
