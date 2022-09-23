<!--
// Name: DELIVERY_COMPLETE
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV220923 updated from dev-gw to gw
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2022-09-23 12:10:03","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTEyMjggdXBkYXRlZCBydWxlIGZvciBFZGdlIEhDIElETyBEZW1vIE9yZwphbGVydCgicmVzZXR0aW5nIHRvIGF2b2lkIGJ1dHRvbiByZXZlcmIiKTsKYWxlcnQoIkBAQCBsYWJlbCA9ICIgKyBkb2MubGFiZWwpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgbm93VGltZVN0YW1wID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24wIixYKGRvYywiWF9idXR0b25BY3Rpb24iKSk7CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKdmFyIHNmSUQgPSBYKGRvYywiWF9hY3Rpdml0eU9uSUQiKTsKaWYgKCFzZklEIHx8IHNmSUQ9PT0iIikgeyBzZklEPVgoZG9jLCJzZklEIik7IGFsZXJ0KCJFUlMyMDA4MjIgZGlzY292ZXJlZCAiK3NmSUQpOyB9IC8vRVJTMjA4MjUgIzc1Njg1IDxzZklEPjAwMzN0MDAwMDM0VVlrQkFBVzwvc2ZJRD4KdmFyIGRvY1R5cGU9WChkb2MsIlhfZG9jVHlwZVNlbnQiKTsKdmFyIHByb3ZpZGVyOwp2YXIgZmFjaWxpdHk7CnZhciBsYWJlbD0iIjsKCi8vRVJTMjAwODIyICM3NTY4NSBUT0RPIG1vdmUgdG8gY2xpZW50RmlsZSBob3cgZG8gSSBnZXQgaXQgb250byB0aGUgZG9jU2V0PwppZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCIwMDMiKSkgeyAgICAKICAgIHByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIk5hbWUiLCBudWxsLCBzZklEKTsKICAgIGZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJTZW50IHRvICIgKyBwcm92aWRlciArICIgIiArICIgYXQgIiArIGZhY2lsaXR5KTsKfSBlbHNlIGlmICgwID09PSBzZklELmluZGV4T2YoIjUwMCIpKSB7CiAgICBwcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDb250YWN0Lk5hbWUiLCBudWxsLCBzZklEKTsKICAgIGZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNvbnRhY3QuQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIlNlbnQgdG8gIiArIHByb3ZpZGVyICsgIiAiICsgIiBhdCAiICsgZmFjaWxpdHkpOwogICAgdmFyIHBhdGllbnQgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7CiAgICB2YXIgelN0YXR1cz1YKGRvYywiWF9yZXZpZXdlZFN0YXR1cyIpOwogICAgaWYgKHpTdGF0dXM9PT0iIikgelN0YXR1cz0iU2VudCI7CiAgICBpZiAoelN0YXR1cz09PSJTaWduZWQiIHx8IGRvYy5VUkwuaW5kZXhPZigiVEYiKSE9LTEpIHsKICAgICAgICBkb2NUeXBlPSJURiI7IC8vRVJTMTkxMjExIEhBQ0sKICAgICAgICBsYWJlbD16U3RhdHVzICsgIiBieSAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGZvciAiICsgcGF0aWVudDsKICAgICAgICBhbGVydCgiVGVsbCBkb2NUeXBlIGZyb20gIisgZG9jLlVSTCsiIGFuZCBsYWJlbD0iK2xhYmVsKyIgc2ZJRD0iK3NmSUQpOwogICAgICAgLy9FUlMyMDEyMDMgIzc3MzAyIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICB9Cn0KaWYgKGRvY1R5cGU9PT0iIikgZG9jVHlwZT1kb2MuZG9jVHlwZTsKaWYgKGRvY1R5cGU9PT0iIikgWChkb2MsIlhfZG9jVHlwZSIpOwppZiAoZG9jVHlwZT09PSIiKSBYKGRvYywiQ29udGFjdE5hbWUiKTsKZG9jLmRvY1R5cGU9ZG9jVHlwZTsKaWYgKCFkb2NUeXBlKSB7ZG9jVHlwZT0iRkFYIjt9IC8vRVJTMjAwODIyICM3NTY4NSBkZXNrdG9wIFBERiB3aXRoIG5vIGNvdmVyc2hlZXQKYWxlcnQoIkBAQCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOwppZiAoZG9jVHlwZS5pbmRleE9mKCI6Iik+LTEpIGRvY1R5cGU9ZG9jVHlwZS5zcGxpdCgiOiIpWzBdOwphbGVydCgiRVJTLjIxMDkxMiBzc2xGYXg9ZG9jLm9yZ1hNTCBhbmQgQkFURVM9Iitkb2MuQkFURVMpOwppZiAoKDE9PTAgfHwgZG9jLkJBVEVTPT0iIikgJiYgIXpEYXRhLnNzbEZheCkgeyAvL0VSUzIxMDkxMiAjODM3NjcgbG9nRmF4IG92ZXJ3cml0ZQogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSUQgKyAiLSIgKyBkb2NUeXBlKTsKfQphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsc2ZJRCk7CmlmIChkb2NUeXBlICE9PSAiIikgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLGRvY1R5cGUpOwppZiAoMT09PTEpIHsKICAgIHZhciBiYT1kb2MuWCgiWF9mYXhTdGF0dXMiKSsiIjsKICAgIGlmICgiRGVsaXZlcmVkIiAhPT0gYmEpIHsgYmE9IkZhaWxlZCI7IH0KICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICAvL3ZhciBjdXN0b21MYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYyxiYSk7IC8vRVJTMjAxMjA0ICM3NzMwMgogICAgLy9FUlMyMDEyMTEgVE9ETyBIQyBkYXRhIG1vZGVsIGlmIChjdXN0b21MYWJlbCkgbGFiZWw9Y3VzdG9tTGFiZWw7CiAgICB2YXIgZG9jdW1lbnRJZCA9IFgoZG9jLCJzZklEIik7IC8vUFYyMjA2MjIKICAgIGFsZXJ0KCJEb2N1bWVudCBJZCBpczogIitkb2N1bWVudElkKTsKICAgIGlmIChkb2N1bWVudElkKXsKICAgIHZhciBkb2NhcnJPZlBhaXJzID0gW107IAogICAgaWYoYmEgPT0gIkRlbGl2ZXJlZCIpewogICAgZG9jYXJyT2ZQYWlycy5wdXNoKCJMRUFQX1N0YXR1c19fYyIsICJEZWxpdmVyZWQiKTsKICAgIH0gZWxzZSB7CiAgICAgICAgZG9jYXJyT2ZQYWlycy5wdXNoKCJMRUFQX1N0YXR1c19fYyIsICJSZWplY3RlZCIpOwogICAgfQogICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCAiTEVBUF9PdXRib3VuZF9Db3JyZXNwb25kZW5jZV9SZXF1ZXN0X19jIiwgZG9jdW1lbnRJZCwgZG9jYXJyT2ZQYWlycyk7CiAgICB9Cn0KaWYgKGxhYmVsKSB7IGRvYy5sYWJlbD1sYWJlbDsgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsgfSAvL0VSUzIwMTIxMSAjNzk1OTAKYXJyT2ZQYWlycy5wdXNoKCJYX0NvbnRhY3RfTmFtZSIscHJvdmlkZXIpOwphcnJPZlBhaXJzLnB1c2goIlhfQ29udGFjdF9BY2NvdW50Lk5hbWUiLGZhY2lsaXR5KTsKaWYgKHpEYXRhLmNsaWVudERlbGl2ZXJ5KSB7IHpEYXRhLmNsaWVudERlbGl2ZXJ5KGRvYyxhcnJPZlBhaXJzKTsgfSAvL0VSUzIxMDUyNyAjODMwMzIKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCi8vdmFyIGNzPShkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKyIiK3pEYXRhLnpjaGFubmVsLmZheCk7IAovL2FsZXJ0KCJFUlMyMjA4MjMgIit6RGF0YS56TW9kZSsiIGNzIitjcyk7CnZhciB6Y2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fIisiekNoYW5uZWwxX19jIik7CmFsZXJ0KCJFUlMyMjA4MjMgemM9Iit6Y2hhbm5lbCk7CmlmICh6Y2hhbm5lbCAmJiB6Y2hhbm5lbC5pbmRleE9mKCJ7Iik+LTEpIHpjaGFubmVsPUpTT04ucGFyc2UoemNoYW5uZWwpOwppZiAoekRhdGEuem1vZGUpIHsKICAgIHRyeSB7IC8vRVJTMjEwNTEzIHRyeS9jYXRjaCAvL0VSUzIxMDkyMSBmcm9tIGdpdHJvb2xzIG9uIGR2MTQgIzg0MDg1CiAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIGlmIChzZklELmluZGV4T2YoIjAwMyIpIT09MCkgeyAvL0VSUzIxMDUxMyBub3QgYSBjb250YWN0CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiV2hhdElkIixzZklEKTsKICAgICAgICB9IGVsc2UgeyBhcnJPZlBhaXJzLnB1c2goIldob0lkIixzZklEKTsgfQogICAgICAgIGlmICgxPT0xKSB7IC8vRVJTMjIwNzE5ICM5MjcxNiAKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCJDb21wbGV0ZWQiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJBY3Rpdml0eURhdGUiLHpEYXRhLm5vdyk7CiAgICAgICAgICAgIGlmICghZG9jLlhfcGFnZXMpIHsgZG9jLlhfcGFnZXM9ZG9jLm51bVBhZ2VzOyB9IC8vRVJTMjIwNzE5ICM5MjcxNiAKICAgICAgICB9CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJTdWJqZWN0IixiYSsiOiAiK2RvYy5sYWJlbCsiIHRvICIrWChkb2MsIkNvbnRhY3RGYXgiKSk7IC8vRVJTMjIwODI1ICM5MzI2MiBhZGQgZGVzdGluYXRpb24KICAgICAgICAvL2Fyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLGJhKyI6ICIrZG9jLmxhYmVsKyIgKCIrIGRvY1R5cGUrIikgIisgZG9jLlhfcGFnZXMgKyIgcGFnZXMgaXMgc3RvcmVkIGluICIrZG9jLmtiRGF0YS5zZlNlcnZlcisiLyIrbGlua2VkSWQpOwogICAgICAgIC8vVE9ETyB1c2UgZ3cgYW5kIHBob25lCiAgICAgICAgdmFyIGZheD0iIjsKICAgICAgICBpZiAoemNoYW5uZWwgJiYgemNoYW5uZWwuZmF4KSBmYXg9emNoYW5uZWwuZmF4OyBpZiAoIWZheCkgeyBmYXg9IjE2Nzg3NzEwMzgzJiI7IGFsZXJ0KCJUT0RPMjIwODIzIGxvb2t1cCBmYXggb2YgIitmYXgpOyB9CiAgICAgICAgdmFyIHpTZXJ2ZXI9Imd3IjsKICAgICAgICBpZiAoMT09MSkgeyB6U2VydmVyPSJndyI7IH0gLy9DTUEyMjA4MjUgY2hhbmdlZCB0byBkZXYtZ3cuenBhcGVyLmNvbSBFUlMyMjA4MjUgIzkzMjYyIFRPRE8gZ3cuenBhcGVyLmNvbS9yZWQvIHJlZGlyZWN0IGNsaWNrdXAgaHR0cHM6Ly9hcHAuY2xpY2t1cC5jb20vdC8ydno4cXc5IC8vUFYyMjA5MjMgdXBkYXRlZCBmcm9tIGRldi1ndyB0byBndwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLGJhKyI6ICIrZG9jLmxhYmVsKyIgKCIrIGRvY1R5cGUrIikgIisgZG9jLlhfcGFnZXMgKyIgcGFnZXMgaXMgc3RvcmVkIGluIGh0dHBzOi8vIit6U2VydmVyKyIuenBhcGVyLmNvbS9yZWQvemlwcGkvdmlldy9IVE1MLyIrZG9jLmRiSUQrIj9jaGFubmVsPSIrZmF4KTsKICAgICAgICB2YXIgbmV3QWN0PWNyZWF0ZVNGUmVjb3JkKGRvYywiVGFzayIsbnVsbCxhcnJPZlBhaXJzKTsgLy9FUlMyMTA0MjUgbmV3IGFjdGl2aXR5IG51bGwgZm9yIE5hbWUKICAgIH0gY2F0Y2ggKGUpIHsKICAgICAgICBhbGVydCgiRVJTMjEwNTEzICM4MjA4MSBpcyBTRiBoYXZpbmcgdHJvdWJsZT8gTmV3IGFjdGl2aXR5IGZhaWxlZCBvbiAiK3NmSUQrIiBmb3IgIisgbGlua2VkSWQrIiBlcnJvcjoiK2UpOwogICAgfQp9CmlmICgxPT0wIHx8IHpEYXRhLnpNb2RlIHx8IHpEYXRhLnptb2RlKSB7IC8vRVJTMjIwODIzICM5MzI2MiB6bW9kZSAvL0VSUzIxMDQwMyAjODI0MDMgMm5kIHRhc2sgLSBuZXdBY3Rpdml0eSBvciBkb3duc3RyZWFtIGlzIHRoZSBwcm9ibGVtCiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgJ3sic3RhdHVzIjoic3VjY2VzcyIsIm1lc3NhZ2UiOiJFWElUIExPR0ZBWCJ9Jyk7CiAgICAvL0VSUzIyMDkwNiBub3QgbmVlZGVkIHZhciB4RmF4ZWQgPSBYKGRvYywiWF9yZXZpZXdzIik7Ly9QVjIyMDkwNiBhZGRlZCBmb3IgYWN0aXZpdHlJRAogICAgYWxlcnQoIkVSUzIxMDQwMyAjODI0MDMgZXhhbXBsZSB0byBzdG9wIHRoZSBuZXdBY3Rpdml0eS5qc3AgZnJvbSBmaXJpbmchIik7Cn0KLyogRU5EIFBERiBVUExPQUQgQ09ERSBTTklQUEVUICov"},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB191228 updated rule for Edge HC IDO Demo Org
alert("resetting to avoid button reverb");
alert("@@@ label = " + doc.label);
var arrOfPairs = [];
var nowTimeStamp = new Date().getTime() + "";
var formatNow = getCurDateAndTime(doc);
arrOfPairs.push("X_buttonAction0",X(doc,"X_buttonAction"));
arrOfPairs.push("X_buttonAction","");
updateDB(doc, arrOfPairs);
var sfID = X(doc,"X_activityOnID");
if (!sfID || sfID==="") { sfID=X(doc,"sfID"); alert("ERS200822 discovered "+sfID); } //ERS20825 #75685 <sfID>0033t000034UYkBAAW</sfID>
var docType=X(doc,"X_docTypeSent");
var provider;
var facility;
var label="";

