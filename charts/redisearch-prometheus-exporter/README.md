# About

Export `FT.INFO` from Redisearch to Prometheus.

In the values file, you must specfiy which Redisearch to export, with `redisearchExporterStaticIndex`. At minimum,
`cidx` is required. Additional index is added, with comma-separator.

```yaml
# minimum 
# redisearchExporterStaticIndex: "cidx"

# full example
redisearchExporterStaticIndex: "cidx,eidx:Consent,eidx:user,eidx:participantDs,eidx:DataRequest,eidx:organization"
```
