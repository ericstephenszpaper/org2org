<!--
// Name: Create Stack from Fax
// Committer: judson.bruno@zpaper.com
// Update: JPB180711 added program names; JPB180711 added Urgent Priority__c; JPB180711 added (zData.programName === "zPapyrus"); JPB180711 added (zData.programName === "zCARTa")
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2018-07-11 14:55:55","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMxNzA4MDQgZG9jVHlwZSBieSBPQ1IKdmFyIGtleXdvcmRzPVsiRU5STDpFbnJvbGxtZW50fiIsIkVOUkw6RU5ST0xMTUVOVH4iLCJDT046Q29uc2VudH4iLCJDT046Y29uc2VudH4iLCJISVBBQTpBVVRIT1JJWkFUSU9OfiIsIkhJUEFBOkhJUEFBfiIsIkhJUEFBOlBPUlRBQklMSVRZfiIsIlJFRjpSRUZFUlJBTCIsIlJFRjpSZWZlcnJhbCIsIkZJTjpXLTJ+IiwiSUM6TWVtYmVyIElEfiIsIkZBWDoiXTsgLy9KUEIxODA1MjMgQURERUQga2V5d29yZHMKCi8vRVJTMTcxMDEyIGtleXdvcmRzIGZvciBkZW1vCmtleXdvcmRzPVsiRU5STDpFbnJvbGxtZW50fiIsIkVOUkw6RU5ST0xMTUVOVH4iLCJDT046Q29uc2VudH4iLCJDT046Y29uc2VudH4iLCJISVBBQTpBVVRIT1JJWkFUSU9OfiIsIkhJUEFBOkhJUEFBfiIsIkhJUEFBOlBPUlRBQklMSVRZfiIsIlJFRjpSRUZFUlJBTCIsIlJFRjpSZWZlcnJhbCIsIkZJTjpXLTJ+IiwiSUM6TWVtYmVyIElEfiIsIkZBWDoiXTsgLy9KUEIxODA1MjMgQURERUQga2V5d29yZHMKCnpEYXRhLmRvY1R5cGVPQ1I9ekRhdGEuZG9jVHlwZXIoZG9jLGtleXdvcmRzKTsgLy9FUlMxNzEwMTIgVE9ETyBtaXNzaW5nIGZvciBNUAphbGVydCgiZG9jVHlwZSB3YXMgIitkb2MuZG9jVHlwZSsiIG5vdyAiKyB6RGF0YS5kb2NUeXBlT0NSKTsKdmFyIHpUeXBlPWRvYy5YKCJYX2RvY1R5cGUiKTsKaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlT0NSIix6RGF0YS5kb2NUeXBlT0NSKTsKCWFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsekRhdGEuZG9jVHlwZU9DUik7CiAgICB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOyAvL0VSUzE3MDMzMCBzYXZlZCBiZWxvdyBpbnRvIFNGIGZheFR5cGVfX2MgZmllbGQKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyczApOwp9Cgp6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgLy93aG8gYW5kIHdoZXJlCgphbGVydCgiIyMjIyBmYXggd2FzIGRlbGl2ZXJlZCB0byBudW1iZXI6ICIgKyBkb2MuZGVsaXZlcmVkVG8pOyAvL0pQQjE4MDYyNiBhZGRlZCBhbGVydCBkb2MuZGVsaXZlcmVkVG8KdmFyIGN1clByb2dyYW1OYW1lID0gekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbZG9jLmRlbGl2ZXJlZFRvXTsgLy9KUEIxODA2MjYgYWRkZWQgdmFyIGN1clByb2dyYW1OYW1lCnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgenA9IlpQQVBFUl9fIjsgLy9FUlMxNzA2MjYgbm93IGluIHRoZSBwYWNrYWdlCnZhciB6U3RhY2s9enArInpTdGFja19fYyI7IC8vIlN0YWNrX19jIgoKYWxlcnQoIkBAQEB6VHlwZT0iK3pUeXBlKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwgelR5cGUpOwphcnJPZlBhaXJzLnB1c2goenArIlN0YXR1c19fYyIsICJOZXcgelN0YWNrIik7IC8vSlBCMTgwNzA5IGFkZGVkIHpTdGFjawoKYWxlcnQoIkVSUzE4MDUwNSBkb2MuZGVsaXZlcmVkRnJvbT0iK2RvYy5kZWxpdmVyZWRGcm9tKTsKCnZhciBjaGFubmVsPSJGYXgiOyAKdmFyIGNoYW5uZWw9IkVtYWlsIjsgLy9KUEIxODA1MjMKdmFyIGNoYW5uZWw9IlNjYW4iOyAvL0pQQjE4MDUyMwppZiAoZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpPi0xIHx8IGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIi4iKT4tMSkge2NoYW5uZWw9IkVtYWlsIjt9IC8vRVJTMTgwNTA1ICM0ODEwMQplbHNlIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIxIikhPT0wKSB7Y2hhbm5lbD0iU2NhbiI7fSAvL0VSUzE4MDUwNSAjNDgxMDEgVE9ETyBpbnRlcm5hdGlvbmFsCmFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsY2hhbm5lbCk7CmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwphcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIixjdXJQcm9ncmFtTmFtZSkgLy9KUEIxODA2MjYgZ2VuZXJhbGl6ZWQgcHJvZ3JhbSBuYW1lIC8vSlBCMTgwNzExIGFkZGVkIHByb2dyYW0gbmFtZXMKaWYgKHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEucGF0RW5yb2xsUXVldWVJZCk7CmlmICh6RGF0YS5wcm9ncmFtTmFtZSA9PT0gInpDaGFydGEiKSB7CglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVyZ2VudCIpOyAvL0pQQjE4MDcxMSBhZGRlZCBVcmdlbnQgUHJpb3JpdHlfX2MKaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSAielBhcHlydXMiKSB7ICAvL0pQQjE4MDcxMSBhZGRlZCAoekRhdGEucHJvZ3JhbU5hbWUgPT09ICJ6UGFweXJ1cyIpCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk1lZGl1bSIpOyAvL0pQQjE4MDcxMCBhZGRlZCBNZWRpdW0gUHJpb3JpdHlfX2MKaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSAiekNBUlRhIikgeyAvL0pQQjE4MDcxMSBhZGRlZCAoekRhdGEucHJvZ3JhbU5hbWUgPT09ICJ6Q0FSVGEiKQoJLy9hcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7CS8vSlBCMTgwNzEwIGFkZGVkIENyaXRpY2FsIFByaW9yaXR5X19jCn19fQplbHNlIHsKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7Cn0KLy9hcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLGRvYy5kZWxpdmVyZWRUbyk7IC8vRVJTMTcwNjI4IGNhbGxlciBpZAphcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLGRvYy5kZWxpdmVyZWRGcm9tKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyAvL0VSUzE3MDczMSAjNDA1OTMKCnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCAiTmV3ICIgKyBjdXJQcm9ncmFtTmFtZSArICIgelN0YWNrIHJlY2VpdmVkIiwgYXJyT2ZQYWlycyk7IC8vSlBCMTgwNjI2IHJlbW92ZWQgKyBmb3JtYXROb3cgZnJvbSBsaW5rCmFsZXJ0KCIjIyMjIFN0YWNrIFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOwphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiTmV3ICIgKyBjdXJQcm9ncmFtTmFtZSArICIgelN0YWNrIHJlY2VpdmVkICIpOyAvL0pQQjE4MDYyNiByZWxhYmVsZWQgdG8gcHJvZ3JhbSBKUEIxODA2MjYgcmVtb3ZlZCArIGZvcm1hdE5vdwphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsc2ZJZCk7IC8vRVJTMTcwNzI3ICM0MDQ0NwppZiAoMT09PTEpIHsgLy9FUlMxODAxMDMgc2V0IGFzIFJlY2VpdmVkICM0MTE1NQogICAgdmFyIGJhPSJSZWNlaXZlZCI7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKCWFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwICsgIiwgYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIKfQphbGVydCgiQEBAIGNhbGxpbmcgdXBkYXRlREIgd2l0aCBwYXJhbXM6IEBAQEBAQEBAQEBAQCIpOwphbGVydChhcnJPZlBhaXJzKTsKYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKIC8qIEVORCAqLw=="},"ordinal":16}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS170804 docType by OCR
var keywords=["ENRL:Enrollment~","ENRL:ENROLLMENT~","CON:Consent~","CON:consent~","HIPAA:AUTHORIZATION~","HIPAA:HIPAA~","HIPAA:PORTABILITY~","REF:REFERRAL","REF:Referral","FIN:W-2~","IC:Member ID~","FAX:"]; //JPB180523 ADDED keywords

