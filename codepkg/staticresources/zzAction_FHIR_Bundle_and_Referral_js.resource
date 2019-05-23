<!--
// Name: Export FHIR Bundle and Referral
// Committer: cory.newey@zpaper.com
// Update: CRN190205 Get case from X_attachedTo; CRN190205 -- End of code parsing out Case
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-02-06 01:05:39","active":true,"button":"FHIR","name":"Export FHIR Bundle and Referral","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"FHIR","operation":"equals"}]},"consequence":{"doit":"Ly9DYWxsIGh0dHBzOi8venAwOC56cGFwZXIuY29tL2tiL2pzcC9TRl9wdWxsLmpzcD9CQVRFUz01MDBmNDAwMDAwRDRWOWNBQUZAMDBEZjQwMDAwMDAyS0ZGLVBhdGllbnQyUmVmZXJyYWxfSlNPTl9EYXRhMl9XZWJfRm9ybS5odG0mU0ZzZXJ2ZXI9aHR0cHM6Ly96cGFwZXJwYXBkZW1vLWRldi1lZC5teS5zYWxlc2ZvcmNlLmNvbSZTRnNlc3Npb249MDBEZi4uCnpEYXRhLnNmT3JnPSIwMERmNDAwMDAwMDJLRkYiOyB6RGF0YS5zZklkPSI1MDBmNDAwMDAwRDRWOWNBQUYiOyAvL0VSUzE5MDIwMiBnZXQgaW50byBsaWJyYXJ5PwovL0NSTjE5MDIwNSBHZXQgY2FzZSBmcm9tIFhfYXR0YWNoZWRUbwp6RGF0YS5zZklkID0gIiI7ICAgICAgICAvLyBpbml0aWFsaXplIHZhbHVlIHNvIHRoYXQgd2UgY2FuIGRpc3BsYXkgZXJyb3IgbWVzc2FnZSBpZiBub3QgYXR0YWNoZWQgdG8gQ2FzZQp2YXIgYXR0YWNoZWRUbyA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CmFsZXJ0KCJAQEAgYXR0YWNoZWRUbyA9ICIgKyBhdHRhY2hlZFRvKTsKaWYgKGF0dGFjaGVkVG8pIHsKICAgIHZhciBpZHggPSBhdHRhY2hlZFRvLmxhc3RJbmRleE9mKCcvJyk7CiAgICBpZiAoaWR4ID49IDApIHsgYXR0YWNoZWRUbyA9IGF0dGFjaGVkVG8uc3Vic3RyaW5nKGlkeCArIDEpOyB9CiAgICB2YXIgcGFydHMgPSBhdHRhY2hlZFRvLnNwbGl0KCcsJyk7CiAgICBmb3IgKHZhciBpIGluIHBhcnRzKSB7CiAgICAgICAgdmFyIHBhcnQgPSBwYXJ0c1tpXS50cmltKCk7CiAgICAgICAgaWYgKDAgPT09IHBhcnQuaW5kZXhPZigiNTAwIikpIHsKICAgICAgICAgICAgekRhdGEuc2ZJZCA9IHBhcnQ7CiAgICAgICAgICAgIGJyZWFrOwogICAgICAgIH0KICAgIH0KfQphbGVydCgiQEBAIHNmSWQgPSAqIiArIHpEYXRhLnNmSWQgKyAiKiIpOwovL0NSTjE5MDIwNSAtLSBFbmQgb2YgY29kZSBwYXJzaW5nIG91dCBDYXNlCmFsZXJ0KCJFUlMxOTAyMDUgQ1JOIHRvIGhlbHAgZmluZCB6RGF0YS5zZklkIGZyb20gWF9hdHRhY2hlZFRvIik7IAppZiAoekRhdGEuc2ZJZC5pbmRleE9mKCI1MDAiKSAhPT0gMCkgewogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJhbGVydCgnRkhJUiBleHBvcnRzIHNob3VsZCBiZSBmcm9tIGEgQ2FzZS4nIik7IC8vRVJTMTkwMjA1CiAgICByZXR1cm47Cn0KdmFyIHpVUkw9Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9rYi9qc3AvU0ZfcHVsbC5qc3A/QkFURVM9Iit6RGF0YS5zZklkKyJAIit6RGF0YS5zZk9yZysiLVBhdGllbnQyUmVmZXJyYWxfSlNPTl9EYXRhMl9XZWJfRm9ybS5odG0iOwp2YXIgekJvZHk9d2dldChkb2MselVSTCk7CnpEYXRhLmZoaXJVUkw9ImZoaXI6Ly9hcGktdjUtc3R1My5oc3Bjb25zb3J0aXVtLm9yZy96UGFwZXJEZW1vMTkwMS9vcGVuIi5yZXBsYWNlKCJmaGlyOi8vIiwiaHR0cHM6Ly8iKTsKdmFyIHpIZWFkZXJzPVsiQ29udGVudC1UeXBlIiwiYXBwbGljYXRpb24vanNvbiJdOyAvL0VSUzE5MDIwMiBzZW5kaW5nIEpTT04KYWxlcnQoIlBPU1QgekJvZHkgdG8gIit6RGF0YS5maGlyVVJMKTsKaWYgKHpCb2R5LmluZGV4T2YoInsiKT09PTApIHsKICAgIHZhciBmaGlyPXdwb3N0KGRvYyx6RGF0YS5maGlyVVJMLG51bGwsekhlYWRlcnMsekJvZHkpOwogICAgLy9nZXQgdGhlIFhfc2VuZFRvCiAgICAvL3Bvc3QgaXQKICAgIGFsZXJ0KCJHT1QgQkFDSzogIitmaGlyKTsKfSBlbHNlIHsKICAgIGFsZXJ0KCJOb3QgSlNPTj8iK3pCb2R5KTsKfQovL2NyZWF0ZSBBY3Rpdml0eSB3aXRoIHJlc3VsdAovL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQoJzEgdGVzdCcpO2FsZXJ0KDIpIik7IC8vRVJTMTkwMjAyCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibG9jYXRpb249J2h0dHBzOi8vc2FuZGJveC5oc3Bjb25zb3J0aXVtLm9yZy96UGFwZXJEZW1vMTkwMS9wYXRpZW50cyciKTsgLy9FUlMxOTAyMDUK"},"ordinal":7}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//Call https://zp08.zpaper.com/kb/jsp/SF_pull.jsp?BATES=500f400000D4V9cAAF@00Df40000002KFF-Patient2Referral_JSON_Data2_Web_Form.htm&SFserver=https://zpaperpapdemo-dev-ed.my.salesforce.com&SFsession=00Df..
zData.sfOrg="00Df40000002KFF"; zData.sfId="500f400000D4V9cAAF"; //ERS190202 get into library?
//CRN190205 Get case from X_attachedTo
zData.sfId = "";        // initialize value so that we can display error message if not attached to Case
var attachedTo = X(doc, "X_attachedTo");
alert("@@@ attachedTo = " + attachedTo);
if (attachedTo) {
    var idx = attachedTo.lastIndexOf('/');
    if (idx >= 0) { attachedTo = attachedTo.substring(idx + 1); }
    var parts = attachedTo.split(',');
    for (var i in parts) {
        var part = parts[i].trim();
        if (0 === part.indexOf("500")) {
            zData.sfId = part;
            break;
        }
    }
}
alert("@@@ sfId = *" + zData.sfId + "*");
//CRN190205 -- End of code parsing out Case
alert("ERS190205 CRN to help find zData.sfId from X_attachedTo"); 
if (zData.sfId.indexOf("500") !== 0) {
    addPostExecutionScript(doc, "alert('FHIR exports should be from a Case.'"); //ERS190205
    return;
}
var zURL="http://localhost:8080/kb/jsp/SF_pull.jsp?BATES="+zData.sfId+"@"+zData.sfOrg+"-Patient2Referral_JSON_Data2_Web_Form.htm";
var zBody=wget(doc,zURL);
zData.fhirURL="fhir://api-v5-stu3.hspconsortium.org/zPaperDemo1901/open".replace("fhir://","https://");
var zHeaders=["Content-Type","application/json"]; //ERS190202 sending JSON
alert("POST zBody to "+zData.fhirURL);
if (zBody.indexOf("{")===0) {
    var fhir=wpost(doc,zData.fhirURL,null,zHeaders,zBody);
    //get the X_sendTo
    //post it
    alert("GOT BACK: "+fhir);
} else {
    alert("Not JSON?"+zBody);
}
//create Activity with result
//addPostExecutionScript(doc, "alert('1 test');alert(2)"); //ERS190202
addPostExecutionScript(doc, "location='https://sandbox.hspconsortium.org/zPaperDemo1901/patients'"); //ERS190205

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
