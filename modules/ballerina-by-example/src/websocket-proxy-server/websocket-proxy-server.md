# WebSocket Proxy Server

This example explains how ballerina can act as a simple WebSocket proxy server.
When new client is connected to the WebSocket endpoint, onHandshake new WebSocket client connection is created and stored in a map.

When the endpoint client sends a message, get the client connection for remote server from the map and send the same message to remote server.
That server will echo it back and it will be received to "ClientService" which will print the echoed message.
Then by the client connection from "onTextMessage" resource in "ClientService", get the parent connection and send it.

{{#playpen websocket-proxy-server.bal}}

{{#playpen websocket-proxy-server.sh}}
