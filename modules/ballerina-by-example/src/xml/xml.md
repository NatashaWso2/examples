# XML

The XML type in Ballerina represents a sequence of zero or more XML items. Each item can be an element, a text, a comment or a processing instruction.

{{#playpen xml.bal}}

```bash
$ ballerina run xml.bal
<book>The Lost World</book>
Hello, world!
<!--I am a comment-->
<?target data?>

Resulting XML sequence:
<book>The Lost World</book>Hello, world!<!--I am a comment--><?target data?>
```