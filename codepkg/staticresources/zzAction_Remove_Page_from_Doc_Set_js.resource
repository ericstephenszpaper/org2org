<!--
// Name: Remove Page from Doc Set
// Committer: judson.bruno@zpaper.com
// Update: JPB190428 updated rule for Sales Demo Org
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-28 14:16:09","active":true,"button":"","name":"Remove Page from Doc Set","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"REMOVE_PAGE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKdmFyIHNmSUQgPSBkb2Muc2ZJRCArICIiOwppZiAoc2ZJRC5sZW5ndGggPiAxNSkgewogIHNmSUQgPSBzZklELnN1YnN0cmluZygwLCAxNSk7IAp9CmFsZXJ0KCJAQEBAQCBzZklEID0gIiArIHNmSUQpOwp2YXIgYXR0YWNoZWRUbyA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CmFsZXJ0KCJAQEBAQCBhdHRhY2hlZFRvID0gIiArIGF0dGFjaGVkVG8pOwoKYXR0YWNoZWRUbyA9IGF0dGFjaGVkVG8ucmVwbGFjZShzZklELCAiIikucmVwbGFjZSgiLCwiLCAiLCIpOwphbGVydCgiQEBAQCBuZXcgYXR0YWNoZWRUbyA9ICIgKyBhdHRhY2hlZFRvKTsKCnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgYXR0YWNoZWRUbyk7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgImFsZXJ0KH5Eb2N1bWVudCBzdWNjZXNzZnVsbHkgcmVtb3ZlZCBmcm9tIFNldC4gUGxlYXNlIHJlZnJlc2ggdGhlIHBhZ2V+KTsuIik7IAo="},"ordinal":6}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated rule for Sales Demo Org
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);

var sfID = doc.sfID + "";
if (sfID.length > 15) {
  sfID = sfID.substring(0, 15); 
}
alert("@@@@@ sfID = " + sfID);
var attachedTo = X(doc, "X_attachedTo");
alert("@@@@@ attachedTo = " + attachedTo);

attachedTo = attachedTo.replace(sfID, "").replace(",,", ",");
alert("@@@@ new attachedTo = " + attachedTo);

var arrOfPairs = [];
arrOfPairs.push("X_attachedTo", attachedTo);
updateDB(doc, arrOfPairs);

addPostExecutionScript(doc, "alert(~Document successfully removed from Set. Please refresh the page~);."); 

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
