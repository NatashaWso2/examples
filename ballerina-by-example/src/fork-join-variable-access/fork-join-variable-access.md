# Fork/Join Variable Access

Workers within fork-join can access any variables which are declared within the scope of that statement.
Value type variables are passed into these workers as a copy of the original data.
Reference type variables are passed into these workers as a reference to the original data.
Join block receives a map of any type array which contains the data sent from the respective workers.

{{#playpen fork-join-variable-access.bal}}

```bash
$ ballerina run fork-join-variable-access.bal
[default worker] within join:
      Value of integer from W1 is [23]
[default worker] within join:
      Value of string from W1 is [Colombo]
[default worker] within join:
      Value of string from W2 [Ballerina]
[default worker] after fork-join:
      Value of integer variable is [100]
      Value of string variable is [WSO2]
[default worker] after fork-join:
      Value of name is [Rajasinghe]
      Value of era is [Kandy]

```