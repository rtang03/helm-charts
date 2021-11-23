# gw

Gateway App for fabric-es project

![Version: 0.1.9](https://img.shields.io/badge/Version-0.1.9-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.4.4](https://img.shields.io/badge/AppVersion-0.4.4-informational?style=flat-square)

## Additional Information

NOTE: This chart is opinionated for experimental project; with a pre-determined network toplogy via Istio. It is unlikely to use for general purpose.

## Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm repo add dashslab https://rtang03.github.io/helm-charts
$ helm install my-release dashslab/gw
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| aclFile | string | internal value | Fixture |
| aclOrgAccountType | string | `"consumer"` | No info |
| aclOrgId | string | `"CDI_PARTICIPANT_000001"` | Emali Consent Flow App Param |
| administratorPort | int | internal value | Fixture |
| affinity | object | internal value | Fixture |
| appname | string | internal value | Fixture |
| authCheckReply | string | `"Unauthorized"` | used by Init Container |
| authCheckUrl | string | `"https://uat-ORGNAME.cdi.network:8443/account/login"` | used by Init Container |
| authorizationServerUri | string | `"https://uat-ORGNAME.cdi.network:8443/oauth/authenticate"` | url to oauth/auth endpoint |
| caEnrollmentIdAdmin | string | internal value | Fixture |
| caName | string | `"enrollment-ca-ORGNAME"` | in format of "enrollment-ca-[ORGNAME]" |
| caPathCert | string | internal value | Fixture |
| certPathCert | string | internal value | Fixture |
| certPathKey | string | internal value | Fixture |
| channelName | string | `"cdi-testnet"` | Channel name |
| connectionProfile | string | `"/home/app/connection.yaml"` |  |
| dataAccessApigwUrl | string | `"https://uat-TARGET_ORGNAME.cdi.network/apigw/gw/s2s/thirdparty/v1/SaleTransaction/fileUrls"` | No info |
| dataAccessHeaderAuthType | string | `"Bearer"` | only supported "Bearer" |
| dataAccessMappedUrl | string | `"https://uat-TARGET_ORGNAME.cdi.network/datafile/"` | No info |
| debugPlaceholder | string | `"queryHandler:* ioredis:redis gw-lib:*"` |  |
| fqdn | string | `"uat-ORGNAME.cdi.network"` | fqdn used by istio gateway / VS |
| fullnameOverride | string | internal value | Fixture |
| gatewayHost | string | `"uat-ORGNAME.cdi.network"` | fqdn for gateway, used by istio VS / gateway |
| gatewayPort | int | internal value | Fixture |
| image.imageBase | string | `"gw-data-consumer"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"hktfp5/cdi-samples"` |  |
| imagePullSecrets | list | internal value | Fixture |
| logLevel | string | `"debug"` | info | debug |
| mspid | string | `"MSPID"` | MSP ID |
| nameOverride | string | internal value | Fixture |
| nodeSelector."node.hkicl/nodename" | string | `"node2"` |  |
| nodeTLSRejectUnauthorized.enabled | bool | `false` |  |
| nodeTLSRejectUnauthorized.value | string | `"0"` |  |
| orderers[0] | object | internal value | Fixture |
| orderers[0].url | string | `"grpcs://orderer0-org0.cdi.testnet:7050"` | fqdn for orderer |
| orderers[1].name | string | `"orderer1-org0"` |  |
| orderers[1].url | string | `"grpcs://orderer1-org0.cdi.testnet:7050"` | fqdn for orderer |
| orderers[2].name | string | `"orderer2-org0"` |  |
| orderers[2].url | string | `"grpcs://orderer2-org0.cdi.testnet:7050"` | fqdn for orderer |
| orderers[3].name | string | `"orderer3-org0"` |  |
| orderers[3].url | string | `"grpcs://orderer3-org0.cdi.testnet:7050"` | fqdn for orderer |
| orderers[4].name | string | `"orderer4-org0"` |  |
| orderers[4].url | string | `"grpcs://orderer4-org0.cdi.testnet:7050"` | fqdn for orderer |
| orgAdminId | string | `"myadmin"` | Organization admin ID |
| orgAdminSecret | string | `"xxxxx"` |  |
| orgCaUrl | string | `"https://enrollmentca-ORGNAME:7054"` | fqdn for enrollment CA |
| orgKey | string | internal value | Fixture |
| orgUrl | string | `"https://uat-ORGNAME.cdi.network:4101/gw_org"` | fqdn for Gateway app; must use port 4101 |
| orgname | string | `"ORGNAME"` |  |
| persistence.accessMode | string | internal value | Fixture |
| persistence.annotations | object | internal value | Fixture |
| persistence.enabled | bool | internal value | Fixture |
| persistence.mountPath | string | internal value | Fixture |
| persistence.size | string | `"50Mi"` |  |
| persistence.storageClass | string | internal value | Fixture |
| podAnnotations."sidecar.istio.io/logLevel" | string | `"warning"` |  |
| podAnnotations."sidecar.istio.io/rewriteAppHTTPProbers" | string | internal value | Fixture |
| podSecurityContext.fsGroup | int | `1000` |  |
| queryPort | int | internal value | Fixture |
| redisHost | string | `"redisearch-ORGNAME"` | istio VS or k8s service for redisearch |
| redisPort | int | internal value | Fixture |
| replicaCount | int | internal value | Fixture |
| resources.limits.cpu | string | `"500m"` |  |
| resources.limits.memory | string | `"3Gi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"1Gi"` |  |
| revisionHistoryLimit | int | `15` |  |
| securityContext.runAsUser | int | `1000` |  |
| service | object | internal value | Fixture |
| serviceAccount | object | internal value | Fixture |
| timezone | string | `"Asia/Hong_Kong"` |  |
| tolerations | list | internal value | Fixture |
| wallet | string | internal value | Fixture |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
