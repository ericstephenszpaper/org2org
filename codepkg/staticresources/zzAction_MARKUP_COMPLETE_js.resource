<!--
// Name: MARKUP_COMPLETE
// Committer: judson.bruno@zpaper.com
// Update: JPB190428 updated for Sales Demo Org
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-28 14:14:33","active":true,"button":"","name":"MARKUP_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"MARKUP_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBmb3IgU2FsZXMgRGVtbyBPcmcKdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIG9sZFJldmlld3MgPSBYKGRvYywgIlhfcmV2aWV3cyIpOwppZiAoIW9sZFJldmlld3MpIHsgb2xkUmV2aWV3cyA9ICIiOyB9Ci8vdmFyIGJhPSJTaWduZWQiOwp2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKYWxlcnQoIiQkJCBub3cwID0gIiArIG5vdzAgKyAiLCBiYSA9ICIgKyBiYSk7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIG9sZFJldmlld3MgKyBiYSsiIGJ5IGFnZW50IGF0ICIrbm93MCsiPGJyLz4iKTsKYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKYWxlcnQoYXJyT2ZQYWlycyk7CmFsZXJ0KCJAQEAgY2FsbGluZyB1cGRhdGVEQiB3aXRoIHBhcmFtczogQEBAQEBAQEBAQEBAIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7Cg=="},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated for Sales Demo Org
var arrOfPairs = [];
var oldReviews = X(doc, "X_reviews");
if (!oldReviews) { oldReviews = ""; }
//var ba="Signed";
var now0 = getCurDateAndTime(doc,false,true);
alert("$$$ now0 = " + now0 + ", ba = " + ba);
arrOfPairs.push("X_reviewedStatus",ba);
arrOfPairs.push("X_reviews", oldReviews + ba+" by agent at "+now0+"<br/>");
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
alert(arrOfPairs);
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
updateDB(doc, arrOfPairs);

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
