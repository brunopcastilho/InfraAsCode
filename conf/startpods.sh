#startpods bash



echo '2.0 starting minikube';
minikube start  --driver=none;

echo '3.0 create mysql persistent volume';
kubectl apply -f /shared_conf/mysql-pv.yaml;

echo '4.0 create mysql pod';
kubectl apply -f /shared_conf/dbpod.yaml;

echo '99 - finish!' ;
echo $?;
  

