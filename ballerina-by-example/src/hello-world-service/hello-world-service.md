# Hello World Service

Services represent collections of network accessible entry points in Ballerina. 
Resources represent one such entry point. 

Exactly how the resource is exposed over a network protocol is dependent on the server connector in use for the service as well as on annotations that are given for the specific resource.

{{#playpen hello-world-service.bal}}

To start the service, put the code in "hello-world-service.bal" and use "ballerina run" command.

```bash
$ ballerina run hello-world-service.bal
ballerina: deploying service(s) in 'hello-world-service.bal'
ballerina: started HTTP/WS server connector 0.0.0.0:9090
```
To build a compiled program file, we can use the "ballerina build" command followed by the service package.

```bash
$ ballerina build hello-world-service.bal
$ ls
hello-world-service.balx	hello-world-service.bal
```
Invoke the service using "curl".

```bash
$ curl http://localhost:9090/helloWorld/sayHello
Hello, World!
```