Docker Hello World

To build, make sure you install docker first. [installation instructions](https://docs.docker.com/engine/installation/)

```
git clone git@github.com:turnerlabs/docker-hello-world.git
cd docker-hello-world
docker build . -t docker-hello-world:latest
docker run -p 8080:8080 -e PORT=8080 docker-hello-world:latest
```
