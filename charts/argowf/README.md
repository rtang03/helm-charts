# argowf

Custom Argo Workflow installation

![Version: 0.1.13](https://img.shields.io/badge/Version-0.1.13-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.9.2](https://img.shields.io/badge/AppVersion-0.9.2-informational?style=flat-square)

## TL;DR

NOTE: This chart is opinionated for experimental project; with a pre-determined network toplogy via Istio. It is unlikely to use for general purpose.

```shell
kubectl port-forward deployment/argo-server
```

## Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm repo add dashslab https://rtang03.github.io/helm-charts
$ helm install my-release dashslab/argowf
```

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://argoproj.github.io/argo-helm | argo-workflows | 0.9.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| argo-workflows.artifactRepository.archiveLogs | bool | `false` | Archive the main container logs as an artifact |
| argo-workflows.artifactRepository.gcs | object | `{}` (See [values.yaml]) | Store artifact in a GCS object store |
| argo-workflows.artifactRepository.s3 | object | See [values.yaml] | Store artifact in a S3-compliant object store |
| argo-workflows.controller.affinity | object | internal value | Assign custom [affinity] rules |
| argo-workflows.controller.clusterWorkflowTemplates.enabled | bool | `true` | Create a ClusterRole and CRB for the controller to access ClusterWorkflowTemplates. |
| argo-workflows.controller.containerRuntimeExecutor | string | internal value | Specifies the container runtime interface to use (one of: `docker`, `kubelet`, `k8sapi`, `pns`, `emissary`) |
| argo-workflows.controller.containerRuntimeExecutors | list | internal value | Specifies the executor to use. This has precedence over `controller.containerRuntimeExecutor`. |
| argo-workflows.controller.extraArgs | list | `[]` | Extra arguments to be added to the controller |
| argo-workflows.controller.extraContainers | list | `[]` | Extra containers to be added to the controller deployment |
| argo-workflows.controller.extraEnv | list | `[]` | Extra environment variables to provide to the controller container |
| argo-workflows.controller.image | object | internal value | Fixture |
| argo-workflows.controller.image.registry | string | `"quay.io"` | Registry to use for the controller |
| argo-workflows.controller.image.repository | string | `"argoproj/workflow-controller"` | Registry to use for the controller |
| argo-workflows.controller.image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| argo-workflows.controller.initialDelay | string | `nil` | Resolves ongoing, uncommon AWS EKS bug: https://github.com/argoproj/argo-workflows/pull/4224 |
| argo-workflows.controller.instanceID.enabled | bool | `false` | Configures the controller to filter workflow submissions to only those which have a matching instanceID attribute. |
| argo-workflows.controller.instanceID.explicitID | string | `""` | Use a custom instanceID |
| argo-workflows.controller.instanceID.useReleaseName | bool | `false` | Use ReleaseName as instanceID |
| argo-workflows.controller.links | list | `[]` | Configure Argo Server to show custom [links] |
| argo-workflows.controller.livenessProbe | object | See [values.yaml] | Configure liveness [probe] for the controller |
| argo-workflows.controller.loadBalancerSourceRanges | list | internal value | Source ranges to allow access to service from. Only applies to service type `LoadBalancer` |
| argo-workflows.controller.logging.globallevel | string | `"0"` | Set the glog logging level |
| argo-workflows.controller.logging.level | string | `"info"` | Set the logging level (one of: `debug`, `info`, `warn`, `error`) |
| argo-workflows.controller.metricsConfig.enabled | bool | `false` | Enables prometheus metrics server |
| argo-workflows.controller.metricsConfig.path | string | `"/metrics"` | Path is the path where metrics are emitted. Must start with a "/". |
| argo-workflows.controller.metricsConfig.port | int | `9090` | Port is the port where metrics are emitted |
| argo-workflows.controller.metricsConfig.portName | string | `"metrics"` | Container metrics port name |
| argo-workflows.controller.metricsConfig.servicePort | int | `8080` | Service metrics port |
| argo-workflows.controller.metricsConfig.servicePortName | string | `"metrics"` | Service metrics port name |
| argo-workflows.controller.name | string | internal value | Workflow controller name string |
| argo-workflows.controller.namespaceParallelism | string | `nil` | Limits the maximum number of incomplete workflows in a namespace |
| argo-workflows.controller.nodeSelector | object | `{"kubernetes.io/os":"linux"}` | [Node selector] |
| argo-workflows.controller.parallelism | string | `nil` | parallelism dictates how many workflows can be running at the same time |
| argo-workflows.controller.pdb.enabled | bool | internal value | Configure [Pod Disruption Budget] for the controller pods |
| argo-workflows.controller.persistence | object | `{}` | enable persistence using postgres |
| argo-workflows.controller.podAnnotations | object | `{"sidecar.istio.io/rewriteAppHTTPProbers":"false"}` | podAnnotations is an optional map of annotations to be applied to the controller Pods |
| argo-workflows.controller.podLabels | object | internal value | Optional labels to add to the controller pods |
| argo-workflows.controller.podSecurityContext | object | internal value | Fixture |
| argo-workflows.controller.podWorkers | int | `32` | Number of pod workers |
| argo-workflows.controller.priorityClassName | string | internal value | Leverage a PriorityClass to ensure your pods survive resource shortages. |
| argo-workflows.controller.replicas | int | `1` | The number of controller pods to run |
| argo-workflows.controller.resourceRateLimit | object | `{}` | Globally limits the rate at which pods are created. This is intended to mitigate flooding of the Kubernetes API server by workflows with a large amount of parallel nodes. |
| argo-workflows.controller.resources | object | `{}` | Resource limits and requests for the controller |
| argo-workflows.controller.securityContext | object | internal value | the controller container's securityContext |
| argo-workflows.controller.serviceAccount | object | internal value | Fixture |
| argo-workflows.controller.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-workflows.controller.serviceAccount.create | bool | `true` | Create a service account for the controller |
| argo-workflows.controller.serviceAccount.name | string | `"argo"` | Service account name |
| argo-workflows.controller.serviceAnnotations | object | internal value | Annotations to be applied to the controller Service |
| argo-workflows.controller.serviceLabels | object | internal value | Optional labels to add to the controller Service |
| argo-workflows.controller.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| argo-workflows.controller.serviceMonitor.enabled | bool | `false` | Enable a prometheus ServiceMonitor |
| argo-workflows.controller.serviceType | string | internal value | Service type of the controller Service |
| argo-workflows.controller.telemetryConfig.enabled | bool | `false` | Enables prometheus telemetry server |
| argo-workflows.controller.telemetryConfig.path | string | `"/telemetry"` | telemetry path |
| argo-workflows.controller.telemetryConfig.port | int | `8081` | telemetry container port |
| argo-workflows.controller.telemetryConfig.servicePort | int | `8081` | telemetry service port |
| argo-workflows.controller.telemetryConfig.servicePortName | string | `"telemetry"` | telemetry service port name |
| argo-workflows.controller.tolerations | list | internal value | [Tolerations] for use with node taints |
| argo-workflows.controller.workflowDefaults | object | `{"spec":{"ttlStrategy":{"secondsAfterCompletion":84600}}}` | Default values that will apply to all Workflows from this controller, unless overridden on the Workflow-level. Only valid for 2.7+ |
| argo-workflows.controller.workflowNamespaces | list | `["default","argo","n0","n1"]` | Specify all namespaces where this workflow controller instance will manage workflows. This controls where the service account and RBAC resources will be created. Only valid when singleNamespace is false. |
| argo-workflows.controller.workflowRestrictions | object | internal value | Restricts the Workflows that the controller will process. Only valid for 2.9+ |
| argo-workflows.controller.workflowWorkers | int | `32` | Number of workflow workers |
| argo-workflows.createAggregateRoles | bool | `true` | Create clusterroles that extend existing clusterroles to interact with argo-cd crds |
| argo-workflows.executor.env | object | `{}` | Adds environment variables for the executor. |
| argo-workflows.executor.image.registry | string | `"quay.io"` | Registry to use for the Workflow Executors |
| argo-workflows.executor.image.repository | string | `"argoproj/argoexec"` | Repository to use for the Workflow Executors |
| argo-workflows.executor.image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| argo-workflows.executor.resources | object | `{}` | Resource limits and requests for the Workflow Executors |
| argo-workflows.executor.securityContext | object | `{}` | sets security context for the executor container |
| argo-workflows.fullnameOverride | string | `nil` | String to fully override "argo-workflows.fullname" template |
| argo-workflows.images.pullPolicy | string | `"Always"` | imagePullPolicy to apply to all containers |
| argo-workflows.images.pullSecrets | list | internal value | Fixture |
| argo-workflows.kubeVersionOverride | string | internal value | Fixture |
| argo-workflows.nameOverride | string | `nil` | String to partially override "argo-workflows.fullname" template |
| argo-workflows.server.affinity | object | internal value | Assign custom [affinity] rules |
| argo-workflows.server.baseHref | string | `"/"` | Value for base href in index.html. Used if the server is running behind reverse proxy under subpath different from /. |
| argo-workflows.server.clusterWorkflowTemplates.enableEditing | bool | `true` | Give the server permissions to edit ClusterWorkflowTemplates. |
| argo-workflows.server.clusterWorkflowTemplates.enabled | bool | `true` | Create a ClusterRole and CRB for the server to access ClusterWorkflowTemplates. |
| argo-workflows.server.enabled | bool | `true` | Deploy the Argo Server |
| argo-workflows.server.extraArgs | list | `["--auth-mode=client"]` | Extra arguments to provide to the Argo server binary. |
| argo-workflows.server.extraContainers | list | `[]` | Extra containers to be added to the server deployment |
| argo-workflows.server.extraEnv | list | `[]` | Extra environment variables to provide to the argo-server container |
| argo-workflows.server.image | object | internal value | Fixture |
| argo-workflows.server.image.registry | string | `"quay.io"` | Registry to use for the server |
| argo-workflows.server.image.repository | string | `"argoproj/argocli"` | Repository to use for the server |
| argo-workflows.server.image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| argo-workflows.server.ingress.annotations | object | `{}` | Additional ingress annotations |
| argo-workflows.server.ingress.enabled | bool | `false` | Enable an ingress resource |
| argo-workflows.server.ingress.extraPaths | list | `[]` | Additional ingress paths |
| argo-workflows.server.ingress.hosts | list | `[]` | List of ingress hosts |
| argo-workflows.server.ingress.ingressClassName | string | `""` | Defines which ingress controller will implement the resource |
| argo-workflows.server.ingress.labels | object | `{}` | Additional ingress labels |
| argo-workflows.server.ingress.pathType | string | `"Prefix"` | Ingress path type. One of `Exact`, `Prefix` or `ImplementationSpecific` |
| argo-workflows.server.ingress.paths | list | `["/"]` | List of ingress paths |
| argo-workflows.server.ingress.tls | list | `[]` | Ingress TLS configuration |
| argo-workflows.server.loadBalancerIP | string | internal value | Static IP address to assign to loadBalancer service type `LoadBalancer` |
| argo-workflows.server.loadBalancerSourceRanges | list | internal value | Source ranges to allow access to service from. Only applies to service type `LoadBalancer` |
| argo-workflows.server.name | string | internal value | Server name string |
| argo-workflows.server.nodeSelector | object | `{"kubernetes.io/os":"linux"}` | [Node selector] |
| argo-workflows.server.pdb | object | internal value | Fixture |
| argo-workflows.server.pdb.enabled | bool | `false` | Configure [Pod Disruption Budget] for the server pods |
| argo-workflows.server.podAnnotations | object | `{"sidecar.istio.io/logLevel":"warning","sidecar.istio.io/rewriteAppHTTPProbers":"false"}` | optional map of annotations to be applied to the ui Pods |
| argo-workflows.server.podLabels | object | `{"app":"argo","version":"3.2.4"}` | Optional labels to add to the UI pods |
| argo-workflows.server.podSecurityContext | object | `{}` | SecurityContext to set on the server pods |
| argo-workflows.server.priorityClassName | string | internal value | Leverage a PriorityClass to ensure your pods survive resource shortages |
| argo-workflows.server.replicas | int | `1` | The number of server pods to run |
| argo-workflows.server.resources | object | `{}` | Resource limits and requests for the server |
| argo-workflows.server.secure | bool | `false` | Run the argo server in "secure" mode. Configure this value instead of `--secure` in extraArgs. |
| argo-workflows.server.securityContext | object | internal value | Servers container-level security context |
| argo-workflows.server.serviceAccount | object | internal value | Fixture |
| argo-workflows.server.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-workflows.server.serviceAccount.create | bool | `true` | Create a service account for the server |
| argo-workflows.server.serviceAccount.name | string | `""` | Service account name |
| argo-workflows.server.serviceAnnotations | object | internal value | Annotations to be applied to the UI Service |
| argo-workflows.server.serviceLabels | object | internal value | Optional labels to add to the UI Service |
| argo-workflows.server.serviceNodePort | string | `nil` | Service node port |
| argo-workflows.server.servicePort | int | internal value | Service port for server |
| argo-workflows.server.servicePortName | string | internal value | Service port name |
| argo-workflows.server.serviceType | string | internal value | Service type for server pods |
| argo-workflows.server.sso | object | `{}` | SSO configuration when SSO is specified as a server auth mode. |
| argo-workflows.server.tolerations | list | internal value | [Tolerations] for use with node taints |
| argo-workflows.server.volumeMounts | list | `[]` | Additional volume mounts to the server main container. |
| argo-workflows.server.volumes | list | `[]` | Additional volumes to the server pod. |
| argo-workflows.singleNamespace | bool | internal value | Fixture |
| argo-workflows.useDefaultArtifactRepo | bool | `false` | Influences the creation of the ConfigMap for the workflow-controller itself. |
| argo-workflows.useStaticCredentials | bool | `true` | Use static credentials for S3 (eg. when not using AWS IRSA) |
| argo-workflows.workflow.namespace | string | `nil` | Deprecated; use controller.workflowNamespaces instead. |
| argo-workflows.workflow.rbac | object | internal value | Fixture |
| argo-workflows.workflow.rbac.create | bool | `true` | Adds Role and RoleBinding for the above specified service account to be able to run workflows. A Role and Rolebinding pair is also created for each namespace in controller.workflowNamespaces (see below) |
| argo-workflows.workflow.serviceAccount | object | internal value | Fixture |
| argo-workflows.workflow.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-workflows.workflow.serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| argo-workflows.workflow.serviceAccount.name | string | `"argo-workflow"` | Service account which is used to run workflows |
| artifactRepository.accessKey | string | `"ID"` | S3 access key |
| artifactRepository.alias | string | `"alias"` | artifactory repository |
| artifactRepository.bucket | string | `"s3.bucket.hktvmall.tst3"` |  |
| artifactRepository.enabled | bool | internal value | Fixture |
| artifactRepository.endpoint | string | `"s3.ap-northeast-2.amazonaws.com"` |  |
| artifactRepository.keyFormat | string | `"hktvmall"` |  |
| artifactRepository.secretKey | string | `"KEY"` | S3 secret key |
| fqdn | string | `"argo.server"` |  |
| serviceAccounts | list | `[{"namespace":"n1"}]` | target ns to create "workflow" SA |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
