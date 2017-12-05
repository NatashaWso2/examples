# JSON/Struct/Map Conversion

We use Ballerina structs, maps and JSON objects to hold records, where records are collections of fields with each field value accessed by a key.
Converting from one type to another is very useful in certain situations.

{{#playpen json-struct-map-conversion.bal}}

```bash
$ ballerina run json-struct-map-conversion.bal
{"title":"The Revenant","year":"2015","released":"08 Jan 2016",
    "writer":{"fname":"Michael","lname":"Punke","age":30}}
Punke
30
{"title":"Inception","year":"2010","released":"16 Jul 2010",
    "writer":{"fname":"Christopher","lname":"Nolan","age":30}}
```