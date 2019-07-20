<!--
// Name: Form Save Completed
// Committer: Prathyusha.vasireddy2zpaper.com
// Update: Button action added PV190602
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-06-03 05:56:51","active":true,"button":"FORM_COMPLETE","name":"Form Save Completed","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"FORM_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9NU0gxNzA5MjYgZ2l0IHRlc3QKLy9NU0gxNzA4MTcgZGVhY3RpdmF0ZWQKYWxlcnQoIkZPUk1fQ09NUExFVEUgZXZlbnQgcmVjZWl2ZWQiKTsKdmFyIGZJRCA9IFgoZG9jLCAiWF9sYXN0Rm9ybSIsIGRvYy53ZGRhdGEpOwp2YXIgQkFURVMgPSBYKGRvYywgIlhfbGFzdEJBVEVTIiwgZG9jLndkZGF0YSk7CmFsZXJ0KCIkJCQkIENvbXBsZXRlZCBmb3JtOiBCQVRFUyA9ICIgKyBCQVRFUyArICIsIElEID0gIiArIGZJRCk7CnZhciBhcnJPZlBhaXJzID0gW107Ci8qIENsZWFyIHJ1bGUgdGVzdCBmaWVsZCB0aGF0IGdvdCB1cyBoZXJlICovCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCAiIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7Ci8qIEVORC1PRi1SVUxFICov"},"ordinal":4}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//MSH170926 git test
//MSH170817 deactivated
alert("FORM_COMPLETE event received");
var fID = X(doc, "X_lastForm", doc.wddata);
var BATES = X(doc, "X_lastBATES", doc.wddata);
alert("$$$$ Completed form: BATES = " + BATES + ", ID = " + fID);
var arrOfPairs = [];
/* Clear rule test field that got us here */
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);
/* END-OF-RULE */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