//ERS200822 #75685 TODO move to clientFile how do I get it onto the docSet?
if (0 === sfID.indexOf("003")) {    
    provider = getSFField(doc, "Contact", "Name", null, sfID);
    facility = getSFField(doc, "Contact", "Account.Name", null, sfID);
    arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility);
} else if (0 === sfID.indexOf("500")) {
    provider = getSFField(doc, "Case", "Contact.Name", null, sfID);
    facility = getSFField(doc, "Case", "Contact.Account.Name", null, sfID);
    arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility);
    var patient = getSFField(doc, "Case", "Account.Name", null, sfID);
    var zStatus=X(doc,"X_reviewedStatus");
    if (zStatus==="") zStatus="Sent";
    if (zStatus==="Signed" || doc.URL.indexOf("TF")!=-1) {
        docType="TF"; //ERS191211 HACK
        label=zStatus + " by " + provider + " " + " for " + patient;
        alert("Tell docType from "+ doc.URL+" and label="+label+" sfID="+sfID);
       //ERS201203 #77302 arrOfPairs.push("db-label", label);
    }
}
if (docType==="") docType=doc.docType;
if (docType==="") X(doc,"X_docType");
if (docType==="") X(doc,"ContactName");
doc.docType=docType;
if (!docType) {docType="FAX";} //ERS200822 #75685 desktop PDF with no coversheet
alert("@@@ docType = " + docType);
if (docType.indexOf(":")>-1) docType=docType.split(":")[0];
alert("ERS.210912 sslFax=doc.orgXML and BATES="+doc.BATES);
if ((1==0 || doc.BATES=="") && !zData.sslFax) { //ERS210912 #83767 logFax overwrite
    arrOfPairs.push("db-BATES", sfID + "-" + docType);
}
arrOfPairs.push("X_attachedTo",sfID);
if (docType !== "") arrOfPairs.push("X_docType",docType);
if (1===1) {
    var ba=doc.X("X_faxStatus")+"";
    if ("Delivered" !== ba) { ba="Failed"; }
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>");
    arrOfPairs.push("X_buttonAction","");
    //var customLabel=zData.clientFile(doc,ba); //ERS201204 #77302
    //ERS201211 TODO HC data model if (customLabel) label=customLabel;
    var documentId = X(doc,"sfID"); //PV220622
    alert("Document Id is: "+documentId);
    if (documentId){
    var docarrOfPairs = []; 
    if(ba == "Delivered"){
    docarrOfPairs.push("LEAP_Status__c", "Delivered");
    } else {
        docarrOfPairs.push("LEAP_Status__c", "Rejected");
    }
    updateSFRecord(doc, "LEAP_Outbound_Correspondence_Request__c", documentId, docarrOfPairs);
    }
}
if (label) { doc.label=label; arrOfPairs.push("db-label", label); } //ERS201211 #79590
arrOfPairs.push("X_Contact_Name",provider);
arrOfPairs.push("X_Contact_Account.Name",facility);
if (zData.clientDelivery) { zData.clientDelivery(doc,arrOfPairs); } //ERS210527 #83032
updateDB(doc, arrOfPairs);

