<!--
// Name: Standard Barcode Received
// Committer: judson.bruno@zpaper.com
// Update: JPB180730 added Provider #50182; JPB180730 added Facility #50182; JPB180730 changed label for provider and facility #50182
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2018-07-30 17:06:51","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"[001|003|00Q|500|006].*","operation":"regex"}]},"consequence":{"doit":"dmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBzZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwppZiAoIXNmSUQgfHwgMCA9PT0gc2ZJRC5sZW5ndGgpIHsKICAgc2ZJRCA9IGdldEFsdGVybmF0ZUJhcmNvZGVPbmUoZG9jKSArICIiOwp9CmFsZXJ0KCIjIyMgc2ZJRCBmcm9tIGJhcmNvZGU6ICIgKyBzZklEKTsKdmFyIGxhYmVsID0gIk5ldyBGYXggUmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKdmFyIHByb3ZpZGVyID0gIiI7CnZhciBmYWNpbGl0eSA9ICIiOwoKaWYgKHNmSUQgJiYgc2ZJRC5sZW5ndGggPiAwKSB7CiAgIC8vcHJvdmlkZXIgPSBYKGRvYywgIlhfQWNjb3VudF9OYW1lIik7CiAgIC8vZmFjaWxpdHkgPSBYKGRvYywgIlhfQWNjb3VudF9GYWNpbGl0eSIpOwogICBwcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgLy9KUEIxODA3MzAgYWRkZWQgUHJvdmlkZXIgIzUwMTgyCiAgIGZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuRmFjaWxpdHlfX3IuTmFtZSIsIG51bGwsIHNmSUQpOyAvL0pQQjE4MDczMCBhZGRlZCBGYWNpbGl0eSAjNTAxODIKICAgLyogYXR0YWNoIHRoZSBmYXggdG8gaXRzIGNvcnJlc3BvbmRpbmcgU2FsZXNmb3JjZSBPYmplY3QgKi8KICAgbGFiZWwgPSAiUmVjZWl2ZWQgZnJvbSAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGF0ICIgKyBmYWNpbGl0eTsgLy9KUEIxODA3MzAgY2hhbmdlZCBsYWJlbCBmb3IgcHJvdmlkZXIgYW5kIGZhY2lsaXR5ICM1MDE4MgogICBhdHRhY2goZG9jLCBsYWJlbCwgc2ZJRCk7CiAgIC8vRVJTMTcwMjAxIFRPRE8gbm90aWNlIGlmIHNmSUQgbm90IHZhbGlkIGFuZCB0cmVhdCBsaWtlIHVuYmFyY29kZWQKICAgLyogc2F2ZSB0aGUgd29ya2Zsb3cgZmllbGRzIGFsc28gKi8KICAgdmFyIHNmVHlwZSA9IGdldFNGVHlwZShkb2MsIHNmSUQpOwogICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwogICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIGRvYy5YKCJYX2RvY1R5cGUiKSk7CiAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgc2ZUeXBlLCBzZklELCBhcnJPZlBhaXJzKTsKCiAgIC8vYWxlcnQoIkBAQEBAQCBNb3ZpbmcgYmFyY29kZWQgZG9jdW1lbnQgaW50byBmb2xkZXI6IDIwNTAwVHJpYWdlLVMzIik7CiAgIC8vbW92ZURvY3VtZW50KGRvYywgIjIwNTAwVHJpYWdlLVMxQSIsICIyMDUwMFRyaWFnZS1TMyIpOwp9CgphcnJPZlBhaXJzID0gW107CmlmICgxPT09MSkgeyAvL0VSUzE4MDEwNCBzZXQgYXMgUmVjZWl2ZWQgIzQxMTU1CiAgdmFyIGJhID0gIlJlY2VpdmVkIjsKICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwogIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsIGJhKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyBiYSArICIgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCn0KYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTs="},"ordinal":17}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
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
   provider = getSFField(doc, "Case", "Account.Name", null, sfID); //JPB180730 added Provider #50182
   facility = getSFField(doc, "Case", "Account.Facility__r.Name", null, sfID); //JPB180730 added Facility #50182
   /* attach the fax to its corresponding Salesforce Object */
   label = "Received from " + provider + " " + " at " + facility; //JPB180730 changed label for provider and facility #50182
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
if (1===1) { //ERS180104 set as Received #41155
  var ba = "Received";
  var now0 = getCurDateAndTime(doc, false, true);
  arrOfPairs.push("X_reviewedStatus", ba);
  arrOfPairs.push("X_reviews", X(doc, "X_reviews") + ba + " by agent at " + now0 + "<br/>"); //ERS170909 #40592
}
arrOfPairs.push("db-label", label);
updateDB(doc, arrOfPairs);
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
