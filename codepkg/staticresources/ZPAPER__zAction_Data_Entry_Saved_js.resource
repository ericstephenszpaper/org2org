<!--
// Name: Data Entry Saved
// Committer: Eric Stephens:eric.stephens@zpaper.com
// Update: create a static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2017-07-31 21:00:29","active":true,"button":"","name":"Data Entry Saved","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DEPANEL_COMPLETE","operation":"equals"}]},"consequence":{"doit":"YXJyT2ZQYWlycyA9IFtdOwovKiBDbGVhciBydWxlIHRlc3QgZmllbGQgdGhhdCBnb3QgdXMgaGVyZSAqLwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwovKiBFTkQgKi8KICAgIA=="},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
arrOfPairs = [];
/* Clear rule test field that got us here */
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);
/* END */
    
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
