<!--
// Name: DELIVERY_COMPLETE
// Committer: eric.stephens@zpaper.com
// Update: ERS181214; ERS181214 get the patient info
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2018-12-14 23:35:26","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoInJlc2V0dGluZyB0byBhdm9pZCBidXR0b24gcmV2ZXJiIik7IAphbGVydCgiQEBAIGxhYmVsID0gIiArIGRvYy5sYWJlbCk7IAoKLy9BTjE3MDYwNSBzdGFydGluZyBERUxJVkVSWV9DT01QTEVURSBydWxlCnZhciBub3dUaW1lU3RhbXAgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOyAKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7Cgp2YXIgc2ZJRCA9IFgoZG9jLCJYX2FjdGl2aXR5T25JRCIpOyAvL0pQQjE4MDgwMyBmaXhlZCBzZmlECnZhciBkb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGVTZW50Iik7IC8vRVJTMTgwMzI4ICM0NjM3Mwp2YXIgcHJvdmlkZXI7CnZhciBmYWNpbGl0eTsKdmFyIGxhYmVsPSIiOyAvL0VSUzE4MTIxNAp2YXIgYXJyT2ZQYWlycyA9IFtdOyAKaWYgKDAgPT09IHNmSUQuaW5kZXhPZigiMDAxIikpIHsJLy9KUEIxODEwMTggU3VwcG9ydCBBY2NvdW50IGFsb25nIHdpdGggQ2FzZQoJcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkFjY291bnQiLCAiTmFtZSIsIG51bGwsIHNmSUQpOyAvL0pQQjE4MDczMCBhZGRlZCBQcm92aWRlciAjNTAzMzgKCWZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJBY2NvdW50IiwgIkZhY2lsaXR5X19yLk5hbWUiLCBudWxsLCBzZklEKTsgLy9KUEIxODA3MzAgYWRkZWQgRmFjaWxpdHkgIzUwMzM4CglhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIlNlbnQgdG8gIiArIHByb3ZpZGVyICsgIiAiICsgIiBhdCAiICsgZmFjaWxpdHkpOyAvL0pQQjE4MDcyOSBjaGFuZ2VkIGxhYmVsIGZvciBwcm92aWRlciBhbmQgZmFjaWxpdHkgIzUwMzM4Cn0gZWxzZSBpZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCI1MDAiKSkgewoJcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7IC8vSlBCMTgwNzMwIGFkZGVkIFByb3ZpZGVyICM1MDMzOAoJZmFjaWxpdHkgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5GYWNpbGl0eV9fci5OYW1lIiwgbnVsbCwgc2ZJRCk7IC8vSlBCMTgwNzMwIGFkZGVkIEZhY2lsaXR5ICM1MDMzOAoJYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJTZW50IHRvICIgKyBwcm92aWRlciArICIgIiArICIgYXQgIiArIGZhY2lsaXR5KTsgLy9KUEIxODA3MjkgY2hhbmdlZCBsYWJlbCBmb3IgcHJvdmlkZXIgYW5kIGZhY2lsaXR5ICM1MDMzOAoJdmFyIHBhdGllbnQgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQ29udGFjdC5OYW1lIiwgbnVsbCwgc2ZJRCk7CiAgICB2YXIgelN0YXR1cz1YKGRvYywiWF9yZXZpZXdlZFN0YXR1cyIpOwogICAgaWYgKHpTdGF0dXM9PT0iIikgelN0YXR1cz0iU2VudCI7CiAgICBpZiAoelN0YXR1cz09PSJTaWduZWQiIHx8IGRvYy5VUkwuaW5kZXhPZigiVEYiKSE9LTEpIHsgIC8vLi4vYWxsZmlsZXMvMDAwMDUwMTRZMWN1a2JuM21wL1BhdGllbnRURkludGVyYWN0aXZlRm9ybS0xMjEzMTMwMjAzMjU2LnBkZgogICAgICAgIGRvY1R5cGU9IlRGIjsgLy9FUlMxOTEyMTEgSEFDSwogICAgICAgIGxhYmVsPXpTdGF0dXMgKyAiIGJ5ICIgKyBwcm92aWRlciArICIgIiArICIgZm9yICIgKyBwYXRpZW50OyAvL0VSUzE4MTIxNCBnZXQgdGhlIHBhdGllbnQgaW5mbwogICAgICAgIGFsZXJ0KCJUZWxsIGRvY1R5cGUgZnJvbSAiKyBkb2MuVVJMKyIgYW5kIGxhYmVsPSIrbGFiZWwrIiBzZklEPSIrc2ZJRCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsgLy9KUEIxODA3MjkgY2hhbmdlZCBsYWJlbCBmb3IgcHJvdmlkZXIgYW5kIGZhY2lsaXR5ICM1MDMzOAogICAgfSAgCn0KaWYgKGRvY1R5cGU9PT0iIikgZG9jVHlwZT1kb2MuZG9jVHlwZTsKaWYgKGRvY1R5cGU9PT0iIikgWChkb2MsIlhfZG9jVHlwZSIpOyAvL0VSUzE4MDMyOCAjNDYzNzMKaWYgKGRvY1R5cGU9PT0iIikgWChkb2MsIkNvbnRhY3ROYW1lIik7IC8vRVJTMTgwMzI4ICM0NjM3Mwpkb2MuZG9jVHlwZT1kb2NUeXBlOyAvL0VSUzE4MDMyOCAjNDYzNzMKCmFsZXJ0KCJAQEAgZG9jVHlwZSA9ICIgKyBkb2NUeXBlKTsgCgppZiAoZG9jVHlwZS5pbmRleE9mKCI6Iik+LTEpIGRvY1R5cGU9ZG9jVHlwZS5zcGxpdCgiOiIpWzBdOwoKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbjAiLFgoZG9jLCJYX2J1dHRvbkFjdGlvbiIpKTsgCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsgCmFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklEICsgIi0iICsgZG9jVHlwZSk7ICAvL0VSUzE3MDYyNSB0b2RvIGdldCBkb2NUeXBlIGZyb20gdGVtcGxhdGUgdXNlZCAvL0VSUzE4MDMyOCBEb25lIQphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsc2ZJRCk7IC8vRVJTMTcwNjI4IGRvY1NldCBuZWVkcyB0aGlzCmlmIChkb2NUeXBlICE9PSAiIikgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLGRvY1R5cGUpOyAvL0VSUzE4MDMyOCAjNDYzNzMKaWYgKDE9PT0xKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcwogICAgdmFyIGJhPWRvYy5YKCJYX2ZheFN0YXR1cyIpKyIiOwogICAgaWYgKCJEZWxpdmVyZWQiICE9PSBiYSkgeyBiYT0iRmFpbGVkIjsgfSAvL0pQQjE4MDgwMyAjNTAxNzgKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5MgogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwp9CmFyck9mUGFpcnMucHVzaCgiWF9BY2NvdW50X05hbWUiLHByb3ZpZGVyKTsgLy9KUEIxODA3MzAgYWRkZWQgUHJvdmlkZXIgIzUwMjMzCmFyck9mUGFpcnMucHVzaCgiWF9BY2NvdW50X0ZhY2lsaXR5IixmYWNpbGl0eSk7IC8vSlBCMTgwNzMwIGFkZGVkIEZhY2lsaXR5ICM1MDIzMwoKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsgCi8qIEVORCBQREYgVVBMT0FEIENPREUgU05JUFBFVCAqLw=="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("resetting to avoid button reverb"); 
alert("@@@ label = " + doc.label); 

