<!--
// Name: PopulateFields
// Committer: vijaykumar.pendem@sparsolutions.com
// Update: test5
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-02-11 15:02:02","active":true,"button":"PopulateFields","name":"PopulateFields","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"PopulateFields","operation":"equals"}]},"consequence":{"doit":"ZG9jLnNmT3JnID0gJzAwRDNKMDAwMDAwOGtrYic7CnZhciByID0gekRhdGEuZXhwb3NlUERGKGRvYywnNTAwM0owMDAwMDNKVGZFUUFXJyk7CmFsZXJ0KCJ2YWx1ZSByZXR1cm5lZCBhcyByID4+PiAiK3IpOw=="},"ordinal":14}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
doc.sfOrg = '00D3J0000008kkb';
var r = zData.exposePDF(doc,'5003J000003JTfEQAW');
alert("value returned as r >>> "+r);
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
