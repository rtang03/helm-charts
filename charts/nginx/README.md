# nginx

Chart for the nginx server

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.19.10](https://img.shields.io/badge/AppVersion-1.19.10-informational?style=flat-square)

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| rtang03 | ask@dashslab.com |  |

## Additional Information

NONE

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 1.10.3 |
| https://charts.bitnami.com/bitnami | nginx | 8.9.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nginx.affinity | object | `{}` |  |
| nginx.apigwCheckReply | string | `nil` |  |
| nginx.apigwCheckUrl | string | `nil` |  |
| nginx.appname | string | `"nginx"` |  |
| nginx.autoscaling.enabled | bool | `false` |  |
| nginx.cloneStaticSiteFromGit.enabled | bool | `false` |  |
| nginx.cloneStaticSiteFromGit.extraEnvVars | list | `[]` |  |
| nginx.cloneStaticSiteFromGit.extraVolumeMounts | list | `[]` |  |
| nginx.cloneStaticSiteFromGit.gitClone.args | string | `nil` |  |
| nginx.cloneStaticSiteFromGit.gitClone.command | list | `[]` |  |
| nginx.cloneStaticSiteFromGit.gitSync.args | list | `[]` |  |
| nginx.cloneStaticSiteFromGit.gitSync.command | list | `[]` |  |
| nginx.cloneStaticSiteFromGit.image.pullPolicy | string | `"IfNotPresent"` |  |
| nginx.cloneStaticSiteFromGit.image.registry | string | `"docker.io"` |  |
| nginx.cloneStaticSiteFromGit.image.repository | string | `"bitnami/git"` |  |
| nginx.cloneStaticSiteFromGit.image.tag | string | `"2.31.1-debian-10-r31"` |  |
| nginx.cloneStaticSiteFromGit.interval | int | `60` |  |
| nginx.clusterDomain | string | `"cluster.local"` |  |
| nginx.commonAnnotations | object | `{}` |  |
| nginx.commonLabels | object | `{}` |  |
| nginx.containerPorts.http | int | `5000` |  |
| nginx.containerPorts.https | int | `5101` |  |
| nginx.containerSecurityContext.enabled | bool | `false` |  |
| nginx.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| nginx.containerSecurityContext.runAsUser | int | `1001` |  |
| nginx.customLivenessProbe | object | `{}` |  |
| nginx.customReadinessProbe | object | `{}` |  |
| nginx.datafileCheckReply | string | `nil` |  |
| nginx.datafileCheckUrl | string | `nil` |  |
| nginx.extraDeploy | list | `[]` |  |
| nginx.extraEnvVars[0].name | string | `"TZ"` |  |
| nginx.extraEnvVars[0].value | string | `"Asia/Hong_Kong"` |  |
| nginx.extraVolumeMounts | string | `nil` |  |
| nginx.extraVolumes | string | `nil` |  |
| nginx.fqdn | string | `"myorg.cdi.network"` |  |
| nginx.healthIngress.annotations | object | `{}` |  |
| nginx.healthIngress.certManager | bool | `false` |  |
| nginx.healthIngress.enabled | bool | `false` |  |
| nginx.healthIngress.extraHosts | list | `[]` |  |
| nginx.healthIngress.extraTls | list | `[]` |  |
| nginx.healthIngress.hostname | string | `"example.local"` |  |
| nginx.healthIngress.pathType | string | `"ImplementationSpecific"` |  |
| nginx.healthIngress.secrets | list | `[]` |  |
| nginx.healthIngress.tls | bool | `false` |  |
| nginx.hostAliases | list | `[]` |  |
| nginx.image.debug | bool | `false` |  |
| nginx.image.pullPolicy | string | `"IfNotPresent"` |  |
| nginx.image.pullSecrets | list | `[]` |  |
| nginx.image.registry | string | `"docker.io"` |  |
| nginx.image.repository | string | `"bitnami/nginx"` |  |
| nginx.image.tag | string | `"1.21.1-debian-10-r13"` |  |
| nginx.ingress.annotations | object | `{}` |  |
| nginx.ingress.apiVersion | string | `nil` |  |
| nginx.ingress.certManager | bool | `false` |  |
| nginx.ingress.enabled | bool | `false` |  |
| nginx.ingress.hostname | string | `"nginx.local"` |  |
| nginx.ingress.path | string | `"/"` |  |
| nginx.ingress.pathType | string | `"ImplementationSpecific"` |  |
| nginx.ingress.secrets | list | `[]` |  |
| nginx.ingress.tls | bool | `false` |  |
| nginx.initContainers | string | `nil` |  |
| nginx.kubeVersion | string | `nil` |  |
| nginx.ldapDaemon.customLivenessProbe | object | `{}` |  |
| nginx.ldapDaemon.customReadinessProbe | object | `{}` |  |
| nginx.ldapDaemon.enabled | bool | `false` |  |
| nginx.ldapDaemon.existingNginxServerBlockSecret | string | `nil` |  |
| nginx.ldapDaemon.image.pullPolicy | string | `"IfNotPresent"` |  |
| nginx.ldapDaemon.image.registry | string | `"docker.io"` |  |
| nginx.ldapDaemon.image.repository | string | `"bitnami/nginx-ldap-auth-daemon"` |  |
| nginx.ldapDaemon.image.tag | string | `"0.20200116.0-debian-10-r327"` |  |
| nginx.ldapDaemon.ldapConfig.baseDN | string | `""` |  |
| nginx.ldapDaemon.ldapConfig.bindDN | string | `""` |  |
| nginx.ldapDaemon.ldapConfig.bindPassword | string | `""` |  |
| nginx.ldapDaemon.ldapConfig.filter | string | `""` |  |
| nginx.ldapDaemon.ldapConfig.httpCookieName | string | `""` |  |
| nginx.ldapDaemon.ldapConfig.httpRealm | string | `""` |  |
| nginx.ldapDaemon.ldapConfig.uri | string | `""` |  |
| nginx.ldapDaemon.livenessProbe.enabled | bool | `false` |  |
| nginx.ldapDaemon.livenessProbe.failureThreshold | int | `6` |  |
| nginx.ldapDaemon.livenessProbe.initialDelaySeconds | int | `30` |  |
| nginx.ldapDaemon.livenessProbe.periodSeconds | int | `10` |  |
| nginx.ldapDaemon.livenessProbe.successThreshold | int | `1` |  |
| nginx.ldapDaemon.livenessProbe.timeoutSeconds | int | `5` |  |
| nginx.ldapDaemon.nginxServerBlock | string | `"server {\nlisten 0.0.0.0:{{ .Values.containerPorts.http }};\n\n# You can provide a special subPath or the root\nlocation = / {\n    auth_request /auth-proxy;\n}\n\nlocation = /auth-proxy {\n    internal;\n\n    proxy_pass http://127.0.0.1:{{ .Values.ldapDaemon.port }};\n\n    ###############################################################\n    # YOU SHOULD CHANGE THE FOLLOWING TO YOUR LDAP CONFIGURATION  #\n    ###############################################################\n\n    # URL and port for connecting to the LDAP server\n    # proxy_set_header X-Ldap-URL \"ldap://YOUR_LDAP_SERVER_IP:YOUR_LDAP_SERVER_PORT\";\n\n    # Base DN\n    # proxy_set_header X-Ldap-BaseDN \"dc=example,dc=org\";\n\n    # Bind DN\n    # proxy_set_header X-Ldap-BindDN \"cn=admin,dc=example,dc=org\";\n\n    # Bind password\n    # proxy_set_header X-Ldap-BindPass \"adminpassword\";\n}\n}"` |  |
| nginx.ldapDaemon.port | int | `8888` |  |
| nginx.ldapDaemon.readinessProbe.enabled | bool | `false` |  |
| nginx.ldapDaemon.readinessProbe.failureThreshold | int | `3` |  |
| nginx.ldapDaemon.readinessProbe.initialDelaySeconds | int | `5` |  |
| nginx.ldapDaemon.readinessProbe.periodSeconds | int | `5` |  |
| nginx.ldapDaemon.readinessProbe.successThreshold | int | `1` |  |
| nginx.ldapDaemon.readinessProbe.timeoutSeconds | int | `3` |  |
| nginx.livenessProbe.enabled | bool | `false` |  |
| nginx.livenessProbe.failureThreshold | int | `6` |  |
| nginx.livenessProbe.initialDelaySeconds | int | `30` |  |
| nginx.livenessProbe.periodSeconds | int | `10` |  |
| nginx.livenessProbe.successThreshold | int | `1` |  |
| nginx.livenessProbe.timeoutSeconds | int | `5` |  |
| nginx.metrics.enabled | bool | `false` |  |
| nginx.metrics.image.pullPolicy | string | `"IfNotPresent"` |  |
| nginx.metrics.image.registry | string | `"docker.io"` |  |
| nginx.metrics.image.repository | string | `"bitnami/nginx-exporter"` |  |
| nginx.metrics.image.tag | string | `"0.9.0-debian-10-r34"` |  |
| nginx.metrics.podAnnotations | object | `{}` |  |
| nginx.metrics.resources.limits | object | `{}` |  |
| nginx.metrics.resources.requests | object | `{}` |  |
| nginx.metrics.service.annotations."prometheus.io/port" | string | `"{{ .Values.metrics.service.port }}"` |  |
| nginx.metrics.service.annotations."prometheus.io/scrape" | string | `"true"` |  |
| nginx.metrics.service.port | int | `9113` |  |
| nginx.metrics.serviceMonitor.enabled | bool | `false` |  |
| nginx.nodeAffinityPreset.key | string | `""` |  |
| nginx.nodeAffinityPreset.type | string | `""` |  |
| nginx.nodeAffinityPreset.values | list | `[]` |  |
| nginx.nodeSelector | object | `{}` |  |
| nginx.orgname | string | `"myorg"` |  |
| nginx.pdb.create | bool | `false` |  |
| nginx.pdb.minAvailable | int | `1` |  |
| nginx.podAffinityPreset | string | `""` |  |
| nginx.podAnnotations | object | `{}` |  |
| nginx.podAntiAffinityPreset | string | `"soft"` |  |
| nginx.podLabels | object | `{}` |  |
| nginx.podSecurityContext.enabled | bool | `false` |  |
| nginx.podSecurityContext.fsGroup | int | `1001` |  |
| nginx.podSecurityContext.sysctls | object | `{}` |  |
| nginx.readinessProbe.enabled | bool | `false` |  |
| nginx.readinessProbe.failureThreshold | int | `3` |  |
| nginx.readinessProbe.initialDelaySeconds | int | `5` |  |
| nginx.readinessProbe.periodSeconds | int | `5` |  |
| nginx.readinessProbe.successThreshold | int | `1` |  |
| nginx.readinessProbe.timeoutSeconds | int | `3` |  |
| nginx.replicaCount | int | `1` |  |
| nginx.resources.limits.cpu | string | `"100m"` |  |
| nginx.resources.limits.memory | string | `"128Mi"` |  |
| nginx.resources.requests.cpu | string | `"100m"` |  |
| nginx.resources.requests.memory | string | `"128Mi"` |  |
| nginx.revisionHistoryLimit | int | `5` |  |
| nginx.serverBlock | string | `nil` |  |
| nginx.service.annotations | object | `{}` |  |
| nginx.service.externalTrafficPolicy | string | `"Cluster"` |  |
| nginx.service.http.enabled | bool | `false` |  |
| nginx.service.https.enabled | bool | `true` |  |
| nginx.service.httpsPort | int | `5101` |  |
| nginx.service.nodePorts.http | string | `""` |  |
| nginx.service.nodePorts.https | string | `""` |  |
| nginx.service.port | int | `5000` |  |
| nginx.service.protocol.http | string | `"TCP"` |  |
| nginx.service.protocol.https | string | `"TCP"` |  |
| nginx.service.targetPort.http | int | `5000` |  |
| nginx.service.targetPort.https | int | `5101` |  |
| nginx.service.type | string | `"ClusterIP"` |  |
| nginx.serviceAccount.annotations | object | `{}` |  |
| nginx.serviceAccount.create | bool | `true` |  |
| nginx.sidecars | string | `nil` |  |
| nginx.tolerations | object | `{}` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
