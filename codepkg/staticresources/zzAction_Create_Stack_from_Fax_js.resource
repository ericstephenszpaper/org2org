<!--
// Name: Create Stack from Fax
// Committer: tom.malone@zpaper.com
// Update: clean up comments
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-05-31 14:31:45","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"dmFyIGFyck9mUGFpcnMgPSBbXTsKCi8vQ1JOMTkwMzA4IEhhbmRsZSB1cGxvYWRlZCBmaWxlcyB2aWEgTGlnaHRuaW5nIENvbXBvbmVudAogICAgCiAgICB2YXIgZnJvbUZpbGUgPSBYKGRvYywgIlhfZnJvbUZpbGUiKTsKICAgCiAgICBpZiAoZnJvbUZpbGUgJiYgZnJvbUZpbGUuaW5kZXhPZigibGlnaHRuaW5nVXBsb2FkIikgPj0gMCkgewogICAgICAgIAogICAgICAgIGZyb21GaWxlID0gZnJvbUZpbGUuc3Vic3RyaW5nKGZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsKICAgICAgICB2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgiLSIpOwogICAgICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gMykgewogICAgICAgICAgICB2YXIgYXR0YWNoVG9JZCA9IHBhcnRzWzJdOwogICAgICAgICAgICBhbGVydCgiQEBAIFVQTE9BRDogQVRUQUNISU5HIFRPIFNBTEVTRk9SQ0UgUkVDT1JEID0gIiArIGF0dGFjaFRvSWQpOwogICAgICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCAiICsgZnJvbUZpbGU7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiVXBsb2FkZWQiKTsgLy8gUFYxOTA1MjYgdXBkYXRlZCBmb3IgdXBsb2FkIGxvZ2ljIAogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJVcGxvYWRlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsICJVUExPQUQiKTsKICAgICAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgICAgICAgICAgcmV0dXJuOwogICAgICAgIH0KICAgIH0KICAgIAogICAgdmFyIGF0dGFjaExhYmVsID0gIiI7CgogICAgLy9FUlMxNzAzMjggZG9jVHlwZSBieSBPQ1IKICAgIHpEYXRhLmRvY1R5cGVPQ1IgPSB6RGF0YS5kb2NUeXBlcihkb2MsIHsgIkZBWCI6IiJ9KTsgLy9QVjE5MDUyNiBSZW1vdmVkIHR5cGVzCiAgICBhbGVydCgiZG9jVHlwZSB3YXMgIiArIGRvYy5kb2NUeXBlICsgIiBub3cgIiArIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgdmFyIHpUeXBlID0gZG9jLlgoIlhfZG9jVHlwZSIpOwogICAgaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgICAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICB6VHlwZSA9IHpEYXRhLmRvY1R5cGVPQ1I7IC8vRVJTMTcwMzMwIHNhdmVkIGJlbG93IGludG8gU0YgZmF4VHlwZV9fYyBmaWVsZAogICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyczApOwogICAgfQoKICAgIHZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwogICAgdmFyIGNoYW5uZWwgPSAiRmF4IjsKICAgIGlmIChpc05hTihkb2MuZGVsaXZlcmVkRnJvbSkpIHsgLy8gTm90IGEgTnVtYmVyIGlzIHRydWUKICAgICAgICBjaGFubmVsID0gIkVtYWlsIjsKICAgIH0KCiAgICBhcnJPZlBhaXJzID0gW107CgogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCB6VHlwZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIk5ldyBTdGFjayIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NoYW5uZWxfX2MiLCBjaGFubmVsKTsKICAgIC8vIE1TSDE3MTExNiB1c2luZyB6U3RhY2tfUmVjZWl2ZWRfX2MgaW5zdGVhZCBvZiBsYXRlc3RGYXhfX2MgYmVjYXVzZSBsYXRlc3RGYXhfX2MgZ2V0cyB1cGRhdGVkIGJ5IHNhdmUuanNwIGV2ZXJ5IHRpbWUgdGhlIHJlY29yZCBpcyB1cGRhdGVkCiAgICAgCiAgICAvL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3NlbnRGYXhUb19fYyIsIGRvYy5kZWxpdmVyZWRUbyk7IC8vRVJTMTcwNjI4IGNhbGxlciBpZAogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0Zyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBhcnJPZlBhaXJzLnB1c2goInpDYWxsZXJfSURfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7IC8vTVNIMTcwODE3IGFkZGVkCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgLy9FUlMxNzA3MzEgIzQwNTkzCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7IAoKICAgIGF0dGFjaExhYmVsID0gIk5ldyAiK3pEYXRhLmNsYXNzaWZpY2F0aW9uKyIgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKCiAgICBhbGVydCgiQEBAIENsYXNzaWZpY2F0aW9uID0gIiArIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKCgogICAgdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCBhdHRhY2hMYWJlbCwgYXJyT2ZQYWlycyk7IC8vIFBWMTkwNTMwIGFkZGVkICIiCgogICAgLy9DUk4xODA3MjYgQ2FzZSAjNTA0NjkgLS0gU2V0IHRoZSAiUmVjZWl2ZWQiIGNoZWNrYm94CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwogICAgYWxlcnQoIiQkJCBub3cwID0gIiArIG5vdzApOwogICAgYXJyT2ZQYWlycyA9IFtdOyAvLyBQVjE5MDUzMSBhZGRlZCBmb3Igc3RhY2sgbGFiZWwKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJSZWNlaXZlZCIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCBYKGRvYywgIlhfcmV2aWV3cyIpICsgIlJlY2VpdmVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCgogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsgICAKCgogICAgLyogRU5EICov"},"ordinal":13}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var arrOfPairs = [];

