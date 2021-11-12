## Getting Started

NOTE: This chart is opinionated for experimental project; with a pre-determined network toplogy. It is unlikely to use for general purpose.

Notice that
- it is installed via ArgoCD app-of-app, not Helm install.
- In the Explorer UI, the /network is empty. I guess: the explorer is point to peer1. It has no access to external Hyperledger nodes.
- Use `replicaSet` to enable / disable it.

```shell
# values.yaml
replicaCount: 0
```

### Pick Namespace

```shell
export NS=bochk
```

### Admin User
- Each new deployment will register a new user in enrollment CA in the same organization. The username is POD_ID
- The password is service-account-token `explorer-login-token`

```shell
# retrieve admin user's ID, replace the app name "explorer-$NS" and $NS with your namespace
kubectl -n $NS get pod -l "app=explorer" --no-headers=true -o=custom-columns=LABELS:.metadata.name

# retrieve password, replace n1 with your namepace
kubectl -n $NS get secret $(kubectl -n $NS get secret | grep explorer-login-token | head -n1 | awk '{print $1;}') -o jsonpath={.data.token}| base64 -d
```

### Port Forward

```shell
# replace n1 with your namepace
kubectl -n $NS port-forward $(kubectl -n $NS get pod -l "app=explorer" --no-headers=true -o=custom-columns=LABELS:.metadata.name) 18080:8080
```

Then, open browser with `http://localhost:18080`

### Values
```yaml
# same as namespace
orgname: bochk

# must be the same MspId as peer being connected
mspid: BochkMSP

# Any names, used only for showing in Hyperledger Explorer UI
network_name: cdi_testnet

# Must be channel name
channel_name: cdi-testnet

# fqdn: used by Istio gateway
# currently, external istio gateway is not well-tested. Reserved for future use
fqdn: explorer-org1.cdi.testnet

# Same as DATABASE_USERNAME of explorer-db
database_username: xxx

#Same as DATABASE_PASSWD of explorer-db
database_passwd: xxx

# info | debug
log_level_app: info
log_level_db: info
log_level_console: info
```

### Additional info
- [wiki](https://wiki.hyperledger.org/display/explorer)
- [config](https://github.com/hyperledger/blockchain-explorer/blob/main/README-CONFIG.md)
