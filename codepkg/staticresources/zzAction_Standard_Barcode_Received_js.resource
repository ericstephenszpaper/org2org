<!--
// Name: Standard Barcode Received
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: PV191031 Also set the label on the Snippet
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-31 14:55:52","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"^(001|003|00Q|500|006).*","operation":"regex"}]},"consequence":{"doit":"dmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBzZklEPXpEYXRhLnNmSUQ7ICAKCmFsZXJ0KCIjIyMgc2ZJRCBmcm9tIGJhcmNvZGU6ICIgKyBzZklEKTsKaWYgKHNmSUQgJiYgc2ZJRC5sZW5ndGggPiAwKSB7IC8vRVJTMTkwNjE1ICM1ODkyMSBVWEwgZG9jU2V0cwovL1RQTTE4MDgwMyBGb3Igc2V0dGluZyBjaGVja2JveGVzIG9uIHRoZSB6ZG9jc2V0CmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJSZWNlaXZlZCBieSBhZ2VudCBhdCAiICsgZm9ybWF0Tm93ICsgIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKYWxlcnQoIkBAQCBzZXR0aW5nIFJlY2VpdmVkIGNoZWNrYm94Iik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJJbmRleGVkIik7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJBdXRvLWluZGV4ZWQgdmlhIGJhcmNvZGUgYnkgYWdlbnQgYXQgIiArIGZvcm1hdE5vdyArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsgLy9FUlMxNzA5MDkgIzQwNTkyL0NBVyBVcGRhdGUKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwphbGVydCgiQEBAIHNldHRpbmcgSW5kZXhlZCBjaGVja2JveCIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKdmFyIGxhYmVsPSJOZXcgRmF4IFJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3c7CmxhYmVsPXpEYXRhLm5hbWVGaWxlKGRvYyk7CnZhciBzZlR5cGUgPSBnZXRTRlR5cGUoZG9jLCBzZklEKTsKCmlmKHNmVHlwZSA9PSAiQWNjb3VudCIpeyAvL1B2MTkxMDMwIFRvIHVwZGF0ZSBMYWJlbAogICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgIk5hbWUiLCBudWxsLCBzZklEKTsKICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIk5hbWUiLCBjb250YWN0Rmxkcykuc3BsaXQoIiAiKVswXTsgLy9FUlMxOTA4MDMgVE9ETyBmaW5kIGEgYmV0dGVyIHdheQogICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJOYW1lIiwgY29udGFjdEZsZHMpLnNwbGl0KCIgIilbMV07CiAgICBsYWJlbCA9IHBhdGllbnRGaXJzdE5hbWUrcGF0aWVudExhc3ROYW1lICsgIiBSZWNlaXZlZCAtIisgZ2V0Q3VyRGF0ZShkb2MpOwp9CgovKiBhdHRhY2ggdGhlIGZheCB0byBpdHMgY29ycmVzcG9uZGluZyBTYWxlc2ZvcmNlIE9iamVjdCAqLwphdHRhY2goZG9jLGxhYmVsLHNmSUQpOwoKLy9QVjE5MTAzMSBBbHNvIHNldCB0aGUgbGFiZWwgb24gdGhlIFNuaXBwZXQKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKLyogc2F2ZSB0aGUgd29ya2Zsb3cgZmllbGRzIGFsc28gKi8KCmFyck9mUGFpcnMgPSBbXTsKCmFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpEYXRhLnpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwphcnJPZlBhaXJzLnB1c2goekRhdGEuenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiZmF4VHlwZV9fYyIsIGRvYy5YKCJYX2RvY1R5cGUiKSk7CnVwZGF0ZVNGUmVjb3JkKGRvYywgc2ZUeXBlLCBzZklELCBhcnJPZlBhaXJzKTsKaWYgKDE9PT0xKSB7IC8vIFBWMTkwOTExIHVwZGF0ZWQgZm9yIGJhcmNvZGVkIGRvY3VtZW50IHN0YWNrICM2MjgyOSBUT0RPIGludG8gTVAKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiZmF4VHlwZV9fYyIsIHpEYXRhLmRvY1R5cGUpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLnpwKyJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiU3RhdHVzX19jIiwgIkNvbXBsZXRlIik7CiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArIkNoYW5uZWxfX2MiLCB6RGF0YS5jaGFubmVsKTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsibGF0ZXN0RmF4X19jIiwgekRhdGEuZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsibmV3RmF4X19jIiwgInRydWUiKTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiRnJvbV9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsKICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgIit6RGF0YS5jbGFzc2lmaWNhdGlvbisiIFN0YWNrIHJlY2VpdmVkIG9uICIgKyB6RGF0YS5mb3JtYXROb3c7CiAgICBpZiAoekRhdGEubGFiZWwpIGF0dGFjaExhYmVsPXpEYXRhLmxhYmVsOwogICAgaWYgKHpEYXRhLmNsaWVudFN0YWNrKSBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxhcnJPZlBhaXJzKTsKICAgIHZhciBzZlN0YWNrSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS56cHMsIGF0dGFjaExhYmVsLCBhcnJPZlBhaXJzKTsKfSAvL21ha2UgYSBzdGFjawp9IC8vc2ZJZAo="},"ordinal":13}

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
var sfType = getSFType(doc, sfID);

if(sfType == "Account"){ //Pv191030 To update Label
    var contactFlds = getSFFields(doc, zData.patientType, "Name", null, sfID);
    patientFirstName = X(doc, "Name", contactFlds).split(" ")[0]; //ERS190803 TODO find a better way
    patientLastName = X(doc, "Name", contactFlds).split(" ")[1];
    label = patientFirstName+patientLastName + " Received -"+ getCurDate(doc);
}

/* attach the fax to its corresponding Salesforce Object */
attach(doc,label,sfID);

//PV191031 Also set the label on the Snippet
arrOfPairs = [];
arrOfPairs.push("db-label", label);
updateDB(doc, arrOfPairs);

/* save the workflow fields also */

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
