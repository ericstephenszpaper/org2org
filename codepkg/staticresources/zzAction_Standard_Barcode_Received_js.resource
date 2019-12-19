<!--
// Name: Standard Barcode Received
// Committer: cory.newey@zpaper.com
// Update: refactored to fix label
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-19 19:57:02","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"[001|003|00Q|500|006].*","operation":"regex"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIHNmSUQgPSBnZXRCYXJjb2RlT25lKGRvYyk7CmlmICghc2ZJRCB8fCAwID09PSBzZklELmxlbmd0aCkgewogICBzZklEID0gZ2V0QWx0ZXJuYXRlQmFyY29kZU9uZShkb2MpICsgIiI7Cn0KYWxlcnQoIiMjIyBzZklEIGZyb20gYmFyY29kZTogIiArIHNmSUQpOwp2YXIgbGFiZWwgPSAiTmV3IEZheCBSZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93Owp2YXIgcHJvdmlkZXIgPSAiIjsKCnZhciB6U3RhY2tQcmVmaXggPSBnZXRTRktleVByZWZpeChkb2MsICJaUEFQRVJfX3pTdGFja19fYyIpOwp2YXIgYWNjb3VudFByZWZpeCA9ICIwMDEiOwp2YXIgY2FzZVByZWZpeCA9ICI1MDAiOwoKaWYgKHNmSUQgJiYgc2ZJRC5sZW5ndGggPiAwKSB7CiAgICBpZiAoc2ZJRC5zdGFydHNXaXRoKGNhc2VQcmVmaXgpKSB7IAogICAgICAgIHByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOyAKICAgIH0KICAgIGVsc2UgaWYgKHNmSUQuc3RhcnRzV2l0aCh6U3RhY2tQcmVmaXgpKSB7IAogICAgICAgIHByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJBY2NvdW50IiwgIk5hbWUiLCBudWxsLCBzZklEKTsgCiAgICB9CiAgICBlbHNlIGlmIChzZklELnN0YXJ0c1dpdGgoYWNjb3VudFByZWZpeCkpIHsgCiAgICAgICAgdmFyIHBhdGllbnRJZCA9IGdldFNGRmllbGQoZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCAiWlBBUEVSX19QYXRpZW50X19jIiwgbnVsbCwgc2ZJRCk7CiAgICAgICAgaWYgKHBhdGllbnRJZCAmJiAhcGF0aWVudElkLnRvTG93ZXJDYXNlKCkuY29udGFpbnMoImVycm9yIikpIHsKICAgICAgICAgICAgcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkFjY291bnQiLCAiTmFtZSIsIG51bGwsIHBhdGllbnRJZCk7CiAgICAgICAgfQogICAgfQogICAgaWYgKCFwcm92aWRlcikgeyBwcm92aWRlciA9ICJVbmtub3duIjsgfQoKICAgIC8qIGF0dGFjaCB0aGUgZmF4IHRvIGl0cyBjb3JyZXNwb25kaW5nIFNhbGVzZm9yY2UgT2JqZWN0ICovCiAgICBsYWJlbCA9ICJSZWNlaXZlZCBmcm9tICIgKyBwcm92aWRlciArICIgIiArICIgLSAiICsgZm9ybWF0Tm93OyAKICAgIGF0dGFjaChkb2MsIGxhYmVsLCBzZklEKTsKICAgIC8vRVJTMTcwMjAxIFRPRE8gbm90aWNlIGlmIHNmSUQgbm90IHZhbGlkIGFuZCB0cmVhdCBsaWtlIHVuYmFyY29kZWQKICAgIC8qIHNhdmUgdGhlIHdvcmtmbG93IGZpZWxkcyBhbHNvICovCiAgICB2YXIgc2ZUeXBlID0gZ2V0U0ZUeXBlKGRvYywgc2ZJRCk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCBkb2MuWCgiWF9kb2NUeXBlIikpOwogICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCBzZlR5cGUsIHNmSUQsIGFyck9mUGFpcnMpOwoKICAgLy9hbGVydCgiQEBAQEBAIE1vdmluZyBiYXJjb2RlZCBkb2N1bWVudCBpbnRvIGZvbGRlcjogMjA1MDBUcmlhZ2UtUzMiKTsKICAgLy9tb3ZlRG9jdW1lbnQoZG9jLCAiMjA1MDBUcmlhZ2UtUzFBIiwgIjIwNTAwVHJpYWdlLVMzIik7Cn0KCgphcnJPZlBhaXJzID0gW107CmlmICgxPT09MSkgeyAKICB2YXIgYmEgPSAiUmVjZWl2ZWQiOwogIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSwgdHJ1ZSk7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgYmEpOwogIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArIGJhICsgIiBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIpOyAKfQphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOw=="},"ordinal":16}

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

var zStackPrefix = getSFKeyPrefix(doc, "ZPAPER__zStack__c");
var accountPrefix = "001";
var casePrefix = "500";

if (sfID && sfID.length > 0) {
    if (sfID.startsWith(casePrefix)) { 
        provider = getSFField(doc, "Case", "Account.Name", null, sfID); 
    }
    else if (sfID.startsWith(zStackPrefix)) { 
        provider = getSFField(doc, "Account", "Name", null, sfID); 
    }
    else if (sfID.startsWith(accountPrefix)) { 
        var patientId = getSFField(doc, "ZPAPER__zStack__c", "ZPAPER__Patient__c", null, sfID);
        if (patientId && !patientId.toLowerCase().contains("error")) {
            provider = getSFField(doc, "Account", "Name", null, patientId);
        }
    }
    if (!provider) { provider = "Unknown"; }

    /* attach the fax to its corresponding Salesforce Object */
    label = "Received from " + provider + " " + " - " + formatNow; 
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
