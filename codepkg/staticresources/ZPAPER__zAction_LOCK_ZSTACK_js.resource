<!--
// Name: LOCK_ZSTACK
// Committer: eric.stephens@zpaper.com
// Update: ERS190617 add fields to zStack
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-06-17 22:08:50","active":true,"button":"","name":"LOCK_ZSTACK","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"LOCK_ZSTACK","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIiMjIyMjIyBMT0NLX1pTVEFDSyBydWxlIGZpcmVkICMjIyMjIyIpOwp2YXIgc3RhY2tUeXBlTmFtZSA9IHpEYXRhLnpwczsgLy9FUlMxOTA2MTcgIlpQQVBFUl9felN0YWNrX19jIjsKCi8qIENsZWFyIHJ1bGUgdGVzdCBmaWVsZCB0aGF0IGdvdCB1cyBoZXJlICovCnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCAiIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CmFsZXJ0KCJBZnRlciBjbGVhcmluZyBYX2J1dHRvbkFjdGlvbjogcmVtb3RlVXNlciA9ICIgKyBkb2Mua2JEYXRhLnJlbW90ZVVzZXIpOwoKLy9DUk4xNzA3MTcgTG9jayB0aGUgU25pcHBldDsgaWYgdGhpcyBmYWlscywgZG9uJ3Qgc2V0ICJMb2NrZWQiIHN0YXR1cyBpbiBTRiBSZWNvcmQKaWYgKGxvY2tEb2N1bWVudChkb2MpKSB7CiAgICB2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKICAgIHZhciBvcmlnQXR0YWNoVG8gPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOwogICAgdmFyIHpTdGFja0lkID0gWChkb2MsIlpQQVBFUl9felN0YWNrX19jIik7IC8vPFpQQVBFUl9felN0YWNrX19jPmExUVEwMDAwMDAyQnhxbE1BQzwvWlBBUEVSX196U3RhY2tfX2M+CiAgICBpZiAoelN0YWNrSWQgPT09ICIiKSB7IHpTdGFja0lkID0gb3JpZ0F0dGFjaFRvLnN1YnN0cmluZygxK29yaWdBdHRhY2hUby5sYXN0SW5kZXhPZigiLyIpKTsgfQogICAgYWxlcnQoIkBAQEBAIHpTdGFja0lkID0gIiArIHpTdGFja0lkICsgIiwgdHlwZSA9ICIgKyAodHlwZW9mIHpTdGFja0lkKSk7CiAgICBpZiAoelN0YWNrSWQuaW5kZXhPZignLCcpID49IDApIHsgelN0YWNrSWQgPSB6RGF0YS5nZXRTdGFja0lkKHpTdGFja0lkICsgIiIpOyB9CiAgICAKICAgIGlmICh6U3RhY2tJZCkgewogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIkxvY2tlZCIpOwogICAgICAgIGlmICgxPT09MCkgeyAvL0VSUzE5MDYxNyBUT0RPCiAgICAgICAgICAgIHZhciB0cmlhZ2VNb2RpZmllZEJ5ID0gZ2V0U0ZGaWVsZChkb2MsIHpEYXRhLnpwcywgIlRyaWFnZV9TdGFydGVkX0J5X19jIiwgbnVsbCwgelN0YWNrSWQpOwogICAgICAgICAgICBhbGVydCgiQEBAQCBjdXJyZW50IHZhbHVlIG9mIFRyaWFnZV9TdGFydGVkX0J5X19jOiAiICsgdHJpYWdlTW9kaWZpZWRCeSk7CiAgICAgICAgICAgIGlmICghdHJpYWdlTW9kaWZpZWRCeSB8fCAwID09PSB0cmlhZ2VNb2RpZmllZEJ5Lmxlbmd0aCkgewogICAgICAgICAgICAgICAgLy9DUk4xNzA5MDUgQ2FzZSAjNDEzODcgS2VuIHdhbnRzIHRoZXNlIGZpZWxkcyBzZXQgb25seSBvbiBmaXJzdCBsb2NrCiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuenArIlRyaWFnZV9TdGFydGVkX0J5X19jIiwgZG9jLmtiRGF0YS5yZW1vdGVVc2VyKTsKICAgICAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiVHJpYWdlX1N0YXJ0ZWRfQXRfX2MiLCBmb3JtYXROb3cpOwogICAgICAgICAgICB9CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS56cCsiVHJpYWdlX1N0YXR1c19fYyIsIkxvY2tlZCBieSAiICsgZG9jLmtiRGF0YS5yZW1vdGVVc2VyKTsgLy9DUk4xNzA3MjcgQVogd2FudHMgdG8ga25vdyB3aG8gbG9ja2VkIHRoZSB6U3RhY2sgLy9FUlMxNzA3MTkKICAgICAgICB9CiAgICAgICAgdmFyIHNmSWQgPSB1cGRhdGVTRlJlY29yZChkb2MsekRhdGEuenBzLCB6U3RhY2tJZCwgYXJyT2ZQYWlycyk7IC8vRVJTNzA3MTQgQ1JOIHRvIGFkZCBVbm9jayBidXR0b24gYW5kIHRvIENvbXBsZXRlIFN0YWNrCiAgICAgICAgYWxlcnQoIkBAQEBAQCBMb2NrZWQgIiArIHNmSWQrIj89Iit6U3RhY2tJZCk7CiAgICAgICAgLy9DUk4xNzA3MTcgU2V0IGlzTG9ja2VkIHZhbHVlIHNvIHRoYXQgdGhlIHBhZGxvY2sgaWNvbiByZWZsZWN0cyByZWFsaXR5CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJpc0xvY2tlZCA9IH5NeUxvY2tlZH47Iik7CiAgICB9CiAgICBlbHNlIHsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgImFsZXJ0KH5FUlJPUjogQ291bGQgbm90IGdldCAiK3pEYXRhLnpwcysiIGZvciBjdXJyZW50IGF0dGFjaG1lbnQuIElzIHpQYXBlciBjb25maWd1cmVkIGNvcnJlY3RseT9+KTsiKTsKICAgIH0KfQplbHNlIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiaXNMb2NrZWQgPSB+T3RoZXJMb2NrZWR+OyBnTG9ja2VkVXNlcnMgPSB+IiArIGRvYy5rYkRhdGEudXNlcnMgKyAifjsgYWxlcnQofkZBSUxFRDogVGhpcyBkb2N1bWVudCBjb3VsZCBub3QgYmUgbG9ja2VkLiBJdCBpcyBhbHJlYWR5IGxvY2tlZCBieSBzb21lb25lIGVsc2Uufik7Iik7Cn0="},"ordinal":13}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("###### LOCK_ZSTACK rule fired ######");
var stackTypeName = zData.zps; //ERS190617 "ZPAPER__zStack__c";

