<!--
// Name: Stack Complete
// Committer: eric.stephens@zpaper.com
// Update: ERS190911 addPostExecutionScript(doc, ";if(confirm('do want to redirect to Stack')){ location.href='" + doc.sfServer + "/" + sfStackId + "'}");; ERS190911 addPostExecutionScript(doc, "; window.location.href='"+ X(doc,"X_attachedTo") + "';");
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-09-11 14:13:38","active":true,"button":"Stack Complete","name":"Stack Complete","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Stack Complete","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgelN0YWNrIENvbXBsZXRlIFJ1bGUgRmlyZWQgQEBAIyIpOwoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwphcnJPZlBhaXJzLnB1c2goIlhfdHJpYWdlU3RhdHVzIiwgIkNvbXBsZXRlIik7CmFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsIkNvbXBsZXRlIik7CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBzZlN0YWNrSWQgPSB6RGF0YS5zZklkOyAvL0VSUzE3MDcyNyAjNDA0NDcvLyBQdjE5MDkxMSB1cGRhdGVkIGZvciBzdGF0dXMKLy9DUk4xNzA2MjYgQWxzbyBzYXZlIHRoZSBzdGF0dXMgaW4gdGhlIHpTdGFjayByZWNvcmQuCi8vaWYgKHNmU3RhY2tJZD09PSIiKSAKc2ZTdGFja0lkID0gekRhdGEuZ2V0U3RhY2tJZChkb2MpOwphbGVydCgiQEBAQEBAIENPTVBMRVRFIFNUQUNLIC0tIEN1cnJlbnRseSBhdHRhY2hlZCB0byBTdGFja19fYyB3aXRoIElEOiAiICsgc2ZTdGFja0lkKTsKCmlmIChzZlN0YWNrSWQgJiYgc2ZTdGFja0lkLmxlbmd0aCA+IDApIHsKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGlmICh6RGF0YS5UcmlhZ2VfU3RhdHVzX19jKSBhcnJPZlBhaXJzLnB1c2goIlRyaWFnZV9TdGF0dXNfX2MiLCAiQ29tcGxldGUiKTsgLy9FUlMxOTA2MTggVE9ETwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDb21wbGV0ZSIpOwogICAgdXBkYXRlU0ZSZWNvcmQoZG9jLHpEYXRhLnpwcywgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyAkKCcjcmVjb3JkTGFiZWwnKS5odG1sKCcnKTsgJCgnI0RFRm9ybXNMaXN0JykuaGlkZSgpOyAkKCcjZGF0YUVudHJ5RElWJykuaGlkZSgpOyIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7aWYoY29uZmlybSgnUmVkaXJlY3QgdG8gU3RhY2snKSl7IGxvY2F0aW9uLmhyZWY9JyIgKyBkb2Muc2ZTZXJ2ZXIgKyAiLyIgKyBzZlN0YWNrSWQgKyAiJ30iKTsKfSBlbHNlIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiO2FsZXJ0KCdTb21ldGhpbmcgd2VudCB3cm9uZyBjb21wbGV0aW5nIHRoZSBzdGFjay4gVHJ5IGFnYWluPycpIik7Cn0KCgovL3ZhciBjb21wYW55Q29kZSA9IGRvYy5kZWxpdmVyZWRUbzsKLy9hbGVydCgiIyMjIyMgQ09NUExFVEUgU1RBQ0s6IGNvbXBhbnlDb2RlID0gIiArIGNvbXBhbnlDb2RlKTsKLy92YXIgb2xkRm9sZGVyID0gY29tcGFueUNvZGUuaW5kZXhPZigiMTMwNiIpID4gMCA/ICIyMDUwMFRyaWFnZS1TMUEiIDogIjIwNTAwVHJpYWdlLVMxQiI7IC8vRVJTMTkwNjE4IFRPRE8KCi8vYWxlcnQoIiMjIyMjIENPTVBMRVRFIFNUQUNLOiBtb3ZpbmcgZnJvbSBvbGRGb2xkZXI6ICIgKyBvbGRGb2xkZXIpOwovL21vdmVEb2N1bWVudChkb2Msb2xkRm9sZGVyLCIiKTsgLy9FUlMxOTA2MTggVE9ETwovL3JlbG9hZEJ5QkFURVMoZG9jLG9sZEZvbGRlcik7IC8vRVJTMTkwNjE4IFRPRE8KdW5sb2NrRG9jdW1lbnQoZG9jKTsKCnRyYWNrKGRvYywgInpTdGFjayBjb21wbGV0ZWQiLCBkb2MuQkFURVMsIGRvYy5udW1QYWdlcyk7CmhpZGVEb2N1bWVudChkb2MpOwovL0NSTjE2MTAwNSBDYXNlICMzMDE3MyBDbGVhciBsYWJlbCBiYXIgd2hlbiBTdGFjayBpcyBjb21wbGV0ZWQKCi8vRVJTMTkwOTExIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiO2lmKGNvbmZpcm0oJ2RvIHdhbnQgdG8gcmVkaXJlY3QgdG8gU3RhY2snKSl7IGxvY2F0aW9uLmhyZWY9JyIgKyBkb2Muc2ZTZXJ2ZXIgKyAiLyIgKyBzZlN0YWNrSWQgKyAiJ30iKTsKLy9NU0gxNzA5MTQgYWRkIGNsb3NlIHdpbmRvdyBkaWFsb2cuIHN3aXBlZCBmcm9tIEFzdHJhWmVuZWNhIGZBY2Nlc3MzNjAgc2FuZGJveAovL0VSUzE5MDYxOCBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgImlzTG9ja2VkID0gfk15VW5Mb2NrZWR+O2lmIChjb25maXJtKH5DbG9zZSB3aW5kb3d+KSkgd2luZG93LmNsb3NlKCk7Iik7Ci8vUFYxOTA0MjUgcmVkaXJlY3QgdG8gelN0YWNrIG9uY2UgU3RhY2sgY29tcGxldGUKLy9FUlMxOTA5MTEgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7IHdpbmRvdy5sb2NhdGlvbi5ocmVmPSciKyBYKGRvYywiWF9hdHRhY2hlZFRvIikgKyAiJzsiKTsKLyogZW5kIG9mIHJ1bGUgKi8K"},"ordinal":12}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ zStack Complete Rule Fired @@@#");

