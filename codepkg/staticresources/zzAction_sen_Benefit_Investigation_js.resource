<!--
// Name: Janssen_Benefit_Investigation
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV201125 Updated for static resources
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-11-25 20:26:35","active":true,"button":"BI_Wizard","name":"Janssen_Benefit_Investigation","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"BI","operation":"contains"}]},"consequence":{"doit":"YWxlcnQoIlRPRE8gZ2V0IHRoZSB2YWxpZGF0aW9uIHNjcmlwdHMgaW50byBTdGF0aWMgUmVzb3VyY2VzIik7IC8vRVJTMjAxMDMxIENSTiBpcyB0aGlzIGRvbmU/Ci8vRVJTMjAxMDE3ICM3NzI1MiBnZXQgdGhpcyBpbnRvIHRoZSB6ekFjdGlvbnMKLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgInZhciBlPX5aUEFQRVJfX0Nhc2VfX2MsWlBBUEVSX19DYXNlX19jX0Nhc2VOdW1iZXIsWlBBUEVSX19Qcm92aWRlcl9fYyxaUEFQRVJfX1Byb3ZpZGVyX19jX05hbWUsWlBBUEVSX19QYXRpZW50X19jLFpQQVBFUl9fUGF0aWVudF9fY19OYW1lfi5zcGxpdCh+LH4pO2ZvciAoaSBpbiBlKSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZChlW2ldKS52YWx1ZT1+fiIpOwovL0VSUzIwMTAzMSAjNzgzMTIgVE9ETyBjbGllbnQgc2lkZSB3aW5kb3cgb3BlbiA="},"ordinal":4}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("TODO get the validation scripts into Static Resources"); //ERS201031 CRN is this done?
//ERS201017 #77252 get this into the zzActions
//addPostExecutionScript(doc, "var e=~ZPAPER__Case__c,ZPAPER__Case__c_CaseNumber,ZPAPER__Provider__c,ZPAPER__Provider__c_Name,ZPAPER__Patient__c,ZPAPER__Patient__c_Name~.split(~,~);for (i in e) document.getElementById(e[i]).value=~~");
//ERS201031 #78312 TODO client side window open 
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
Ly9hbGVydCgiT3BlbiB0aGUgQkkgd2l6YXJkIik7IC8vRVJTMjAxMDMxICM3ODMxMgp2YXIgdXJsPSJodHRwczovLyIrImRvYy5kZXBsb3ltZW50SW5mby5zZlNlcnZlciIrIi9WRnBhZ2U/YXJnPTEiOwp1cmw9Imh0dHBzOi8vamFuc3NlbmNhcmVwYXRoLS1kZXZyZWwubXkuc2FsZXNmb3JjZS5jb20vNTAwMTkwMDAwMDZlOXlkP25vb3ZlcnJpZGU9MSI7CnVybD0iaHR0cHM6Ly9qYW5zc2VuY2FyZXBhdGgtLWRldnJlbC5teS5zYWxlc2ZvcmNlLmNvbS9hcGV4L0hVQl9CSV9XaXphcmQiOyAvL1RPRE8gQ1JOIHNmU2VydmVyCmlmICh3aW5kb3cubG9jYXRpb24uaHJlZi5pbmRleE9mKCJzYiIpPi0xKSB1cmw9dXJsLnJlcGxhY2UoImRldnJlbCIsInNpdCIpOy8vUFZAKTExMjUgWlVwZGF0ZWQgIzc4NTY2IAppZiAoY29uZmlybSh1cmwpKSB7CiAgICB2YXIgdz13aW5kb3cub3Blbih1cmwsInpCSSIsIm1lbnU9MCx3aWR0aD0xMDAwLGhlaWdodD04MDAscmVzaXphYmxlPTEiKTsKICAgIHcuZm9jdXMoKTsKICAgIHJldHVybiB0cnVlOwp9IGVsc2UgewogICAgcmV0dXJuIGZhbHNlOwp9
//--- RULE VALIDATION CODE - END ---

</script>
