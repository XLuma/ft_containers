all:
	mkdir -p /home/llaplant/data/mariadb
	mkdir -p /home/llaplant/data/wordpress
	echo "llaplant.42.fr localhost" >> /etc/hosts
	@docker-compose -f ./docker-compose.yml up -d
down:
	@docker-compose -f ./docker-compose.yml down
re:
	@docker-compose -f ./docker-compose.yml up --build
clean: down
	rm -rdf /home/llaplant/data/mariadb
	rm -rdf /home/llaplant/data/wordpress

fclean: clean
	@ docker system prune -f

fclean-all:
	@ docker system prune -a -f