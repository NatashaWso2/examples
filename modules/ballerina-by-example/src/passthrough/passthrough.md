# Passthrough

The passthrough sample exhibits the process of HTTP client connector. Echo Service is used as a sample backend.

{{#playpen passthrough.bal}}

```bash
$ ballerina run passthrough.bal
ballerina: deploying service(s) in 'passthrough.bal'
ballerina: started HTTP/WS server connector 0.0.0.0:9090
```

```bash
$ curl -v http://localhost:9090/passthrough -X POST
Resource is invoked
$ curl -v http://localhost:9090/passthrough -X GET
Resource is invoked
$ curl -v http://localhost:9090/passthrough -X PUT
Resource is invoked
```