//ERS171012 keywords for demo
keywords=["ENRL:Enrollment~","ENRL:ENROLLMENT~","CON:Consent~","CON:consent~","HIPAA:AUTHORIZATION~","HIPAA:HIPAA~","HIPAA:PORTABILITY~","REF:REFERRAL","REF:Referral","FIN:W-2~","IC:Member ID~","FAX:"]; //JPB180523 ADDED keywords

zData.docTypeOCR=zData.docTyper(doc,keywords); //ERS171012 TODO missing for MP
alert("docType was "+doc.docType+" now "+ zData.docTypeOCR);
var zType=doc.X("X_docType");
if (doc.docType != zData.docTypeOCR) {
    var arrOfPairs0 = [];
    arrOfPairs0.push("X_docTypeOCR",zData.docTypeOCR);
	arrOfPairs0.push("X_docType",zData.docTypeOCR);
    zType=zData.docTypeOCR; //ERS170330 saved below into SF faxType__c field
    updateDB(doc, arrOfPairs0);
}

zData.setbrandprogram(doc); //who and where

alert("#### fax was delivered to number: " + doc.deliveredTo); //JPB180626 added alert doc.deliveredTo
var curProgramName = zData.supportedProgramsMap[doc.deliveredTo]; //JPB180626 added var curProgramName
var formatNow = getCurDateAndTime(doc);
var arrOfPairs = [];
var zp="ZPAPER__"; //ERS170626 now in the package
var zStack=zp+"zStack__c"; //"Stack__c"

alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", zType);
arrOfPairs.push(zp+"Status__c", "New zStack"); //JPB180709 added zStack

alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);

var channel="Fax"; 
var channel="Email"; //JPB180523
var channel="Scan"; //JPB180523
if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {channel="Email";} //ERS180505 #48101
else if (doc.deliveredFrom.indexOf("1")!==0) {channel="Scan";} //ERS180505 #48101 TODO international
arrOfPairs.push(zp+"Channel__c",channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
arrOfPairs.push(zp+"Program_Name__c",curProgramName) //JPB180626 generalized program name //JPB180711 added program names
if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
if (zData.programName === "zCharta") {
	arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB180711 added Urgent Priority__c
if (zData.programName === "zPapyrus") {  //JPB180711 added (zData.programName === "zPapyrus")
	arrOfPairs.push(zp+"Priority__c", "Medium"); //JPB180710 added Medium Priority__c
if (zData.programName === "zCARTa") { //JPB180711 added (zData.programName === "zCARTa")
	//arrOfPairs.push(zp+"Priority__c", "Critical");	//JPB180710 added Critical Priority__c
}}}
else {
	arrOfPairs.push(zp+"Priority__c", "Normal");
}
//arrOfPairs.push(zp+"Program_Name__c", zData.programName);
arrOfPairs.push(zp+"sentFaxTo__c",doc.deliveredTo); //ERS170628 caller id
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
arrOfPairs.push(zp+"Stage__c", "Received"); //ERS170731 #40593

var sfId = createAndAttach(doc, zStack, "New " + curProgramName + " zStack received", arrOfPairs); //JPB180626 removed + formatNow from link
alert("#### Stack Received. Attached to: " + sfId);
arrOfPairs = [];
arrOfPairs.push("db-label", "New " + curProgramName + " zStack received "); //JPB180626 relabeled to program JPB180626 removed + formatNow
arrOfPairs.push("db-BATES", sfId + "-STACK");
arrOfPairs.push("X_sfStackId",sfId); //ERS170727 #40447
if (1===1) { //ERS180103 set as Received #41155
    var ba="Received";
    var now0 = getCurDateAndTime(doc,false,true);
	alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by agent at "+now0+"<br/>"); //ERS170909 #40592
}
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
alert(arrOfPairs);
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
updateDB(doc, arrOfPairs);
 /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
