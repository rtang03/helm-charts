# Hyperledger Fabric Peer

[Hyperledger Fabric Peer](http://hyperledger-fabric.readthedocs.io/) is the node type responsible for endorsing transactions and recording them on the Blockchain for the [Hyperledger](https://www.hyperledger.org/) Fabric permissioned blockchain framework.

NOTE: This chart is opinionated for fabric-es project; with a pre-determined network toplogy via Istio. It is unlikely to use for general purpose. 

## Introduction

The Hyperledger Fabric Peer can either use a `goleveldb` or a `CouchDB` database for holding the ledger data.

This Peer can receive transaction requests, which it checks and signs, endorsing them. These endorsements can then be sent to the Ordering Service (one or more Orderer nodes), which will package them and return blocks that the Peer can then commit to their own Ledger.

## Prerequisites

- Kubernetes 1.9+
- PV provisioner support in the underlying infrastructure.
- K8S secrets containing:
    - the crypto-materials (e.g. signcert, key, cacert, and optionally intermediatecert, CA credentials)
    - the channel transaction for the Peer
    - the certificate of the Peer Organisation Admin
    - the private key of the Peer Organisation Admin (needed to join the channel)
- A running [HLF-CouchDB Chart](https://github.com/kubernetes/charts/tree/master/stable/hlf-couchdb) if you are using the `CouchDB` database.

**Note:** Kubernetes secrets must be created in `n1` using [cryptoprep](../workflow/cryptoprep/README.md) before hand.

## Installing the Chart

To install the chart with the name `peer0-org1`:

```bash
helm install -n n1 -f hlf/hlf-peer/test/values-p0.yaml p0 hlf/hlf-peer
```

The command deploys the Hyperledger Fabric Peer on the Kubernetes cluster in the default configuration. See the `values.yaml` for the possible values to be overriden.
