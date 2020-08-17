<!--
// Name: Delete Document
// Committer: cory.newey@zpaper.com
// Update: CRN200717 Make sure we remove all sfIDs that match (if it was attached multiple times, remove all instances).; CRN200717 If there are no sfIDs left, just get rid of the X_attachedTo field.
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-07-17 17:29:29","active":true,"button":"","name":"Delete Document","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELETE_DOC","operation":"equals"}]},"consequence":{"doit":"Ly9ydWxlIGlzIHNwZWNpZmljIHRvIGFuIEFjY291bnQuIG5lZWRzIHRvIGJlIG1hZGUgZ2VuZXJpYwovL1BWMjAwNjIzIGFkZGVkIHRoaXMgcnVsZSB0byBkZWxldGUgdGhlIGRvY3VtZW50IGZyb20gRG9jU2V0IGNvbXBvbmVudAp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKdmFyIHNmSUQgPSBkb2Muc2ZJRCArICIiOwppZihzZklELmxlbmd0aD4xNSl7CglzZklEPXNmSUQuc3Vic3RyaW5nKDAsMTUpOwp9CmFsZXJ0KCJAQEBAQCBzZklEID0gIiArIHNmSUQpOwp2YXIgYXR0YWNoZWRUbyA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CmFsZXJ0KCJAQEBAQCBhdHRhY2hlZFRvID0gIiArIGF0dGFjaGVkVG8pOwovL0NSTjIwMDcxNyBNYWtlIHN1cmUgd2UgcmVtb3ZlIGFsbCBzZklEcyB0aGF0IG1hdGNoIChpZiBpdCB3YXMgYXR0YWNoZWQgbXVsdGlwbGUgdGltZXMsIHJlbW92ZSBhbGwgaW5zdGFuY2VzKS4KdmFyIHJlZ2V4ID0gbmV3IFJlZ0V4cChzZklELCAiZyIpOwphdHRhY2hlZFRvID0gYXR0YWNoZWRUby5yZXBsYWNlKHJlZ2V4LCAiIikucmVwbGFjZSgvW0EtWl17M30sL2csICIiKS5yZXBsYWNlKCIvLCwvZyIsICIsIik7Ci8vQ1JOMjAwNzE3IElmIHRoZXJlIGFyZSBubyBzZklEcyBsZWZ0LCBqdXN0IGdldCByaWQgb2YgdGhlIFhfYXR0YWNoZWRUbyBmaWVsZC4KaWYgKGF0dGFjaGVkVG8ubWF0Y2goL15odHRwLipcLyQvKSB8fCBhdHRhY2hlZFRvLm1hdGNoKC9eaHR0cC4qXC9bQS1aXXszfSQvKSkgeyAKCWFsZXJ0KCJAQEAgWF9hdHRhY2hlZCAoIiArIGF0dGFjaGVkVG8gKyAiKSBoYXMgbm90aGluZyBhdHRhY2hlZDsgcmVtb3ZpbmcgWF9hdHRhY2hlZFRvIik7CglhdHRhY2hlZFRvID0gIiI7Cn0KYWxlcnQoIkBAQEAgbmV3IGF0dGFjaGVkVG8gPSAiICsgYXR0YWNoZWRUbyk7Cgp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsIGF0dGFjaGVkVG8pOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdCgiYWxlcnQofkRvY3VtZW50IHN1Y2Nlc3NmdWxseSByZW1vdmVkIGZyb20gU2V0LiBQbGVhc2UgcmVmcmVzaCB0aGUgcGFnZX4pOy4iKTsK"},"ordinal":5}

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
//CRN200717 Make sure we remove all sfIDs that match (if it was attached multiple times, remove all instances).
var regex = new RegExp(sfID, "g");
attachedTo = attachedTo.replace(regex, "").replace(/[A-Z]{3},/g, "").replace("/,,/g", ",");
//CRN200717 If there are no sfIDs left, just get rid of the X_attachedTo field.
if (attachedTo.match(/^http.*\/$/) || attachedTo.match(/^http.*\/[A-Z]{3}$/)) { 
	alert("@@@ X_attached (" + attachedTo + ") has nothing attached; removing X_attachedTo");
	attachedTo = "";
}
alert("@@@@ new attachedTo = " + attachedTo);

var arrOfPairs = [];
arrOfPairs.push("X_attachedTo", attachedTo);
updateDB(doc, arrOfPairs);

addPostExecutionScript("alert(~Document successfully removed from Set. Please refresh the page~);.");

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
