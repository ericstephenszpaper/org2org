<!--
// Name: Ignore Page
// Committer: eric.stephens@zpaper.com
// Update: ERS190326 #57472 missing zData. and needs doc
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-03-26 18:20:52","active":true,"button":"Ignore","name":"Ignore Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Ignore","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTAzMTkgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwphbGVydCgiQEBAQCBJZ25vcmUgUGFnZSBSdWxlIEZpcmVkIEBAQCMiKTsKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsKdmFyIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwp2YXIgY29tcGFueUNvZGUgPSBkb2MuZGVsaXZlcmVkVG87Ci8qIENsZWFyIHRoZSB0cmlnZ2VyIHRoYXQgaW52b2tlZCB0aGlzIHJ1bGUgKi8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uKGRvYywiWF9idXR0b25BY3Rpb24iKTsKdmFyIGluZGV4SW5pdGlhbGl6ZWQgPSBYKGRvYywiWF9pbmRleEluaXRpYWxpemVkIik7CmlmICghaW5kZXhJbml0aWFsaXplZCB8fCAwID09PSBpbmRleEluaXRpYWxpemVkLmxlbmd0aCkgewoJc3RhY2tJZCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CglzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKCXpEYXRhLmluaXRpYWxpemVTdGFjayhkb2Msc3RhY2tGb2xkZXIsIGNvbXBhbnlDb2RlLCBzdGFja0lkKTsKfQp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZ25vcmVkUGFnZXMiKTsKaWYgKGN1ckluZGV4UGFnZXMgJiYgY3VySW5kZXhQYWdlcy5sZW5ndGggPiAwKSB7CiAgY3VySW5kZXhQYWdlcyArPSAiLCI7Cn0KY3VySW5kZXhQYWdlcyArPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2lnbm9yZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKc3BsaXREb2N1bWVudEZvckluZGV4KGRvYywgImlnbm9yZSIsIHBhZ2VSYW5nZSk7Ci8vKgovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCi8vKgoKLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOyAvL0VSUzE5MDMyNiAjNTc0NzIgbWlzc2luZyB6RGF0YS4gYW5kIG5lZWRzIGRvYwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CgovKiBQbGFjZSB0aGUgc3BsaXQgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyICovCmFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSBpZ25vcmVkIHBhZ2VzIGRvY3VtZW50IGludG8gdGhlIGZpbmFsIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CnVubG9ja0RvY3VtZW50KGRvYyk7Cgp0cmFjayhkb2MsICJpZ25vcmVkIiwgZG9jLkJBVEVTLCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5pZ25vcmVkfik7dXBkYXRlREVTdGF0dXMofmlnbm9yZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKLyogZW5kIG9mIHJ1bGUgKi8K"},"ordinal":9}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190319 updated rule for Sales Demo Org
alert("@@@@ Ignore Page Rule Fired @@@#");
var stackId = X(doc, "X_stack");
var stackFolder = stackId + "-STACK";
var companyCode = doc.deliveredTo;
/* Clear the trigger that invoked this rule */
zData.clearTriggerCondition(doc,"X_buttonAction");
var indexInitialized = X(doc,"X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
	stackId = new Date().getTime() + "";
	stackFolder = stackId + "-STACK";
	zData.initializeStack(doc,stackFolder, companyCode, stackId);
}
var curIndexPages = X(doc, "X_ignoredPages");
if (curIndexPages && curIndexPages.length > 0) {
  curIndexPages += ",";
}
curIndexPages += X(doc, "X_idxPages");
var arrOfPairs = [];
arrOfPairs.push("X_ignoredPages", curIndexPages);
updateDB(doc,arrOfPairs);

var pageRange = X(doc,"X_idxPages");
splitDocumentForIndex(doc, "ignore", pageRange);
//*
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
//*

/* CRN160825 Set the page count so that it does not have the parent page count */
var pageCount = zData.countPages(doc,pageRange); //ERS190326 #57472 missing zData. and needs doc
alert("@@@@ pageCount = " + pageCount);
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
updateDB(doc,arrOfPairs);

/* Place the split document into the stack folder */
alert("@@@@@@ Moving the ignored pages document into the final stack folder: " + stackFolder);
moveDocument(doc,"",stackFolder);
unlockDocument(doc);

track(doc, "ignored", doc.BATES, pageCount);
addPostExecutionScript(doc, "nextPage(~ignored~);updateDEStatus(~ignored:" + pageRange + "~);");
/* end of rule */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
