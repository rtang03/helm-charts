# helm-charts

# The Dashslab Library for Kubernetes


## TL;DR

```bash
$ helm repo add dashslab https://rtang03.github.io/helm-charts
$ helm search repo dashslab
$ helm install my-release dashslab/<chart>
```

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
$ helm repo add dashslab https://rtang03.github.io/helm-charts
```

### Workflow

- Use PR to submit change
- Do not git tag


# Attribution

This repo is adopted from Bitnami chart repo, [charts](https://github.com/bitnami/charts).

# License

Copyright (c) 2015-2021 Dashslab

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
