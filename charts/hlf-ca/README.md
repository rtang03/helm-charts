# About

Hyperledger Fabric CA

NOTE: This chart is opinionated for custom project; with a pre-determined network toplogy. It is unlikely to use for general purpose.

Below cli are not tested. Need verifiy again.

```bash
# Password is "SAMPLE_PW_ONLY"
# Below cli is NOT test. May require to change to 'helm secret install'
helm install --set tlsca.adminpw=[SAMPLE_PW_ONLY] tls hlf-ca

# Subsequent Upgrade
helm secrets upgrade -n [ORGNAME] -f path-to/secrets.yaml -f path-to/values-tls.yaml tls hlf/hlf-ca
```

E.g. 2. To install the chart with the name `enrollment-ca-org0`:

```bash
# Password is "SAMPLE_PW_ONLY"
helm install --set enrollmentca.adminpw=[SAMPLE_PW_ONLY] enr hlf-ca
```

E.g. 3. To install the chart with the name `enrollment-ca-org1` and `with istio enabled`:

> Remember to configure the DNS

```bash
# Password is "SAMPLE_PW_ONLY"
helm install --set enrollmentca.adminpw=[SAMPLE_PW_ONLY] enr hlf-ca

# Subsequent Upgrade
helm secrets upgrade -n [ORGNAME] -f path-to/secrets.yaml -f path-to/values-enr.yaml enr hlf/hlf-ca
```

