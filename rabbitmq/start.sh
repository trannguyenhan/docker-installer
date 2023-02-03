docker run  \
    -p 15672:15672 \
    -p 5672:5672 \
    -v /home/trannguyenhan/CodeFolder/docker-installer/rabbitmq-docker/rabbitmq_data:/var/lib/rabbitmq \
    -e RABBITMQ_DEFAULT_USER=trannguyenhan \
    -e RABBITMQ_DEFAULT_VHOST=vhost1 \
    -e RABBITMQ_DEFAULT_PASS=123456 rabbitmq:3-management
