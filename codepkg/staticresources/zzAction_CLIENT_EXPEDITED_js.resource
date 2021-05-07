<!--
// Name: CLIENT_EXPEDITED
// Committer: s
// Update: adding activity history
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-05-07 18:00:55","active":true,"button":"Expedited","name":"CLIENT_EXPEDITED","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"CLIENT_EXPEDITED","operation":"equals"}]},"consequence":{"doit":"dmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIHNmSUQgPSBYKGRvYywiWF9hY3Rpdml0eU9uSUQiKTsKaWYgKCFzZklEIHx8IHNmSUQ9PT0iIikgeyBzZklEPVgoZG9jLCJzZklEIik7IGFsZXJ0KCJFUlMyMDA4MjIgZGlzY292ZXJlZCAiK3NmSUQpOyB9IC8vRVJTMjA4MjUgIzc1Njg1IDxzZklEPjAwMzN0MDAwMDM0VVlrQkFBVzwvc2ZJRD4KCnZhciBzdGFnZT0iRXhwZWRpdGVkIjsgLy9FUlMyMTA0MzAgVE9ETyBnZXQgZnJvbSBSaWJib24gYWN0aW9uIFVSTAp2YXIgYXJyT2ZQYWlycz1bXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbjAiLFgoZG9jLCJYX2J1dHRvbkFjdGlvbiIpKTsgCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsgCnpEYXRhLmFkZFN0YWdlKGRvYywgYXJyT2ZQYWlycywgc3RhZ2UpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKLy9sb2cgYSBuZXcgYWN0aXZpdHkKdmFyIG5ld0FjdD0iIjsKdHJ5IHsKICAgIHZhciB6cFNlcnZlcj0iaHR0cHM6Ly9ndy56cGFwZXIuY29tIjsgLy9FUlMyMTA1MDEgdXNlIHRoZSBndwogICAgdmFyIGxpbmtlZElkPSIva2IvanNwL1NGX2ZpbmQubGlnaHRuaW5nLmpzcD9kYklEPSIrZG9jLmRiSUQ7IC8vRVJTMjEwNDMwIFRPRE8gbWFrZSBndy56cGFwZXIuY29tIGhhcHB5CiAgICBsaW5rZWRJZCs9IiZzZk9yZz0iK2RvYy5rYkRhdGEuc2ZPcmdhbml6YXRpb25JRDsKICAgIGFsZXJ0KCJFUlMyMTA0MzAgc3RhZ2U9IitzdGFnZSArIiBtb2RlPSIrWChkb2MsIm1vZGUiKSk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJXaGF0SWQiLHNmSUQpOwogICAgLy9hcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsIkluIFByb2dyZXNzIik7IC8vRVJTMjEwNTA0CiAgICBhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsIkluIFByb2dyZXNzIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlN1YmplY3QiLHN0YWdlKyI6ICIrZG9jLmxhYmVsKTsgICAKICAgIGFyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLHN0YWdlKyI6ICIrZG9jLmxhYmVsKyIgKCIrIGRvY1R5cGUrIikgIisgZG9jLlhfcGFnZXMgKyIgcGFnZXMgaXMgc3RvcmVkIGluICIrenBTZXJ2ZXIrbGlua2VkSWQpOwogICAgbmV3QWN0PWNyZWF0ZVNGUmVjb3JkKGRvYywiVGFzayIsbnVsbCxhcnJPZlBhaXJzKTsgLy9FUlMyMTA0MjUgbmV3IGFjdGl2aXR5IG51bGwgZm9yIE5hbWUKfSBjYXRjaCAoZSkgewogICAgYWxlcnQoIkNyZWF0ZSBmYWlsZWQ/ICIrZSk7CiAgICBuZXdBY3Q9ZTsKfQoKYXJyT2ZQYWlyczIucHVzaCgiWF9hY3Rpdml0eUlkIixuZXdBY3QpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMyKTsKCi8qCnZhciBmZWRleEVtYWlsPVhDdXN0b21TZXR0aW5nKGRvYywiRmVkRXhFbWFpbF9fYyIpLnRyaW0oKTsgLy9BTjIwMjEwNTA0IGdldCB0aGUgdmFsdWUgZnJvbSB0aGUgQ3VzdG9tIFNldHRpbmdzIHwgenBhcGVyIHwgRmVkRXhFbWFpbF9fYwoKaWYgKCFmZWRleEVtYWlsKSBpbXBvcnRDb25maWc9WERlcGxveW1lbnRJbmZvKGRvYywiRmVkRXhFbWFpbF9fYyIpLnRyaW0oKTsgLy9mcm9tIEVyaWMuIElmIHRoZSBhYm92ZSBmaWVsZCBpcyBudWxsLCBsb29rIG9uIHRoZSBEZXBsb3ltZW50IHJlY29yZAoKYWxlcnQoIkBAQGZlZGV4RW1haWwgPSAiICsgZmVkZXhFbWFpbCk7CgppZiAoZmVkZXhFbWFpbC5pbmRleE9mKCJAIikhPSAtMSkgewoJYWxlcnQoIkBAQGVudGVyaW5nIHNlbmRFbWFpbCBsb2dpYyIpOwoJdmFyIGZlZGV4VGVtcGxhdGU9InJldHVybkFkZHJlc3NfRm9ybSI7IC8vVE9ETyBBTjIxMDUwMSB3aGF0IHNob3VsZCBpdCBiZSBvciBkbyB3ZSBuZWVkIGl0PwoJZmVkZXhUZW1wbGF0ZT0ibm9Db2RlIjsgLy9FUlMyMTA1MDEgSEFDSyBidXQgd29ycmllZCBTRnNlc3Npb24gb3IgU0ZvcmcgbWlnaHQgbm90IGJlIHdvcmtpbmcgdmlhIHdnZXQKCWZlZGV4VGVtcGxhdGU9IjAwMDA0ZWU4WjFldWpybDA0NCI7IC8vRVJTMjEwNTAxIGRvY3ggbWVyZ2UgbmVlZHMgSURzIG5vdCBCQVRFUz8KCS8vdmFyIHI9d3Bvc3QoenVybCxkYXRhKTsKCXZhciB1cmw9IkNvbnRhY3RGYXg9IitmZWRleEVtYWlsKyImU0ZpZHM9IitzZklEKyImYXR0YWNoSWQ9Iitkb2MuZGJJRDsgLy9FUlMyMTA1MDEgYXR0YWNoSWQgbWF5IGhhdmUgZ290dGVuIGJyb2tlbiB3aXRoIGJ1bmRsZXMKCWlmIChmZWRleFRlbXBsYXRlKSB1cmwrPSImY292ZXJJRD0iK2ZlZGV4VGVtcGxhdGU7CgkvL3VybCs9IiZTRnNlc3Npb249Iitkb2Mua2JEYXRhLnNmU2Vzc2lvbklEOwoJdXJsKz0iJnpQYXBlcj0xMjIwJlNGdHlwZT1DYXNlJlNGb3JnPSIrZG9jLmtiRGF0YS5zZk9yZ2FuaXphdGlvbklEOwoJdmFyIHJlc3VsdHM9d2dldChkb2MsImh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9rYi9qc3AvU0Zfc2VuZEZheC5qc3A/Iit1cmwpOwoJLy92YXIgYXJyPVtdOwoJLy9hcnIucHVzaCgiU0Z0eXBlIiwiQ2FzZSIpOyBhcnIucHVzaCgiQ29udGFjdEZheCIsZmVkZXhFbWFpbCk7IGFyci5wdXNoKCJTRmlkcyIsc2ZJRCk7CgkvL2Fyci5wdXNoKCJhdHRhY2hJZCIsZG9jLmRiSUQpOyBhcnIucHVzaCgiY292ZXJJRCIsIm5vQ29kZSIpOwoJLy92YXIgcmVzdWx0cz13cG9zdChkb2MsICJodHRwOi8vbG9jYWxob3N0OjgwODAva2IvanNwL1NGX3NlbmRGYXguanNwIixhcnIpOwoJYWxlcnQoIkVSUzIxMDUwMSByZXN1bHRzPSIrcmVzdWx0cyk7CgkvL3RoZSBlbWFpbCBkZWxpdmVyeSBzaG91bGQgbWFrZSBhbiBBY3Rpdml0eSB2aWEgREVMSVZFUllfQ09NUEVMVEUKfQplbHNlIHsKCS8vQU4yMDIxMDUwNCBubyBmZWRleEVtYWlsIHNldHRpbmcgZm91bmQsIHNvIHJldHVybiBhbiBlcnJvcgoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJ7fm1lc3NhZ2V+On5UaGUgZG9jdW1lbnQgY291bGQgbm90IGJlIHNlbnQgYmVjYXVzZSB0aGUgRXhwZWRpdGUgZGVzdGluYXRpb24gd2FzIG5vdCBmb3VuZCBpbiB0aGUgY29uZmlndXJhdGlvbi4gUGxlYXNlIGNvbnRhY3QgeW91ciBhZG1pbmlzdHJhdG9yLn59Iik7Cn0KKi8="},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var nowTimeStamp = new Date().getTime() + ""; 
var formatNow = getCurDateAndTime(doc);
var sfID = X(doc,"X_activityOnID");
if (!sfID || sfID==="") { sfID=X(doc,"sfID"); alert("ERS200822 discovered "+sfID); } //ERS20825 #75685 <sfID>0033t000034UYkBAAW</sfID>

