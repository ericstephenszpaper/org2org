<!--
// Name: Stack Complete
// Committer: judson.bruno@zpaper.com
// Update: JPB201103 closing view
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-11-03 17:00:04","active":true,"button":"Stack Complete","name":"Stack Complete","conditions":{"logic":"or","arguments":[{"name":"doc.status","value":"Complete","operation":"contains"},{"name":"doc.X(\"X_buttonAction\")","value":"Complete","operation":"contains"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgelN0YWNrIENvbXBsZXRlIFJ1bGUgRmlyZWQgQEBAIyIpOwoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp6RGF0YS5yZXZpZXdzID0gWChkb2MsICJYX3Jldmlld3MiKTsJCS8vQ1JOMjAxMDI2ICM3Njc4OCBNYWtlIHN1cmUgd2UgcHJlc2VydmUgdGhlIGN1cnJlbnQgWF9yZXZpZXdzCi8vRVJTMjAwMzE0IGFyck9mUGFpcnMucHVzaCgiWF90cmlhZ2VTdGF0dXMiLCAiQ29tcGxldGUiKTsKYXJyT2ZQYWlycz16RGF0YS5hZGRTdGFnZShkb2MsYXJyT2ZQYWlycywiQ29tcGxldGVkIik7IC8vRVJTMjAwMzE0IENvbXBsZXRlIG5vdyBDb21wbGV0ZWQKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCJYX3NmU3RhY2tJZCIpOyAvL0VSUzE3MDcyNyAjNDA0NDcKLy9DUk4xNzA2MjYgQWxzbyBzYXZlIHRoZSBzdGF0dXMgaW4gdGhlIHpTdGFjayByZWNvcmQuCmlmIChzZlN0YWNrSWQ9PT0iIikgc2ZTdGFja0lkID0gekRhdGEuZ2V0U3RhY2tJZCgiIik7CmFsZXJ0KCJAQEBAQEAgQ09NUExFVEUgU1RBQ0sgLS0gQ3VycmVudGx5IGF0dGFjaGVkIHRvIFN0YWNrX19jIHdpdGggSUQ6ICIgKyBzZlN0YWNrSWQpOwoKaWYgKHNmU3RhY2tJZCAmJiBzZlN0YWNrSWQubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycyA9IFtdOwoJLy9FUlMyMDAzMTQgaWYgKHpEYXRhLlRyaWFnZV9TdGF0dXNfX2MpIGFyck9mUGFpcnMucHVzaCgiVHJpYWdlX1N0YXR1c19fYyIsICJDb21wbGV0ZSIpOyAvL0VSUzE5MDYxOCBUT0RPCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhZ2VfX2MiLCAiQ29tcGxldGVkIik7IC8vQ1JOMjAxMDI2ICM3Njc4OAoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDb21wbGV0ZSIpOyAvL0VSUzIwMDMxNCAjNzAzMzYKCS8vQ1JOMjAxMDI2ICM3Njc4OCBEb24ndCBjYWxsIHRoaXMuIEl0IHNldHMgdGhlIFRpbWVfQ29tcGxldGVfRGF0ZV9fYyBmaWVsZCB3aGljaCBpcyBhbHJlYWR5IGJlaW5nIHNldCBieSBhIFNhbGVzZm9yY2UKCS8vIHdvcmtmbG93IHJ1bGUgYW5kIGl0IGFwcGVhcnMgdGhhdCB0aGUgdHdvIGFyZSBjb25mbGljdGluZyB3aXRoIGVhY2ggb3RoZXIuCgkvLyBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFN0YWNrQ29tcGxldGUoZG9jLGFyck9mUGFpcnMsekRhdGEpOy8vRVJTMjAwMzE0ICM3MDMzNgoJdXBkYXRlU0ZSZWNvcmQoZG9jLHpEYXRhLnpwcywgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKfQoKCi8vdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwovL2FsZXJ0KCIjIyMjIyBDT01QTEVURSBTVEFDSzogY29tcGFueUNvZGUgPSAiICsgY29tcGFueUNvZGUpOwovL3ZhciBvbGRGb2xkZXIgPSBjb21wYW55Q29kZS5pbmRleE9mKCIxMzA2IikgPiAwID8gIjIwNTAwVHJpYWdlLVMxQSIgOiAiMjA1MDBUcmlhZ2UtUzFCIjsgLy9FUlMxOTA2MTggVE9ETwoKLy9hbGVydCgiIyMjIyMgQ09NUExFVEUgU1RBQ0s6IG1vdmluZyBmcm9tIG9sZEZvbGRlcjogIiArIG9sZEZvbGRlcik7Ci8vbW92ZURvY3VtZW50KGRvYyxvbGRGb2xkZXIsIiIpOyAvL0VSUzE5MDYxOCBUT0RPCi8vcmVsb2FkQnlCQVRFUyhkb2Msb2xkRm9sZGVyKTsgLy9FUlMxOTA2MTggVE9ETwp1bmxvY2tEb2N1bWVudChkb2MpOwoKdHJhY2soZG9jLCAielN0YWNrIGNvbXBsZXRlZCIsIGRvYy5CQVRFUywgZG9jLm51bVBhZ2VzKTsKaGlkZURvY3VtZW50KGRvYyk7Ci8vQ1JOMTYxMDA1IENhc2UgIzMwMTczIENsZWFyIGxhYmVsIGJhciB3aGVuIFN0YWNrIGlzIGNvbXBsZXRlZAovL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyAkKCcjcmVjb3JkTGFiZWwnKS5odG1sKCcnKTsgJCgnI0RFRm9ybXNMaXN0JykuaGlkZSgpOyAkKCcjZGF0YUVudHJ5RElWJykuaGlkZSgpOyIpOyAgLy9KUEIyMDExMDMgY2xvc2luZyB2aWV3Ci8vTVNIMTcwOTE0IGFkZCBjbG9zZSB3aW5kb3cgZGlhbG9nLiBzd2lwZWQgZnJvbSBBc3RyYVplbmVjYSBmQWNjZXNzMzYwIHNhbmRib3gKLy9FUlMxOTA2MTggYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJpc0xvY2tlZCA9IH5NeVVuTG9ja2VkfjtpZiAoY29uZmlybSh+Q2xvc2Ugd2luZG93fikpIHdpbmRvdy5jbG9zZSgpOyIpOwovL1BWMTkwNDI1IHJlZGlyZWN0IHRvIHpTdGFjayBvbmNlIFN0YWNrIGNvbXBsZXRlCnZhciBzZmRjVVJMPVgoZG9jLCJYX2F0dGFjaGVkVG8iKTsKc2ZkY1VSTD1zZmRjVVJMLnN1YnN0cmluZygwLHNmZGNVUkwubGFzdEluZGV4T2YoIi8iKSsxKStzZlN0YWNrSWQ7IC8vRVJTMjAwMjI2ICM2NjY4NgovL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyB3aW5kb3cubG9jYXRpb24uaHJlZj0nIisgc2ZkY1VSTCsgIic7Iik7IAovL0NSTjIwMTEwMyBXZSBjYW4ndCBzZXQgdGhlIGlmcmFtZSBsb2NhdGlvbiB0byB2aWV3IHRoZSBTYWxlc2ZvcmNlIHJlY29yZCBiZWNhdXNlIGl0J3MgU2FsZXNmb3JjZSBpbnNpZGUgb2YgU2FsZXNmb3JjZSBhbmQgc2VjdXJpdHksIGV0Yy4KYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7IGFsZXJ0KCdUcmlhZ2UgaXMgbm93IGNvbXBsZXRlLiBQbGVhc2UgY2xvc2UgdGhlIHpQYXBlciBUcmlhZ2UgdGFiIHRvIHJldHVybiB0byB0aGUgelN0YWNrIHJlY29yZC4nKTsiKTsgCi8qIGVuZCBvZiBydWxlICov"},"ordinal":13}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ zStack Complete Rule Fired @@@#");