//var cs=(doc.kbData.deploymentInfo+""+zData.zchannel.fax); 
//alert("ERS220823 "+zData.zMode+" cs"+cs);
var zchannel=XCustomSetting(doc,"ZPAPER__"+"zChannel1__c");
alert("ERS220823 zc="+zchannel);
if (zchannel && zchannel.indexOf("{")>-1) zchannel=JSON.parse(zchannel);
if (zData.zmode) {
    try { //ERS210513 try/catch //ERS210921 from gitrools on dv14 #84085
        arrOfPairs = [];
        if (sfID.indexOf("003")!==0) { //ERS210513 not a contact
            arrOfPairs.push("WhatId",sfID);
        } else { arrOfPairs.push("WhoId",sfID); }
        if (1==1) { //ERS220719 #92716 
            arrOfPairs.push("Status","Completed");
            arrOfPairs.push("ActivityDate",zData.now);
            if (!doc.X_pages) { doc.X_pages=doc.numPages; } //ERS220719 #92716 
        }
        arrOfPairs.push("Subject",ba+": "+doc.label+" to "+X(doc,"ContactFax")); //ERS220825 #93262 add destination
        //arrOfPairs.push("Description",ba+": "+doc.label+" ("+ docType+") "+ doc.X_pages +" pages is stored in "+doc.kbData.sfServer+"/"+linkedId);
        //TODO use gw and phone
        var fax="";
        if (zchannel && zchannel.fax) fax=zchannel.fax; if (!fax) { fax="16787710383&"; alert("TODO220823 lookup fax of "+fax); }
        var zServer="gw";
        if (1==1) { zServer="gw"; } //CMA220825 changed to dev-gw.zpaper.com ERS220825 #93262 TODO gw.zpaper.com/red/ redirect clickup https://app.clickup.com/t/2vz8qw9 //PV220923 updated from dev-gw to gw
        arrOfPairs.push("Description",ba+": "+doc.label+" ("+ docType+") "+ doc.X_pages +" pages is stored in https://"+zServer+".zpaper.com/red/zippi/view/HTML/"+doc.dbID+"?channel="+fax);
        var newAct=createSFRecord(doc,"Task",null,arrOfPairs); //ERS210425 new activity null for Name
    } catch (e) {
        alert("ERS210513 #82081 is SF having trouble? New activity failed on "+sfID+" for "+ linkedId+" error:"+e);
    }
}
if (1==0 || zData.zMode || zData.zmode) { //ERS220823 #93262 zmode //ERS210403 #82403 2nd task - newActivity or downstream is the problem
    addPostExecutionScript(doc, '{"status":"success","message":"EXIT LOGFAX"}');
    //ERS220906 not needed var xFaxed = X(doc,"X_reviews");//PV220906 added for activityID
    alert("ERS210403 #82403 example to stop the newActivity.jsp from firing!");
}
/* END PDF UPLOAD CODE SNIPPET */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
