<!--
// Name: Reject Page
// Committer: eric@zpaper.com
// Update: zAction update
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2017-09-10 21:42:50","active":true,"button":"Reject","name":"Reject Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Reject","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgUmVqZWN0IFBhZ2UgUnVsZSBGaXJlZCBAQEAjIik7CgpmdW5jdGlvbiBjb3VudFBhZ2VzKHBhZ2VSYW5nZSkgewogIHZhciBwYWdlcyA9IHBhZ2VSYW5nZS5zcGxpdCgiLCIpOwogIHJldHVybiBwYWdlcy5sZW5ndGggKyAiIjsKfQoKdmFyIGNhc2VJZCA9IG51bGw7CnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CnZhciBjb250YWN0SWQgPSBYKGRvYywgIlhfUGF0aWVudF9fYyIpOwp2YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9MYWJlbGVyX1BhdGllbnRfRmlyc3RfTmFtZV9fYyIpOwp2YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX0xhYmVsZXJfUGF0aWVudF9MYXN0X05hbWVfX2MiKTsKdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfTGFiZWxlcl9QYXRpZW50X0RvQl9fYyIpOwp2YXIgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CnZhciBjb21wYW55Q29kZSA9IGRvYy5kZWxpdmVyZWRUbzsKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwovL0VSUzE3MDkwOSBzZWUgWF9yZXZpZXdzIHdvcmsgekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uKGRvYywiWF9idXR0b25BY3Rpb24iKTsKdmFyIGluZGV4SW5pdGlhbGl6ZWQgPSBYKGRvYywiWF9pbmRleEluaXRpYWxpemVkIik7CmlmICghaW5kZXhJbml0aWFsaXplZCB8fCAwID09PSBpbmRleEluaXRpYWxpemVkLmxlbmd0aCkgewoJc3RhY2tJZCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CglzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKCXpEYXRhLmluaXRpYWxpemVTdGFjayhkb2Msc3RhY2tGb2xkZXIsIGNvbXBhbnlDb2RlLCBzdGFja0lkKTsKfQp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9yZWplY3RlZFBhZ2VzIik7CmlmIChjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewogIGN1ckluZGV4UGFnZXMgKz0gIiwiOwp9CmN1ckluZGV4UGFnZXMgKz0gWChkb2MsICJYX2lkeFBhZ2VzIik7CnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9yZWplY3RlZFBhZ2VzIiwgY3VySW5kZXhQYWdlcyk7CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwpzcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAicmVqZWN0IiwgcGFnZVJhbmdlKTsKLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgU1RBQ0sgU05JUFBFVCAqLwoKLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCnZhciBwYWdlQ291bnQgPSBjb3VudFBhZ2VzKHBhZ2VSYW5nZSk7CmFsZXJ0KCJAQEBAIHBhZ2VDb3VudCA9ICIgKyBwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiZGItcGFnZXMiLHBhZ2VDb3VudCk7CmlmICgxPT09MSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKICAgIHZhciBiYT1kb2MuWCgiWF9idXR0b25BY3Rpb24iKSsiZWQiOwogICAgYmE9YmEuc3Vic3RyaW5nKDErYmEubGFzdEluZGV4T2YoIiAiKSk7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKfQp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENvbnRhY3QgcmVjb3JkIGlmIHJlcXVpcmVkICovCmFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBhIENvbnRhY3Q/IGNvbnRhY3RJZCA9ICIgKyBjb250YWN0SWQpOwppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CglhdHRhY2goZG9jLCAiUmVqZWN0ZWQtIiArIHN0YWNrSWQsIGNvbnRhY3RJZCk7Cgl2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIGNvbnRhY3RJZCk7CglwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CglwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwp9CmVsc2UgaWYgKHBhdGllbnRGaXJzdE5hbWUgJiYgcGF0aWVudEZpcnN0TmFtZS5sZW5ndGggPiAwICYmIHBhdGllbnRMYXN0TmFtZSAmJiBwYXRpZW50TGFzdE5hbWUubGVuZ3RoID4gMCAmJiBwYXRpZW50RE9CICYmIHBhdGllbnRET0IubGVuZ3RoID4gMCkgewoJdmFyIGN0Y0Fyck9mUGFpcnMgPSBbXTsKCWN0Y0Fyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIiwgcGF0aWVudEZpcnN0TmFtZSk7CgljdGNBcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgcGF0aWVudExhc3ROYW1lKTsKCWN0Y0Fyck9mUGFpcnMucHVzaCgiQmlydGhEYXRlIiwgcGF0aWVudERPQik7Cgljb250YWN0SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ29udGFjdCIsICJSZWplY3RlZC0iICsgc3RhY2tJZCwgY3RjQXJyT2ZQYWlycyk7CglhbGVydCgiQEBAQEBAQCBORVcgQ09OVEFDVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyBjb250YWN0SWQpOwoJLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9GaXJzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0xhc3RfTmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9Eb0JfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwoJLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIGNvbnRhY3RJZCArIGRxICsgIik7ICIpOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lICsgZHEgKyAiKTsgIik7Cn0KLy9DUk4xNzAyMDggSWYgd2UgaGF2ZSBhIENvbnRhY3QgYW5kIHRoZSB1c2VyIHNlbnQgYSBQcm92aWRlciwgYWRkIHRoZSBwcm92aWRlciB0byB0aGUgQ29udGFjdC4KdmFyIHByb3ZpZGVyRmlyc3ROYW1lID0gIiI7CnZhciBwcm92aWRlckxhc3ROYW1lID0gIiI7CnZhciBwcm92aWRlciA9IFgoZG9jLCAiWF9QcmltYXJ5X0NhcmVfUGh5c2ljaWFuX19jIik7CmlmIChwcm92aWRlciAmJiBwcm92aWRlci5sZW5ndGggPiAwKSB7Cgl2YXIgcHJvdmlkZXJGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCBwcm92aWRlcik7Cglwcm92aWRlckZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgcHJvdmlkZXJGbGRzKTsKCXByb3ZpZGVyTGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgcHJvdmlkZXJGbGRzKTsKfQppZiAoMT09PTApIHsgLy9FUlMxNzA5MDkgIzQwNTkyIG5vdCBzdGFuZGFyZAovKgppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwICYmIHByb3ZpZGVyICYmIHByb3ZpZGVyLmxlbmd0aCA+IDApIHsKCWFyck9mUGFpcnMgPSBbXTsKCWFyck9mUGFpcnMucHVzaCgiUHJpbWFyeV9DYXJlX1BoeXNpY2lhbl9fYyIsIHByb3ZpZGVyKTsKCXVwZGF0ZVNGUmVjb3JkKGRvYywiQ29udGFjdCIsY29udGFjdElkLGFyck9mUGFpcnMpOwp9ICovCn0KCmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCAiTmV3Iik7CmFyck9mUGFpcnMucHVzaCgiT3JpZ2luIiwgIkZheCIpOwphcnJPZlBhaXJzLnB1c2goIkRlc2NyaXB0aW9uIiwgZG9jLmtiRGF0YS5jb21tZW50cyk7CmFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsICJEb2N1bWVudCBSZWplY3RlZCIpOwppZiAoMT09PTApIHsgLy9FUlMxNzA5MDkgIzQwNTkyIG5vdCBzdGFuZGFyZAovKiAgICBhcnJPZlBhaXJzLnB1c2goIk5vdGVzX19jIiwgZG9jLmtiRGF0YS5jb21tZW50cyk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlByb3ZpZGVyX0ZpcnN0X05hbWVfX2MiLCBwcm92aWRlckZpcnN0TmFtZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlByb3ZpZGVyX0xhc3RfTmFtZV9fYyIsIHByb3ZpZGVyTGFzdE5hbWUpOyovCn0KYWxlcnQoIkBAQEBAQEAgU0VUVElORyBDb250YWN0SWQgb24gQ2FzZSBjcmVhdGlvbj8gIiArIGNvbnRhY3RJZCk7CmlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKCWFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgY29udGFjdElkKTsKfQpjYXNlSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ2FzZSIsICJSZWplY3RlZC0iICsgc3RhY2tJZCwgYXJyT2ZQYWlycyk7CmFsZXJ0KCJAQEBAQCBjYXNlSWQgZm9yIFJlamVjdG9uOiAiICsgY2FzZUlkKTsKaWYgKGNhc2VJZCAmJiBjYXNlSWQubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycyA9IFtdOwoJaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewoJCWFyck9mUGFpcnMucHVzaCgiV2hvSWQiLCBjb250YWN0SWQpOwoJfQoJYXJyT2ZQYWlycy5wdXNoKCJXaGF0SWQiLCBjYXNlSWQpOwoJYXJyT2ZQYWlycy5wdXNoKCJTdWJqZWN0IiwgIkluY29taW5nIERvY3VtZW50IFJlamVjdGVkIik7CglhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJJbiBQcm9ncmVzcyIpOwoJdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiVGFzayIsICJSZWplY3RlZC0iICsgc3RhY2tJZCwgYXJyT2ZQYWlycyk7Cn0KCi8qIFBsYWNlIHRoZSBzcGxpdCBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIHJlamVjdGVkIHBhZ2VzIGRvY3VtZW50IGludG8gdGhlIGZpbmFsIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CnVubG9ja0RvY3VtZW50KGRvYyk7Cgp0cmFjayhkb2MsICJyZWplY3RlZCIsIGRvYy5CQVRFUywgcGFnZUNvdW50KTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJuZXh0UGFnZSh+cmVqZWN0ZWR+KTt1cGRhdGVERVN0YXR1cyh+cmVqZWN0ZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKCi8qIGVuZCBvZiBydWxlICovCgo="},"ordinal":8}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Reject Page Rule Fired @@@#");

