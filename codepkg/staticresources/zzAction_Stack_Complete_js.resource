<!--
// Name: Stack Complete
// Committer: eric.stephens@zpaper.com
// Update: ERS200226 #66686
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-26 15:51:29","active":true,"button":"Stack Complete","name":"Stack Complete","conditions":{"logic":"or","arguments":[{"name":"doc.status","value":"Complete","operation":"contains"},{"name":"doc.X(\"X_buttonAction\")","value":"Complete","operation":"contains"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgelN0YWNrIENvbXBsZXRlIFJ1bGUgRmlyZWQgQEBAIyIpOwoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwphcnJPZlBhaXJzLnB1c2goIlhfdHJpYWdlU3RhdHVzIiwgIkNvbXBsZXRlIik7CmFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsIkNvbXBsZXRlIik7CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBzZlN0YWNrSWQgPSBYKGRvYywiWF9zZlN0YWNrSWQiKTsgLy9FUlMxNzA3MjcgIzQwNDQ3Ci8vQ1JOMTcwNjI2IEFsc28gc2F2ZSB0aGUgc3RhdHVzIGluIHRoZSB6U3RhY2sgcmVjb3JkLgppZiAoc2ZTdGFja0lkPT09IiIpIHNmU3RhY2tJZCA9IHpEYXRhLmdldFN0YWNrSWQoIiIpOwphbGVydCgiQEBAQEBAIENPTVBMRVRFIFNUQUNLIC0tIEN1cnJlbnRseSBhdHRhY2hlZCB0byBTdGFja19fYyB3aXRoIElEOiAiICsgc2ZTdGFja0lkKTsKCmlmIChzZlN0YWNrSWQgJiYgc2ZTdGFja0lkLmxlbmd0aCA+IDApIHsKCWFyck9mUGFpcnMgPSBbXTsKCWlmICh6RGF0YS5UcmlhZ2VfU3RhdHVzX19jKSBhcnJPZlBhaXJzLnB1c2goIlRyaWFnZV9TdGF0dXNfX2MiLCAiQ29tcGxldGUiKTsgLy9FUlMxOTA2MTggVE9ETwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDb21wbGV0ZSIpOwoJdXBkYXRlU0ZSZWNvcmQoZG9jLHpEYXRhLnpwcywgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKfQoKCi8vdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwovL2FsZXJ0KCIjIyMjIyBDT01QTEVURSBTVEFDSzogY29tcGFueUNvZGUgPSAiICsgY29tcGFueUNvZGUpOwovL3ZhciBvbGRGb2xkZXIgPSBjb21wYW55Q29kZS5pbmRleE9mKCIxMzA2IikgPiAwID8gIjIwNTAwVHJpYWdlLVMxQSIgOiAiMjA1MDBUcmlhZ2UtUzFCIjsgLy9FUlMxOTA2MTggVE9ETwoKLy9hbGVydCgiIyMjIyMgQ09NUExFVEUgU1RBQ0s6IG1vdmluZyBmcm9tIG9sZEZvbGRlcjogIiArIG9sZEZvbGRlcik7Ci8vbW92ZURvY3VtZW50KGRvYyxvbGRGb2xkZXIsIiIpOyAvL0VSUzE5MDYxOCBUT0RPCi8vcmVsb2FkQnlCQVRFUyhkb2Msb2xkRm9sZGVyKTsgLy9FUlMxOTA2MTggVE9ETwp1bmxvY2tEb2N1bWVudChkb2MpOwoKdHJhY2soZG9jLCAielN0YWNrIGNvbXBsZXRlZCIsIGRvYy5CQVRFUywgZG9jLm51bVBhZ2VzKTsKaGlkZURvY3VtZW50KGRvYyk7Ci8vQ1JOMTYxMDA1IENhc2UgIzMwMTczIENsZWFyIGxhYmVsIGJhciB3aGVuIFN0YWNrIGlzIGNvbXBsZXRlZAphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjsgJCgnI3JlY29yZExhYmVsJykuaHRtbCgnJyk7ICQoJyNERUZvcm1zTGlzdCcpLmhpZGUoKTsgJCgnI2RhdGFFbnRyeURJVicpLmhpZGUoKTsiKTsKLy9NU0gxNzA5MTQgYWRkIGNsb3NlIHdpbmRvdyBkaWFsb2cuIHN3aXBlZCBmcm9tIEFzdHJhWmVuZWNhIGZBY2Nlc3MzNjAgc2FuZGJveAovL0VSUzE5MDYxOCBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgImlzTG9ja2VkID0gfk15VW5Mb2NrZWR+O2lmIChjb25maXJtKH5DbG9zZSB3aW5kb3d+KSkgd2luZG93LmNsb3NlKCk7Iik7Ci8vUFYxOTA0MjUgcmVkaXJlY3QgdG8gelN0YWNrIG9uY2UgU3RhY2sgY29tcGxldGUKdmFyIHNmZGNVUkw9WChkb2MsIlhfYXR0YWNoZWRUbyIpOwpzZmRjVVJMPXNmZGNVUkwuc3Vic3RyaW5nKDAsc2ZkY1VSTC5sYXN0SW5kZXhPZigiLyIpKzEpK3NmU3RhY2tJZDsgLy9FUlMyMDAyMjYgIzY2Njg2CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyB3aW5kb3cubG9jYXRpb24uaHJlZj0nIisgc2ZkY1VSTCsgIic7Iik7IAovKiBlbmQgb2YgcnVsZSAqLw=="},"ordinal":9}

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
//ERS190618 addPostExecutionScript(doc, "isLocked = ~MyUnLocked~;if (confirm(~Close window~)) window.close();");
//PV190425 redirect to zStack once Stack complete
var sfdcURL=X(doc,"X_attachedTo");
sfdcURL=sfdcURL.substring(0,sfdcURL.lastIndexOf("/")+1)+sfStackId; //ERS200226 #66686
addPostExecutionScript(doc, "; window.location.href='"+ sfdcURL+ "';"); 
/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
