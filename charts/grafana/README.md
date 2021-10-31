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

### Reference Info
- [Monitor k8s w caAdvisor](https://blog.freshtracks.io/a-deep-dive-into-kubernetes-metrics-b190cc97f0f6)
