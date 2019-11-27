<!--
// Name: DELIVERY_COMPLETE
// Committer: cory.newey@zpaper.com
// Update: fixed label
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-19 16:28:38","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwphbGVydCgiREVMSVZFUllfQ09NUExFVEUgUnVsZSBGaXJlZCIpOyAKYWxlcnQoIkBAQCBsYWJlbCA9ICIgKyBkb2MubGFiZWwpOyAKCnZhciBzZklEID0gWChkb2MsIlhfYWN0aXZpdHlPbklEIik7CmlmICghc2ZJRCkgewogICAgYWxlcnQoIkVSUk9SOiBubyBzZklEIHdhcyBub3Qgc3VwcGxpZWQuIEFib3J0aW5nLiIpOwogICAgcmV0dXJuOwp9CmFsZXJ0KCJAQEAgc2ZJRCA9ICIgKyBzZklEKTsKCnZhciBwYXRpZW50Owp2YXIgbGFiZWw9IiI7IAp2YXIgYXJyT2ZQYWlycyA9IFtdOyAKaWYgKDAgPT09IHNmSUQuaW5kZXhPZigiMDAxIikpIHsJCglwYXRpZW50ID0gZ2V0U0ZGaWVsZChkb2MsICJBY2NvdW50IiwgIk5hbWUiLCBudWxsLCBzZklEKTsgCn0KZWxzZSBpZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCI1MDAiKSkgewoJcGF0aWVudCA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgCn0KYWxlcnQoIkBAQCBwYXRpZW50ID0gIiArIHBhdGllbnQpOwoKdmFyIG5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKdmFyIGJhPVgoZG9jLCJYX2ZheFN0YXR1cyIpOwppZiAoIkRlbGl2ZXJlZCIgIT09IGJhKSB7IGJhPSJGYWlsZWQiOyB9CnZhciBsYWJlbCA9IHBhdGllbnQgKyAiIC0gRmF4ICIgKyBiYSArICIgLSAiICsgbm93OwphdHRhY2goZG9jLCBsYWJlbCwgc2ZJRCk7CgphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uMCIsWChkb2MsIlhfYnV0dG9uQWN0aW9uIikpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOyAKCmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdysiPGJyLz4iKTsgCmFyck9mUGFpcnMucHVzaCgiWF9BY2NvdW50X05hbWUiLHBhdGllbnQpOyAKCnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7IAovKiBFTkQgUERGIFVQTE9BRCBDT0RFIFNOSVBQRVQgKi8="},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated rule for Sales Demo Org
alert("DELIVERY_COMPLETE Rule Fired"); 
alert("@@@ label = " + doc.label); 

var sfID = X(doc,"X_activityOnID");
if (!sfID) {
    alert("ERROR: no sfID was not supplied. Aborting.");
    return;
}
alert("@@@ sfID = " + sfID);

var patient;
var label=""; 
var arrOfPairs = []; 
if (0 === sfID.indexOf("001")) {	
	patient = getSFField(doc, "Account", "Name", null, sfID); 
}
else if (0 === sfID.indexOf("500")) {
	patient = getSFField(doc, "Case", "Account.Name", null, sfID); 
}
alert("@@@ patient = " + patient);

var now = getCurDateAndTime(doc,false,true);
var ba=X(doc,"X_faxStatus");
if ("Delivered" !== ba) { ba="Failed"; }
var label = patient + " - Fax " + ba + " - " + now;
attach(doc, label, sfID);

arrOfPairs.push("db-label", label);
arrOfPairs.push("X_buttonAction0",X(doc,"X_buttonAction")); 
arrOfPairs.push("X_buttonAction",""); 

arrOfPairs.push("X_reviewedStatus",ba);
arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now+"<br/>"); 
arrOfPairs.push("X_Account_Name",patient); 

updateDB(doc, arrOfPairs); 
/* END PDF UPLOAD CODE SNIPPET */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
