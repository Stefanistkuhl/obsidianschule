---
id: File IO Things
aliases: []
tags:
  - 3te_Klasse
  - sew
---
1. Stream Buffer File read/Write in Cheatsheet
#### Was sind Kodierungsarten (UTF 8, etc) & wieso verwendet man sie?

A way to standartdise characters so a computer can understand them.
There are differnt systems like ACII and Unicode.
The encoding provides an easy way to display characters in binary so they can be interpreted.
Diffrent Standards include different sets of characters.

#### Was ist XML?e Wie funktioniert es? Geben Sie ein Beispiel an

E**X**tensible **M**arkup **L**anguage

Designed to be Human and Maschine redable
Designed to store and Transport Data

Example:
```xml
<?xml version="1.0" encoding="UTF-8"?>  
<note>  
  <to>Some receiver</to>
  <from>Some sender</from>  
  <heading>some title</heading>  
  <body>Epic example taken form 3 schools</body>  
</note>
```

#### Was ist JSON? Wie funktioniert es? + Beispiel

**J**ava**S**cript**O**bject**N**otation

Lightweight format formast for storing and transporting data
Often used to send data from a server to a web page


Data is in name/value pairs
Data is separated by commas
Curly braces hold objects
Square brackets hold arrays

```{
"employees":[
    {"firstName":"John", "lastName":"Doe"},
    {"firstName":"Anna", "lastName":"Smith"},
    {"firstName":"Peter", "lastName":"Jones"}
]
}json
```
