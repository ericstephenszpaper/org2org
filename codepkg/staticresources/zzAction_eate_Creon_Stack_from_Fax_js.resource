<!--
// Name: Create Creon Stack from Fax
// Committer: andrew@zpaper.com
// Update: uypdate static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-12-06 17:13:55","active":true,"button":"","name":"Create Creon Stack from Fax","conditions":{"logic":"or","arguments":[{"name":"doc.deliveredTo","value":"6787271133","operation":"ends-with"},{"name":"doc.deliveredTo","value":"6787270566","operation":"ends-with"},{"name":"doc.deliveredTo","value":"6787271017","operation":"ends-with"},{"name":"doc.deliveredTo","value":"6782356599","operation":"ends-with"},{"name":"doc.deliveredTo","value":"6789489664","operation":"ends-with"}]},"consequence":{"doit":"LyogQ3Jlb24gcHJvZ3JhbSBvbmx5LiBDcmVhdGUgYSB6U3RhY2sgdGhhdCB3aWxsIGludm9rZSBhIHdvcmtmbG93IHRvIGZvcndhcmQgdGhlIHJlY2VpdmVkIGZheCB0byB0aGUgQ3Jlb24gc2VydmljZSBlbWFpbApSdWxlIGlzIGZpbHRlcmVkIHRvIG9ubHkgZXhlY3V0ZSB3aGVuIGEgZG9jIGlzIHJlY2VpdmVkIG9uIGEgQ3Jlb24gZmF4IGxpbmUgKi8KCmFsZXJ0KCJAQEAgZW50ZXJpbmcgQ3JlYXRlIENyZW9uIFN0YWNrIHJ1bGUiKTsKYWxlcnQoIkBAQCBDcmVvbiB6U3RhY2sgUmVjb3JkIFR5cGUgaXMgIiArIHpEYXRhLmNyZW9uU3RhY2tSZWNvcmRUeXBlSWQpOwoKdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBhdHRhY2hMYWJlbCA9ICJOZXcgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKCmFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuY3Jlb25TdGFja1JlY29yZFR5cGVJZCk7CmFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLmNvbXBJbnRRdWV1ZUlkKTsgLy9zZXQgb3duZXIgdG8gQ29tcGxldGUgSW50YWtlIHJlY29yZCB0eXBlCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcmlvcml0eV9fYyIsICJNZWRpdW0iKTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJOZXcgU3RhY2siKTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NoYW5uZWxfX2MiLCAiZmF4Iik7CgovLyBNU0gxNzExMTYgdXNpbmcgelN0YWNrX1JlY2VpdmVkX19jIGluc3RlYWQgb2YgbGF0ZXN0RmF4X19jIGJlY2F1c2UgbGF0ZXN0RmF4X19jIGdldHMgdXBkYXRlZCBieSBzYXZlLmpzcCBldmVyeSB0aW1lIHRoZSByZWNvcmQgaXMgdXBkYXRlZAovL0FOMjAxOTExMTMgdGVjaCBkZWJ0PyBzYXZpbmcgcmVjZWl2ZWQgZGF0ZSBpbiB0d28gZGlmZmVyZW50IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goInpTdGFja19SZWNlaXZlZF9fYyIsIGZvcm1hdE5vdyk7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwoKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19zZW50RmF4VG9fX2MiLCBkb2MuZGVsaXZlcmVkVG8pOyAvL0VSUzE3MDYyOCBjYWxsZXIgaWQKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0Zyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CmFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19TdGFnZV9fYyIsICJSZWNlaXZlZCIpOwoKYWxlcnQoIkBAQCBjcmVhdGluZyBDcmVvbiB6U3RhY2siKTsKdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCAiTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOwoKYWxlcnQoIkBAQCBTdGFjayBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKCmFycm9mUGFpcnMgPSBbXTsgLy9yZXNldCB2YXJpYWJsZQoKLy9zZXQgdGhlIHpQYXBlciBkb2N1bWVudCBzZWN1cml0eSB0byB0aGUgQ29tcGxldGUgSW50YWtlIHVzZXIgZ3JvdXAKYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsICI6IiArIHpEYXRhLmNvbXBJbnRHcm91cElkICsgIjoiKTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEuY29tcEludEdyb3VwSWQgKyAiOiIpOwphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKCnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7"},"ordinal":18}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* Creon program only. Create a zStack that will invoke a workflow to forward the received fax to the Creon service email
Rule is filtered to only execute when a doc is received on a Creon fax line */

alert("@@@ entering Create Creon Stack rule");
alert("@@@ Creon zStack Record Type is " + zData.creonStackRecordTypeId);

var arrOfPairs = [];
var formatNow = getCurDateAndTime(doc);
var attachLabel = "New Stack received on " + formatNow;

arrOfPairs.push("RecordTypeId", zData.creonStackRecordTypeId);
arrOfPairs.push("OwnerId", zData.compIntQueueId); //set owner to Complete Intake record type
arrOfPairs.push("ZPAPER__Priority__c", "Medium");
arrOfPairs.push("ZPAPER__Status__c", "New Stack");
arrOfPairs.push("ZPAPER__Channel__c", "fax");

// MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
//AN20191113 tech debt? saving received date in two different fields
arrOfPairs.push("zStack_Received__c", formatNow);
arrOfPairs.push("ZPAPER__latestFax__c", formatNow);

arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
arrOfPairs.push("ZPAPER__newFax__c", "true");
arrOfPairs.push("ZPAPER__Pages__c", X(doc, "X_pages"));
arrOfPairs.push("ZPAPER__sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
arrOfPairs.push("ZPAPER__From__c", doc.deliveredFrom);
arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); 
arrOfPairs.push("ZPAPER__Stage__c", "Received");

alert("@@@ creating Creon zStack");
var sfId = createAndAttach(doc, "ZPAPER__zStack__c", "New Stack received on " + formatNow, arrOfPairs);

alert("@@@ Stack Received. Attached to: " + sfId);

arrofPairs = []; //reset variable

//set the zPaper document security to the Complete Intake user group
arrOfPairs.push("db-users", ":" + zData.compIntGroupId + ":");
arrOfPairs.push("db-readers", ":" + zData.compIntGroupId + ":");
arrOfPairs.push("db-BATES", sfId + "-STACK");

updateDB(doc, arrOfPairs);
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
