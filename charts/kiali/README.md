### Introduction
Kiali Chart for customizaed integration with Grafana and Prometheus. Grafana and Prometheus is installed
in "default" namespace; while Kiali is in "istio-system" namespace.  

Note: Jaeger is configured; don't integrate. Need further troubleshooting

### Port forward
```shell
kubectl -n istio-system port-forward deployment/kiali 20001:20001
```
