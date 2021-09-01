<!--
// Name: DELIVERY_COMPLETE
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV210827
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-08-27 16:42:52","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTEyMjggdXBkYXRlZCBydWxlIGZvciBFZGdlIEhDIElETyBEZW1vIE9yZwphbGVydCgicmVzZXR0aW5nIHRvIGF2b2lkIGJ1dHRvbiByZXZlcmIiKTsKYWxlcnQoIkBAQCBsYWJlbCA9ICIgKyBkb2MubGFiZWwpOwp2YXIgZG9jdW1lbnRJZCA9IFgoZG9jLCJkb2N1bWVudElkIik7CmFsZXJ0KCIxMjNAQEBwY2RvY3VtZW50SUQiICsgWChkb2MsImRvY3VtZW50SWQiKSApOwoKdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwoKdmFyIHNmSUQgPSBYKGRvYywiWF9hY3Rpdml0eU9uSUQiKTsKaWYgKCFzZklEIHx8IHNmSUQ9PT0iIikgeyBzZklEPVgoZG9jLCJzZklEIik7IGFsZXJ0KCJFUlMyMDA4MjIgZGlzY292ZXJlZCAiK3NmSUQpOyB9IC8vRVJTMjA4MjUgIzc1Njg1IDxzZklEPjAwMzN0MDAwMDM0VVlrQkFBVzwvc2ZJRD4KdmFyIGRvY1R5cGU9WChkb2MsIlhfZG9jVHlwZVNlbnQiKTsKdmFyIHByb3ZpZGVyPSIiOwp2YXIgZmFjaWxpdHk9IiI7CnZhciBsYWJlbD0iIjsKdmFyIGFyck9mUGFpcnMgPSBbXTsKLy9FUlMyMDA4MjIgIzc1Njg1IFRPRE8gbW92ZSB0byBjbGllbnRGaWxlIGhvdyBkbyBJIGdldCBpdCBvbnRvIHRoZSBkb2NTZXQ/CmlmICgwID09PSBzZklELmluZGV4T2YoIjAwMyIpKSB7CnByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIk5hbWUiLCBudWxsLCBzZklEKTsKZmFjaWxpdHkgPSBnZXRTRkZpZWxkKGRvYywgIkNvbnRhY3QiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiU2VudCB0byAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGF0ICIgKyBmYWNpbGl0eSk7Cn0gZWxzZSBpZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCI1MDAiKSkgewogICAgYWxlcnQoIkBAQGNhbGxpbmcgZ2V0U0ZGaWVsZCBmb3IgUHJvdmlkZXIiKTsKcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQ29udGFjdC5OYW1lIiwgbnVsbCwgc2ZJRCk7IC8vUFYyMTA2MjIgY29tbWVudGVkCmZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNvbnRhY3QuQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7CmFsZXJ0KCAiQEBAUHJvdmlkZXIgdmFsdWUiK3Byb3ZpZGVyKTsKLy9wcm92aWRlciA9ICJ0ZXN0IHByb3ZpZGVyIjsgLy9QVjIxMDYyMiBhZGRlZCBmb3IgdGVzdGluZwovL2ZhY2lsaXR5ID0gInRlc3QgZmFjaWxpdHkiOwphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIlNlbnQgdG8gIiArIHByb3ZpZGVyICsgIiAiICsgIiBhdCAiICsgZmFjaWxpdHkpOwovL3ZhciBwYXRpZW50ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOwp2YXIgcGF0aWVudCA9ICJ0ZXN0IHBhdGllbnQiOwogICAgdmFyIHpTdGF0dXM9WChkb2MsIlhfcmV2aWV3ZWRTdGF0dXMiKTsKICAgIGlmICh6U3RhdHVzPT09IiIpIHpTdGF0dXM9IlNlbnQiOwogICAgaWYgKHpTdGF0dXM9PT0iU2lnbmVkIiB8fCBkb2MuVVJMLmluZGV4T2YoIlRGIikhPS0xKSB7ICAKICAgICAgICBkb2NUeXBlPSJURiI7IC8vRVJTMTkxMjExIEhBQ0sKICAgICAgICBsYWJlbD16U3RhdHVzICsgIiBieSAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGZvciAiICsgcGF0aWVudDsKICAgICAgICBhbGVydCgiVGVsbCBkb2NUeXBlIGZyb20gIisgZG9jLlVSTCsiIGFuZCBsYWJlbD0iK2xhYmVsKyIgc2ZJRD0iK3NmSUQpOwogICAgICAgLy9FUlMyMDEyMDMgIzc3MzAyIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICB9ICAKICAgIC8qZWxzZSBpZiAoMCA9PT1zZklELmluZGV4Lk9mKCJhMU0iKSl7CiAgICAgICAgY2FzZUlkPSBnZXRTRkZpZWxkKGRvYywgIlBhdGllbnRDb25uZWN0X19QQ19Eb2N1bWVudF9jYyIsICJOYW1lIiwgbnVsbCwgc2ZJRCk7CiAgICB9Ki8KfQppZiAoZG9jVHlwZT09PSIiKSBkb2NUeXBlPWRvYy5kb2NUeXBlOwppZiAoZG9jVHlwZT09PSIiKSBYKGRvYywiWF9kb2NUeXBlIik7CmlmIChkb2NUeXBlPT09IiIpIFgoZG9jLCJDb250YWN0TmFtZSIpOwpkb2MuZG9jVHlwZT1kb2NUeXBlOwppZiAoIWRvY1R5cGUpIHtkb2NUeXBlPSJGQVgiO30gLy9FUlMyMDA4MjIgIzc1Njg1IGRlc2t0b3AgUERGIHdpdGggbm8gY292ZXJzaGVldAoKYWxlcnQoIkBAQCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOwoKaWYgKGRvY1R5cGUuaW5kZXhPZigiOiIpPi0xKSBkb2NUeXBlPWRvY1R5cGUuc3BsaXQoIjoiKVswXTsKCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24wIixYKGRvYywiWF9idXR0b25BY3Rpb24iKSk7CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSUQgKyAiLSIgKyBkb2NUeXBlKTsgIAovL2Fyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixzZklEKTsKaWYoZG9jdW1lbnRJZCkgeyAvL1BWMjEwNzE5IGFkZGVkCmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixzZklEICsgIiwiICsgZG9jdW1lbnRJZCk7Cn0gZWxzZSB7CmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixzZklEKTsKfQppZiAoZG9jVHlwZSAhPT0gIiIpIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIixkb2NUeXBlKTsKaWYgKDE9PT0xKSB7CiAgICB2YXIgYmE9ZG9jLlgoIlhfZmF4U3RhdHVzIikrIiI7CiAgICBpZiAoIkRlbGl2ZXJlZCIgIT09IGJhKSB7IGJhPSJGYWlsZWQiOyB9CiAgICBpZiAoZG9jdW1lbnRJZCl7CiAgICB2YXIgZG9jYXJyT2ZQYWlycyA9IFtdOyAvL1BWMjEwNzE5IGFkZGVkIHRvIHVwZGF0ZWQgdGhlIHN0YXR1cyBvZiBEb2N1bWVudCByZWNvcmQKICAgIGRvY2Fyck9mUGFpcnMucHVzaCgiUGF0aWVudENvbm5lY3RfX1BDX0RvY3VtZW50X1N0YXR1c19fYyIsIGJhKTsKICAgIGlmKGJhPT0iRmFpbGVkIil7CiAgICAgICAgZG9jYXJyT2ZQYWlycy5wdXNoKCJQYXRpZW50Q29ubmVjdF9fUENfRXJyb3JfX2MiLGRvYy5YKCJYX2ZheFN0YXR1c0RldGFpbCIpKTsKICAgIH0KICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgIlBhdGllbnRDb25uZWN0X19QQ19Eb2N1bWVudF9fYyIsIGRvY3VtZW50SWQsIGRvY2Fyck9mUGFpcnMpOwogICAgfQogICAgYWxlcnQoIkBAQHNmSUQxIisgc2ZJRCk7CiAgICAvKmlmICgwID09PSBzZklELmluZGV4T2YoIjUwMCIpKSB7CiAgICAgICAgdmFyIGF0dGFjaG1lbnRJZCA9IGdldFNGRmllbGQoZG9jLCAiY2FzZSIsICAiaUNDX0F0dGFjaG1lbnRfSWRfX2MiLCBudWxsLCBzZklEKTsKICAgICAgICB2YXIgZG9jdW1lbnRMb2dJZCA9IGdldFNGRmllbGQoZG9jLCAiYXR0YWNobWVudCIsICJyZWxhdGVkVG8iLCBudWxsLCBhdHRhY2htZW50SWQpOwogICAgICAgIHZhciBhcnJheU9mUGFpcnMgPVtdOwogICAgICAgIGFycmF5T2ZQYWlycy5wdXNoKCJQYXRpZW50Q29ubmVjdF9fUENfRG9jdW1lbnRfU3RhdHVzX19jIiwgYmEpOwogICAgICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgIlBhdGllbnRDb25uZWN0X19QQ19Eb2N1bWVudF9fYyIsImRvY3VtZW50TG9nSWQiICwgYXJyYXlPZlBhaXJzKTsKICAgICAgICB9Ki8KICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICAvL3ZhciBjdXN0b21MYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYyxiYSk7IC8vRVJTMjAxMjA0ICM3NzMwMgogICAgLy9FUlMyMDEyMTEgVE9ETyBIQyBkYXRhIG1vZGVsIGlmIChjdXN0b21MYWJlbCkgbGFiZWw9Y3VzdG9tTGFiZWw7Cn0KaWYgKGxhYmVsKSB7IGRvYy5sYWJlbD1sYWJlbDsgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsgfSAvL0VSUzIwMTIxMSAjNzk1OTAKaWYgKHByb3ZpZGVyKSBhcnJPZlBhaXJzLnB1c2goIlhfQ29udGFjdF9OYW1lIixwcm92aWRlcik7CmlmIChmYWNpbGl0eSkgYXJyT2ZQYWlycy5wdXNoKCJYX0NvbnRhY3RfQWNjb3VudC5OYW1lIixmYWNpbGl0eSk7CmFsZXJ0KCJ0ZXN0aW5nIGRvYyIpOwppZiAoekRhdGEuY2xpZW50RGVsaXZlcnkpIHsgekRhdGEuY2xpZW50RGVsaXZlcnkoZG9jLGFyck9mUGFpcnMpOyB9IC8vRVJTMjEwNTI5ICM4MzAzMgphbGVydCgiRGVsaXZlcnkgQ29tcGxldGUgdGVzdGluZyIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKaWYgKDE9PTApIHsgLy9FUlMyMTA0MDMgIzgyNDAzIDJuZCB0YXNrIC0gbmV3QWN0aXZpdHkgb3IgZG93bnN0cmVhbSBpcyB0aGUgcHJvYmxlbQogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICd7InN0YXR1cyI6InN1Y2Nlc3MiLCJtZXNzYWdlIjoiRVhJVCBMT0dGQVgifScpOwogICAgYWxlcnQoIkVSUzIxMDQwMyAjODI0MDMgZXhhbXBsZSB0byBzdG9wIHRoZSBuZXdBY3Rpdml0eS5qc3AgZnJvbSBmaXJpbmchIik7Cn0KdmFyIHNmSWRzPSBbc2ZJRF07CiBpZih6RGF0YS5QY0RvY0lkKSBzZklkcy5wdXNoKHpEYXRhLlBjRG9jSWQpOyAvL1BWMjEwNjI5IHRvIGF0dGFjaCB0aGUgZmlsZSB0byBETAppZih6RGF0YS5zZklkQ29ubmVjdG9yKSBzZklkcy5wdXNoKHpEYXRhLnNmSWRDb25uZWN0b3IpOwovL3pEYXRhLmNsaWVudExpZ2h0bmluZ0ZpbGUoZG9jLHNmSWRzLHpEYXRhKTsKCi8vYXJyT2ZQYWlycy5wdXNoKCJQQ19QYWdlX0NvdW50X19jIixkb2MubnVtUGFnZXMpOwoKekRhdGEuZG9Ob3RDcmVhdGVMaWdodG5pbmdGaWxlID0gdHJ1ZTsgLy9QVjIxMDgyNwp6RGF0YS5uZXdEb2N1bWVudChkb2MsIGFyck9mUGFpcnMsICJQYXRpZW50Q29ubmVjdF9fUENfRG9jdW1lbnRfX2MiLCBudWxsLCBudWxsLCBudWxsLCBkb2MuWCgiWF9mYXhTdGF0dXMiKSk7IC8vUFYyMTA4MTkKLy9hcnJPZlBhaXJzPSBbXTsKLy9hbGVydCgiQEBAY2xpZW50U3RhY2siKTsKLy96RGF0YS5jbGllbnRTdGFjayhkb2MsIGFyck9mUGFpcnMpOy8vUFYyMTA4MjMKCgovKiBFTkQgUERGIFVQTE9BRCBDT0RFIFNOSVBQRVQgKi8="},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB191228 updated rule for Edge HC IDO Demo Org
alert("resetting to avoid button reverb");
alert("@@@ label = " + doc.label);
var documentId = X(doc,"documentId");
alert("123@@@pcdocumentID" + X(doc,"documentId") );

