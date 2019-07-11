<!--
// Name: Create Case from Fax
// Committer: Eric Stephens:eric.stephens@zpaper.com
// Update: ERS170731 write static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2017-07-31 21:15:45","active":false,"button":"","name":"Create Case from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.deliveredTo","value":"zData.newCaseFaxLine","operation":"equals"}]},"consequence":{"doit":"LyogY3JlYXRlIGEgbmV3IFBhdGllbnQgQXNzaXN0YW5jZSBQcm9ncmFtIGNhc2UgKi8KdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBhcnJPZlBhaXJzID0gbmV3IEFycmF5KCk7Ci8vdmFyIHJlY1R5cGVJRCA9ICIwMTIzNjAwMDAwMHM4aU4iOyAvL0VSUzE3MDczMSBnZXQgZnJvbSBkZXBsb3ltZW50SW5mbwovL2Fyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgcmVjVHlwZUlEKTsKdmFyIGRvY1R5cGU9WChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOwppZiAoZG9jVHlwZT09PSIiKSBkb2NUeXBlPSJGQVgiOwphcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJOZXciKTsKYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK2RvY1R5cGUpOwphcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsICJGYXgiKTsKICAvKiBzZXQgdGhlIHpQYXBlciB3b3JrZmxvdyBmaWVsZHMgKi8KYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCAiTmV3IFBBUCBSZXF1ZXN0IFJlY2VpdmVkIE9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOw=="},"ordinal":16}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* create a new Patient Assistance Program case */
var formatNow = getCurDateAndTime(doc);
var arrOfPairs = new Array();
//var recTypeID = "01236000000s8iN"; //ERS170731 get from deploymentInfo
//arrOfPairs.push("RecordTypeId", recTypeID);
var docType=X(doc, "X_ZPAPER__faxType__c");
if (docType==="") docType="FAX";
arrOfPairs.push("Status", "New");
arrOfPairs.push("Type", "New "+docType);
arrOfPairs.push("Origin", "Fax");
  /* set the zPaper workflow fields */
arrOfPairs.push("ZPAPER__newFax__c", "true");
arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
createAndAttach(doc, "Case", "New PAP Request Received On " + formatNow, arrOfPairs);
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
