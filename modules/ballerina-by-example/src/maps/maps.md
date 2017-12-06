# Maps

The 'map' type is a hash map with keys of type string to values of 'any' type.

{{#playpen maps.bal}}

```bash
$ ballerina run maps.bal
{"line1":"No. 20", "line2":"Palm Grove", "city":"Colombo 03", "country":"Sri Lanka"}
Sri Lanka
Colombo 03
{"line1":"No. 20", "line2":"Palm Grove", "city":"Colombo 03", "country":"Sri Lanka",
    "postalCode":"00301"}
["country", "city", "postalCode", "line2", "line1"]
5
{"line1":"No. 20", "line2":"Palm Grove", "city":"Colombo 03", "country":"Sri Lanka"}
```