<!--
// Name: Standard Barcode Received
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: updated PV
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-30 19:32:09","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"[001|003|00Q|500|006|801].*","operation":"regex"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL0VSUzIwMDgxNSBwdXQgaXQgaW50byB6QkFTRSAjNzU2ODUKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBzZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwppZiAoIXNmSUQgfHwgMCA9PT0gc2ZJRC5sZW5ndGgpIHsKICAgc2ZJRCA9IGdldEFsdGVybmF0ZUJhcmNvZGVPbmUoZG9jKSArICIiOwp9CmFsZXJ0KCIjIyMgc2ZJRCBmcm9tIGJhcmNvZGU6ICIgKyBzZklEKTsKdmFyIGxhYmVsID0gIk5ldyBGYXggUmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKdmFyIHByb3ZpZGVyID0gIiI7CnZhciBmYWNpbGl0eSA9ICIiOwoKaWYgKHNmSUQgJiYgc2ZJRC5sZW5ndGggPiAwKSB7CiAgIC8vcHJvdmlkZXIgPSBYKGRvYywgIlhfQWNjb3VudF9OYW1lIik7CiAgIC8vZmFjaWxpdHkgPSBYKGRvYywgIlhfQWNjb3VudF9GYWNpbGl0eSIpOwogICAvL0VSUzIwMDgyMiAjNzU2ODUgVE9ETyBtb3ZlIHRvIGNsaWVudExpYnJhcnkgY2FsbHMKICAgaWYgKHNmSUQuaW5kZXhPZigiMDAxIik9PT0wKSB7IC8vRVJTMjAwODIyICM3NTY4NQogICAgICAgcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkFjY291bnQiLCAiTmFtZSIsIG51bGwsIHNmSUQpOwogICB9CiAgIGlmIChzZklELmluZGV4T2YoIjAwMyIpPT09MCkgeyAvL0VSUzIwMDgyMiAjNzU2ODUKICAgICAgIHByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOwogICB9CiAgICBpZiAoc2ZJRC5pbmRleE9mKCI4MDEiKT09PTApIHsgLy9QVjIxMDQyMwogICAgICAgcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIk9yZGVyIiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOwogICB9CiAgIGlmIChzZklELmluZGV4T2YoIjUwMCIpPT09MCkgeyAvL0VSUzIwMDgyMiAjNzU2ODUgCiAgICAgICBwcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgCiAgICAgICBpZiAoekRhdGEuSEMgJiYgekRhdGEuSEM9PT10cnVlKSB7IC8vRVJTMjAwODIyICM3NTY4NQogICAgICAgICAgICBmYWNpbGl0eSA9ICIgYXQgIisgZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuRmFjaWxpdHlfX3IuTmFtZSIsIG51bGwsIHNmSUQpOwogICAgICAgfQogICB9CiAgIC8qIGF0dGFjaCB0aGUgZmF4IHRvIGl0cyBjb3JyZXNwb25kaW5nIFNhbGVzZm9yY2UgT2JqZWN0ICovCiAgIGxhYmVsID0gIlJlY2VpdmVkIGZyb20gIiArIHByb3ZpZGVyICsgZmFjaWxpdHk7IAogICBhdHRhY2goZG9jLCBsYWJlbCwgc2ZJRCk7CiAgIC8vRVJTMTcwMjAxIFRPRE8gbm90aWNlIGlmIHNmSUQgbm90IHZhbGlkIGFuZCB0cmVhdCBsaWtlIHVuYmFyY29kZWQKICAgLyogc2F2ZSB0aGUgd29ya2Zsb3cgZmllbGRzIGFsc28gKi8KICAgdmFyIHNmVHlwZSA9IGdldFNGVHlwZShkb2MsIHNmSUQpOwogICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAvL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwogICAvL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAvL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyBSZW1vdmVkIFBWCiAgIC8vYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCBkb2MuWCgiWF9kb2NUeXBlIikpOwogICBpZiAoc2ZJRC5pbmRleE9mKCI4MDEiKT09PTApey8vUFYyMTA0MjkKICAgICAgIGFyck9mUGFpcnMucHVzaCgibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKICAgICAgIGFyck9mUGFpcnMucHVzaCgicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgICAgIGFyck9mUGFpcnMucHVzaCgibmV3RmF4X19jIiwgInRydWUiKTsgCiAgICAgICBhbGVydCgiaW5zaWRlaWYiICsgYXJyT2ZQYWlycyk7CiAgIH1lbHNlIHsgCiAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7CiAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIGRvYy5YKCJYX2RvY1R5cGUiKSk7CiAgICAgICAgYWxlcnQoImluc2lkZWVsc2UiICsgYXJyT2ZQYWlycyk7CiAgIH0KICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCBzZlR5cGUsIHNmSUQsIGFyck9mUGFpcnMpOwogIAoKICAgLy9hbGVydCgiQEBAQEBAIE1vdmluZyBiYXJjb2RlZCBkb2N1bWVudCBpbnRvIGZvbGRlcjogMjA1MDBUcmlhZ2UtUzMiKTsKICAgLy9tb3ZlRG9jdW1lbnQoZG9jLCAiMjA1MDBUcmlhZ2UtUzFBIiwgIjIwNTAwVHJpYWdlLVMzIik7Cn0KCgphcnJPZlBhaXJzID0gW107CmlmICgxPT09MSkgeyAKICB2YXIgYmEgPSAiUmVjZWl2ZWQiOwogIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSwgdHJ1ZSk7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgYmEpOwogIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArIGJhICsgIiBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIpOyAKfQphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOw=="},"ordinal":8}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated rule for Sales Demo Org
//ERS200815 put it into zBASE #75685
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
   //ERS200822 #75685 TODO move to clientLibrary calls
   if (sfID.indexOf("001")===0) { //ERS200822 #75685
       provider = getSFField(doc, "Account", "Name", null, sfID);
   }
   if (sfID.indexOf("003")===0) { //ERS200822 #75685
       provider = getSFField(doc, "Contact", "Account.Name", null, sfID);
   }
    if (sfID.indexOf("801")===0) { //PV210423
       provider = getSFField(doc, "Order", "Account.Name", null, sfID);
   }
   if (sfID.indexOf("500")===0) { //ERS200822 #75685 
       provider = getSFField(doc, "Case", "Account.Name", null, sfID); 
       if (zData.HC && zData.HC===true) { //ERS200822 #75685
            facility = " at "+ getSFField(doc, "Case", "Account.Facility__r.Name", null, sfID);
       }
   }
   /* attach the fax to its corresponding Salesforce Object */
   label = "Received from " + provider + facility; 
   attach(doc, label, sfID);
   //ERS170201 TODO notice if sfID not valid and treat like unbarcoded
   /* save the workflow fields also */
   var sfType = getSFType(doc, sfID);
   var arrOfPairs = [];
   //arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
   //arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
   //arrOfPairs.push("ZPAPER__newFax__c", "true"); Removed PV
   //arrOfPairs.push("ZPAPER__faxType__c", doc.X("X_docType"));
   if (sfID.indexOf("801")===0){//PV210429
       arrOfPairs.push("latestFax__c", formatNow);
       arrOfPairs.push("receivedId__c", doc.dbID);
       arrOfPairs.push("newFax__c", "true"); 
       alert("insideif" + arrOfPairs);
   }else { 
       arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
       arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
       arrOfPairs.push("ZPAPER__newFax__c", "true");
       arrOfPairs.push("ZPAPER__faxType__c", doc.X("X_docType"));
        alert("insideelse" + arrOfPairs);
   }
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
