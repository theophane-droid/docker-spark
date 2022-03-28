# Jupyterlab lab - docker stack

This is a docker stack built with 3 services :

- jupyterlab
- spark master
- spark worker.

This project has been tested on debian/buster.

# 0. Installation 

First install docker and docker-compose :
- [docker on debian](https://docs.docker.com/engine/install/debian/)
- [docker-compose on debian](https://docs.docker.com/engine/install/debian/)


Then execute the followings :

```bash
# we enable & start docker
sudo systemctl enable docker
sudo systemctl start docker

git clone https://github.com/theophane-droid/docker-spark
cd docker-spark
chmod +x build.sh
./build.sh
docker-compose up
```

# 1. Usage

Then you can go to http://localhost:8888 and use your spark instance with jupyterlab.

# 2. Share data with jupyterlab

To share any file with the jupyterlab instance, please create a data folder inside the project. Every file in this folder will goes to /usr/data in the jupyterlab instance.
