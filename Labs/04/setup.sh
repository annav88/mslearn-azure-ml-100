#! /usr/bin/sh

# Create workspace
echo "Create a resource group:"
az group create --name "rg-dp100-labs" --location "eastus"

echo "Create an Azure Machine Learning workspace:"
az ml workspace create --name "mlw-dp100-labs" -g "rg-dp100-labs"

# Create compute cluster
echo "Creating a compute cluster with name: aml-cluster"
az ml compute create --name "aml-cluster" --size STANDARD_DS11_V2 --max-instances 2 --type AmlCompute -w mlw-dp100-labs -g rg-dp100-labs