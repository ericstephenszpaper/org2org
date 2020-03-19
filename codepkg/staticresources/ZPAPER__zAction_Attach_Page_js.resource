<!--
// Name: Attach Page
// Committer: eric.stephens@zpaper.com
// Update: ERS190617 #52661 patched from key orgs
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-06-17 16:25:12","active":true,"button":"","name":"Attach Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_attachPages\")","value":"","operation":"ne"}]},"consequence":{"doit":"Ly9FUlMxOTA2MTcgIzUyNjYxIHBhdGNoZWQgZnJvbSBrZXkgb3JncwphbGVydCgiQEBAIEF0dGFjaCBQYWdlIFJ1bGUgRmlyZWQgQEBAIik7IC8vRVJTMTcwOTIxIGFkZCB0byBuZXh0IG1hbmFnZWQgcGFja2FnZQp2YXIgcGFyZW50TGFiZWwgPSBkb2MubGFiZWw7Ci8qIFB1bGwgdGhlIHBhZ2UgcmFuZ2UocykgdGhhdCBuZWVkIHRvIGJlIGF0dGFjaGVkIG91dCAqLwphdHRhY2hQYWdlcyA9IFgoZG9jLCAiWF9hdHRhY2hQYWdlcyIpOwp2YXIgYXR0TGFiZWwgPSBYKGRvYywgIlhfYXR0YWNoTGFiZWwiKTsKdmFyIGF0dFRvID0gZG9jLnNmSUQ7CgovL0NsZWFyIHRoZSBkYXRhIHRoYXQgZ290IHVzIGhlcmUKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaFBhZ2VzIiwgIiIpOwphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoTGFiZWwiLCAiIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgppZiAoIWF0dExhYmVsKSBhdHRMYWJlbCA9ICJQYWdlcyAiICsgcGFnZXNbaV0gKyAiIGF0dGFjaGVkIGZyb20gIiArIHBhcmVudExhYmVsOwphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRMYWJlbCk7Cm5ld0lkID0gc3BsaXREb2N1bWVudChkb2MsIGF0dGFjaFBhZ2VzLCBhcnJPZlBhaXJzLCBmYWxzZSk7Ci8qIE5vdyBhdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50ICovCnZhciBhdHRSZXN1bHQgPSBhdHRhY2goZG9jLCBhdHRMYWJlbCwgYXR0VG8sIGZhbHNlKTsKaWYgKGF0dFJlc3VsdC5pbmRleE9mKCJFUlJPUiIpID49IDApIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiPEVSUk9SPiIpOwp9IGVsc2UgewogICAgYWxlcnQoIlN1Y2Nlc3NmdWwgYXR0YWNoIGNvbXBsZXRlLiBOZXcgU25pcHBldCBJRDogIiArIG5ld0lkKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiPFNVQ0NFU1M+Iik7Cn0K"},"ordinal":17}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS190617 #52661 patched from key orgs
alert("@@@ Attach Page Rule Fired @@@"); //ERS170921 add to next managed package
var parentLabel = doc.label;
/* Pull the page range(s) that need to be attached out */
attachPages = X(doc, "X_attachPages");
var attLabel = X(doc, "X_attachLabel");
var attTo = doc.sfID;

//Clear the data that got us here
var arrOfPairs = [];
arrOfPairs.push("X_attachPages", "");
arrOfPairs.push("X_attachLabel", "");
updateDB(doc, arrOfPairs);

if (!attLabel) attLabel = "Pages " + pages[i] + " attached from " + parentLabel;
arrOfPairs = [];
arrOfPairs.push("db-label", attLabel);
newId = splitDocument(doc, attachPages, arrOfPairs, false);
/* Now attach the split document */
var attResult = attach(doc, attLabel, attTo, false);
if (attResult.indexOf("ERROR") >= 0) {
    addPostExecutionScript(doc, "<ERROR>");
} else {
    alert("Successful attach complete. New Snippet ID: " + newId);
    addPostExecutionScript(doc, "<SUCCESS>");
}

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
