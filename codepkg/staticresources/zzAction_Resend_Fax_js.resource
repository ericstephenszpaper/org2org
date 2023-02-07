<!--
// Name: Resend Fax
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV230206 #96586; PV230206 Cleaned code
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2023-02-06 17:18:18","active":true,"button":"","name":"Resend Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"RESEND_DOC","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQCBSZXNlbmQgRmF4IFJ1bGUgRmlyZWQgQEBAIik7Ly9QVjIyMDkwMiBhZGRlZAp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwgIiIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwphbGVydCgiQEBAQCBjYWxsaW5nIHNlbmRGYXhPckVtYWlsIEBAQEAiKTsKdmFyIHBhZ2VDb3VudD1kb2MubnVtUGFnZXM7CnZhciBkZXN0PVgoZG9jLCJzZW5kVG8iKTsgLy9QVjIzMDIwNiAjOTY1ODYKaWYgKCFkZXN0KSB7IGRlc3Q9WChkb2MsIlhfZmF4ZWQvS0JpblByaW50L0NvbnRhY3RGYXgiKTsgfSAvL1BWMjMwMjA2CmlmICghZGVzdCkgeyBkZXN0PVgoZG9jLCJDb250YWN0RmF4Iik7IH0KaWYgKCFkZXN0IHx8IGRlc3QgPT0gIlBERiIpIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQoJ05vIGRlc3RpbmF0aW9uIGZvdW5kIGZvciAiK3BhZ2VDb3VudCsiIHBhZ2V6LiAoIitkZXN0KyIpJyk7Iik7CiAgICByZXR1cm47Cn0KaWYgKDE9PT0wIHx8IHpEYXRhLnpNb2RlIHx8IHpEYXRhLnptb2RlKSB7IC8vRVJTMjIwOTAzICM5MzI2MiB6bW9kZSBhbmQgemlwcGkvam9icy8KICAgIGFsZXJ0KCJFUlMyMjA5MDMgZ2V0IHRoZSBkZXN0aW5hdGlvbiBmcm9tICIrZGVzdCk7CiAgICB0cmFjayhkb2MsICJSZXNlbmQ6emlwcGkiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwogICAgdmFyIHpVUkw9IiIsIGRhdGFCdWZmZXI9IiI7CiAgICB6RGF0YS5oZWFkZXJzPVsiWC1BUEktS2V5MCIsekRhdGEuemlwcGlBUEksIlgtWi1TRnVzZXIiLGRvYy5rYkRhdGEucmVtb3RlVXNlciwiQXV0aG9yaXphdGlvbiIsCiAgICAgICAgIkJlYXJlciAiICsgZG9jLmtiRGF0YS5zZlNlc3Npb25JRCwiYWNjZXB0IiwiYXBwbGljYXRpb24vanNvbiIsCiAgICAgICAgIkNvbnRlbnQtVHlwZSIsIm11bHRpcGFydC9mb3JtLWRhdGEiLCAvL0NNQTIzMDIwNCB6aXBwaS00LjEwLjIwMjMwMjAzVDIyNTUwNSBjYW4gbm93IHN1cHBvcnQgZm9ybS1kYXRhIFBPU1Qgd2l0aG91dCBmaWxlCiAgICAgICAgImFjY2Vzcy1jb250cm9sLWFsbG93LW9yaWdpbiIsIioiLAogICAgICAgICJ4LWFwaS1rZXkiLCAiVFBpKzZXSWRqVWVrMGozeUJidHJVLzBZSlFHa0Mrb043Vi9XZGRYUkJUUS9oY0J4TTRlSUhDeGtNaEFESS9uZ3dGRExTcVUwVzdJPSIsCiAgICAgICAgIngtYXBpLXVzZXIiLGRvYy5rYkRhdGEucmVtb3RlVXNlcl07IC8vRVJTMjAxMDIwICM3NTM4MQogICAgekRhdGEuelNlcnZlcj0iaHR0cDovL2xvY2FsaG9zdDo4MDgwIjsKICAgIHpVUkw9ekRhdGEuelNlcnZlcisiL3ppcHBpL2pvYnMvIjsKICAgIGlmICgxPT0xIHx8ICF6RGF0YS5zZklEKSB7IHpEYXRhLnNmSUQ9WChkb2MsInNmSUQiKTsgfQogICAgaWYgKCF6RGF0YS5zZk9yZykgeyB6RGF0YS5zZk9yZz1kb2Mua2JEYXRhLnNmU2Vzc2lvbklELnN1YnN0cmluZygwLGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQuaW5kZXhPZigiISIpKTsgfQogICAgYWxlcnQoIkVSUzIyMDkwNiBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCArIiBzZklEPSIrekRhdGEuc2ZJRCsiIGluICIrekRhdGEuc2ZPcmcpOwoKICAgIHZhciBzZW5kRG9jPWRvYy5kYklEOwogICAgdmFyIHNlbmRKb2I9WyJyZWNvcmRJZCIsekRhdGEuc2ZJRCwiZG9jVGl0bGUiLCJSZXNlbmQgIitkb2MubGFiZWwsCiAgICAgICAgInRlbXBsYXRlVVJMMSIsIHNlbmREb2MudHJpbSgpLCAvL3RlbXBsYXRlMSBjaGFuZ2VkIHRvIHRlbXBsYXRlVVJMMQogICAgICAgICJTRm9yZyIsekRhdGEuc2ZPcmcsIlNGc2Vzc2lvbklEIixkb2Mua2JEYXRhLnNmU2Vzc2lvbklELAogICAgICAgICJzZW5kVG8iLGRlc3QsCiAgICAgICAgIklkIix6RGF0YS5zZklEXTsKICAgIGFsZXJ0KCJFUlMyMjA5MDMgam9iIHdpdGggIitzZW5kSm9iKTsKICAgIHZhciByZXN1bHRzPSIiOwogICBpZiAoMT09MSkgcmVzdWx0cz13cG9zdChkb2MselVSTCxzZW5kSm9iLHpEYXRhLmhlYWRlcnMpOyAvL2tiRGF0YS5nZXRYQVBJS2V5KCkgYWxyZWFkeSBpbiB3Z2V0IG9yIGZsb3cgWklQUEkgLy9FUlMyMjA5MDcgCiAgICB2YXIgdDE9bmV3IERhdGUoKTsKICAgIGFsZXJ0KCJFUlMxOTA5MDMgcmVzdWx0cz0iK3Jlc3VsdHMrIiBoZWFkZXJzPSIrekRhdGEuaGVhZGVycyk7IC8vRVJTMTkwOTAzIGNoZWNrIGhlYWRlcnMKICAgIGlmIChyZXN1bHRzKSB7IC8vU0hSMTkwOTAzIG1ha2Ugc3VyZSB3ZSBnb3QgYmFjayBzb21ldGhpbmcgYmVmb3JlIHBhcnNpbmcKICAgICAgICByZXN1bHRzPUpTT04ucGFyc2UocmVzdWx0cyk7IC8vU0hSMTgxMjA2IGFsd2F5cyBwYXJzZSBqc29uIHJlc3VsdHMgKHNob3VsZCBiZSBhbiBhcnJheSBvZiByZXN1bHRzKQogICAgICAgIGFsZXJ0KCJAQEAgcmVzdWx0cyBmcm9tIHdwb3N0ID0gIiArIHJlc3VsdHMpOwoJCXJlc3VsdHM9cmVzdWx0c1swXTsgLy9TSFIxODEyMDYgYWx3YXlzIHBhcnNlIGpzb24gcmVzdWx0cyAoc2hvdWxkIGJlIGFuIGFycmF5IG9mIHJlc3VsdHMpCiAgICB9Cn0gZWxzZSB7CiAgICBhbGVydCgiRVJTMjIwOTAzIFNGX3NlbmRGYXguanNwIHRvICIrWChkb2MsIlhfZmF4ZWQvS0JpblByaW50L0NvbnRhY3RGYXgiKSk7CiAgICB0cmFjayhkb2MsICJSZXNlbmQiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwogICAgc2VuZEZheE9yRW1haWwoZG9jLCBkb2MuZGJJRCxkZXN0LCAiRmF4IFJlc2VuZCIsICIiKTsKfS8vUFYyMzAyMDMgdG8gdXBkYXRlIGxhYmVs"},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@ Resend Fax Rule Fired @@@");//PV220902 added
var arrOfPairs = [];
arrOfPairs.push("X_buttonAction", "");
updateDB(doc, arrOfPairs);
alert("@@@@ calling sendFaxOrEmail @@@@");
var pageCount=doc.numPages;
var dest=X(doc,"sendTo"); //PV230206 #96586
if (!dest) { dest=X(doc,"X_faxed/KBinPrint/ContactFax"); } //PV230206
if (!dest) { dest=X(doc,"ContactFax"); }
if (!dest || dest == "PDF") {
    addPostExecutionScript(doc, "alert('No destination found for "+pageCount+" pagez. ("+dest+")');");
    return;
}
if (1===0 || zData.zMode || zData.zmode) { //ERS220903 #93262 zmode and zippi/jobs/
    alert("ERS220903 get the destination from "+dest);
    track(doc, "Resend:zippi", "Document with Id: " + doc.dbID, pageCount);
    var zURL="", dataBuffer="";
    zData.headers=["X-API-Key0",zData.zippiAPI,"X-Z-SFuser",doc.kbData.remoteUser,"Authorization",
        "Bearer " + doc.kbData.sfSessionID,"accept","application/json",
        "Content-Type","multipart/form-data", //CMA230204 zippi-4.10.20230203T225505 can now support form-data POST without file
        "access-control-allow-origin","*",
        "x-api-key", "TPi+6WIdjUek0j3yBbtrU/0YJQGkC+oN7V/WddXRBTQ/hcBxM4eIHCxkMhADI/ngwFDLSqU0W7I=",
        "x-api-user",doc.kbData.remoteUser]; //ERS201020 #75381
    zData.zServer="http://localhost:8080";
    zURL=zData.zServer+"/zippi/jobs/";
    if (1==1 || !zData.sfID) { zData.sfID=X(doc,"sfID"); }
    if (!zData.sfOrg) { zData.sfOrg=doc.kbData.sfSessionID.substring(0,doc.kbData.sfSessionID.indexOf("!")); }
    alert("ERS220906 dbID="+doc.dbID+" label="+doc.label +" sfID="+zData.sfID+" in "+zData.sfOrg);

    var sendDoc=doc.dbID;
    var sendJob=["recordId",zData.sfID,"docTitle","Resend "+doc.label,
        "templateURL1", sendDoc.trim(), //template1 changed to templateURL1
        "SForg",zData.sfOrg,"SFsessionID",doc.kbData.sfSessionID,
        "sendTo",dest,
        "Id",zData.sfID];
    alert("ERS220903 job with "+sendJob);
    var results="";
   if (1==1) results=wpost(doc,zURL,sendJob,zData.headers); //kbData.getXAPIKey() already in wget or flow ZIPPI //ERS220907 
    var t1=new Date();
    alert("ERS190903 results="+results+" headers="+zData.headers); //ERS190903 check headers
    if (results) { //SHR190903 make sure we got back something before parsing
        results=JSON.parse(results); //SHR181206 always parse json results (should be an array of results)
        alert("@@@ results from wpost = " + results);
		results=results[0]; //SHR181206 always parse json results (should be an array of results)
    }
} else {
    alert("ERS220903 SF_sendFax.jsp to "+X(doc,"X_faxed/KBinPrint/ContactFax"));
    track(doc, "Resend", "Document with Id: " + doc.dbID, pageCount);
    sendFaxOrEmail(doc, doc.dbID,dest, "Fax Resend", "");
}//PV230203 to update label
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
