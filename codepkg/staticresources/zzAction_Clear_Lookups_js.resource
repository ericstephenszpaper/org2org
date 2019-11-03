<!--
// Name: Clear Lookups
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: PV191028 added text fields
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-28 18:50:14","active":true,"button":"Clear Lookups","name":"Clear Lookups","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Clear Lookups","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIlRPRE8gZ2V0IHRoZSB2YWxpZGF0aW9uIHNjcmlwdHMgaW50byBTdGF0aWMgUmVzb3VyY2VzIik7Ci8vRVJTMTkwODE0IGFkZGVkIFBhdGllbnRBY2NvdW50IGZpZWxkcwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgInZhciBlPX5aUEFQRVJfX0JpcnRoZGF0ZV9fYyxaUEFQRVJfX0JpcnRoZGF0ZV9fY19yZWFkYWJsZSxaUEFQRVJfX0ZpcnN0TmFtZV9fYyxaUEFQRVJfX0xhc3ROYW1lX19jLFpQQVBFUl9fUGhvbmVfX2MsWlBBUEVSX19DYXNlX19jLFpQQVBFUl9fQ2FzZV9fY19DYXNlTnVtYmVyLFpQQVBFUl9fUHJvdmlkZXJfX2MsWlBBUEVSX19Qcm92aWRlcl9fY19OYW1lLFpQQVBFUl9fUGF0aWVudF9fYyxaUEFQRVJfX1BhdGllbnRfX2NfTmFtZSxaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jLFpQQVBFUl9fUGF0aWVudEFjY291bnRfX2NfTmFtZX4uc3BsaXQofix+KTtmb3IgKGkgaW4gZSkge3ZhciBlbGU9ZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoZVtpXSk7IGlmIChlbGUpIHtlbGUudmFsdWU9fn47fX0iKTsvL1BWMTkxMDI4IGFkZGVkIHRleHQgZmllbGRzCgo="},"ordinal":13}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("TODO get the validation scripts into Static Resources");
//ERS190814 added PatientAccount fields
addPostExecutionScript(doc, "var e=~ZPAPER__Birthdate__c,ZPAPER__Birthdate__c_readable,ZPAPER__FirstName__c,ZPAPER__LastName__c,ZPAPER__Phone__c,ZPAPER__Case__c,ZPAPER__Case__c_CaseNumber,ZPAPER__Provider__c,ZPAPER__Provider__c_Name,ZPAPER__Patient__c,ZPAPER__Patient__c_Name,ZPAPER__PatientAccount__c,ZPAPER__PatientAccount__c_Name~.split(~,~);for (i in e) {var ele=document.getElementById(e[i]); if (ele) {ele.value=~~;}}");//PV191028 added text fields


//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gY2xlYXJMb29rdXBGaWVsZHMoKSB7Cglkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnWlBBUEVSX19DYXNlX19jJykudmFsdWUgPSAiIjsKCWRvY3VtZW50LmdldEVsZW1lbnRCeUlkKCdaUEFQRVJfX0Nhc2VfX2NfQ2FzZU51bWJlcicpLnZhbHVlID0gIiI7Cglkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnWlBBUEVSX19Qcm92aWRlcl9fYycpLnZhbHVlID0gIiI7Cglkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnWlBBUEVSX19Qcm92aWRlcl9fY19OYW1lJykudmFsdWUgPSAiIjsKCWRvY3VtZW50LmdldEVsZW1lbnRCeUlkKCdaUEFQRVJfX1BhdGllbnRfX2MnKS52YWx1ZSA9ICIiOwoJZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoJ1pQQVBFUl9fUGF0aWVudF9fY19OYW1lJykudmFsdWUgPSAiIjsKCXJldHVybiBmYWxzZTsKfQovL2NsZWFyTG9va3VwRmllbGRzKCk7Ci8vcmV0dXJuIGZhbHNlOwovL0VSUzE3MDYyOCB0cnkgaXQgc2VydmVyc2lkZQpyZXR1cm4gdHJ1ZTsgCg==
//--- RULE VALIDATION CODE - END ---

</script>
