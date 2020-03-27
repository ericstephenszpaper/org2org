<!--
// Name: Clear Lookups
// Committer: cory.newey@zpaper.com
// Update: Added Prescription and Clinical Services
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-12-18 23:10:54","active":true,"button":"Clear Lookups","name":"Clear Lookups","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Clear Lookups","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIlRPRE8gZ2V0IHRoZSB2YWxpZGF0aW9uIHNjcmlwdHMgaW50byBTdGF0aWMgUmVzb3VyY2VzIik7Ci8vRVJTMTkwODE0IGFkZGVkIFBhdGllbnRBY2NvdW50IGZpZWxkcwppZiAoJ0NhbmFkYV9Qcmlvcml0eV9EYXRhMl9XZWJfRm9ybScgPT09IFgoZG9jLCAiWF9sYXN0REVQYW5lbCIpKSB7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiIHRyeXsgdmFyIGU9flByZXNjcmlwdGlvbl9fYyxQcmVzY3JpcHRpb25fX2NfTmFtZSxDbGluaWNhbF9TZXJ2aWNlc19fYyxDbGluaWNhbF9TZXJ2aWNlc19fY19OYW1lLFpQQVBFUl9fQ2FzZV9fYyxaUEFQRVJfX0Nhc2VfX2NfQ2FzZU51bWJlcixTZXJ2aWNlX1JlcXVlc3RlZF9EYXRlX19jLFNlcnZpY2VfUmVxdWVzdGVkX0RhdGVfX2NfcmVhZGFibGVTcGVjaWFsX0F1dGhvcml6YXRpb25fX2MsU3BlY2lhbF9BdXRob3JpemF0aW9uX19jX05hbWUsTWVtYmVyX1BsYW5fX2MsTWVtYmVyX1BsYW5fX2NfTmFtZSxDb3ZlcmFnZV9CZW5lZml0X19jLENvdmVyYWdlX0JlbmVmaXRfX2NfTmFtZSxSZXBvcnRlZF9PdXRjb21lX19jLFJlcG9ydGVkX091dGNvbWVfX2NfTmFtZSxQaHlzaWNpYW5fX2MsUGh5c2ljaWFuX19jX05hbWV+LnNwbGl0KH4sfik7Zm9yIChpIGluIGUpIHt2YXIgZWxlPWRvY3VtZW50LmdldEVsZW1lbnRCeUlkKGVbaV0pOyBpZiAoZWxlKSB7ZWxlLnZhbHVlPX5+O319fSBjYXRjaChlKXsgYWxlcnQoZSk7IH0iKTsvL1BWMTkxMDI4IGFkZGVkIHRleHQgZmllbGRzCn0KZWxzZSB7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiIHRyeXsgdmFyIGU9flpQQVBFUl9fQmlydGhkYXRlX19jLFpQQVBFUl9fQmlydGhkYXRlX19jX3JlYWRhYmxlLFpQQVBFUl9fRmlyc3ROYW1lX19jLFpQQVBFUl9fTGFzdE5hbWVfX2MsWlBBUEVSX19QaG9uZV9fYyxaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jLFpQQVBFUl9fUGF0aWVudEFjY291bnRfX2NfTmFtZX4uc3BsaXQofix+KTtmb3IgKGkgaW4gZSkge3ZhciBlbGU9ZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoZVtpXSk7IGlmIChlbGUpIHtlbGUudmFsdWU9fn47fX19IGNhdGNoKGUpeyBhbGVydChlKTsgfSIpOy8vUFYxOTEwMjggYWRkZWQgdGV4dCBmaWVsZHMKfQo="},"ordinal":12}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("TODO get the validation scripts into Static Resources");
//ERS190814 added PatientAccount fields
if ('Canada_Priority_Data2_Web_Form' === X(doc, "X_lastDEPanel")) {
addPostExecutionScript(doc, " try{ var e=~Prescription__c,Prescription__c_Name,Clinical_Services__c,Clinical_Services__c_Name,ZPAPER__Case__c,ZPAPER__Case__c_CaseNumber,Service_Requested_Date__c,Service_Requested_Date__c_readableSpecial_Authorization__c,Special_Authorization__c_Name,Member_Plan__c,Member_Plan__c_Name,Coverage_Benefit__c,Coverage_Benefit__c_Name,Reported_Outcome__c,Reported_Outcome__c_Name,Physician__c,Physician__c_Name~.split(~,~);for (i in e) {var ele=document.getElementById(e[i]); if (ele) {ele.value=~~;}}} catch(e){ alert(e); }");//PV191028 added text fields
}
else {
addPostExecutionScript(doc, " try{ var e=~ZPAPER__Birthdate__c,ZPAPER__Birthdate__c_readable,ZPAPER__FirstName__c,ZPAPER__LastName__c,ZPAPER__Phone__c,ZPAPER__PatientAccount__c,ZPAPER__PatientAccount__c_Name~.split(~,~);for (i in e) {var ele=document.getElementById(e[i]); if (ele) {ele.value=~~;}}} catch(e){ alert(e); }");//PV191028 added text fields
}

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
