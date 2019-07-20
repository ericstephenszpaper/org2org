<!--
// Name: Standard Barcode Received
// Committer: andrew@zpaper.com
// Update: updates
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-05-30 17:57:34","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"[001|003|00Q|500|006].*","operation":"regex"}]},"consequence":{"doit":"dmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBzZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwoKaWYgKCFzZklEIHx8IDAgPT09IHNmSUQubGVuZ3RoKSB7CnNmSUQgPSBnZXRBbHRlcm5hdGVCYXJjb2RlT25lKGRvYykgKyAiIjsKfQphbGVydCgiIyMjIHNmSUQgZnJvbSBiYXJjb2RlOiAiICsgc2ZJRCk7CmlmIChzZklEICYmIHNmSUQubGVuZ3RoID4gMCkgewoKCS8vVFBNMTgwODAzIEZvciBzZXR0aW5nIGNoZWNrYm94ZXMgb24gdGhlIHpkb2NzZXQKCWFyck9mUGFpcnMgPSBbXTsKCWFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJSZWNlaXZlZCIpOwoJYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCBYKGRvYywgIlhfcmV2aWV3cyIpICsgIlJlY2VpdmVkIGJ5IGFnZW50IGF0ICIgKyBmb3JtYXROb3cgKyAiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyL0NBVyBVcGRhdGUKCWFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKCWFsZXJ0KCJAQEAgc2V0dGluZyBSZWNlaXZlZCBjaGVja2JveCIpOwoJdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCWFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJJbmRleGVkIik7CglhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyAiQXV0by1pbmRleGVkIHZpYSBiYXJjb2RlIGJ5IGFnZW50IGF0ICIgKyBmb3JtYXROb3cgKyAiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyL0NBVyBVcGRhdGUKCWFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKCWFsZXJ0KCJAQEAgc2V0dGluZyBJbmRleGVkIGNoZWNrYm94Iik7Cgl1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKCS8qIGF0dGFjaCB0aGUgZmF4IHRvIGl0cyBjb3JyZXNwb25kaW5nIFNhbGVzZm9yY2UgT2JqZWN0ICovCglhdHRhY2goZG9jLCAiTmV3IEZheCBSZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93LCBzZklEKTsKCgkvKiBzYXZlIHRoZSB3b3JrZmxvdyBmaWVsZHMgYWxzbyAqLwoJdmFyIHNmVHlwZSA9IGdldFNGVHlwZShkb2MsIHNmSUQpOwoJYXJyT2ZQYWlycyA9IFtdOwoKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgZG9jLlgoIlhfZG9jVHlwZSIpKTsKCXVwZGF0ZVNGUmVjb3JkKGRvYywgc2ZUeXBlLCBzZklELCBhcnJPZlBhaXJzKTsKCn0="},"ordinal":14}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var formatNow = getCurDateAndTime(doc);
var sfID = getBarcodeOne(doc);
var arrOfPairs = [];

if (!sfID || 0 === sfID.length) {
sfID = getAlternateBarcodeOne(doc) + "";
}
alert("### sfID from barcode: " + sfID);
if (sfID && sfID.length > 0) {

	//TPM180803 For setting checkboxes on the zdocset
	arrOfPairs = [];
	arrOfPairs.push("X_reviewedStatus", "Received");
	arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + formatNow + "<br/>"); //ERS170909 #40592/CAW Update
	arrOfPairs.push("X_buttonAction","");
	alert("@@@ setting Received checkbox");
	updateDB(doc, arrOfPairs);
	arrOfPairs.push("X_reviewedStatus", "Indexed");
	arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Auto-indexed via barcode by agent at " + formatNow + "<br/>"); //ERS170909 #40592/CAW Update
	arrOfPairs.push("X_buttonAction","");
	alert("@@@ setting Indexed checkbox");
	updateDB(doc, arrOfPairs);

	/* attach the fax to its corresponding Salesforce Object */
	attach(doc, "New Fax Received on " + formatNow, sfID);

	/* save the workflow fields also */
	var sfType = getSFType(doc, sfID);
	arrOfPairs = [];

	arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
	arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
	arrOfPairs.push("ZPAPER__newFax__c", "true");
	arrOfPairs.push("ZPAPER__faxType__c", doc.X("X_docType"));
	updateSFRecord(doc, sfType, sfID, arrOfPairs);

}
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
