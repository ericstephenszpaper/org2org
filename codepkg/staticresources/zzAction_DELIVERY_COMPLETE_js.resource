<!--
// Name: DELIVERY_COMPLETE
// Committer: judson.bruno@zpaper.com
// Update: JPB190428 updated rule for Sales Demo Org
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-28 14:13:53","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwphbGVydCgicmVzZXR0aW5nIHRvIGF2b2lkIGJ1dHRvbiByZXZlcmIiKTsgCmFsZXJ0KCJAQEAgbGFiZWwgPSAiICsgZG9jLmxhYmVsKTsgCgoKdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCnZhciBzZklEID0gWChkb2MsIlhfYWN0aXZpdHlPbklEIik7IAp2YXIgZG9jVHlwZT1YKGRvYywiWF9kb2NUeXBlU2VudCIpOyAKdmFyIHByb3ZpZGVyOwp2YXIgZmFjaWxpdHk7CnZhciBsYWJlbD0iIjsgCnZhciBhcnJPZlBhaXJzID0gW107IAppZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCIwMDEiKSkgewkKCXByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJBY2NvdW50IiwgIk5hbWUiLCBudWxsLCBzZklEKTsgCglmYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQWNjb3VudCIsICJGYWNpbGl0eV9fci5OYW1lIiwgbnVsbCwgc2ZJRCk7IAoJYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJTZW50IHRvICIgKyBwcm92aWRlciArICIgIiArICIgYXQgIiArIGZhY2lsaXR5KTsgCn0gZWxzZSBpZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCI1MDAiKSkgewoJcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7IAoJZmFjaWxpdHkgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5GYWNpbGl0eV9fci5OYW1lIiwgbnVsbCwgc2ZJRCk7IAoJYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJTZW50IHRvICIgKyBwcm92aWRlciArICIgIiArICIgYXQgIiArIGZhY2lsaXR5KTsgCgl2YXIgcGF0aWVudCA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDb250YWN0Lk5hbWUiLCBudWxsLCBzZklEKTsKICAgIHZhciB6U3RhdHVzPVgoZG9jLCJYX3Jldmlld2VkU3RhdHVzIik7CiAgICBpZiAoelN0YXR1cz09PSIiKSB6U3RhdHVzPSJTZW50IjsKICAgIGlmICh6U3RhdHVzPT09IlNpZ25lZCIgfHwgZG9jLlVSTC5pbmRleE9mKCJURiIpIT0tMSkgeyAgCiAgICAgICAgZG9jVHlwZT0iVEYiOyAvL0VSUzE5MTIxMSBIQUNLCiAgICAgICAgbGFiZWw9elN0YXR1cyArICIgYnkgIiArIHByb3ZpZGVyICsgIiAiICsgIiBmb3IgIiArIHBhdGllbnQ7IAogICAgICAgIGFsZXJ0KCJUZWxsIGRvY1R5cGUgZnJvbSAiKyBkb2MuVVJMKyIgYW5kIGxhYmVsPSIrbGFiZWwrIiBzZklEPSIrc2ZJRCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsgCiAgICB9ICAKfQppZiAoZG9jVHlwZT09PSIiKSBkb2NUeXBlPWRvYy5kb2NUeXBlOwppZiAoZG9jVHlwZT09PSIiKSBYKGRvYywiWF9kb2NUeXBlIik7IAppZiAoZG9jVHlwZT09PSIiKSBYKGRvYywiQ29udGFjdE5hbWUiKTsgCmRvYy5kb2NUeXBlPWRvY1R5cGU7IAoKYWxlcnQoIkBAQCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOyAKCmlmIChkb2NUeXBlLmluZGV4T2YoIjoiKT4tMSkgZG9jVHlwZT1kb2NUeXBlLnNwbGl0KCI6IilbMF07CgphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uMCIsWChkb2MsIlhfYnV0dG9uQWN0aW9uIikpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOyAKYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSUQgKyAiLSIgKyBkb2NUeXBlKTsgIAphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsc2ZJRCk7IAppZiAoZG9jVHlwZSAhPT0gIiIpIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIixkb2NUeXBlKTsgCmlmICgxPT09MSkgeyAKICAgIHZhciBiYT1kb2MuWCgiWF9mYXhTdGF0dXMiKSsiIjsKICAgIGlmICgiRGVsaXZlcmVkIiAhPT0gYmEpIHsgYmE9IkZhaWxlZCI7IH0gCiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKfQphcnJPZlBhaXJzLnB1c2goIlhfQWNjb3VudF9OYW1lIixwcm92aWRlcik7IAphcnJPZlBhaXJzLnB1c2goIlhfQWNjb3VudF9GYWNpbGl0eSIsZmFjaWxpdHkpOyAKCnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7IAovKiBFTkQgUERGIFVQTE9BRCBDT0RFIFNOSVBQRVQgKi8="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated rule for Sales Demo Org
alert("resetting to avoid button reverb"); 
alert("@@@ label = " + doc.label); 


var nowTimeStamp = new Date().getTime() + ""; 
var formatNow = getCurDateAndTime(doc);

var sfID = X(doc,"X_activityOnID"); 
var docType=X(doc,"X_docTypeSent"); 
var provider;
var facility;
var label=""; 
var arrOfPairs = []; 
if (0 === sfID.indexOf("001")) {	
	provider = getSFField(doc, "Account", "Name", null, sfID); 
	facility = getSFField(doc, "Account", "Facility__r.Name", null, sfID); 
	arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility); 
} else if (0 === sfID.indexOf("500")) {
	provider = getSFField(doc, "Case", "Account.Name", null, sfID); 
	facility = getSFField(doc, "Case", "Account.Facility__r.Name", null, sfID); 
	arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility); 
	var patient = getSFField(doc, "Case", "Contact.Name", null, sfID);
    var zStatus=X(doc,"X_reviewedStatus");
    if (zStatus==="") zStatus="Sent";
    if (zStatus==="Signed" || doc.URL.indexOf("TF")!=-1) {  
        docType="TF"; //ERS191211 HACK
        label=zStatus + " by " + provider + " " + " for " + patient; 
        alert("Tell docType from "+ doc.URL+" and label="+label+" sfID="+sfID);
        arrOfPairs.push("db-label", label); 
    }  
}
if (docType==="") docType=doc.docType;
if (docType==="") X(doc,"X_docType"); 
if (docType==="") X(doc,"ContactName"); 
doc.docType=docType; 

alert("@@@ docType = " + docType); 

if (docType.indexOf(":")>-1) docType=docType.split(":")[0];

arrOfPairs.push("X_buttonAction0",X(doc,"X_buttonAction")); 
arrOfPairs.push("X_buttonAction",""); 
arrOfPairs.push("db-BATES", sfID + "-" + docType);  
arrOfPairs.push("X_attachedTo",sfID); 
if (docType !== "") arrOfPairs.push("X_docType",docType); 
if (1===1) { 
    var ba=doc.X("X_faxStatus")+"";
    if ("Delivered" !== ba) { ba="Failed"; } 
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); 
    arrOfPairs.push("X_buttonAction","");
}
arrOfPairs.push("X_Account_Name",provider); 
arrOfPairs.push("X_Account_Facility",facility); 

updateDB(doc, arrOfPairs); 
/* END PDF UPLOAD CODE SNIPPET */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
