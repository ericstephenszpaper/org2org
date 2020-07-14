<!--
// Name: Delete Document
// Committer: Prathyusha.vasireddy@zpaper.comPrathyusha.vasireddy@zpaper.com
// Update: PV200623 added this rule to delete the document from DocSet component
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-06-23 22:31:43","active":false,"button":"","name":"Delete Document","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELETE_DOC","operation":"equals"}]},"consequence":{"doit":"Ly9ydWxlIGlzIHNwZWNpZmljIHRvIGFuIEFjY291bnQuIG5lZWRzIHRvIGJlIG1hZGUgZ2VuZXJpYwovL1BWMjAwNjIzIGFkZGVkIHRoaXMgcnVsZSB0byBkZWxldGUgdGhlIGRvY3VtZW50IGZyb20gRG9jU2V0IGNvbXBvbmVudAp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKdmFyIHNmSUQgPSBkb2Muc2ZJRCArICIiOwppZihzZklELmxlbmd0aD4xNSl7CglzZklEPXNmSUQuc3Vic3RyaW5nKDAsMTUpOwp9CmFsZXJ0KCJAQEBAQCBzZklEID0gIiArIHNmSUQpOwp2YXIgYXR0YWNoZWRUbyA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CmFsZXJ0KCJAQEBAQCBhdHRhY2hlZFRvID0gIiArIGF0dGFjaGVkVG8pOwphdHRhY2hlZFRvID0gYXR0YWNoZWRUby5yZXBsYWNlKHNmSUQsICIiKS5yZXBsYWNlKCIsLCIsICIsIik7CmFsZXJ0KCJAQEBAIG5ldyBhdHRhY2hlZFRvID0gIiArIGF0dGFjaGVkVG8pOwoKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLCBhdHRhY2hlZFRvKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoImFsZXJ0KH5Eb2N1bWVudCBzdWNjZXNzZnVsbHkgcmVtb3ZlZCBmcm9tIFNldC4gUGxlYXNlIHJlZnJlc2ggdGhlIHBhZ2V+KTsuIik7Cg=="},"ordinal":5}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//rule is specific to an Account. needs to be made generic
//PV200623 added this rule to delete the document from DocSet component
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);

var sfID = doc.sfID + "";
if(sfID.length>15){
	sfID=sfID.substring(0,15);
}
alert("@@@@@ sfID = " + sfID);
var attachedTo = X(doc, "X_attachedTo");
alert("@@@@@ attachedTo = " + attachedTo);
attachedTo = attachedTo.replace(sfID, "").replace(",,", ",");
alert("@@@@ new attachedTo = " + attachedTo);

var arrOfPairs = [];
arrOfPairs.push("X_attachedTo", attachedTo);
updateDB(doc, arrOfPairs);

addPostExecutionScript("alert(~Document successfully removed from Set. Please refresh the page~);.");

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
