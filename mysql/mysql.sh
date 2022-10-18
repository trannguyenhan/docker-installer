docker run \
--detach \
--name=mysql_docker \
--env="MYSQL_ROOT_PASSWORD=mysql12345" \
--publish 3306:3306 \
--volume=/home/trannguyenhan/app/mysql/conf.d:/etc/mysql/conf.d \
--volume=/home/trannguyenhan/app/mysql/lib/mysql:/var/lib/mysql \
--volume=/home/trannguyenhan/app/mysql/db:/docker-entrypoint-initdb.d \
--restart always \
mysql
