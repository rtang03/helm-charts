# About

NOTE: This chart is opinionated for experimental project; with a pre-determined network toplogy. It is unlikely to use for general purpose.

### Port forward

```shell
kubectl port-forward deployment/grafana 3000:3000
```

Note: After updating dashboard json file in configMap, Grafana deployment need to restart, in order to take effect.

### Supported Dashboard
- K8s Cluster
- K8s Storage
- Hyperledger Fabric
- Istio Control Plane
- Istio Performance Dashboard
- Istio Service Dashboard
- Istio Workload Dashboard
- Istio Mesh Dashboard
- Redis Dashboard
- Redisearch Dashboard

### Reference
- [k8s metrics](https://blog.freshtracks.io/a-deep-dive-into-kubernetes-metrics-part-3-container-resource-metrics-361c5ee46e66)
