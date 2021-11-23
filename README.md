[![Release Charts](https://github.com/rtang03/helm-charts/actions/workflows/release.yml/badge.svg)](https://github.com/rtang03/helm-charts/actions/workflows/release.yml)

# Chart Library for fabric-es project

- see [fabric-es](https://rtang03.github.com/fabric-es)

**IMPORTANT NOTE: for any single change, increment the Chart version.**

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
3. Edit `Chart.yaml`, incremental Chart version
4. Use PR to submit change, with above issue linked. Every PR merge will automatically trigger `chart-releaser-action` Action, which create new release, and new git tag.
5. Check Github Action and releases, if the change is released.


**Notice that the Github Action will fail if there is pre-existing git-tag, as the Chart version. Therefore, for chart modification,
please make sure to increment the chart version, at patch level.**

### Note

1. `external` directory contains charts and manifest, requiring manual installation.

### Reference Info
- [Validate helm chart with json schema](https://www.arthurkoziel.com/validate-helm-chart-values-with-json-schemas/)
- [json2yaml](https://www.json2yaml.com)
- [json schema generation](https://www.jsonschema.net/home)


### Attribution

This repo is adopted from Bitnami chart repo, [charts](https://github.com/bitnami/charts).
