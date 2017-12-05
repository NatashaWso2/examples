# Type Conversion

Type conversion transforms the value so that it can be interpreted as belonging to another type.
There are safe and unsafe conversions. For unsafe conversions, Ballerina compiler will enforce you to use multi-return conversion expression.

{{#playpen type-conversion.bal}}

```bash
$ ballerina run type-conversion.bal
10
error: 'string' cannot be converted to 'int'
5
1
true
true
```