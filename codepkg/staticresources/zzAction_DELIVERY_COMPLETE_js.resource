<!--
// Name: DELIVERY_COMPLETE
// Committer: Marty Harvey:marty.harvey@zpaper.com
// Update: MSH180912 remove unused var before promoting
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2018-09-12 16:36:05","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gREVMSVZFUllfQ09NUExFVEUgekFjdGlvbiAqLwp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIHNmSWQgPSBYKGRvYywgIlhfYWN0aXZpdHlPbklEIik7CmFsZXJ0KCJ+fn4gc2ZJZCA9ICIgKyBzZklkICsgIiB+fn4iKTsKdmFyIGRvY1R5cGUgPSBYKGRvYywgImRvY1R5cGUiKTsKdmFyIGxhYmVsID0gIlNlbnQgb24gIiArIGZvcm1hdE5vdzsKdmFyIGRlbGl2ZXJ5U3RhdHVzID0gWChkb2MsICJYX2ZheFN0YXR1cyIpOwp2YXIgc2VudFRvID0gWChkb2MsICJDb250YWN0RmF4Iik7CnZhciBkZXN0RmllbGROYW1lID0gIiI7Cgp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uMCIsIFgoZG9jLCJYX2J1dHRvbkFjdGlvbiIpKTsKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsICIiKTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLSIgKyBkb2NUeXBlKTsgIC8vRVJTMTcwNjI1IHRvZG8gZ2V0IGRvY1R5cGUgZnJvbSB0ZW1wbGF0ZSB1c2VkCmFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgZG9jVHlwZSk7IC8vRVJTMTcwOTE5Ci8vTVNIMTgwODE2IGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgc2ZJZCk7IC8vRVJTMTcwNjI4IGRvY1NldCBuZWVkcyB0aGlzCmlmICgxPT09MSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKICAgIC8vTVNIMTgwODA4IG5vdCB0aGUgcmVjb21tZW5kZWQgZm9ybWF0IGZvciB0aGlzIGNhbGwgdmFyIGJhID0gZG9jLlgoIlhfZmF4U3RhdHVzIikgKyAiZWQiOwogICAgdmFyIGJhID0gZGVsaXZlcnlTdGF0dXMgKyAiZWQiOwogICAgYmEgPSBiYS5zdWJzdHJpbmcoMSArIGJhLmxhc3RJbmRleE9mKCIgIikpOwogICAgaWYgKGJhLmluZGV4T2YoImVkZWQiKSA+IC0xKSB7CiAgICAgICAgYmEgPSBiYS5yZXBsYWNlKCJlZGVkIiwgImVkIik7IC8vRVJTMTcwOTE5IEZhaWxlZGVkICM0MDc3NwogICAgfQogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsIGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArIGJhICsgIiBieSAiICsgZG9jLmtiRGF0YS5yZW1vdGVVc2VyICsgIiBhdCAiICsgbm93MCArICI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIKfQp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKLy8gTVNIMTgwODE2IGNyZWF0ZSBQQ19Eb2N1bWVudCBhbmQgUENfRG9jdW1lbnRfTG9nCi8vIHpEYXRhLm5ld0RvY3VtZW50KGRvYywgYXJyT2ZQYWlycywgekRhdGEuU0ZEQ3R5cGUsIHpEYXRhLnByb2dyYW1OYW1lKTsKCmlmIChzZW50VG8uaW5kZXhPZigiQCIpID4gLTEpIHsKICAgIC8vTVNIMTgwODI4IFRvIEVtYWlsIGFkZHJlc3NEb2MKICAgIC8vTVNIMTgwOTAxIGRlc3RGaWVsZE5hbWUgPSAic3BjX3RvX0VtYWlsX2FkZHJlc3NfX2MiOwogICAgLy9NU0gxODA5MDQgc3dpdGNoIGl0IGJhY2sgZGVzdEZpZWxkTmFtZSA9IHpEYXRhLlBDcGFja2FnZSArICJQQ19Ub19FbWFpbF9BZGRyZXNzX19jIjsKICAgIGRlc3RGaWVsZE5hbWUgPSAic3BjX3RvX0VtYWlsX2FkZHJlc3NfX2MiOwp9IGVsc2UgewogICAgLy9NU0gxODA4MjggVG8gRmF4IE51bWJlcgogICAgZGVzdEZpZWxkTmFtZSA9IHpEYXRhLlBDcGFja2FnZSArICJQQ19Ub19GYXhfTnVtYmVyX19jIjsKfQoKYXJyT2ZQYWlycyA9IFtdOwoKLy92YXIgbmV3UGNEb2NJZCA9IHpEYXRhLm5ld0RvY3VtZW50KGRvYywgYXJyT2ZQYWlycywgekRhdGEuU0ZEQ3R5cGUsIHByb2dyYW1OYW1lLCBzZlBhcmVudElkLCBTRkRDZmllbGQsIHN0YXR1cyk7CnZhciBuZXdQY0RvY0lkID0gIiI7CmlmICgxID09IDEgJiYgWChkb2MsICJjb3ZlcklEIikuaW5kZXhPZigiPCIpID09IC0xKSB7IC8vRVJTMTgwODIzICM1MTgzNyBkbyBpZiBmb3J3YXJkZWQKICAgIGFyck9mUGFpcnMucHVzaCgielBhcGVyX0ZheF9VbmlxdWVfSWRfX2MiLCBkb2MuZGJJRCk7CiAgICAvL01TSDE4MDgxOSBnZXQgdGhlIHJpZ2h0IHJlY29yZCB0eXBlCiAgICAvL01TSDE4MDgyMCBzbGlnaHRseSBiZXR0ZXIgdGVzdAogICAgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCJAIikgPiAtMSkgeyAvL0VSUzE4MDgyMSBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKQogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEub3V0Ym91bmRFbWFpbFJlY29yZFR5cGUpOwogICAgfSBlbHNlIHsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLm91dGJvdW5kRmF4UmVjb3JkVHlwZSk7IC8vTVNIMTgwODE3ICM1MTY0MQogICAgfQogICAgaWYgKHNmSWQuaW5kZXhPZigiNTAwIikgPT09IDApIHsKICAgICAgICB6RGF0YS5jYXNlSWQgPSBzZklkOwogICAgfSBlbHNlIHsKICAgICAgICB2YXIgZmxkcyA9IGdldFNGRmllbGRzKGRvYywgekRhdGEuU0ZEQ3R5cGUsICJzcGNfUHJvZ3JhbV9DYXNlX0lkX19jLHNwY19JbnF1aXJ5Q2FzZUlkX19jIiwgbnVsbCwgc2ZJZCk7CiAgICAgICAgdmFyIHBnbUNhc2UgPSBYKGRvYywgInNwY19Qcm9ncmFtX0Nhc2VfSWRfX2MiLCBmbGRzKTsKICAgICAgICBpZiAocGdtQ2FzZSkgewogICAgICAgICAgICB6RGF0YS5jYXNlSWQgPSBwZ21DYXNlOwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIHpEYXRhLmNhc2VJZCA9IFgoZG9jLCAic3BjX0lucXVpcnlDYXNlSWRfX2MiLCBmbGRzKTsKICAgICAgICB9CiAgICB9CgogICAgYXJyT2ZQYWlycy5wdXNoKCJzcGNfU291cmNlX09iamVjdF9JRF9fYyIsIHpEYXRhLmNhc2VJZCk7CiAgICBhcnJPZlBhaXJzLnB1c2goZGVzdEZpZWxkTmFtZSwgc2VudFRvKTsKCiAgICAvL01TSDE4MDgzMCBhZGQgd29ya2Zsb3cgZmllbGRzIGZvciBuZXcgUENfRG9jdW1lbnQgcmVjb3JkCiAgICBhcnJPZlBhaXJzLnB1c2goInNlbnRGYXhfX2MiLCAidHJ1ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJzZW50RmF4QXRfX2MiLCBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJzZW50RmF4U3RhdHVzX19jIiwgZGVsaXZlcnlTdGF0dXMpOyAgICAKICAgIGFyck9mUGFpcnMucHVzaCgic2VudEZheFRvX19jIiwgc2VudFRvKTsKCiAgICB2YXIgbmV3SWRzID0gekRhdGEubmV3RG9jdW1lbnQoZG9jLCBhcnJPZlBhaXJzLCB6RGF0YS5TRkRDdHlwZSwgekRhdGEucHJvZ3JhbU5hbWUsIHNmSWQpOwogICAgYWxlcnQoIkBAQEBAIG5ld0lkcyA9ICogIiArIG5ld0lkcyArICIgKiIpOwogICAgdmFyIG5ld0lkc0FyciA9IFtdOwogICAgaWYgKG5ld0lkcy5pbmRleE9mKCIsIikgPiAtMSkgewogICAgICAgIG5ld0lkc0FyciA9IG5ld0lkcy5zcGxpdCgiLCIpOwogICAgICAgIG5ld1BjRG9jSWQgPSBuZXdJZHNBcnJbMF07CiAgICB9IGVsc2UgewogICAgICAgIG5ld1BjRG9jSWQgPSBuZXdJZHM7CiAgICB9CgogICAgLy8gTVNIMTgwODE4ICM1MTY0MSBBZGQgYW4gQWN0aXZpdHkgdG8gdGhlIFNhbGVzZm9yY2UgUENfRG9jdW1lbnQgcmVjb3JkIHdlIGp1c3QgY3JlYXRlZC4KICAgIHZhciBkb2NUaXRsZSA9IFgoZG9jLCAiZG9jVGl0bGUiKTsKICAgIHZhciBkb2NQYWdlcyA9IFgoZG9jLCAiWF9wYWdlcyIpOwoKICAgIHZhciBsYWJlbCA9IFgoZG9jLCAiWF9ub3RpZnlTdWJqZWN0Iik7CiAgICBsYWJlbCA9IGxhYmVsLnJlcGxhY2UoInswfSIsIGRvY1RpdGxlKTsKICAgIGxhYmVsID0gbGFiZWwucmVwbGFjZSgiezF9IiwgZG9jUGFnZXMpOwogICAgbGFiZWwgPSBsYWJlbC5yZXBsYWNlKCJ7Mn0iLCBzZW50VG8pOwogICAgbGFiZWwgPSBsYWJlbC5yZXBsYWNlKCJ7M30iLCBkZWxpdmVyeVN0YXR1cyk7CiAgICBhbGVydCgiQEBAQEAgVGFzayBsYWJlbCA9ICogIiArIGxhYmVsICsgIiAqIik7CgogICAgdmFyIGhvc3QgPSBkb2Mua2JEYXRhLkhPU1Q7CiAgICBpZiAoaG9zdC5pbmRleE9mKCc6Ly8nKSA+IDApICAgIHsgaG9zdCA9IGhvc3Quc3Vic3RyaW5nKGhvc3QuaW5kZXhPZignOi8vJykgKyAzKTsgfQogICAgaWYgKGhvc3QuaW5kZXhPZignOicpID4gMCkgICAgICB7IGhvc3QgPSBob3N0LnN1YnN0cmluZygwLCBob3N0LmluZGV4T2YoJzonKSk7IH0KICAgIGVsc2UgaWYgKGhvc3QuaW5kZXhPZignLycpID4gMCkgeyBob3N0ID0gaG9zdC5zdWJzdHJpbmcoMCwgaG9zdC5pbmRleE9mKCcvJykpOyB9CgogICAgdmFyIHVybCA9ICJodHRwczovLyIgKyBob3N0ICsgIi9rYi9qc3AvU0ZfZmluZC5qc3A/c2tpbj1TRmJhcmUmZGJJRD0iICsgZG9jLmRiSUQ7CgogICAgdmFyIGRlc2NyaXB0aW9uID0gZG9jVGl0bGUgKyAiOiBBICIgKyBkb2NQYWdlcyArICIgcGFnZSBmYXggdG8gIjsKICAgIGRlc2NyaXB0aW9uICs9IFgoZG9jLCAiQ29udGFjdE5hbWUiKSArICIgQCAiICsgc2VudFRvOwogICAgaWYgKCJEZWxpdmVyZWQiID09IGRlbGl2ZXJ5U3RhdHVzKSB7CiAgICAgICAgZGVzY3JpcHRpb24gKz0gIiB3YXMgZGVsaXZlcmVkIjsKICAgIH0gZWxzZSB7CiAgICAgICAgZGVzY3JpcHRpb24gKz0gIiBoYXMgZmFpbGVkIC0gIiArIFgoZG9jLCAiWF9mYXhTdGF0dXNEZXRhaWwiKTsKICAgIH0KICAgIGRlc2NyaXB0aW9uICs9ICIuIFRoZSBmYXggaXMgdmlld2FibGUgYXQgIiArIHVybDsKCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goIldoYXRJZCIsIG5ld1BjRG9jSWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJTdWJqZWN0IiwgbGFiZWwpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJBY3Rpdml0eURhdGUiLCBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJEZXNjcmlwdGlvbiIsIGRlc2NyaXB0aW9uKTsKICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgIkNvbXBsZXRlZCIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgInpQYXBlciBGYXggT3V0Y29tZSIpOwogICAgdmFyIHRhc2tJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgIlRhc2siLCBsYWJlbCwgYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiQEBAQEBAIENyZWF0ZWQgYnV0IG5vdCBhdHRhY2hlZCB0byBUYXNrOiAiICsgdGFza0lkKTsKfQoKLy8gTVNIMTgwODA4IGlmIHdlIGhhdmUgYSBQYXRpZW50Q29ubmVjdF9fUENfRG9jdW1lbnRfX2MgaWQsCi8vIHVwZGF0ZSB0aGUgelBhcGVyX0ZheF9VbmlxdWVfSWRfX2MgZmllbGQKdmFyIGFjdGl2aXRpZXMgPSBYKGRvYywgImFjdGl2aXRpZXMiKTsKdmFyIGFjdGl2aXR5QXJyID0gW107CgppZiAoYWN0aXZpdGllcyAmJiBhY3Rpdml0aWVzLmxlbmd0aCA+IDApIHsKICAgIGFjdGl2aXR5QXJyID0gYWN0aXZpdGllcy5zcGxpdCgiLCIpOwoKICAgIGZvciAodmFyIGFjdElkIGluIGFjdGl2aXR5QXJyKSB7CiAgICAgICAgdmFyIGFjdGl2aXR5VHlwZSA9IGdldFNGVHlwZShkb2MsIGFjdGl2aXR5QXJyW2FjdElkXSk7CiAgICAgICAgYWxlcnQoIkBAQEBAIGFjdElkID0gKiAiICsgYWN0aXZpdHlBcnJbYWN0SWRdICsgIiAqIik7CiAgICAgICAgYWxlcnQoIkBAQEBAIHNmVHlwZSA9ICogIiArIGFjdGl2aXR5VHlwZSArICIgKiIpOwoKICAgICAgICBpZiAoekRhdGEuU0ZEQ3R5cGUgPT0gYWN0aXZpdHlUeXBlKSB7CiAgICAgICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJ6UGFwZXJfRmF4X1VuaXF1ZV9JZF9fYyIsIGRvYy5kYklEKTsKICAgICAgICAgICAgLy9NU0gxODA4MzAgdXBkYXRlIHdvcmtmbG93IGZpZWxkcyBvbiBQQ19Eb2N1bWVudCByZWNvcmQKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJzZW50RmF4X19jIiwgInRydWUiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJzZW50RmF4QXRfX2MiLCBmb3JtYXROb3cpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goInNlbnRGYXhTdGF0dXNfX2MiLCBkZWxpdmVyeVN0YXR1cyk7ICAgIAogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goInNlbnRGYXhUb19fYyIsIHNlbnRUbyk7CiAgICAgICAgICAgIC8vTVNIMTgwODMwIHVwZGF0ZSBkZXN0aW5hdGlvbiBmaWVsZHMKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKGRlc3RGaWVsZE5hbWUsIHNlbnRUbyk7CiAgICAgICAgICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgekRhdGEuU0ZEQ3R5cGUsIGFjdGl2aXR5QXJyW2FjdElkXSwgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIC8vIE1TSDE4MDgxMyBhdHRhY2gKICAgICAgICAgICAgYXR0YWNoKGRvYywgbGFiZWwsIGFjdGl2aXR5QXJyW2FjdElkXSk7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgLy8gTVNIMTgwODEzIGF0dGFjaAogICAgICAgICAgICBhdHRhY2goZG9jLCBsYWJlbCwgc2ZJZCk7CiAgICAgICAgfQogICAgfQp9Ci8qIEVORCBERUxJVkVSWV9DT01QTEVURSB6QWN0aW9uICovCg=="},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN DELIVERY_COMPLETE zAction */
var formatNow = getCurDateAndTime(doc);
var sfId = X(doc, "X_activityOnID");
alert("~~~ sfId = " + sfId + " ~~~");
var docType = X(doc, "docType");
var label = "Sent on " + formatNow;
var deliveryStatus = X(doc, "X_faxStatus");
var sentTo = X(doc, "ContactFax");
var destFieldName = "";

