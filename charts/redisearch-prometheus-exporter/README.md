# redisearch-prometheus-exporter

Export Redisearch FT.INFO for use by Prometheus.Supports RediSearch >=v2.0

![Version: 0.1.4](https://img.shields.io/badge/Version-0.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.2](https://img.shields.io/badge/AppVersion-0.0.2-informational?style=flat-square)

## Additional Information

Export `FT.INFO` from Redisearch to Prometheus.

In the values file, you must specfiy which Redisearch to export, with `redisearchExporterStaticIndex`. At minimum,
`cidx` is required. Additional index is added, with comma-separator.

```yaml
# minimum
# redisearchExporterStaticIndex: "cidx"

# full example
redisearchExporterStaticIndex: "cidx,eidx:Consent,eidx:user,eidx:participantDs,eidx:DataRequest,eidx:organization"
```

## Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm repo add dashslab https://rtang03.github.io/helm-charts
$ helm install my-release dashslab/redisearch-prometheus-exporter
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | internal value | Fixture |
| appname | string | internal value | Fixture |
| autoscaling | object | internal value | Fixture |
| fullnameOverride | string | internal value | Fixture |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| imagePullSecrets | list | internal value | Fixture |
| livenessProbe | object | internal value | Fixture |
| nameOverride | string | internal value | Fixture |
| nodeSelector | object | internal value | Fixture |
| orgname | string | `"ORGNAME"` | Organization name |
| podAnnotations | object | internal value | Fixture |
| readinessProbe | object | internal value | Fixture |
| redisearchExporterStaticIndex | string | `"cidx"` |  |
| replicaCount | int | internal value | Fixture |
| resources.limits.cpu | string | `"50m"` |  |
| resources.limits.memory | string | `"64Mi"` |  |
| resources.requests.cpu | string | `"50m"` |  |
| resources.requests.memory | string | `"64Mi"` |  |
| service | object | internal value | Fixture |
| tolerations | list | internal value | Fixture |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
