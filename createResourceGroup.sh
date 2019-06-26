#!/bin/bash

#creates a resource group

az group create --name PipelineTask --location uksouth

az configure --defaults location=uksouth
az configure --defaults group=PipelineTask



