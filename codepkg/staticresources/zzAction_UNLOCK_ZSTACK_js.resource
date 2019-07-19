<!--
// Name: UNLOCK_ZSTACK
// Committer: tom.malone@zpaper.com
// Update: cleaning up abbvie stuff
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-05-31 16:29:22","active":true,"button":"Unlock Stack","name":"UNLOCK_ZSTACK","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"UNLOCK_ZSTACK","operation":"equals"},{"name":"doc.X(\"X_buttonAction\")","value":"Unlock","operation":"starts-with"}]},"consequence":{"doit":"YWxlcnQoIiMjIyMjIyBVTE9DS19aU1RBQ0sgcnVsZSBmaXJlZCAjIyMjIyMiKTsKdmFyIHN0YWNrVHlwZU5hbWUgPSAiWlBBUEVSX196U3RhY2tfX2MiOwpmdW5jdGlvbiBnZXRTdGFja0lkKGlkcykgewogICAgaWRzID0gaWRzICsgIiI7CiAgICB2YXIgcGFydHMgPSBpZHMuc3BsaXQoJywnKTsKICAgIGZvciAodmFyIGk9MDsgaTxwYXJ0cy5sZW5ndGg7IGkrKykgewogICAgICAgIHZhciBpZCA9IHBhcnRzW2ldLnRyaW0oKTsKICAgICAgICBpZiAoaWQubGVuZ3RoID4gMCkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBwdWxsaW5nIHR5cGUgZm9yIGlkOiAiICsgaWQpOwogICAgICAgICAgICBpZiAoc3RhY2tUeXBlTmFtZSA9PT0gZ2V0U0ZUeXBlKGRvYywgaWQpKSB7CiAgICAgICAgICAgICAgICByZXR1cm4gaWQ7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICByZXR1cm4gbnVsbDsKfQovKiBDbGVhciBydWxlIHRlc3QgZmllbGQgdGhhdCBnb3QgdXMgaGVyZSAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwphbGVydCgiQWZ0ZXIgY2xlYXJpbmcgWF9idXR0b25BY3Rpb246IHJlbW90ZVVzZXIgPSAiICsgZG9jLmtiRGF0YS5yZW1vdGVVc2VyKTsKCi8vQ1JOMTcwNzE3IFVubG9jayB0aGUgU25pcHBldAp1bmxvY2tEb2N1bWVudChkb2MpOwp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIG9yaWdBdHRhY2hUbyA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CnZhciB6U3RhY2tJZCA9IFgoZG9jLCJaUEFQRVJfX3pTdGFja19fYyIpOyAvLzxaUEFQRVJfX3pTdGFja19fYz5hMVFRMDAwMDAwMkJ4cWxNQUM8L1pQQVBFUl9felN0YWNrX19jPgppZiAoelN0YWNrSWQgPT09ICIiKSB7IHpTdGFja0lkID0gb3JpZ0F0dGFjaFRvLnN1YnN0cmluZygxK29yaWdBdHRhY2hUby5sYXN0SW5kZXhPZigiLyIpKTsgfQppZiAoelN0YWNrSWQuaW5kZXhPZignLCcpID49IDApIHsgelN0YWNrSWQgPSBnZXRTdGFja0lkKHpTdGFja0lkKTsgfQoKaWYgKHpTdGFja0lkKSB7CiAgICBhcnJPZlBhaXJzID0gW107CiAgICB2YXIgenBzPSJaUEFQRVJfX3pTdGFja19fYyI7CiAgICAvL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX19TdGF0dXNfX2MiLCAiTG9ja2VkIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlRyaWFnZV9TdGF0dXNfX2MiLCJBY3RpdmUiKTsgLy9DUk4xNzA5MDUgSXMgaXQgb2theSB0byBzZXQgaXQgdG8gQWN0aXZlPwogICAgdmFyIHNmSWQgPSB1cGRhdGVTRlJlY29yZChkb2MsIHpwcywgelN0YWNrSWQsIGFyck9mUGFpcnMpOyAvL0VSUzcwNzE0IENSTiB0byBhZGQgVW5vY2sgYnV0dG9uIGFuZCB0byBDb21wbGV0ZSBTdGFjawogICAgYWxlcnQoIkBAQEBAQCBVbmxvY2tlZCAiICsgc2ZJZCsiPz0iK3pTdGFja0lkKTsKICAgIC8vQ1JOMTcwNzE3IFNldCBpc0xvY2tlZCB2YWx1ZSBzbyB0aGF0IHRoZSBwYWRsb2NrIGljb24gcmVmbGVjdHMgcmVhbGl0eQogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJfekRhdGEuaXNMb2NrZWQgPSB+fjsgdXBkYXRlTG9ja1N0YXR1cygpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQoflRoZSBTdGFjayBpcyBub3cgdW5sb2NrZWQsIHBsZWFzZSBjbG9zZSB0aGUgY3VycmVudCB3aW5kb3cufik7IikKfQplbHNlIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQofkVSUk9SOiBDb3VsZCBub3QgZ2V0IFpQQVBFUl9felN0YWNrX19jIGZvciBjdXJyZW50IGF0dGFjaG1lbnQuIElzIHpQYXBlciBjb25maWd1cmVkIGNvcnJlY3RseT9+KTsiKTsKfQ=="},"ordinal":9}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("###### ULOCK_ZSTACK rule fired ######");
var stackTypeName = "ZPAPER__zStack__c";
function getStackId(ids) {
    ids = ids + "";
    var parts = ids.split(',');
    for (var i=0; i<parts.length; i++) {
        var id = parts[i].trim();
        if (id.length > 0) {
            alert("@@@@ pulling type for id: " + id);
            if (stackTypeName === getSFType(doc, id)) {
                return id;
            }
        }
    }
    return null;
}
/* Clear rule test field that got us here */
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);
alert("After clearing X_buttonAction: remoteUser = " + doc.kbData.remoteUser);

//CRN170717 Unlock the Snippet
unlockDocument(doc);
var formatNow = getCurDateAndTime(doc);
var origAttachTo = X(doc, "X_attachedTo");
var zStackId = X(doc,"ZPAPER__zStack__c"); //<ZPAPER__zStack__c>a1QQ0000002BxqlMAC</ZPAPER__zStack__c>
if (zStackId === "") { zStackId = origAttachTo.substring(1+origAttachTo.lastIndexOf("/")); }
if (zStackId.indexOf(',') >= 0) { zStackId = getStackId(zStackId); }

if (zStackId) {
    arrOfPairs = [];
    var zps="ZPAPER__zStack__c";
    //arrOfPairs.push("ZPAPER__Status__c", "Locked");
    arrOfPairs.push("Triage_Status__c","Active"); //CRN170905 Is it okay to set it to Active?
    var sfId = updateSFRecord(doc, zps, zStackId, arrOfPairs); //ERS70714 CRN to add Unock button and to Complete Stack
    alert("@@@@@@ Unlocked " + sfId+"?="+zStackId);
    //CRN170717 Set isLocked value so that the padlock icon reflects reality
    addPostExecutionScript(doc, "_zData.isLocked = ~~; updateLockStatus(); ");
    addPostExecutionScript(doc, "alert(~The Stack is now unlocked, please close the current window.~);")
}
else {
    addPostExecutionScript(doc, "alert(~ERROR: Could not get ZPAPER__zStack__c for current attachment. Is zPaper configured correctly?~);");
}
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
