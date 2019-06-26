#!/bin/bash

#create network security group
az network nsg create --name PipelineNSG

#create http rule - port 80 is the default port
az network nsg rule create --name HTTP --priority 500 --nsg-name PipelineNSG

#allow port 22 for ssh
az network nsg rule create --name SSH --destination-port-ranges 22 \
	--nsg-name PipelineNSG --priority 400
