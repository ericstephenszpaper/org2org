<!--
// Name: Form Save Completed
// Committer: judson.bruno@zpaper.com
// Update: JPB181210 changed to Delivered
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2018-12-10 22:59:19","active":true,"button":"FORM_COMPLETE","name":"Form Save Completed","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"FORM_COMPLETE","operation":"equals"}]},"consequence":{"doit":"YXJyT2ZQYWlycyA9IFtdOwovKiBDbGVhciBydWxlIHRlc3QgZmllbGQgdGhhdCBnb3QgdXMgaGVyZSAqLwppZiAoZG9jLkJBVEVTLmluZGV4T2YoIlRGX0Zvcm1fRm9ybURhdGEiKT4tMSAmJiBYKGRvYywiWF9vbGRMYWJlbCIpPT09IiIpIHsgLy9FUlMxODEyMDIgdG8gY3VzdG9taXplIHRoZSBsYWJlbAogICAgdmFyIG9sZExhYmVsPWRvYy5sYWJlbDsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9vbGRMYWJlbCIsIG9sZExhYmVsKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiUGF0aWVudCBURiBJbnRlcmFjdGl2ZSBGb3JtIik7Cn0KYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsICIiKTsKCmlmICgxPT09MSkgeyAvL0VSUzE4MDEwMyBzZXQgYXMgRGVsaXZlcmVkICM0MTE1NQogICAgdmFyIGJhPSJEZWxpdmVyZWQiOyAvL0pQQjE4MTIxMCBjaGFuZ2VkIHRvIERlbGl2ZXJlZAogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CglhbGVydCgiJCQkIG5vdzAgPSAiICsgbm93MCArICIsIGJhID0gIiArIGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5IGFnZW50IGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCn0KYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKYWxlcnQoYXJyT2ZQYWlycyk7CmFsZXJ0KCJAQEAgY2FsbGluZyB1cGRhdGVEQiB3aXRoIHBhcmFtczogQEBAQEBAQEBAQEBAIik7Cgp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwovL0VSUzE3MDgwOSByaWdodCB0byB0aGUgc3RhdGljIHJlc291cmNl"},"ordinal":4}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
arrOfPairs = [];
/* Clear rule test field that got us here */
if (doc.BATES.indexOf("TF_Form_FormData")>-1 && X(doc,"X_oldLabel")==="") { //ERS181202 to customize the label
    var oldLabel=doc.label;
    arrOfPairs.push("X_oldLabel", oldLabel);
    arrOfPairs.push("db-label", "Patient TF Interactive Form");
}
arrOfPairs.push("X_buttonAction", "");

if (1===1) { //ERS180103 set as Delivered #41155
    var ba="Delivered"; //JPB181210 changed to Delivered
    var now0 = getCurDateAndTime(doc,false,true);
	alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by agent at "+now0+"<br/>"); //ERS170909 #40592
}
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
alert(arrOfPairs);
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");

updateDB(doc, arrOfPairs);
//ERS170809 right to the static resource
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
