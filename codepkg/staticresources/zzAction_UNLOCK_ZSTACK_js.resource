<!--
// Name: UNLOCK_ZSTACK
// Committer: eric.stephens@zpaper.com
// Update: ERS201130 into accelerator
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-11-30 22:28:30","active":true,"button":"","name":"UNLOCK_ZSTACK","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"UNLOCK_ZSTACK","operation":"equals"},{"name":"doc.X(\"X_buttonAction\")","value":"Unlock","operation":"starts-with"}]},"consequence":{"doit":"YWxlcnQoIiMjIyMjIyBVTE9DS19aU1RBQ0sgcnVsZSBmaXJlZCAjIyMjIyMiKTsgLy9FUlMyMDExMzAgaW50byBhY2NlbGVyYXRvcgp2YXIgc3RhY2tUeXBlTmFtZSA9IHpEYXRhLnpwczsgLy9FUlMxOTA2MTcgIlpQQVBFUl9felN0YWNrX19jIjsKCi8qIENsZWFyIHJ1bGUgdGVzdCBmaWVsZCB0aGF0IGdvdCB1cyBoZXJlICovCnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCAiIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CmFsZXJ0KCJBZnRlciBjbGVhcmluZyBYX2J1dHRvbkFjdGlvbjogcmVtb3RlVXNlciA9ICIgKyBkb2Mua2JEYXRhLnJlbW90ZVVzZXIpOwoKLy9DUk4xNzA3MTcgVW5sb2NrIHRoZSBTbmlwcGV0CnVubG9ja0RvY3VtZW50KGRvYyk7CnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgb3JpZ0F0dGFjaFRvID0gWChkb2MsICJYX2F0dGFjaGVkVG8iKTsKdmFyIHpTdGFja0lkID0gWChkb2MsekRhdGEuenBzKTsgLy88WlBBUEVSX196U3RhY2tfX2M+YTFRUTAwMDAwMDJCeHFsTUFDPC9aUEFQRVJfX3pTdGFja19fYz4KaWYgKHpTdGFja0lkID09PSAiIikgeyB6U3RhY2tJZCA9IG9yaWdBdHRhY2hUby5zdWJzdHJpbmcoMStvcmlnQXR0YWNoVG8ubGFzdEluZGV4T2YoIi8iKSk7IH0KaWYgKHpTdGFja0lkLmluZGV4T2YoJywnKSA+PSAwKSB7IHpTdGFja0lkID0gekRhdGEuZ2V0U3RhY2tJZCh6U3RhY2tJZCk7IH0KCmlmICh6U3RhY2tJZCkgewogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIHpwcz16RGF0YS56cHM7IC8vRVJTMTkwNjE3ICJaUEFQRVJfX3pTdGFja19fYyI7CiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArIlN0YXR1c19fYyIsICJMb2NrZWQiKTsKICAgIC8vRVJTMTkwNjE3IGFyck9mUGFpcnMucHVzaCgiVHJpYWdlX1N0YXR1c19fYyIsIkFjdGl2ZSIpOyAvL0NSTjE3MDkwNSBJcyBpdCBva2F5IHRvIHNldCBpdCB0byBBY3RpdmU/CiAgICB2YXIgc2ZJZCA9IHVwZGF0ZVNGUmVjb3JkKGRvYywgenBzLCB6U3RhY2tJZCwgYXJyT2ZQYWlycyk7IC8vRVJTNzA3MTQgQ1JOIHRvIGFkZCBVbm9jayBidXR0b24gYW5kIHRvIENvbXBsZXRlIFN0YWNrCiAgICBhbGVydCgiQEBAQEBAIFVubG9ja2VkICIgKyBzZklkKyI/PSIrelN0YWNrSWQpOwogICAgLy9DUk4xNzA3MTcgU2V0IGlzTG9ja2VkIHZhbHVlIHNvIHRoYXQgdGhlIHBhZGxvY2sgaWNvbiByZWZsZWN0cyByZWFsaXR5CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIl96RGF0YS5pc0xvY2tlZCA9IH5+OyB1cGRhdGVMb2NrU3RhdHVzKCk7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJhbGVydCh+VGhlIFN0YWNrIGlzIG5vdyB1bmxvY2tlZCwgcGxlYXNlIGNsb3NlIHRoZSBjdXJyZW50IHdpbmRvdy5+KTsiKQp9CmVsc2UgewogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJhbGVydCh+RVJST1I6IENvdWxkIG5vdCBnZXQgIit6RGF0YS56cHMrIiBmb3IgY3VycmVudCBhdHRhY2htZW50LiBJcyB6UGFwZXIgY29uZmlndXJlZCBjb3JyZWN0bHk/fik7Iik7Cn0="},"ordinal":20}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("###### ULOCK_ZSTACK rule fired ######"); //ERS201130 into accelerator
var stackTypeName = zData.zps; //ERS190617 "ZPAPER__zStack__c";

/* Clear rule test field that got us here */
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);
alert("After clearing X_buttonAction: remoteUser = " + doc.kbData.remoteUser);

//CRN170717 Unlock the Snippet
unlockDocument(doc);
var formatNow = getCurDateAndTime(doc);
var origAttachTo = X(doc, "X_attachedTo");
var zStackId = X(doc,zData.zps); //<ZPAPER__zStack__c>a1QQ0000002BxqlMAC</ZPAPER__zStack__c>
if (zStackId === "") { zStackId = origAttachTo.substring(1+origAttachTo.lastIndexOf("/")); }
if (zStackId.indexOf(',') >= 0) { zStackId = zData.getStackId(zStackId); }

if (zStackId) {
    arrOfPairs = [];
    var zps=zData.zps; //ERS190617 "ZPAPER__zStack__c";
    arrOfPairs.push(zData.zp+"Status__c", "Locked");
    //ERS190617 arrOfPairs.push("Triage_Status__c","Active"); //CRN170905 Is it okay to set it to Active?
    var sfId = updateSFRecord(doc, zps, zStackId, arrOfPairs); //ERS70714 CRN to add Unock button and to Complete Stack
    alert("@@@@@@ Unlocked " + sfId+"?="+zStackId);
    //CRN170717 Set isLocked value so that the padlock icon reflects reality
    addPostExecutionScript(doc, "_zData.isLocked = ~~; updateLockStatus(); ");
    addPostExecutionScript(doc, "alert(~The Stack is now unlocked, please close the current window.~);")
}
else {
    addPostExecutionScript(doc, "alert(~ERROR: Could not get "+zData.zps+" for current attachment. Is zPaper configured correctly?~);");
}
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
