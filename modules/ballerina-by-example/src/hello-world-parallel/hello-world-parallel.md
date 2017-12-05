# Hello World Parallel

Let's print "Hello, World!" in parallel using Ballerina. Here we use workers which represent parallel threads of execution in Ballerina.

{{#playpen hello-world-parallel.bal}}

To run the program, put the code in "hello-world-parallel.bal" and use "ballerina run" command.

```bash
$ ballerina run hello-world-parallel.bal
Hello, World! #m
Hello, World! #k
Hello, World! #n
```