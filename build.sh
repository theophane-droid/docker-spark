#!/bin/bash
docker build env/jupyterlab -t spark/jupyterlab:0.1
docker build env/spark -t spark/spark:0.1
