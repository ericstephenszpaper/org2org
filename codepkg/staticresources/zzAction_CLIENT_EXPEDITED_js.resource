<!--
// Name: CLIENT_EXPEDITED
// Committer: d
// Update: test
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-05-13 22:04:06","active":true,"button":"Expedited","name":"CLIENT_EXPEDITED","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"CLIENT_EXPEDITED","operation":"equals"}]},"consequence":{"doit":"dmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIHNmSUQgPSBYKGRvYywiWF9hY3Rpdml0eU9uSUQiKTsKaWYgKCFzZklEKSB7IHNmSUQ9WChkb2MsInNmSUQiKTsgYWxlcnQoIkVSUzIwMDgyMiBkaXNjb3ZlcmVkICIrc2ZJRCk7IH0gLy9FUlMyMDgyNSAjNzU2ODUgPHNmSUQ+MDAzM3QwMDAwMzRVWWtCQUFXPC9zZklEPgoKdmFyIHN0YWdlPSJFeHBlZGl0ZWQiOyAvL0VSUzIxMDQzMCBUT0RPIGdldCBmcm9tIFJpYmJvbiBhY3Rpb24gVVJMCnZhciBhcnJPZlBhaXJzMj1bXTsKYXJyT2ZQYWlyczIucHVzaCgiWF9idXR0b25BY3Rpb24wIixYKGRvYywiWF9idXR0b25BY3Rpb24iKSk7IAphcnJPZlBhaXJzMi5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOyAKekRhdGEuYWRkU3RhZ2UoZG9jLCBhcnJPZlBhaXJzMiwgc3RhZ2UpOwovL3VwZGF0ZURCKGRvYywgYXJyT2ZQYWlyczIpOwoKdmFyIGRvY1R5cGU9ZG9jLmRvY1R5cGU7CmlmIChkb2NUeXBlPT09IiIpIGRvY1R5cGU9WChkb2MsIlhfZG9jVHlwZSIpOyAvL0VSUzIxMDQzMCAjODI4OTQgZG9jVHlwZT0KaWYgKCFkb2NUeXBlKSB7ZG9jVHlwZT0iQ09SIjt9IAoKLy9sb2cgYSBuZXcgYWN0aXZpdHkKdmFyIG5ld0FjdD0iIjsKdHJ5IHsKICAgIHZhciB6cFNlcnZlcj0iaHR0cHM6Ly9ndy56cGFwZXIuY29tIjsgLy9FUlMyMTA1MDEgdXNlIHRoZSBndwogICAgdmFyIGxpbmtlZElkPSIva2IvanNwL1NGX2ZpbmQubGlnaHRuaW5nLmpzcD9kYklEPSIrZG9jLmRiSUQ7IC8vRVJTMjEwNDMwIFRPRE8gbWFrZSBndy56cGFwZXIuY29tIGhhcHB5CiAgICBsaW5rZWRJZCs9IiZzZk9yZz0iK2RvYy5rYkRhdGEuc2ZPcmdhbml6YXRpb25JRDsKICAgIGFsZXJ0KCJFUlMyMTA0MzAgc3RhZ2U9IitzdGFnZSArIiBtb2RlPSIrWChkb2MsIm1vZGUiKSk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJXaGF0SWQiLHNmSUQpOwogICAgLy9hcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsIkluIFByb2dyZXNzIik7IC8vRVJTMjEwNTA0CiAgICBhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsIkNvbXBsZXRlZCIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJTdWJqZWN0IixzdGFnZSsiOiAiK2RvYy5sYWJlbCk7ICAgCiAgICBhcnJPZlBhaXJzLnB1c2goIkRlc2NyaXB0aW9uIixzdGFnZSsiOiAiK2RvYy5sYWJlbCsiICgiKyBkb2NUeXBlKyIpICIrIGRvYy5YX3BhZ2VzICsiIHBhZ2VzIGlzIHN0b3JlZCBpbiAiK3pwU2VydmVyK2xpbmtlZElkKTsKICAgIG5ld0FjdD1jcmVhdGVTRlJlY29yZChkb2MsIlRhc2siLG51bGwsYXJyT2ZQYWlycyk7IC8vRVJTMjEwNDI1IG5ldyBhY3Rpdml0eSBudWxsIGZvciBOYW1lCn0gY2F0Y2ggKGUpIHsKICAgIGFsZXJ0KCJDcmVhdGUgZmFpbGVkPyAiK2UpOwogICAgbmV3QWN0PWU7Cn0KCmFyck9mUGFpcnMyLnB1c2goIlhfYWN0aXZpdHlJZCIsbmV3QWN0KTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMik7"},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var nowTimeStamp = new Date().getTime() + ""; 
var formatNow = getCurDateAndTime(doc);
var sfID = X(doc,"X_activityOnID");
if (!sfID) { sfID=X(doc,"sfID"); alert("ERS200822 discovered "+sfID); } //ERS20825 #75685 <sfID>0033t000034UYkBAAW</sfID>

var stage="Expedited"; //ERS210430 TODO get from Ribbon action URL
var arrOfPairs2=[];
arrOfPairs2.push("X_buttonAction0",X(doc,"X_buttonAction")); 
arrOfPairs2.push("X_buttonAction",""); 
zData.addStage(doc, arrOfPairs2, stage);
//updateDB(doc, arrOfPairs2);

var docType=doc.docType;
if (docType==="") docType=X(doc,"X_docType"); //ERS210430 #82894 docType=
if (!docType) {docType="COR";} 

//log a new activity
var newAct="";
try {
    var zpServer="https://gw.zpaper.com"; //ERS210501 use the gw
    var linkedId="/kb/jsp/SF_find.lightning.jsp?dbID="+doc.dbID; //ERS210430 TODO make gw.zpaper.com happy
    linkedId+="&sfOrg="+doc.kbData.sfOrganizationID;
    alert("ERS210430 stage="+stage +" mode="+X(doc,"mode"));
    var arrOfPairs = [];
    arrOfPairs.push("WhatId",sfID);
    //arrOfPairs.push("Status","In Progress"); //ERS210504
    arrOfPairs.push("Status","Completed");
    arrOfPairs.push("Subject",stage+": "+doc.label);   
    arrOfPairs.push("Description",stage+": "+doc.label+" ("+ docType+") "+ doc.X_pages +" pages is stored in "+zpServer+linkedId);
    newAct=createSFRecord(doc,"Task",null,arrOfPairs); //ERS210425 new activity null for Name
} catch (e) {
    alert("Create failed? "+e);
    newAct=e;
}

arrOfPairs2.push("X_activityId",newAct);
updateDB(doc, arrOfPairs2);
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
