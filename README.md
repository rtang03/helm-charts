[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/dashslab)](https://artifacthub.io/packages/search?repo=dashslab)

# Chart Library for fabric-es project

- see [fabric-es](https://rtang03.github.com/fabric-es)

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

## Chart Versioning

- MAKE SURE you have updated / incremented Chart version, for EVERY chart change.
- Please must follow semantic version of Chart version
- Every newly added Chart should start with `0.1.0'

### Workflow

1. Open an issue, for chart change
2. Use PR to submit change, with above issue link
3. Every PR merge will automatically trigger `chart-releaser-action` Action, which create new release, and new git tag.

**Notice that the Github Action will fail if there is pre-existing git-tag, as the Chart version. Therefore, for chart modification, 
please make sure to increment the chart version, at patch level.**

### Template

Do not use template directory now. Need to fix it.

# Attribution

This repo is adopted from Bitnami chart repo, [charts](https://github.com/bitnami/charts).
