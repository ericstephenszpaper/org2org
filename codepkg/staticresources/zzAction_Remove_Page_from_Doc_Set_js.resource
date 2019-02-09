<!--
// Name: Remove Page from Doc Set
// Committer: judson.bruno@zpaper.com
// Update: JPB181210 added so we can use 18 54338; JPB181210 added doc 54338
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2018-12-10 22:31:17","active":true,"button":"","name":"Remove Page from Doc Set","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"REMOVE_PAGE","operation":"equals"}]},"consequence":{"doit":"dmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsICIiKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCnZhciBzZklEID0gZG9jLnNmSUQgKyAiIjsKaWYgKHNmSUQubGVuZ3RoID4gMTUpIHsKICBzZklEID0gc2ZJRC5zdWJzdHJpbmcoMCwgMTUpOyAvL0pQQjE4MTIxMCBhZGRlZCBzbyB3ZSBjYW4gdXNlIDE4IDU0MzM4Cn0KYWxlcnQoIkBAQEBAIHNmSUQgPSAiICsgc2ZJRCk7CnZhciBhdHRhY2hlZFRvID0gWChkb2MsICJYX2F0dGFjaGVkVG8iKTsKYWxlcnQoIkBAQEBAIGF0dGFjaGVkVG8gPSAiICsgYXR0YWNoZWRUbyk7CgphdHRhY2hlZFRvID0gYXR0YWNoZWRUby5yZXBsYWNlKHNmSUQsICIiKS5yZXBsYWNlKCIsLCIsICIsIik7CmFsZXJ0KCJAQEBAIG5ldyBhdHRhY2hlZFRvID0gIiArIGF0dGFjaGVkVG8pOwoKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLCBhdHRhY2hlZFRvKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQofkRvY3VtZW50IHN1Y2Nlc3NmdWxseSByZW1vdmVkIGZyb20gU2V0LiBQbGVhc2UgcmVmcmVzaCB0aGUgcGFnZX4pOy4iKTsgLy9KUEIxODEyMTAgYWRkZWQgZG9jIDU0MzM4Cg=="},"ordinal":5}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);

var sfID = doc.sfID + "";
if (sfID.length > 15) {
  sfID = sfID.substring(0, 15); //JPB181210 added so we can use 18 54338
}
alert("@@@@@ sfID = " + sfID);
var attachedTo = X(doc, "X_attachedTo");
alert("@@@@@ attachedTo = " + attachedTo);

attachedTo = attachedTo.replace(sfID, "").replace(",,", ",");
alert("@@@@ new attachedTo = " + attachedTo);

var arrOfPairs = [];
arrOfPairs.push("X_attachedTo", attachedTo);
updateDB(doc, arrOfPairs);

addPostExecutionScript(doc, "alert(~Document successfully removed from Set. Please refresh the page~);."); //JPB181210 added doc 54338

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
