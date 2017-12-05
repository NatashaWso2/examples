# Errors

Ballerina errors can both be returned as yet another return value or be thrown.
Any Ballerina error type should structurally equivalent to the ballerina.lang.errors:Error struct.

{{#playpen errors.bal}}

```bash
$ ballerina run errors.bal
error: Account with id:23 is not found
```