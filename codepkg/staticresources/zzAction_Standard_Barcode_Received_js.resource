<!--
// Name: Standard Barcode Received
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV230118 - moving code to client library
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2023-01-18 23:52:36","active":false,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"[001|003|00Q|500|006|00B].*","operation":"regex"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZy8vUFYyMzAxMTIKLy9FUlMyMDA4MTUgcHV0IGl0IGludG8gekJBU0UgIzc1Njg1CnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgc2ZJRCA9IGdldEJhcmNvZGVPbmUoZG9jKTsKaWYgKCFzZklEIHx8IDAgPT09IHNmSUQubGVuZ3RoKSB7CiAgIHNmSUQgPSBnZXRBbHRlcm5hdGVCYXJjb2RlT25lKGRvYykgKyAiIjsKfQphbGVydCgiIyMjIHNmSUQgZnJvbSBiYXJjb2RlOiAiICsgc2ZJRCk7CnZhciBsYWJlbCA9ICJCYXJjb2RlZCBEb2N1bWVudCBSZWNlaXZlZCAiIDsKdmFyIHByb3ZpZGVyID0gIiI7CnZhciBmYWNpbGl0eSA9ICIiOwoKdmFyIHNmSWQ9c2ZJRDsKdmFyIG51bU9mUGFnZXMgPSBYKGRvYywgIlhfcGFnZXMiKTsKLy9zZXR0bmluZyB0aGUgZG9jdW1lbnQgbGFiZWwKdmFyIGRvY1RpdGxlID0gIkJhcmNvZGVkIGRvY3VtZW50IHJlY2VpdmVkIHRvICIrekRhdGEucHJvZ3JhbU5hbWUgKyAiIC0gIiArIG51bU9mUGFnZXMgKyAiIFBnIjsgLy9VcGRhdGVkIGZvciBwYWdlcyBQVjIwMjMwMTE3CgppZiAoekRhdGEuZWRpdGlvbiA9PT0gIkNvcHBlciIpIHsgLy9FUlMyMTA0MjQgMDY5IGZpbGUgd2FzIGNyZWF0ZWQgYnkgWF9maWxlc1N0b3JlZC9YX3VzZVBXLCBzZklkIG5vdyBoYXMgMGlvIGp1c3QgY29ubmVjdCB0aGVtIQogICAgYWxlcnQoInpEYXRhLmVkaXRpb24gaXMgY29wcGVyIik7CiAgICB6RGF0YS5jbGllbnRDdXN0b21CYXJjb2RlKGRvYywgc2ZJRCk7Ly9QVjIzMDExOCAtIG1vdmluZyBjb2RlIHRvIGNsaWVudCBsaWJyYXJ5Cn0gZWxzZSB7IC8vRVJTMjIwNzE5ICM5MjcxNiBDb3BwZXIhCiAgICBpZiAoc2ZJRCAmJiBzZklELmxlbmd0aCA+IDApIHsKICAgICAgIC8vcHJvdmlkZXIgPSBYKGRvYywgIlhfQWNjb3VudF9OYW1lIik7CiAgICAgICAvL2ZhY2lsaXR5ID0gWChkb2MsICJYX0FjY291bnRfRmFjaWxpdHkiKTsKICAgICAgIC8vRVJTMjAwODIyICM3NTY4NSBUT0RPIG1vdmUgdG8gY2xpZW50TGlicmFyeSBjYWxscwogICAgICAgaWYgKHNmSUQuaW5kZXhPZigiMDAxIik9PT0wKSB7IC8vRVJTMjAwODIyICM3NTY4NQogICAgICAgICAgIHByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJBY2NvdW50IiwgIk5hbWUiLCBudWxsLCBzZklEKTsKICAgICAgIH0KICAgICAgIGlmIChzZklELmluZGV4T2YoIjAwMyIpPT09MCkgeyAvL0VSUzIwMDgyMiAjNzU2ODUKICAgICAgICAgICBwcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ29udGFjdCIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsKICAgICAgIH0KICAgICAgIGlmIChzZklELmluZGV4T2YoIjUwMCIpPT09MCkgeyAvL0VSUzIwMDgyMiAjNzU2ODUgCiAgICAgICAgICAgcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7IAogICAgICAgICAgIGlmICh6RGF0YS5IQyAmJiB6RGF0YS5IQz09PXRydWUpIHsgLy9FUlMyMDA4MjIgIzc1Njg1CiAgICAgICAgICAgICAgICBmYWNpbGl0eSA9ICIgYXQgIisgZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuRmFjaWxpdHlfX3IuTmFtZSIsIG51bGwsIHNmSUQpOwogICAgICAgICAgIH0KICAgICAgIH0KICAgICAgICAvLyBhdHRhY2ggdGhlIGZheCB0byBpdHMgY29ycmVzcG9uZGluZyBTYWxlc2ZvcmNlIE9iamVjdCAKICAgICAgICAvLyAgIGxhYmVsID0gIlJlY2VpdmVkIGZyb20gIiArIHByb3ZpZGVyICsgZmFjaWxpdHk7IAogICAgICAgIC8vICAgYXR0YWNoKGRvYywgbGFiZWwsIHNmSUQpOwogICAgICAgIC8vICAgLy9FUlMxNzAyMDEgVE9ETyBub3RpY2UgaWYgc2ZJRCBub3QgdmFsaWQgYW5kIHRyZWF0IGxpa2UgdW5iYXJjb2RlZAogICAgICAgIC8vICAgLy8gc2F2ZSB0aGUgd29ya2Zsb3cgZmllbGRzIGFsc28gCiAgICAgICAgLy8gICB2YXIgc2ZUeXBlID0gZ2V0U0ZUeXBlKGRvYywgc2ZJRCk7CiAgICAgICAgLy8gICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIC8vICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CiAgICAgICAgLy8gICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgICAgICAvLyAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgICAgIC8vICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCBkb2MuWCgiWF9kb2NUeXBlIikpOwogICAgICAgIC8vICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCBzZlR5cGUsIHNmSUQsIGFyck9mUGFpcnMpOwogICAgCiAgICAgICAgLy9hbGVydCgiQEBAQEBAIE1vdmluZyBiYXJjb2RlZCBkb2N1bWVudCBpbnRvIGZvbGRlcjogMjA1MDBUcmlhZ2UtUzMiKTsKICAgICAgICAvL21vdmVEb2N1bWVudChkb2MsICIyMDUwMFRyaWFnZS1TMUEiLCAiMjA1MDBUcmlhZ2UtUzMiKTsKICAgICAgICAKICAgIH0KfQoKCmFyck9mUGFpcnMgPSBbXTsKaWYgKDE9PT0xKSB7IAogIHZhciBiYSA9ICJSZWNlaXZlZCI7CiAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCBiYSk7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCBYKGRvYywgIlhfcmV2aWV3cyIpICsgYmEgKyAiIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iik7IAp9Ci8vIFBWMjMwMTcgLSB3ZSBhcmUgYXR0YWNoaW5nIHRoZSBkb2N1bWVudCB0byBzZiByZWNvcmRzIGFuZCB0aGUgcmVjZWl2ZWQgZG9jdW1lbnQgYWJvdmUgaW5zaWRlIHRoZSBpZiBibG9jayBmb3IgY29wcGVyIGVkaXRpb24KLy8gaWYgKHpEYXRhLmVkaXRpb24gPT09ICJDb3BwZXIiKSB7IC8vRVJTMjIwNzE5ICM5MjcxNiBjb25uZWN0IHRvIFJEIGFuZCBiYXJjb2RlCi8vICAgICBhcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsIGRvYy5rYkRhdGEuc2ZTZXJ2ZXIrIi8iK3NmSWQpOyAvL0VSUzIxMTEyMiBzdGlsbCBuZWVkZWQgZm9yIExGIG9uIGEgQ2FzZSBpbiB0aGUgY29uc29sZQovLyB9Ci8vIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7Ci8vIFBWMjMwMTcgLSBuZWQgCmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2NUaXRsZSk7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7"},"ordinal":6}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated rule for Sales Demo Org//PV230112
//ERS200815 put it into zBASE #75685
var formatNow = getCurDateAndTime(doc);
var sfID = getBarcodeOne(doc);
if (!sfID || 0 === sfID.length) {
   sfID = getAlternateBarcodeOne(doc) + "";
}
alert("### sfID from barcode: " + sfID);
var label = "Barcoded Document Received " ;
var provider = "";
var facility = "";

