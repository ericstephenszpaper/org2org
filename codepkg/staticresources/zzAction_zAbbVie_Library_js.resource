<!--
// Name: zAbbVie Library
// Committer: andrew@zpaper.com
// Update: adding comment to test org to org
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-08-08 18:03:41","evalContinue":"true","active":true,"button":"","name":"zAbbVie Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"Library","operation":"ne"}]},"consequence":{"doit":"LyogQ01BMTcxMDA5IENyZWF0ZWQgekFiYlZpZUxpYnJhcnkgKi8KLy9BTjIwMTgwNzEzIHRoaXMgbGlicmFyeSBvbmx5IGNvbnRhaW5zIGZ1bmN0aW9ucyB0aGF0IGFyZSB1c2VkIGZvciBpbnRlZ3JhdGlvbiB3aXRoIHRoZSBQQU9TIHN5c3RlbS4KLy9BTTIwMTkwODA4IHRoaXMgaXMgYSB0ZXN0IGNvbW1lbnQgZm9yIHRlc3Rpbmcgb3JnIHRvIG9yZwoKekRhdGEuY3JlYXRlU3RhY2sgPSBmdW5jdGlvbihkb2MsIHNmQ29udGFjdElkLCBzZkNhc2VJZCwgc3RhdHVzKSB7CiAgICBhbGVydCgiY3JlYXRlU3RhY2siKTsKICAgIHZhciB6VHlwZSA9IGRvYy5YKCJYX2RvY1R5cGUiKTsKICAgIC8qCiAgICAgIE9uZSBvZiAiUEFPUyBSZWdpc3RyYXRpb24iLCAiUEFPUyBBcHBsaWNhdGlvbiIsICJQQU9TIERvY3VtZW50IgogICAgKi8KICAgIHpUeXBlID0gIk1JU0M6TWlzY2VsbGFuZW91cyI7CiAgICB2YXIgenAgPSAiWlBBUEVSX18iOwogICAgdmFyIHpTdGFjayA9IHpwICsgInpTdGFja19fYyI7CiAgICB2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCiAgICAvKiBNU0gxNzEwMTYgbG9vayB1cCBjb250YWN0IGluZm8gc28gcHJlcG9wIHdpbGwgd29yayAqLwogICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJOYW1lLEZpcnN0TmFtZSxMYXN0TmFtZSxCaXJ0aGRhdGUiLCBudWxsLCBzZkNvbnRhY3RJZCk7CiAgICBjb250YWN0RmxkcyArPSAiIjsKICAgIGFsZXJ0KCJAQEBAIGNvbnRhY3RGbGRzIHJlYWQgZnJvbSBTYWxlc2ZvcmNlOiAiICsgY29udGFjdEZsZHMpOwogICAgdmFyIGZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgdmFyIGxhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgIHZhciBkb2IgPSBYKGRvYywgIkJpcnRoZGF0ZSIsIGNvbnRhY3RGbGRzKTsKICAgIHZhciBuYW1lID0gWChkb2MsICJOYW1lIiwgY29udGFjdEZsZHMpOwoKICAgIHZhciBjYXNlRmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNhc2UiLCAiQ2FzZU51bWJlciIsIG51bGwsIHNmQ2FzZUlkKTsKICAgIGNhc2VGbGRzICs9ICIiOwogICAgYWxlcnQoIkBAQEAgY2FzZUZsZHMgcmVhZCBmcm9tIFNhbGVzZm9yY2U6ICIgKyBjYXNlRmxkcyk7CiAgICB2YXIgY2FzZU51bWJlciA9IFgoZG9jLCAiQ2FzZU51bWJlciIsIGNhc2VGbGRzKTsKCiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgImZheFR5cGVfX2MiLCB6VHlwZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiU3RhdHVzX19jIiwgc3RhdHVzKTsKICAgIC8qIE1TSDE4MDIxMyAjNDU4NzkgKi8KICAgIGFyck9mUGFpcnMucHVzaCgiVHJpYWdlX1N0YXR1c19fYyIsIHN0YXR1cyk7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiQ2hhbm5lbF9fYyIsICJQQU9TIik7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIm5ld0ZheF9fYyIsICJ0cnVlIik7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CiAgICAvL2lmICh6RGF0YS5vd25lcklkKSB7IGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLm93bmVySWQpOyB9CiAgICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5wYXBRdWV1ZUlkKTsgLy9BTjIwMTgwNzEzIHNldCB0aGUgU3RhY2sgb3duZXIgdG8gdGhlIFBBUCBxdWV1ZQogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJzZW50RmF4VG9fX2MiLCBkb2MuZGVsaXZlcmVkVG8pOyAvKiBFUlMxNzA2MjggY2FsbGVyIGlkICovCiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiRnJvbV9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLyogTVNIMTcwODE3IGFkZGVkICovCiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgLyogRVJTMTcwNzMxICM0MDU5MyAqLwogICAgCgkvL0FOMjAxOTAxMTcga2x1ZGdleSB3b3JrYXJvdW5kIGZvciB0aGUgZmFjdCB0aGF0IFBBT1MgdXBsb2FkcyBkb24ndCBoYXZlIGEgZGVsaXZlcmVkVG8gZmF4IG51bWJlciB2YWx1ZQoJaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09IG51bGwgfHwgekRhdGEuY2xhc3NpZmljYXRpb24gPT0gdW5kZWZpbmVkKXsKCQlhcnJPZlBhaXJzLnB1c2goenAgKyAiQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7Cgl9CgllbHNlIHsKCQlhbGVydCgiQEBAIHpEYXRhLmNsYXNzaWZjYXRpb24gaXMgYmxhbmsgLSBzZXR0aW5nIHRvIFBBUCIpOwoJCWFyck9mUGFpcnMucHVzaCh6cCArICJDbGFzc2lmaWNhdGlvbl9fYyIsICJQQVAiKTsKCX0KICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJQYXRpZW50X19jIiwgc2ZDb250YWN0SWQpOwogICAgLyogTVNIMTcxMDE2IGFkZGVkICovCiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiRmlyc3ROYW1lX19jIiwgZmlyc3ROYW1lKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJMYXN0TmFtZV9fYyIsIGxhc3ROYW1lKTsKICAgIC8qIGFyck9mUGFpcnMucHVzaCh6cCArICJOYW1lX19jIiwgbmFtZSk7ICovCiAgICAKCS8vQU4yMDE5MDExNyBrbHVkZ2V5IGZpeCBmb3IgYSBibGFuayBET0IgcHJvYmxlbQoJaWYgKGRvYil7CgkJYXJyT2ZQYWlycy5wdXNoKHpwICsgIkJpcnRoZGF0ZV9fYyIsIGRvYik7Cgl9CgkKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJDYXNlX19jIiwgc2ZDYXNlSWQpOwoKICAgIHZhciBzZlN0YWNrSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6U3RhY2ssICJOZXcgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdywgYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiIyMjIyBTdGFjayBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZlN0YWNrSWQpOwogICAgdmFyIGF0dGFjaFBhdGggPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOwogICAgYWxlcnQoIiMjIyMgYXR0YWNoUGF0aDogIiArIGF0dGFjaFBhdGgpOwoKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmU3RhY2tJZCArICItU1RBQ0siKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLCBzZlN0YWNrSWQpOyAvKiBFUlMxNzA3MjcgIzQwNDQ3ICovCiAgICAvKiBNU0gxNzEwMTYgZ2V0IHByZXBvcCB0byB3b3JrIG9uIERFIHBhbmVsICovCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX0Nhc2VfX3IuQ2FzZU51bWJlciIsIGNhc2VOdW1iZXIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1pQQVBFUl9fUGF0aWVudF9fYyIsIHNmQ29udGFjdElkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZSIsIGZpcnN0TmFtZSArICIgIiArIGxhc3ROYW1lKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIsIGZpcnN0TmFtZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIsIGxhc3ROYW1lKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gc2ZTdGFja0lkOwp9OwoKekRhdGEuY3JlYXRlQ2FzZSA9IGZ1bmN0aW9uKGRvYywgc2ZDb250YWN0SWQpIHsKICAgIGFsZXJ0KCJjcmVhdGVDYXNlIik7CiAgICAvKiBNU0gxNzExMjggZGVidWdnaW5nICovCiAgICBhbGVydCgiY2FzZVJlY29yZFR5cGVJZCA9ICIgKyB6RGF0YS5wYXBDYXNlUmVjb3JkVHlwZUlkKTsKICAgIC8qIGNyZWF0ZSBhIG5ldyBQYXRpZW50IEFzc2lzdGFuY2UgUHJvZ3JhbSBjYXNlICovCiAgICB2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICAvKiB2YXIgcmVjVHlwZUlEID0gIjAxMjM2MDAwMDAwczhpTiI7IC8vRVJTMTcwNzMxIGdldCBmcm9tIGRlcGxveW1lbnRJbmZvICovCiAgICAvKiBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHJlY1R5cGVJRCk7ICovCiAgICB2YXIgZG9jVHlwZT1YKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7CiAgICB2YXIgY2FzZUlkID0gIiI7CiAgICAvKiBNU0gxODAxMjMgIzQ0NjUzIGJ1bGsgcHJpbnQgKi8KICAgIGlmICgwID09PSBzZkNvbnRhY3RJZCkgewogICAgICAgIGRvY1R5cGUgPSAiQnVsayBQcmludCI7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5idWxrUHJpbnRSZWNvcmRUeXBlSWQpOwogICAgICAgIC8qIE1TSDE4MDIwMiB1cGRhdGVkIGxhYmVsICovCiAgICAgICAgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCAiQnVsayBQcmludCBEb2N1bWVudCBjcmVhdGVkICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOwogICAgfSBlbHNlIHsKICAgICAgICBpZiAoZG9jVHlwZT09PSIiKSB7IGRvY1R5cGU9IkZBWCI7IH0KICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJOZXciKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiRWxpZ2liaWxpdHkiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIHNmQ29udGFjdElkKTsKICAgICAgICAvKiBNU0gxNzExMjggdXNlIGxpYnJhcnkgdmFsdWVzCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJBY2NvdW50SWQiLCAiMDAxNEIwMDAwMFYxZ0p6UUFKIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgIjAwRzRCMDAwMDAxSTl1YSIpOyAqLwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiQWNjb3VudElkIiwgekRhdGEuYWNjb3VudElkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5wYXBRdWV1ZUlkKTsKICAgICAgICAvKiBzZXQgdGhlIHpQYXBlciB3b3JrZmxvdyBmaWVsZHMgKi8KICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnBhcENhc2VSZWNvcmRUeXBlSWQpOwogICAgICAgIGNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgIlBBT1MgRG9jdW1lbnQgUmVjZWl2ZWQgT24gIiArIGZvcm1hdE5vdywgYXJyT2ZQYWlycyk7CiAgICB9CiAgICByZXR1cm4gY2FzZUlkOwp9Owo="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* CMA171009 Created zAbbVieLibrary */
//AN20180713 this library only contains functions that are used for integration with the PAOS system.
//AM20190808 this is a test comment for testing org to org

zData.createStack = function(doc, sfContactId, sfCaseId, status) {
    alert("createStack");
    var zType = doc.X("X_docType");
    /*
      One of "PAOS Registration", "PAOS Application", "PAOS Document"
    */
    zType = "MISC:Miscellaneous";
    var zp = "ZPAPER__";
    var zStack = zp + "zStack__c";
    var formatNow = getCurDateAndTime(doc);

    /* MSH171016 look up contact info so prepop will work */
    var contactFlds = getSFFields(doc, "Contact", "Name,FirstName,LastName,Birthdate", null, sfContactId);
    contactFlds += "";
    alert("@@@@ contactFlds read from Salesforce: " + contactFlds);
    var firstName = X(doc, "FirstName", contactFlds);
    var lastName = X(doc, "LastName", contactFlds);
    var dob = X(doc, "Birthdate", contactFlds);
    var name = X(doc, "Name", contactFlds);

    var caseFlds = getSFFields(doc, "Case", "CaseNumber", null, sfCaseId);
    caseFlds += "";
    alert("@@@@ caseFlds read from Salesforce: " + caseFlds);
    var caseNumber = X(doc, "CaseNumber", caseFlds);

    var arrOfPairs = [];
    arrOfPairs.push(zp + "faxType__c", zType);
    arrOfPairs.push(zp + "Priority__c", "Medium");
    arrOfPairs.push(zp + "Status__c", status);
    /* MSH180213 #45879 */
    arrOfPairs.push("Triage_Status__c", status);
    arrOfPairs.push(zp + "Channel__c", "PAOS");
    arrOfPairs.push(zp + "latestFax__c", formatNow);
    arrOfPairs.push(zp + "receivedId__c", doc.dbID);
    arrOfPairs.push(zp + "newFax__c", "true");
    arrOfPairs.push(zp + "Pages__c", X(doc, "X_pages"));
    //if (zData.ownerId) { arrOfPairs.push("OwnerId", zData.ownerId); }
    arrOfPairs.push("OwnerId", zData.papQueueId); //AN20180713 set the Stack owner to the PAP queue
    arrOfPairs.push(zp + "Program_Name__c", zData.classification);
    arrOfPairs.push(zp + "sentFaxTo__c", doc.deliveredTo); /* ERS170628 caller id */
    arrOfPairs.push(zp + "From__c", doc.deliveredFrom);
    arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); /* MSH170817 added */
    arrOfPairs.push(zp + "Stage__c", "Received"); /* ERS170731 #40593 */
    
	//AN20190117 kludgey workaround for the fact that PAOS uploads don't have a deliveredTo fax number value
	if (zData.classification == null || zData.classification == undefined){
		arrOfPairs.push(zp + "Classification__c", zData.classification);
	}
	else {
		alert("@@@ zData.classifcation is blank - setting to PAP");
		arrOfPairs.push(zp + "Classification__c", "PAP");
	}
    arrOfPairs.push(zp + "Patient__c", sfContactId);
    /* MSH171016 added */
    arrOfPairs.push(zp + "FirstName__c", firstName);
    arrOfPairs.push(zp + "LastName__c", lastName);
    /* arrOfPairs.push(zp + "Name__c", name); */
    
	//AN20190117 kludgey fix for a blank DOB problem
	if (dob){
		arrOfPairs.push(zp + "Birthdate__c", dob);
	}
	
    arrOfPairs.push(zp + "Case__c", sfCaseId);

    var sfStackId = createAndAttach(doc, zStack, "New Stack received on " + formatNow, arrOfPairs);
    alert("#### Stack Received. Attached to: " + sfStackId);
    var attachPath = X(doc, "X_attachedTo");
    alert("#### attachPath: " + attachPath);

    arrOfPairs = [];
    arrOfPairs.push("db-label", "New Stack received on " + formatNow);
    arrOfPairs.push("db-BATES", sfStackId + "-STACK");
    arrOfPairs.push("X_sfStackId", sfStackId); /* ERS170727 #40447 */
    /* MSH171016 get prepop to work on DE panel */
    arrOfPairs.push("X_ZPAPER__Classification__c", zData.classification);
    arrOfPairs.push("X_ZPAPER__Case__r.CaseNumber", caseNumber);
    arrOfPairs.push("X_ZPAPER__Patient__c", sfContactId);
    arrOfPairs.push("X_ZPAPER__Patient__r.Name", firstName + " " + lastName);
    arrOfPairs.push("X_ZPAPER__FirstName__c", firstName);
    arrOfPairs.push("X_ZPAPER__LastName__c", lastName);
    updateDB(doc, arrOfPairs);
    return sfStackId;
};

