#!/bin/bash
exit 0
set -e

branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
if [ "$branch" == "master" ]
then
    echo 'You cannot push to master dude'
    exit 0
fi
