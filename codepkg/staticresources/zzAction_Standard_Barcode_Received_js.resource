<!--
// Name: Standard Barcode Received
// Committer: eric.stephens@zpaper.com
// Update: ERS220719 #92716 Copper!; ERS220719 #92716 connect to RD and barcode
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2022-07-19 22:02:20","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"[001|003|00Q|500|006].*","operation":"regex"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL0VSUzIwMDgxNSBwdXQgaXQgaW50byB6QkFTRSAjNzU2ODUKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBzZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwppZiAoIXNmSUQgfHwgMCA9PT0gc2ZJRC5sZW5ndGgpIHsKICAgc2ZJRCA9IGdldEFsdGVybmF0ZUJhcmNvZGVPbmUoZG9jKSArICIiOwp9CmFsZXJ0KCIjIyMgc2ZJRCBmcm9tIGJhcmNvZGU6ICIgKyBzZklEKTsKdmFyIGxhYmVsID0gIk5ldyBGYXggUmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKdmFyIHByb3ZpZGVyID0gIiI7CnZhciBmYWNpbGl0eSA9ICIiOwoKdmFyIHNmSWQ9c2ZJRDsKaWYgKHpEYXRhLmVkaXRpb24gPT09ICJDb3BwZXIiKSB7IC8vRVJTMjEwNDI0IDA2OSBmaWxlIHdhcyBjcmVhdGVkIGJ5IFhfZmlsZXNTdG9yZWQvWF91c2VQVywgc2ZJZCBub3cgaGFzIDBpbyBqdXN0IGNvbm5lY3QgdGhlbSEKICAgIHpEYXRhLmNvbm5lY3RGaWxlKGRvYyxzZklkKTsKfSBlbHNlIHsgLy9FUlMyMjA3MTkgIzkyNzE2IENvcHBlciEKICAgIGlmIChzZklEICYmIHNmSUQubGVuZ3RoID4gMCkgewogICAgICAgLy9wcm92aWRlciA9IFgoZG9jLCAiWF9BY2NvdW50X05hbWUiKTsKICAgICAgIC8vZmFjaWxpdHkgPSBYKGRvYywgIlhfQWNjb3VudF9GYWNpbGl0eSIpOwogICAgICAgLy9FUlMyMDA4MjIgIzc1Njg1IFRPRE8gbW92ZSB0byBjbGllbnRMaWJyYXJ5IGNhbGxzCiAgICAgICBpZiAoc2ZJRC5pbmRleE9mKCIwMDEiKT09PTApIHsgLy9FUlMyMDA4MjIgIzc1Njg1CiAgICAgICAgICAgcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkFjY291bnQiLCAiTmFtZSIsIG51bGwsIHNmSUQpOwogICAgICAgfQogICAgICAgaWYgKHNmSUQuaW5kZXhPZigiMDAzIik9PT0wKSB7IC8vRVJTMjAwODIyICM3NTY4NQogICAgICAgICAgIHByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOwogICAgICAgfQogICAgICAgaWYgKHNmSUQuaW5kZXhPZigiNTAwIik9PT0wKSB7IC8vRVJTMjAwODIyICM3NTY4NSAKICAgICAgICAgICBwcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgCiAgICAgICAgICAgaWYgKHpEYXRhLkhDICYmIHpEYXRhLkhDPT09dHJ1ZSkgeyAvL0VSUzIwMDgyMiAjNzU2ODUKICAgICAgICAgICAgICAgIGZhY2lsaXR5ID0gIiBhdCAiKyBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5GYWNpbGl0eV9fci5OYW1lIiwgbnVsbCwgc2ZJRCk7CiAgICAgICAgICAgfQogICAgICAgfQogICAgICAgLy8gYXR0YWNoIHRoZSBmYXggdG8gaXRzIGNvcnJlc3BvbmRpbmcgU2FsZXNmb3JjZSBPYmplY3QgCiAgICAgICBsYWJlbCA9ICJSZWNlaXZlZCBmcm9tICIgKyBwcm92aWRlciArIGZhY2lsaXR5OyAKICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBzZklEKTsKICAgICAgIC8vRVJTMTcwMjAxIFRPRE8gbm90aWNlIGlmIHNmSUQgbm90IHZhbGlkIGFuZCB0cmVhdCBsaWtlIHVuYmFyY29kZWQKICAgICAgIC8vIHNhdmUgdGhlIHdvcmtmbG93IGZpZWxkcyBhbHNvIAogICAgICAgdmFyIHNmVHlwZSA9IGdldFNGVHlwZShkb2MsIHNmSUQpOwogICAgICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwogICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsKICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgZG9jLlgoIlhfZG9jVHlwZSIpKTsKICAgICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgc2ZUeXBlLCBzZklELCBhcnJPZlBhaXJzKTsKICAgIAogICAgICAgLy9hbGVydCgiQEBAQEBAIE1vdmluZyBiYXJjb2RlZCBkb2N1bWVudCBpbnRvIGZvbGRlcjogMjA1MDBUcmlhZ2UtUzMiKTsKICAgICAgIC8vbW92ZURvY3VtZW50KGRvYywgIjIwNTAwVHJpYWdlLVMxQSIsICIyMDUwMFRyaWFnZS1TMyIpOwogICAgfQp9CgoKYXJyT2ZQYWlycyA9IFtdOwppZiAoMT09PTEpIHsgCiAgdmFyIGJhID0gIlJlY2VpdmVkIjsKICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwogIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsIGJhKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyBiYSArICIgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iKTsgCn0KaWYgKHpEYXRhLmVkaXRpb24gPT09ICJDb3BwZXIiKSB7IC8vRVJTMjIwNzE5ICM5MjcxNiBjb25uZWN0IHRvIFJEIGFuZCBiYXJjb2RlCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsIGRvYy5rYkRhdGEuc2ZTZXJ2ZXIrIi8iK3NmSWQpOyAvL0VSUzIxMTEyMiBzdGlsbCBuZWVkZWQgZm9yIExGIG9uIGEgQ2FzZSBpbiB0aGUgY29uc29sZQp9CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7"},"ordinal":37}

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

var sfId=sfID;
if (zData.edition === "Copper") { //ERS210424 069 file was created by X_filesStored/X_usePW, sfId now has 0io just connect them!
    zData.connectFile(doc,sfId);
} else { //ERS220719 #92716 Copper!
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
       // attach the fax to its corresponding Salesforce Object 
       label = "Received from " + provider + facility; 
       attach(doc, label, sfID);
       //ERS170201 TODO notice if sfID not valid and treat like unbarcoded
       // save the workflow fields also 
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
}


arrOfPairs = [];
if (1===1) { 
  var ba = "Received";
  var now0 = getCurDateAndTime(doc, false, true);
  arrOfPairs.push("X_reviewedStatus", ba);
  arrOfPairs.push("X_reviews", X(doc, "X_reviews") + ba + " by agent at " + now0 + "<br/>"); 
}
if (zData.edition === "Copper") { //ERS220719 #92716 connect to RD and barcode
    arrOfPairs.push("X_attachedTo", doc.kbData.sfServer+"/"+sfId); //ERS211122 still needed for LF on a Case in the console
}
arrOfPairs.push("db-label", label);
updateDB(doc, arrOfPairs);
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