var arrOfPairs = [];
arrOfPairs.push("X_buttonAction0", X(doc,"X_buttonAction"));
arrOfPairs.push("X_buttonAction", "");
arrOfPairs.push("db-label", label);
arrOfPairs.push("db-BATES", sfId + "-" + docType);  //ERS170625 todo get docType from template used
arrOfPairs.push("X_docType", docType); //ERS170919
//MSH180816 arrOfPairs.push("X_attachedTo", sfId); //ERS170628 docSet needs this
if (1===1) { //ERS170909 #40592 for zDocSet statuses
    //MSH180808 not the recommended format for this call var ba = doc.X("X_faxStatus") + "ed";
    var ba = deliveryStatus + "ed";
    ba = ba.substring(1 + ba.lastIndexOf(" "));
    if (ba.indexOf("eded") > -1) {
        ba = ba.replace("eded", "ed"); //ERS170919 Faileded #40777
    }
    var now0 = getCurDateAndTime(doc, false, true);
    arrOfPairs.push("X_reviewedStatus", ba);
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + ba + " by " + doc.kbData.remoteUser + " at " + now0 + "<br/>"); //ERS170909 #40592
}
updateDB(doc, arrOfPairs);

// MSH180816 create PC_Document and PC_Document_Log
// zData.newDocument(doc, arrOfPairs, zData.SFDCtype, zData.programName);