var nowTimeStamp = new Date().getTime() + "";
var formatNow = getCurDateAndTime(doc);

var sfID = X(doc,"X_activityOnID");
if (!sfID || sfID==="") { sfID=X(doc,"sfID"); alert("ERS200822 discovered "+sfID); } //ERS20825 #75685 <sfID>0033t000034UYkBAAW</sfID>
var docType=X(doc,"X_docTypeSent");
var provider="";
var facility="";
var label="";
var arrOfPairs = [];
//ERS200822 #75685 TODO move to clientFile how do I get it onto the docSet?
if (0 === sfID.indexOf("003")) {
provider = getSFField(doc, "Contact", "Name", null, sfID);
facility = getSFField(doc, "Contact", "Account.Name", null, sfID);
arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility);
} else if (0 === sfID.indexOf("500")) {
    alert("@@@calling getSFField for Provider");
provider = getSFField(doc, "Case", "Contact.Name", null, sfID); //PV210622 commented
facility = getSFField(doc, "Case", "Contact.Account.Name", null, sfID);
alert( "@@@Provider value"+provider);
//provider = "test provider"; //PV210622 added for testing
//facility = "test facility";
arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility);
//var patient = getSFField(doc, "Case", "Account.Name", null, sfID);
var patient = "test patient";
    var zStatus=X(doc,"X_reviewedStatus");
    if (zStatus==="") zStatus="Sent";
    if (zStatus==="Signed" || doc.URL.indexOf("TF")!=-1) {  
        docType="TF"; //ERS191211 HACK
        label=zStatus + " by " + provider + " " + " for " + patient;
        alert("Tell docType from "+ doc.URL+" and label="+label+" sfID="+sfID);
       //ERS201203 #77302 arrOfPairs.push("db-label", label);
    }  
    /*else if (0 ===sfID.index.Of("a1M")){
        caseId= getSFField(doc, "PatientConnect__PC_Document_cc", "Name", null, sfID);
    }*/
}
if (docType==="") docType=doc.docType;
if (docType==="") X(doc,"X_docType");
if (docType==="") X(doc,"ContactName");
doc.docType=docType;
if (!docType) {docType="FAX";} //ERS200822 #75685 desktop PDF with no coversheet

