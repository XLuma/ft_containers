all:
	mkdir /home/llaplant/data/mariadb
	mkdir /home/llaplant/data/wordpress
	echo "llaplant.42.fr localhost" >> /etc/hosts
	@docker-compose -f ./docker-compose.yml up -d
down:
	@docker-compose -f ./docker-compose.yml down
re:
	@docker-compose -f ./docker-compose.yml up --build
clean: stop
	rm -rdf /home/llaplant/data/mariadb
	rm -rdf /home/llaplant/data/wordpress
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\

fclean: clean
	@ docker system prune -f