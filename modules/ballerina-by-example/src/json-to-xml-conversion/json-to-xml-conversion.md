# JSON To XML Conversion

JSON to XML conversion can be done using 'toXML' function. This function takes the JSON to be converted and struct of options as arguments. 
The options struct has two fields, attributePrefix which is used as the prefix to identify the XML attribute where default value is '@'. And arrayEntryTag as the
name of the tag to be added to each entry of JSON arrays.

{{#playpen json-to-xml-conversion.bal}}

```bash
$ ballerina run json-to-xml-conversion.bal
<Store id="AST"><name>Anne</name><address><street>Main</street><city>94</city>
</address><codes><item>4</item><item>8</item></codes></Store>
<Store id="AST"><name>Anne</name><address><street>Main</street><city>94</city>
</address><codes><wrapper>4</wrapper><wrapper>8</wrapper></codes></Store>
```