/* Clear the trigger that invoked this rule */
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
zData.reviews = X(doc, "X_reviews");		//CRN201026 #76788 Make sure we preserve the current X_reviews
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
	arrOfPairs.push("ZPAPER__Stage__c", "Completed"); //CRN201026 #76788
	arrOfPairs.push("ZPAPER__Status__c", "Complete"); //ERS200314 #70336
	//CRN201026 #76788 Don't call this. It sets the Time_Complete_Date__c field which is already being set by a Salesforce
	// workflow rule and it appears that the two are conflicting with each other.
	// arrOfPairs=zData.clientStackComplete(doc,arrOfPairs,zData);//ERS200314 #70336
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
//addPostExecutionScript(doc, "; $('#recordLabel').html(''); $('#DEFormsList').hide(); $('#dataEntryDIV').hide();");  //JPB201103 closing view
//MSH170914 add close window dialog. swiped from AstraZeneca fAccess360 sandbox
//ERS190618 addPostExecutionScript(doc, "isLocked = ~MyUnLocked~;if (confirm(~Close window~)) window.close();");
//PV190425 redirect to zStack once Stack complete
var sfdcURL=X(doc,"X_attachedTo");
sfdcURL=sfdcURL.substring(0,sfdcURL.lastIndexOf("/")+1)+sfStackId; //ERS200226 #66686
//addPostExecutionScript(doc, "; window.location.href='"+ sfdcURL+ "';"); 
//CRN201103 We can't set the iframe location to view the Salesforce record because it's Salesforce inside of Salesforce and security, etc.
addPostExecutionScript(doc, "; alert('Triage is now complete. Please close the zPaper Triage tab to return to the zStack record.');"); 
/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
