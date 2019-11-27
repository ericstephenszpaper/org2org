<!--
// Name: Bulk Delivery COMPLETE
// Committer: andrew@zpaper.com
// Update: comment cleanup
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-30 15:25:42","active":true,"button":"","name":"Bulk Delivery COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.fromFile","value":"bulk.pdf","operation":"contains"}]},"consequence":{"doit":"Ly8gU2F2ZSB0aGUgdmlldyBsaW5rIGluIHRoZSBDb21tZW50cyBvZiB0aGUgVGFzayByZWNvcmQuCnZhciBhcnJPZlBhaXJzID0gW107CnZhciBob3N0ID0gZG9jLmtiRGF0YS5IT1NUOwppZiAoaG9zdC5pbmRleE9mKCc6Ly8nKSA+IDApICAgIHsgaG9zdCA9IGhvc3Quc3Vic3RyaW5nKGhvc3QuaW5kZXhPZignOi8vJykrMyk7IH0KaWYgKGhvc3QuaW5kZXhPZignOicpID4gMCkgICAgICB7IGhvc3QgPSBob3N0LnN1YnN0cmluZygwLCBob3N0LmluZGV4T2YoJzonKSk7ICB9CmVsc2UgaWYgKGhvc3QuaW5kZXhPZignLycpID4gMCkgeyBob3N0ID0gaG9zdC5zdWJzdHJpbmcoMCwgaG9zdC5pbmRleE9mKCcvJykpOyAgfQp2YXIgdmlld0xpbmsgPSAiaHR0cHM6Ly8iICsgaG9zdCArICIva2IvanNwL1NGX2ZpbmQuanNwP3NraW49U0ZiYXJlJmRiSUQ9IiArIGRvYy5kYklEICsgIiZTRm9yZz0iICsgZG9jLnNmT3JnICsgIiZTRmlkPSIgKyBzZklkOwoKLy8gQWRkIGFuIEFjdGl2aXR5IHRvIHRoZSBleGlzdGluZyBTYWxlc2ZvcmNlIHJlY29yZC4KLy9NU0gxODAxMjMgIzQ0NjUzIGJ1bGsgcHJpbnQKCnZhciBhdHRhY2hJZCA9IHpEYXRhLmNyZWF0ZUNhc2UoZG9jLCAwKTsKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CmFyck9mUGFpcnMucHVzaCgiV2hhdElkIiwgYXR0YWNoSWQpOwp2YXIgbGFiZWwgPSAiTmV3IEJ1bGsgUHJpbnQiOwphbGVydCgiQEBAQEAgVGFzayBsYWJlbCA9ICoiICsgbGFiZWwgKyAiKiIpOwphcnJPZlBhaXJzLnB1c2goIlN1YmplY3QiLCBsYWJlbCk7CmFyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLCB2aWV3TGluayk7CmFyck9mUGFpcnMucHVzaCgiQWN0aXZpdHlEYXRlIiwgZm9ybWF0Tm93KTsKLy9QVjE5MDQwMyB1cGRhdGVkIHRvIG92ZXJyaWRlIGFjdGl2aXR5IGhpc3Rvcnkgc3RhdHVzCiB2YXIgYmE9ZG9jLlgoIlhfZmF4U3RhdHVzIikrIiI7CiAgICBpZiAoIkRlbGl2ZXJlZCIgIT09IGJhKSB7IGJhPSJGYWlsZWQiOyB9ZWxzZXsgYmE9IkNvbXBsZXRlZCI7fQphcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsYmEpOwphcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiRG9jdW1lbnQiKTsKdmFyIHNmSWQgPSBjcmVhdGVTRlJlY29yZChkb2MsICJUYXNrIiwgbGFiZWwsIGFyck9mUGFpcnMpOwphbGVydCgiQEBAQEBAIEFkZGluZyBBY3Rpdml0eSB0bzogIiArIHNmSWQpOw=="},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
// Save the view link in the Comments of the Task record.
var arrOfPairs = [];
var host = doc.kbData.HOST;
if (host.indexOf('://') > 0)    { host = host.substring(host.indexOf('://')+3); }
if (host.indexOf(':') > 0)      { host = host.substring(0, host.indexOf(':'));  }
else if (host.indexOf('/') > 0) { host = host.substring(0, host.indexOf('/'));  }
var viewLink = "https://" + host + "/kb/jsp/SF_find.jsp?skin=SFbare&dbID=" + doc.dbID + "&SForg=" + doc.sfOrg + "&SFid=" + sfId;

// Add an Activity to the existing Salesforce record.
//MSH180123 #44653 bulk print

var attachId = zData.createCase(doc, 0);
var formatNow = getCurDateAndTime(doc);
arrOfPairs.push("WhatId", attachId);
var label = "New Bulk Print";
alert("@@@@@ Task label = *" + label + "*");
arrOfPairs.push("Subject", label);
arrOfPairs.push("Description", viewLink);
arrOfPairs.push("ActivityDate", formatNow);
//PV190403 updated to override activity history status
 var ba=doc.X("X_faxStatus")+"";
    if ("Delivered" !== ba) { ba="Failed"; }else{ ba="Completed";}
arrOfPairs.push("Status",ba);
arrOfPairs.push("Type", "Document");
var sfId = createSFRecord(doc, "Task", label, arrOfPairs);
alert("@@@@@@ Adding Activity to: " + sfId);
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
