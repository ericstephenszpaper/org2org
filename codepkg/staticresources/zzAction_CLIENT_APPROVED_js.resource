<!--
// Name: CLIENT_APPROVED
// Committer: s
// Update: updating activity  history log
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-05-07 17:59:10","active":true,"button":"Approved","name":"CLIENT_APPROVED","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"CLIENT_APPROVED","operation":"equals"}]},"consequence":{"doit":"dmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIHNmSUQgPSBYKGRvYywiWF9hY3Rpdml0eU9uSUQiKTsKaWYgKCFzZklEKSB7IHNmSUQ9WChkb2MsInNmSUQiKTsgYWxlcnQoIkVSUzIwMDgyMiBkaXNjb3ZlcmVkICIrc2ZJRCk7IH0gLy9FUlMyMDgyNSAjNzU2ODUgPHNmSUQ+MDAzM3QwMDAwMzRVWWtCQUFXPC9zZklEPgoKdmFyIHN0YWdlPSJBcHByb3ZlZCI7IC8vRVJTMjEwNDMwIFRPRE8gZ2V0IGZyb20gUmliYm9uIGFjdGlvbiBVUkwKdmFyIGFyck9mUGFpcnMyPVtdOwphcnJPZlBhaXJzMi5wdXNoKCJYX2J1dHRvbkFjdGlvbjAiLFgoZG9jLCJYX2J1dHRvbkFjdGlvbiIpKTsgCmFyck9mUGFpcnMyLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7IAp6RGF0YS5hZGRTdGFnZShkb2MsIGFyck9mUGFpcnMyLCBzdGFnZSk7Ci8vdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMik7Cgp2YXIgZG9jVHlwZT1kb2MuZG9jVHlwZTsKaWYgKGRvY1R5cGU9PT0iIikgZG9jVHlwZT1YKGRvYywiWF9kb2NUeXBlIik7IC8vRVJTMjEwNDMwICM4Mjg5NCBkb2NUeXBlPQppZiAoIWRvY1R5cGUpIHtkb2NUeXBlPSJDT1IiO30gCgovL2xvZyBhIG5ldyBhY3Rpdml0eQp2YXIgbmV3QWN0PSIiOwp0cnkgewogICAgdmFyIHpwU2VydmVyPSJodHRwczovL2d3LnpwYXBlci5jb20iOyAvL0VSUzIxMDUwMSB1c2UgdGhlIGd3CiAgICB2YXIgbGlua2VkSWQ9Ii9rYi9qc3AvU0ZfZmluZC5saWdodG5pbmcuanNwP2RiSUQ9Iitkb2MuZGJJRDsgLy9FUlMyMTA0MzAgVE9ETyBtYWtlIGd3LnpwYXBlci5jb20gaGFwcHkKICAgIGxpbmtlZElkKz0iJnNmT3JnPSIrZG9jLmtiRGF0YS5zZk9yZ2FuaXphdGlvbklEOwogICAgYWxlcnQoIkVSUzIxMDQzMCBzdGFnZT0iK3N0YWdlICsiIG1vZGU9IitYKGRvYywibW9kZSIpKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goIldoYXRJZCIsc2ZJRCk7CiAgICAvL2Fyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwiSW4gUHJvZ3Jlc3MiKTsgLy9FUlMyMTA1MDQKICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwiQ29tcGxldGVkIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlN1YmplY3QiLHN0YWdlKyI6ICIrZG9jLmxhYmVsKTsgICAKICAgIGFyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLHN0YWdlKyI6ICIrZG9jLmxhYmVsKyIgKCIrIGRvY1R5cGUrIikgIisgZG9jLlhfcGFnZXMgKyIgcGFnZXMgaXMgc3RvcmVkIGluICIrenBTZXJ2ZXIrbGlua2VkSWQpOwogICAgbmV3QWN0PWNyZWF0ZVNGUmVjb3JkKGRvYywiVGFzayIsbnVsbCxhcnJPZlBhaXJzKTsgLy9FUlMyMTA0MjUgbmV3IGFjdGl2aXR5IG51bGwgZm9yIE5hbWUKfSBjYXRjaCAoZSkgewogICAgYWxlcnQoIkNyZWF0ZSBmYWlsZWQ/ICIrZSk7CiAgICBuZXdBY3Q9ZTsKfQoKYXJyT2ZQYWlyczIucHVzaCgiWF9hY3Rpdml0eUlkIixuZXdBY3QpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMyKTs="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var nowTimeStamp = new Date().getTime() + ""; 
var formatNow = getCurDateAndTime(doc);
var sfID = X(doc,"X_activityOnID");
if (!sfID) { sfID=X(doc,"sfID"); alert("ERS200822 discovered "+sfID); } //ERS20825 #75685 <sfID>0033t000034UYkBAAW</sfID>

var stage="Approved"; //ERS210430 TODO get from Ribbon action URL
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
