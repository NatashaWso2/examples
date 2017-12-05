# HTTPS Server/Client Connectors

This example demonstrates how ballerina https client connector can be configured to connect to a https server through 1-way ssl connection (server is verified by the client). This example uses ballerina https server connector to host a service and https client connector will be sending requests for that server.

{{#playpen https-server-client-connectors.bal}}

```bash
#Run the service
$ ballerina run https-server-client-connectors.bal -s
ballerina: deploying service(s) in 'https-server-client-connectors.bal'
ballerina: started HTTPS/WSS server connector http-9095

#Run the main function containing ballerina client
$ ballerina run https-server-client-connectors.bal
Response code: 200
Response: Successful
```