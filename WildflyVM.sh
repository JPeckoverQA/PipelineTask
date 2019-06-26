#!/bin/bash

#creates the vm for the Wildfly server

#create public ip

az network public-ip create --name WildlfyPublicIP --dns-name wildflydns \
        --allocation-method Static

#create network interface connection
az network nic create --name WildflyNIC \
        --vnet-name PipelineVnet --subnet PipelineSubnet \
        --network-security-group PipelineNSG

#create JenkinsVM
az vm create --name WildflyVM \
        --image UbuntuLTS \
        --size  Standard_B1ms \
        --generate-ssh-keys \
        --nics WildflyNIC


#start vm
#az vm start --name WildflyVM


