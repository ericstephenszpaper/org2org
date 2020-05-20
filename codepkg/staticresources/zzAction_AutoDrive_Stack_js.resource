<!--
// Name: AutoDrive Stack
// Committer: eric.stephens@zpaper.com
// Update: ERS200503 #70273 makes the Timeline task; ERS200503 #70273
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-05-03 22:39:39","active":true,"button":"Auto","name":"AutoDrive Stack","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Auto","operation":"starts-with"},{"name":"doc.X(\"X_zippiCompare\")","value":"template","operation":"contains"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgQXV0b0RyaXZlIFJ1bGUgRmlyZWQgQEBAIyIpOyAvL0VSUzE5MDgwMyAjNTI2NjEgZnJvbSBPY2NGaXQKCi8vRVJTMjAwMjI3IGNyaXRlcmlhIGxvb2tzIGZvciBhbnkgdGVtcGxhdGUgbm90IGp1c3QgRU5SCgpmdW5jdGlvbiB6UHJlcG9wKGZkLGZpbGxlZCxjb25maWRlbmNlKSB7CiAgICBpZiAoIWZkKSByZXR1cm4ge307CiAgICB2YXIgdmFsdWVzPXt9OwogICAgaWYgKCFmaWxsZWQpIGZpbGxlZD0wLjA0OwogICAgaWYgKCFjb25maWRlbmNlKSBjb25maWRlbmNlPTAuOTA7CiAgICBmb3IgKHZhciB4IGluIGZkKSB7CiAgICAgICAgLy9hbGVydCgieD0iK3gpOwogICAgICAgIHZhciBpPWZkW3hdOwogICAgICAgIGlmIChpLnR5cGU9PSJ0ZXh0IiAmJiBpLmNvbmZpZGVuY2U+PWNvbmZpZGVuY2UpIHsgdmFsdWVzW2kubmFtZV09aS50ZXh0OyBhbGVydChpLm5hbWUrIj0iK2kudGV4dCk7fQogICAgICAgIGlmIChpLnR5cGU9PSJjaGVja2JveCIpIHsgdmFsdWVzW2kubmFtZV09KGkuZmlsbGVkPj1maWxsZWQpOyB9CiAgICAgICAgaWYgKGkudHlwZT09InNpZ25hdHVyZSIpIHsgdmFsdWVzW2kubmFtZV09KGkuZmlsbGVkPj1maWxsZWQpOyB9IC8vRVJTMjAwNDA2IFRPRE8gdXNlIHRvIGRldGVjdCBzaWduZWQKICAgIH0KICAgIHJldHVybiB2YWx1ZXM7Cn0KCnpEYXRhLmF1dG9JbmRleD0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIiIrIkFEcGVyc29uVHlwZXNfX2MiKS50cmltKCk7IC8vVE9ETyBQQUNLQUdFIHpEYXRhLnpwKwppZiAoIXpEYXRhLmF1dG9JbmRleCkge2FsZXJ0KCJNaXNzaW5nIEFEUGVyc29uVHlwZXMgc2V0dGluZy4iKTsgekRhdGEuYXV0b0luZGV4PSIsT1JELEhJUEFBLCI7IH0KYWxlcnQoIkVSUzIwMDIyOS4yMiBsb29raW5nIGZvciBzZXR0aW5ncyAiK1hDdXN0b21TZXR0aW5nKGRvYywiIisiQURQZXJzb25UeXBlc19fYyIpKyIgbm93IHVzaW5nICIrekRhdGEuYXV0b0luZGV4KTsKekRhdGEuZGF0YUNvbmZpZGVuY2U9KCIwIitYQ3VzdG9tU2V0dGluZyhkb2MsIiIrIkFEZGF0YUNvbmZpZGVuY2VfX2MiKSkvMS4wMDsKaWYgKCF6RGF0YS5kYXRhQ29uZmlkZW5jZSkgekRhdGEuZGF0YUNvbmZpZGVuY2U9MC45MjsKYWxlcnQoIkVSUzIwMDIyOS4yMiB1c2luZyBjb25maWRlbmNlICIrekRhdGEuZGF0YUNvbmZpZGVuY2UrICIgZnJvbSAiK1hDdXN0b21TZXR0aW5nKGRvYywiIisiQURkYXRhQ29uZmlkZW5jZV9fYyIpKTsKCgpmdW5jdGlvbiBhdXRvU3BsaXQoZG9jLHBhZ2VSYW5nZSxwMCx6Yyx6ZCkgeyAvL0VSUzE5MTAxMCAjNjEzNTcKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICB2YXIgZHQ9emNbcDBdLmRvY1R5cGU7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsIGR0KTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwicGFnZSAiK3BhZ2VSYW5nZSsiIGEgIitkdCk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIixkdCsiIGF1dG9TcGxpdCBwYWdlICIrcGFnZVJhbmdlKTsKICAgIGlmICh6ZFtwMF0pIGFyck9mUGFpcnMucHVzaCgiWF96aXBwaURhdGEiLEpTT04uc3RyaW5naWZ5KHpQcmVwb3AoemRbcDBdKSkgKTsgLy9FUlMxOTEwMTQgYXV0b0RhdGEKICAgIGFyck9mUGFpcnMucHVzaCgiWF96aXBwaUNvbXBhcmUiLCJbbnVsbCwiK0pTT04uc3RyaW5naWZ5KHpjW3AwXSkrIl0iKTsgLy9FUlMxOTEwMTQgYXV0b0RhdGEKICAgIGFyck9mUGFpcnMucHVzaCgiWF9hdXRvSW5kZXhlZFBhZ2VzIiwgcGFnZVJhbmdlKTsKICAgIGFsZXJ0KCJFUlMyMDAzMTIuMzcgYmVmb3JlIHNwbGl0ICIrcGFnZVJhbmdlKTsKICAgIHZhciBuZXdJZD1zcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiZGVwcmVjYXRlZCIsIHBhZ2VSYW5nZSxhcnJPZlBhaXJzKTsKICAgIGFsZXJ0KCJFUlMxOTEwMTQgbmV3SWQ9IituZXdJZCArIiBmcm9tICIrcGFnZVJhbmdlKTsgLy9FUlMxOTEwMTQgIzYxMTk2CiAgICAKICAgIC8vRVJTMjAwMzExIGJsb3dzIHVwISEhIHRyYWNrKGRvYywgIkF1dG9JbmRleGVkIiwgIkRvY3VtZW50IHdpdGggSWQ6ICIgKyBkb2MuZGJJRCwgekRhdGEuY291bnRQYWdlcyhwYWdlUmFuZ2UpKTsgLy9FUlMyMDAzMDggdHJhY2tpbmcKICAgIC8vVE9ETyBFUlMxOTEwMTUgY3JlYXRlIHpTdGFjayByZWNvcmQgdHlwZSBhdXRvCiAgICAvLyoKICAgIC8qIEFGVEVSIFRISVMgUE9JTlQsIFRIRSBET0MgV0lMTCBIT0xEIERBVEEgRk9SIE5FVyBTTklQUEVULCBOT1QgVEhFIFNUQUNLIFNOSVBQRVQgKi8KICAgIC8vKgogICAgLy9FUlMyMDA0MzA4IFRPRE8geF9yZXZpZXdzIGZvciBTaWduZWQKICAgIC8vRVJTMjAwNDA2ICM3MTE1NiBUT0RPIGRldGVjdCBTaWduYXR1cmUsInRydWUiIGFuZCBhZGQgc3RhZ2UgZm9yIFNpZ25lZAogICAgdmFyIGFyck9mUGFpcnMyID0gW107CiAgICB6RGF0YS5zdGFnZT0iUmVjZWl2ZWQiOwogICAgYXJyT2ZQYWlyczI9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsekRhdGEuc3RhZ2UpOyAvL0VSUzIwMDQxOCAjNzE0MTUKICAgIHZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwogICAgdHJhY2soZG9jLCAiU3RhZ2UuIit6RGF0YS5zdGFnZSwgIkRvY3VtZW50IHdpdGggSWQ6ICIgKyBkb2MuZGJJRCwgcGFnZUNvdW50KTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzMik7CiAgICAKICAgIC8vRVJTMjAwMjI5IG1pZ2h0IGJlIGJldHRlciBpbiBjbGllbnQgbGlicmFyeQogICAgdmFyIG5ld0NoaWxkU3RhY2tJZD0iIjsKICAgIGlmICh6RGF0YS5hdXRvSW5kZXguaW5kZXhPZigiLCIrZHQrIiwiKT4tMSB8fCB6RGF0YS5wSWQwKSB7IC8vbG9va3VwIHdpdGggcmVjb3JkIHR5cGUsIGtleSB2YWx1ZXMgYW5kIHJlY2VudCBwSWQwIEVSUzIwMDQxOAogICAgICAgIHZhciBhdHRhY2hlZElkPXpEYXRhLmNsaWVudEF1dG9JbmRleChkb2MsZHQselByZXBvcCh6ZFtwMF0sMC4wMyx6RGF0YS5kYXRhQ29uZmlkZW5jZSkpOwogICAgICAgIGlmICgxPT09MSAmJiBhdHRhY2hlZElkKSB7IC8vRVJTMjAwNTAyICM3MDI3MyBub3Qgc2hvd2luZyB1cCBvbiB0aGUgVGltZWxpbmUKICAgICAgICAgICAgLy96RGF0YS5wYXRpZW50SWQ9ekRhdGEuY2xpZW50UGF0aWVudChkb2MsYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIC8vYWxlcnQoIkNyZWF0ZWQgUGF0aWVudCB3aXRoIElEOiAiICsgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgLy9hdHRhY2goZG9jLCBkdCsiIEF1dG9TcGxpdCBwYWdlICIrcGFnZVJhbmdlLCBhdHRhY2hlZElkKTsKICAgICAgICAgICAgekRhdGEucGF0aWVudElkPWF0dGFjaGVkSWQ7CiAgICAgICAgICAgIHpEYXRhLmRvY1R5cGU9ZHQ7CiAgICAgICAgICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDAxIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudEFjY291bnRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICBuZXdDaGlsZFN0YWNrSWQ9ekRhdGEuY2xpZW50Q2hpbGRTdGFjayhkb2MsYXJyT2ZQYWlycyx6RGF0YS5zdGFja0lkKTsgLy9FUlMyMDA1MDMgIzcwMjczIG1ha2VzIHRoZSBUaW1lbGluZSB0YXNrCiAgICAgICAgICAgIGFsZXJ0KCJOZXcgQXV0b1N0YWNrICIrbmV3Q2hpbGRTdGFja0lkKTsKICAgICAgICB9CiAgICB9IGVsc2UgeyBhbGVydCgiRVJTMjAwMjI5LjQ0ICIrZHQgKyIgbm90IGluICIrekRhdGEuYXV0b0luZGV4KTsgfQogICAgCiAgICByZXR1cm4gbmV3SWQ7Cn0KCnZhciBzdGFja0lkID0gekRhdGEuZ2V0U3RhY2tJZChkb2MpOyAvL0VSUzE5MDYyNCBIQUNLPwp6RGF0YS5zdGFnZT0iSW5kZXhlZCI7IC8vRVJTMjAwMzEwIEF1dG9JbmRleGVkIGlzIG5vdCBpbiB6U3RhY2sgcGlja2xpc3QKekRhdGEucGFnZXM9KCIwIitYKGRvYywiWF9wYWdlcyIpKS8xOyBpZiAoekRhdGEucGFnZXM9PT0wKSB6RGF0YS5wYWdlcz0xOyAvL1RPRE8gaW50aWFsaXplIHpEYXRhIGJldHRlcgoKLy9yZWFsbHkgbmVlZCBwYXRpZW50IGluZm8gZW5vdWdoIHRvIGF0dGFjaCBvciBjcmVhdGUKLy96RGF0YS5nZXREYXRhRW50cnlGaWVsZHMoZG9jKTsgLy9FUlMxOTA5MTQgZ2V0IGZyb20gWF96aXBwaURhdGEKdmFyIHpjPVgoZG9jLCJYX3ppcHBpQ29tcGFyZSIpOwp2YXIgemQ9WChkb2MsIlhfemlwcGlEYXRhIik7CmFsZXJ0KCJ6Yz0iK3pjKTsKaWYgKHpjICYmIHpjLmluZGV4T2YoIlsiKT09PTApIHt6Yz1KU09OLnBhcnNlKHpjKTt9CmFsZXJ0KCJ6YyBub3cgIit6Yyk7CmlmICh6ZCAmJiB6ZC5pbmRleE9mKCJbIik9PT0wKSB7emQ9SlNPTi5wYXJzZSh6ZCk7fQoKLy9sb29wIHBhZ2VzCnZhciBkdDA9IkZBWCIsIHAwPTEsIGM9MDsKdmFyIGRiSUQwPWRvYy5kYklEOwp2YXIgZG9jU3RhY2s9ZG9jOwp6RGF0YS5uZXdTcGxpdHM9W107CnpEYXRhLnN0YWNrSWQ9c3RhY2tJZDsgLy9FUlMyMDA1MDMgIzcwMjczCgpmb3IgKHZhciBwPTE7IHA8PXpEYXRhLnBhZ2VzOyBwKyspIHsKICAgIGFsZXJ0KCJwYWdlICIrcCk7CiAgICBhbGVydCgiemNbXT0iK3pjW3BdKTsKICAgIGlmICh6Y1twXSkgewogICAgICAgIHZhciBkdD16Y1twXS5kb2NUeXBlOwogICAgICAgIGlmIChkdCAhPSBkdDAgfHwgMT09MSkgeyAvL0VSUzIwMDIyNyAjNjExOTYgemNbcF0gZXhpc3RpbmcgaXMgZW5vdWdoPwogICAgICAgICAgICBhbGVydCgiU3BsaXQgIitwMCsiLSIrKHAtMSkrIiBpbnRvICIrZHQwKTsKICAgICAgICAgICAgLy9FUlMyMDAzMTIgYWxlcnQoIkRhdGEgIitKU09OLnN0cmluZ2lmeSh6UHJlcG9wKHpkW3AwXSkpKTsKICAgICAgICAgICAgaWYgKGR0MCAhPSAiRkFYIikgewogICAgICAgICAgICAgICAgekRhdGEubmV3U3BsaXRzW2NdPWF1dG9TcGxpdChkb2MscDArIi0iKyhwLTEpLHAwLHpjLHpkKTsKICAgICAgICAgICAgICAgIC8vZG9jPWRvY1N0YWNrOyAKICAgICAgICAgICAgICAgIHNldERvY3VtZW50Q29udGV4dChkb2MsIGRiSUQwKTsKICAgICAgICAgICAgICAgIGFsZXJ0KCJFUlMxOTEwMTQuNTkgYWZ0ZXIgc3BsaXQgZG9jLmRiSUQ9Iitkb2MuZGJJRCArIiBuZXcgIitjKyIgPSAiK3pEYXRhLm5ld1NwbGl0c1tjXSk7CiAgICAgICAgICAgICAgICBjKys7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgLy9IQUNLIE9GRiBpZiAoKHAtcDApPjEpIGR0PSJ3YXMiK2R0OyAvL0VSUzIwMDIyNyAjNjExOTYgbXVsdGlwbGUgY29udGltZW91cyBPcmRlcnMgCiAgICAgICAgICAgIGR0MD1kdDsgcDA9cDsKICAgICAgICB9CiAgICB9Cn0KYWxlcnQoIlBhZ2VzICIrcDArIi0iKyhwLTEpKyIgaXMgYSAiK2R0MCk7CmFsZXJ0KCJEYXRhICIrSlNPTi5zdHJpbmdpZnkoelByZXBvcCh6ZFtwMF0pKSk7CmlmIChkdDAgIT0gIkZBWCIpIHsKICAgIHpEYXRhLm5ld1NwbGl0c1tjXT1hdXRvU3BsaXQoZG9jLHAwKyItIisocC0xKSxwMCx6Yyx6ZCk7Cn0KYWxlcnQoIlNwbGl0cyBpbnRvICIrekRhdGEubmV3U3BsaXRzKTsKCi8qIGVuZCBvZiBydWxlICov"},"ordinal":28}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ AutoDrive Rule Fired @@@#"); //ERS190803 #52661 from OccFit

