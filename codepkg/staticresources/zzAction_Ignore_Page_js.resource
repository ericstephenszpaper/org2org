<!--
// Name: Ignore Page
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: reverted
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-12 13:40:33","active":true,"button":"Ignore","name":"Ignore Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Junk","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSWdub3JlIFBhZ2UgUnVsZSBGaXJlZCBAQEAjIik7IC8vRVJTMTkwNjE3IHJlZmFjdG9yZWQKCnZhciBzZlN0YWNrSWQ9WChkb2MsJ1hfc2ZTdGFja0lkJyk7CmlmKCFzZlN0YWNrSWQpewogIHNmU3RhY2tJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7ICAKfQoKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsKdmFyIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwp2YXIgY29tcGFueUNvZGUgPSBkb2MuZGVsaXZlcmVkVG87Ci8qIENsZWFyIHRoZSB0cmlnZ2VyIHRoYXQgaW52b2tlZCB0aGlzIHJ1bGUgKi8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uKGRvYywgIlhfYnV0dG9uQWN0aW9uIik7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsICJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CiAgICBzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwogICAgekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYywgc3RhY2tGb2xkZXIsIGNvbXBhbnlDb2RlLCBzdGFja0lkKTsKfQp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZ25vcmVkUGFnZXMiKTsKaWYgKGN1ckluZGV4UGFnZXMgJiYgY3VySW5kZXhQYWdlcy5sZW5ndGggPiAwKSB7CiAgICBjdXJJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzICs9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwoKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJJZ25vcmVkIik7IC8vUFYxOTA5MTEgdG8gdXBkYXRlIGNoaWxkIHN0YWNrIHN0YXR1cyB0byBjb21wbGV0ZQovL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50X19jIiwgekRhdGEucGF0aWVudElkKTsKLy9hcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsekRhdGEuY2FzZUlkKTsKLy9hcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fRmlyc3ROYW1lX19jIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7Ci8vYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0xhc3ROYW1lX19jIiwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIHpEYXRhLlhfWlBBUEVSX19mYXhUeXBlX19jKTsKaWYoekRhdGEuWF9DYXNlX1JlY29yZF9UeXBlX19jICYmIHpEYXRhLlhfQ2FzZV9SZWNvcmRfVHlwZV9fYyAhPSAiRE9OT1RfU0FWRSIgKWFyck9mUGFpcnMucHVzaCgiQ2FzZV9SZWNvcmRfVHlwZV9fYyIsekRhdGEuWF9DYXNlX1JlY29yZF9UeXBlX19jKTsvL1BWMTkxMDI0IHVwZGF0ZSB0aGUgY2FzZSByZWNvcmQgdHlwZQphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwppZiggekRhdGEuWF9QcmVzY3JpcHRpb25fX2MgKSAgYXJyT2ZQYWlycy5wdXNoKCJQcmVzY3JpcHRpb25fX2MiLHpEYXRhLlhfUHJlc2NyaXB0aW9uX19jKTsgLy9QVjE5MTAyNSB0byB1cGRhdGUgUHJlc2NyaXB0aW9uCnZhciBjaGlsZFN0YWNrSWQ9ekRhdGEuY2xpZW50Q2hpbGRTdGFjayhkb2MsYXJyT2ZQYWlycyxzZlN0YWNrSWQpOyAvL0VSUzE5MDgxMCBjcmVhdGUgY2hpbGQgc3RhY2sgZm9yIHNwbGl0IEVSUzE5MDgxMSBjbGllbnRDaGlsZFN0YWNrCi8vaWYgKGNoaWxkU3RhY2tJZCkge2F0dGFjaFBhdGgrPSIsIitzZlN0YWNrSWQrIiwiK2NoaWxkU3RhY2tJZDsgYXR0YWNoUGF0aD1hdHRhY2hQYXRoLnJlcGxhY2UoIi8sPyIsIi8iKTsgfSAvL0VSUzE5MDgxMSAjNjE1NzAgY2xlYW4gdXAgLy9wYXJlbnQgc3RhY2sgdG9vCgphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9pZ25vcmVkUGFnZXMiLCBjdXJJbmRleFBhZ2VzKTsKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwpzcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiaWdub3JlIiwgcGFnZVJhbmdlKTsKCi8vKgogLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgU1RBQ0sgU05JUFBFVCAqLwovLyoKCi8qIENSTjE2MDgyNSBTZXQgdGhlIHBhZ2UgY291bnQgc28gdGhhdCBpdCBkb2VzIG5vdCBoYXZlIHRoZSBwYXJlbnQgcGFnZSBjb3VudCAqLwovL3ZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKHBhZ2VSYW5nZSk7CnZhciBwYWdlcyA9IHBhZ2VSYW5nZS5zcGxpdCgiLCIpOwppZiAoIXBhZ2VzKSBwYWdlcyA9IFtwYWdlUmFuZ2VdOwp2YXIgcGFnZUNvdW50ID0gcGFnZXMubGVuZ3RoOwoKLy9NU0gxNzEwMjcgZGVidWdnaW5nCmFsZXJ0KCJAQEBAIHBhZ2VDb3VudCA9ICIgKyBwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLCBwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIiwgcGFnZUNvdW50KTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCi8qIFBsYWNlIHRoZSBzcGxpdCBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGlnbm9yZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwovL21vdmVEb2N1bWVudChkb2MsICIiLCBzdGFja0ZvbGRlcik7CnVubG9ja0RvY3VtZW50KGRvYyk7Cgp0cmFjayhkb2MsICJpZ25vcmVkIiwgZG9jLkJBVEVTLCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5pZ25vcmVkfik7dXBkYXRlREVTdGF0dXMofmlnbm9yZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKLyogZW5kIG9mIHJ1bGUgKi8K"},"ordinal":8}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Ignore Page Rule Fired @@@#"); //ERS190617 refactored

