#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash kubectl-apply.sh

logSummary(){
    echo ""
    echo "#####################################################"
    echo "Please find the below useful endpoints,"
    echo "#####################################################"
}

kubectl apply -f registry/
kubectl apply -f gateway/
kubectl apply -f microservice1/

logSummary
