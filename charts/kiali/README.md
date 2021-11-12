### Introduction
Kiali Chart

NOTE: This chart is opinionated for experimental project; with a pre-determined network toplogy via Istio. It is unlikely to use for general purpose.


### Port forward
```shell
kubectl -n istio-system port-forward deployment/kiali 20001:20001
```
