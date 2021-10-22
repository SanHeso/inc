all:
	docker-compose -f srcs/docker-compose.yaml build
	docker-compose -f srcs/docker-compose.yaml up

up:
	docker-compose -f srcs/docker-compose.yaml up

down:
	docker-compose -f srcs/docker-compose.yaml down

ps:
	docker-compose -f srcs/docker-compose.yaml ps

clean: down
	docker rmi -f $(docker images -qa)
	docker volume rm $(docker volume ls -q)
	docker system prune -a --force