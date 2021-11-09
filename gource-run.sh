#/bin/sh

######################################################
# WARNING May have to run gource-start-db.sh first.
######################################################

. ./print-double-line.sh
. ./ekko.sh "Starting Gource ..."
. ./set-scripts-directory.sh
. ./ekko-variable.sh SCRIPTS_DIRECTORY

export GOURCE_VIEWPORT="--fullscreen --screen 3 --frameless"
. ./ekko-variable.sh GOURCE_VIEWPORT

export GOURCE_FLAMINGO_SPRINTS="--start-date 2021-02-04"
export GOURCE_SPRINT_21_07="--start-date 2021-02-17 --stop-date 2021-03-03"

GOURCE_DATE_WINDOW=$GOURCE_SPRINT_21_07
GOURCE_LOOP=--loop
GOURCE_HIDE="--hide filenames,dirnames,usernames"

cd /usr/local/src/ui-monorepo
GOURCE_COMMAND="gource ${GOURCE_VIEWPORT} ${GOURCE_DATE_WINDOW} ${GOURCE_LOOP} ${GOURCE_HIDE}"
echo $GOURCE_COMMAND

`${GOURCE_COMMAND}`
