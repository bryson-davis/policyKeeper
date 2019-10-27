#!/bin/bash

# set -x

env_val_conf="value.conf"

while read -r line; do
	declare "$line"
done < ${env_val_conf}

kubectl apply -f sync.yaml -s ${k8s_cluster}

#部署templates需要确保gatekeeper部署的crd对象ConstraintTemplate已经生效，通过kubectl get crd查看
#部署template
kubectl apply -f templates -s ${k8s_cluste}


