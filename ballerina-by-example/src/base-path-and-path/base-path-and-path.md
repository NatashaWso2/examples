# Base Path and Path

Ballerina support writing RESTFul services according to JAX-RS specification. 
BasePath, Path and HTTP verb annotations such as POST, GET, etc can be used to constrain your service in RESTful manner.

{{#playpen base-path-and-path.bal}}

```bash
$ ballerina run base-path-and-path.bal
ballerina: deploying service(s) in '.../base-path-and-path.bal'
ballerina: started HTTP/WS server connector 0.0.0.0:9090
```

```bash
$ curl http://localhost:9090/foo/bar -d "{\"hello\": \"world\"}" -H 
"Content-Type: application/json"
{"hello": "world"}
```