/* Clear the trigger that invoked this rule */
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
arrOfPairs.push("X_triageStatus", "Complete");
arrOfPairs=zData.addStage(doc,arrOfPairs,"Complete");
updateDB(doc,arrOfPairs);

var sfStackId = zData.sfId; //ERS170727 #40447// Pv190911 updated for status
//CRN170626 Also save the status in the zStack record.
//if (sfStackId==="") 
sfStackId = zData.getStackId(doc);
alert("@@@@@@ COMPLETE STACK -- Currently attached to Stack__c with ID: " + sfStackId);

if (sfStackId && sfStackId.length > 0) {
    arrOfPairs = [];
    if (zData.Triage_Status__c) arrOfPairs.push("Triage_Status__c", "Complete"); //ERS190618 TODO
    arrOfPairs.push("ZPAPER__Status__c", "Complete");
    updateSFRecord(doc,zData.zps, sfStackId, arrOfPairs);
    addPostExecutionScript(doc, "; $('#recordLabel').html(''); $('#DEFormsList').hide(); $('#dataEntryDIV').hide();");
    addPostExecutionScript(doc, ";if(confirm('Redirect to Stack')){ location.href='" + doc.sfServer + "/" + sfStackId + "'}");
} else {
    addPostExecutionScript(doc, ";alert('Something went wrong completing the stack. Try again?')");
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

//ERS190911 addPostExecutionScript(doc, ";if(confirm('do want to redirect to Stack')){ location.href='" + doc.sfServer + "/" + sfStackId + "'}");
//MSH170914 add close window dialog. swiped from AstraZeneca fAccess360 sandbox
//ERS190618 addPostExecutionScript(doc, "isLocked = ~MyUnLocked~;if (confirm(~Close window~)) window.close();");
//PV190425 redirect to zStack once Stack complete
//ERS190911 addPostExecutionScript(doc, "; window.location.href='"+ X(doc,"X_attachedTo") + "';");
/* end of rule */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gZG9WYWxpZGF0aW9uKCkgewogICAgCiAgICAgdmFyIGluZGV4UGFnZXM9IiI7CiAgICAgaWYoX3pEYXRhWyJYX2luZGV4ZWRQYWdlcyJdICYmICAoX3pEYXRhWyJYX2luZGV4ZWRQYWdlcyJdKS5sZW5ndGggPjApewogICAgICAgICBpbmRleFBhZ2VzID0gKF96RGF0YVsiWF9pbmRleGVkUGFnZXMiXSk7CiAgICAgfQogICAgIHZhciBwYWdlQ291bnQgPSBfekRhdGFbIlhfY291bnQiXTsKICAgICB2YXIgbm90SW5kZXhlZD0iIjsKICAgICB2YXIgaWdub3JlZFBhZ2VzID0gX3pEYXRhWyJYX2lnbm9yZWRQYWdlcyJdOwogICAgIGlmKCBpZ25vcmVkUGFnZXMgJiYgaWdub3JlZFBhZ2VzLmxlbmd0aCA+MCl7CiAgICAgICAgIGluZGV4UGFnZXMgPSBpbmRleFBhZ2VzLmNvbmNhdCgiLCIpOwogICAgICAgICBpbmRleFBhZ2VzID0gaW5kZXhQYWdlcy5jb25jYXQoaWdub3JlZFBhZ2VzKTsKICAgICB9CiAgICAgdmFyIGluZGV4UGFnZXNBcnJheSA9IGluZGV4UGFnZXMuc3BsaXQoIiwiKTsgIAogICAgIGZvcih2YXIgaT0xO2k8PSBwYWdlQ291bnQ7aSsrKXsKICAgICAgICBjb25zb2xlLmxvZyhpbmRleFBhZ2VzQXJyYXkuaW5kZXhPZihpKSk7CiAgICAgICAgaWYoaW5kZXhQYWdlcyAmJiAhaW5kZXhQYWdlcy5jb250YWlucyhpKSl7CiAgICAgICAgbm90SW5kZXhlZCArPSBpKyIsIjsKICAgICAgICB9ZWxzZSBpZighaW5kZXhQYWdlcyl7CiAgICAgICAgbm90SW5kZXhlZCArPSBpKyIsIjsKICAgICAgICB9CiAgICB9CiAgICBpZiAobm90SW5kZXhlZC5sZW5ndGggPiAwKSB7CiAgICAgICAgYWxlcnQoIkVSUk9SOiBUaGUgZm9sbG93aW5nIHBhZ2VzIGFyZSBub3QgaW5kZXhlZCA6ICIgKyBub3RJbmRleGVkKTsKICAgICAgICByZXR1cm4gZmFsc2U7ICAgCiAgICB9CgogICAgcmV0dXJuIHRydWU7Cn0KCnJldHVybiBkb1ZhbGlkYXRpb24oKTs=
//--- RULE VALIDATION CODE - END ---

</script>
