<!--
// Name: Standard Barcode Received
// Committer: judson.bruno@zpaper.com
// Update: JPB190428 updated rule for Sales Demo Org
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-28 14:18:05","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"[001|003|00Q|500|006].*","operation":"regex"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIHNmSUQgPSBnZXRCYXJjb2RlT25lKGRvYyk7CmlmICghc2ZJRCB8fCAwID09PSBzZklELmxlbmd0aCkgewogICBzZklEID0gZ2V0QWx0ZXJuYXRlQmFyY29kZU9uZShkb2MpICsgIiI7Cn0KYWxlcnQoIiMjIyBzZklEIGZyb20gYmFyY29kZTogIiArIHNmSUQpOwp2YXIgbGFiZWwgPSAiTmV3IEZheCBSZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93Owp2YXIgcHJvdmlkZXIgPSAiIjsKdmFyIGZhY2lsaXR5ID0gIiI7CgppZiAoc2ZJRCAmJiBzZklELmxlbmd0aCA+IDApIHsKICAgLy9wcm92aWRlciA9IFgoZG9jLCAiWF9BY2NvdW50X05hbWUiKTsKICAgLy9mYWNpbGl0eSA9IFgoZG9jLCAiWF9BY2NvdW50X0ZhY2lsaXR5Iik7CiAgIHByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOyAKICAgZmFjaWxpdHkgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5GYWNpbGl0eV9fci5OYW1lIiwgbnVsbCwgc2ZJRCk7IAogICAvKiBhdHRhY2ggdGhlIGZheCB0byBpdHMgY29ycmVzcG9uZGluZyBTYWxlc2ZvcmNlIE9iamVjdCAqLwogICBsYWJlbCA9ICJSZWNlaXZlZCBmcm9tICIgKyBwcm92aWRlciArICIgIiArICIgYXQgIiArIGZhY2lsaXR5OyAKICAgYXR0YWNoKGRvYywgbGFiZWwsIHNmSUQpOwogICAvL0VSUzE3MDIwMSBUT0RPIG5vdGljZSBpZiBzZklEIG5vdCB2YWxpZCBhbmQgdHJlYXQgbGlrZSB1bmJhcmNvZGVkCiAgIC8qIHNhdmUgdGhlIHdvcmtmbG93IGZpZWxkcyBhbHNvICovCiAgIHZhciBzZlR5cGUgPSBnZXRTRlR5cGUoZG9jLCBzZklEKTsKICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CiAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsKICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCBkb2MuWCgiWF9kb2NUeXBlIikpOwogICB1cGRhdGVTRlJlY29yZChkb2MsIHNmVHlwZSwgc2ZJRCwgYXJyT2ZQYWlycyk7CgogICAvL2FsZXJ0KCJAQEBAQEAgTW92aW5nIGJhcmNvZGVkIGRvY3VtZW50IGludG8gZm9sZGVyOiAyMDUwMFRyaWFnZS1TMyIpOwogICAvL21vdmVEb2N1bWVudChkb2MsICIyMDUwMFRyaWFnZS1TMUEiLCAiMjA1MDBUcmlhZ2UtUzMiKTsKfQoKCmFyck9mUGFpcnMgPSBbXTsKaWYgKDE9PT0xKSB7IAogIHZhciBiYSA9ICJSZWNlaXZlZCI7CiAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCBiYSk7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCBYKGRvYywgIlhfcmV2aWV3cyIpICsgYmEgKyAiIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iik7IAp9CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7"},"ordinal":15}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated rule for Sales Demo Org
var formatNow = getCurDateAndTime(doc);
var sfID = getBarcodeOne(doc);
if (!sfID || 0 === sfID.length) {
   sfID = getAlternateBarcodeOne(doc) + "";
}
alert("### sfID from barcode: " + sfID);
var label = "New Fax Received on " + formatNow;
var provider = "";
var facility = "";

if (sfID && sfID.length > 0) {
   //provider = X(doc, "X_Account_Name");
   //facility = X(doc, "X_Account_Facility");
   provider = getSFField(doc, "Case", "Account.Name", null, sfID); 
   facility = getSFField(doc, "Case", "Account.Facility__r.Name", null, sfID); 
   /* attach the fax to its corresponding Salesforce Object */
   label = "Received from " + provider + " " + " at " + facility; 
   attach(doc, label, sfID);
   //ERS170201 TODO notice if sfID not valid and treat like unbarcoded
   /* save the workflow fields also */
   var sfType = getSFType(doc, sfID);
   var arrOfPairs = [];
   arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
   arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
   arrOfPairs.push("ZPAPER__newFax__c", "true");
   arrOfPairs.push("ZPAPER__faxType__c", doc.X("X_docType"));
   updateSFRecord(doc, sfType, sfID, arrOfPairs);

   //alert("@@@@@@ Moving barcoded document into folder: 20500Triage-S3");
   //moveDocument(doc, "20500Triage-S1A", "20500Triage-S3");
}


arrOfPairs = [];
if (1===1) { 
  var ba = "Received";
  var now0 = getCurDateAndTime(doc, false, true);
  arrOfPairs.push("X_reviewedStatus", ba);
  arrOfPairs.push("X_reviews", X(doc, "X_reviews") + ba + " by agent at " + now0 + "<br/>"); 
}
arrOfPairs.push("db-label", label);
updateDB(doc, arrOfPairs);
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
