<!--
// Name: Clear Lookups
// Committer: Eric Stephens:eric.stephens@zpaper.com
// Update: activate
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2017-06-28 20:19:41","active":true,"button":"Clear Lookups","name":"Clear Lookups","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Clear Lookups","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIlRPRE8gZ2V0IHRoZSB2YWxpZGF0aW9uIHNjcmlwdHMgaW50byBTdGF0aWMgUmVzb3VyY2VzIik7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAidmFyIGU9flpQQVBFUl9fQ2FzZV9fYyxaUEFQRVJfX0Nhc2VfX2NfQ2FzZU51bWJlcixaUEFQRVJfX1Byb3ZpZGVyX19jLFpQQVBFUl9fUHJvdmlkZXJfX2NfTmFtZSxaUEFQRVJfX1BhdGllbnRfX2MsWlBBUEVSX19QYXRpZW50X19jX05hbWV+LnNwbGl0KH4sfik7Zm9yIChpIGluIGUpIGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKGVbaV0pLnZhbHVlPX5+Iik7"},"ordinal":19}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("TODO get the validation scripts into Static Resources");
addPostExecutionScript(doc, "var e=~ZPAPER__Case__c,ZPAPER__Case__c_CaseNumber,ZPAPER__Provider__c,ZPAPER__Provider__c_Name,ZPAPER__Patient__c,ZPAPER__Patient__c_Name~.split(~,~);for (i in e) document.getElementById(e[i]).value=~~");
//--- RULE CONSEQUENCE CODE - END ---

</script>
