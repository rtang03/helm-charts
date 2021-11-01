[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/dashslab)](https://artifacthub.io/packages/search?repo=dashslab)

# Chart Library for fabric-es project

- see [fabric-es](https://rtang03.github.com/fabric-es)

**IMPORTANT NOTE: for any single change, increment the Chart version.**

## Supported Charts

Below charts are usable, and deployment tested. We do not support automated helm test.

- hlf-explorer
- hlf-explorer-db
- jaeger
- grafana

## Installation

You can install with either `helm install`, or ArgoCD deployment. 

### Option 1: Helm Install

I will encourage to using `Helm build` to establish your project, [Helm Dependency](https://helm.sh/docs/helm/helm_dependency/)

```bash
# install locally
$ helm install my-release dashslab/<chart>
```

### Option 2: ArgoCD
For ArgoCD deployment, and requiring customized configuration, you shall download the artifacts directly, from this project's
[Release](https://github.com/rtang03/helm-charts/releases). You need to pick your preferred chart releases, and establish
your ArgoCD project manually. 


## Before you begin

### Prerequisites
- Kubernetes 1.12+
- Helm 3.1.0

### Install Helm

Helm is a tool for managing Kubernetes charts. Charts are packages of pre-configured Kubernetes resources.

To install Helm, refer to the [Helm install guide](https://github.com/helm/helm#install) and ensure that the `helm` binary is in the `PATH` of your shell.

### Add Repo

The following command allows you to download and install all the charts from this repository:

```bash
# Getting Started
$ helm repo add dashslab https://rtang03.github.io/helm-charts
$ helm search repo dashslab
$ helm install my-release dashslab/<chart>
```

## Development

### Chart Versioning

- MAKE SURE you have updated / incremented Chart version, for EVERY chart change.
- Please must follow semantic version of Chart version
- Every newly added Chart should start with `0.1.0'

### Workflow

1. Open an issue, for chart change
2. Fork a branch for chart development / patching
3. Edit `Chart.yaml`, (1) incremental Chart version; (2) Add ArtifactHub ChangeLog anotation. Notice that ArtifactHub requires "quoted" string.

```yaml
apiVersion: v2
annotations:
  artifacthub.io/changes: |
    - kind: "fixed"
      description: "1st attempt fixing"
      links:
        - name: "improve security rating"
          url: "https://github.com/rtang03/helm-charts/issues/8"
  ```
4. Use PR to submit change, with above issue linked. Every PR merge will automatically trigger `chart-releaser-action` Action, which create new release, and new git tag.
5. Check Github Action and releases, if the change is released.
6. Check your deployment in ArtifactHub, go to `https://artifacthub.io/packages/helm/dashslab/<Chart-Name>`
7. If you want to discard the deployed change, you need NOT delete the release, NOR untag it. You should edit below file

```yaml
# https://github.com/rtang03/helm-charts/blob/gh-pages/artifacthub-repo.yml
repositoryID: 1b740a16-eccf-4215-bd65-5ad24d681d2f
owners: # (optional, used to claim repository ownership)
  - name: rtang03
    email: ask@dashslab.com
ignore: # (optional, packages that should not be indexed by Artifact Hub)
  - name: grafana # Exact match
  version: 0.1.1 # Regular expression (when omitted, all versions are ignored)
  - name: hlf-explorer-db # Exact match
    version: 0.1.2 # Regular expression (when omitted, all versions are ignored)
```

**Notice that the Github Action will fail if there is pre-existing git-tag, as the Chart version. Therefore, for chart modification, 
please make sure to increment the chart version, at patch level.**

### Template

Do not use template directory now. Need to fix it.

### Reference Info
- [ArtifactHub annotation](https://artifacthub.io/docs/topics/annotations/helm/)
- [Validate helm chart with json schema](https://www.arthurkoziel.com/validate-helm-chart-values-with-json-schemas/)
- [json2yaml](https://www.json2yaml.com)
- [json schema generation](https://www.jsonschema.net/home)


### Attribution

This repo is adopted from Bitnami chart repo, [charts](https://github.com/bitnami/charts).
