<!--
// Name: Detach Document from Salesforce Record
// Committer: andrew@zpaper.com
// Update: undoing the workaound that was actually a doesntworkaround
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-29 16:36:48","active":true,"button":"","name":"Detach Document from Salesforce Record","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELETE_DOC","operation":"equals"}]},"consequence":{"doit":"Ly9ydWxlIGlzIHNwZWNpZmljIHRvIGFuIEFjY291bnQuIG5lZWRzIHRvIGJlIG1hZGUgZ2VuZXJpYwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKdmFyIHNmSUQgPSBkb2Muc2ZJRCArICIiOwppZihzZklELmxlbmd0aD4xNSl7CglzZklEPXNmSUQuc3Vic3RyaW5nKDAsMTUpOwp9CmFsZXJ0KCJAQEBAQCBzZklEID0gIiArIHNmSUQpOwp2YXIgYXR0YWNoZWRUbyA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CmFsZXJ0KCJAQEBAQCBhdHRhY2hlZFRvID0gIiArIGF0dGFjaGVkVG8pOwphdHRhY2hlZFRvID0gYXR0YWNoZWRUby5yZXBsYWNlKHNmSUQsICIiKS5yZXBsYWNlKCIsLCIsICIsIik7CmFsZXJ0KCJAQEBAIG5ldyBhdHRhY2hlZFRvID0gIiArIGF0dGFjaGVkVG8pOwoKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLCBhdHRhY2hlZFRvKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCAnJyk7CmFsZXJ0KCJAQEAgdXBkYXRpbmcgbmV3IGNhc2Ugd2l0aCA6OiAiICsgYXJyT2ZQYWlycyk7CnVwZGF0ZVNGUmVjb3JkKGRvYywgIkFjY291bnQiLCBzZklELCBhcnJPZlBhaXJzKTsKCi8vdXBkYXRlU0ZSZWNvcmQoZG9jLCAiQ2FzZSIsIHNmSUQsIGFyck9mUGFpcnMpOyAvL0FOMjAxOTEwMjkgIzY0NTgyIHRlbXAgZml4IC0gbmVlZHMgdG8gYmUgbWFkZSBPYmplY3QtYWdub3N0aWMKCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoImFsZXJ0KH5Eb2N1bWVudCBzdWNjZXNzZnVsbHkgcmVtb3ZlZCBmcm9tIFNldC4gUGxlYXNlIHJlZnJlc2ggdGhlIHBhZ2V+KTsuIik7Cg=="},"ordinal":15}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//rule is specific to an Account. needs to be made generic
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

arrOfPairs = [];
arrOfPairs.push("ZPAPER__receivedId__c", '');
alert("@@@ updating new case with :: " + arrOfPairs);
updateSFRecord(doc, "Account", sfID, arrOfPairs);

//updateSFRecord(doc, "Case", sfID, arrOfPairs); //AN20191029 #64582 temp fix - needs to be made Object-agnostic

addPostExecutionScript("alert(~Document successfully removed from Set. Please refresh the page~);.");

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
