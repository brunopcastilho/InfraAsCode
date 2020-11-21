#startpods bash

echo '1.0 adding user to docker group';
sudo usermod -aG docker $USER && newgrp docker;
sudo usermod -aG docker vagrant && newgrp docker;

echo '2.0 starting minikube';
minikube start --memory=1280mb --driver=docker;

echo '3.0 create mysql persistent volume';
kubectl apply -f /shared_conf/mysql-pv.yaml;

echo '4.0 create mysql pod';
kubectl apply -f /shared_conf/dbpod.yaml;



