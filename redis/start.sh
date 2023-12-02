docker rm -f myredis-0
docker rm -f myredis-1
docker rm -f myredis-2
docker rm -f myredis-3
docker rm -f myredis-4
docker rm -f myredis-5

docker run --restart always -v /home/ubuntu/redis/7000/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-0 redis redis-server /usr/local/etc/redis/redis.conf
docker run --restart always -v /home/ubuntu/redis/7001/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-1 redis redis-server /usr/local/etc/redis/redis.conf
docker run --restart always -v /home/ubuntu/redis/7002/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-2 redis redis-server /usr/local/etc/redis/redis.conf
docker run --restart always -v /home/ubuntu/redis/7003/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-3 redis redis-server /usr/local/etc/redis/redis.conf
docker run --restart always -v /home/ubuntu/redis/7004/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-4 redis redis-server /usr/local/etc/redis/redis.conf
docker run --restart always -v /home/ubuntu/redis/7005/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-5 redis redis-server /usr/local/etc/redis/redis.conf
