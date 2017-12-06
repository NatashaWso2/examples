# WebSocket Proxy Server

This example explains how ballerina can act as a simple WebSocket proxy server.
When new client is connected to the WebSocket endpoint, onHandshake new WebSocket client connection is created and stored in a map.

When the endpoint client sends a message, get the client connection for remote server from the map and send the same message to remote server.
That server will echo it back and it will be received to "ClientService" which will print the echoed message.
Then by the client connection from "onTextMessage" resource in "ClientService", get the parent connection and send it.

{{#playpen websocket-proxy-server.bal}}

```bash
# To run the program, put the code in `websocket-client-connector.bal`
# and use `ballerina run websocket-client-connector` command.
$ ballerina run websocket-proxy-server.bal
# Now that we can run this program using any WebSocket client with 
# "ws://localhost:9090/proxy/ws"

# To check the sample, you can use Chrome or Firefox javascript console 
# and run the below commands <br>
$ var ws = new WebSocket("ws://localhost:9090/proxy/ws");
$ ws.onmessage = function(frame) {console.log(frame.data)};
$ ws.onclose = function(frame) {console.log(frame)};

# To send messages
$ ws.send("hello world");

#To close the connection
$ ws.close(1000, "I want to go");
```