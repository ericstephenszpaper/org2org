<!--
// Name: Clear Lookups
// Committer: cory.newey@zpaper.com
// Update: added date field
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-19 03:14:09","active":true,"button":"Clear Lookups","name":"Clear Lookups","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Clear Lookups","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIlRPRE8gZ2V0IHRoZSB2YWxpZGF0aW9uIHNjcmlwdHMgaW50byBTdGF0aWMgUmVzb3VyY2VzIik7Ci8vRVJTMTkwODE0IGFkZGVkIFBhdGllbnRBY2NvdW50IGZpZWxkcwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgInZhciBlPX5aUEFQRVJfX0JpcnRoZGF0ZV9fYyxaUEFQRVJfX0JpcnRoZGF0ZV9fY19yZWFkYWJsZSxaUEFQRVJfX0ZpcnN0TmFtZV9fYyxaUEFQRVJfX0xhc3ROYW1lX19jLFpQQVBFUl9fUGhvbmVfX2MsWlBBUEVSX19DYXNlX19jLFpQQVBFUl9fQ2FzZV9fY19DYXNlTnVtYmVyLFpQQVBFUl9fUHJvdmlkZXJfX2MsWlBBUEVSX19Qcm92aWRlcl9fY19OYW1lLFpQQVBFUl9fUGF0aWVudF9fYyxaUEFQRVJfX1BhdGllbnRfX2NfTmFtZSxaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jLFpQQVBFUl9fUGF0aWVudEFjY291bnRfX2NfTmFtZSxTZXJ2aWNlX1JlcXVlc3RlZF9EYXRlX19jLFNlcnZpY2VfUmVxdWVzdGVkX0RhdGVfX2NfcmVhZGFibGV+LnNwbGl0KH4sfik7Zm9yIChpIGluIGUpIHt2YXIgZWxlPWRvY3VtZW50LmdldEVsZW1lbnRCeUlkKGVbaV0pOyBpZiAoZWxlKSB7ZWxlLnZhbHVlPX5+O319Iik7Ly9QVjE5MTAyOCBhZGRlZCB0ZXh0IGZpZWxkcwoK"},"ordinal":13}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("TODO get the validation scripts into Static Resources");
//ERS190814 added PatientAccount fields
addPostExecutionScript(doc, "var e=~ZPAPER__Birthdate__c,ZPAPER__Birthdate__c_readable,ZPAPER__FirstName__c,ZPAPER__LastName__c,ZPAPER__Phone__c,ZPAPER__Case__c,ZPAPER__Case__c_CaseNumber,ZPAPER__Provider__c,ZPAPER__Provider__c_Name,ZPAPER__Patient__c,ZPAPER__Patient__c_Name,ZPAPER__PatientAccount__c,ZPAPER__PatientAccount__c_Name,Service_Requested_Date__c,Service_Requested_Date__c_readable~.split(~,~);for (i in e) {var ele=document.getElementById(e[i]); if (ele) {ele.value=~~;}}");//PV191028 added text fields


//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
