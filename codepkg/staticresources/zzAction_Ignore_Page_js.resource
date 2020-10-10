<!--
// Name: Ignore Page
// Committer: judson.bruno@zpaper.com
// Update: JPB190428 updated rule for Sales Demo Org
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-28 14:21:12","active":true,"button":"Ignore","name":"Ignore Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Ignore","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwphbGVydCgiQEBAQCBJZ25vcmUgUGFnZSBSdWxlIEZpcmVkIEBAQCMiKTsKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsKdmFyIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwp2YXIgY29tcGFueUNvZGUgPSBkb2MuZGVsaXZlcmVkVG87Ci8qIENsZWFyIHRoZSB0cmlnZ2VyIHRoYXQgaW52b2tlZCB0aGlzIHJ1bGUgKi8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uKGRvYywiWF9idXR0b25BY3Rpb24iKTsKdmFyIGluZGV4SW5pdGlhbGl6ZWQgPSBYKGRvYywiWF9pbmRleEluaXRpYWxpemVkIik7CmlmICghaW5kZXhJbml0aWFsaXplZCB8fCAwID09PSBpbmRleEluaXRpYWxpemVkLmxlbmd0aCkgewogICAgc3RhY2tJZCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgICBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKICAgIHpEYXRhLmluaXRpYWxpemVTdGFjayhkb2Msc3RhY2tGb2xkZXIsIGNvbXBhbnlDb2RlLCBzdGFja0lkKTsKfQp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZ25vcmVkUGFnZXMiKTsKaWYgKGN1ckluZGV4UGFnZXMgJiYgY3VySW5kZXhQYWdlcy5sZW5ndGggPiAwKSB7CiAgY3VySW5kZXhQYWdlcyArPSAiLCI7Cn0KY3VySW5kZXhQYWdlcyArPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2lnbm9yZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKc3BsaXREb2N1bWVudEZvckluZGV4KGRvYywgImlnbm9yZSIsIHBhZ2VSYW5nZSk7Ci8vKgovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCi8vKgoKLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOyAvL0VSUzE5MDMyNiAjNTc0NzIgbWlzc2luZyB6RGF0YS4gYW5kIG5lZWRzIGRvYwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwp2YXIgY2xhc3NpZmljYXRpb24gPSBYKGRvYywiWF9aUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIik7IC8vUHYxOTA0MjQgVXBkYXRlZCBmb3IgTGFiZWwKYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsY2xhc3NpZmljYXRpb24rIiBJZ25vcmVkIERvY3VtZW50Iik7CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCi8qIFBsYWNlIHRoZSBzcGxpdCBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGlnbm9yZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwptb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCnRyYWNrKGRvYywgImlnbm9yZWQiLCBkb2MuQkFURVMsIHBhZ2VDb3VudCk7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibmV4dFBhZ2Uofmlnbm9yZWR+KTt1cGRhdGVERVN0YXR1cyh+aWdub3JlZDoiICsgcGFnZVJhbmdlICsgIn4pOyIpOwovKiBlbmQgb2YgcnVsZSAqLw=="},"ordinal":9}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated rule for Sales Demo Org
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
var classification = X(doc,"X_ZPAPER__Classification__c"); //Pv190424 Updated for Label
arrOfPairs.push("db-label",classification+" Ignored Document");
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
