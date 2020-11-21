
 echo "1.0 cmd - apt-get remove docker docker-engine docker.io containerd runc";
 sudo apt-get remove docker docker-engine docker.io containerd runc -y;

 echo "4.0 curl -fsSL https://download.docker.com/linux/ubuntu/gpg";
	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - ;
	
	echo "5.0 apt-key fingerprint";
	sudo apt-key fingerprint 0EBFCD88;
	
	echo "6.0 add-apt-repository";
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable";

 
 echo "2.0 apt-get update";
 sudo apt-get update -y;
 


 echo "3.0 apt-get install apt-transport-https";
 sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y;


  
  echo "8.0 apt-get apt-get install docker-ce docker-ce-cli containerd.io";
  
  echo "8.1 docker-ce";
  sudo apt-get install docker-ce -y;
  
  echo 'rc ' $?;
  
  echo "8.2 docker-ce-cli";
  sudo apt-get install docker-ce-cli  -y;
  
  echo 'rc ' $?;
  
  echo "8.3 containerd.io";
  sudo apt-get install containerd.io -y | true ;
  
  exit 0 ;
 

echo '99 - finish!'  $?;

  