if (sentTo.indexOf("@") > -1) {
    //MSH180828 To Email addressDoc
    //MSH180901 destFieldName = "spc_to_Email_address__c";
    //MSH180904 switch it back destFieldName = zData.PCpackage + "PC_To_Email_Address__c";
    destFieldName = "spc_to_Email_address__c";
} else {
    //MSH180828 To Fax Number
    destFieldName = zData.PCpackage + "PC_To_Fax_Number__c";
}

arrOfPairs = [];

//var newPcDocId = zData.newDocument(doc, arrOfPairs, zData.SFDCtype, programName, sfParentId, SFDCfield, status);
var newPcDocId = "";
if (1 == 1 && X(doc, "coverID").indexOf("<") == -1) { //ERS180823 #51837 do if forwarded
    arrOfPairs.push("zPaper_Fax_Unique_Id__c", doc.dbID);
    //MSH180819 get the right record type
    //MSH180820 slightly better test
    if (doc.deliveredTo.indexOf("@") > -1) { //ERS180821 if (isNaN(doc.deliveredFrom))
        arrOfPairs.push("RecordTypeId", zData.outboundEmailRecordType);
    } else {
        arrOfPairs.push("RecordTypeId", zData.outboundFaxRecordType); //MSH180817 #51641
    }
    if (sfId.indexOf("500") === 0) {
        zData.caseId = sfId;
    } else {
        var flds = getSFFields(doc, zData.SFDCtype, "spc_Program_Case_Id__c,spc_InquiryCaseId__c", null, sfId);
        var pgmCase = X(doc, "spc_Program_Case_Id__c", flds);
        if (pgmCase) {
            zData.caseId = pgmCase;
        } else {
            zData.caseId = X(doc, "spc_InquiryCaseId__c", flds);
        }
    }

    arrOfPairs.push("spc_Source_Object_ID__c", zData.caseId);
    arrOfPairs.push(destFieldName, sentTo);

    //MSH180830 add workflow fields for new PC_Document record
    arrOfPairs.push("sentFax__c", "true");
    arrOfPairs.push("sentFaxAt__c", formatNow);
    arrOfPairs.push("sentFaxStatus__c", deliveryStatus);    
    arrOfPairs.push("sentFaxTo__c", sentTo);

    var newIds = zData.newDocument(doc, arrOfPairs, zData.SFDCtype, zData.programName, sfId);
    alert("@@@@@ newIds = * " + newIds + " *");
    var newIdsArr = [];
    if (newIds.indexOf(",") > -1) {
        newIdsArr = newIds.split(",");
        newPcDocId = newIdsArr[0];
    } else {
        newPcDocId = newIds;
    }

    // MSH180818 #51641 Add an Activity to the Salesforce PC_Document record we just created.
    var docTitle = X(doc, "docTitle");
    var docPages = X(doc, "X_pages");

    var label = X(doc, "X_notifySubject");
    label = label.replace("{0}", docTitle);
    label = label.replace("{1}", docPages);
    label = label.replace("{2}", sentTo);
    label = label.replace("{3}", deliveryStatus);
    alert("@@@@@ Task label = * " + label + " *");

    var host = doc.kbData.HOST;
    if (host.indexOf('://') > 0)    { host = host.substring(host.indexOf('://') + 3); }
    if (host.indexOf(':') > 0)      { host = host.substring(0, host.indexOf(':')); }
    else if (host.indexOf('/') > 0) { host = host.substring(0, host.indexOf('/')); }

    var url = "https://" + host + "/kb/jsp/SF_find.jsp?skin=SFbare&dbID=" + doc.dbID;

    var description = docTitle + ": A " + docPages + " page fax to ";
    description += X(doc, "ContactName") + " @ " + sentTo;
    if ("Delivered" == deliveryStatus) {
        description += " was delivered";
    } else {
        description += " has failed - " + X(doc, "X_faxStatusDetail");
    }
    description += ". The fax is viewable at " + url;

    arrOfPairs = [];
    arrOfPairs.push("WhatId", newPcDocId);
    arrOfPairs.push("Subject", label);
    arrOfPairs.push("ActivityDate", formatNow);
    arrOfPairs.push("Description", description);
    arrOfPairs.push("Status", "Completed");
    arrOfPairs.push("Type", "zPaper Fax Outcome");
    var taskId = createSFRecord(doc, "Task", label, arrOfPairs);
    alert("@@@@@@ Created but not attached to Task: " + taskId);
}

