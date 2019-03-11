<!--
// Name: Create Substack
// Committer: judson.bruno@zpaper.com
// Update: JPB180709 added zStack; JPB180709 added zStack; JPB180709 added zStack; JPB180709 added zStack
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2018-07-09 18:56:59","active":true,"button":"Substack","name":"Create Substack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Substack","operation":"contains"}]},"consequence":{"doit":"Ly9mcm9tIEluZGV4CmFsZXJ0KCJAQEBAIFNwbGl0IHpTdGFjayBSdWxlIEZpcmVkIEBAQCMiKTsKLyogZG91YmxlLXF1b3RlLCBuZXdsaW5lIGNoYXJhY3RlcnMgKi8KdmFyIGRxID0gU3RyaW5nLmZyb21DaGFyQ29kZSgzNCk7CnZhciBubCA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMTApOwp2YXIgZm9ybWF0Tm93PWdldEN1ckRhdGVBbmRUaW1lKGRvYyk7Cgp2YXIgc3RhY2tJZCA9IFgoZG9jLCAiWF9zdGFjayIpOwp2YXIgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CnZhciBjb21wYW55Q29kZSA9IGRvYy5kZWxpdmVyZWRUbzsKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwovL0VSUzE3MDkwOSB6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24oZG9jLCJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CglzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKCXN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwoJekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYyxzdGFja0ZvbGRlciwgY29tcGFueUNvZGUsIHN0YWNrSWQpOwp9CnZhciBmYXhUeXBlID0gWChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOwovLyBHZXQgdGhlIGRvY3VtZW50IHR5cGUgKHdpbGwgYmUgdXNlZCB0byByb3V0ZSB0byBuZXh0IGZvbGRlcikKdmFyIGRvY1R5cGUgPSBYKGRvYywgIlhfRG9jdW1lbnRfVHlwZV9fYyIpOwp2YXIgcHJldkluZGV4UGFnZXMgPSBYKGRvYywgIlhfaW5kZXhlZFBhZ2VzIik7CnZhciBjdXJJbmRleFBhZ2VzID0gWChkb2MsICJYX2lkeFBhZ2VzIik7CmlmIChwcmV2SW5kZXhQYWdlcyAmJiBwcmV2SW5kZXhQYWdlcy5sZW5ndGggPiAwICYmIGN1ckluZGV4UGFnZXMgJiYgY3VySW5kZXhQYWdlcy5sZW5ndGggPiAwKSB7CglwcmV2SW5kZXhQYWdlcyArPSAiLCI7Cn0KY3VySW5kZXhQYWdlcyA9IHByZXZJbmRleFBhZ2VzICsgY3VySW5kZXhQYWdlczsKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4ZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgc2ZTdGFja0lkID0gWChkb2MsIlhfc2ZTdGFja0lkIik7CmlmIChzZlN0YWNrSWQgPT09IiIpIHsgLy9FUlMxNzA3MzEgIzQwNTkzCiAgICBYKGRvYywiWF9hdHRhY2hlZFRvIik7CiAgICBpZiAoc2ZTdGFja0lkLmxhc3RJbmRleE9mKCcvJykgPj0gMCkgewoJCXNmU3RhY2tJZCA9IHNmU3RhY2tJZC5zdWJzdHJpbmcoc2ZTdGFja0lkLmxhc3RJbmRleE9mKCcvJykrMSk7CgkJaWYgKHNmU3RhY2tJZC5pbmRleE9mKCcsJykgPj0gMCkgeyBzZlN0YWNrSWQgPSBzZlN0YWNrSWQuc3Vic3RyaW5nKDAsIHNmU3RhY2tJZC5pbmRleE9mKCcsJykpOyB9CiAgICB9Cn0KdmFyIGF0dGFjaFBhdGggPSBYKGRvYywiWF9hdHRhY2hlZFRvIik7CmFsZXJ0KCJAQEBAQEAgQ3VycmVudGx5IGF0dGFjaGVkIHRvIFpQQVBFUl9felN0YWNrX19jIHdpdGggSUQ6ICIgKyBzZlN0YWNrSWQpOwoKLyogU1BMSVQgT0ZGIE5FVyBTTklQUEVUIEhFUkUgKi8KdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CnNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJpbmRleCIsIHBhZ2VSYW5nZSk7Ci8vKgovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCi8vKgoKdmFyIHByaW9yaXR5PVgoZG9jLCJYX1pQQVBFUl9fUHJpb3JpdHlfX2MiKTsgLy9FUlMxNzA2MjYKdmFyIGxhYmVsMD0iIjsKdmFyIHRyaWFnZVR5cGU9ZG9jLmRvY1R5cGU7CnZhciBwYXRpZW50TmFtZTsKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCmFyck9mUGFpcnMgPSBbXTsKLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsZmF4VHlwZSk7IC8vSlBCMTgwMjE1IGNoYW5nZWQgZG9jdHlwZSBhbmQgZmF4dHlwZSBuYW1lCmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixhdHRhY2hQYXRoKTsgLy9FUlMxNzA2MjgKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdHJhY2soZG9jLCAielN0YWNrIFNwbGl0ICIsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHBhZ2VDb3VudCk7IC8vSlBCMTgwNzA5IGFkZGVkIHpTdGFjawphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5yZWFkeX4pO3VwZGF0ZURFU3RhdHVzKH5pbmRleGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7Ci8qIGVuZCBvZiBydWxlICovCgoKLy9mcm9tIG5ldyBzdGFjawp6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgLy93aG8gYW5kIHdoZXJlCgp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZQp2YXIgelN0YWNrPXpwKyJ6U3RhY2tfX2MiOyAvLyJTdGFja19fYyIKdmFyIHpUeXBlPSJGYXgiOyAvL0VSUzE4MDYxMgphbGVydCgiQEBAQHpUeXBlPSIrelR5cGUpOwphcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCB6VHlwZSk7CmFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgInpTcGxpdCBTdGFjayIpOyAvL0pQQjE4MDcwOSBhZGRlZCB6U3RhY2sKYWxlcnQoIkVSUzE4MDUwNSBkb2MuZGVsaXZlcmVkRnJvbT0iK2RvYy5kZWxpdmVyZWRGcm9tKTsKdmFyIGNoYW5uZWw9IkZheCI7IAppZiAoZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpPi0xIHx8IGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIi4iKT4tMSkge2NoYW5uZWw9IkVtYWlsIjt9IC8vRVJTMTgwNTA1ICM0ODEwMQplbHNlIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIxIikhPT0wKSB7Y2hhbm5lbD0iU2NhbiI7fSAvL0VSUzE4MDUwNSAjNDgxMDEgVE9ETyBpbnRlcm5hdGlvbmFsCmFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsY2hhbm5lbCk7CmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwphcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CmlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwppZiAoekRhdGEucHJvZ3JhbU5hbWUgPT09ICJ6Q2hhcnRhIikgewoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsKfQplbHNlIHsKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7Cn0KYXJyT2ZQYWlycy5wdXNoKHpwKyJQcm9ncmFtX05hbWVfX2MiLCB6RGF0YS5wcm9ncmFtTmFtZSk7CmFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIixkb2MuZGVsaXZlcmVkVG8pOyAvL0VSUzE3MDYyOCBjYWxsZXIgaWQKYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CmFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiU3BsaXQiKTsgLy9FUlMxNzA3MzEgIzQwNTkzIC8vRVJTMTgwNjEyICM0NjA0MAphcnJPZlBhaXJzLnB1c2goenArIlBhcmVudF9fYyIsc2ZTdGFja0lkKTsgLy8vL0VSUzE4MDYxMiAjNDYwNDAgWlBBUEVSX19QYXJlbnRfX2MKCnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCAielN0YWNrIHNwbGl0IG9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOyAvL0VSUzE4MDYxMiAjNDYwNDAKYWxlcnQoIiMjIyMgelN0YWNrIFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOyAvL0pQQjE4MDcwOSBhZGRlZCB6U3RhY2sKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIk5ldyB6U3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdyk7IC8vSlBCMTgwNzA5IGFkZGVkIHpTdGFjawphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsc2ZJZCk7IC8vRVJTMTcwNzI3ICM0MDQ0NwppZiAoMT09PTEpIHsgLy9FUlMxODAxMDMgc2V0IGFzIFJlY2VpdmVkICM0MTE1NQogICAgdmFyIGJhPSJTcGxpdCI7IC8vRVJTMTgwNjEyCiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5IGFnZW50IGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCn0KdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKLyogZW5kIG9mIHJ1bGUgKi8K"},"ordinal":14}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//from Index
alert("@@@@ Split zStack Rule Fired @@@#");
/* double-quote, newline characters */
var dq = String.fromCharCode(34);
var nl = String.fromCharCode(10);
var formatNow=getCurDateAndTime(doc);

