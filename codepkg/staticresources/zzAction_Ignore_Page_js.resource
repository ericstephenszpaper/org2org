<!--
// Name: Ignore Page
// Committer: cory.newey@zpaper.com
// Update: added debugging
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-18 21:22:04","active":true,"button":"Ignore","name":"Ignore Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Ignore","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSWdub3JlIFBhZ2UgUnVsZSBGaXJlZCBkYklEID0gIiArIGRvYy5kYklEICsgIiBAQEAjIik7CnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbihkb2MsIlhfYnV0dG9uQWN0aW9uIik7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwphbGVydCgiaW5kZXhJbml0aWFsaXplZCA9ICIgKyBpbmRleEluaXRpYWxpemVkKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CglzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKCXN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwoJekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYyxzdGFja0ZvbGRlciwgY29tcGFueUNvZGUsIHN0YWNrSWQpOwp9CnZhciBjdXJJbmRleFBhZ2VzID0gWChkb2MsICJYX2lnbm9yZWRQYWdlcyIpOwppZiAoY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICBjdXJJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzICs9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfaWdub3JlZFBhZ2VzIiwgY3VySW5kZXhQYWdlcyk7CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwpzcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiaWdub3JlIiwgcGFnZVJhbmdlKTsKYWxlcnQoIkBAQCBwYWdlUmFuZ2UgPSAiICsgcGFnZVJhbmdlKTsKLy8qCi8qIEFGVEVSIFRISVMgUE9JTlQsIFRIRSBET0MgV0lMTCBIT0xEIERBVEEgRk9SIE5FVyBTTklQUEVULCBOT1QgVEhFIFNUQUNLIFNOSVBQRVQgKi8KLy8qCgovKiBDUk4xNjA4MjUgU2V0IHRoZSBwYWdlIGNvdW50IHNvIHRoYXQgaXQgZG9lcyBub3QgaGF2ZSB0aGUgcGFyZW50IHBhZ2UgY291bnQgKi8KYWxlcnQoIkBAQCBCRUZPUkUgQ0FMTCBUTyBDT1VOVFBBR0VTIEBAQCIpOwp2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MsIHBhZ2VSYW5nZSk7ICAvL0NSTjE4MDEwMiBBZGRlZCBtaXNzaW5nIHpEYXRhIHJlZmVyZW5jZQphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CgovKiBQbGFjZSB0aGUgc3BsaXQgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyICovCmFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSBpZ25vcmVkIHBhZ2VzIGRvY3VtZW50IGludG8gdGhlIGZpbmFsIHpTdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7IC8vSlBCMTgwNzEwIGNoYW5nZWQgdG8gc3RhY2sgdG8gelN0YWNrCm1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwp1bmxvY2tEb2N1bWVudChkb2MpOwoKdHJhY2soZG9jLCAiaWdub3JlZCIsIGRvYy5CQVRFUywgcGFnZUNvdW50KTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJuZXh0UGFnZSh+aWdub3JlZH4pO3VwZGF0ZURFU3RhdHVzKH5pZ25vcmVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7Ci8qIGVuZCBvZiBydWxlICovCg=="},"ordinal":12}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Ignore Page Rule Fired dbID = " + doc.dbID + " @@@#");
var stackId = X(doc, "X_stack");
var stackFolder = stackId + "-STACK";
var companyCode = doc.deliveredTo;
/* Clear the trigger that invoked this rule */
zData.clearTriggerCondition(doc,"X_buttonAction");
var indexInitialized = X(doc,"X_indexInitialized");
alert("indexInitialized = " + indexInitialized);
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
alert("@@@ pageRange = " + pageRange);
//*
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
//*

/* CRN160825 Set the page count so that it does not have the parent page count */
alert("@@@ BEFORE CALL TO COUNTPAGES @@@");
var pageCount = zData.countPages(doc, pageRange);  //CRN180102 Added missing zData reference
alert("@@@@ pageCount = " + pageCount);
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
updateDB(doc,arrOfPairs);

/* Place the split document into the stack folder */
alert("@@@@@@ Moving the ignored pages document into the final zStack folder: " + stackFolder); //JPB180710 changed to stack to zStack
moveDocument(doc,"",stackFolder);
unlockDocument(doc);

track(doc, "ignored", doc.BATES, pageCount);
addPostExecutionScript(doc, "nextPage(~ignored~);updateDEStatus(~ignored:" + pageRange + "~);");
/* end of rule */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
