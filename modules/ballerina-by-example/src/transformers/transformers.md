# Transformers

Transformers are used to convert a variable of one type to another. Additional arguments can also be passed to a transformer for the conversion. 
The transformer can be defined as a high level construct, and can be used within any expression using the type conversion syntax.

{{#playpen transformers.bal}}

```bash
$ ballerina run transformers.bal
{name:"john", age:30, address:"london"}
{name:"john", age:32, address:"LONDON"}
{name:"john", age:30, address:"london, UK"}
```