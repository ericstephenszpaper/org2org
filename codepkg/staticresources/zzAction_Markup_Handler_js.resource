<!--
// Name: Markup Handler
// Committer: andrew@zpaper.com
// Update: static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-05 17:47:06","active":true,"button":"","name":"Markup Handler","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"MARKUP_COMPLETE","operation":"equals"}]},"consequence":{"doit":"YWxlcnQgKCJIYW5kbGluZyBNQVJLVVBfQ09NUExFVEUiKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwphbGVydCgiTUFSS1VQX0NPTVBMRVRFIERvbmUiKTs="},"ordinal":5}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert ("Handling MARKUP_COMPLETE");
var arrOfPairs = [];
arrOfPairs.push("X_butonAction", "");
updateDB(doc, arrOfPairs);
alert("MARKUP_COMPLETE Done");
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
