<!--
// Name: Detach Document from Salesforce Record
// Committer: andrew@zpaper.com
// Update: static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-08 00:20:24","active":true,"button":"","name":"Detach Document from Salesforce Record","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELETE_DOC","operation":"equals"}]},"consequence":{"doit":"dmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsICIiKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCnZhciBzZklEID0gZG9jLnNmSUQgKyAiIjsKaWYoc2ZJRC5sZW5ndGg+MTUpewoJc2ZJRD1zZklELnN1YnN0cmluZygwLDE1KTsKfQphbGVydCgiQEBAQEAgc2ZJRCA9ICIgKyBzZklEKTsKYWxlcnQoIkBAQCBEZXRhY2ggRG9jIHRlc3QxMjMgPSIgKyBzZklEKTsKdmFyIGF0dGFjaGVkVG8gPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOwphbGVydCgiQEBAQEAgYXR0YWNoZWRUbyA9ICIgKyBhdHRhY2hlZFRvKTsKYXR0YWNoZWRUbyA9IGF0dGFjaGVkVG8ucmVwbGFjZShzZklELCAiIikucmVwbGFjZSgiLCwiLCAiLCIpOwphbGVydCgiQEBAQCBuZXcgYXR0YWNoZWRUbyA9ICIgKyBhdHRhY2hlZFRvKTsKCnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgYXR0YWNoZWRUbyk7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgJycpOwphbGVydCgiQEBAIHVwZGF0aW5nIG5ldyBjYXNlIHdpdGggOjogIiArIGFyck9mUGFpcnMpOwp1cGRhdGVTRlJlY29yZChkb2MsICJDYXNlIiwgc2ZJRCwgYXJyT2ZQYWlycyk7CgphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KCJhbGVydCh+RG9jdW1lbnQgc3VjY2Vzc2Z1bGx5IHJlbW92ZWQgZnJvbSBTZXQuIFBsZWFzZSByZWZyZXNoIHRoZSBwYWdlfik7LiIpOwo="},"ordinal":7}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);

var sfID = doc.sfID + "";
if(sfID.length>15){
	sfID=sfID.substring(0,15);
}
alert("@@@@@ sfID = " + sfID);
alert("@@@ Detach Doc test123 =" + sfID);
var attachedTo = X(doc, "X_attachedTo");
alert("@@@@@ attachedTo = " + attachedTo);
attachedTo = attachedTo.replace(sfID, "").replace(",,", ",");
alert("@@@@ new attachedTo = " + attachedTo);

var arrOfPairs = [];
arrOfPairs.push("X_attachedTo", attachedTo);
updateDB(doc, arrOfPairs);

arrOfPairs = [];
arrOfPairs.push("ZPAPER__receivedId__c", '');
alert("@@@ updating new case with :: " + arrOfPairs);
updateSFRecord(doc, "Case", sfID, arrOfPairs);

addPostExecutionScript("alert(~Document successfully removed from Set. Please refresh the page~);.");

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
