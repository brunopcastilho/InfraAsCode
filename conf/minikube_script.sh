 echo " '1.0 minikube script curl minikube ";
 sudo curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 ;
 
 echo '2.0 install minikube';
 sudo install minikube-linux-amd64 /usr/local/bin/minikube ;
 
echo '1.0 adding user to docker group';
sudo usermod -aG docker $USER && newgrp docker;
sudo usermod -aG docker vagrant && newgrp docker;
 
 echo '3.0 set drover docker'
 minikube config set driver docker ;
 