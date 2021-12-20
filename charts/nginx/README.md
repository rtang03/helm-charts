# nginx

Chart for the nginx server

![Version: 8.9.0](https://img.shields.io/badge/Version-8.9.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.19.10](https://img.shields.io/badge/AppVersion-1.19.10-informational?style=flat-square)

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| rtang03 | ask@dashslab.com |  |

## Additional Information

NONE

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 1.x.x |
| https://charts.bitnami.com/bitnami | nginx | 8.9.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| apigwCheckReply | string | `nil` |  |
| apigwCheckUrl | string | `nil` |  |
| appname | string | `"nginx"` |  |
| autoscaling.enabled | bool | `false` |  |
| cloneStaticSiteFromGit.enabled | bool | `false` |  |
| cloneStaticSiteFromGit.extraEnvVars | list | `[]` |  |
| cloneStaticSiteFromGit.extraVolumeMounts | list | `[]` |  |
| cloneStaticSiteFromGit.gitClone.args | string | `nil` |  |
| cloneStaticSiteFromGit.gitClone.command | list | `[]` |  |
| cloneStaticSiteFromGit.gitSync.args | list | `[]` |  |
| cloneStaticSiteFromGit.gitSync.command | list | `[]` |  |
| cloneStaticSiteFromGit.image.pullPolicy | string | `"IfNotPresent"` |  |
| cloneStaticSiteFromGit.image.registry | string | `"docker.io"` |  |
| cloneStaticSiteFromGit.image.repository | string | `"bitnami/git"` |  |
| cloneStaticSiteFromGit.image.tag | string | `"2.31.1-debian-10-r31"` |  |
| cloneStaticSiteFromGit.interval | int | `60` |  |
| clusterDomain | string | `"cluster.local"` |  |
| commonAnnotations | object | `{}` |  |
| commonLabels | object | `{}` |  |
| containerPorts.http | int | `5000` |  |
| containerPorts.https | int | `5101` |  |
| containerSecurityContext.enabled | bool | `false` |  |
| containerSecurityContext.runAsNonRoot | bool | `true` |  |
| containerSecurityContext.runAsUser | int | `1001` |  |
| customLivenessProbe | object | `{}` |  |
| customReadinessProbe | object | `{}` |  |
| datafileCheckReply | string | `nil` |  |
| datafileCheckUrl | string | `nil` |  |
| extraDeploy | list | `[]` |  |
| extraEnvVars[0].name | string | `"TZ"` |  |
| extraEnvVars[0].value | string | `"Asia/Hong_Kong"` |  |
| extraVolumeMounts | object | `{}` |  |
| extraVolumes | object | `{}` |  |
| fqdn | string | `"myorg.cdi.network"` |  |
| healthIngress.annotations | object | `{}` |  |
| healthIngress.certManager | bool | `false` |  |
| healthIngress.enabled | bool | `false` |  |
| healthIngress.extraHosts | list | `[]` |  |
| healthIngress.extraTls | list | `[]` |  |
| healthIngress.hostname | string | `"example.local"` |  |
| healthIngress.pathType | string | `"ImplementationSpecific"` |  |
| healthIngress.secrets | list | `[]` |  |
| healthIngress.tls | bool | `false` |  |
| hostAliases | list | `[]` |  |
| image.debug | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"bitnami/nginx"` |  |
| image.tag | string | `"1.21.1-debian-10-r13"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.apiVersion | string | `nil` |  |
| ingress.certManager | bool | `false` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hostname | string | `"nginx.local"` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"ImplementationSpecific"` |  |
| ingress.secrets | list | `[]` |  |
| ingress.tls | bool | `false` |  |
| initContainers | string | `nil` |  |
| kubeVersion | string | `nil` |  |
| ldapDaemon.customLivenessProbe | object | `{}` |  |
| ldapDaemon.customReadinessProbe | object | `{}` |  |
| ldapDaemon.enabled | bool | `false` |  |
| ldapDaemon.existingNginxServerBlockSecret | string | `nil` |  |
| ldapDaemon.image.pullPolicy | string | `"IfNotPresent"` |  |
| ldapDaemon.image.registry | string | `"docker.io"` |  |
| ldapDaemon.image.repository | string | `"bitnami/nginx-ldap-auth-daemon"` |  |
| ldapDaemon.image.tag | string | `"0.20200116.0-debian-10-r327"` |  |
| ldapDaemon.ldapConfig.baseDN | string | `""` |  |
| ldapDaemon.ldapConfig.bindDN | string | `""` |  |
| ldapDaemon.ldapConfig.bindPassword | string | `""` |  |
| ldapDaemon.ldapConfig.filter | string | `""` |  |
| ldapDaemon.ldapConfig.httpCookieName | string | `""` |  |
| ldapDaemon.ldapConfig.httpRealm | string | `""` |  |
| ldapDaemon.ldapConfig.uri | string | `""` |  |
| ldapDaemon.livenessProbe.enabled | bool | `false` |  |
| ldapDaemon.livenessProbe.failureThreshold | int | `6` |  |
| ldapDaemon.livenessProbe.initialDelaySeconds | int | `30` |  |
| ldapDaemon.livenessProbe.periodSeconds | int | `10` |  |
| ldapDaemon.livenessProbe.successThreshold | int | `1` |  |
| ldapDaemon.livenessProbe.timeoutSeconds | int | `5` |  |
| ldapDaemon.nginxServerBlock | string | `"server {\nlisten 0.0.0.0:{{ .Values.containerPorts.http }};\n\n# You can provide a special subPath or the root\nlocation = / {\n    auth_request /auth-proxy;\n}\n\nlocation = /auth-proxy {\n    internal;\n\n    proxy_pass http://127.0.0.1:{{ .Values.ldapDaemon.port }};\n\n    ###############################################################\n    # YOU SHOULD CHANGE THE FOLLOWING TO YOUR LDAP CONFIGURATION  #\n    ###############################################################\n\n    # URL and port for connecting to the LDAP server\n    # proxy_set_header X-Ldap-URL \"ldap://YOUR_LDAP_SERVER_IP:YOUR_LDAP_SERVER_PORT\";\n\n    # Base DN\n    # proxy_set_header X-Ldap-BaseDN \"dc=example,dc=org\";\n\n    # Bind DN\n    # proxy_set_header X-Ldap-BindDN \"cn=admin,dc=example,dc=org\";\n\n    # Bind password\n    # proxy_set_header X-Ldap-BindPass \"adminpassword\";\n}\n}"` |  |
| ldapDaemon.port | int | `8888` |  |
| ldapDaemon.readinessProbe.enabled | bool | `false` |  |
| ldapDaemon.readinessProbe.failureThreshold | int | `3` |  |
| ldapDaemon.readinessProbe.initialDelaySeconds | int | `5` |  |
| ldapDaemon.readinessProbe.periodSeconds | int | `5` |  |
| ldapDaemon.readinessProbe.successThreshold | int | `1` |  |
| ldapDaemon.readinessProbe.timeoutSeconds | int | `3` |  |
| livenessProbe.enabled | bool | `false` |  |
| livenessProbe.failureThreshold | int | `6` |  |
| livenessProbe.initialDelaySeconds | int | `30` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| metrics.enabled | bool | `false` |  |
| metrics.image.pullPolicy | string | `"IfNotPresent"` |  |
| metrics.image.registry | string | `"docker.io"` |  |
| metrics.image.repository | string | `"bitnami/nginx-exporter"` |  |
| metrics.image.tag | string | `"0.9.0-debian-10-r34"` |  |
| metrics.podAnnotations | object | `{}` |  |
| metrics.resources.limits | object | `{}` |  |
| metrics.resources.requests | object | `{}` |  |
| metrics.service.annotations."prometheus.io/port" | string | `"{{ .Values.metrics.service.port }}"` |  |
| metrics.service.annotations."prometheus.io/scrape" | string | `"true"` |  |
| metrics.service.port | int | `9113` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| nodeAffinityPreset.key | string | `""` |  |
| nodeAffinityPreset.type | string | `""` |  |
| nodeAffinityPreset.values | list | `[]` |  |
| nodeSelector | object | `{}` |  |
| orgname | string | `"myorg"` |  |
| pdb.create | bool | `false` |  |
| pdb.minAvailable | int | `1` |  |
| podAffinityPreset | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podAntiAffinityPreset | string | `"soft"` |  |
| podLabels | object | `{}` |  |
| podSecurityContext.enabled | bool | `false` |  |
| podSecurityContext.fsGroup | int | `1001` |  |
| podSecurityContext.sysctls | object | `{}` |  |
| readinessProbe.enabled | bool | `false` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.initialDelaySeconds | int | `5` |  |
| readinessProbe.periodSeconds | int | `5` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.timeoutSeconds | int | `3` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"100m"` |  |
| resources.limits.memory | string | `"128Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| revisionHistoryLimit | int | `5` |  |
| serverBlock | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.externalTrafficPolicy | string | `"Cluster"` |  |
| service.http.enabled | bool | `false` |  |
| service.https.enabled | bool | `true` |  |
| service.httpsPort | int | `5101` |  |
| service.nodePorts.http | string | `""` |  |
| service.nodePorts.https | string | `""` |  |
| service.port | int | `5000` |  |
| service.protocol.http | string | `"TCP"` |  |
| service.protocol.https | string | `"TCP"` |  |
| service.targetPort.http | int | `5000` |  |
| service.targetPort.https | int | `5101` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| sidecars | string | `nil` |  |
| tolerations | object | `{}` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
