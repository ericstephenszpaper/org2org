<!--
// Name: Attach Page
// Committer: eric.stephens@zpaper.com
// Update: ERS201129 #78759 might still need to call clientFile
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-11-29 21:04:33","active":true,"button":"","name":"Attach Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_attachPages\")","value":"","operation":"ne"}]},"consequence":{"doit":"Ly9FUlMxOTA2MTcgIzUyNjYxIHBhdGNoZWQgZnJvbSBrZXkgb3JncwovL0VSUzIwMDgyNSAjNzU2ODUgVE9ETyB1c2UgY2xpZW50TGlicmFyeSBjYWxscwphbGVydCgiQEBAIEF0dGFjaCBQYWdlIFJ1bGUgRmlyZWQgQEBAIik7IC8vRVJTMTcwOTIxIGFkZCB0byBuZXh0IG1hbmFnZWQgcGFja2FnZQp2YXIgcGFyZW50TGFiZWwgPSBkb2MubGFiZWw7Ci8qIFB1bGwgdGhlIHBhZ2UgcmFuZ2UocykgdGhhdCBuZWVkIHRvIGJlIGF0dGFjaGVkIG91dCAqLwphdHRhY2hQYWdlcyA9IFgoZG9jLCAiWF9hdHRhY2hQYWdlcyIpOwp2YXIgYXR0TGFiZWwgPSBYKGRvYywgIlhfYXR0YWNoTGFiZWwiKTsKdmFyIGF0dFRvID0gZG9jLnNmSUQ7CgovL0NsZWFyIHRoZSBkYXRhIHRoYXQgZ290IHVzIGhlcmUKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaFBhZ2VzIiwgIiIpOwphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoTGFiZWwiLCAiIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgppZiAoIWF0dExhYmVsKSBhdHRMYWJlbCA9ICJQYWdlcyAiICsgcGFnZXNbaV0gKyAiIGF0dGFjaGVkIGZyb20gIiArIHBhcmVudExhYmVsOwphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRMYWJlbCk7Ci8vRVJTMjAxMTI5ICM3ODc1OSBtaWdodCBzdGlsbCBuZWVkIHRvIGNhbGwgY2xpZW50RmlsZQpuZXdJZCA9IHNwbGl0RG9jdW1lbnQoZG9jLCBhdHRhY2hQYWdlcywgYXJyT2ZQYWlycywgZmFsc2UpOwovKiBOb3cgYXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCAqLwp2YXIgYXR0UmVzdWx0ID0gYXR0YWNoKGRvYywgYXR0TGFiZWwsIGF0dFRvLCBmYWxzZSk7CmlmIChhdHRSZXN1bHQuaW5kZXhPZigiRVJST1IiKSA+PSAwKSB7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjxFUlJPUj4iKTsKfSBlbHNlIHsKICAgIGFsZXJ0KCJTdWNjZXNzZnVsIGF0dGFjaCBjb21wbGV0ZS4gTmV3IFNuaXBwZXQgSUQ6ICIgKyBuZXdJZCk7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjxTVUNDRVNTPiIpOwp9Cg=="},"ordinal":22}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS190617 #52661 patched from key orgs
//ERS200825 #75685 TODO use clientLibrary calls
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
//ERS201129 #78759 might still need to call clientFile
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
