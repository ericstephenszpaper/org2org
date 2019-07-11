<!--
// Name: Create Case from Non-Barcoded Fax
// Committer: Eric Stephens:eric.stephens@zpaper.com
// Update: TODO be able to use zData.newCaseFaxLine in conditions
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2017-06-28 13:31:33","active":false,"button":"","name":"Create Case from Non-Barcoded Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.deliveredTo","value":"zData.newCaseFaxLine","operation":"equals"}]},"consequence":{"doit":"LyogY3JlYXRlIGEgbmV3IFBhdGllbnQgQXNzaXN0YW5jZSBQcm9ncmFtIGNhc2UgKi8KdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBhcnJPZlBhaXJzID0gbmV3IEFycmF5KCk7CnZhciByZWNUeXBlSUQgPSAiMDEyMzYwMDAwMDBzOGlOIjsKYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCByZWNUeXBlSUQpOwphcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJOZXciKTsKYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyBFbnJvbGxtZW50IEZvcm0iKTsKYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCAiRmF4Iik7CiAgLyogc2V0IHRoZSB6UGFwZXIgd29ya2Zsb3cgZmllbGRzICovCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CmNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgIk5ldyBQQVAgUmVxdWVzdCBSZWNlaXZlZCBPbiAiICsgZm9ybWF0Tm93LCBhcnJPZlBhaXJzKTs="},"ordinal":16}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* create a new Patient Assistance Program case */
var formatNow = getCurDateAndTime(doc);
var arrOfPairs = new Array();
var recTypeID = "01236000000s8iN";
arrOfPairs.push("RecordTypeId", recTypeID);
arrOfPairs.push("Status", "New");
arrOfPairs.push("Type", "New Enrollment Form");
arrOfPairs.push("Origin", "Fax");
  /* set the zPaper workflow fields */
arrOfPairs.push("ZPAPER__newFax__c", "true");
arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
createAndAttach(doc, "Case", "New PAP Request Received On " + formatNow, arrOfPairs);
//--- RULE CONSEQUENCE CODE - END ---

</script>
