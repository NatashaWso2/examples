# Transform JSON

Transformers are used to convert a variable of one type to another. This sample is about defining and using a custom transformer to convert struct variable to an output 'json' variable which is constraint by a struct type.

{{#playpen transform-json.bal}}

```bash
$ ballerina run transform-json.bal
{"name":"Ann","age":30,"city":"London"}
```