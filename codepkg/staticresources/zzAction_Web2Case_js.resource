<!--
// Name: Web2Case
// Committer: eric.stephens@zpaper.com
// Update: create and triage a case based on an issue reported
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-06-11 16:05:52","active":false,"button":"","name":"Web2Case","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Web2CaseSaved","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIk1hZGUgdGhlIGNhc2Ugbm93IHdoYXQ/Iik7Ci8vRVJTMTkwNTIyIHpDb25uZWN0ICM1ODQ2NgovL2lmIHRoZSBCQVRFUyBpcyBlbXB0eSBzZXQgaXQgdG8gdGhlIGxhYmVsCi8vaWYgZnJvbU9yZyBpbiBYTUwgZGF0YSB0aGVuIHNldCB0aGUgZGVwbG95bWVudAovL2dvdG8gY29tbXVuaXR5IGxpc3Qgb2YgY2FzZXMKLy9odHRwczovL3pjb21tdW5pdHktbXl6cGFwZXIuY3M2My5mb3JjZS5jb20vemNvbm5lY3Qvcy8KLy9odHRwczovL3pjb21tdW5pdHktbXl6cGFwZXIuY3M2My5mb3JjZS5jb20vemNvbm5lY3Qvcy9jYXNlL0Nhc2UvMDBCNkMwMDAwMDB4eTFvVUFBCnZhciBhcnJPZlBhaXJzID0gW107CnZhciBsYWJlbD1kb2MubGFiZWw7CmlmICghbGFiZWwpIHtsYWJlbD0iSVNTVUUiO30KYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIGxhYmVsLnJlcGxhY2UoIiBmb3JtIiwiIikpOwovL2Fyck9mUGFpcnMucHVzaCgiZGVDYWxsYmFjayIsImxvY2F0aW9uPSdodHRwczovL3pjb21tdW5pdHktbXl6cGFwZXIuY3M2My5mb3JjZS5jb20vemNvbm5lY3Qvcy9jYXNlL0Nhc2UvMDBCNkMwMDAwMDB4eTFvVUFBJzsiKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibG9jYXRpb249J2h0dHBzOi8vemNvbW11bml0eS1teXpwYXBlci5jczYzLmZvcmNlLmNvbS96Y29ubmVjdC9zL2Nhc2UvQ2FzZS8wMEI2QzAwMDAwMHh5MW9VQUEnOyIpOw=="},"ordinal":9}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("Made the case now what?");
//ERS190522 zConnect #58466
//if the BATES is empty set it to the label
//if fromOrg in XML data then set the deployment
//goto community list of cases
//https://zcommunity-myzpaper.cs63.force.com/zconnect/s/
//https://zcommunity-myzpaper.cs63.force.com/zconnect/s/case/Case/00B6C000000xy1oUAA
var arrOfPairs = [];
var label=doc.label;
if (!label) {label="ISSUE";}
arrOfPairs.push("db-BATES", label.replace(" form",""));
//arrOfPairs.push("deCallback","location='https://zcommunity-myzpaper.cs63.force.com/zconnect/s/case/Case/00B6C000000xy1oUAA';");
updateDB(doc, arrOfPairs);

addPostExecutionScript(doc, "location='https://zcommunity-myzpaper.cs63.force.com/zconnect/s/case/Case/00B6C000000xy1oUAA';");
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