//CRN190308 Handle uploaded files via Lightning Component
    
    var fromFile = X(doc, "X_fromFile");
   
    if (fromFile && fromFile.indexOf("lightningUpload") >= 0) {
        
        fromFile = fromFile.substring(fromFile.lastIndexOf('/') + 1);
        var parts = fromFile.split("-");
        if (parts.length >= 3) {
            var attachToId = parts[2];
            alert("@@@ UPLOAD: ATTACHING TO SALESFORCE RECORD = " + attachToId);
            var label = "File uploaded " + fromFile;
            attach(doc, label, attachToId, true);
            arrOfPairs = [];
            arrOfPairs.push("X_reviewedStatus", "Uploaded"); // PV190526 updated for upload logic 
            arrOfPairs.push("X_reviews", "Uploaded by agent at " + now0 + "<br/>");
            arrOfPairs.push("db-label", label);
            arrOfPairs.push("X_docType", "UPLOAD");
            updateDB(doc, arrOfPairs);
            return;
        }
    }
    
    var attachLabel = "";

    //ERS170328 docType by OCR
    zData.docTypeOCR = zData.docTyper(doc, { "FAX":""}); //PV190526 Removed types
    alert("docType was " + doc.docType + " now " + zData.docTypeOCR);
    var zType = doc.X("X_docType");
    if (doc.docType != zData.docTypeOCR) {
        var arrOfPairs0 = [];
        arrOfPairs0.push("X_docTypeOCR", zData.docTypeOCR);
        arrOfPairs0.push("X_docType", zData.docTypeOCR);
        zType = zData.docTypeOCR; //ERS170330 saved below into SF faxType__c field
        updateDB(doc, arrOfPairs0);
    }

    var formatNow = getCurDateAndTime(doc);
    var channel = "Fax";
    if (isNaN(doc.deliveredFrom)) { // Not a Number is true
        channel = "Email";
    }

    arrOfPairs = [];

    arrOfPairs.push("ZPAPER__faxType__c", zType);
    arrOfPairs.push("ZPAPER__Priority__c", "Medium");
    arrOfPairs.push("ZPAPER__Status__c", "New Stack");
    arrOfPairs.push("ZPAPER__Channel__c", channel);
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
     
    //arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
    arrOfPairs.push("zStack_Received__c", formatNow);
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
    arrOfPairs.push("ZPAPER__newFax__c", "true");
    arrOfPairs.push("ZPAPER__Pages__c", X(doc, "X_pages"));

    arrOfPairs.push("ZPAPER__Program_Name__c", zData.classification);
    arrOfPairs.push("ZPAPER__sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
    arrOfPairs.push("ZPAPER__From__c", doc.deliveredFrom);
    arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
    arrOfPairs.push("ZPAPER__Stage__c", "Received"); //ERS170731 #40593
    arrOfPairs.push("ZPAPER__Classification__c", zData.classification); 

    attachLabel = "New "+zData.classification+" Stack received on " + formatNow;

    alert("@@@ Classification = " + zData.classification);


    var sfId = createAndAttach(doc, "ZPAPER__zStack__c", attachLabel, arrOfPairs); // PV190530 added ""

    //CRN180726 Case #50469 -- Set the "Received" checkbox
    var now0 = getCurDateAndTime(doc, false, true);
    alert("$$$ now0 = " + now0);
    arrOfPairs = []; // PV190531 added for stack label
    arrOfPairs.push("db-label", attachLabel);
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    arrOfPairs.push("X_reviewedStatus", "Received");
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"); //ERS170909 #40592/CAW Update

    updateDB(doc, arrOfPairs);   


    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