var stackId = X(doc, "X_stack");
var stackFolder = stackId + "-STACK";
var companyCode = doc.deliveredTo;
/* Clear the trigger that invoked this rule */
//ERS170909 zData.clearTriggerCondition(doc,"X_buttonAction");
var indexInitialized = X(doc,"X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
	stackId = new Date().getTime() + "";
	stackFolder = stackId + "-STACK";
	zData.initializeStack(doc,stackFolder, companyCode, stackId);
}
var faxType = X(doc, "X_ZPAPER__faxType__c");
// Get the document type (will be used to route to next folder)
var docType = X(doc, "X_Document_Type__c");
var prevIndexPages = X(doc, "X_indexedPages");
var curIndexPages = X(doc, "X_idxPages");
if (prevIndexPages && prevIndexPages.length > 0 && curIndexPages && curIndexPages.length > 0) {
	prevIndexPages += ",";
}
curIndexPages = prevIndexPages + curIndexPages;
var arrOfPairs = [];
arrOfPairs.push("X_indexedPages", curIndexPages);
updateDB(doc,arrOfPairs);

var sfStackId = X(doc,"X_sfStackId");
if (sfStackId ==="") { //ERS170731 #40593
    X(doc,"X_attachedTo");
    if (sfStackId.lastIndexOf('/') >= 0) {
		sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/')+1);
		if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
}
var attachPath = X(doc,"X_attachedTo");
alert("@@@@@@ Currently attached to ZPAPER__zStack__c with ID: " + sfStackId);

/* SPLIT OFF NEW SNIPPET HERE */
var pageRange = X(doc,"X_idxPages");
splitDocumentForIndex(doc, "index", pageRange);
//*
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
//*

var priority=X(doc,"X_ZPAPER__Priority__c"); //ERS170626
var label0="";
var triageType=doc.docType;
var patientName;
unlockDocument(doc);

arrOfPairs = [];
/* CRN160825 Set the page count so that it does not have the parent page count */
var pageCount = zData.countPages(doc,pageRange);
alert("@@@@ pageCount = " + pageCount);
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
arrOfPairs.push("X_docType",faxType); //JPB180215 changed doctype and faxtype name
arrOfPairs.push("X_attachedTo",attachPath); //ERS170628
updateDB(doc,arrOfPairs);

track(doc, "zStack Split ", "Document with Id: " + doc.dbID, pageCount); //JPB180709 added zStack
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");
/* end of rule */


//from new stack
zData.setbrandprogram(doc); //who and where

var formatNow = getCurDateAndTime(doc);
var arrOfPairs = [];
var zp="ZPAPER__"; //ERS170626 now in the package
var zStack=zp+"zStack__c"; //"Stack__c"
var zType="Fax"; //ERS180612
alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", zType);
arrOfPairs.push(zp+"Status__c", "zSplit Stack"); //JPB180709 added zStack
alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);
var channel="Fax"; 
if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {channel="Email";} //ERS180505 #48101
else if (doc.deliveredFrom.indexOf("1")!==0) {channel="Scan";} //ERS180505 #48101 TODO international
arrOfPairs.push(zp+"Channel__c",channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
if (zData.programName === "zCharta") {
	arrOfPairs.push(zp+"Priority__c", "Urgent");
}
else {
	arrOfPairs.push(zp+"Priority__c", "Normal");
}
arrOfPairs.push(zp+"Program_Name__c", zData.programName);
arrOfPairs.push(zp+"sentFaxTo__c",doc.deliveredTo); //ERS170628 caller id
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
arrOfPairs.push(zp+"Stage__c", "Split"); //ERS170731 #40593 //ERS180612 #46040
arrOfPairs.push(zp+"Parent__c",sfStackId); ////ERS180612 #46040 ZPAPER__Parent__c

var sfId = createAndAttach(doc, zStack, "zStack split on " + formatNow, arrOfPairs); //ERS180612 #46040
alert("#### zStack Received. Attached to: " + sfId); //JPB180709 added zStack
arrOfPairs = [];
arrOfPairs.push("db-label", "New zStack received on " + formatNow); //JPB180709 added zStack
arrOfPairs.push("db-BATES", sfId + "-STACK");
arrOfPairs.push("X_sfStackId",sfId); //ERS170727 #40447
if (1===1) { //ERS180103 set as Received #41155
    var ba="Split"; //ERS180612
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_buttonAction","");
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by agent at "+now0+"<br/>"); //ERS170909 #40592
}
updateDB(doc, arrOfPairs);
/* end of rule */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
dmFyIGRlZm9ybT0kKCIjREVGb3Jtc0xpc3QiKS52YWwoKTsKaWYgKGRlZm9ybS5pbmRleE9mKCJSRU1TIik9PS0xKSB7CiAgICBhbGVydCgiU3Vic3RhY2tzIG9uIFJFTVMgb25seSIpOwogICAgcmV0dXJuIGZhbHNlOwp9IGVsc2UgewogICAgcmV0dXJuIHRydWU7Cn0=
//--- RULE VALIDATION CODE - END ---

</script>
