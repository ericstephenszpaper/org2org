<!--
// Name: Standard Barcode Received
// Committer: eric.stephens@zpaper.com
// Update: put the new stack code in
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-09-13 14:39:23","evalContinue":"true","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"^(001|003|00Q|500|006).*","operation":"regex"}]},"consequence":{"doit":"dmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBzZklEPXpEYXRhLnNmSUQ7ICAKCmFsZXJ0KCIjIyMgc2ZJRCBmcm9tIGJhcmNvZGU6ICIgKyBzZklEKTsKaWYgKHNmSUQgJiYgc2ZJRC5sZW5ndGggPiAwKSB7IC8vRVJTMTkwNjE1ICM1ODkyMSBVWEwgZG9jU2V0cwovL1RQTTE4MDgwMyBGb3Igc2V0dGluZyBjaGVja2JveGVzIG9uIHRoZSB6ZG9jc2V0CmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJSZWNlaXZlZCBieSBhZ2VudCBhdCAiICsgZm9ybWF0Tm93ICsgIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKYWxlcnQoIkBAQCBzZXR0aW5nIFJlY2VpdmVkIGNoZWNrYm94Iik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJJbmRleGVkIik7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJBdXRvLWluZGV4ZWQgdmlhIGJhcmNvZGUgYnkgYWdlbnQgYXQgIiArIGZvcm1hdE5vdyArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsgLy9FUlMxNzA5MDkgIzQwNTkyL0NBVyBVcGRhdGUKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwphbGVydCgiQEBAIHNldHRpbmcgSW5kZXhlZCBjaGVja2JveCIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKdmFyIGxhYmVsPSJOZXcgRmF4IFJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3c7CmxhYmVsPXpEYXRhLm5hbWVGaWxlKGRvYyk7CgovKiBhdHRhY2ggdGhlIGZheCB0byBpdHMgY29ycmVzcG9uZGluZyBTYWxlc2ZvcmNlIE9iamVjdCAqLwphdHRhY2goZG9jLGxhYmVsLHNmSUQpOwoKLyogc2F2ZSB0aGUgd29ya2Zsb3cgZmllbGRzIGFsc28gKi8KdmFyIHNmVHlwZSA9IGdldFNGVHlwZShkb2MsIHNmSUQpOwphcnJPZlBhaXJzID0gW107CgphcnJPZlBhaXJzLnB1c2goekRhdGEuenArImxhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CmFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKYXJyT2ZQYWlycy5wdXNoKHpEYXRhLnpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goekRhdGEuenArImZheFR5cGVfX2MiLCBkb2MuWCgiWF9kb2NUeXBlIikpOwp1cGRhdGVTRlJlY29yZChkb2MsIHNmVHlwZSwgc2ZJRCwgYXJyT2ZQYWlycyk7CmlmICgxPT09MSkgeyAvLyBQVjE5MDkxMSB1cGRhdGVkIGZvciBiYXJjb2RlZCBkb2N1bWVudCBzdGFjayAjNjI4MjkgVE9ETyBpbnRvIE1QCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArImZheFR5cGVfX2MiLCB6RGF0YS5kb2NUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7CiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArIlN0YXR1c19fYyIsICJDb21wbGV0ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLnpwKyJDaGFubmVsX19jIiwgekRhdGEuY2hhbm5lbCk7CiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArImxhdGVzdEZheF9fYyIsIHpEYXRhLmZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArIlBhZ2VzX19jIiwgWChkb2MsICJYX3BhZ2VzIikpOyAKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLnpwKyJzZW50RmF4VG9fX2MiLCBkb2MuZGVsaXZlcmVkVG8pOyAKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiRnJvbV9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArIkNsYXNzaWZpY2F0aW9uX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgYXR0YWNoTGFiZWwgPSAiTmV3ICIrekRhdGEuY2xhc3NpZmljYXRpb24rIiBTdGFjayByZWNlaXZlZCBvbiAiICsgekRhdGEuZm9ybWF0Tm93OwogICAgaWYgKHpEYXRhLmxhYmVsKSBhdHRhY2hMYWJlbD16RGF0YS5sYWJlbDsgCiAgICBpZiAoekRhdGEuY2xpZW50U3RhY2spIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLGFyck9mUGFpcnMpOyAKICAgIHZhciBzZlN0YWNrSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS56cHMsIGF0dGFjaExhYmVsLCBhcnJPZlBhaXJzKTsgCn0gLy9tYWtlIGEgc3RhY2sKfSAvL3NmSWQK"},"ordinal":13}

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
if (1===1) { // PV190911 updated for barcoded document stack #62829 TODO into MP
    arrOfPairs = [];
    arrOfPairs.push(zData.zp+"faxType__c", zData.docType);
    arrOfPairs.push(zData.zp+"Priority__c", "Medium");
    arrOfPairs.push(zData.zp+"Status__c", "Complete");
    arrOfPairs.push(zData.zp+"Channel__c", zData.channel);
    arrOfPairs.push(zData.zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zData.zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zData.zp+"newFax__c", "true");
    arrOfPairs.push(zData.zp+"Pages__c", X(doc, "X_pages")); 
    arrOfPairs.push(zData.zp+"Program_Name__c", zData.classification);
    arrOfPairs.push(zData.zp+"sentFaxTo__c", doc.deliveredTo); 
    arrOfPairs.push(zData.zp+"From__c", doc.deliveredFrom);
    arrOfPairs.push(zData.zp+"Stage__c", "Received"); 
    arrOfPairs.push(zData.zp+"Classification__c", zData.classification);
    attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
    if (zData.label) attachLabel=zData.label; 
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); 
    var sfStackId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); 
} //make a stack
} //sfId

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
