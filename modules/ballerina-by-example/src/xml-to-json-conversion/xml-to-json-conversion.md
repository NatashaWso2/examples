# XML To JSON Conversion

XML to JSON conversion can be done using 'toJSON' function. This function takes the XML to be converted and struct of options as arguments. 
The options struct has two fields, attributePrefix which is the prefix to add to the key, to identify a XML attribute and namespaces where default value is '@'. And preserveNamespaces to indicate whether to preserve namespace prefixes when converting or not.

{{#playpen xml-to-json-conversion.bal}}

{{#playpen xml-to-json-conversion.sh}}