var sfId=sfID;
var numOfPages = X(doc, "X_pages");
//settning the document label
var docTitle = "Barcoded document received to "+zData.programName + " - " + numOfPages + " Pg"; //Updated for pages PV20230117

if (zData.edition === "Copper") { //ERS210424 069 file was created by X_filesStored/X_usePW, sfId now has 0io just connect them!
    alert("zData.edition is copper");
    zData.clientCustomBarcode(doc, sfID);//PV230118 - moving code to client library
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
        //   label = "Received from " + provider + facility; 
        //   attach(doc, label, sfID);
        //   //ERS170201 TODO notice if sfID not valid and treat like unbarcoded
        //   // save the workflow fields also 
        //   var sfType = getSFType(doc, sfID);
        //   var arrOfPairs = [];
        //   arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
        //   arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
        //   arrOfPairs.push("ZPAPER__newFax__c", "true");
        //   arrOfPairs.push("ZPAPER__faxType__c", doc.X("X_docType"));
        //   updateSFRecord(doc, sfType, sfID, arrOfPairs);
    
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
// PV23017 - we are attaching the document to sf records and the received document above inside the if block for copper edition
// if (zData.edition === "Copper") { //ERS220719 #92716 connect to RD and barcode
//     arrOfPairs.push("X_attachedTo", doc.kbData.sfServer+"/"+sfId); //ERS211122 still needed for LF on a Case in the console
// }
// arrOfPairs.push("db-label", label);
// PV23017 - ned 
arrOfPairs.push("db-label", docTitle);
updateDB(doc, arrOfPairs);
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
