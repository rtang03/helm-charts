# explorer

Hyperledger Explorer chart (Experimental)

![Version: 0.1.13](https://img.shields.io/badge/Version-0.1.13-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.8](https://img.shields.io/badge/AppVersion-1.1.8-informational?style=flat-square)

## TL;DR

NOTE: This chart is opinionated for experimental project; with a pre-determined network toplogy. It is unlikely to use for general purpose.

### Pick Namespace

The Hyperledger Explorer is deployed in the same namespace as peer.

```shell
export NS=YOUR_NAMESPACE
```

### Admin User
- Each new deployment will register a new user in enrollment CA in the same organization. The username is POD_ID
- The password is service-account-token `explorer-login-token`

```shell
# retrieve admin user's ID, replace the app name "explorer-$NS" and $NS with your namespace
kubectl -n $NS get pod -l "app=explorer" --no-headers=true -o=custom-columns=LABELS:.metadata.name

# retrieve password, replace n1 with your namepace
kubectl -n $NS get secret $(kubectl -n $NS get secret | grep explorer-login-token | head -n1 | awk '{print $1;}') -o jsonpath={.data.token}| base64 -d
```

### Port Forward

```shell
# replace n1 with your namepace
kubectl -n $NS port-forward $(kubectl -n $NS get pod -l "app=explorer" --no-headers=true -o=custom-columns=LABELS:.metadata.name) 18080:8080
```

Then, open browser with `http://localhost:18080`

## Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm repo add dashslab https://rtang03.github.io/helm-charts
$ helm install my-release dashslab/explorer
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | internal value | Fixture |
| appname | string | internal value | Fixture |
| autoscaling | object | internal value | Fixture |
| blocksSyncTime | int | `5` | sync interval by minute |
| ca_url | string | `"https://example.com:7054"` |  |
| channel_name | string | `"cdi-testnet"` | Channel name |
| database_passwd | string | `"DATABASE_PASSWORD"` |  |
| database_username | string | `"DATABASE_USERNAME"` |  |
| fullnameOverride | string | internal value | Fixture |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| imagePullSecrets | list | internal value | Fixture |
| istioService | object | internal value | Fixture |
| log_level_app | string | `"info"` | info | debug |
| log_level_console | string | `"info"` | info | debug |
| log_level_db | string | `"info"` | info | debug |
| mspid | string | `"MSPID"` | MSP ID |
| nameOverride | string | internal value | Fixture |
| network_name | string | `"cdi_testnet"` | network name for use in Explorer only, can be any name |
| orgname | string | `"ORGNAME"` |  |
| peer_url | string | `"grpcs://peer0-ORGNAME.cdi.testnet:7051"` | url for addressable peer |
| persistence.accessMode | string | internal value | Fixture |
| persistence.annotations | object | internal value | Fixture |
| persistence.enabled | bool | internal value | Fixture |
| persistence.mountPath | string | internal value | Fixture |
| persistence.size | string | `"1Gi"` |  |
| persistence.storageClass | string | internal value | Fixture |
| pgbouncer.tag | string | `"1.15.0"` |  |
| podAnnotations."sidecar.istio.io/logLevel" | string | `"warning"` | trace|debug|info|warning|error|critical|off |
| podAnnotations."sidecar.istio.io/rewriteAppHTTPProbers" | string | internal value | Fixture |
| podSecurityContext | object | internal value | Fixture |
| replicaCount | int | internal value | Fixture |
| resources.limits.cpu | string | `"200m"` |  |
| resources.limits.memory | string | `"256Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"150Mi"` |  |
| secretvol | object | internal value | Fixture |
| securityContext | object | internal value | Fixture |
| service | object | internal value | Fixture |
| serviceAccount | object | internal value | Fixture |
| tolerations | list | internal value | Fixture |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
