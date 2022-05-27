<!--
// Name: Detach
// Committer: eric.stephens@zpaper.com
// Update: //ERS210403 add to channel accelerator
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-03 16:53:09","active":false,"button":"Detach","name":"Detach","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DETACH_DOCUMENT","operation":"equals"}]},"consequence":{"doit":"dmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsICIiKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKdmFyIHNmSUQgPSBkb2Muc2ZJRCArICIiOwppZihzZklELmxlbmd0aD4xNSl7CglzZklEPXNmSUQuc3Vic3RyaW5nKDAsMTUpOwp9CmFsZXJ0KCJAQEBAQCBzZklEID0gIiArIHNmSUQpOwphbGVydCgiQEBAIERldGFjaCBEb2MgdGVzdDEyMyA9IiArIHNmSUQpOwp2YXIgYXR0YWNoZWRUbyA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CmFsZXJ0KCJAQEBAQCBhdHRhY2hlZFRvID0gIiArIGF0dGFjaGVkVG8pOwphdHRhY2hlZFRvID0gYXR0YWNoZWRUby5yZXBsYWNlKHNmSUQsICIiKS5yZXBsYWNlKCIsLCIsICIsIik7CmFsZXJ0KCJAQEBAIG5ldyBhdHRhY2hlZFRvID0gIiArIGF0dGFjaGVkVG8pOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsIGF0dGFjaGVkVG8pOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKaWYgKHNmSUQuaW5kZXhPZigiNTAwIikgPT0gMCB8fCBzZklELmluZGV4T2YoIjAwMyIpID09IDAgfHwgc2ZJRC5pbmRleE9mKCIwMDEiKSA9PSAwICkgewogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCAnJyk7CiAgICBhbGVydCgiQEBAIHVwZGF0aW5nICIrZ2V0U0ZUeXBlKHNmSUQpKyIgd2l0aCA6OiAiICsgYXJyT2ZQYWlycyk7CiAgICB1cGRhdGVTRlJlY29yZChkb2MsIGdldFNGVHlwZShzZklEKSwgc2ZJRCwgYXJyT2ZQYWlycyk7Cn0KYWRkUG9zdEV4ZWN1dGlvblNjcmlwdCgiYWxlcnQofkRvY3VtZW50IHN1Y2Nlc3NmdWxseSBkZXRlY2hlZCBidXQgbm90IGRlbGV0ZWQuIFBsZWFzZSByZWZyZXNoIHRoZSBwYWdlfik7LiIpOw=="},"ordinal":39}

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

if (sfID.indexOf("500") == 0 || sfID.indexOf("003") == 0 || sfID.indexOf("001") == 0 ) {
    arrOfPairs = [];
    arrOfPairs.push("ZPAPER__receivedId__c", '');
    alert("@@@ updating "+getSFType(sfID)+" with :: " + arrOfPairs);
    updateSFRecord(doc, getSFType(sfID), sfID, arrOfPairs);
}
addPostExecutionScript("alert(~Document successfully deteched but not deleted. Please refresh the page~);.");
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
