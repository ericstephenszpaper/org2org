<!--
// Name: Clear Lookups
// Committer: Prathyusha.vasireddy2zpaper.com
// Update: updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-09-29 15:13:01","active":true,"button":"Clear Lookups","name":"Clear Lookups","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Clear Lookups","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIlRPRE8gZ2V0IHRoZSB2YWxpZGF0aW9uIHNjcmlwdHMgaW50byBTdGF0aWMgUmVzb3VyY2VzIik7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAidmFyIGU9flpQQVBFUl9fQ2FzZV9fYyxaUEFQRVJfX0Nhc2VfX2NfQ2FzZU51bWJlcixaUEFQRVJfX1BhdGllbnRfX2MsWlBBUEVSX19QYXRpZW50X19jX05hbWUsWlBBUEVSX19QYXRpZW50X19jfi5zcGxpdCh+LH4pO2ZvciAoaSBpbiBlKSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZChlW2ldKS52YWx1ZT1+fiIpOw=="},"ordinal":9}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("TODO get the validation scripts into Static Resources");
addPostExecutionScript(doc, "var e=~ZPAPER__Case__c,ZPAPER__Case__c_CaseNumber,ZPAPER__Patient__c,ZPAPER__Patient__c_Name,ZPAPER__Patient__c~.split(~,~);for (i in e) document.getElementById(e[i]).value=~~");
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
