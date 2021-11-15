# First, load the library of Docker commands
source commands-docker
# ... and commands for printing to the screen.
source commands-print
# Introductor Boundaries
print_double_line

# Let user know what's happening.
echo "${INFO} Stopping Docker Containers"
# Then, stop All Docker Containers
docker_stop
echo "${INFO} Done"

# Then use the following commands to remove all containers
print_line
echo "${INFO} Removing Docker Containers"
docker_remove_containers
echo "${INFO} Done"

# Then Prune Docker
# docker system prune 
# . ./docker-prune-system.sh
print_line
echo "${INFO} Pruning Docker System"
docker_prune_system
echo "${INFO} Done"

# Then Prune the volumes
# docker system prune --volumes
# . ./docker-prune-volumes.sh
print_line
echo "${INFO} Pruning Docker Volumes"
docker_prune_volumes
echo "${INFO} Done"

# Finally, Prune everything, just in case
# docker image prune --all
# . ./docker-prune-images.sh
print_line
echo "${INFO} Pruning Docker Images"
docker_prune_images
print_line
echo "${INFO} Done"
print_double_line
