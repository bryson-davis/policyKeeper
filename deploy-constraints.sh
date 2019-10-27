#!/bin/bash

# set -x

env_val_conf="value.conf"

while read -r line; do
	declare "$line"
done < ${env_val_conf}

#需要确保templates里面的crd对象已经生效

#部署constraints
kubectl apply -f constraints -s ${k8s_cluster}
