<!--
// Name: DELIVERY_COMPLETE
// Committer: Prathyusha.vasireddy2zpaper.com
// Update: testing
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-06-10 15:42:11","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gREVMSVZFUllfQ09NUExFVEUgekFjdGlvbiAqLwp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIGRvY1RpdGxlID0gWChkb2MsICJkb2NUaXRsZSIpOwoKYWxlcnQoImRvY1RpdGxlOiAiICsgZG9jVGl0bGUpOwoKLyogTVNIMTgwMjA3IGRlZmluZSBvbmNlIGhlcmUgKi8KdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIHNmVHlwZSA9IFgoZG9jLCAic2ZUeXBlIik7CnZhciBhY2NvdW50TmFtZSA9ICIiOwoKdmFyIGF0dGFjaExhYmVsID0gIlNlbnQgb24gIiArIGZvcm1hdE5vdzsgLyogTVNIMTcwOTA1ICovCnZhciBzZklkID0gWChkb2MsICJYX2FjdGl2aXR5T25JRCIpOwoKdmFyIGF0dGFjaGVkVG8gPSBYKGRvYywgInNmU2VydmVyIik7CmF0dGFjaGVkVG8gKz0gIi8iICsgc2ZJZDsKCnZhciBkb2NUeXBlPVgoZG9jLCAiWF9kb2NUeXBlU2VudCIpOyAvL0VSUzE4MDMyOCAjNDYzNzMKYWxlcnQoIkBAQCBmaXJzdCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOwppZiAoZG9jVHlwZT09PSIiKSB7IGRvY1R5cGUgPSBYKGRvYywiWF9kb2NUeXBlIik7IH0gIC8vRVJTMTgwMzI4ICM0NjM3MwphbGVydCgiQEBAIHNlY29uZCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOwppZiAoZG9jVHlwZT09PSIiKSB7IGRvY1R5cGUgPSBkb2MuZG9jVHlwZTsgfQphbGVydCgiQEBAIHRoaXJkIGRvY1R5cGUgPSAiICsgZG9jVHlwZSk7CmlmIChkb2NUeXBlPT09IiIpIHsgZG9jVHlwZSA9IFgoZG9jLCJDb250YWN0TmFtZSIpOyB9IC8vRVJTMTgwMzI4ICM0NjM3MwphbGVydCgiQEBAIGZvcnRoIGRvY1R5cGUgPSAiICsgZG9jVHlwZSk7CmlmIChkb2NUeXBlPT09IiIpIHsgZG9jVHlwZSA9ICJGQVgiOyB9CmFsZXJ0KCJAQEAgZmlmdGggZG9jVHlwZSA9ICIgKyBkb2NUeXBlKTsKZG9jLmRvY1R5cGU9ZG9jVHlwZTsgLy9FUlMxODAzMjggIzQ2MzczCgp2YXIgbGFiZWxEb2NUeXBlID0gZG9jVHlwZTsKCmFsZXJ0KCJAQEAgZG9jVHlwZSA9ICIgKyBkb2NUeXBlKTsgCmFsZXJ0KCJAQEAgWChkb2MsIHNmU2VydmVyKSA9ICIgKyBhdHRhY2hlZFRvKTsKYWxlcnQoIkBAQCBYX2F0dGFjaGVkVG8gPSAiICsgWChkb2MsICJYX2F0dGFjaGVkVG8iKSk7CgppZiAoc2ZUeXBlID09ICJBY2NvdW50IikgewogICAgCiAgICBhbGVydCgiQEBAIGdldHRpbmcgQWNjb3VudCBkZXRhaWxzIik7CiAgICAKICAgIGFjY291bnROYW1lID0gZ2V0U0ZGaWVsZChkb2MsICJBY2NvdW50IiwgIk5hbWUiLCBudWxsLCBzZklkKTsgIAogICAgYWxlcnQoIkBAQCBhY2NvdW50TmFtZSBpczogIiArIGFjY291bnROYW1lKTsKICAgIAogICAgYXR0YWNoTGFiZWwgPSBhY2NvdW50TmFtZSArICIgLSAiICsgZG9jVGl0bGUgKyAiIC0gU2VudCAiICsgekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAKfQplbHNlIHsKICAgIGFsZXJ0KCJAQEAgZ2V0dGluZyBPYmplY3QgZGV0YWlscyIpOyAvL2RvY3VtZW50IHdhcyBzZW50IGZyb20gYW4gb2JqZWN0IG90aGVyIHRoYW4gYW4gYWNjb3VudAogICAgYXR0YWNoTGFiZWwgPSBkb2NUaXRsZSArICIgLSBTZW50ICIgKyB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICAKfQoKYWxlcnQoIkBAQEAgYXR0YWNoTGFiZWw6ICIgKyBhdHRhY2hMYWJlbCk7CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24wIiwgWChkb2MsICJYX2J1dHRvbkFjdGlvbiIpKTsKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsICIiKTsKCmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CmFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi0iICsgZG9jLmRvY1R5cGUpOyAvKiBFUlMxNzA2MjUgdG9kbyBnZXQgZG9jVHlwZSBmcm9tIHRlbXBsYXRlIHVzZWQgKi8KYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLCBhdHRhY2hlZFRvKTsgLyogRVJTMTcwNjI4IGRvY1NldCBuZWVkcyB0aGlzICovCmlmIChkb2NUeXBlICE9PSAiIikgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLGRvY1R5cGUpOyAvL0VSUzE4MDMyOCAjNDYzNzMKCi8vVFBNMTgwODAzIEZvciBzZXR0aW5nIGNoZWNrYm94ZXMgb24gdGhlIHpkb2NzZXQKaWYgKDE9PT0xKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcwogICAgdmFyIGJhPWRvYy5YKCJYX2ZheFN0YXR1cyIpKyIiOwogICAgaWYgKCJEZWxpdmVyZWQiICE9PSBiYSkgeyBiYT0iRmFpbGVkIjsgfSAvL0pQQjE4MDgwMyAjNTAxNzgKICAgIGFsZXJ0KCJAQEAgYmEiICsgYmEgKyAiIGRvYy5kYklEPSIgKyBkb2MuZGJJRCk7IAogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7Cn0KICAKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCnZhciBmYXhTdGF0dXM9ZG9jLlgoIlhfZmF4U3RhdHVzIikrIiI7CnZhciBmYXhTdGF0dXNEZXRhaWwgPSBYKGRvYywgIlhfZmF4U3RhdHVzRGV0YWlsIik7CnZhciBzdWNjZXNzZnVsWE1pc3Npb24gPSBmYWxzZTsKaWYoZmF4U3RhdHVzPT09IkRlbGl2ZXJlZCIpewogICAgc3VjY2Vzc2Z1bFhNaXNzaW9uID0gdHJ1ZTsKfQoKLyogRU5EIERFTElWRVJZX0NPTVBMRVRFIHpBY3Rpb24gKi8="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN DELIVERY_COMPLETE zAction */
var formatNow = getCurDateAndTime(doc);
var docTitle = X(doc, "docTitle");

