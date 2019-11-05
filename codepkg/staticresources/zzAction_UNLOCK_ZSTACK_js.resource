<!--
// Name: UNLOCK_ZSTACK
// Committer: andrew@zpaper.com
// Update: static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-05 17:47:23","active":true,"button":"","name":"UNLOCK_ZSTACK","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"UNLOCK_ZSTACK","operation":"equals"},{"name":"doc.X(\"X_buttonAction\")","value":"Unlock","operation":"starts-with"}]},"consequence":{"doit":"YWxlcnQoIiMjIyMjIyBVTE9DS19aU1RBQ0sgcnVsZSBmaXJlZCAjIyMjIyMiKTsKdmFyIHN0YWNrVHlwZU5hbWUgPSB6RGF0YS56cHM7IC8vRVJTMTkwNjE3ICJaUEFQRVJfX3pTdGFja19fYyI7CgovKiBDbGVhciBydWxlIHRlc3QgZmllbGQgdGhhdCBnb3QgdXMgaGVyZSAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwphbGVydCgiQWZ0ZXIgY2xlYXJpbmcgWF9idXR0b25BY3Rpb246IHJlbW90ZVVzZXIgPSAiICsgZG9jLmtiRGF0YS5yZW1vdGVVc2VyKTsKCi8vQ1JOMTcwNzE3IFVubG9jayB0aGUgU25pcHBldAp1bmxvY2tEb2N1bWVudChkb2MpOwp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIG9yaWdBdHRhY2hUbyA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CnZhciB6U3RhY2tJZCA9IFgoZG9jLHpEYXRhLnpwcyk7IC8vPFpQQVBFUl9felN0YWNrX19jPmExUVEwMDAwMDAyQnhxbE1BQzwvWlBBUEVSX196U3RhY2tfX2M+CmlmICh6U3RhY2tJZCA9PT0gIiIpIHsgelN0YWNrSWQgPSBvcmlnQXR0YWNoVG8uc3Vic3RyaW5nKDErb3JpZ0F0dGFjaFRvLmxhc3RJbmRleE9mKCIvIikpOyB9CmlmICh6U3RhY2tJZC5pbmRleE9mKCcsJykgPj0gMCkgeyB6U3RhY2tJZCA9IHpEYXRhLmdldFN0YWNrSWQoelN0YWNrSWQpOyB9CgppZiAoelN0YWNrSWQpIHsKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciB6cHM9ekRhdGEuenBzOyAvL0VSUzE5MDYxNyAiWlBBUEVSX196U3RhY2tfX2MiOwogICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLnpwKyJTdGF0dXNfX2MiLCAiTG9ja2VkIik7CiAgICAvL0VSUzE5MDYxNyBhcnJPZlBhaXJzLnB1c2goIlRyaWFnZV9TdGF0dXNfX2MiLCJBY3RpdmUiKTsgLy9DUk4xNzA5MDUgSXMgaXQgb2theSB0byBzZXQgaXQgdG8gQWN0aXZlPwogICAgdmFyIHNmSWQgPSB1cGRhdGVTRlJlY29yZChkb2MsIHpwcywgelN0YWNrSWQsIGFyck9mUGFpcnMpOyAvL0VSUzcwNzE0IENSTiB0byBhZGQgVW5vY2sgYnV0dG9uIGFuZCB0byBDb21wbGV0ZSBTdGFjawogICAgYWxlcnQoIkBAQEBAQCBVbmxvY2tlZCAiICsgc2ZJZCsiPz0iK3pTdGFja0lkKTsKICAgIC8vQ1JOMTcwNzE3IFNldCBpc0xvY2tlZCB2YWx1ZSBzbyB0aGF0IHRoZSBwYWRsb2NrIGljb24gcmVmbGVjdHMgcmVhbGl0eQogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJfekRhdGEuaXNMb2NrZWQgPSB+fjsgdXBkYXRlTG9ja1N0YXR1cygpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQoflRoZSBTdGFjayBpcyBub3cgdW5sb2NrZWQsIHBsZWFzZSBjbG9zZSB0aGUgY3VycmVudCB3aW5kb3cufik7IikKfQplbHNlIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQofkVSUk9SOiBDb3VsZCBub3QgZ2V0ICIrekRhdGEuenBzKyIgZm9yIGN1cnJlbnQgYXR0YWNobWVudC4gSXMgelBhcGVyIGNvbmZpZ3VyZWQgY29ycmVjdGx5P34pOyIpOwp9"},"ordinal":7}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("###### ULOCK_ZSTACK rule fired ######");
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
