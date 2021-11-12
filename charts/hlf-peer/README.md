# About

Hyperledger Fabric Peer

NOTE: This chart is opinionated for custom project; with a pre-determined network toplogy. It is unlikely to use for general purpose.

Kubernetes secrets must be created in `n1` using [cryptoprep](../workflow/cryptoprep/README.md) before hand.

## Installing the Chart

To install the chart with the name `peer0-org1`:

```bash
helm install -n [NAMESPACE] -f hlf/hlf-peer/test/values-p0.yaml p0 hlf/hlf-peer
```
