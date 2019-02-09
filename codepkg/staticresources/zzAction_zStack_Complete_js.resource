<!--
// Name: zStack Complete
// Committer: judson.bruno@zpaper.com
// Update: JPB 180820 corrected zStack Complete from Stack Complete
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2018-08-20 20:07:52","active":true,"button":"zStack Complete","name":"zStack Complete","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"zStack Complete","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgelN0YWNrIENvbXBsZXRlIFJ1bGUgRmlyZWQgQEBAIyIpOyAvL0pQQjE4MDcxMCBjaGFuZ2VkIHRvIHN0YWNrIHRvIHpTdGFjawoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwphcnJPZlBhaXJzLnB1c2goIlhfdHJpYWdlU3RhdHVzIiwgIkNvbXBsZXRlIik7CmlmICgxPT09MSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKICAgIHZhciBiYSA9ICJDb21wbGV0ZWQiIC8vQ1JOMTgwMjI4IEVub3VnaCB3aXRoIHRoZSBzdHJpbmcgbWFuaXB1bGF0aW9uLiBXZSBLTm93IHRoZSBzdGF0dXMgaXMgY29tcGxldGVkIGhlcmUuCiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIGFsZXJ0KCJAQEBAIFNldHRpbmcgWF9yZXZpZXdlZFN0YXR1czogYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5Mgp9CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBzZlN0YWNrSWQgPSBYKGRvYywiWF9zZlN0YWNrSWQiKTsgLy9FUlMxNzA3MjcgIzQwNDQ3Ci8vQ1JOMTcwNjI2IEFsc28gc2F2ZSB0aGUgc3RhdHVzIGluIHRoZSB6U3RhY2sgcmVjb3JkLgppZiAoc2ZTdGFja0lkPT09IiIpIHNmU3RhY2tJZCA9IFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsKYWxlcnQoIkBAQEBAQCBDT01QTEVURSBaU1RBQ0sgLS0gQ3VycmVudGx5IGF0dGFjaGVkIHRvIFN0YWNrX19jIHdpdGggSUQ6ICIgKyBzZlN0YWNrSWQpOyAvL0pQQjE4MDcxMCBjaGFuZ2VkIHRvIHN0YWNrIHRvIHpTdGFjawppZiAoc2ZTdGFja0lkICYmIHNmU3RhY2tJZC5sZW5ndGggPiAwKSB7CglpZiAoc2ZTdGFja0lkLmxhc3RJbmRleE9mKCcvJykgPj0gMCkgewoJCXNmU3RhY2tJZCA9IHNmU3RhY2tJZC5zdWJzdHJpbmcoc2ZTdGFja0lkLmxhc3RJbmRleE9mKCcvJykrMSk7CgkJaWYgKHNmU3RhY2tJZC5pbmRleE9mKCcsJykgPj0gMCkgeyBzZlN0YWNrSWQgPSBzZlN0YWNrSWQuc3Vic3RyaW5nKDAsIHNmU3RhY2tJZC5pbmRleE9mKCcsJykpOyB9Cgl9Cn0KaWYgKHNmU3RhY2tJZCAmJiBzZlN0YWNrSWQubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycyA9IFtdOwoJLy9hcnJPZlBhaXJzLnB1c2goIlRyaWFnZV9TdGF0dXNfX2MiLCAiQ29tcGxldGUiKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19TdGF0dXNfX2MiLCAiQ29tcGxldGUiKTsKCXVwZGF0ZVNGUmVjb3JkKGRvYywgIlpQQVBFUl9felN0YWNrX19jIiwgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKfQoKCnZhciBjb21wYW55Q29kZSA9IGRvYy5kZWxpdmVyZWRUbzsKYWxlcnQoIiMjIyMjIENPTVBMRVRFIFpTVEFDSzogY29tcGFueUNvZGUgPSAiICsgY29tcGFueUNvZGUpOyAvL0pQQjE4MDcxMCBjaGFuZ2VkIHRvIHN0YWNrIHRvIHpTdGFjawp2YXIgb2xkRm9sZGVyID0gY29tcGFueUNvZGUuaW5kZXhPZigiMTMwNiIpID4gMCA/ICIyMDUwMFRyaWFnZS1TMUEiIDogIjIwNTAwVHJpYWdlLVMxQiI7CgphbGVydCgiIyMjIyMgQ09NUExFVEUgWlNUQUNLOiBtb3ZpbmcgZnJvbSBvbGRGb2xkZXI6ICIgKyBvbGRGb2xkZXIpOyAvL0pQQjE4MDcxMCBjaGFuZ2VkIHRvIHN0YWNrIHRvIHpTdGFjawptb3ZlRG9jdW1lbnQoZG9jLG9sZEZvbGRlciwiIik7CnJlbG9hZEJ5QkFURVMoZG9jLG9sZEZvbGRlcik7CnVubG9ja0RvY3VtZW50KGRvYyk7Cgp0cmFjayhkb2MsICJTdGFjayBjb21wbGV0ZWQiLCBkb2MuQkFURVMsIGRvYy5udW1QYWdlcyk7CmhpZGVEb2N1bWVudChkb2MpOwovL0NSTjE2MTAwNSBDYXNlICMzMDE3MyBDbGVhciBsYWJlbCBiYXIgd2hlbiB6U3RhY2sgaXMgY29tcGxldGVkCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyAkKCcjcmVjb3JkTGFiZWwnKS5odG1sKCcnKTsgJCgnI0RFRm9ybXNMaXN0JykuaGlkZSgpOyAkKCcjZGF0YUVudHJ5RElWJykuaGlkZSgpOyIpOwoKLy9BTjIwMTgwMjIwIGF0dGVtcHRpbmcgdG8ganVyeSByaWcgdGhpcyAtIFRISVMgV09SS1MgQVMgQSBGQUxMQkFDSyAtIHJlZGlyZWN0cyB0byBIb21lIFBhZ2UKLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjsgd2luZG93LmxvY2F0aW9uLmhyZWY9J2h0dHBzOi8venBhcGVycGFwZGVtby1kZXYtZWQubGlnaHRuaW5nLmZvcmNlLmNvbS8nOyIpOwoKLy9BTjIwMTgwMjIwIHJlZGlyZWN0IHRvIHRoZSB6U3RhY2sgdG8gd2hpY2ggdGhpcyBpcyBhdHRhY2hlZAphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjsgd2luZG93LmxvY2F0aW9uLmhyZWY9JyIrIFgoZG9jLCJYX2F0dGFjaGVkVG8iKSArICInOyIpOwoKYWxlcnQoIkBAQEBAQCBkb2Mua2JEYXRhLnNmU2VydmVyOiAiICsgZG9jLmtiRGF0YS5zZlNlcnZlcik7CgovKiBlbmQgb2YgcnVsZSAqLwo="},"ordinal":10}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ zStack Complete Rule Fired @@@#"); //JPB180710 changed to stack to zStack

