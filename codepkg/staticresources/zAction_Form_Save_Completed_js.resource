<!--
// Name: Form Save Completed
// Committer: eric@zpaper.com
// Update: zAction update
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2017-09-10 21:40:51","active":true,"button":"FORM_COMPLETE","name":"Form Save Completed","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"FORM_COMPLETE","operation":"equals"}]},"consequence":{"doit":"YXJyT2ZQYWlycyA9IFtdOwovKiBDbGVhciBydWxlIHRlc3QgZmllbGQgdGhhdCBnb3QgdXMgaGVyZSAqLwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwovL0VSUzE3MDgwOSByaWdodCB0byB0aGUgc3RhdGljIHJlc291cmNl"},"ordinal":4}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
arrOfPairs = [];
/* Clear rule test field that got us here */
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);
//ERS170809 right to the static resource
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
