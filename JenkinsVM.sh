#!/bin/bash

#creates the vm for the Jenkins server

#create public ip

az network public-ip create --name JenkinsPublicIP --dns-name jenkinsdns \
	--allocation-method Static

#create network interface connection
az network nic create --name JenkinsNIC \
	--vnet-name PipelineVnet --subnet PipelineSubnet \
	--network-security-group PipelineNSG

#create JenkinsVM
az vm create --name JenkinsVM \
	--image UbuntuLTS \
	--size 	Standard_B1ms \
	--generate-ssh-keys \
	--nics JenkinsNIC


#start vm
#az vm start --name JenkinsVM
