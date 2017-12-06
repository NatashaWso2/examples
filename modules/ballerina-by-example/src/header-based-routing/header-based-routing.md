# Header Based Routing

The Header-Based Router service reads a particular Header of a request and routes it to a specific recipient based on the Header value.

{{#playpen header-based-routing.bal}}

```bash
$ ballerina run header-based-routing.bal
ballerina: deploying service(s) in 'header-based-routing.bal'
ballerina: started HTTP/WS server connector 0.0.0.0:9090
```

```bash
$ curl -v http://localhost:9090/hbr/route -H "type:location"
{
    "name": "Colombo,Sri Lanka",
    "longitude": -556.49,
    "latitude": 257.76,
    "altitude": 230,
}
```

```bash
$ curl -v http://localhost:9090/hbr/route -H "type:weather"
{"coord":{"lon":139.01,"lat":35.02},"weather":[{"id":800,
"main":"Clear","description":"clear sky","icon":"01n"}],
"base":"station","main":{"temp":25.51,"clouds":{"all":0},
"wind":{"speed":5.52,"deg":311},"dt":148579296788555885,
"id":1907296,"name":"Tawarano","cod":200}}
```