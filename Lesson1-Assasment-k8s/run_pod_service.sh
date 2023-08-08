#!/bin/bash


#kubectl create deployment superset --image=amancevice/superset:0.18.5

kubectl run superset --image=amancevice/superset:0.18.5
kubectl expose pod superset --type=ClusterIP --port=80


ubectl run airflow --image=puckel/docker-airflow:1.10.9
kubectl expose pod airflow --type=ClusterIP --port=8080