//ERS200227 criteria looks for any template not just ENR

function zPrepop(fd,filled,confidence) {
    if (!fd) return {};
    var values={};
    if (!filled) filled=0.04;
    if (!confidence) confidence=0.90;
    for (var x in fd) {
        //alert("x="+x);
        var i=fd[x];
        if (i.type=="text" && i.confidence>=confidence) { values[i.name]=i.text; alert(i.name+"="+i.text);}
        if (i.type=="checkbox") { values[i.name]=(i.filled>=filled); }
        if (i.type=="signature") { values[i.name]=(i.filled>=filled); } //ERS200406 TODO use to detect signed
    }
    return values;
}

zData.autoIndex=""+XCustomSetting(doc,""+"ADpersonTypes__c").trim(); //TODO PACKAGE zData.zp+
if (!zData.autoIndex) {alert("Missing ADPersonTypes setting."); zData.autoIndex=",ORD,HIPAA,"; }
alert("ERS200229.22 looking for settings "+XCustomSetting(doc,""+"ADPersonTypes__c")+" now using "+zData.autoIndex);
zData.dataConfidence=("0"+XCustomSetting(doc,""+"ADdataConfidence__c"))/1.00;
if (!zData.dataConfidence) zData.dataConfidence=0.92;
alert("ERS200229.22 using confidence "+zData.dataConfidence+ " from "+XCustomSetting(doc,""+"ADdataConfidence__c"));


