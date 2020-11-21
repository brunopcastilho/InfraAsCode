
	echo '1.0 script kubectl ';
	echo '2.0 apt-get update install';
	sudo apt-get update ;
	sudo apt-get install -y apt-transport-https gnupg2 curl ;
	
	echo '3.0 curl apt key' 	;
	curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - ;
	
	echo '4.0 add to soucelist';
	echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list ;
	
	echo '5.0 apt update';
	sudo apt-get update ;
	
	echo '5.1 conntrack';
	sudo apt-get install -y conntrack;

	echo '6.0 install kubectl' ;
	sudo apt-get install -y kubectl ;

echo '99 - finish!' ;
echo $?;