/* Clear the trigger that invoked this rule */
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
arrOfPairs.push("X_triageStatus", "Complete");
if (1===1) { //ERS170909 #40592 for zDocSet statuses
    var ba = "Completed" //CRN180228 Enough with the string manipulation. We KNow the status is completed here.
    var now0 = getCurDateAndTime(doc,false,true);
    alert("@@@@ Setting X_reviewedStatus: ba = " + ba);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
}
updateDB(doc,arrOfPairs);

var sfStackId = X(doc,"X_sfStackId"); //ERS170727 #40447
//CRN170626 Also save the status in the zStack record.
if (sfStackId==="") sfStackId = X(doc,"X_attachedTo");
alert("@@@@@@ COMPLETE ZSTACK -- Currently attached to Stack__c with ID: " + sfStackId); //JPB180710 changed to stack to zStack
if (sfStackId && sfStackId.length > 0) {
	if (sfStackId.lastIndexOf('/') >= 0) {
		sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/')+1);
		if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
	}
}
if (sfStackId && sfStackId.length > 0) {
	arrOfPairs = [];
	//arrOfPairs.push("Triage_Status__c", "Complete");
	arrOfPairs.push("ZPAPER__Status__c", "Complete");
	updateSFRecord(doc, "ZPAPER__zStack__c", sfStackId, arrOfPairs);
}


var companyCode = doc.deliveredTo;
alert("##### COMPLETE ZSTACK: companyCode = " + companyCode); //JPB180710 changed to stack to zStack
var oldFolder = companyCode.indexOf("1306") > 0 ? "20500Triage-S1A" : "20500Triage-S1B";

alert("##### COMPLETE ZSTACK: moving from oldFolder: " + oldFolder); //JPB180710 changed to stack to zStack
moveDocument(doc,oldFolder,"");
reloadByBATES(doc,oldFolder);
unlockDocument(doc);

track(doc, "Stack completed", doc.BATES, doc.numPages);
hideDocument(doc);
//CRN161005 Case #30173 Clear label bar when zStack is completed
addPostExecutionScript(doc, "; $('#recordLabel').html(''); $('#DEFormsList').hide(); $('#dataEntryDIV').hide();");

//AN20180220 attempting to jury rig this - THIS WORKS AS A FALLBACK - redirects to Home Page
//addPostExecutionScript(doc, "; window.location.href='https://zpaperpapdemo-dev-ed.lightning.force.com/';");

//AN20180220 redirect to the zStack to which this is attached
addPostExecutionScript(doc, "; window.location.href='"+ X(doc,"X_attachedTo") + "';");

alert("@@@@@@ doc.kbData.sfServer: " + doc.kbData.sfServer);

/* end of rule */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