var stage="Expedited"; //ERS210430 TODO get from Ribbon action URL
var arrOfPairs=[];
arrOfPairs.push("X_buttonAction0",X(doc,"X_buttonAction")); 
arrOfPairs.push("X_buttonAction",""); 
zData.addStage(doc, arrOfPairs, stage);
updateDB(doc, arrOfPairs);

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
    arrOfPairs.push("Status","In Progress");
    arrOfPairs.push("Subject",stage+": "+doc.label);   
    arrOfPairs.push("Description",stage+": "+doc.label+" ("+ docType+") "+ doc.X_pages +" pages is stored in "+zpServer+linkedId);
    newAct=createSFRecord(doc,"Task",null,arrOfPairs); //ERS210425 new activity null for Name
} catch (e) {
    alert("Create failed? "+e);
    newAct=e;
}

arrOfPairs2.push("X_activityId",newAct);
updateDB(doc, arrOfPairs2);

/*
var fedexEmail=XCustomSetting(doc,"FedExEmail__c").trim(); //AN20210504 get the value from the Custom Settings | zpaper | FedExEmail__c

if (!fedexEmail) importConfig=XDeploymentInfo(doc,"FedExEmail__c").trim(); //from Eric. If the above field is null, look on the Deployment record

alert("@@@fedexEmail = " + fedexEmail);

if (fedexEmail.indexOf("@")!= -1) {
	alert("@@@entering sendEmail logic");
	var fedexTemplate="returnAddress_Form"; //TODO AN210501 what should it be or do we need it?
	fedexTemplate="noCode"; //ERS210501 HACK but worried SFsession or SForg might not be working via wget
	fedexTemplate="00004ee8Z1eujrl044"; //ERS210501 docx merge needs IDs not BATES?
	//var r=wpost(zurl,data);
	var url="ContactFax="+fedexEmail+"&SFids="+sfID+"&attachId="+doc.dbID; //ERS210501 attachId may have gotten broken with bundles
	if (fedexTemplate) url+="&coverID="+fedexTemplate;
	//url+="&SFsession="+doc.kbData.sfSessionID;
	url+="&zPaper=1220&SFtype=Case&SForg="+doc.kbData.sfOrganizationID;
	var results=wget(doc,"http://localhost:8080/kb/jsp/SF_sendFax.jsp?"+url);
	//var arr=[];
	//arr.push("SFtype","Case"); arr.push("ContactFax",fedexEmail); arr.push("SFids",sfID);
	//arr.push("attachId",doc.dbID); arr.push("coverID","noCode");
	//var results=wpost(doc, "http://localhost:8080/kb/jsp/SF_sendFax.jsp",arr);
	alert("ERS210501 results="+results);
	//the email delivery should make an Activity via DELIVERY_COMPELTE
}
else {
	//AN20210504 no fedexEmail setting found, so return an error
	addPostExecutionScript(doc, "{~message~:~The document could not be sent because the Expedite destination was not found in the configuration. Please contact your administrator.~}");
}
*/
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
