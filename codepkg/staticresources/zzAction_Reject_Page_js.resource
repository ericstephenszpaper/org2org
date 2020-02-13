<!--
// Name: Reject Page
// Committer: eric.stephens@zpaper.com
// Update: ERS200207 TODO retink rejection cases with correct fields; ERS200207 #68825 corrupts X_stack //moveDocument(doc,"",stackFolder);
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-07 14:17:35","active":true,"button":"Reject","name":"Reject Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Reject","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgUmVqZWN0IFBhZ2UgUnVsZSBGaXJlZCBAQEAjIik7CgpmdW5jdGlvbiBjb3VudFBhZ2VzKHBhZ2VSYW5nZSkgewogIHZhciBwYWdlcyA9IHBhZ2VSYW5nZS5zcGxpdCgiLCIpOwogIHJldHVybiBwYWdlcy5sZW5ndGggKyAiIjsKfQoKdmFyIGNhc2VJZCA9IG51bGw7CnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CgovL0VSUzIwMDIwNyBUT0RPIHJldGluayByZWplY3Rpb24gY2FzZXMgd2l0aCBjb3JyZWN0IGZpZWxkcwp2YXIgY29udGFjdElkID0gWChkb2MsICJYX1BhdGllbnRfX2MiKTsKdmFyIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfTGFiZWxlcl9QYXRpZW50X0ZpcnN0X05hbWVfX2MiKTsKdmFyIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiWF9MYWJlbGVyX1BhdGllbnRfTGFzdF9OYW1lX19jIik7CnZhciBwYXRpZW50RE9CID0gWChkb2MsICJYX0xhYmVsZXJfUGF0aWVudF9Eb0JfX2MiKTsKdmFyIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwp2YXIgY29tcGFueUNvZGUgPSBkb2MuZGVsaXZlcmVkVG87Ci8qIENsZWFyIHRoZSB0cmlnZ2VyIHRoYXQgaW52b2tlZCB0aGlzIHJ1bGUgKi8KLy9FUlMxNzA5MDkgc2VlIFhfcmV2aWV3cyB3b3JrIHpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbihkb2MsIlhfYnV0dG9uQWN0aW9uIik7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwppZiAoIWluZGV4SW5pdGlhbGl6ZWQgfHwgMCA9PT0gaW5kZXhJbml0aWFsaXplZC5sZW5ndGgpIHsKCXN0YWNrSWQgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwoJc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7Cgl6RGF0YS5pbml0aWFsaXplU3RhY2soZG9jLHN0YWNrRm9sZGVyLCBjb21wYW55Q29kZSwgc3RhY2tJZCk7Cn0KdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfcmVqZWN0ZWRQYWdlcyIpOwppZiAoY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICBjdXJJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzICs9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfcmVqZWN0ZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKc3BsaXREb2N1bWVudEZvckluZGV4KGRvYywgInJlamVjdCIsIHBhZ2VSYW5nZSk7Ci8qIEFGVEVSIFRISVMgUE9JTlQsIFRIRSBET0MgV0lMTCBIT0xEIERBVEEgRk9SIE5FVyBTTklQUEVULCBOT1QgVEhFIFNUQUNLIFNOSVBQRVQgKi8KCi8qIENSTjE2MDgyNSBTZXQgdGhlIHBhZ2UgY291bnQgc28gdGhhdCBpdCBkb2VzIG5vdCBoYXZlIHRoZSBwYXJlbnQgcGFnZSBjb3VudCAqLwp2YXIgcGFnZUNvdW50ID0gY291bnRQYWdlcyhwYWdlUmFuZ2UpOwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwppZiAoMT09PTEpIHsgLy9FUlMxNzA5MDkgIzQwNTkyIGZvciB6RG9jU2V0IHN0YXR1c2VzCiAgICB2YXIgYmE9ZG9jLlgoIlhfYnV0dG9uQWN0aW9uIikrImVkIjsKICAgIGJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7Cn0KdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBDb250YWN0IHJlY29yZCBpZiByZXF1aXJlZCAqLwphbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gYSBDb250YWN0PyBjb250YWN0SWQgPSAiICsgY29udGFjdElkKTsKaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewoJYXR0YWNoKGRvYywgIlJlamVjdGVkLSIgKyBzdGFja0lkLCBjb250YWN0SWQpOwoJdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCBjb250YWN0SWQpOwoJcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwoJcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKfQplbHNlIGlmIChwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRGaXJzdE5hbWUubGVuZ3RoID4gMCAmJiBwYXRpZW50TGFzdE5hbWUgJiYgcGF0aWVudExhc3ROYW1lLmxlbmd0aCA+IDAgJiYgcGF0aWVudERPQiAmJiBwYXRpZW50RE9CLmxlbmd0aCA+IDApIHsKCXZhciBjdGNBcnJPZlBhaXJzID0gW107CgljdGNBcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHBhdGllbnRGaXJzdE5hbWUpOwoJY3RjQXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHBhdGllbnRMYXN0TmFtZSk7CgljdGNBcnJPZlBhaXJzLnB1c2goIkJpcnRoRGF0ZSIsIHBhdGllbnRET0IpOwoJY29udGFjdElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCAiUmVqZWN0ZWQtIiArIHN0YWNrSWQsIGN0Y0Fyck9mUGFpcnMpOwoJYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgY29udGFjdElkKTsKCS8vIGNsZWFyIG91dCB0aGUgIk5ldyBQYXRpZW50IiBmaWVsZHMKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRmlyc3RfTmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9MYXN0X05hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKCS8vIHNldCB0aGUgUGF0aWVudCBsb29rdXAgZmllbGRzCglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGF0aWVudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBjb250YWN0SWQgKyBkcSArICIpOyAiKTsKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArIGRxICsgIik7ICIpOwp9Ci8vQ1JOMTcwMjA4IElmIHdlIGhhdmUgYSBDb250YWN0IGFuZCB0aGUgdXNlciBzZW50IGEgUHJvdmlkZXIsIGFkZCB0aGUgcHJvdmlkZXIgdG8gdGhlIENvbnRhY3QuCnZhciBwcm92aWRlckZpcnN0TmFtZSA9ICIiOwp2YXIgcHJvdmlkZXJMYXN0TmFtZSA9ICIiOwp2YXIgcHJvdmlkZXIgPSBYKGRvYywgIlhfUHJpbWFyeV9DYXJlX1BoeXNpY2lhbl9fYyIpOwppZiAocHJvdmlkZXIgJiYgcHJvdmlkZXIubGVuZ3RoID4gMCkgewoJdmFyIHByb3ZpZGVyRmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgcHJvdmlkZXIpOwoJcHJvdmlkZXJGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIHByb3ZpZGVyRmxkcyk7Cglwcm92aWRlckxhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIHByb3ZpZGVyRmxkcyk7Cn0KaWYgKDE9PT0wKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBub3Qgc3RhbmRhcmQKLyoKaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCAmJiBwcm92aWRlciAmJiBwcm92aWRlci5sZW5ndGggPiAwKSB7CglhcnJPZlBhaXJzID0gW107CglhcnJPZlBhaXJzLnB1c2goIlByaW1hcnlfQ2FyZV9QaHlzaWNpYW5fX2MiLCBwcm92aWRlcik7Cgl1cGRhdGVTRlJlY29yZChkb2MsIkNvbnRhY3QiLGNvbnRhY3RJZCxhcnJPZlBhaXJzKTsKfSAqLwp9CgphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgIk5ldyIpOwphcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsICJGYXgiKTsKYXJyT2ZQYWlycy5wdXNoKCJEZXNjcmlwdGlvbiIsIGRvYy5rYkRhdGEuY29tbWVudHMpOwphcnJPZlBhaXJzLnB1c2goIlN1YmplY3QiLCAiRG9jdW1lbnQgUmVqZWN0ZWQiKTsKaWYgKDE9PT0wKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBub3Qgc3RhbmRhcmQKLyogICAgYXJyT2ZQYWlycy5wdXNoKCJOb3Rlc19fYyIsIGRvYy5rYkRhdGEuY29tbWVudHMpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJQcm92aWRlcl9GaXJzdF9OYW1lX19jIiwgcHJvdmlkZXJGaXJzdE5hbWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJQcm92aWRlcl9MYXN0X05hbWVfX2MiLCBwcm92aWRlckxhc3ROYW1lKTsqLwp9CmFsZXJ0KCJAQEBAQEBAIFNFVFRJTkcgQ29udGFjdElkIG9uIENhc2UgY3JlYXRpb24/ICIgKyBjb250YWN0SWQpOwppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CglhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIGNvbnRhY3RJZCk7Cn0KY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCAiUmVqZWN0ZWQtIiArIHN0YWNrSWQsIGFyck9mUGFpcnMpOwphbGVydCgiQEBAQEAgY2FzZUlkIGZvciBSZWplY3RvbjogIiArIGNhc2VJZCk7CmlmIChjYXNlSWQgJiYgY2FzZUlkLmxlbmd0aCA+IDApIHsKCWFyck9mUGFpcnMgPSBbXTsKCWlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKCQlhcnJPZlBhaXJzLnB1c2goIldob0lkIiwgY29udGFjdElkKTsKCX0KCWFyck9mUGFpcnMucHVzaCgiV2hhdElkIiwgY2FzZUlkKTsKCWFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsICJJbmNvbWluZyBEb2N1bWVudCBSZWplY3RlZCIpOwoJYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCAiSW4gUHJvZ3Jlc3MiKTsKCXZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIlRhc2siLCAiUmVqZWN0ZWQtIiArIHN0YWNrSWQsIGFyck9mUGFpcnMpOwp9CgovKiBQbGFjZSB0aGUgc3BsaXQgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyICovCmFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSByZWplY3RlZCBwYWdlcyBkb2N1bWVudCBpbnRvIHRoZSBmaW5hbCBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7Ci8vRVJTMjAwMjA3ICM2ODgyNSBjb3JydXB0cyBYX3N0YWNrIC8vbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CnVubG9ja0RvY3VtZW50KGRvYyk7Cgp0cmFjayhkb2MsICJyZWplY3RlZCIsIGRvYy5CQVRFUywgcGFnZUNvdW50KTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJuZXh0UGFnZSh+cmVqZWN0ZWR+KTt1cGRhdGVERVN0YXR1cyh+cmVqZWN0ZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKCi8qIGVuZCBvZiBydWxlICovCgo="},"ordinal":11}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Reject Page Rule Fired @@@#");

function countPages(pageRange) {
  var pages = pageRange.split(",");
  return pages.length + "";
}

var caseId = null;
var stackId = X(doc, "X_stack");

//ERS200207 TODO retink rejection cases with correct fields
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
//ERS200207 #68825 corrupts X_stack //moveDocument(doc,"",stackFolder);
unlockDocument(doc);

track(doc, "rejected", doc.BATES, pageCount);
addPostExecutionScript(doc, "nextPage(~rejected~);updateDEStatus(~rejected:" + pageRange + "~);");

/* end of rule */


//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
