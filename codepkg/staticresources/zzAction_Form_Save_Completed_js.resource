<!--
// Name: Form Save Completed
// Committer: judson.bruno@zpaper.com
// Update: JPB190319 updated rule for Sales Demo Org; JPB190319 need CRN to assist getting this from Static to dynamic labeling
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-03-19 13:52:53","active":true,"button":"FORM_COMPLETE","name":"Form Save Completed","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"FORM_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTAzMTkgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwphcnJPZlBhaXJzID0gW107Ci8qIENsZWFyIHJ1bGUgdGVzdCBmaWVsZCB0aGF0IGdvdCB1cyBoZXJlICovCmlmIChkb2MuQkFURVMuaW5kZXhPZigiVEZfRm9ybV9Gb3JtRGF0YSIpPi0xICYmIFgoZG9jLCJYX29sZExhYmVsIik9PT0iIikgeyAKICAgIHZhciBvbGRMYWJlbD1kb2MubGFiZWw7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfb2xkTGFiZWwiLCBvbGRMYWJlbCk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIlBhdGllbnQgVEYgSW50ZXJhY3RpdmUgRm9ybSIpOyAvL0pQQjE5MDMxOSBuZWVkIENSTiB0byBhc3Npc3QgZ2V0dGluZyB0aGlzIGZyb20gU3RhdGljIHRvIGR5bmFtaWMgbGFiZWxpbmcKfQphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwoKaWYgKDE9PT0xKSB7IAogICAgdmFyIGJhPSJEZWxpdmVyZWQiOyAKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwoJYWxlcnQoIiQkJCBub3cwID0gIiArIG5vdzAgKyAiLCBiYSA9ICIgKyBiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSBhZ2VudCBhdCAiK25vdzArIjxici8+Iik7IAp9CmFsZXJ0KCJAQEAgY2FsbGluZyB1cGRhdGVEQiB3aXRoIHBhcmFtczogQEBAQEBAQEBAQEBAIik7CmFsZXJ0KGFyck9mUGFpcnMpOwphbGVydCgiQEBAIGNhbGxpbmcgdXBkYXRlREIgd2l0aCBwYXJhbXM6IEBAQEBAQEBAQEBAQCIpOwoKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsK"},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190319 updated rule for Sales Demo Org
arrOfPairs = [];
/* Clear rule test field that got us here */
if (doc.BATES.indexOf("TF_Form_FormData")>-1 && X(doc,"X_oldLabel")==="") { 
    var oldLabel=doc.label;
    arrOfPairs.push("X_oldLabel", oldLabel);
    arrOfPairs.push("db-label", "Patient TF Interactive Form"); //JPB190319 need CRN to assist getting this from Static to dynamic labeling
}
arrOfPairs.push("X_buttonAction", "");

if (1===1) { 
    var ba="Delivered"; 
    var now0 = getCurDateAndTime(doc,false,true);
	alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by agent at "+now0+"<br/>"); 
}
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
alert(arrOfPairs);
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");

updateDB(doc, arrOfPairs);

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
