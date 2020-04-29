<!--
// Name: DELIVERY_COMPLETE
// Committer: steve.rickus@zpaper.com
// Update: use ContactFax
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-12-17 15:58:05","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwphbGVydCgiREVMSVZFUllfQ09NUExFVEUgUnVsZSBGaXJlZCIpOyAKYWxlcnQoIkBAQCBsYWJlbCA9ICIgKyBkb2MubGFiZWwpOyAKCnZhciBzZklEID0gWChkb2MsIlhfYWN0aXZpdHlPbklEIik7CmlmICghc2ZJRCkgewogICAgYWxlcnQoIkVSUk9SOiBubyBzZklEIHdhcyBub3Qgc3VwcGxpZWQuIEFib3J0aW5nLiIpOwogICAgcmV0dXJuOwp9CmFsZXJ0KCJAQEAgc2ZJRCA9ICIgKyBzZklEKTsKCnZhciBwYXRpZW50Owp2YXIgbGFiZWw9IiI7IAp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgc2FmZVRvQXR0YWNoID0gdHJ1ZTsKaWYgKDAgPT09IHNmSUQuaW5kZXhPZigiMDAxIikpIHsJCglwYXRpZW50ID0gZ2V0U0ZGaWVsZChkb2MsICJBY2NvdW50IiwgIk5hbWUiLCBudWxsLCBzZklEKTsgCn0KZWxzZSBpZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCI1MDAiKSkgewoJcGF0aWVudCA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgCn0KZWxzZSB7CiAgICBzYWZlVG9BdHRhY2ggPSBmYWxzZTsKfQphbGVydCgiQEBAIHBhdGllbnQgPSAiICsgcGF0aWVudCk7Cgp2YXIgbm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwp2YXIgYmE9WChkb2MsIlhfZmF4U3RhdHVzIik7CmlmICgiRGVsaXZlcmVkIiAhPT0gYmEpIHsgYmE9IkZhaWxlZCI7IH0KdmFyIGxhYmVsID0gcGF0aWVudCArICIgLSBGYXggIiArIGJhICsgIiAtICIgKyBub3c7Ci8vU0hSMTkxMjE2IGhhbmRsZSAiZmF4IHRvIHBkZiIgYmV0dGVyCnZhciBjb250YWN0RmF4ID0gWChkb2MsICJDb250YWN0RmF4Iik7CmlmIChjb250YWN0RmF4ID09ICJQREYiKSB7CiAgICBsYWJlbCA9ICJQREYgR2VuZXJhdGVkIC0gIiArIG5vdzsKfQovL1NIUjE5MTIxNiBhdm9pZCBhdHRhY2hpbmcgY3VzdG9tIHR5cGVzCmlmIChzYWZlVG9BdHRhY2gpIHsKICAgIGF0dGFjaChkb2MsIGxhYmVsLCBzZklEKTsKfQplbHNlIHsKICAgIHZhciBhdHRhY2hlZDIgPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOwogICAgaWYgKCFhdHRhY2hlZDIuY29udGFpbnMoc2ZJRCkpIHsKICAgICAgICBpZiAoYXR0YWNoZWQyKSB7CiAgICAgICAgICAgIGF0dGFjaGVkMiArPSAiLCIgKyBzZklEOwogICAgICAgIH0KICAgICAgICBlbHNlIHsKICAgICAgICAgICAgYWxlcnQoImRvYy5rYkRhdGEgPT4gIiArIGRvYy5rYkRhdGEpOwogICAgICAgICAgICBhdHRhY2hlZDIgPSBkb2Muc2ZTZXJ2ZXIgKyAiLyIgKyBzZklEOwogICAgICAgIH0KICAgICAgICBpZiAoIWF0dGFjaGVkMi5zdGFydHNXaXRoKCJodHRwczovLyIpKSB7CiAgICAgICAgICAgIGF0dGFjaGVkMiA9ICJodHRwczovLyIgKyBhdHRhY2hlZDI7CiAgICAgICAgfQogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgYXR0YWNoZWQyKTsKICAgIH0KfQoKYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbjAiLFgoZG9jLCJYX2J1dHRvbkFjdGlvbiIpKTsgCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsgCgphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3crIjxici8+Iik7IAphcnJPZlBhaXJzLnB1c2goIlhfQWNjb3VudF9OYW1lIixwYXRpZW50KTsgCgp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOyAKLyogRU5EIFBERiBVUExPQUQgQ09ERSBTTklQUEVUICov"},"ordinal":3}

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
var safeToAttach = true;
if (0 === sfID.indexOf("001")) {	
	patient = getSFField(doc, "Account", "Name", null, sfID); 
}
else if (0 === sfID.indexOf("500")) {
	patient = getSFField(doc, "Case", "Account.Name", null, sfID); 
}
else {
    safeToAttach = false;
}
alert("@@@ patient = " + patient);

var now = getCurDateAndTime(doc,false,true);
var ba=X(doc,"X_faxStatus");
if ("Delivered" !== ba) { ba="Failed"; }
var label = patient + " - Fax " + ba + " - " + now;
//SHR191216 handle "fax to pdf" better
var contactFax = X(doc, "ContactFax");
if (contactFax == "PDF") {
    label = "PDF Generated - " + now;
}
//SHR191216 avoid attaching custom types
if (safeToAttach) {
    attach(doc, label, sfID);
}
else {
    var attached2 = X(doc, "X_attachedTo");
    if (!attached2.contains(sfID)) {
        if (attached2) {
            attached2 += "," + sfID;
        }
        else {
            alert("doc.kbData => " + doc.kbData);
            attached2 = doc.sfServer + "/" + sfID;
        }
        if (!attached2.startsWith("https://")) {
            attached2 = "https://" + attached2;
        }
        arrOfPairs.push("X_attachedTo", attached2);
    }
}

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