//AN170605 starting DELIVERY_COMPLETE rule
var nowTimeStamp = new Date().getTime() + ""; 
var formatNow = getCurDateAndTime(doc);

var sfID = X(doc,"X_activityOnID"); //JPB180803 fixed sfiD
var docType=X(doc,"X_docTypeSent"); //ERS180328 #46373
var provider;
var facility;
var label=""; //ERS181214
var arrOfPairs = []; 
if (0 === sfID.indexOf("001")) {	//JPB181018 Support Account along with Case
	provider = getSFField(doc, "Account", "Name", null, sfID); //JPB180730 added Provider #50338
	facility = getSFField(doc, "Account", "Facility__r.Name", null, sfID); //JPB180730 added Facility #50338
	arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility); //JPB180729 changed label for provider and facility #50338
} else if (0 === sfID.indexOf("500")) {
	provider = getSFField(doc, "Case", "Account.Name", null, sfID); //JPB180730 added Provider #50338
	facility = getSFField(doc, "Case", "Account.Facility__r.Name", null, sfID); //JPB180730 added Facility #50338
	arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility); //JPB180729 changed label for provider and facility #50338
	var patient = getSFField(doc, "Case", "Contact.Name", null, sfID);
    var zStatus=X(doc,"X_reviewedStatus");
    if (zStatus==="") zStatus="Sent";
    if (zStatus==="Signed" || doc.URL.indexOf("TF")!=-1) {  //../allfiles/00005014Y1cukbn3mp/PatientTFInteractiveForm-1213130203256.pdf
        docType="TF"; //ERS191211 HACK
        label=zStatus + " by " + provider + " " + " for " + patient; //ERS181214 get the patient info
        alert("Tell docType from "+ doc.URL+" and label="+label+" sfID="+sfID);
        arrOfPairs.push("db-label", label); //JPB180729 changed label for provider and facility #50338
    }  
}
if (docType==="") docType=doc.docType;
if (docType==="") X(doc,"X_docType"); //ERS180328 #46373
if (docType==="") X(doc,"ContactName"); //ERS180328 #46373
doc.docType=docType; //ERS180328 #46373

alert("@@@ docType = " + docType); 

if (docType.indexOf(":")>-1) docType=docType.split(":")[0];

arrOfPairs.push("X_buttonAction0",X(doc,"X_buttonAction")); 
arrOfPairs.push("X_buttonAction",""); 
arrOfPairs.push("db-BATES", sfID + "-" + docType);  //ERS170625 todo get docType from template used //ERS180328 Done!
arrOfPairs.push("X_attachedTo",sfID); //ERS170628 docSet needs this
if (docType !== "") arrOfPairs.push("X_docType",docType); //ERS180328 #46373
if (1===1) { //ERS170909 #40592 for zDocSet statuses
    var ba=doc.X("X_faxStatus")+"";
    if ("Delivered" !== ba) { ba="Failed"; } //JPB180803 #50178
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
    arrOfPairs.push("X_buttonAction","");
}
arrOfPairs.push("X_Account_Name",provider); //JPB180730 added Provider #50233
arrOfPairs.push("X_Account_Facility",facility); //JPB180730 added Facility #50233

updateDB(doc, arrOfPairs); 
/* END PDF UPLOAD CODE SNIPPET */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
