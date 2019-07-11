<!--
// Name: Standard Barcode Received
// Committer: eric.stephens@zpaper.com
// Update: signed too
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-06-18 23:56:41","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"^(001|003|00Q|500|006).*","operation":"regex"}]},"consequence":{"doit":"dmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBzZklEPXpEYXRhLnNmSUQ7ICAKCmFsZXJ0KCIjIyMgc2ZJRCBmcm9tIGJhcmNvZGU6ICIgKyBzZklEKTsKaWYgKHNmSUQgJiYgc2ZJRC5sZW5ndGggPiAwKSB7IC8vRVJTMTkwNjE1ICM1ODkyMSBVWEwgZG9jU2V0cwoJLy9UUE0xODA4MDMgRm9yIHNldHRpbmcgY2hlY2tib3hlcyBvbiB0aGUgemRvY3NldAoJYXJyT2ZQYWlycyA9IFtdOwoJYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CglhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyAiUmVjZWl2ZWQgYnkgYWdlbnQgYXQgIiArIGZvcm1hdE5vdyArICI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIvQ0FXIFVwZGF0ZQoJYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwoJYWxlcnQoIkBAQCBzZXR0aW5nIFJlY2VpdmVkIGNoZWNrYm94Iik7Cgl1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoJYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIkluZGV4ZWQiKTsKCWFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJBdXRvLWluZGV4ZWQgdmlhIGJhcmNvZGUgYnkgYWdlbnQgYXQgIiArIGZvcm1hdE5vdyArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsgLy9FUlMxNzA5MDkgIzQwNTkyL0NBVyBVcGRhdGUKCWFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKCWFsZXJ0KCJAQEAgc2V0dGluZyBJbmRleGVkIGNoZWNrYm94Iik7Cgl1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoJCgl2YXIgbGFiZWw9Ik5ldyBGYXggUmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKCWxhYmVsPXpEYXRhLm5hbWVGaWxlKGRvYyk7CgoJLyogYXR0YWNoIHRoZSBmYXggdG8gaXRzIGNvcnJlc3BvbmRpbmcgU2FsZXNmb3JjZSBPYmplY3QgKi8KCWF0dGFjaChkb2MsbGFiZWwsc2ZJRCk7CgoJLyogc2F2ZSB0aGUgd29ya2Zsb3cgZmllbGRzIGFsc28gKi8KCXZhciBzZlR5cGUgPSBnZXRTRlR5cGUoZG9jLCBzZklEKTsKCWFyck9mUGFpcnMgPSBbXTsKCglhcnJPZlBhaXJzLnB1c2goekRhdGEuenArImxhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CglhcnJPZlBhaXJzLnB1c2goekRhdGEuenArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CglhcnJPZlBhaXJzLnB1c2goekRhdGEuenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CglhcnJPZlBhaXJzLnB1c2goekRhdGEuenArImZheFR5cGVfX2MiLCBkb2MuWCgiWF9kb2NUeXBlIikpOwoJdXBkYXRlU0ZSZWNvcmQoZG9jLCBzZlR5cGUsIHNmSUQsIGFyck9mUGFpcnMpOwp9"},"ordinal":24}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var formatNow = getCurDateAndTime(doc);
var sfID=zData.sfID;  

alert("### sfID from barcode: " + sfID);
if (sfID && sfID.length > 0) { //ERS190615 #58921 UXL docSets
	//TPM180803 For setting checkboxes on the zdocset
	arrOfPairs = [];
	arrOfPairs.push("X_reviewedStatus", "Received");
	arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + formatNow + "<br/>"); //ERS170909 #40592/CAW Update
	arrOfPairs.push("X_buttonAction","");
	alert("@@@ setting Received checkbox");
	updateDB(doc, arrOfPairs);
	arrOfPairs.push("X_reviewedStatus", "Indexed");
	arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Auto-indexed via barcode by agent at " + formatNow + "<br/>"+zData.signedStatus); //ERS170909 #40592/CAW Update
	arrOfPairs.push("X_buttonAction","");
	alert("@@@ setting Indexed checkbox");
	updateDB(doc, arrOfPairs);
	
	var label="New Fax Received on " + formatNow;
	label=zData.nameFile(doc);

	/* attach the fax to its corresponding Salesforce Object */
	attach(doc,label,sfID);

	/* save the workflow fields also */
	var sfType = getSFType(doc, sfID);
	arrOfPairs = [];

	arrOfPairs.push(zData.zp+"latestFax__c", formatNow);
	arrOfPairs.push(zData.zp+"receivedId__c", doc.dbID);
	arrOfPairs.push(zData.zp+"newFax__c", "true");
	arrOfPairs.push(zData.zp+"faxType__c", doc.X("X_docType"));
	updateSFRecord(doc, sfType, sfID, arrOfPairs);
}
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
