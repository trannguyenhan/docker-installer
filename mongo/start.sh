docker rm -f mongo-db

docker run --restart always -d -p 27017:27017 -v ~/mongo/data:/data/db --name mongo-db mongo:latest
