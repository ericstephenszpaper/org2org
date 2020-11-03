<!--
// Name: Reject Page
// Committer: eric.stephens@zpaper.com
// Update: ERS200226 #66686 TODO newlines escaped in packData CRN?; ERS200226 CRN TODO check ALL zippi clients
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-26 17:22:28","active":true,"button":"Reject","name":"Reject Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Reject","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgUmVqZWN0IFBhZ2UgUnVsZSBGaXJlZCBAQEAjIik7CgpmdW5jdGlvbiBjb3VudFBhZ2VzKHBhZ2VSYW5nZSkgewogIHZhciBwYWdlcyA9IHBhZ2VSYW5nZS5zcGxpdCgiLCIpOwogIHJldHVybiBwYWdlcy5sZW5ndGggKyAiIjsKfQoKdmFyIGNhc2VJZCA9IG51bGw7CnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CgovL0VSUzIwMDIwNyBUT0RPIHJldGluayByZWplY3Rpb24gY2FzZXMgd2l0aCBjb3JyZWN0IGZpZWxkcwp2YXIgY29udGFjdElkID0gWChkb2MsICJYX1BhdGllbnRfX2MiKTsKdmFyIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfTGFiZWxlcl9QYXRpZW50X0ZpcnN0X05hbWVfX2MiKTsKdmFyIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiWF9MYWJlbGVyX1BhdGllbnRfTGFzdF9OYW1lX19jIik7CnZhciBwYXRpZW50RE9CID0gWChkb2MsICJYX0xhYmVsZXJfUGF0aWVudF9Eb0JfX2MiKTsKdmFyIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwp2YXIgY29tcGFueUNvZGUgPSBkb2MuZGVsaXZlcmVkVG87Ci8qIENsZWFyIHRoZSB0cmlnZ2VyIHRoYXQgaW52b2tlZCB0aGlzIHJ1bGUgKi8KLy9FUlMxNzA5MDkgc2VlIFhfcmV2aWV3cyB3b3JrIHpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbihkb2MsIlhfYnV0dG9uQWN0aW9uIik7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwppZiAoIWluZGV4SW5pdGlhbGl6ZWQgfHwgMCA9PT0gaW5kZXhJbml0aWFsaXplZC5sZW5ndGgpIHsKCXN0YWNrSWQgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwoJc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7Cgl6RGF0YS5pbml0aWFsaXplU3RhY2soZG9jLHN0YWNrRm9sZGVyLCBjb21wYW55Q29kZSwgc3RhY2tJZCk7Cn0KdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfcmVqZWN0ZWRQYWdlcyIpOwppZiAoY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICBjdXJJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzICs9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfcmVqZWN0ZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKc3BsaXREb2N1bWVudEZvckluZGV4KGRvYywgInJlamVjdCIsIHBhZ2VSYW5nZSk7Ci8qIEFGVEVSIFRISVMgUE9JTlQsIFRIRSBET0MgV0lMTCBIT0xEIERBVEEgRk9SIE5FVyBTTklQUEVULCBOT1QgVEhFIFNUQUNLIFNOSVBQRVQgKi8KCi8qIENSTjE2MDgyNSBTZXQgdGhlIHBhZ2UgY291bnQgc28gdGhhdCBpdCBkb2VzIG5vdCBoYXZlIHRoZSBwYXJlbnQgcGFnZSBjb3VudCAqLwp2YXIgcGFnZUNvdW50ID0gY291bnRQYWdlcyhwYWdlUmFuZ2UpOwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwppZiAoMT09PTEpIHsgLy9FUlMxNzA5MDkgIzQwNTkyIGZvciB6RG9jU2V0IHN0YXR1c2VzCiAgICB2YXIgYmE9ZG9jLlgoIlhfYnV0dG9uQWN0aW9uIikrImVkIjsKICAgIGJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWNvbW1lbnRzIixYKGRvYywiZGItY29tbWVudHMiKSk7IC8vRVJTMjAwMjI2ICM2NjY4NiBUT0RPIG5ld2xpbmVzIGVzY2FwZWQgaW4gcGFja0RhdGEgQ1JOPwp9CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gQ29udGFjdCByZWNvcmQgaWYgcmVxdWlyZWQgKi8KYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGEgQ29udGFjdD8gY29udGFjdElkID0gIiArIGNvbnRhY3RJZCk7CmlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKCWF0dGFjaChkb2MsICJSZWplY3RlZC0iICsgc3RhY2tJZCwgY29udGFjdElkKTsKCXZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgY29udGFjdElkKTsKCXBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKCXBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBjb250YWN0Rmxkcyk7Cn0KZWxzZSBpZiAocGF0aWVudEZpcnN0TmFtZSAmJiBwYXRpZW50Rmlyc3ROYW1lLmxlbmd0aCA+IDAgJiYgcGF0aWVudExhc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZS5sZW5ndGggPiAwICYmIHBhdGllbnRET0IgJiYgcGF0aWVudERPQi5sZW5ndGggPiAwKSB7Cgl2YXIgY3RjQXJyT2ZQYWlycyA9IFtdOwoJY3RjQXJyT2ZQYWlycy5wdXNoKCJGaXJzdE5hbWUiLCBwYXRpZW50Rmlyc3ROYW1lKTsKCWN0Y0Fyck9mUGFpcnMucHVzaCgiTGFzdE5hbWUiLCBwYXRpZW50TGFzdE5hbWUpOwoJY3RjQXJyT2ZQYWlycy5wdXNoKCJCaXJ0aERhdGUiLCBwYXRpZW50RE9CKTsKCWNvbnRhY3RJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDb250YWN0IiwgIlJlamVjdGVkLSIgKyBzdGFja0lkLCBjdGNBcnJPZlBhaXJzKTsKCWFsZXJ0KCJAQEBAQEBAIE5FVyBDT05UQUNUIENSRUFURUQgV0lUSCBJRDogIiArIGNvbnRhY3RJZCk7CgkvLyBjbGVhciBvdXQgdGhlICJOZXcgUGF0aWVudCIgZmllbGRzCglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0ZpcnN0X05hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfTGFzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9Eb0JfX2NfcmVhZGFibGUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIk5PTkUiICsgZHEgKyAiKTsgIik7CgkvLyBzZXQgdGhlIFBhdGllbnQgbG9va3VwIGZpZWxkcwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgY29udGFjdElkICsgZHEgKyAiKTsgIik7CglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGF0aWVudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyBkcSArICIpOyAiKTsKfQovL0NSTjE3MDIwOCBJZiB3ZSBoYXZlIGEgQ29udGFjdCBhbmQgdGhlIHVzZXIgc2VudCBhIFByb3ZpZGVyLCBhZGQgdGhlIHByb3ZpZGVyIHRvIHRoZSBDb250YWN0Lgp2YXIgcHJvdmlkZXJGaXJzdE5hbWUgPSAiIjsKdmFyIHByb3ZpZGVyTGFzdE5hbWUgPSAiIjsKdmFyIHByb3ZpZGVyID0gWChkb2MsICJYX1ByaW1hcnlfQ2FyZV9QaHlzaWNpYW5fX2MiKTsKaWYgKHByb3ZpZGVyICYmIHByb3ZpZGVyLmxlbmd0aCA+IDApIHsKCXZhciBwcm92aWRlckZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIHByb3ZpZGVyKTsKCXByb3ZpZGVyRmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBwcm92aWRlckZsZHMpOwoJcHJvdmlkZXJMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBwcm92aWRlckZsZHMpOwp9CmlmICgxPT09MCkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgbm90IHN0YW5kYXJkCi8qCmlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDAgJiYgcHJvdmlkZXIgJiYgcHJvdmlkZXIubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycyA9IFtdOwoJYXJyT2ZQYWlycy5wdXNoKCJQcmltYXJ5X0NhcmVfUGh5c2ljaWFuX19jIiwgcHJvdmlkZXIpOwoJdXBkYXRlU0ZSZWNvcmQoZG9jLCJDb250YWN0Iixjb250YWN0SWQsYXJyT2ZQYWlycyk7Cn0gKi8KfQoKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJOZXciKTsKYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCAiRmF4Iik7CmFyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLCBYKGRvYywiZGItY29tbWVudHMiKSk7IC8vZG9jLmtiRGF0YS5jb21tZW50czsgLy9FUlMyMDAyMjYgQ1JOIFRPRE8gY2hlY2sgQUxMIHppcHBpIGNsaWVudHMKYXJyT2ZQYWlycy5wdXNoKCJTdWJqZWN0IiwgIkRvY3VtZW50IFJlamVjdGVkIik7CmlmICgxPT09MCkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgbm90IHN0YW5kYXJkCi8qICAgIGFyck9mUGFpcnMucHVzaCgiTm90ZXNfX2MiLCBkb2Mua2JEYXRhLmNvbW1lbnRzKTsKICAgIGFyck9mUGFpcnMucHVzaCgiUHJvdmlkZXJfRmlyc3RfTmFtZV9fYyIsIHByb3ZpZGVyRmlyc3ROYW1lKTsKICAgIGFyck9mUGFpcnMucHVzaCgiUHJvdmlkZXJfTGFzdF9OYW1lX19jIiwgcHJvdmlkZXJMYXN0TmFtZSk7Ki8KfQphbGVydCgiQEBAQEBAQCBTRVRUSU5HIENvbnRhY3RJZCBvbiBDYXNlIGNyZWF0aW9uPyAiICsgY29udGFjdElkKTsKaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCBjb250YWN0SWQpOwp9CmNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgIlJlamVjdGVkLSIgKyBzdGFja0lkLCBhcnJPZlBhaXJzKTsKYWxlcnQoIkBAQEBAIGNhc2VJZCBmb3IgUmVqZWN0b246ICIgKyBjYXNlSWQpOwppZiAoY2FzZUlkICYmIGNhc2VJZC5sZW5ndGggPiAwKSB7CglhcnJPZlBhaXJzID0gW107CglpZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CgkJYXJyT2ZQYWlycy5wdXNoKCJXaG9JZCIsIGNvbnRhY3RJZCk7Cgl9CglhcnJPZlBhaXJzLnB1c2goIldoYXRJZCIsIGNhc2VJZCk7CglhcnJPZlBhaXJzLnB1c2goIlN1YmplY3QiLCAiSW5jb21pbmcgRG9jdW1lbnQgUmVqZWN0ZWQiKTsKCWFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgIkluIFByb2dyZXNzIik7Cgl2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJUYXNrIiwgIlJlamVjdGVkLSIgKyBzdGFja0lkLCBhcnJPZlBhaXJzKTsKfQoKLyogUGxhY2UgdGhlIHNwbGl0IGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgcmVqZWN0ZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwovL0VSUzIwMDIwNyAjNjg4MjUgY29ycnVwdHMgWF9zdGFjayAvL21vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwp1bmxvY2tEb2N1bWVudChkb2MpOwoKdHJhY2soZG9jLCAicmVqZWN0ZWQiLCBkb2MuQkFURVMsIHBhZ2VDb3VudCk7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibmV4dFBhZ2UofnJlamVjdGVkfik7dXBkYXRlREVTdGF0dXMofnJlamVjdGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7CgovKiBlbmQgb2YgcnVsZSAqLwoK"},"ordinal":12}

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
    arrOfPairs.push("db-comments",X(doc,"db-comments")); //ERS200226 #66686 TODO newlines escaped in packData CRN?
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
arrOfPairs.push("Description", X(doc,"db-comments")); //doc.kbData.comments; //ERS200226 CRN TODO check ALL zippi clients
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
