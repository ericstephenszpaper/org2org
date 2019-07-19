<!--
// Name: zOccFitLibrary
// Committer: Prathyusha.vasireddy2zpaper.com
// Update: updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-05-16 18:06:19","evalContinue":"true","active":true,"button":"","name":"zOccFitLibrary","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"Library","operation":"ne"}]},"consequence":{"doit":"LyogQ01BMTcxMDA5IENyZWF0ZWQgekFiYlZpZUxpYnJhcnkgKi8KLy9BTjIwMTgwNzEzIHRoaXMgbGlicmFyeSBvbmx5IGNvbnRhaW5zIGZ1bmN0aW9ucyB0aGF0IGFyZSB1c2VkIGZvciBpbnRlZ3JhdGlvbiB3aXRoIHRoZSBQQU9TIHN5c3RlbS4KCnpEYXRhLmNyZWF0ZVN0YWNrID0gZnVuY3Rpb24oZG9jLCBzZkNvbnRhY3RJZCwgc2ZDYXNlSWQsIHN0YXR1cykgewogICAgYWxlcnQoImNyZWF0ZVN0YWNrIik7CiAgICB2YXIgelR5cGUgPSBkb2MuWCgiWF9kb2NUeXBlIik7CiAgICAvKgogICAgICBPbmUgb2YgIlBBT1MgUmVnaXN0cmF0aW9uIiwgIlBBT1MgQXBwbGljYXRpb24iLCAiUEFPUyBEb2N1bWVudCIKICAgICovCiAgICB6VHlwZSA9ICJNSVNDOk1pc2NlbGxhbmVvdXMiOwogICAgdmFyIHpwID0gIlpQQVBFUl9fIjsKICAgIHZhciB6U3RhY2sgPSB6cCArICJ6U3RhY2tfX2MiOwogICAgdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CgogICAgLyogTVNIMTcxMDE2IGxvb2sgdXAgY29udGFjdCBpbmZvIHNvIHByZXBvcCB3aWxsIHdvcmsgKi8KICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiTmFtZSxGaXJzdE5hbWUsTGFzdE5hbWUsQmlydGhkYXRlIiwgbnVsbCwgc2ZDb250YWN0SWQpOwogICAgY29udGFjdEZsZHMgKz0gIiI7CiAgICBhbGVydCgiQEBAQCBjb250YWN0RmxkcyByZWFkIGZyb20gU2FsZXNmb3JjZTogIiArIGNvbnRhY3RGbGRzKTsKICAgIHZhciBmaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgIHZhciBsYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICB2YXIgZG9iID0gWChkb2MsICJCaXJ0aGRhdGUiLCBjb250YWN0Rmxkcyk7CiAgICB2YXIgbmFtZSA9IFgoZG9jLCAiTmFtZSIsIGNvbnRhY3RGbGRzKTsKCiAgICB2YXIgY2FzZUZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDYXNlIiwgIkNhc2VOdW1iZXIiLCBudWxsLCBzZkNhc2VJZCk7CiAgICBjYXNlRmxkcyArPSAiIjsKICAgIGFsZXJ0KCJAQEBAIGNhc2VGbGRzIHJlYWQgZnJvbSBTYWxlc2ZvcmNlOiAiICsgY2FzZUZsZHMpOwogICAgdmFyIGNhc2VOdW1iZXIgPSBYKGRvYywgIkNhc2VOdW1iZXIiLCBjYXNlRmxkcyk7CgogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJmYXhUeXBlX19jIiwgelR5cGUpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIlByaW9yaXR5X19jIiwgIk1lZGl1bSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIlN0YXR1c19fYyIsIHN0YXR1cyk7CiAgICAvKiBNU0gxODAyMTMgIzQ1ODc5ICovCiAgICBhcnJPZlBhaXJzLnB1c2goIlRyaWFnZV9TdGF0dXNfX2MiLCBzdGF0dXMpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIkNoYW5uZWxfX2MiLCAiUEFPUyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgImxhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJuZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIlBhZ2VzX19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwogICAgLy9pZiAoekRhdGEub3duZXJJZCkgeyBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5vd25lcklkKTsgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEucGFwUXVldWVJZCk7IC8vQU4yMDE4MDcxMyBzZXQgdGhlIFN0YWNrIG93bmVyIHRvIHRoZSBQQVAgcXVldWUKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJQcm9ncmFtX05hbWVfX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsgLyogRVJTMTcwNjI4IGNhbGxlciBpZCAqLwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIkZyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBhcnJPZlBhaXJzLnB1c2goInpDYWxsZXJfSURfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7IC8qIE1TSDE3MDgxNyBhZGRlZCAqLwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IC8qIEVSUzE3MDczMSAjNDA1OTMgKi8KICAgIAoJLy9BTjIwMTkwMTE3IGtsdWRnZXkgd29ya2Fyb3VuZCBmb3IgdGhlIGZhY3QgdGhhdCBQQU9TIHVwbG9hZHMgZG9uJ3QgaGF2ZSBhIGRlbGl2ZXJlZFRvIGZheCBudW1iZXIgdmFsdWUKCWlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSBudWxsIHx8IHpEYXRhLmNsYXNzaWZpY2F0aW9uID09IHVuZGVmaW5lZCl7CgkJYXJyT2ZQYWlycy5wdXNoKHpwICsgIkNsYXNzaWZpY2F0aW9uX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwoJfQoJZWxzZSB7CgkJYWxlcnQoIkBAQCB6RGF0YS5jbGFzc2lmY2F0aW9uIGlzIGJsYW5rIC0gc2V0dGluZyB0byBQQVAiKTsKCQlhcnJPZlBhaXJzLnB1c2goenAgKyAiQ2xhc3NpZmljYXRpb25fX2MiLCAiUEFQIik7Cgl9CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiUGF0aWVudF9fYyIsIHNmQ29udGFjdElkKTsKICAgIC8qIE1TSDE3MTAxNiBhZGRlZCAqLwogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIkZpcnN0TmFtZV9fYyIsIGZpcnN0TmFtZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiTGFzdE5hbWVfX2MiLCBsYXN0TmFtZSk7CiAgICAvKiBhcnJPZlBhaXJzLnB1c2goenAgKyAiTmFtZV9fYyIsIG5hbWUpOyAqLwogICAgCgkvL0FOMjAxOTAxMTcga2x1ZGdleSBmaXggZm9yIGEgYmxhbmsgRE9CIHByb2JsZW0KCWlmIChkb2IpewoJCWFyck9mUGFpcnMucHVzaCh6cCArICJCaXJ0aGRhdGVfX2MiLCBkb2IpOwoJfQoJCiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiQ2FzZV9fYyIsIHNmQ2FzZUlkKTsKCiAgICB2YXIgc2ZTdGFja0lkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCAiTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOwogICAgYWxlcnQoIiMjIyMgU3RhY2sgUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZTdGFja0lkKTsKICAgIHZhciBhdHRhY2hQYXRoID0gWChkb2MsICJYX2F0dGFjaGVkVG8iKTsKICAgIGFsZXJ0KCIjIyMjIGF0dGFjaFBhdGg6ICIgKyBhdHRhY2hQYXRoKTsKCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZlN0YWNrSWQgKyAiLVNUQUNLIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfc2ZTdGFja0lkIiwgc2ZTdGFja0lkKTsgLyogRVJTMTcwNzI3ICM0MDQ0NyAqLwogICAgLyogTVNIMTcxMDE2IGdldCBwcmVwb3AgdG8gd29yayBvbiBERSBwYW5lbCAqLwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1pQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19DYXNlX19yLkNhc2VOdW1iZXIiLCBjYXNlTnVtYmVyKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX1BhdGllbnRfX2MiLCBzZkNvbnRhY3RJZCk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19QYXRpZW50X19yLk5hbWUiLCBmaXJzdE5hbWUgKyAiICIgKyBsYXN0TmFtZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiLCBmaXJzdE5hbWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiLCBsYXN0TmFtZSk7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgcmV0dXJuIHNmU3RhY2tJZDsKfTsKCnpEYXRhLmNyZWF0ZUNhc2UgPSBmdW5jdGlvbihkb2MsIHNmQ29udGFjdElkKSB7CiAgICBhbGVydCgiY3JlYXRlQ2FzZSIpOwogICAgLyogTVNIMTcxMTI4IGRlYnVnZ2luZyAqLwogICAgYWxlcnQoImNhc2VSZWNvcmRUeXBlSWQgPSAiICsgekRhdGEucGFwQ2FzZVJlY29yZFR5cGVJZCk7CiAgICAvKiBjcmVhdGUgYSBuZXcgUGF0aWVudCBBc3Npc3RhbmNlIFByb2dyYW0gY2FzZSAqLwogICAgdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgLyogdmFyIHJlY1R5cGVJRCA9ICIwMTIzNjAwMDAwMHM4aU4iOyAvL0VSUzE3MDczMSBnZXQgZnJvbSBkZXBsb3ltZW50SW5mbyAqLwogICAgLyogYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCByZWNUeXBlSUQpOyAqLwogICAgdmFyIGRvY1R5cGU9WChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOwogICAgdmFyIGNhc2VJZCA9ICIiOwogICAgLyogTVNIMTgwMTIzICM0NDY1MyBidWxrIHByaW50ICovCiAgICBpZiAoMCA9PT0gc2ZDb250YWN0SWQpIHsKICAgICAgICBkb2NUeXBlID0gIkJ1bGsgUHJpbnQiOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuYnVsa1ByaW50UmVjb3JkVHlwZUlkKTsKICAgICAgICAvKiBNU0gxODAyMDIgdXBkYXRlZCBsYWJlbCAqLwogICAgICAgIGNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgIkJ1bGsgUHJpbnQgRG9jdW1lbnQgY3JlYXRlZCAiICsgZm9ybWF0Tm93LCBhcnJPZlBhaXJzKTsKICAgIH0gZWxzZSB7CiAgICAgICAgaWYgKGRvY1R5cGU9PT0iIikgeyBkb2NUeXBlPSJGQVgiOyB9CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCAiTmV3Iik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIkVsaWdpYmlsaXR5Iik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCBzZkNvbnRhY3RJZCk7CiAgICAgICAgLyogTVNIMTcxMTI4IHVzZSBsaWJyYXJ5IHZhbHVlcwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiQWNjb3VudElkIiwgIjAwMTRCMDAwMDBWMWdKelFBSiIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsICIwMEc0QjAwMDAwMUk5dWEiKTsgKi8KICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIHpEYXRhLmFjY291bnRJZCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEucGFwUXVldWVJZCk7CiAgICAgICAgLyogc2V0IHRoZSB6UGFwZXIgd29ya2Zsb3cgZmllbGRzICovCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5wYXBDYXNlUmVjb3JkVHlwZUlkKTsKICAgICAgICBjYXNlSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ2FzZSIsICJQQU9TIERvY3VtZW50IFJlY2VpdmVkIE9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOwogICAgfQogICAgcmV0dXJuIGNhc2VJZDsKfTsK"},"ordinal":20}

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
