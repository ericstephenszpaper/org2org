<!--
// Name: Standard Barcode Received
// Committer: eric.stephens@zpaper.com
// Update: ERS210429 #81706
alert("ERS210502 clientBarcode moreWork="+moreWork); //ERS210502
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-05-02 14:17:52","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"[001|003|00Q|500|006].*","operation":"regex"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL0VSUzIwMDgxNSBwdXQgaXQgaW50byB6QkFTRSAjNzU2ODUKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBzZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwppZiAoIXNmSUQgfHwgMCA9PT0gc2ZJRC5sZW5ndGgpIHsKICAgc2ZJRCA9IGdldEFsdGVybmF0ZUJhcmNvZGVPbmUoZG9jKSArICIiOwp9CmFsZXJ0KCIjIyMgc2ZJRCBmcm9tIGJhcmNvZGU6ICIgKyBzZklEKTsKdmFyIGxhYmVsID0gIk5ldyBGYXggUmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKdmFyIHByb3ZpZGVyID0gIiI7CnZhciBmYWNpbGl0eSA9ICIiOwoKaWYgKHNmSUQgJiYgc2ZJRC5sZW5ndGggPiAwKSB7CiAgIC8vcHJvdmlkZXIgPSBYKGRvYywgIlhfQWNjb3VudF9OYW1lIik7CiAgIC8vZmFjaWxpdHkgPSBYKGRvYywgIlhfQWNjb3VudF9GYWNpbGl0eSIpOwogICAvL0VSUzIwMDgyMiAjNzU2ODUgVE9ETyBtb3ZlIHRvIGNsaWVudExpYnJhcnkgY2FsbHMKICAgaWYgKHNmSUQuaW5kZXhPZigiMDAxIik9PT0wKSB7IC8vRVJTMjAwODIyICM3NTY4NQogICAgICAgcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkFjY291bnQiLCAiTmFtZSIsIG51bGwsIHNmSUQpOwogICB9CiAgIGlmIChzZklELmluZGV4T2YoIjAwMyIpPT09MCkgeyAvL0VSUzIwMDgyMiAjNzU2ODUKICAgICAgIHByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOwogICB9CiAgIGlmIChzZklELmluZGV4T2YoIjUwMCIpPT09MCkgeyAvL0VSUzIwMDgyMiAjNzU2ODUgCiAgICAgICBwcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgCiAgICAgICBpZiAoekRhdGEuSEMgJiYgekRhdGEuSEM9PT10cnVlKSB7IC8vRVJTMjAwODIyICM3NTY4NQogICAgICAgICAgICBmYWNpbGl0eSA9ICIgYXQgIisgZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuRmFjaWxpdHlfX3IuTmFtZSIsIG51bGwsIHNmSUQpOwogICAgICAgfQogICB9CiAgIC8qIGF0dGFjaCB0aGUgZmF4IHRvIGl0cyBjb3JyZXNwb25kaW5nIFNhbGVzZm9yY2UgT2JqZWN0ICovCiAgIGxhYmVsID0gIlJlY2VpdmVkIGZyb20gIiArIHByb3ZpZGVyICsgZmFjaWxpdHk7IAogICBhdHRhY2goZG9jLCBsYWJlbCwgc2ZJRCk7CiAgIC8vRVJTMTcwMjAxIFRPRE8gbm90aWNlIGlmIHNmSUQgbm90IHZhbGlkIGFuZCB0cmVhdCBsaWtlIHVuYmFyY29kZWQKICAgLyogc2F2ZSB0aGUgd29ya2Zsb3cgZmllbGRzIGFsc28gKi8KICAgdmFyIHNmVHlwZSA9IGdldFNGVHlwZShkb2MsIHNmSUQpOwogICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwogICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIGRvYy5YKCJYX2RvY1R5cGUiKSk7CiAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgc2ZUeXBlLCBzZklELCBhcnJPZlBhaXJzKTsKCiAgIC8vYWxlcnQoIkBAQEBAQCBNb3ZpbmcgYmFyY29kZWQgZG9jdW1lbnQgaW50byBmb2xkZXI6IDIwNTAwVHJpYWdlLVMzIik7CiAgIC8vbW92ZURvY3VtZW50KGRvYywgIjIwNTAwVHJpYWdlLVMxQSIsICIyMDUwMFRyaWFnZS1TMyIpOwp9CgphcnJPZlBhaXJzID0gW107CmlmICgxPT09MSkgeyAKICB2YXIgYmEgPSAiUmVjZWl2ZWQiOwogIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSwgdHJ1ZSk7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgYmEpOwogIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArIGJhICsgIiBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIpOyAKfQphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKekRhdGEubGFiZWw9bGFiZWw7CnZhciBtb3JlV29yaz16RGF0YS5jbGllbnRCYXJjb2RlZChkb2Msc2ZJRCk7IC8vRVJTMjEwNDI5ICM4MTcwNgphbGVydCgiRVJTMjEwNTAyIGNsaWVudEJhcmNvZGUgbW9yZVdvcms9Iittb3JlV29yayk7IC8vRVJTMjEwNTAy"},"ordinal":15}

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

zData.label=label;
var moreWork=zData.clientBarcoded(doc,sfID); //ERS210429 #81706
alert("ERS210502 clientBarcode moreWork="+moreWork); //ERS210502
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
