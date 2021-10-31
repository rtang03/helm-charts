### Admin User
- Each new deployment will register a user in enrollment CA in the same organization. The username is POD_ID
- The password is Service Account Token

```shell
# retrieve admin user's ID, replace the app name "explorer-org1" and n1 with your namespace
kubectl -n n1 get pod -l 'app.hkicl/name=explorer-org1' --no-headers=true -o=custom-columns=LABELS:.metadata.name

# retrieve password, replace n1 with your namepace
kubectl -n n1 get secret $(kubectl -n n1 get secret | grep explorer-login-token | head -n1 | awk '{print $1;}') -o jsonpath={.data.token}| base64 -d
```

### Port Forward

```shell
# replace n1 with your namepace
kubectl -n n1 port-forward $(kubectl -n n1 get pod -l 'app.hkicl/name=explorer-org1' --no-headers=true -o=custom-columns=LABELS:.metadata.name) 18080:8080
```

Then, open browser with `http://localhost:18080`

### Values
```yaml
# Fixed
appname: explorer

orgname: org1

namespace: n1

mspid: Org1MSP

# Any names, used only for showing in Hyperledger Explorer UI
network_name: cdi_testnet

# Must be channel name
channel_name: cdi-testnet

# FQDN
peer_url: grpcs://peer0-org1.cdi.testnet:7051

# internal name
ca_url: https://enrollment-ca-org1:7054

# fqdn: used by Istio gateway
# currently, external istio gateway is not well-tested. Reserved for future use
fqdn: explorer-org1.cdi.testnet

# Same as DATABASE_USERNAME of explorer-db
database_username: hppoc

#Same as DATABASE_PASSWD of explorer-db
database_passwd: password

# info | debug
log_level_app: info
log_level_db: info
log_level_console: info
```

### Additional info
- [wiki](https://wiki.hyperledger.org/display/explorer)
- [config](https://github.com/hyperledger/blockchain-explorer/blob/main/README-CONFIG.md)
- [wait-for-it](https://github.com/vishnubob/wait-for-it)
- [pgbouncer-offiical](https://www.pgbouncer.org/config.html)
- [pgbouncer-docker](https://github.com/edoburu/docker-pgbouncer)