var sfStackId=X(doc,'X_sfStackId');
if(!sfStackId){
  sfStackId=zData.getStackId(doc);  
}

var stackId = X(doc, "X_stack");
var stackFolder = stackId + "-STACK";
var companyCode = doc.deliveredTo;
/* Clear the trigger that invoked this rule */
zData.clearTriggerCondition(doc, "X_buttonAction");
var indexInitialized = X(doc, "X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
    stackId = new Date().getTime() + "";
    stackFolder = stackId + "-STACK";
    zData.initializeStack(doc, stackFolder, companyCode, stackId);
}
var curIndexPages = X(doc, "X_ignoredPages");
if (curIndexPages && curIndexPages.length > 0) {
    curIndexPages += ",";
}
curIndexPages += X(doc, "X_idxPages");
var arrOfPairs = [];

arrOfPairs.push("ZPAPER__Status__c", "Ignored"); //PV190911 to update child stack status to complete
//arrOfPairs.push("ZPAPER__Patient__c", zData.patientId);
//arrOfPairs.push("ZPAPER__Case__c",zData.caseId);
//arrOfPairs.push("ZPAPER__FirstName__c", zData.X_ZPAPER__FirstName__c);
//arrOfPairs.push("ZPAPER__LastName__c", zData.X_ZPAPER__LastName__c);
arrOfPairs.push("ZPAPER__Classification__c", zData.classification);
arrOfPairs.push("ZPAPER__faxType__c", zData.X_ZPAPER__faxType__c);
if(zData.X_Case_Record_Type__c && zData.X_Case_Record_Type__c != "DONOT_SAVE" )arrOfPairs.push("Case_Record_Type__c",zData.X_Case_Record_Type__c);//PV191024 update the case record type
arrOfPairs.push("ZPAPER__Program_Name__c", zData.classification);
if( zData.X_Prescription__c )  arrOfPairs.push("Prescription__c",zData.X_Prescription__c); //PV191025 to update Prescription
var childStackId=zData.clientChildStack(doc,arrOfPairs,sfStackId); //ERS190810 create child stack for split ERS190811 clientChildStack
//if (childStackId) {attachPath+=","+sfStackId+","+childStackId; attachPath=attachPath.replace("/,?","/"); } //ERS190811 #61570 clean up //parent stack too

arrOfPairs = [];
arrOfPairs.push("X_ignoredPages", curIndexPages);
updateDB(doc,arrOfPairs);

var pageRange = X(doc, "X_idxPages");
splitDocumentForIndex(doc, "ignore", pageRange);

//*
 /* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
//*

/* CRN160825 Set the page count so that it does not have the parent page count */
//var pageCount = zData.countPages(pageRange);
var pages = pageRange.split(",");
if (!pages) pages = [pageRange];
var pageCount = pages.length;

//MSH171027 debugging
alert("@@@@ pageCount = " + pageCount);
arrOfPairs.push("X_pages", pageCount);
arrOfPairs.push("db-pages", pageCount);
updateDB(doc, arrOfPairs);

/* Place the split document into the stack folder */
alert("@@@@@@ Moving the ignored pages document into the final stack folder: " + stackFolder);
//moveDocument(doc, "", stackFolder);
unlockDocument(doc);

track(doc, "ignored", doc.BATES, pageCount);
addPostExecutionScript(doc, "nextPage(~ignored~);updateDEStatus(~ignored:" + pageRange + "~);");
/* end of rule */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
