# Fork/Join Variable Access

Workers within fork-join can access any variables which are declared within the scope of that statement.
Value type variables are passed into these workers as a copy of the original data.
Reference type variables are passed into these workers as a reference to the original data.
Join block receives a map of any type array which contains the data sent from the respective workers.

{{#playpen fork-join-variable-access.bal}}

{{#playpen fork-join-variable-access.sh}}