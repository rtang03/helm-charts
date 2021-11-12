# About

NOTE: This chart is opinionated for experimental project; with a pre-determined network toplogy. It is unlikely to use for general purpose.

You need to explicitly define what scrape:

```yaml
scrapes:
  istio:
    enabled: true
  # Eligible for Org 0/1 deployment
  hyperledgerOrderer0:
    enabled: false
  # Eligible for Org 0/1 deployment
  hyperledgerOrderer1:
    enabled: false
  # Eligible for Org 0/1 deployment
  hyperledgerOrderer2:
    enabled: false
  # Eligible for Org 0/1 deployment
  hyperledgerOrderer3:
    enabled: false
  # Eligible for Org 0/1 deployment
  hyperledgerOrderer4:
    enabled: false
  # Eligible for ALL orgs
  hyperledgerPeer0:
    enabled: true
  # Eligible for ALL orgs
  hyperledgerPeer1:
    enabled: true
  # Eligible for OrgX, NOT for Org 0/1 deployment
  redisearchPrometheusExporter:
    enabled: true
  # Eligible for OrgX, NOT for Org 0/1 deployment
  redisExporter:
    enabled: true
```

### Port forward
```shell
kubectl port-forward deployment/promethemus 9090:9090
```