alert("docTitle: " + docTitle);

/* MSH180207 define once here */
var arrOfPairs = [];
var sfType = X(doc, "sfType");
var accountName = "";

var attachLabel = "Sent on " + formatNow; /* MSH170905 */
var sfId = X(doc, "X_activityOnID");

var attachedTo = X(doc, "sfServer");
attachedTo += "/" + sfId;

var docType=X(doc, "X_docTypeSent"); //ERS180328 #46373
alert("@@@ first docType = " + docType);
if (docType==="") { docType = X(doc,"X_docType"); }  //ERS180328 #46373
alert("@@@ second docType = " + docType);
if (docType==="") { docType = doc.docType; }
alert("@@@ third docType = " + docType);
if (docType==="") { docType = X(doc,"ContactName"); } //ERS180328 #46373
alert("@@@ forth docType = " + docType);
if (docType==="") { docType = "FAX"; }
alert("@@@ fifth docType = " + docType);
doc.docType=docType; //ERS180328 #46373

var labelDocType = docType;

alert("@@@ docType = " + docType); 
alert("@@@ X(doc, sfServer) = " + attachedTo);
alert("@@@ X_attachedTo = " + X(doc, "X_attachedTo"));

if (sfType == "Account") {
    
    alert("@@@ getting Account details");
    
    accountName = getSFField(doc, "Account", "Name", null, sfId);  
    alert("@@@ accountName is: " + accountName);
    
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
    if ("Delivered" !== ba) { ba="Failed"; } //JPB180803 #50178
    alert("@@@ ba" + ba + " doc.dbID=" + doc.dbID); 
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
    arrOfPairs.push("X_buttonAction","");
}
  
updateDB(doc, arrOfPairs);

var faxStatus=doc.X("X_faxStatus")+"";
var faxStatusDetail = X(doc, "X_faxStatusDetail");
var successfulXMission = false;
if(faxStatus==="Delivered"){
    successfulXMission = true;
}

/* END DELIVERY_COMPLETE zAction */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
