<!--
// Name: DELIVERY_COMPLETE
// Committer: eric.stephens@zpaper.com
// Update: ERS190711 #60900 PAOS
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-07-11 14:14:08","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gREVMSVZFUllfQ09NUExFVEUgekFjdGlvbiAqLwp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIGRvY1RpdGxlID0gWChkb2MsICJkb2NUaXRsZSIpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgc2ZUeXBlID0gWChkb2MsICJzZlR5cGUiKTsKdmFyIGFjY291bnROYW1lID0gIiI7CnZhciBhdHRhY2hMYWJlbCA9ICJTZW50IG9uICIgKyBmb3JtYXROb3c7IC8qIE1TSDE3MDkwNSAqLwp2YXIgc2ZJZCA9IFgoZG9jLCAiWF9hY3Rpdml0eU9uSUQiKTsKdmFyIGF0dGFjaGVkVG8gPSBYKGRvYywgInNmU2VydmVyIikrICIvIiArIHNmSWQ7Cgp2YXIgZG9jVHlwZT1YKGRvYywgIlhfZG9jVHlwZVNlbnQiKTsgLy9FUlMxODAzMjggIzQ2MzczCmlmIChkb2NUeXBlPT09IiIpIHsgLy9FUlMxOTA2MTcgcmVmYWN0b3IgYW5kIGtlcHQgdGhpcyB0b28KICAgIHZhciBqb2JGaWxlPVgoZG9jLCJmYXhGaWxlUGF0aCIpOyAvL0VSUzE3MDkxOQogICAgaWYgKGpvYkZpbGUuaW5kZXhPZigiLWpvYiIpPi0xKSB7CiAgICAgICAgdmFyIGo9am9iRmlsZS5pbmRleE9mKCItam9iIik7CiAgICAgICAgdmFyIGs9am9iRmlsZS5pbmRleE9mKCItIixqKzEpOwogICAgICAgIGlmIChrID4gaiA+IC0xKSBkb2NUeXBlPWpvYkZpbGUuc3Vic3RyaW5nKGorNCxrKTsKICAgIH0KfQppZiAoZG9jVHlwZT09PSIiKSB7IGRvY1R5cGUgPSBYKGRvYywiWF9kb2NUeXBlIik7IH0gIC8vRVJTMTgwMzI4ICM0NjM3MwppZiAoZG9jVHlwZT09PSIiKSB7IGRvY1R5cGUgPSBkb2MuZG9jVHlwZTsgfQppZiAoZG9jVHlwZT09PSIiKSB7IGRvY1R5cGUgPSBYKGRvYywiQ29udGFjdE5hbWUiKTsgfSAvL0VSUzE4MDMyOCAjNDYzNzMKaWYgKGRvY1R5cGU9PT0iIikgeyBkb2NUeXBlID0gIkZBWCI7IH0KaWYgKGRvY1R5cGUuaW5kZXhPZigiOiIpPi0xKSBkb2NUeXBlPWRvY1R5cGUuc3BsaXQoIjoiKVswXTsKZG9jLmRvY1R5cGU9ZG9jVHlwZTsgLy9FUlMxODAzMjggIzQ2MzczCgp2YXIgbGFiZWxEb2NUeXBlID0gZG9jVHlwZTsKCmlmIChzZlR5cGUgPT0gIkFjY291bnQiKSB7CiAgICBhbGVydCgiQEBAIGdldHRpbmcgQWNjb3VudCBkZXRhaWxzIik7CiAgICBhY2NvdW50TmFtZSA9IGdldFNGRmllbGQoZG9jLCAiQWNjb3VudCIsICJOYW1lIiwgbnVsbCwgc2ZJZCk7ICAKICAgIGF0dGFjaExhYmVsID0gYWNjb3VudE5hbWUgKyAiIC0gIiArIGRvY1RpdGxlICsgIiAtIFNlbnQgIiArIHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKfQplbHNlIHsKICAgIGFsZXJ0KCJAQEAgZ2V0dGluZyBPYmplY3QgZGV0YWlscyIpOyAvL2RvY3VtZW50IHdhcyBzZW50IGZyb20gYW4gb2JqZWN0IG90aGVyIHRoYW4gYW4gYWNjb3VudAogICAgYXR0YWNoTGFiZWwgPSBkb2NUaXRsZSArICIgLSBTZW50ICIgKyB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7Cn0KCmFsZXJ0KCJAQEBAIGF0dGFjaExhYmVsOiAiICsgYXR0YWNoTGFiZWwpOwphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uMCIsIFgoZG9jLCAiWF9idXR0b25BY3Rpb24iKSk7CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCAiIik7CgphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItIiArIGRvYy5kb2NUeXBlKTsgLyogRVJTMTcwNjI1IHRvZG8gZ2V0IGRvY1R5cGUgZnJvbSB0ZW1wbGF0ZSB1c2VkICovCmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgYXR0YWNoZWRUbyk7IC8qIEVSUzE3MDYyOCBkb2NTZXQgbmVlZHMgdGhpcyAqLwppZiAoZG9jVHlwZSAhPT0gIiIpIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIixkb2NUeXBlKTsgLy9FUlMxODAzMjggIzQ2MzczCgovL1RQTTE4MDgwMyBGb3Igc2V0dGluZyBjaGVja2JveGVzIG9uIHRoZSB6ZG9jc2V0CmlmICgxPT09MSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKICAgIHZhciBiYT1kb2MuWCgiWF9mYXhTdGF0dXMiKSsiIjsKICAgIGlmIChiYS5pbmRleE9mKCJlZGVkIik+LTEpIGJhPWJhLnJlcGxhY2UoImVkZWQiLCJlZCIpOyAvL0VSUzE3MDkxOSBGYWlsZWRlZCAjNDA3NzcKICAgIGlmICgiRGVsaXZlcmVkIiAhPT0gYmEpIHsgYmE9IkZhaWxlZCI7IH0gLy9KUEIxODA4MDMgIzUwMTc4CiAgICBhbGVydCgiQEBAIGJhIiArIGJhICsgIiBkb2MuZGJJRD0iICsgZG9jLmRiSUQpOyAKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5MgogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwp9CgphcnJPZlBhaXJzPXpEYXRhLmNsaWVudERlbGl2ZXJ5KGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA3MTEgIzYwOTAwIFBBT1MKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCnZhciBmYXhTdGF0dXM9ZG9jLlgoIlhfZmF4U3RhdHVzIikrIiI7CnZhciBmYXhTdGF0dXNEZXRhaWwgPSBYKGRvYywgIlhfZmF4U3RhdHVzRGV0YWlsIik7CnZhciBzdWNjZXNzZnVsWE1pc3Npb24gPSBmYWxzZTsgIC8vRVJTMTkwNjE3IFRPRE8gZmluZCBvdXQgd2hlcmUgc3VjY2Vzc2Z1bFhNaXNzaW9uIGlzIGhlcmUKaWYoZmF4U3RhdHVzPT09IkRlbGl2ZXJlZCIpewogICAgc3VjY2Vzc2Z1bFhNaXNzaW9uID0gdHJ1ZTsKfQoKLyogRU5EIERFTElWRVJZX0NPTVBMRVRFIHpBY3Rpb24gKi8="},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN DELIVERY_COMPLETE zAction */
var formatNow = getCurDateAndTime(doc);
var docTitle = X(doc, "docTitle");
var arrOfPairs = [];
var sfType = X(doc, "sfType");
var accountName = "";
var attachLabel = "Sent on " + formatNow; /* MSH170905 */
var sfId = X(doc, "X_activityOnID");
var attachedTo = X(doc, "sfServer")+ "/" + sfId;

