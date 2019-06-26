#!/bin/bash

az login

./createResourceGroup.sh
./createVirtualNetwork.sh
./createNSG.sh
./JenkinsVM.sh
./WildflyVM.sh
