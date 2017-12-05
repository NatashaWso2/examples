# SQL Connector

Ballerina SQL Connector is used to access and manipulate data in the relational databases. 
This sample use MySQL DB and before running the sample copy the MySQL JDBC driver to the BALLERINA_HOME/bre/lib folder and change the DB connection properties as required.

{{#playpen sql-connector.bal}}

```bash
$ ballerina run sql-connector.bal
Table creation status:0
Stored proc creation status:0
Inserted row count:1
Inserted row count:1
Generated key:2
[{"ID":1,"AGE":8,"NAME":"Sam"},{"ID":2,"AGE":8,"NAME":"Sam"}]
Batch item 1 status:1
Batch item 2 status:1
Age 10 count:1
Id 1 count:1
Table drop status:0
Procedure drop status:0
```