# grafana

Grafana for fabric-es project

![Version: 0.1.9](https://img.shields.io/badge/Version-0.1.9-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 8.2.2](https://img.shields.io/badge/AppVersion-8.2.2-informational?style=flat-square)

## Additional Information

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

## Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm repo add dashslab https://rtang03.github.io/helm-charts
$ helm install my-release dashslab/grafana
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| appname | string | internal value | Fixture |
| configmap.json[0].filename | string | `"config/istio-service-dashboard_rev93.json"` |  |
| configmap.json[0].mountPath | string | `"/var/lib/grafana/dashboards/istio/istio-service-dashboard_rev93.json"` |  |
| configmap.json[0].name | string | `"istio-service-dashboard"` |  |
| configmap.json[0].subPath | string | `"istio-service-dashboard_rev93.json"` |  |
| configmap.json[1].filename | string | `"config/istio-workload-dashboard_rev93.json"` |  |
| configmap.json[1].mountPath | string | `"/var/lib/grafana/dashboards/istio/istio-workload-dashboard_rev93.json"` |  |
| configmap.json[1].name | string | `"istio-workload-dashboard"` |  |
| configmap.json[1].subPath | string | `"istio-workload-dashboard_rev93.json"` |  |
| configmap.json[2].filename | string | `"config/istio-control-plane-dashboard_rev93.json"` |  |
| configmap.json[2].mountPath | string | `"/var/lib/grafana/dashboards/istio/istio-control-plane-dashboard_rev93.json"` |  |
| configmap.json[2].name | string | `"istio-control-plane-dashboard"` |  |
| configmap.json[2].subPath | string | `"istio-control-plane-dashboard_rev93.json"` |  |
| configmap.json[3].filename | string | `"config/istio-mesh-dashboard_rev93.json"` |  |
| configmap.json[3].mountPath | string | `"/var/lib/grafana/dashboards/istio/istio-mesh-dashboard_rev93.json"` |  |
| configmap.json[3].name | string | `"istio-mesh-dashboard"` |  |
| configmap.json[3].subPath | string | `"istio-mesh-dashboard_rev93.json"` |  |
| configmap.json[4].filename | string | `"config/istio-performance-dashboard_rev93.json"` |  |
| configmap.json[4].mountPath | string | `"/var/lib/grafana/dashboards/istio/istio-performance-dashboard_rev93.json"` |  |
| configmap.json[4].name | string | `"istio-performance-dashboard"` |  |
| configmap.json[4].subPath | string | `"istio-performance-dashboard_rev93.json"` |  |
| configmap.json[5].filename | string | `"config/hyperledger-fabric_rev1.json"` |  |
| configmap.json[5].mountPath | string | `"/var/lib/grafana/dashboards/hyperledger/hyperledger-fabric_rev1.json"` |  |
| configmap.json[5].name | string | `"hyperledger-fabric"` |  |
| configmap.json[5].subPath | string | `"hyperledger-fabric_rev1.json"` |  |
| configmap.json[6].filename | string | `"config/k8s-cluster.json"` |  |
| configmap.json[6].mountPath | string | `"/var/lib/grafana/dashboards/k8s/k8s-cluster.json"` |  |
| configmap.json[6].name | string | `"k8s-cluster"` |  |
| configmap.json[6].subPath | string | `"k8s-cluster.json"` |  |
| configmap.json[7].filename | string | `"config/k8s-storage.json"` |  |
| configmap.json[7].mountPath | string | `"/var/lib/grafana/dashboards/k8s/k8s-storage.json"` |  |
| configmap.json[7].name | string | `"k8s-storage"` |  |
| configmap.json[7].subPath | string | `"k8s-storage.json"` |  |
| configmap.json[8].filename | string | `"config/redisearch_rev1.json"` |  |
| configmap.json[8].mountPath | string | `"/var/lib/grafana/dashboards/hyperledger/redisearch_rev1.json"` |  |
| configmap.json[8].name | string | `"redisearch-dashboard"` |  |
| configmap.json[8].subPath | string | `"redisearch_rev1.json"` |  |
| configmap.json[9].filename | string | `"config/redis_rev1.json"` |  |
| configmap.json[9].mountPath | string | `"/var/lib/grafana/dashboards/hyperledger/redis_rev1.json"` |  |
| configmap.json[9].name | string | `"redis-dashboard"` |  |
| configmap.json[9].subPath | string | `"redis_rev1.json"` |  |
| legendFormat_Container | string | internal value | Fixture |
| legendFormat_Id | string | internal value | Fixture |
| legendFormat_Name | string | internal value | Fixture |
| legendFormat_Pod | string | internal value | Fixture |
| legendFormat_ReceiveName | string | internal value | Fixture |
| legendFormat_ReceivePod | string | internal value | Fixture |
| legendFormat_TransmitName | string | internal value | Fixture |
| legendFormat_TransmitPod | string | internal value | Fixture |
| orgname | string | `"ORGNAME"` |  |
| persistence.accessMode | string | internal value | Fixture |
| persistence.annotations | object | internal value | Fixture |
| persistence.enabled | bool | internal value | Fixture |
| persistence.mountPath | string | internal value | Fixture |
| persistence.size | string | `"1Gi"` |  |
| persistence.storageClass | string | internal value | Fixture |
| podAnnotations | object | internal value | Fixture |
| podSecurityContext | object | internal value | Fixture |
| resources.limits.cpu | string | `"300m"` |  |
| resources.limits.memory | string | `"256Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"64Mi"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
