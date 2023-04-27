#! /bin/bash
# after az login
az account set --subscription kblee_cc1_gp_mpn_2-cloudsecurity-02
az aks install-cli
az aks get-credentials --resource-group prod-rg --name prod-aks
