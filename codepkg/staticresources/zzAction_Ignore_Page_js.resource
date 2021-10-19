<!--
// Name: Ignore Page
// Committer: eric.stephens@zpaper.com
// Update: ERS210410 #78759; ERS210410 ribbon controls
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-10 17:39:55","active":true,"button":"Ignore","name":"Ignore Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Ignore","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSWdub3JlIFBhZ2UgUnVsZSBGaXJlZCBAQEAjIik7IC8vRVJTMTkwNjE3IHJlZmFjdG9yZWQKCnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbihkb2MsICJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCAiWF9pbmRleEluaXRpYWxpemVkIik7CmlmICghaW5kZXhJbml0aWFsaXplZCB8fCAwID09PSBpbmRleEluaXRpYWxpemVkLmxlbmd0aCkgewogICAgc3RhY2tJZCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgICBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKICAgIHpEYXRhLmluaXRpYWxpemVTdGFjayhkb2MsIHN0YWNrRm9sZGVyLCBjb21wYW55Q29kZSwgc3RhY2tJZCk7Cn0KdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfaWdub3JlZFBhZ2VzIik7CmlmIChjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewogICAgY3VySW5kZXhQYWdlcyArPSAiLCI7Cn0KY3VySW5kZXhQYWdlcyArPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2lnbm9yZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgcGFnZVJhbmdlID0gWChkb2MsICJYX2lkeFBhZ2VzIik7Cgp2YXIgc2VsZWN0ZWRSYW5nZSA9IFgoZG9jLCJYX3NlbGVjdGVkUmFuZ2UiKTsgLy9BSFMyMTA0MDkgLSBJZiBwYWdlIHJhbmdlIGlzIG5vdCBhdmFpbGFibGUsIGNoZWNrIGlmIFhfc2VsZWN0ZWRSYW5nZSBpcyBoYXZpbmcgYW55IHZhbHVlCmlmICghcGFnZVJhbmdlKSB7cGFnZVJhbmdlPXNlbGVjdGVkUmFuZ2U7IGFsZXJ0KCJFUlMyMTA0MDkgUmliYm9uIHRodW1ibmFpbHMgIitzZWxlY3RlZFJhbmdlKTsgfSAvL0VSUzIxMDQwOSAjODE3NjEKaWYgKCFwYWdlUmFuZ2UpIHsgLy9FUlMyMTA0MDkgIzgxNzYxCiAgICBwYWdlUmFuZ2U9IjEtIitkb2MubnVtUGFnZXM7IAogICAgYWxlcnQoIkVSUzIxMDQwOSBvdmVyd3JpdGluZyB0aGUgbWlzc2luZyBwYWdlUmFuZ2UgKCIrWChkb2MsIlhfc2VsZWN0ZWRSYW5nZSIpKyIpIGRhdGEgd2l0aCAiK3BhZ2VSYW5nZSk7IAp9Cgp6RGF0YS56U3RhY2tJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7IC8vRVJTMjEwNDEwICM3ODc1OQpzcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiaWdub3JlIiwgcGFnZVJhbmdlKTsKCi8vKgogLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgU1RBQ0sgU05JUFBFVCAqLwovLyoKCi8qIENSTjE2MDgyNSBTZXQgdGhlIHBhZ2UgY291bnQgc28gdGhhdCBpdCBkb2VzIG5vdCBoYXZlIHRoZSBwYXJlbnQgcGFnZSBjb3VudCAqLwovL3ZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKHBhZ2VSYW5nZSk7CnZhciBwYWdlcyA9IHBhZ2VSYW5nZS5zcGxpdCgiLCIpOwppZiAoIXBhZ2VzKSBwYWdlcyA9IFtwYWdlUmFuZ2VdOwp2YXIgcGFnZUNvdW50ID0gcGFnZXMubGVuZ3RoOwoKaWYgKDE9PT0xKSB7IC8vRVJTMjEwNDEwIHJpYmJvbiBjb250cm9scwogICAgaWYgKHR5cGVvZiBjaGlsZFN0YWNrTnVtYmVyICE9PSAndW5kZWZpbmVkJykgeyAvL0VSUzIxMDQxMCBUT0RPIGZpbmQgb3V0IGlmIHppcHBpNCBqYXZhc2NyaXB0IG1vcmUgc3RyaWN0Pz8/CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCArICIgLSAiICsgY2hpbGRTdGFja051bWJlcik7ICAgICAgLy9DUk4yMDEwMjYgIzc2Nzg4IEZpeHVwIHRoZSBjaGlsZCBzbmlwcGV0IGxhYmVsCiAgICB9CiAgICBhbGVydCgiRVJTMjEwNDEwIHpEYXRhLnN0YWdlPSIrekRhdGEuc3RhZ2UpOyB6RGF0YS5zdGFnZT0iSWdub3JlZCI7CiAgICBhcnJPZlBhaXJzPXpEYXRhLmFkZFN0YWdlKGRvYyxhcnJPZlBhaXJzLHpEYXRhLnN0YWdlKTsgLy9FUlMyMDA0MDYgZm9yZ290IHRvIGZpbmlzaCB0aGUgY2FsbCBTWU5UQVgKICAgIGlmICh0eXBlb2YgY2hpbGRTdGFja0lkID09PSAndW5kZWZpbmVkJykgY2hpbGRTdGFja0lkPSIiOyAvL0VSUzIxMDQxMCBTQ0FSWSBIQUNLIHppcHBpNCBzaG93IHN0b3BwZXIKICAgIHZhciBhdHRhY2hQYXRoPXpEYXRhLnpTdGFja0lkOyBpZiAoY2hpbGRTdGFja0lkKSB7IGF0dGFjaFBhdGgrPSIsIitjaGlsZFN0YWNrSWQ7IH0gLy9FUlMyMTA0MTAKICAgIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixhdHRhY2hQYXRoKTsgLy9FUlMxNzA2MjgKICAgIGlmIChjaGlsZFN0YWNrSWQpIHsgYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsY2hpbGRTdGFja0lkKTsgfSAvL0VSUzIxMDEwOSAjODAwNTEgZml4ZXMgY2hpbGQgc3RhY2sgZGF0YSBlbnRyeQogICAgZWxzZSB7IGFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLHpEYXRhLnpTdGFja0lkKTsgfSAKICAgIHpEYXRhLmxhYmVsPXpEYXRhLmNsaWVudEZpbGUoZG9jLHpEYXRhLnN0YWdlKTsKfQoKCi8vTVNIMTcxMDI3IGRlYnVnZ2luZwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIiwgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1wYWdlcyIsIHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiZGItY29tbWVudHMiLCBYKGRvYywiZGItY29tbWVudHMiKSk7IC8vRVJTMjAwMjI2ICM2NjY4Ngp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKLyogUGxhY2UgdGhlIHNwbGl0IGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgaWdub3JlZCBwYWdlcyBkb2N1bWVudCBpbnRvIHRoZSBmaW5hbCBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7Ci8vbW92ZURvY3VtZW50KGRvYywgIiIsIHN0YWNrRm9sZGVyKTsKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCnRyYWNrKGRvYywgImlnbm9yZWQiLCBkb2MuQkFURVMsIHBhZ2VDb3VudCk7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibmV4dFBhZ2Uofmlnbm9yZWR+KTt1cGRhdGVERVN0YXR1cyh+aWdub3JlZDoiICsgcGFnZVJhbmdlICsgIn4pOyIpOwovKiBlbmQgb2YgcnVsZSAqLw=="},"ordinal":18}

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