function countPages(pageRange) {
  var pages = pageRange.split(",");
  return pages.length + "";
}

var caseId = null;
var stackId = X(doc, "X_stack");
var contactId = X(doc, "X_Patient__c");
var patientFirstName = X(doc, "X_Labeler_Patient_First_Name__c");
var patientLastName = X(doc, "X_Labeler_Patient_Last_Name__c");
var patientDOB = X(doc, "X_Labeler_Patient_DoB__c");
var stackFolder = stackId + "-STACK";
var companyCode = doc.deliveredTo;
/* Clear the trigger that invoked this rule */
//ERS170909 see X_reviews work zData.clearTriggerCondition(doc,"X_buttonAction");
var indexInitialized = X(doc,"X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
	stackId = new Date().getTime() + "";
	stackFolder = stackId + "-STACK";
	zData.initializeStack(doc,stackFolder, companyCode, stackId);
}
var curIndexPages = X(doc, "X_rejectedPages");
if (curIndexPages && curIndexPages.length > 0) {
  curIndexPages += ",";
}
curIndexPages += X(doc, "X_idxPages");
var arrOfPairs = [];
arrOfPairs.push("X_rejectedPages", curIndexPages);
updateDB(doc,arrOfPairs);

var pageRange = X(doc,"X_idxPages");
splitDocumentForIndex(doc, "reject", pageRange);
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */

