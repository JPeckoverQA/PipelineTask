#!/bin/bash

az network vnet create --name PipelineVnet \
	--address-prefixes 10.0.0.0/16 --subnet-name PipelineSubnet \
	--subnet-prefix 10.0.0.0/24