alert("@@@ docType = " + docType);

if (docType.indexOf(":")>-1) docType=docType.split(":")[0];

arrOfPairs.push("X_buttonAction0",X(doc,"X_buttonAction"));
arrOfPairs.push("X_buttonAction","");
arrOfPairs.push("db-BATES", sfID + "-" + docType);  
//arrOfPairs.push("X_attachedTo",sfID);
if(documentId) { //PV210719 added
arrOfPairs.push("X_attachedTo",sfID + "," + documentId);
} else {
arrOfPairs.push("X_attachedTo",sfID);
}
if (docType !== "") arrOfPairs.push("X_docType",docType);
if (1===1) {
    var ba=doc.X("X_faxStatus")+"";
    if ("Delivered" !== ba) { ba="Failed"; }
    if (documentId){
    var docarrOfPairs = []; //PV210719 added to updated the status of Document record
    docarrOfPairs.push("PatientConnect__PC_Document_Status__c", ba);
    if(ba=="Failed"){
        docarrOfPairs.push("PatientConnect__PC_Error__c",doc.X("X_faxStatusDetail"));
    }
    updateSFRecord(doc, "PatientConnect__PC_Document__c", documentId, docarrOfPairs);
    }
    alert("@@@sfID1"+ sfID);
    /*if (0 === sfID.indexOf("500")) {
        var attachmentId = getSFField(doc, "case",  "iCC_Attachment_Id__c", null, sfID);
        var documentLogId = getSFField(doc, "attachment", "relatedTo", null, attachmentId);
        var arrayOfPairs =[];
        arrayOfPairs.push("PatientConnect__PC_Document_Status__c", ba);
        updateSFRecord(doc, "PatientConnect__PC_Document__c","documentLogId" , arrayOfPairs);
        }*/
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>");
    arrOfPairs.push("X_buttonAction","");
    //var customLabel=zData.clientFile(doc,ba); //ERS201204 #77302
    //ERS201211 TODO HC data model if (customLabel) label=customLabel;
}
if (label) { doc.label=label; arrOfPairs.push("db-label", label); } //ERS201211 #79590
if (provider) arrOfPairs.push("X_Contact_Name",provider);
if (facility) arrOfPairs.push("X_Contact_Account.Name",facility);
alert("testing doc");
if (zData.clientDelivery) { zData.clientDelivery(doc,arrOfPairs); } //ERS210529 #83032
alert("Delivery Complete testing");
updateDB(doc, arrOfPairs);

if (1==0) { //ERS210403 #82403 2nd task - newActivity or downstream is the problem
    addPostExecutionScript(doc, '{"status":"success","message":"EXIT LOGFAX"}');
    alert("ERS210403 #82403 example to stop the newActivity.jsp from firing!");
}
var sfIds= [sfID];
 if(zData.PcDocId) sfIds.push(zData.PcDocId); //PV210629 to attach the file to DL
if(zData.sfIdConnector) sfIds.push(zData.sfIdConnector);
//zData.clientLightningFile(doc,sfIds,zData);

//arrOfPairs.push("PC_Page_Count__c",doc.numPages);

zData.doNotCreateLightningFile = true; //PV210827
zData.newDocument(doc, arrOfPairs, "PatientConnect__PC_Document__c", null, null, null, doc.X("X_faxStatus")); //PV210819
//arrOfPairs= [];
//alert("@@@clientStack");
//zData.clientStack(doc, arrOfPairs);//PV210823


/* END PDF UPLOAD CODE SNIPPET */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
