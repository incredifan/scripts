#!/bin/sh

echo "Setting WORKSPACE..."
WORKSPACE=~/bigbrain/gitlab/tools

# echo "Workspace is: ${WORKSPACE}"
# echo "  WARNING: If that is not your 'tools/workspace' directory,"
# echo "           update your environment environment variable as follows:"
# echo "           export WORKSPACE=<your_workspace_directory>"
# read -n1 -r -p "Press any key to continue..." key

. ./set-scripts-directory.sh
echo "Scripts Directory is ${SCRIPTS_DIRECTORY}"
# read -n1 -r -p "Press any key to continue..." key
echo "Starting Docker ..."
# read -n1 -r -p "Press any key to continue..." key
${SCRIPTS_DIRECTORY}/docker-start.sh

echo "Moving to workspace..."
# read -n1 -r -p "Press any key to continue..." key

cd $WORKSPACE
echo "  ... Done"

# echo "Displaying status ..."
# read -n1 -r -p "Press any key to continue..." key
# echo " "

# status-services
# echo "  ... Done"

# echo "Stopping all services ...\n"
# read -n1 -r -p "Press any key to continue..." key

# stop-services
# echo "  ... Done"

# echo "Stopping Docker ..."
# read -n1 -r -p "Press any key to continue..." key

# docker stop $(docker ps -a -q) 
# echo "  ... Done"

# echo "Removing all Docker containers ..."
# read -n1 -r -p "Press any key to continue..." key

# docker rm $(docker ps -a -q) --force
# echo "  ... Done"

# echo "Pruning Docker system ..."
# read -n1 -r -p "Press any key to continue..." key

# docker system prune --force
# echo "  ... Done"

# echo "Pruning Docker volumes ..."
# read -n1 -r -p "Press any key to continue..." key

# docker system prune --volumes --force
# echo "  ... Done"

# echo "Pruning Docker images ..."
# read -n1 -r -p "Press any key to continue..." key
# docker image prune --all  --force
# echo "  ... Done"

# echo "Attemping to login to AWS ..."
# read -n1 -r -p "Press any key to continue..." key
# echo "  WARNING: If you are not already logged into AWS, you may be prompted"
# echo "           for your password.  If you do not provide your password"
# echo "           , this process may fail."
# aws login

echo "Starting Docker ..."
# read -n1 -r -p "Press any key to continue..." key
${SCRIPTS_DIRECTORY}/docker-start.sh
echo "  ... Done"

# echo "Starting MongoDB and PostgresQL ..."
# read -n1 -r -p "Press any key to continue..." key
# make start include=mongo,postgres
# echo "  ... Done"

# echo "Dropping and reloading MongoDB ..."
# read -n1 -r -p "Press any key to continue..." key
# ./mongocopy
# echo "  ... Done"
  
# echo "Dropping and reloading PostgresQL ..."
# read -n1 -r -p "Press any key to continue..." key
# ./postgresCopy.sh
# echo "  ... Done"

echo "Resetting services to 'Development' branch ..."
read -n1 -r -p "Press any key to continue..." key
make reset
echo "  ... Done"

echo "Re-building services ..."
read -n1 -r -p "Press any key to continue..." key
make build
echo "  ... Done"

echo "Starting Services ..."
# read -n1 -r -p "Press any key to continue..." key
make start
echo "  ... Done"

echo "You may be asked to 'Allow' or 'Deny' access to the ports.  Select 'Allow'"
echo "Displaying status ..."
# read -n1 -r -p "Press any key to continue..." key
make status
echo "  WARNING:  Not all service may be started yet."  
echo "           Will display log... when done with the log, use 'control-c' to exit"
make log include=ui
