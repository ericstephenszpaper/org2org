<!--
// Name: Stack Complete
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV191029 to set owner
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-29 19:21:53","active":true,"button":"Stack Complete","name":"Stack Complete","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Stack Complete","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgelN0YWNrIENvbXBsZXRlIFJ1bGUgRmlyZWQgQEBAIyIpOwoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwphcnJPZlBhaXJzLnB1c2goIlhfdHJpYWdlU3RhdHVzIiwgIkNvbXBsZXRlIik7CmFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsIkNvbXBsZXRlIik7CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBzZlN0YWNrSWQgPSBYKGRvYywiWF9zZlN0YWNrSWQiKTsgLy9FUlMxNzA3MjcgIzQwNDQ3Ci8vQ1JOMTcwNjI2IEFsc28gc2F2ZSB0aGUgc3RhdHVzIGluIHRoZSB6U3RhY2sgcmVjb3JkLgppZiAoc2ZTdGFja0lkPT09IiIpIHNmU3RhY2tJZCA9IHpEYXRhLmdldFN0YWNrSWQoIiIpOwphbGVydCgiQEBAQEBAIENPTVBMRVRFIFNUQUNLIC0tIEN1cnJlbnRseSBhdHRhY2hlZCB0byBTdGFja19fYyB3aXRoIElEOiAiICsgc2ZTdGFja0lkKTsKCmlmIChzZlN0YWNrSWQgJiYgc2ZTdGFja0lkLmxlbmd0aCA+IDApIHsKYXJyT2ZQYWlycyA9IFtdOwppZiAoekRhdGEuVHJpYWdlX1N0YXR1c19fYykgYXJyT2ZQYWlycy5wdXNoKCJUcmlhZ2VfU3RhdHVzX19jIiwgIkNvbXBsZXRlIik7IC8vRVJTMTkwNjE4IFRPRE8KYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDb21wbGV0ZSIpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhZ2VfX2MiLCAiQ29tcGxldGVkIik7CmFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsICIwMEc1RTAwMDAwNGxxblkiKTsvLyBQVjE5MTAyOSB0byBzZXQgb3duZXIKdXBkYXRlU0ZSZWNvcmQoZG9jLHpEYXRhLnpwcywgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKfQoKCi8vdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwovL2FsZXJ0KCIjIyMjIyBDT01QTEVURSBTVEFDSzogY29tcGFueUNvZGUgPSAiICsgY29tcGFueUNvZGUpOwovL3ZhciBvbGRGb2xkZXIgPSBjb21wYW55Q29kZS5pbmRleE9mKCIxMzA2IikgPiAwID8gIjIwNTAwVHJpYWdlLVMxQSIgOiAiMjA1MDBUcmlhZ2UtUzFCIjsgLy9FUlMxOTA2MTggVE9ETwoKLy9hbGVydCgiIyMjIyMgQ09NUExFVEUgU1RBQ0s6IG1vdmluZyBmcm9tIG9sZEZvbGRlcjogIiArIG9sZEZvbGRlcik7Ci8vbW92ZURvY3VtZW50KGRvYyxvbGRGb2xkZXIsIiIpOyAvL0VSUzE5MDYxOCBUT0RPCi8vcmVsb2FkQnlCQVRFUyhkb2Msb2xkRm9sZGVyKTsgLy9FUlMxOTA2MTggVE9ETwp1bmxvY2tEb2N1bWVudChkb2MpOwoKdHJhY2soZG9jLCAielN0YWNrIGNvbXBsZXRlZCIsIGRvYy5CQVRFUywgZG9jLm51bVBhZ2VzKTsKaGlkZURvY3VtZW50KGRvYyk7Ci8vQ1JOMTYxMDA1IENhc2UgIzMwMTczIENsZWFyIGxhYmVsIGJhciB3aGVuIFN0YWNrIGlzIGNvbXBsZXRlZAphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjsgJCgnI3JlY29yZExhYmVsJykuaHRtbCgnJyk7ICQoJyNERUZvcm1zTGlzdCcpLmhpZGUoKTsgJCgnI2RhdGFFbnRyeURJVicpLmhpZGUoKTsiKTsKLy9NU0gxNzA5MTQgYWRkIGNsb3NlIHdpbmRvdyBkaWFsb2cuIHN3aXBlZCBmcm9tIEFzdHJhWmVuZWNhIGZBY2Nlc3MzNjAgc2FuZGJveAphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjtpZiAoY29uZmlybSgnUGxlYXNlIGNsb3NlIHRoaXMgd2luZG93IGFuZCByZXR1cm4gdG8gdGhlIFRyaWFnZSBsaXN0IHZpZXcgdG8gY29udGludWUgd29ya2luZycpKSB3aW5kb3cuY2xvc2UoKTsiKTsKLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgImlmIChjb25maXJtKCdQbGVhc2UgY2xvc2UgdGhpcyB3aW5kb3cgYW5kIHJldHVybiB0byB0aGUgVHJpYWdlIGxpc3QgdmlldyB0byBjb250aW51ZSB3b3JraW5nJykpIHdpbmRvdy5jbG9zZSgpOyIpOwovL1BWMTkwNDI1IHJlZGlyZWN0IHRvIHpTdGFjayBvbmNlIFN0YWNrIGNvbXBsZXRlCi8vYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7IHdpbmRvdy5sb2NhdGlvbi5ocmVmPSciKyBYKGRvYywiWF9hdHRhY2hlZFRvIikgKyAiJzsiKTsKLyogZW5kIG9mIHJ1bGUgKi8K"},"ordinal":14}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ zStack Complete Rule Fired @@@#");

