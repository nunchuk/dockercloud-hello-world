hello-world
===========

Sample docker image to test docker deployments

## Running locally

### Using Docker-CLI:

	$ docker run --rm -ti -p 8080:80 --name hello registry.cn-beijing.aliyuncs.com/nunchuk/hello-world:latest

### Using Docker Compose:

	$ git clone https://github.com/docker/dockercloud-hello-world
	$ cd dockercloud-hello-world
	$ docker-compose up

### Using Docker Swarm Mode:

	$ docker service create --publish 8080:80 --name hello --replicas=3 --constraint "node.role != manager" registry.cn-beijing.aliyuncs.com/nunchuk/hello-world:latest

Point your browser to `http://localhost:8080`

![-2017-08-16- 10 54 59](https://user-images.githubusercontent.com/16042528/29346043-4f017144-8275-11e7-9081-1bc904a4c622.png)

Contributors
-------------------
* XinYe (nunchuk@live.com)