// MSH180808 if we have a PatientConnect__PC_Document__c id,
// update the zPaper_Fax_Unique_Id__c field
var activities = X(doc, "activities");
var activityArr = [];

if (activities && activities.length > 0) {
    activityArr = activities.split(",");

    for (var actId in activityArr) {
        var activityType = getSFType(doc, activityArr[actId]);
        alert("@@@@@ actId = * " + activityArr[actId] + " *");
        alert("@@@@@ sfType = * " + activityType + " *");

        if (zData.SFDCtype == activityType) {
            arrOfPairs = [];
            arrOfPairs.push("zPaper_Fax_Unique_Id__c", doc.dbID);
            //MSH180830 update workflow fields on PC_Document record
            arrOfPairs.push("sentFax__c", "true");
            arrOfPairs.push("sentFaxAt__c", formatNow);
            arrOfPairs.push("sentFaxStatus__c", deliveryStatus);    
            arrOfPairs.push("sentFaxTo__c", sentTo);
            //MSH180830 update destination fields
            arrOfPairs.push(destFieldName, sentTo);
            updateSFRecord(doc, zData.SFDCtype, activityArr[actId], arrOfPairs);
            // MSH180813 attach
            attach(doc, label, activityArr[actId]);
        } else {
            // MSH180813 attach
            attach(doc, label, sfId);
        }
    }
}
/* END DELIVERY_COMPLETE zAction */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
