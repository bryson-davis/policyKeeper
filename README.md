### policyKeeper
基于gatekeeper实现的约束

### 部署流程
> 以部署一个命名空间必须提供owner标签为例子
```shell
# 部署gatekeeper
kubectl apply -f gatekeeper/gatekeeper.yaml
# 部署模型
kubectl apply -f k8srequiredlabels_template.yaml
# 部署约束
kubectl apply -f constraints/namespaces/all_ns_must_have_owner.yaml
```
