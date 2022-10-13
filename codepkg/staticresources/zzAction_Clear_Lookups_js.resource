<!--
// Name: Clear Lookups
// Committer: atharwa.samant@sparsolutions.com
// Update: removing classification
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2022-07-13 15:29:59","active":true,"button":"Clear History","name":"Clear Lookups","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Clear Lookups","operation":"equals"},{"name":"doc.X(\"X_buttonAction\")","value":"Clear History","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIlRPRE8gZ2V0IHRoZSB2YWxpZGF0aW9uIHNjcmlwdHMgaW50byBTdGF0aWMgUmVzb3VyY2VzIik7IC8vUFYyMTAxMDQgdXBkYXRlZAovL0VSUzE5MDgxNCBhZGRlZCBQYXRpZW50QWNjb3VudCBmaWVsZHMgLy9QVjIwMTIyMyB1cGRhdGVkCi8vYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJ2YXIgZT1+WlBBUEVSX19DYXNlX19jLFpQQVBFUl9fQ2FzZV9fY19DYXNlTnVtYmVyLFpQQVBFUl9fUHJvdmlkZXJfX2MsWlBBUEVSX19Qcm92aWRlcl9fY19OYW1lLFpQQVBFUl9fUGF0aWVudF9fYyxaUEFQRVJfX1BhdGllbnRfX2NfTmFtZSxaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jLFpQQVBFUl9fUGF0aWVudEFjY291bnRfX2NfTmFtZSxaUEFQRVJfX1Byb3ZpZGVyQ29udGFjdF9fYyxaUEFQRVJfX1Byb3ZpZGVyQ29udGFjdF9fY19OYW1lLHpQYXBlcl9Qcm9jZWR1cmVfQ29kZV8xX19jLHpQYXBlcl9Qcm9jZWR1cmVfQ29kZV8xX19jX05hbWUselBhcGVyX1Byb2NlZHVyZV9Db2RlXzJfX2MselBhcGVyX1Byb2NlZHVyZV9Db2RlXzJfX2NfTmFtZSx6UGFwZXJfUHJvY2VkdXJlX0NvZGVfM19fYyx6UGFwZXJfUHJvY2VkdXJlX0NvZGVfM19fY19OYW1lLFpQQVBFUl9EaWFnbm9zaXNfQ29kZV8xX19jLFpQQVBFUl9EaWFnbm9zaXNfQ29kZV8xX19jX05hbWUsWlBBUEVSX0RpYWdub3Npc19Db2RlXzJfX2MsWlBBUEVSX0RpYWdub3Npc19Db2RlXzJfX2NfTmFtZSxaUEFQRVJfRGlhZ25vc2lzX0NvZGVfM19fYyxaUEFQRVJfRGlhZ25vc2lzX0NvZGVfM19fY19OYW1lLH4uc3BsaXQofix+KTtmb3IgKGkgaW4gZSkge3ZhciBlbGU9ZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoZVtpXSk7IGlmIChlbGUpIHtlbGUudmFsdWU9fn47fX0iKTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJ2YXIgZT1+QWNjb3VudF9fYyxBY2NvdW50X19jX05hbWUsUHJvZHVjdF9fYyxQcm9kdWN0X19jX05hbWUsVGhlcmFweV9BcmVhX0RldGFpbHNfX2MsVGhlcmFweV9BcmVhX0RldGFpbHNfX2NfTmFtZSxEb2N1bWVudF9TaWduYXR1cmVfRGF0ZV9fY19yZWFkYWJsZSxaUEFQRVJfX2ZheFR5cGVfX2MsWlBBUEVSX19DYXNlX19jLFpQQVBFUl9fQ2FzZV9fY19DYXNlTnVtYmVyLH4uc3BsaXQofix+KTtmb3IgKGkgaW4gZSkge3ZhciBlbGU9ZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoZVtpXSk7IGlmIChlbGUpIHtlbGUudmFsdWU9fn47fX0iKTs="},"ordinal":15}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("TODO get the validation scripts into Static Resources"); //PV210104 updated
//ERS190814 added PatientAccount fields //PV201223 updated
//addPostExecutionScript(doc, "var e=~ZPAPER__Case__c,ZPAPER__Case__c_CaseNumber,ZPAPER__Provider__c,ZPAPER__Provider__c_Name,ZPAPER__Patient__c,ZPAPER__Patient__c_Name,ZPAPER__PatientAccount__c,ZPAPER__PatientAccount__c_Name,ZPAPER__ProviderContact__c,ZPAPER__ProviderContact__c_Name,zPaper_Procedure_Code_1__c,zPaper_Procedure_Code_1__c_Name,zPaper_Procedure_Code_2__c,zPaper_Procedure_Code_2__c_Name,zPaper_Procedure_Code_3__c,zPaper_Procedure_Code_3__c_Name,ZPAPER_Diagnosis_Code_1__c,ZPAPER_Diagnosis_Code_1__c_Name,ZPAPER_Diagnosis_Code_2__c,ZPAPER_Diagnosis_Code_2__c_Name,ZPAPER_Diagnosis_Code_3__c,ZPAPER_Diagnosis_Code_3__c_Name,~.split(~,~);for (i in e) {var ele=document.getElementById(e[i]); if (ele) {ele.value=~~;}}");
addPostExecutionScript(doc, "var e=~Account__c,Account__c_Name,Product__c,Product__c_Name,Therapy_Area_Details__c,Therapy_Area_Details__c_Name,Document_Signature_Date__c_readable,ZPAPER__faxType__c,ZPAPER__Case__c,ZPAPER__Case__c_CaseNumber,~.split(~,~);for (i in e) {var ele=document.getElementById(e[i]); if (ele) {ele.value=~~;}}");
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