var docType=X(doc, "X_docTypeSent"); //ERS180328 #46373
if (docType==="") { //ERS190617 refactor and kept this too
    var jobFile=X(doc,"faxFilePath"); //ERS170919
    if (jobFile.indexOf("-job")>-1) {
        var j=jobFile.indexOf("-job");
        var k=jobFile.indexOf("-",j+1);
        if (k > j > -1) docType=jobFile.substring(j+4,k);
    }
}
if (docType==="") { docType = X(doc,"X_docType"); }  //ERS180328 #46373
if (docType==="") { docType = doc.docType; }
if (docType==="") { docType = X(doc,"ContactName"); } //ERS180328 #46373
if (docType==="") { docType = "FAX"; }
if (docType.indexOf(":")>-1) docType=docType.split(":")[0];
doc.docType=docType; //ERS180328 #46373

var labelDocType = docType;

if (sfType == "Account") {
    alert("@@@ getting Account details");
    accountName = getSFField(doc, "Account", "Name", null, sfId);  
    attachLabel = accountName + " - " + docTitle + " - Sent " + zData.formatTodayMMddYYYY();
}
else {
    alert("@@@ getting Object details"); //document was sent from an object other than an account
    attachLabel = docTitle + " - Sent " + zData.formatTodayMMddYYYY();
}

alert("@@@@ attachLabel: " + attachLabel);
arrOfPairs.push("db-label", attachLabel);
updateDB(doc, arrOfPairs);

arrOfPairs = [];
arrOfPairs.push("X_buttonAction0", X(doc, "X_buttonAction"));
arrOfPairs.push("X_buttonAction", "");

arrOfPairs.push("db-label", attachLabel);
arrOfPairs.push("db-BATES", sfId + "-" + doc.docType); /* ERS170625 todo get docType from template used */
arrOfPairs.push("X_attachedTo", attachedTo); /* ERS170628 docSet needs this */
if (docType !== "") arrOfPairs.push("X_docType",docType); //ERS180328 #46373

//TPM180803 For setting checkboxes on the zdocset
if (1===1) { //ERS170909 #40592 for zDocSet statuses
    var ba=doc.X("X_faxStatus")+"";
    if (ba.indexOf("eded")>-1) ba=ba.replace("eded","ed"); //ERS170919 Faileded #40777
    if ("Delivered" !== ba) { ba="Failed"; } //JPB180803 #50178
    alert("@@@ ba" + ba + " doc.dbID=" + doc.dbID); 
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
    arrOfPairs.push("X_buttonAction","");
}

arrOfPairs=zData.clientDelivery(doc,arrOfPairs); //ERS190711 #60900 PAOS
updateDB(doc, arrOfPairs);

var faxStatus=doc.X("X_faxStatus")+"";
var faxStatusDetail = X(doc, "X_faxStatusDetail");
var successfulXMission = false;  //ERS190617 TODO find out where successfulXMission is here
if(faxStatus==="Delivered"){
    successfulXMission = true;
}

/* END DELIVERY_COMPLETE zAction */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
