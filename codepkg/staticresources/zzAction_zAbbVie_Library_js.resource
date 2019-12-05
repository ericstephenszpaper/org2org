<!--
// Name: zAbbVie Library
// Committer: andrew@zpaper.com
// Update: comment cleanup
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-30 15:24:30","evalContinue":"true","active":true,"button":"","name":"zAbbVie Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"Library","operation":"ne"}]},"consequence":{"doit":"LyogQ01BMTcxMDA5IENyZWF0ZWQgekFiYlZpZUxpYnJhcnkgKi8KLy9BTjIwMTgwNzEzIHRoaXMgbGlicmFyeSBvbmx5IGNvbnRhaW5zIGZ1bmN0aW9ucyB0aGF0IGFyZSB1c2VkIGZvciBpbnRlZ3JhdGlvbiB3aXRoIHRoZSBQQU9TIHN5c3RlbS4KCgp6RGF0YS5jcmVhdGVTdGFjayA9IGZ1bmN0aW9uKGRvYywgc2ZDb250YWN0SWQsIHNmQ2FzZUlkLCBzdGF0dXMpIHsKICAgIGFsZXJ0KCJjcmVhdGVTdGFjayIpOwogICAgdmFyIHpUeXBlID0gZG9jLlgoIlhfZG9jVHlwZSIpOwogICAgLyoKICAgICAgT25lIG9mICJQQU9TIFJlZ2lzdHJhdGlvbiIsICJQQU9TIEFwcGxpY2F0aW9uIiwgIlBBT1MgRG9jdW1lbnQiCiAgICAqLwogICAgelR5cGUgPSAiTUlTQzpNaXNjZWxsYW5lb3VzIjsKICAgIHZhciB6cCA9ICJaUEFQRVJfXyI7CiAgICB2YXIgelN0YWNrID0genAgKyAielN0YWNrX19jIjsKICAgIHZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwoKICAgIC8qIE1TSDE3MTAxNiBsb29rIHVwIGNvbnRhY3QgaW5mbyBzbyBwcmVwb3Agd2lsbCB3b3JrICovCiAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIk5hbWUsRmlyc3ROYW1lLExhc3ROYW1lLEJpcnRoZGF0ZSIsIG51bGwsIHNmQ29udGFjdElkKTsKICAgIGNvbnRhY3RGbGRzICs9ICIiOwogICAgYWxlcnQoIkBAQEAgY29udGFjdEZsZHMgcmVhZCBmcm9tIFNhbGVzZm9yY2U6ICIgKyBjb250YWN0Rmxkcyk7CiAgICB2YXIgZmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICB2YXIgbGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgdmFyIGRvYiA9IFgoZG9jLCAiQmlydGhkYXRlIiwgY29udGFjdEZsZHMpOwogICAgdmFyIG5hbWUgPSBYKGRvYywgIk5hbWUiLCBjb250YWN0Rmxkcyk7CgogICAgdmFyIGNhc2VGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ2FzZSIsICJDYXNlTnVtYmVyIiwgbnVsbCwgc2ZDYXNlSWQpOwogICAgY2FzZUZsZHMgKz0gIiI7CiAgICBhbGVydCgiQEBAQCBjYXNlRmxkcyByZWFkIGZyb20gU2FsZXNmb3JjZTogIiArIGNhc2VGbGRzKTsKICAgIHZhciBjYXNlTnVtYmVyID0gWChkb2MsICJDYXNlTnVtYmVyIiwgY2FzZUZsZHMpOwoKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiZmF4VHlwZV9fYyIsIHpUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJTdGF0dXNfX2MiLCBzdGF0dXMpOwogICAgLyogTVNIMTgwMjEzICM0NTg3OSAqLwogICAgYXJyT2ZQYWlycy5wdXNoKCJUcmlhZ2VfU3RhdHVzX19jIiwgc3RhdHVzKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJDaGFubmVsX19jIiwgIlBBT1MiKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJsYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAibmV3RmF4X19jIiwgInRydWUiKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKCiAgICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5wYXBRdWV1ZUlkKTsgLy9BTjIwMTgwNzEzIHNldCB0aGUgU3RhY2sgb3duZXIgdG8gdGhlIFBBUCBxdWV1ZQogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJzZW50RmF4VG9fX2MiLCBkb2MuZGVsaXZlcmVkVG8pOyAvKiBFUlMxNzA2MjggY2FsbGVyIGlkICovCiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiRnJvbV9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLyogTVNIMTcwODE3IGFkZGVkICovCiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgLyogRVJTMTcwNzMxICM0MDU5MyAqLwogICAgCgkvL0FOMjAxOTAxMTcga2x1ZGdleSB3b3JrYXJvdW5kIGZvciB0aGUgZmFjdCB0aGF0IFBBT1MgdXBsb2FkcyBkb24ndCBoYXZlIGEgZGVsaXZlcmVkVG8gZmF4IG51bWJlciB2YWx1ZQoJaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09IG51bGwgfHwgekRhdGEuY2xhc3NpZmljYXRpb24gPT0gdW5kZWZpbmVkKXsKCQlhcnJPZlBhaXJzLnB1c2goenAgKyAiQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7Cgl9CgllbHNlIHsKCQlhbGVydCgiQEBAIHpEYXRhLmNsYXNzaWZjYXRpb24gaXMgYmxhbmsgLSBzZXR0aW5nIHRvIFBBUCIpOwoJCWFyck9mUGFpcnMucHVzaCh6cCArICJDbGFzc2lmaWNhdGlvbl9fYyIsICJQQVAiKTsKCX0KICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJQYXRpZW50X19jIiwgc2ZDb250YWN0SWQpOwogICAgLyogTVNIMTcxMDE2IGFkZGVkICovCiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiRmlyc3ROYW1lX19jIiwgZmlyc3ROYW1lKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJMYXN0TmFtZV9fYyIsIGxhc3ROYW1lKTsKICAgIAoJLy9BTjIwMTkwMTE3IGtsdWRnZXkgZml4IGZvciBhIGJsYW5rIERPQiBwcm9ibGVtCglpZiAoZG9iKXsKCQlhcnJPZlBhaXJzLnB1c2goenAgKyAiQmlydGhkYXRlX19jIiwgZG9iKTsKCX0KCQogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIkNhc2VfX2MiLCBzZkNhc2VJZCk7CgogICAgdmFyIHNmU3RhY2tJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpTdGFjaywgIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93LCBhcnJPZlBhaXJzKTsKICAgIGFsZXJ0KCIjIyMjIFN0YWNrIFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmU3RhY2tJZCk7CiAgICB2YXIgYXR0YWNoUGF0aCA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CiAgICBhbGVydCgiIyMjIyBhdHRhY2hQYXRoOiAiICsgYXR0YWNoUGF0aCk7CgogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJOZXcgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZTdGFja0lkICsgIi1TVEFDSyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsIHNmU3RhY2tJZCk7IC8qIEVSUzE3MDcyNyAjNDA0NDcgKi8KICAgIC8qIE1TSDE3MTAxNiBnZXQgcHJlcG9wIHRvIHdvcmsgb24gREUgcGFuZWwgKi8KICAgIGFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1pQQVBFUl9fQ2FzZV9fci5DYXNlTnVtYmVyIiwgY2FzZU51bWJlcik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19QYXRpZW50X19jIiwgc2ZDb250YWN0SWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lIiwgZmlyc3ROYW1lICsgIiAiICsgbGFzdE5hbWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIiwgZmlyc3ROYW1lKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX0xhc3ROYW1lX19jIiwgbGFzdE5hbWUpOwogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgIHJldHVybiBzZlN0YWNrSWQ7Cn07Cgp6RGF0YS5jcmVhdGVDYXNlID0gZnVuY3Rpb24oZG9jLCBzZkNvbnRhY3RJZCkgewogICAgYWxlcnQoImNyZWF0ZUNhc2UiKTsKICAgIC8qIE1TSDE3MTEyOCBkZWJ1Z2dpbmcgKi8KICAgIGFsZXJ0KCJjYXNlUmVjb3JkVHlwZUlkID0gIiArIHpEYXRhLnBhcENhc2VSZWNvcmRUeXBlSWQpOwogICAgLyogY3JlYXRlIGEgbmV3IFBhdGllbnQgQXNzaXN0YW5jZSBQcm9ncmFtIGNhc2UgKi8KICAgIHZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKCiAgICB2YXIgZG9jVHlwZT1YKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7CiAgICB2YXIgY2FzZUlkID0gIiI7CiAgICAvKiBNU0gxODAxMjMgIzQ0NjUzIGJ1bGsgcHJpbnQgKi8KICAgIGlmICgwID09PSBzZkNvbnRhY3RJZCkgewogICAgICAgIGRvY1R5cGUgPSAiQnVsayBQcmludCI7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5idWxrUHJpbnRSZWNvcmRUeXBlSWQpOwogICAgICAgIC8qIE1TSDE4MDIwMiB1cGRhdGVkIGxhYmVsICovCiAgICAgICAgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCAiQnVsayBQcmludCBEb2N1bWVudCBjcmVhdGVkICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOwogICAgfSBlbHNlIHsKICAgICAgICBpZiAoZG9jVHlwZT09PSIiKSB7IGRvY1R5cGU9IkZBWCI7IH0KICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJOZXciKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiRWxpZ2liaWxpdHkiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIHNmQ29udGFjdElkKTsKICAgICAgICAvKiBNU0gxNzExMjggdXNlIGxpYnJhcnkgdmFsdWVzCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJBY2NvdW50SWQiLCAiMDAxNEIwMDAwMFYxZ0p6UUFKIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgIjAwRzRCMDAwMDAxSTl1YSIpOyAqLwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiQWNjb3VudElkIiwgekRhdGEuYWNjb3VudElkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5wYXBRdWV1ZUlkKTsKICAgICAgICAvKiBzZXQgdGhlIHpQYXBlciB3b3JrZmxvdyBmaWVsZHMgKi8KICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnBhcENhc2VSZWNvcmRUeXBlSWQpOwogICAgICAgIGNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgIlBBT1MgRG9jdW1lbnQgUmVjZWl2ZWQgT24gIiArIGZvcm1hdE5vdywgYXJyT2ZQYWlycyk7CiAgICB9CiAgICByZXR1cm4gY2FzZUlkOwp9Owo="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* CMA171009 Created zAbbVieLibrary */
//AN20180713 this library only contains functions that are used for integration with the PAOS system.


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
