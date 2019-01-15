# Deploy Rancher to Ubuntu Azure VM

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhebertsonm%2Francher2azure%2Fmaster%2FrancherTemplate.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This template allows you to deploy a Rancher on Linux Ubuntu VM to Azure using the latest patched version. This will deploy a B2s size VM in the resource group location and return the fully qualified domain name of the VM.

This deployment includes:
* Virtual Machine
    * user
    * password
    * machine size
    * auto-shutdown
    
* Network
    * DNS
    * Http and Https set for inbound
    
* Container
    * docker-ce=17.03.2~ce-0~ubuntu-xenial
    * Rancher
    * Certificate LetsEncrypt
