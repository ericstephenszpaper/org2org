<!--
// Name: Stack Complete
// Committer: andrew@zpaper.com
// Update: updating
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-05-30 17:21:30","active":true,"button":"Stack Complete","name":"Stack Complete","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Stack Complete","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgU3RhY2sgQ29tcGxldGUgUnVsZSBGaXJlZCBAQEAjIik7CgovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCAiIik7CmFyck9mUGFpcnMucHVzaCgiWF90cmlhZ2VTdGF0dXMiLCAiQ29tcGxldGUiKTsKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKLy9DUk4xNzA2MjYgQWxzbyBzYXZlIHRoZSBzdGF0dXMgaW4gdGhlIHpTdGFjayByZWNvcmQuCi8vTVNIMTcwODI4IHRyeSBYX3NmU3RhY2tJZCBmaXJzdAovL3ZhciBzZlN0YWNrSWQgPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOwp2YXIgc2ZTdGFja0lkID0gWChkb2MsICJYX3NmU3RhY2tJZCIpOwovL01TSDE3MDgyOCBpZiAoc2ZTdGFja0lkICYmIHNmU3RhY2tJZC5sZW5ndGggPiAwKSB7CmlmIChzZlN0YWNrSWQgPT09ICIiKSB7CiAgICBzZlN0YWNrSWQgPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOwogICAgaWYgKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpID49IDApIHsKICAgICAgICBzZlN0YWNrSWQgPSBzZlN0YWNrSWQuc3Vic3RyaW5nKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpICsgMSk7CiAgICAgICAgaWYgKHNmU3RhY2tJZC5pbmRleE9mKCcsJykgPj0gMCkgeyBzZlN0YWNrSWQgPSBzZlN0YWNrSWQuc3Vic3RyaW5nKDAsIHNmU3RhY2tJZC5pbmRleE9mKCcsJykpOyB9CiAgICB9Cn0KYWxlcnQoIkBAQEBAQCBDT01QTEVURSBTVEFDSyAtLSBDdXJyZW50bHkgYXR0YWNoZWQgdG8gU3RhY2tfX2Mgd2l0aCBJRDogIiArIHNmU3RhY2tJZCk7CmlmIChzZlN0YWNrSWQgJiYgc2ZTdGFja0lkLmxlbmd0aCA+IDApIHsKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19TdGF0dXNfX2MiLCAiQ29tcGxldGUiKTsKICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgIlpQQVBFUl9felN0YWNrX19jIiwgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKfQoKdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwphbGVydCgiIyMjIyMgQ09NUExFVEUgU1RBQ0s6IGNvbXBhbnlDb2RlID0gIiArIGNvbXBhbnlDb2RlKTsKdmFyIG9sZEZvbGRlciA9IGNvbXBhbnlDb2RlLmluZGV4T2YoIjEzMDYiKSA+IDAgPyAiMjA1MDBUcmlhZ2UtUzFBIiA6ICIyMDUwMFRyaWFnZS1TMUIiOwoKYWxlcnQoIiMjIyMjIENPTVBMRVRFIFNUQUNLOiBtb3ZpbmcgZnJvbSBvbGRGb2xkZXI6ICIgKyBvbGRGb2xkZXIpOwptb3ZlRG9jdW1lbnQoZG9jLG9sZEZvbGRlciwiIik7CnJlbG9hZEJ5QkFURVMoZG9jLG9sZEZvbGRlcik7CgovL0NSTjE3MDcxNyBVbmxvY2sgdGhlIFNuaXBwZXQKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCnRyYWNrKGRvYywgIlN0YWNrIGNvbXBsZXRlZCIsIGRvYy5CQVRFUywgZG9jLm51bVBhZ2VzKTsKaGlkZURvY3VtZW50KGRvYyk7Ci8vQ1JOMTYxMDA1IENhc2UgIzMwMTczIENsZWFyIGxhYmVsIGJhciB3aGVuIFN0YWNrIGlzIGNvbXBsZXRlZAphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjsgJCgnI3JlY29yZExhYmVsJykuaHRtbCgnJyk7ICQoJyNERUZvcm1zTGlzdCcpLmhpZGUoKTsgJCgnI2RhdGFFbnRyeURJVicpLmhpZGUoKTsiKTsKLy9NU0gxNzA5MTQgYWRkIGNsb3NlIHdpbmRvdyBkaWFsb2cuIHN3aXBlZCBmcm9tIEFzdHJhWmVuZWNhIGZBY2Nlc3MzNjAgc2FuZGJveAphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgImlzTG9ja2VkID0gfk15VW5Mb2NrZWR+O2lmIChjb25maXJtKH5DbG9zZSB3aW5kb3d+KSkgd2luZG93LmNsb3NlKCk7Iik7Ci8qIGVuZCBvZiBydWxlICovCg=="},"ordinal":11}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Stack Complete Rule Fired @@@#");

/* Clear the trigger that invoked this rule */
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
arrOfPairs.push("X_triageStatus", "Complete");
updateDB(doc,arrOfPairs);

//CRN170626 Also save the status in the zStack record.
//MSH170828 try X_sfStackId first
//var sfStackId = X(doc, "X_attachedTo");
var sfStackId = X(doc, "X_sfStackId");
//MSH170828 if (sfStackId && sfStackId.length > 0) {
if (sfStackId === "") {
    sfStackId = X(doc, "X_attachedTo");
    if (sfStackId.lastIndexOf('/') >= 0) {
        sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/') + 1);
        if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
}
alert("@@@@@@ COMPLETE STACK -- Currently attached to Stack__c with ID: " + sfStackId);
if (sfStackId && sfStackId.length > 0) {
    arrOfPairs = [];
    arrOfPairs.push("ZPAPER__Status__c", "Complete");
    updateSFRecord(doc, "ZPAPER__zStack__c", sfStackId, arrOfPairs);
}

var companyCode = doc.deliveredTo;
alert("##### COMPLETE STACK: companyCode = " + companyCode);
var oldFolder = companyCode.indexOf("1306") > 0 ? "20500Triage-S1A" : "20500Triage-S1B";

alert("##### COMPLETE STACK: moving from oldFolder: " + oldFolder);
moveDocument(doc,oldFolder,"");
reloadByBATES(doc,oldFolder);

//CRN170717 Unlock the Snippet
unlockDocument(doc);

track(doc, "Stack completed", doc.BATES, doc.numPages);
hideDocument(doc);
//CRN161005 Case #30173 Clear label bar when Stack is completed
addPostExecutionScript(doc, "; $('#recordLabel').html(''); $('#DEFormsList').hide(); $('#dataEntryDIV').hide();");
//MSH170914 add close window dialog. swiped from AstraZeneca fAccess360 sandbox
addPostExecutionScript(doc, "isLocked = ~MyUnLocked~;if (confirm(~Close window~)) window.close();");
/* end of rule */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
