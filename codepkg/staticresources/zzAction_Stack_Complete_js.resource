<!--
// Name: Stack Complete
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-25 04:01:22","active":true,"button":"Stack Complete","name":"Stack Complete","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Stack Complete","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgelN0YWNrIENvbXBsZXRlIFJ1bGUgRmlyZWQgQEBAIyIpOwoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwphcnJPZlBhaXJzLnB1c2goIlhfdHJpYWdlU3RhdHVzIiwgIkNvbXBsZXRlIik7CmFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsIkNvbXBsZXRlIik7CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBzZlN0YWNrSWQgPSB6RGF0YS5zZklkOyAvL0VSUzE3MDcyNyAjNDA0NDcvLyBQdjE5MDkxMSB1cGRhdGVkIGZvciBzdGF0dXMKLy9DUk4xNzA2MjYgQWxzbyBzYXZlIHRoZSBzdGF0dXMgaW4gdGhlIHpTdGFjayByZWNvcmQuCi8vaWYgKHNmU3RhY2tJZD09PSIiKQpzZlN0YWNrSWQgPSB6RGF0YS5nZXRTdGFja0lkKGRvYyk7CmFsZXJ0KCJAQEBAQEAgQ09NUExFVEUgU1RBQ0sgLS0gQ3VycmVudGx5IGF0dGFjaGVkIHRvIFN0YWNrX19jIHdpdGggSUQ6ICIgKyBzZlN0YWNrSWQpOwpzZlN0YWNrSWQ9WChkb2MsJ1hfc2ZTdGFja0lkJyk7CmlmKCFzZlN0YWNrSWQpewogIHNmU3RhY2tJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7ICAKfQoKaWYgKHNmU3RhY2tJZCAmJiBzZlN0YWNrSWQubGVuZ3RoID4gMCkgewogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgaWYgKHpEYXRhLlRyaWFnZV9TdGF0dXNfX2MpIGFyck9mUGFpcnMucHVzaCgiVHJpYWdlX1N0YXR1c19fYyIsICJDb21wbGV0ZSIpOyAvL0VSUzE5MDYxOCBUT0RPCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIkNvbXBsZXRlIik7CiAgICB1cGRhdGVTRlJlY29yZChkb2MsekRhdGEuenBzLCBzZlN0YWNrSWQsIGFyck9mUGFpcnMpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7ICQoJyNyZWNvcmRMYWJlbCcpLmh0bWwoJycpOyAkKCcjREVGb3Jtc0xpc3QnKS5oaWRlKCk7ICQoJyNkYXRhRW50cnlESVYnKS5oaWRlKCk7Iik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjtpZihjb25maXJtKCdSZWRpcmVjdCB0byBTdGFjaycpKXsgbG9jYXRpb24uaHJlZj0nIiArIGRvYy5zZlNlcnZlciArICIvIiArIHNmU3RhY2tJZCArICInfSIpOwp9IGVsc2UgewogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7YWxlcnQoJ1NvbWV0aGluZyB3ZW50IHdyb25nIGNvbXBsZXRpbmcgdGhlIHN0YWNrLiBUcnkgYWdhaW4/JykiKTsKfQoKCi8vdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwovL2FsZXJ0KCIjIyMjIyBDT01QTEVURSBTVEFDSzogY29tcGFueUNvZGUgPSAiICsgY29tcGFueUNvZGUpOwovL3ZhciBvbGRGb2xkZXIgPSBjb21wYW55Q29kZS5pbmRleE9mKCIxMzA2IikgPiAwID8gIjIwNTAwVHJpYWdlLVMxQSIgOiAiMjA1MDBUcmlhZ2UtUzFCIjsgLy9FUlMxOTA2MTggVE9ETwoKLy9hbGVydCgiIyMjIyMgQ09NUExFVEUgU1RBQ0s6IG1vdmluZyBmcm9tIG9sZEZvbGRlcjogIiArIG9sZEZvbGRlcik7Ci8vbW92ZURvY3VtZW50KGRvYyxvbGRGb2xkZXIsIiIpOyAvL0VSUzE5MDYxOCBUT0RPCi8vcmVsb2FkQnlCQVRFUyhkb2Msb2xkRm9sZGVyKTsgLy9FUlMxOTA2MTggVE9ETwp1bmxvY2tEb2N1bWVudChkb2MpOwoKdHJhY2soZG9jLCAielN0YWNrIGNvbXBsZXRlZCIsIGRvYy5CQVRFUywgZG9jLm51bVBhZ2VzKTsKaGlkZURvY3VtZW50KGRvYyk7IC8vUFYxOTA5MjkgdXBkYXRpbmcgQ29uZGl0aW9uCi8vQ1JOMTYxMDA1IENhc2UgIzMwMTczIENsZWFyIGxhYmVsIGJhciB3aGVuIFN0YWNrIGlzIGNvbXBsZXRlZAoKLy9FUlMxOTA5MTEgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7aWYoY29uZmlybSgnZG8gd2FudCB0byByZWRpcmVjdCB0byBTdGFjaycpKXsgbG9jYXRpb24uaHJlZj0nIiArIGRvYy5zZlNlcnZlciArICIvIiArIHNmU3RhY2tJZCArICInfSIpOwovL01TSDE3MDkxNCBhZGQgY2xvc2Ugd2luZG93IGRpYWxvZy4gc3dpcGVkIGZyb20gQXN0cmFaZW5lY2EgZkFjY2VzczM2MCBzYW5kYm94Ci8vRVJTMTkwNjE4IGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiaXNMb2NrZWQgPSB+TXlVbkxvY2tlZH47aWYgKGNvbmZpcm0ofkNsb3NlIHdpbmRvd34pKSB3aW5kb3cuY2xvc2UoKTsiKTsKLy9QVjE5MDQyNSByZWRpcmVjdCB0byB6U3RhY2sgb25jZSBTdGFjayBjb21wbGV0ZQovL0VSUzE5MDkxMSBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjsgd2luZG93LmxvY2F0aW9uLmhyZWY9JyIrIFgoZG9jLCJYX2F0dGFjaGVkVG8iKSArICInOyIpOwovKiBlbmQgb2YgcnVsZSAqLwo="},"ordinal":10}

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
sfStackId=X(doc,'X_sfStackId');
if(!sfStackId){
  sfStackId=zData.getStackId(doc);  
}

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
hideDocument(doc); //PV190929 updating Condition
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
