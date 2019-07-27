<!--
// Name: Markup Handler
// Committer: eric.stephens@zpaper.com
// Update: refactor
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-06-17 22:36:55","active":true,"button":"","name":"Markup Handler","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"MARKUP_COMPLETE","operation":"equals"}]},"consequence":{"doit":"YWxlcnQgKCJIYW5kbGluZyBNQVJLVVBfQ09NUExFVEUiKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwphbGVydCgiTUFSS1VQX0NPTVBMRVRFIERvbmUiKTs="},"ordinal":24}

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
