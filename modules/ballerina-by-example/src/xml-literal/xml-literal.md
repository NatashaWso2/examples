# XML Literal

Ballerina allows to define XML as part of the language, and syntactically validate. Can interpolate the XML literal with expressions to pass values dynamically during runtime.

{{#playpen xml-literal.bal}}

```bash
$ ballerina run xml-literal.bal
<book>
                    <name>Sherlock Holmes</name>
                    <author>Sir Arthur Conan Doyle</author>
                    <!--Price: $10-->
                  </book>
<book xmlns="http://ballerina.com/" xmlns:ns0="http://ballerina.com/aa" 
    ns0:status="available">
                    <ns0:name>Sherlock Holmes</ns0:name>
                    <author>Sir Arthur Conan Doyle</author>
                    <!--Price: $10-->
                  </book>
<ns0:newBook xmlns:ns0="http://ballerina.com/aa" xmlns="http://ballerina.com/">
                    <name>Sherlock Holmes</name>
                    <author>(Sir) Arthur Conan Doyle</author>
                    <!--Price: $ 12-->
                  </ns0:newBook>

```