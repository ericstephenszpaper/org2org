<!--
// Name: Ignore Page
// Committer: eric.stephens@zpaper.com
// Update: ERS190617 refactored
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-06-17 22:18:50","active":true,"button":"Ignore","name":"Ignore Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Ignore","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSWdub3JlIFBhZ2UgUnVsZSBGaXJlZCBAQEAjIik7IC8vRVJTMTkwNjE3IHJlZmFjdG9yZWQKCnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbihkb2MsICJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCAiWF9pbmRleEluaXRpYWxpemVkIik7CmlmICghaW5kZXhJbml0aWFsaXplZCB8fCAwID09PSBpbmRleEluaXRpYWxpemVkLmxlbmd0aCkgewogICAgc3RhY2tJZCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgICBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKICAgIHpEYXRhLmluaXRpYWxpemVTdGFjayhkb2MsIHN0YWNrRm9sZGVyLCBjb21wYW55Q29kZSwgc3RhY2tJZCk7Cn0KdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfaWdub3JlZFBhZ2VzIik7CmlmIChjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewogICAgY3VySW5kZXhQYWdlcyArPSAiLCI7Cn0KY3VySW5kZXhQYWdlcyArPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2lnbm9yZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgcGFnZVJhbmdlID0gWChkb2MsICJYX2lkeFBhZ2VzIik7CnNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJpZ25vcmUiLCBwYWdlUmFuZ2UpOwoKLy8qCiAvKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCi8vKgoKLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCi8vdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMocGFnZVJhbmdlKTsKdmFyIHBhZ2VzID0gcGFnZVJhbmdlLnNwbGl0KCIsIik7CmlmICghcGFnZXMpIHBhZ2VzID0gW3BhZ2VSYW5nZV07CnZhciBwYWdlQ291bnQgPSBwYWdlcy5sZW5ndGg7CgovL01TSDE3MTAyNyBkZWJ1Z2dpbmcKYWxlcnQoIkBAQEAgcGFnZUNvdW50ID0gIiArIHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiWF9wYWdlcyIsIHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiZGItcGFnZXMiLCBwYWdlQ291bnQpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKLyogUGxhY2UgdGhlIHNwbGl0IGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgaWdub3JlZCBwYWdlcyBkb2N1bWVudCBpbnRvIHRoZSBmaW5hbCBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7Ci8vbW92ZURvY3VtZW50KGRvYywgIiIsIHN0YWNrRm9sZGVyKTsKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCnRyYWNrKGRvYywgImlnbm9yZWQiLCBkb2MuQkFURVMsIHBhZ2VDb3VudCk7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibmV4dFBhZ2Uofmlnbm9yZWR+KTt1cGRhdGVERVN0YXR1cyh+aWdub3JlZDoiICsgcGFnZVJhbmdlICsgIn4pOyIpOwovKiBlbmQgb2YgcnVsZSAqLw=="},"ordinal":8}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Ignore Page Rule Fired @@@#"); //ERS190617 refactored

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
