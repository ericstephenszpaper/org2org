<!--
// Name: Resend Fax
// Committer: sdf3@sdlfk.234
// Update: None.
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-07-19 23:55:43","active":true,"button":"","name":"Resend Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"RESEND_DOC","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQCBSZXNlbmQgRmF4IFJ1bGUgRmlyZWQgQEBAIik7CnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCAiIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgphbGVydCgiQEBAQCBjYWxsaW5nIHNlbmRGYXhPckVtYWlsIEBAQEAiKTsKc2VuZEZheE9yRW1haWwoZG9jLCBkb2MuZGJJRCwgWChkb2MsIlhfZmF4ZWQvS0JpblByaW50L0NvbnRhY3RGYXgiKSwgIkZheCBSZXNlbmQiLCAiIik7Cg=="},"ordinal":9}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@ Resend Fax Rule Fired @@@");
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);

alert("@@@@ calling sendFaxOrEmail @@@@");
sendFaxOrEmail(doc, doc.dbID, X(doc,"X_faxed/KBinPrint/ContactFax"), "Fax Resend", "");

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
