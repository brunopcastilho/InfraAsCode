 echo " '1.0 minikube script curl minikube ";
 sudo curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 ;
 
 echo '2.0 install minikube';
 sudo install minikube-linux-amd64 /usr/local/bin/minikube ;
 
echo '1.0 adding user to docker group';

 
 echo '3.0 set driver docker'
 minikube config set driver docker ;


    #sudo mv /root/.kube /root/.minikube /home/vagrant
    #sudo chown -R vagrant /home/vagrant/.kube /home/vagrant/.minikube
 
 
 minikube start --driver=docker;
    


 exit 0 ;
 
echo '99 - finish!' ;
echo $?;
  