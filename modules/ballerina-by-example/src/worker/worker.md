# Worker

Workers in ballerina allow developers to delegate their tasks to parallel running threads(workers).
Workers can be declared within functions, actions or resources. The logic written inside a worker block is executed in a parallel thread
to the default (main) thread.

Worker execution starts immediately after invoking the relevant function, action or resource which encloses the worker(s).

{{#playpen worker.bal}}

```bash
$ ballerina run worker.bal
[w1] iw: 200 kw: 5.44
```