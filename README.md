# Jupyterlab lab - docker stack

This is a docker stack built with 3 services :

- jupyterlab
- spark master
- spark worker.

This project has been tested on :

- debian buster & bullseye
- kali 

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
mkdir notebooks
chmod -R 777 notebooks
chmod +x build.sh
./build.sh
docker-compose up
```

# 1. Usage

In the logs you can find the url with the token to connect to jupyterlab.

You can see the logs of jupyterlab with :

```bash
docker logs mk-jupyter
```

Look for a line like : http://127.0.0.1:8888/lab?token=63ab39a... Then copy and paste the url in your nagivator.
 
Then you can go to http://localhost:8888 and use your spark instance with jupyterlab.

# 2. Share data with jupyterlab

To share any file with the jupyterlab instance, please create a folder named "data" inside the project. Every file in this folder will goes to /usr/data in the jupyterlab instance.
