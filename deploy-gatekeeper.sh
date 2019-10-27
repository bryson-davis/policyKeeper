#!/bin/bash

# set -x

env_val_conf="value.conf"
outfile="gatekeeper.yaml"
while read -r line; do
	declare "$line"
done < ${env_val_conf}

#变量替换
mkdir -p ./gatekeeper/out
jinjia2 ./gatekeeper/gatekeeper-template.yaml -D constroller_manager_image=${constroller_manager_image} >./gatekeeper/out/${outfile}

#k8s部署
kubectl apply -f ./gatekeeper/out/${outfile} -s ${k8s_cluster}
