# Mutual SSL

Ballerina supports mutual ssl which is a certificate based authentication where two parties (client and server) authenticate each other by verifying digital certificates. So in simple terms both parties are assured of other's identity.

{{#playpen mutual-ssl.bal}}

```bash
#Run the service
$ ballerina run mutual-ssl.bal -s
ballerina: deploying service(s) in 'mutual-ssl.bal'
ballerina: started HTTPS/WSS server connector http-9095

#Run the main function containing ballerina client
$ ballerina run mutual-ssl.bal
Response code: 200
Response: Successful
```