<!--
// Name: Custom Barcode Received
// Committer: andrew@zpaper.com
// Update: update static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-09 21:00:04","evalContinue":"true","active":true,"button":"","name":"Custom Barcode Received","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_field0\")","value":"^(SX-|a0|a1|a2|a3|a4|a5|a6)","operation":"regex"}]},"consequence":{"doit":"dmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBzZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwppZiAoIXNmSUQgfHwgMCA9PT0gc2ZJRC5sZW5ndGgpIHsKc2ZJRCA9IGdldEFsdGVybmF0ZUJhcmNvZGVPbmUoZG9jKSArICIiOwp9CmFsZXJ0KCIjIyMgc2ZJRCBmcm9tIGJhcmNvZGU6ICIgKyBzZklEKTsKaWYgKHNmSUQgJiYgc2ZJRC5sZW5ndGggPiAwKSB7Ci8qIGF0dGFjaCB0aGUgZmF4IHRvIGl0cyBjb3JyZXNwb25kaW5nIFNhbGVzZm9yY2UgT2JqZWN0ICovCmF0dGFjaChkb2MsICJOZXcgRmF4IFJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3csIHNmSUQpOwovKiBzYXZlIHRoZSB3b3JrZmxvdyBmaWVsZHMgYWxzbyAqLwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goImxhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CmFyck9mUGFpcnMucHVzaCgicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKYXJyT2ZQYWlycy5wdXNoKCJuZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goImZheFR5cGVfX2MiLCBkb2MuWCgiWF9kb2NUeXBlIikpOwp1cGRhdGVTRlJlY29yZChkb2MsIGdldFNGVHlwZShkb2MsIHNmSUQpLCBzZklELCBhcnJPZlBhaXJzKTsKfQ=="},"ordinal":5}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var formatNow = getCurDateAndTime(doc);
var sfID = getBarcodeOne(doc);
if (!sfID || 0 === sfID.length) {
sfID = getAlternateBarcodeOne(doc) + "";
}
alert("### sfID from barcode: " + sfID);
if (sfID && sfID.length > 0) {
/* attach the fax to its corresponding Salesforce Object */
attach(doc, "New Fax Received on " + formatNow, sfID);
/* save the workflow fields also */
var arrOfPairs = [];
arrOfPairs.push("latestFax__c", formatNow);
arrOfPairs.push("receivedId__c", doc.dbID);
arrOfPairs.push("newFax__c", "true");
arrOfPairs.push("faxType__c", doc.X("X_docType"));
updateSFRecord(doc, getSFType(doc, sfID), sfID, arrOfPairs);
}
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