/* Clear the trigger that invoked this rule */
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
arrOfPairs.push("X_triageStatus", "Complete");
arrOfPairs=zData.addStage(doc,arrOfPairs,"Complete");
updateDB(doc,arrOfPairs);

var sfStackId = X(doc,"X_sfStackId"); //ERS170727 #40447
//CRN170626 Also save the status in the zStack record.
if (sfStackId==="") sfStackId = zData.getStackId("");
alert("@@@@@@ COMPLETE STACK -- Currently attached to Stack__c with ID: " + sfStackId);

if (sfStackId && sfStackId.length > 0) {
arrOfPairs = [];
if (zData.Triage_Status__c) arrOfPairs.push("Triage_Status__c", "Complete"); //ERS190618 TODO
arrOfPairs.push("ZPAPER__Status__c", "Complete");
arrOfPairs.push("ZPAPER__Stage__c", "Completed");
arrOfPairs.push("OwnerId", "00G5E000004lqnY");// PV191029 to set owner
updateSFRecord(doc,zData.zps, sfStackId, arrOfPairs);
}


//var companyCode = doc.deliveredTo;
//alert("##### COMPLETE STACK: companyCode = " + companyCode);
//var oldFolder = companyCode.indexOf("1306") > 0 ? "20500Triage-S1A" : "20500Triage-S1B"; //ERS190618 TODO

//alert("##### COMPLETE STACK: moving from oldFolder: " + oldFolder);
//moveDocument(doc,oldFolder,""); //ERS190618 TODO
//reloadByBATES(doc,oldFolder); //ERS190618 TODO
unlockDocument(doc);

track(doc, "zStack completed", doc.BATES, doc.numPages);
hideDocument(doc);
//CRN161005 Case #30173 Clear label bar when Stack is completed
addPostExecutionScript(doc, "; $('#recordLabel').html(''); $('#DEFormsList').hide(); $('#dataEntryDIV').hide();");
//MSH170914 add close window dialog. swiped from AstraZeneca fAccess360 sandbox
addPostExecutionScript(doc, ";if (confirm('Please close this window and return to the Triage list view to continue working')) window.close();");
//addPostExecutionScript(doc, "if (confirm('Please close this window and return to the Triage list view to continue working')) window.close();");
//PV190425 redirect to zStack once Stack complete
//addPostExecutionScript(doc, "; window.location.href='"+ X(doc,"X_attachedTo") + "';");
/* end of rule */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gZG9WYWxpZGF0aW9uKCkgewogICAgCiAgICAgdmFyIGluZGV4UGFnZXM9IiI7CiAgICAgaWYoX3pEYXRhWyJYX2luZGV4ZWRQYWdlcyJdICYmICAoX3pEYXRhWyJYX2luZGV4ZWRQYWdlcyJdKS5sZW5ndGggPjApewogICAgICAgICBpbmRleFBhZ2VzID0gKF96RGF0YVsiWF9pbmRleGVkUGFnZXMiXSk7CiAgICAgfQogICAgIHZhciBwYWdlQ291bnQgPSBfekRhdGFbIlhfY291bnQiXTsKICAgICB2YXIgbm90SW5kZXhlZD0iIjsKICAgICB2YXIgaWdub3JlZFBhZ2VzID0gX3pEYXRhWyJYX2lnbm9yZWRQYWdlcyJdOwogICAgIGlmKCBpZ25vcmVkUGFnZXMgJiYgaWdub3JlZFBhZ2VzLmxlbmd0aCA+MCl7CiAgICAgICAgIGluZGV4UGFnZXMgPSBpbmRleFBhZ2VzLmNvbmNhdCgiLCIpOwogICAgICAgICBpbmRleFBhZ2VzID0gaW5kZXhQYWdlcy5jb25jYXQoaWdub3JlZFBhZ2VzKTsKICAgICB9CiAgICAgdmFyIGluZGV4UGFnZXNBcnJheSA9IGluZGV4UGFnZXMuc3BsaXQoIiwiKTsgIAogICAgIGZvcih2YXIgaT0xO2k8PSBwYWdlQ291bnQ7aSsrKXsKICAgICAgICBjb25zb2xlLmxvZyhpbmRleFBhZ2VzQXJyYXkuaW5kZXhPZihpKSk7CiAgICAgICAgaWYoaW5kZXhQYWdlcyAmJiAhaW5kZXhQYWdlcy5jb250YWlucyhpKSl7CiAgICAgICAgbm90SW5kZXhlZCArPSBpKyIsIjsKICAgICAgICB9ZWxzZSBpZighaW5kZXhQYWdlcyl7CiAgICAgICAgbm90SW5kZXhlZCArPSBpKyIsIjsKICAgICAgICB9CiAgICB9CiAgICBpZiAobm90SW5kZXhlZC5sZW5ndGggPiAwKSB7CiAgICAgICAgYWxlcnQoIkVSUk9SOiBUaGUgZm9sbG93aW5nIHBhZ2VzIGFyZSBub3QgaW5kZXhlZCA6ICIgKyBub3RJbmRleGVkKTsKICAgICAgICByZXR1cm4gZmFsc2U7ICAgCiAgICB9CiAgICBfekRhdGFbImRiLXN0YXR1cyJdPSJDb21wbGV0ZSI7CiAgICByZXR1cm4gdHJ1ZTsKICAgIAp9CgpyZXR1cm4gZG9WYWxpZGF0aW9uKCk7
//--- RULE VALIDATION CODE - END ---

</script>
