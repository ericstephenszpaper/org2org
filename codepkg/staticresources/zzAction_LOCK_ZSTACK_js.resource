<!--
// Name: LOCK_ZSTACK
// Committer: Prathyusha.vasireddy2zpaper.com
// Update: updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-06-04 15:34:28","active":true,"button":"","name":"LOCK_ZSTACK","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"LOCK_ZSTACK","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIiMjIyMjIyBMT0NLX1pTVEFDSyBydWxlIGZpcmVkICMjIyMjIyIpOwp2YXIgc3RhY2tUeXBlTmFtZSA9ICJaUEFQRVJfX3pTdGFja19fYyI7CmZ1bmN0aW9uIGdldFN0YWNrSWQoaWRzKSB7CiAgICBpZHMgPSBpZHMgKyAiIjsKICAgIHZhciBwYXJ0cyA9IGlkcy5zcGxpdCgnLCcpOwogICAgYWxlcnQoIkBAQCBwYXJ0cyA9ICIgKyBwYXJ0cyk7CiAgICBmb3IgKHZhciBpPTA7IGk8cGFydHMubGVuZ3RoOyBpKyspIHsKICAgICAgICB2YXIgaWQgPSBwYXJ0c1tpXSArICIiOwogICAgICAgIGFsZXJ0KCJwYXJ0c1tpXSA9ICIgKyBwYXJ0c1tpXSArICIsIHR5cGUgPSAiICsgKHR5cGVvZiBwYXJ0c1tpXSkgKyAiLCBpZCA9ICIgKyBpZCArICIsIHR5cGUgPSAiICsgKHR5cGVvZiBpZCkgKyAiLCBsZW5ndGggPSAiICsgaWQubGVuZ3RoICsgIiwgdHJpbSA9ICIgKyBpZC50cmltKTsKLy9DUk4xNzA5MDUgRm9yIHNvbWUgcmVhc29uIHRoZSB0cmltIGZ1bmN0aW9uIGlzbid0IGZvdW5kIGluIHN0cmluZy4gV2Ugc2hvdWxkbid0IG5lZWQgaXQgYW55d2F5LiAgICAgICAgCi8vICAgICAgICBpZCA9IGlkLnRyaW0oKTsKICAgICAgICBpZiAoaWQubGVuZ3RoID4gMCkgewogICAgICAgICAgICB2YXIgcmV0dXJuZWRUeXBlID0gZ2V0U0ZUeXBlKGRvYywgaWQpOwogICAgICAgICAgICBhbGVydCgiQEBAQCBwdWxsaW5nIHR5cGUgZm9yIGlkOiAiICsgaWQgKyAiLCBTRiB0eXBlID0gIiArIHJldHVybmVkVHlwZSArICIsIHN0YWNrVHlwZU5hbWUgPSAiICsgc3RhY2tUeXBlTmFtZSk7CiAgICAgICAgICAgIC8vYWxlcnQoIkBAQEAgIiArIHN0YWNrVHlwZU5hbWUgKyAiID09PSAiICsgcmV0dXJuZWRUeXBlICsgIiA9ICIgKyAoc3RhY2tUeXBlTmFtZSA9PT0gZ2V0U0ZUeXBlKGRvYywgaWQpKSk7CiAgICAgICAgICAgIC8vYWxlcnQoIkBAQEAgIiArIHN0YWNrVHlwZU5hbWUgKyAiID09ICIgKyByZXR1cm5lZFR5cGUgKyAiID0gIiArIChzdGFja1R5cGVOYW1lID09IGdldFNGVHlwZShkb2MsIGlkKSkpOwogICAgICAgICAgICBpZiAoc3RhY2tUeXBlTmFtZSA9PT0gZ2V0U0ZUeXBlKGRvYywgaWQpKSB7CiAgICAgICAgICAgICAgICByZXR1cm4gaWQ7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICByZXR1cm4gbnVsbDsKfQovKiBDbGVhciBydWxlIHRlc3QgZmllbGQgdGhhdCBnb3QgdXMgaGVyZSAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwphbGVydCgiQWZ0ZXIgY2xlYXJpbmcgWF9idXR0b25BY3Rpb246IHJlbW90ZVVzZXIgPSAiICsgZG9jLmtiRGF0YS5yZW1vdGVVc2VyKTsKCi8vQ1JOMTcwNzE3IExvY2sgdGhlIFNuaXBwZXQ7IGlmIHRoaXMgZmFpbHMsIGRvbid0IHNldCAiTG9ja2VkIiBzdGF0dXMgaW4gU0YgUmVjb3JkCmlmIChsb2NrRG9jdW1lbnQoZG9jKSkgewogICAgdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CiAgICB2YXIgb3JpZ0F0dGFjaFRvID0gWChkb2MsICJYX2F0dGFjaGVkVG8iKTsKICAgIHZhciB6U3RhY2tJZCA9IFgoZG9jLCJaUEFQRVJfX3pTdGFja19fYyIpOyAvLzxaUEFQRVJfX3pTdGFja19fYz5hMVFRMDAwMDAwMkJ4cWxNQUM8L1pQQVBFUl9felN0YWNrX19jPgogICAgaWYgKHpTdGFja0lkID09PSAiIikgeyB6U3RhY2tJZCA9IG9yaWdBdHRhY2hUby5zdWJzdHJpbmcoMStvcmlnQXR0YWNoVG8ubGFzdEluZGV4T2YoIi8iKSk7IH0KICAgIGFsZXJ0KCJAQEBAQCB6U3RhY2tJZCA9ICIgKyB6U3RhY2tJZCArICIsIHR5cGUgPSAiICsgKHR5cGVvZiB6U3RhY2tJZCkpOwogICAgaWYgKHpTdGFja0lkLmluZGV4T2YoJywnKSA+PSAwKSB7IHpTdGFja0lkID0gZ2V0U3RhY2tJZCh6U3RhY2tJZCArICIiKTsgfQogICAgCiAgICBpZiAoelN0YWNrSWQpIHsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgdmFyIHRyaWFnZU1vZGlmaWVkQnkgPSBnZXRTRkZpZWxkKGRvYywgIlpQQVBFUl9felN0YWNrX19jIiwgIlRyaWFnZV9TdGFydGVkX0J5X19jIiwgbnVsbCwgelN0YWNrSWQpOwogICAgICAgIGFsZXJ0KCJAQEBAIGN1cnJlbnQgdmFsdWUgb2YgVHJpYWdlX1N0YXJ0ZWRfQnlfX2M6ICIgKyB0cmlhZ2VNb2RpZmllZEJ5KTsKICAgICAgICBpZiAoIXRyaWFnZU1vZGlmaWVkQnkgfHwgMCA9PT0gdHJpYWdlTW9kaWZpZWRCeS5sZW5ndGgpIHsKICAgICAgICAgICAgLy9DUk4xNzA5MDUgQ2FzZSAjNDEzODcgS2VuIHdhbnRzIHRoZXNlIGZpZWxkcyBzZXQgb25seSBvbiBmaXJzdCBsb2NrCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiVHJpYWdlX1N0YXJ0ZWRfQnlfX2MiLCBkb2Mua2JEYXRhLnJlbW90ZVVzZXIpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlRyaWFnZV9TdGFydGVkX0F0X19jIiwgZm9ybWF0Tm93KTsKICAgICAgICB9CiAgICAgICAgdmFyIHpwcz0iWlBBUEVSX196U3RhY2tfX2MiOwogICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJMb2NrZWQiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlRyaWFnZV9TdGF0dXNfX2MiLCJMb2NrZWQgYnkgIiArIGRvYy5rYkRhdGEucmVtb3RlVXNlcik7IC8vQ1JOMTcwNzI3IEFaIHdhbnRzIHRvIGtub3cgd2hvIGxvY2tlZCB0aGUgelN0YWNrIC8vRVJTMTcwNzE5CiAgICAgICAgdmFyIHNmSWQgPSB1cGRhdGVTRlJlY29yZChkb2MsIHpwcywgelN0YWNrSWQsIGFyck9mUGFpcnMpOyAvL0VSUzcwNzE0IENSTiB0byBhZGQgVW5vY2sgYnV0dG9uIGFuZCB0byBDb21wbGV0ZSBTdGFjawogICAgICAgIGFsZXJ0KCJAQEBAQEAgTG9ja2VkICIgKyBzZklkKyI/PSIrelN0YWNrSWQpOwogICAgICAgIC8vQ1JOMTcwNzE3IFNldCBpc0xvY2tlZCB2YWx1ZSBzbyB0aGF0IHRoZSBwYWRsb2NrIGljb24gcmVmbGVjdHMgcmVhbGl0eQogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiaXNMb2NrZWQgPSB+TXlMb2NrZWR+OyIpOwogICAgfQogICAgZWxzZSB7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJhbGVydCh+RVJST1I6IENvdWxkIG5vdCBnZXQgWlBBUEVSX196U3RhY2tfX2MgZm9yIGN1cnJlbnQgYXR0YWNobWVudC4gSXMgelBhcGVyIGNvbmZpZ3VyZWQgY29ycmVjdGx5P34pOyIpOwogICAgfQp9CmVsc2UgewogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJpc0xvY2tlZCA9IH5PdGhlckxvY2tlZH47IGdMb2NrZWRVc2VycyA9IH4iICsgZG9jLmtiRGF0YS51c2VycyArICJ+OyBhbGVydCh+RkFJTEVEOiBUaGlzIGRvY3VtZW50IGNvdWxkIG5vdCBiZSBsb2NrZWQuIEl0IGlzIGFscmVhZHkgbG9ja2VkIGJ5IHNvbWVvbmUgZWxzZS5+KTsiKTsKfQoK"},"ordinal":11}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("###### LOCK_ZSTACK rule fired ######");
var stackTypeName = "ZPAPER__zStack__c";
function getStackId(ids) {
    ids = ids + "";
    var parts = ids.split(',');
    alert("@@@ parts = " + parts);
    for (var i=0; i<parts.length; i++) {
        var id = parts[i] + "";
        alert("parts[i] = " + parts[i] + ", type = " + (typeof parts[i]) + ", id = " + id + ", type = " + (typeof id) + ", length = " + id.length + ", trim = " + id.trim);
//CRN170905 For some reason the trim function isn't found in string. We shouldn't need it anyway.        
//        id = id.trim();
        if (id.length > 0) {
            var returnedType = getSFType(doc, id);
            alert("@@@@ pulling type for id: " + id + ", SF type = " + returnedType + ", stackTypeName = " + stackTypeName);
            //alert("@@@@ " + stackTypeName + " === " + returnedType + " = " + (stackTypeName === getSFType(doc, id)));
            //alert("@@@@ " + stackTypeName + " == " + returnedType + " = " + (stackTypeName == getSFType(doc, id)));
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

//CRN170717 Lock the Snippet; if this fails, don't set "Locked" status in SF Record
if (lockDocument(doc)) {
    var formatNow = getCurDateAndTime(doc);
    var origAttachTo = X(doc, "X_attachedTo");
    var zStackId = X(doc,"ZPAPER__zStack__c"); //<ZPAPER__zStack__c>a1QQ0000002BxqlMAC</ZPAPER__zStack__c>
    if (zStackId === "") { zStackId = origAttachTo.substring(1+origAttachTo.lastIndexOf("/")); }
    alert("@@@@@ zStackId = " + zStackId + ", type = " + (typeof zStackId));
    if (zStackId.indexOf(',') >= 0) { zStackId = getStackId(zStackId + ""); }
    
    if (zStackId) {
        arrOfPairs = [];
        var triageModifiedBy = getSFField(doc, "ZPAPER__zStack__c", "Triage_Started_By__c", null, zStackId);
        alert("@@@@ current value of Triage_Started_By__c: " + triageModifiedBy);
        if (!triageModifiedBy || 0 === triageModifiedBy.length) {
            //CRN170905 Case #41387 Ken wants these fields set only on first lock
            arrOfPairs.push("Triage_Started_By__c", doc.kbData.remoteUser);
            arrOfPairs.push("Triage_Started_At__c", formatNow);
        }
        var zps="ZPAPER__zStack__c";
        //arrOfPairs.push("ZPAPER__Status__c", "Locked");
        arrOfPairs.push("Triage_Status__c","Locked by " + doc.kbData.remoteUser); //CRN170727 AZ wants to know who locked the zStack //ERS170719
        var sfId = updateSFRecord(doc, zps, zStackId, arrOfPairs); //ERS70714 CRN to add Unock button and to Complete Stack
        alert("@@@@@@ Locked " + sfId+"?="+zStackId);
        //CRN170717 Set isLocked value so that the padlock icon reflects reality
        addPostExecutionScript(doc, "isLocked = ~MyLocked~;");
    }
    else {
        addPostExecutionScript(doc, "alert(~ERROR: Could not get ZPAPER__zStack__c for current attachment. Is zPaper configured correctly?~);");
    }
}
else {
    addPostExecutionScript(doc, "isLocked = ~OtherLocked~; gLockedUsers = ~" + doc.kbData.users + "~; alert(~FAILED: This document could not be locked. It is already locked by someone else.~);");
}


//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
