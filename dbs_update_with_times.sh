#!/bin/bash

MY_SCRIPTS_HOME=~/bigbrain/gitlab/my-scripts-and-such
POSTGRES_LOG=$MY_SCRIPTS_HOME/postgresCopy.log
MONGO_LOG=$MY_SCRIPTS_HOME/mongoCopy.log

DEV_TOOLS_HOME=~/bigbrain/gitlab/dev-tools

TODAY=$(date +"Today is %A, %d of %B")
echo Today:      $TODAY
echo Today:      $TODAY >> $POSTGRES_COPY_LOG

TIMENOW=$(date +"Postgres Copy Start Time:  %r")
echo Start Time: $TIMENOW
echo Start Time: $TIMENOW >> $POSTGRES_COPY_LOG

cd $DEV_TOOLS_HOME
# ./postgresCopy.sh

TIMENOW2=$(date +"End Time:  %r")
echo End Time:   $TIMENOW2
echo End Time:   $TIMENOW2 >> $POSTGRES_COPY_LOG

cd $DEV_TOOLS_HOME
echo Today:      $TODAY
echo Today:      $TODAY >> $MONGO_COPY_LOG

TIMENOW=$(date +"Start Time: %r")
echo Start Time: $TIMENOW
echo Start Time: $TIMENOW >> $MONGO_COPY_LOG

cd $DEV_TOOLS_HOME
./mongocopy

echo Start Time: $TIMENOW >> postgresCopy.log
echo End Time:   $TIMENOW2 >> postgresCopy.log
