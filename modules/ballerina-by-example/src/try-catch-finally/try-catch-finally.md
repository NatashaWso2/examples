# Try/Catch/Finally

Throwing an error generally means an unexpected error has happend, and the code that handles the thrown error is not expected to be able to do much to recover from it, rather than perhaps catch and log it.

Throwing errors will be very rare and will happen under exceptional circumstances such as server going out of memory, running out of disk space.

{{#playpen try-catch-finally.bal}}

{{#playpen try-catch-finally.sh}}