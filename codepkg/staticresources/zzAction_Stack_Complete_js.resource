<!--
// Name: Stack Complete
// Committer: eric.stephens@zpaper.com
// Update: ERS200314 arrOfPairs.push("X_triageStatus", "Complete");; ERS200314 Complete now Completed; ERS200314 if (zData.Triage_Status__c) arrOfPairs.push("Triage_Status__c", "Complete"); //ERS190618 TODO; ERS200314 #70336; ERS200314 #70336
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-03-14 21:41:00","active":true,"button":"Stack Complete","name":"Stack Complete","conditions":{"logic":"or","arguments":[{"name":"doc.status","value":"Complete","operation":"contains"},{"name":"doc.X(\"X_buttonAction\")","value":"Complete","operation":"contains"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgelN0YWNrIENvbXBsZXRlIFJ1bGUgRmlyZWQgQEBAIyIpOwoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwovL0VSUzIwMDMxNCBhcnJPZlBhaXJzLnB1c2goIlhfdHJpYWdlU3RhdHVzIiwgIkNvbXBsZXRlIik7CmFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsIkNvbXBsZXRlZCIpOyAvL0VSUzIwMDMxNCBDb21wbGV0ZSBub3cgQ29tcGxldGVkCnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBzZlN0YWNrSWQgPSBYKGRvYywiWF9zZlN0YWNrSWQiKTsgLy9FUlMxNzA3MjcgIzQwNDQ3Ci8vQ1JOMTcwNjI2IEFsc28gc2F2ZSB0aGUgc3RhdHVzIGluIHRoZSB6U3RhY2sgcmVjb3JkLgppZiAoc2ZTdGFja0lkPT09IiIpIHNmU3RhY2tJZCA9IHpEYXRhLmdldFN0YWNrSWQoIiIpOwphbGVydCgiQEBAQEBAIENPTVBMRVRFIFNUQUNLIC0tIEN1cnJlbnRseSBhdHRhY2hlZCB0byBTdGFja19fYyB3aXRoIElEOiAiICsgc2ZTdGFja0lkKTsKCmlmIChzZlN0YWNrSWQgJiYgc2ZTdGFja0lkLmxlbmd0aCA+IDApIHsKCWFyck9mUGFpcnMgPSBbXTsKCS8vRVJTMjAwMzE0IGlmICh6RGF0YS5UcmlhZ2VfU3RhdHVzX19jKSBhcnJPZlBhaXJzLnB1c2goIlRyaWFnZV9TdGF0dXNfX2MiLCAiQ29tcGxldGUiKTsgLy9FUlMxOTA2MTggVE9ETwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDb21wbGV0ZSIpOyAvL0VSUzIwMDMxNCAjNzAzMzYKCWFyck9mUGFpcnM9ekRhdGEuY2xpZW50U3RhY2tDb21wbGV0ZShkb2MsYXJyT2ZQYWlycyx6RGF0YSk7Ly9FUlMyMDAzMTQgIzcwMzM2Cgl1cGRhdGVTRlJlY29yZChkb2MsekRhdGEuenBzLCBzZlN0YWNrSWQsIGFyck9mUGFpcnMpOwp9CgoKLy92YXIgY29tcGFueUNvZGUgPSBkb2MuZGVsaXZlcmVkVG87Ci8vYWxlcnQoIiMjIyMjIENPTVBMRVRFIFNUQUNLOiBjb21wYW55Q29kZSA9ICIgKyBjb21wYW55Q29kZSk7Ci8vdmFyIG9sZEZvbGRlciA9IGNvbXBhbnlDb2RlLmluZGV4T2YoIjEzMDYiKSA+IDAgPyAiMjA1MDBUcmlhZ2UtUzFBIiA6ICIyMDUwMFRyaWFnZS1TMUIiOyAvL0VSUzE5MDYxOCBUT0RPCgovL2FsZXJ0KCIjIyMjIyBDT01QTEVURSBTVEFDSzogbW92aW5nIGZyb20gb2xkRm9sZGVyOiAiICsgb2xkRm9sZGVyKTsKLy9tb3ZlRG9jdW1lbnQoZG9jLG9sZEZvbGRlciwiIik7IC8vRVJTMTkwNjE4IFRPRE8KLy9yZWxvYWRCeUJBVEVTKGRvYyxvbGRGb2xkZXIpOyAvL0VSUzE5MDYxOCBUT0RPCnVubG9ja0RvY3VtZW50KGRvYyk7Cgp0cmFjayhkb2MsICJ6U3RhY2sgY29tcGxldGVkIiwgZG9jLkJBVEVTLCBkb2MubnVtUGFnZXMpOwpoaWRlRG9jdW1lbnQoZG9jKTsKLy9DUk4xNjEwMDUgQ2FzZSAjMzAxNzMgQ2xlYXIgbGFiZWwgYmFyIHdoZW4gU3RhY2sgaXMgY29tcGxldGVkCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyAkKCcjcmVjb3JkTGFiZWwnKS5odG1sKCcnKTsgJCgnI0RFRm9ybXNMaXN0JykuaGlkZSgpOyAkKCcjZGF0YUVudHJ5RElWJykuaGlkZSgpOyIpOwovL01TSDE3MDkxNCBhZGQgY2xvc2Ugd2luZG93IGRpYWxvZy4gc3dpcGVkIGZyb20gQXN0cmFaZW5lY2EgZkFjY2VzczM2MCBzYW5kYm94Ci8vRVJTMTkwNjE4IGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiaXNMb2NrZWQgPSB+TXlVbkxvY2tlZH47aWYgKGNvbmZpcm0ofkNsb3NlIHdpbmRvd34pKSB3aW5kb3cuY2xvc2UoKTsiKTsKLy9QVjE5MDQyNSByZWRpcmVjdCB0byB6U3RhY2sgb25jZSBTdGFjayBjb21wbGV0ZQp2YXIgc2ZkY1VSTD1YKGRvYywiWF9hdHRhY2hlZFRvIik7CnNmZGNVUkw9c2ZkY1VSTC5zdWJzdHJpbmcoMCxzZmRjVVJMLmxhc3RJbmRleE9mKCIvIikrMSkrc2ZTdGFja0lkOyAvL0VSUzIwMDIyNiAjNjY2ODYKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7IHdpbmRvdy5sb2NhdGlvbi5ocmVmPSciKyBzZmRjVVJMKyAiJzsiKTsgCi8qIGVuZCBvZiBydWxlICov"},"ordinal":12}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ zStack Complete Rule Fired @@@#");

/* Clear the trigger that invoked this rule */
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
//ERS200314 arrOfPairs.push("X_triageStatus", "Complete");
arrOfPairs=zData.addStage(doc,arrOfPairs,"Completed"); //ERS200314 Complete now Completed
updateDB(doc,arrOfPairs);

var sfStackId = X(doc,"X_sfStackId"); //ERS170727 #40447
//CRN170626 Also save the status in the zStack record.
if (sfStackId==="") sfStackId = zData.getStackId("");
alert("@@@@@@ COMPLETE STACK -- Currently attached to Stack__c with ID: " + sfStackId);

if (sfStackId && sfStackId.length > 0) {
	arrOfPairs = [];
	//ERS200314 if (zData.Triage_Status__c) arrOfPairs.push("Triage_Status__c", "Complete"); //ERS190618 TODO
	arrOfPairs.push("ZPAPER__Status__c", "Complete"); //ERS200314 #70336
	arrOfPairs=zData.clientStackComplete(doc,arrOfPairs,zData);//ERS200314 #70336
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
