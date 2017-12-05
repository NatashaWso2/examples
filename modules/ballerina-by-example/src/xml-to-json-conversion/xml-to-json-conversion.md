# XML To JSON Conversion

XML to JSON conversion can be done using 'toJSON' function. This function takes the XML to be converted and struct of options as arguments. 
The options struct has two fields, attributePrefix which is the prefix to add to the key, to identify a XML attribute and namespaces where default value is '@'. And preserveNamespaces to indicate whether to preserve namespace prefixes when converting or not.

{{#playpen xml-to-json-conversion.bal}}

```bash
$ ballerina run xml-to-json-conversion.bal
{"h:Store":{"@xmlns:h":"http://www.test.com","@id":"AST","h:name":"Anne",
"h:address":{"h:street":"Main","h:city":"94"},"h:code":{"h:item":["4","8"]}}}
{"Store":{"#id":"AST","name":"Anne","address":{"street":"Main","city":"94"},
"code":{"item":["4","8"]}}}
```