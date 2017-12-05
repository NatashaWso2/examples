# Fork/Join

A fork statement allows one to start any number of parallel workers at once.
The join part of the fork statement allows one to define how the caller of fork will wait for the parallel workers to complete.

{{#playpen fork-join.bal}}

```bash
$ ballerina run fork-join.bal
[w1] i: 23 s: Colombo
[w2] f: 10.344
[join-block] iW1: 23 sW1: Colombo
[join-block] fW2: 10.344
```