var selectedRange = X(doc,"X_selectedRange"); //AHS210409 - If page range is not available, check if X_selectedRange is having any value
if (!pageRange) {pageRange=selectedRange; alert("ERS210409 Ribbon thumbnails "+selectedRange); } //ERS210409 #81761
if (!pageRange) { //ERS210409 #81761
    pageRange="1-"+doc.numPages; 
    alert("ERS210409 overwriting the missing pageRange ("+X(doc,"X_selectedRange")+") data with "+pageRange); 
}

zData.zStackId=zData.getStackId(doc); //ERS210410 #78759
splitDocumentForIndex(doc, "ignore", pageRange);

//*
 /* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
//*

/* CRN160825 Set the page count so that it does not have the parent page count */
//var pageCount = zData.countPages(pageRange);
var pages = pageRange.split(",");
if (!pages) pages = [pageRange];
var pageCount = pages.length;

if (1===1) { //ERS210410 ribbon controls
    if (typeof childStackNumber !== 'undefined') { //ERS210410 TODO find out if zippi4 javascript more strict???
        arrOfPairs.push("db-label", doc.label + " - " + childStackNumber);      //CRN201026 #76788 Fixup the child snippet label
    }
    alert("ERS210410 zData.stage="+zData.stage); zData.stage="Ignored";
    arrOfPairs=zData.addStage(doc,arrOfPairs,zData.stage); //ERS200406 forgot to finish the call SYNTAX
    if (typeof childStackId === 'undefined') childStackId=""; //ERS210410 SCARY HACK zippi4 show stopper
    var attachPath=zData.zStackId; if (childStackId) { attachPath+=","+childStackId; } //ERS210410
    arrOfPairs.push("X_attachedTo",attachPath); //ERS170628
    if (childStackId) { arrOfPairs.push("X_sfStackId",childStackId); } //ERS210109 #80051 fixes child stack data entry
    else { arrOfPairs.push("X_sfStackId",zData.zStackId); } 
    zData.label=zData.clientFile(doc,zData.stage);
}


//MSH171027 debugging
alert("@@@@ pageCount = " + pageCount);
arrOfPairs.push("X_pages", pageCount);
arrOfPairs.push("db-pages", pageCount);
arrOfPairs.push("db-comments", X(doc,"db-comments")); //ERS200226 #66686
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
