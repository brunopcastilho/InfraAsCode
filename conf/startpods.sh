#echo '1.0 changeowner .minikube'
#sudo chown -R $USER $HOME/.minikube; chmod -R u+wrx $HOME/.minikube

#echo '2.0 starting minikube';
#minikube start  --driver=none;

echo '3.0 create mysql persistent volume';
kubectl apply -f /shared_conf/mysql-pv.yaml;

echo '4.0 create mysql pod';
kubectl apply -f /shared_conf/dbpod.yaml;

echo '5.0 connect to mysql'
kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql -ppassword;


exit 0 ;

echo '99 - finish!' ;
echo $?;
  