/* CRN160825 Set the page count so that it does not have the parent page count */
var pageCount = countPages(pageRange);
alert("@@@@ pageCount = " + pageCount);
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
if (1===1) { //ERS170909 #40592 for zDocSet statuses
    var ba=doc.X("X_buttonAction")+"ed";
    ba=ba.substring(1+ba.lastIndexOf(" "));
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
    arrOfPairs.push("X_buttonAction","");
}
updateDB(doc,arrOfPairs);

/* Attach the split document to Contact record if required */
alert("@@@@ attaching to a Contact? contactId = " + contactId);
if (contactId && contactId.length > 0) {
	attach(doc, "Rejected-" + stackId, contactId);
	var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, contactId);
	patientFirstName = X(doc, "FirstName", contactFlds);
	patientLastName = X(doc, "LastName", contactFlds);
}
else if (patientFirstName && patientFirstName.length > 0 && patientLastName && patientLastName.length > 0 && patientDOB && patientDOB.length > 0) {
	var ctcArrOfPairs = [];
	ctcArrOfPairs.push("FirstName", patientFirstName);
	ctcArrOfPairs.push("LastName", patientLastName);
	ctcArrOfPairs.push("BirthDate", patientDOB);
	contactId = createAndAttach(doc, "Contact", "Rejected-" + stackId, ctcArrOfPairs);
	alert("@@@@@@@ NEW CONTACT CREATED WITH ID: " + contactId);
	// clear out the "New Patient" fields
	addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_First_Name__c" + dq + ").val(" + dq + "" + dq + "); ");
	addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_Last_Name__c" + dq + ").val(" + dq + "" + dq + "); ");
	addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_DoB__c" + dq + ").val(" + dq + "" + dq + "); ");
	addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_DoB__c_readable" + dq + ").val(" + dq + "NONE" + dq + "); ");
	// set the Patient lookup fields
	addPostExecutionScript(doc, " $(" + dq + "#Patient__c" + dq + ").val(" + dq + contactId + dq + "); ");
	addPostExecutionScript(doc, " $(" + dq + "#Patient__c_Name" + dq + ").val(" + dq + patientFirstName + " " + patientLastName + dq + "); ");
}
//CRN170208 If we have a Contact and the user sent a Provider, add the provider to the Contact.
var providerFirstName = "";
var providerLastName = "";
var provider = X(doc, "X_Primary_Care_Physician__c");
if (provider && provider.length > 0) {
	var providerFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, provider);
	providerFirstName = X(doc, "FirstName", providerFlds);
	providerLastName = X(doc, "LastName", providerFlds);
}
if (1===0) { //ERS170909 #40592 not standard
/*
if (contactId && contactId.length > 0 && provider && provider.length > 0) {
	arrOfPairs = [];
	arrOfPairs.push("Primary_Care_Physician__c", provider);
	updateSFRecord(doc,"Contact",contactId,arrOfPairs);
} */
}

