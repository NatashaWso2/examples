# Content Based Routing

The Content-Based Router service reads the content of a request and routes it to a specific recipient based on its content.

{{#playpen content-based-routing.bal}}

```bash
$ ballerina run content-based-routing.bal
ballerina: deploying service(s) in 'content-based-routing.bal'
ballerina: started HTTP/WS server connector 0.0.0.0:9090
```

```bash
$ curl -v http://localhost:9090/cbr/route -d '{"name" : "sanFrancisco"}'
{
    "name": "San Francisco Test Station,USA",
    "longitude": -122.43,
    "latitude": 37.76,
    "altitude": 150,
    "rank": 1
}

$ curl -v http://localhost:9090/cbr/route -d '{"name" : "london"}'
{
    "name": "London Test Station,England",
    "longitude": -156.49,
    "latitude": 57.76,
    "altitude": 430,
    "rank": 5
}
```