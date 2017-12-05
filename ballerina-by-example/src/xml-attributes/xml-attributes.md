# XML Attributes

XML elements may have any number of attributes and any number of namespace declarations that apply for that element. In Ballerina both of these types are treated in the same way. Attributes are accessed from an XML sequence using the "@" postfix operator.

{{#playpen xml-attributes.bal}}

```bash
$ ballerina run xml-attributes.bal
<ns0:book xmlns:ns0="http://ballerina.com/aa" ns0:status="available" count="5">
</ns0:book>
available
available
5
5
Not Available
{"{http://www.w3.org/2000/xmlns/}ns0":"http://ballerina.com/aa",
"{http://ballerina.com/aa}status":"Not Available","count":"5"}
{"{http://www.w3.org/2000/xmlns/}ns0":"http://ballerina.com/aa",
"{http://ballerina.com/aa}status":"Not Available","count":"5"}
5
```