arrOfPairs = [];
arrOfPairs.push("Status", "New");
arrOfPairs.push("Origin", "Fax");
arrOfPairs.push("Description", doc.kbData.comments);
arrOfPairs.push("Subject", "Document Rejected");
if (1===0) { //ERS170909 #40592 not standard
/*    arrOfPairs.push("Notes__c", doc.kbData.comments);
    arrOfPairs.push("Provider_First_Name__c", providerFirstName);
    arrOfPairs.push("Provider_Last_Name__c", providerLastName);*/
}
alert("@@@@@@@ SETTING ContactId on Case creation? " + contactId);
if (contactId && contactId.length > 0) {
	arrOfPairs.push("ContactId", contactId);
}
caseId = createAndAttach(doc, "Case", "Rejected-" + stackId, arrOfPairs);
alert("@@@@@ caseId for Rejecton: " + caseId);
if (caseId && caseId.length > 0) {
	arrOfPairs = [];
	if (contactId && contactId.length > 0) {
		arrOfPairs.push("WhoId", contactId);
	}
	arrOfPairs.push("WhatId", caseId);
	arrOfPairs.push("Subject", "Incoming Document Rejected");
	arrOfPairs.push("Status", "In Progress");
	var sfId = createAndAttach(doc, "Task", "Rejected-" + stackId, arrOfPairs);
}

/* Place the split document into the stack folder */
alert("@@@@@@ Moving the rejected pages document into the final stack folder: " + stackFolder);
moveDocument(doc,"",stackFolder);
unlockDocument(doc);

track(doc, "rejected", doc.BATES, pageCount);
addPostExecutionScript(doc, "nextPage(~rejected~);updateDEStatus(~rejected:" + pageRange + "~);");

/* end of rule */


//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
