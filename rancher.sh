sudo apt-get update -y
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce=17.03.2~ce-0~ubuntu-xenial
sudo systemctl enable docker
sudo usermod -aG docker rancher-admin
bash -l
docker run -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher:latest --acme-domain rancheradmin.westus2.cloudapp.azure.com
