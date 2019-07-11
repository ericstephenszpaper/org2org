<!--
// Name: Side by Side Underwriting
// Committer: eric@zpaper.com
// Update: zAction resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2017-09-11 01:35:20","active":false,"button":"Underwrite","name":"Side by Side Underwriting","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Underwrite","operation":"starts-with"}]},"consequence":{"doit":"YWxlcnQoIi0tLSBJTlNJREUgT0YgUFJPQ0VTUyBSVUxFIC0tLSIpOwovKiBkb3VibGUtcXVvdGUgKi8KdmFyIGRxPVN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOwovKiBzaW5nbGUtcXVvdGUgKi8KdmFyIHNxPVN0cmluZy5mcm9tQ2hhckNvZGUoMzkpOwovKiBzZW1pY29sb24gKi8KdmFyIHNjPVN0cmluZy5mcm9tQ2hhckNvZGUoNTkpOwp2YXIgZGJJRCA9IGRvYy5kYklEOwphbGVydCgiIyMjIyBkYklEID0gIiArIGRiSUQgKyAiICMjIyMiKTsKdmFyIHpVUkw9Ii9rYi9qc3Avc2lkZUJ5U2lkZS5qc3A/ZGJJRD0iK2RvYy5kYklEKyImZklEPUk5Q2FwdHVyZSI7CnZhciBzZklEPWRvYy5zZklEOwppZiAoIXNmSUQgfHwgc2ZJRC5sZW5ndGggPCAxNSkgc2ZJRD1YKGRvYywiWF9hdHRhY2hlZFRvIik7CmlmIChzZklELmluZGV4T2YoImh0dHBzIik+LTEpIHNmSUQ9c2ZJRC5zdWJzdHJpbmcoMStzZklELmxhc3RJbmRleE9mKCIvIikpOwppZiAoIXNmSUQgfHwgc2ZJRC5sZW5ndGggPCAxNSkgc2ZJRD0iMDAzSjAwMDAwMUt1N3Z6SUFCIjsKelVSTD0iL2tiL2pzcC9TRl9maW5kLmpzcD9nbz1mb3JtTGlzdC5qc3Amc2ZJRHM9IitzZklEOwp2YXIgcG9zdEV4ZWNTY3JpcHQgPSAidmFyIHc9d2luZG93Lm9wZW4oIitkcStkcSsiLCIrZHErInpTaWRlQnlTaWRlIitkcSsiLCIrZHErIndpZHRoPTEyODAsaGVpZ2h0PTEwMjQsYWRkcmVzcz0wLHRpdGxlPTAscmVzaXphYmxlPTEiK2RxKyIpIitzYysgIiB2YXIgZnM9IitkcSsiPGZyYW1lc2V0IGNvbHM9IitzcSsiNTAlLDUwJSIrc3ErIiBib3JkZXI9MiBib3JkZXJjb2xvcj0iK3NxKyIjMjIyMkVFIitzcSsiPiIrZHErc2MrICIgZnMrPSIrZHErIjxmcmFtZSBuYW1lPSIrc3ErInpGYXgiK3NxKyIgaWQ9IitzcSsiekZheCIrc3ErIiBzcmM9IitzcSsidmlldy5qc3A/c2tpbj1iYXJlJmRiSUQ9IitkYklEK3NxKyI+IitkcStzYysgIiBmcys9IitkcSsiPGZyYW1lIG5hbWU9IitzcSsiekZheCIrc3ErIiBpZD0iK3NxKyJ6Rm9ybSIrc3ErIiBzcmM9IitzcSsiL2tiL2pzcC9TRl9wdWxsLmpzcD9zSUQ9Iitkb2MuZGJJRCsiJkJBVEVTPSIrc2ZJRCsiQCIrZG9jLmtiRGF0YS5zZk9yZ2FuaXphdGlvbklEKyItWkZPUk1fRm9ybS5odG0iK3NxKyI+IitkcStzYysgIiBmcys9IitkcSsiPC9mcmFtZXNldD4iK2RxK3NjKyAiIGZzPWZzLnJlcGxhY2UoIitkcSsiWkZPUk0iK2RxKyIsIitkcSsiRkRBMzUwMEEiK2RxKyIpIitzYysgIiB3LmRvY3VtZW50LndyaXRlbG4oZnMpIitzYysgIiB3LmRvY3VtZW50LmNsb3NlKCkiK3NjKyAiIHcuZm9jdXMoKSIrc2M7CmFsZXJ0KCJAQEAgYWRkaW5nIHBvc3QgZXhlY3V0aW9uIHNjcmlwdCBAQEAiKTsKYWxlcnQocG9zdEV4ZWNTY3JpcHQpOwphbGVydCgiQEBAIEVORCBvZiBwb3N0IGV4ZWN1dGlvbiBzY3JpcHQgQEBAIik7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCBwb3N0RXhlY1NjcmlwdCk7CiAvKiBFbmQgb2YgUnVsZSAqLwog"},"ordinal":10}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("--- INSIDE OF PROCESS RULE ---");
/* double-quote */
var dq=String.fromCharCode(34);
/* single-quote */
var sq=String.fromCharCode(39);
/* semicolon */
var sc=String.fromCharCode(59);
var dbID = doc.dbID;
alert("#### dbID = " + dbID + " ####");
var zURL="/kb/jsp/sideBySide.jsp?dbID="+doc.dbID+"&fID=I9Capture";
var sfID=doc.sfID;
if (!sfID || sfID.length < 15) sfID=X(doc,"X_attachedTo");
if (sfID.indexOf("https")>-1) sfID=sfID.substring(1+sfID.lastIndexOf("/"));
if (!sfID || sfID.length < 15) sfID="003J000001Ku7vzIAB";
zURL="/kb/jsp/SF_find.jsp?go=formList.jsp&sfIDs="+sfID;
var postExecScript = "var w=window.open("+dq+dq+","+dq+"zSideBySide"+dq+","+dq+"width=1280,height=1024,address=0,title=0,resizable=1"+dq+")"+sc+ " var fs="+dq+"<frameset cols="+sq+"50%,50%"+sq+" border=2 bordercolor="+sq+"#2222EE"+sq+">"+dq+sc+ " fs+="+dq+"<frame name="+sq+"zFax"+sq+" id="+sq+"zFax"+sq+" src="+sq+"view.jsp?skin=bare&dbID="+dbID+sq+">"+dq+sc+ " fs+="+dq+"<frame name="+sq+"zFax"+sq+" id="+sq+"zForm"+sq+" src="+sq+"/kb/jsp/SF_pull.jsp?sID="+doc.dbID+"&BATES="+sfID+"@"+doc.kbData.sfOrganizationID+"-ZFORM_Form.htm"+sq+">"+dq+sc+ " fs+="+dq+"</frameset>"+dq+sc+ " fs=fs.replace("+dq+"ZFORM"+dq+","+dq+"FDA3500A"+dq+")"+sc+ " w.document.writeln(fs)"+sc+ " w.document.close()"+sc+ " w.focus()"+sc;
alert("@@@ adding post execution script @@@");
alert(postExecScript);
alert("@@@ END of post execution script @@@");
addPostExecutionScript(doc, postExecScript);
 /* End of Rule */
 
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