zData.createCase = function(doc, sfContactId) {
    alert("createCase");
    /* MSH171128 debugging */
    alert("caseRecordTypeId = " + zData.papCaseRecordTypeId);
    /* create a new Patient Assistance Program case */
    var formatNow = getCurDateAndTime(doc);
    var arrOfPairs = [];
    /* var recTypeID = "01236000000s8iN"; //ERS170731 get from deploymentInfo */
    /* arrOfPairs.push("RecordTypeId", recTypeID); */
    var docType=X(doc, "X_ZPAPER__faxType__c");
    var caseId = "";
    /* MSH180123 #44653 bulk print */
    if (0 === sfContactId) {
        docType = "Bulk Print";
        arrOfPairs.push("ZPAPER__newFax__c", "true");
        arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
        arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
        arrOfPairs.push("RecordTypeId", zData.bulkPrintRecordTypeId);
        /* MSH180202 updated label */
        caseId = createAndAttach(doc, "Case", "Bulk Print Document created " + formatNow, arrOfPairs);
    } else {
        if (docType==="") { docType="FAX"; }
        arrOfPairs.push("Status", "New");
        arrOfPairs.push("Type", "Eligibility");
        arrOfPairs.push("ContactId", sfContactId);
        /* MSH171128 use library values
        arrOfPairs.push("AccountId", "0014B00000V1gJzQAJ");
        arrOfPairs.push("OwnerId", "00G4B000001I9ua"); */
        arrOfPairs.push("AccountId", zData.accountId);
        arrOfPairs.push("OwnerId", zData.papQueueId);
        /* set the zPaper workflow fields */
        arrOfPairs.push("ZPAPER__newFax__c", "true");
        arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
        arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
        arrOfPairs.push("RecordTypeId", zData.papCaseRecordTypeId);
        caseId = createAndAttach(doc, "Case", "PAOS Document Received On " + formatNow, arrOfPairs);
    }
    return caseId;
};

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
