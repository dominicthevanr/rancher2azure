sudo apt-get update -y
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
	sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"
sudo apt-get update
apt-cache madison docker-ce
sudo apt-get install docker-ce=17.03.2~ce-0~ubuntu-xenial
sudo docker container run hello-world
sudo usermod -aG docker hebertson
sudo systemctl enable docker
bash -l
docker run -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher:latest --acme-domain rancheradmin.westus2.cloudapp.azure.com
