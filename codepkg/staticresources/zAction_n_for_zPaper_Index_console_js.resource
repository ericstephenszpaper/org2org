<!--
// Name: Upload button for zPaper:Index console
// Committer: Eric Stephens:eric.stephens@zpaper.com
// Update: ERS170626 TODO does this need to be done via a Validation rule once that can be exported?
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2017-06-26 14:25:23","active":false,"button":"Upload","name":"Upload button for zPaper:Index console","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Upload","operation":"contains"}]},"consequence":{"doit":"YWxlcnQoIlNob3VsZCBub3QgYmUgY2FsbGVkIGJ1dCB0cmlja3MgdGhlIENvbnNvbGUgaW50byBkaXNwbGF5aW5nIHRoZSBVcGxvYWQgYnV0dG9uIik7Ci8vRVJTMTcwNjI2IFRPRE8gZG9lcyB0aGlzIG5lZWQgdG8gYmUgZG9uZSB2aWEgYSBWYWxpZGF0aW9uIHJ1bGUgb25jZSB0aGF0IGNhbiBiZSBleHBvcnRlZD8="},"ordinal":17}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("Should not be called but tricks the Console into displaying the Upload button");
//ERS170626 TODO does this need to be done via a Validation rule once that can be exported?
//--- RULE CONSEQUENCE CODE - END ---

</script>
