docker rmi -f $(docker images -qa)
docker rm -f $(docker ps -qa)
docker rm -f $(docker ps -ls)
docker volume rm $(docker volume ls -q)
docker system prune -a --volume
docker system prune -a --force