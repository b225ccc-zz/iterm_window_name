#!/bin/bash

HOSTNAME=`hostname`
FILTER_HOSTNAME='brians-mbp.int.lineratesystems.com'
TEXT=""
CURRENT_PATH=`pwd | sed "s|$HOME|~|"`
REPO_DIR='/Users/bt/Documents/repos/'

if [[ $CURRENT_PATH == *"repos/"* ]];then
  TEXT="repo: `pwd | cut -d/ -f6`"
elif [ "$HOSTNAME" != "$FILTER_HOSTNAME" ];then
  TEXT=$HOSTNAME
else
  TEXT=$CURRENT_PATH
fi

echo -ne "\033]0;${TEXT}\007"
