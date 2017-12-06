# HTTPS Server Connector

The HTTP Server Connector can be used to connect to and interact with a HTTP client. Https configurations can be given to server connector to expose a https connection.

{{#playpen https-server-connector.bal}}

```bash
#Run the service
$ ballerina run https-server-connector.bal
ballerina: deploying service(s) in 'https-server-connector.bal'
ballerina: started HTTPS/WSS server connector http-9095
```

```bash
#For the demonstration purpose curl -k command will be used to invoke the service.
$ curl -k https://localhost:9095/hello
Response: Successful
```