function autoSplit(doc,pageRange,p0,zc,zd) { //ERS191010 #61357
    var arrOfPairs = [];
    var dt=zc[p0].docType;
    arrOfPairs.push("X_docType", dt);
    arrOfPairs.push("X_reviews","page "+pageRange+" a "+dt);
    arrOfPairs.push("db-label",dt+" autoSplit page "+pageRange);
    if (zd[p0]) arrOfPairs.push("X_zippiData",JSON.stringify(zPrepop(zd[p0])) ); //ERS191014 autoData
    arrOfPairs.push("X_zippiCompare","[null,"+JSON.stringify(zc[p0])+"]"); //ERS191014 autoData
    arrOfPairs.push("X_autoIndexedPages", pageRange);
    alert("ERS200312.37 before split "+pageRange);
    var newId=splitDocumentForIndex(doc, "deprecated", pageRange,arrOfPairs);
    alert("ERS191014 newId="+newId +" from "+pageRange); //ERS191014 #61196
    
    //ERS200311 blows up!!! track(doc, "AutoIndexed", "Document with Id: " + doc.dbID, zData.countPages(pageRange)); //ERS200308 tracking
    //TODO ERS191015 create zStack record type auto
    //*
    /* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
    //*
    //ERS2004308 TODO x_reviews for Signed
    //ERS200406 #71156 TODO detect Signature,"true" and add stage for Signed
    var arrOfPairs2 = [];
    zData.stage="Received";
    arrOfPairs2=zData.addStage(doc,arrOfPairs,zData.stage); //ERS200418 #71415
    var pageCount = zData.countPages(doc,pageRange);
    track(doc, "Stage."+zData.stage, "Document with Id: " + doc.dbID, pageCount);
    updateDB(doc,arrOfPairs2);
    
    //ERS200229 might be better in client library
    var newChildStackId="";
    if (zData.autoIndex.indexOf(","+dt+",")>-1 || zData.pId0) { //lookup with record type, key values and recent pId0 ERS200418
        var attachedId=zData.clientAutoIndex(doc,dt,zPrepop(zd[p0],0.03,zData.dataConfidence));
        if (1===1 && attachedId) { //ERS200502 #70273 not showing up on the Timeline
            //zData.patientId=zData.clientPatient(doc,arrOfPairs);
            //alert("Created Patient with ID: " + zData.patientId);
            //attach(doc, dt+" AutoSplit page "+pageRange, attachedId);
            zData.patientId=attachedId;
            zData.docType=dt;
            if (zData.patientId.indexOf("001")===0) arrOfPairs.push("ZPAPER__PatientAccount__c", zData.patientId);
            newChildStackId=zData.clientChildStack(doc,arrOfPairs,zData.stackId); //ERS200503 #70273 makes the Timeline task
            alert("New AutoStack "+newChildStackId);
        }
    } else { alert("ERS200229.44 "+dt +" not in "+zData.autoIndex); }
    
    return newId;
}

var stackId = zData.getStackId(doc); //ERS190624 HACK?
zData.stage="Indexed"; //ERS200310 AutoIndexed is not in zStack picklist
zData.pages=("0"+X(doc,"X_pages"))/1; if (zData.pages===0) zData.pages=1; //TODO intialize zData better

//really need patient info enough to attach or create
//zData.getDataEntryFields(doc); //ERS190914 get from X_zippiData
var zc=X(doc,"X_zippiCompare");
var zd=X(doc,"X_zippiData");
alert("zc="+zc);
if (zc && zc.indexOf("[")===0) {zc=JSON.parse(zc);}
alert("zc now "+zc);
if (zd && zd.indexOf("[")===0) {zd=JSON.parse(zd);}

//loop pages
var dt0="FAX", p0=1, c=0;
var dbID0=doc.dbID;
var docStack=doc;
zData.newSplits=[];
zData.stackId=stackId; //ERS200503 #70273

for (var p=1; p<=zData.pages; p++) {
    alert("page "+p);
    alert("zc[]="+zc[p]);
    if (zc[p]) {
        var dt=zc[p].docType;
        if (dt != dt0 || 1==1) { //ERS200227 #61196 zc[p] existing is enough?
            alert("Split "+p0+"-"+(p-1)+" into "+dt0);
            //ERS200312 alert("Data "+JSON.stringify(zPrepop(zd[p0])));
            if (dt0 != "FAX") {
                zData.newSplits[c]=autoSplit(doc,p0+"-"+(p-1),p0,zc,zd);
                //doc=docStack; 
                setDocumentContext(doc, dbID0);
                alert("ERS191014.59 after split doc.dbID="+doc.dbID +" new "+c+" = "+zData.newSplits[c]);
                c++;
            }
            //HACK OFF if ((p-p0)>1) dt="was"+dt; //ERS200227 #61196 multiple contimeous Orders 
            dt0=dt; p0=p;
        }
    }
}
alert("Pages "+p0+"-"+(p-1)+" is a "+dt0);
alert("Data "+JSON.stringify(zPrepop(zd[p0])));
if (dt0 != "FAX") {
    zData.newSplits[c]=autoSplit(doc,p0+"-"+(p-1),p0,zc,zd);
}
alert("Splits into "+zData.newSplits);

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
