# Throw

In Ballerina, throwing an error means, something unexpected has happened that shouldn’t occur during the normal operation. A thrown error causes the call stack to be unwound until a matching catcher is found.

Ballerina encourages developers, NOT to use 'throw' for handling program related errors (i.e header not found, Data mismatched error etc), but in an error situation where it couldn't handle the error by itself, like accessing a Null Reference, Connection Closed/TimeOut and OutOfMemory etc.

{{#playpen throw.bal}}

{{#playpen throw.sh}}