/* Clear rule test field that got us here */
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);
alert("After clearing X_buttonAction: remoteUser = " + doc.kbData.remoteUser);

//CRN170717 Lock the Snippet; if this fails, don't set "Locked" status in SF Record
if (lockDocument(doc)) {
    var formatNow = getCurDateAndTime(doc);
    var origAttachTo = X(doc, "X_attachedTo");
    var zStackId = X(doc,"ZPAPER__zStack__c"); //<ZPAPER__zStack__c>a1QQ0000002BxqlMAC</ZPAPER__zStack__c>
    if (zStackId === "") { zStackId = origAttachTo.substring(1+origAttachTo.lastIndexOf("/")); }
    alert("@@@@@ zStackId = " + zStackId + ", type = " + (typeof zStackId));
    if (zStackId.indexOf(',') >= 0) { zStackId = zData.getStackId(zStackId + ""); }
    
    if (zStackId) {
        arrOfPairs = [];
        arrOfPairs.push("ZPAPER__Status__c", "Locked");
        if (1===0) { //ERS190617 TODO
            var triageModifiedBy = getSFField(doc, zData.zps, "Triage_Started_By__c", null, zStackId);
            alert("@@@@ current value of Triage_Started_By__c: " + triageModifiedBy);
            if (!triageModifiedBy || 0 === triageModifiedBy.length) {
                //CRN170905 Case #41387 Ken wants these fields set only on first lock
                arrOfPairs.push(zData.zp+"Triage_Started_By__c", doc.kbData.remoteUser);
                arrOfPairs.push(zData.zp+"Triage_Started_At__c", formatNow);
            }
            arrOfPairs.push(zData.zp+"Triage_Status__c","Locked by " + doc.kbData.remoteUser); //CRN170727 AZ wants to know who locked the zStack //ERS170719
        }
        var sfId = updateSFRecord(doc,zData.zps, zStackId, arrOfPairs); //ERS70714 CRN to add Unock button and to Complete Stack
        alert("@@@@@@ Locked " + sfId+"?="+zStackId);
        //CRN170717 Set isLocked value so that the padlock icon reflects reality
        addPostExecutionScript(doc, "isLocked = ~MyLocked~;");
    }
    else {
        addPostExecutionScript(doc, "alert(~ERROR: Could not get "+zData.zps+" for current attachment. Is zPaper configured correctly?~);");
    }
}
else {
    addPostExecutionScript(doc, "isLocked = ~OtherLocked~; gLockedUsers = ~" + doc.kbData.users + "~; alert(~FAILED: This document could not be locked. It is already locked by someone else.~);");
}
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
