#!/bin/bash

# echo "Please enter the Resource Group name:"
# read RESOURCE_GROUP

echo "Please enter the Admin name:"
read ADMIN

echo "Please enter the Virtual Machine name:"
read VM_NAME

# az vm create \
#   --resource-group $RESOURCE_GROUP \
#   --location "germanywestcentral" \
#   --name $VM_NAME \
#   --image Ubuntu2204 \
#   --size Standard_B1ls \
#   --admin-username $ADMIN \
#   --generate-ssh-keys

az vm list-ip-addresses --name $VM_NAME --output table

PUBLIC_IP=$(az vm list-ip-addresses --name $VM_NAME --query "[0].virtualMachine.network.publicIpAddresses[0].ipAddress" -o tsv)


ssh $ADMIN@$PUBLIC_IP
