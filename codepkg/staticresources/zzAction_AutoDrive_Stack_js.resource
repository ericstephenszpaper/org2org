<!--
// Name: AutoDrive Stack
// Committer: eric.stephens@zpaper.com
// Update: settings are cached!
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-29 18:34:58","active":true,"button":"Auto","name":"AutoDrive Stack","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Auto","operation":"starts-with"},{"name":"doc.X(\"X_zippiCompare\")","value":"template","operation":"contains"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgQXV0b0RyaXZlIFJ1bGUgRmlyZWQgQEBAIyIpOyAvL0VSUzE5MDgwMyAjNTI2NjEgZnJvbSBPY2NGaXQKCi8vRVJTMjAwMjI3IGNyaXRlcmlhIGxvb2tzIGZvciBhbnkgdGVtcGxhdGUgbm90IGp1c3QgRU5SCgpmdW5jdGlvbiB6UHJlcG9wKGZkLGZpbGxlZCxjb25maWRlbmNlKSB7CiAgICBpZiAoIWZkKSByZXR1cm4ge307CiAgICB2YXIgdmFsdWVzPXt9OwogICAgaWYgKCFmaWxsZWQpIGZpbGxlZD0wLjA0OwogICAgaWYgKCFjb25maWRlbmNlKSBjb25maWRlbmNlPTAuOTA7CiAgICBmb3IgKHZhciB4IGluIGZkKSB7CiAgICAgICAgLy9hbGVydCgieD0iK3gpOwogICAgICAgIHZhciBpPWZkW3hdOwogICAgICAgIGlmIChpLnR5cGU9PSJ0ZXh0IiAmJiBpLmNvbmZpZGVuY2U+PWNvbmZpZGVuY2UpIHsgdmFsdWVzW2kubmFtZV09aS50ZXh0OyBhbGVydChpLm5hbWUrIj0iK2kudGV4dCk7fQogICAgICAgIGlmIChpLnR5cGU9PSJjaGVja2JveCIpIHsgdmFsdWVzW2kubmFtZV09KGkuZmlsbGVkPj1maWxsZWQpOyB9CiAgICAgICAgaWYgKGkudHlwZT09InNpZ25hdHVyZSIpIHsgdmFsdWVzW2kubmFtZV09KGkuZmlsbGVkPj1maWxsZWQpOyB9CiAgICB9CiAgICByZXR1cm4gdmFsdWVzOwp9Cgp6RGF0YS5hdXRvSW5kZXg9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCIiKyJBRHBlcnNvblR5cGVzX19jIikudHJpbSgpOyAvL1RPRE8gUEFDS0FHRSB6RGF0YS56cCsKaWYgKCF6RGF0YS5hdXRvSW5kZXgpIHthbGVydCgiTWlzc2luZyBBRFBlcnNvblR5cGVzIHNldHRpbmcuIik7IHpEYXRhLmF1dG9JbmRleD0iLE9SRCxISVBBQSwiOyB9CmFsZXJ0KCJFUlMyMDAyMjkuMjIgbG9va2luZyBmb3Igc2V0dGluZ3MgIitYQ3VzdG9tU2V0dGluZyhkb2MsIiIrIkFEUGVyc29uVHlwZXNfX2MiKSsiIG5vdyB1c2luZyAiK3pEYXRhLmF1dG9JbmRleCk7CnpEYXRhLmRhdGFDb25maWRlbmNlPSgiMCIrWEN1c3RvbVNldHRpbmcoZG9jLCIiKyJBRGRhdGFDb25maWRlbmNlX19jIikpLzEuMDA7CmlmICghekRhdGEuZGF0YUNvbmZpZGVuY2UpIHpEYXRhLmRhdGFDb25maWRlbmNlPTAuOTI7CmFsZXJ0KCJFUlMyMDAyMjkuMjIgdXNpbmcgY29uZmlkZW5jZSAiK3pEYXRhLmRhdGFDb25maWRlbmNlKyAiIGZyb20gIitYQ3VzdG9tU2V0dGluZyhkb2MsIiIrIkFEZGF0YUNvbmZpZGVuY2VfX2MiKSk7CgoKZnVuY3Rpb24gYXV0b1NwbGl0KGRvYyxwYWdlUmFuZ2UscDAsemMsemQpIHsgLy9FUlMxOTEwMTAgIzYxMzU3CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIGR0PXpjW3AwXS5kb2NUeXBlOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCBkdCk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsInBhZ2UgIitwYWdlUmFuZ2UrIiBhICIrZHQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsZHQrIiBhdXRvU3BsaXQgcGFnZSAiK3BhZ2VSYW5nZSk7CiAgICBpZiAoemRbcDBdKSBhcnJPZlBhaXJzLnB1c2goIlhfemlwcGlEYXRhIixKU09OLnN0cmluZ2lmeSh6UHJlcG9wKHpkW3AwXSkpICk7IC8vRVJTMTkxMDE0IGF1dG9EYXRhCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfemlwcGlDb21wYXJlIiwiW251bGwsIitKU09OLnN0cmluZ2lmeSh6Y1twMF0pKyJdIik7IC8vRVJTMTkxMDE0IGF1dG9EYXRhCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYXV0b0luZGV4ZWRQYWdlcyIsIHBhZ2VSYW5nZSk7CiAgICB2YXIgbmV3SWQ9c3BsaXREb2N1bWVudEZvckluZGV4KGRvYywgImRlcHJlY2F0ZWQiLCBwYWdlUmFuZ2UsYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiRVJTMTkxMDE0IG5ld0lkPSIrbmV3SWQgKyIgZnJvbSAiK3BhZ2VSYW5nZSk7IC8vRVJTMTkxMDE0ICM2MTE5NgogICAgLy90cmFjayhkb2MsICJBdXRvSW5kZXhlZCIsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHpEYXRhLmNvdW50UGFnZXMocGFnZVJhbmdlKSk7CiAgICAvL1RPRE8gRVJTMTkxMDE1IGNyZWF0ZSB6U3RhY2sgcmVjb3JkIHR5cGUgYXV0bwogICAgLy8qCiAgICAvKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCiAgICAvLyoKICAgIAogICAgLy9FUlMyMDAyMjkgbWlnaHQgYmUgYmV0dGVyIGluIGNsaWVudCBsaWJyYXJ5CiAgICBpZiAoekRhdGEuYXV0b0luZGV4LmluZGV4T2YoIiwiK2R0KyIsIik+LTEpIHsgLy9UT0RPIHRlbXBsYXRlIGxvb2t1cCB3aXRoIHJlY29yZCB0eXBlIGFuZCBrZXkgdmFsdWVzCiAgICAgICAgdmFyIGF0dGFjaGVkSWQ9ekRhdGEuY2xpZW50QXV0b0luZGV4KGRvYyxkdCx6UHJlcG9wKHpkW3AwXSwwLjAzLHpEYXRhLmRhdGFDb25maWRlbmNlKSk7CiAgICB9IGVsc2UgeyBhbGVydCgiRVJTMjAwMjI5LjQ0ICIrZHQgKyIgbm90IGluICIrekRhdGEuYXV0b0luZGV4KTsgfQogICAgCiAgICByZXR1cm4gbmV3SWQ7Cn0KCnZhciBzdGFja0lkID0gekRhdGEuZ2V0U3RhY2tJZChkb2MpOyAvL0VSUzE5MDYyNCBIQUNLPwp6RGF0YS5zdGFnZT0iQXV0b0luZGV4ZWQiOwp6RGF0YS5wYWdlcz0oIjAiK1goZG9jLCJYX3BhZ2VzIikpLzE7IGlmICh6RGF0YS5wYWdlcz09PTApIHpEYXRhLnBhZ2VzPTE7IC8vVE9ETyBpbnRpYWxpemUgekRhdGEgYmV0dGVyCgovL3JlYWxseSBuZWVkIHBhdGllbnQgaW5mbyBlbm91Z2ggdG8gYXR0YWNoIG9yIGNyZWF0ZQovL3pEYXRhLmdldERhdGFFbnRyeUZpZWxkcyhkb2MpOyAvL0VSUzE5MDkxNCBnZXQgZnJvbSBYX3ppcHBpRGF0YQp2YXIgemM9WChkb2MsIlhfemlwcGlDb21wYXJlIik7CnZhciB6ZD1YKGRvYywiWF96aXBwaURhdGEiKTsKYWxlcnQoInpjPSIremMpOwppZiAoemMgJiYgemMuaW5kZXhPZigiWyIpPT09MCkge3pjPUpTT04ucGFyc2UoemMpO30KYWxlcnQoInpjIG5vdyAiK3pjKTsKaWYgKHpkICYmIHpkLmluZGV4T2YoIlsiKT09PTApIHt6ZD1KU09OLnBhcnNlKHpkKTt9CgovL2xvb3AgcGFnZXMKdmFyIGR0MD0iRkFYIiwgcDA9MSwgYz0wOwp2YXIgZGJJRDA9ZG9jLmRiSUQ7CnZhciBkb2NTdGFjaz1kb2M7CnpEYXRhLm5ld1NwbGl0cz1bXTsKCmZvciAodmFyIHA9MTsgcDw9ekRhdGEucGFnZXM7IHArKykgewogICAgYWxlcnQoInBhZ2UgIitwKTsKICAgIGFsZXJ0KCJ6Y1tdPSIremNbcF0pOwogICAgaWYgKHpjW3BdKSB7CiAgICAgICAgdmFyIGR0PXpjW3BdLmRvY1R5cGU7CiAgICAgICAgaWYgKGR0ICE9IGR0MCB8fCAxPT0xKSB7IC8vRVJTMjAwMjI3ICM2MTE5NiB6Y1twXSBleGlzdGluZyBpcyBlbm91Z2g/CiAgICAgICAgICAgIGFsZXJ0KCJTcGxpdCAiK3AwKyItIisocC0xKSsiIGludG8gIitkdDApOwogICAgICAgICAgICBhbGVydCgiRGF0YSAiK0pTT04uc3RyaW5naWZ5KHpQcmVwb3AoemRbcDBdKSkpOwogICAgICAgICAgICBpZiAoZHQwICE9ICJGQVgiKSB7CiAgICAgICAgICAgICAgICB6RGF0YS5uZXdTcGxpdHNbY109YXV0b1NwbGl0KGRvYyxwMCsiLSIrKHAtMSkscDAsemMsemQpOwogICAgICAgICAgICAgICAgLy9kb2M9ZG9jU3RhY2s7IAogICAgICAgICAgICAgICAgc2V0RG9jdW1lbnRDb250ZXh0KGRvYywgZGJJRDApOwogICAgICAgICAgICAgICAgYWxlcnQoIkVSUzE5MTAxNC41OSBhZnRlciBzcGxpdCBkb2MuZGJJRD0iK2RvYy5kYklEICsiIG5ldyAiK2MrIiA9ICIrekRhdGEubmV3U3BsaXRzW2NdKTsKICAgICAgICAgICAgICAgIGMrKzsKICAgICAgICAgICAgfQogICAgICAgICAgICAvL0hBQ0sgT0ZGIGlmICgocC1wMCk+MSkgZHQ9IndhcyIrZHQ7IC8vRVJTMjAwMjI3ICM2MTE5NiBtdWx0aXBsZSBjb250aW1lb3VzIE9yZGVycyAKICAgICAgICAgICAgZHQwPWR0OyBwMD1wOwogICAgICAgIH0KICAgIH0KfQphbGVydCgiUGFnZXMgIitwMCsiLSIrKHAtMSkrIiBpcyBhICIrZHQwKTsKYWxlcnQoIkRhdGEgIitKU09OLnN0cmluZ2lmeSh6UHJlcG9wKHpkW3AwXSkpKTsKaWYgKGR0MCAhPSAiRkFYIikgewogICAgekRhdGEubmV3U3BsaXRzW2NdPWF1dG9TcGxpdChkb2MscDArIi0iKyhwLTEpLHAwLHpjLHpkKTsKfQphbGVydCgiU3BsaXRzIGludG8gIit6RGF0YS5uZXdTcGxpdHMpOwoKLyogZW5kIG9mIHJ1bGUgKi8="},"ordinal":27}

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
        if (i.type=="signature") { values[i.name]=(i.filled>=filled); }
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
    var newId=splitDocumentForIndex(doc, "deprecated", pageRange,arrOfPairs);
    alert("ERS191014 newId="+newId +" from "+pageRange); //ERS191014 #61196
    //track(doc, "AutoIndexed", "Document with Id: " + doc.dbID, zData.countPages(pageRange));
    //TODO ERS191015 create zStack record type auto
    //*
    /* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
    //*
    
    //ERS200229 might be better in client library
    if (zData.autoIndex.indexOf(","+dt+",")>-1) { //TODO template lookup with record type and key values
        var attachedId=zData.clientAutoIndex(doc,dt,zPrepop(zd[p0],0.03,zData.dataConfidence));
    } else { alert("ERS200229.44 "+dt +" not in "+zData.autoIndex); }
    
    return newId;
}

var stackId = zData.getStackId(doc); //ERS190624 HACK?
zData.stage="AutoIndexed";
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

for (var p=1; p<=zData.pages; p++) {
    alert("page "+p);
    alert("zc[]="+zc[p]);
    if (zc[p]) {
        var dt=zc[p].docType;
        if (dt != dt0 || 1==1) { //ERS200227 #61196 zc[p] existing is enough?
            alert("Split "+p0+"-"+(p-1)+" into "+dt0);
            alert("Data "+JSON.stringify(zPrepop(zd[p0])));
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
ZnVuY3Rpb24gekluc3RhbGwoKSB7IC8vRVJTMTcwNzIyIHNldCBvbiB0aGUgaW1wb3J0CiAgICAkKCJbbmFtZT0nZGItQkFURVMnXSIpLnZhbCgiIik7CiAgICBpZiAoJCgiI1hfYnV0dG9uQWN0aW9ucyIpLnZhbCgpID09PSAiIikgeyAkKCIjWF9idXR0b25BY3Rpb25zIikudmFsKCJJbmRleCxJZ25vcmUsUmVqZWN0LFN0YWNrIENvbXBsZXRlIik7IH0gLy9FUlMxOTA3MjkgIzYxMjcyIGRvIG5vdCBvdmVyaWRlCiAgICBpZiAoJCgiI1hfZm9sZGVyRm9ybXMiKS52YWwoKSA9PT0gIiIpIHsgJCgiI1hfZm9sZGVyRm9ybXMiKS52YWwoIjIwMjAwMjAxNzExMjUwOTExMTVfRGF0YTJfV2ViX0Zvcm0iKTsgfSAvL0VSUzE5MDcyOSAjNjEyNzIgZG8gbm90IG92ZXJpZGUKfSAvL0VSUzE3MDcyMiBlbmQgb2YgZnVuY3Rpb24KCmZ1bmN0aW9uIGRvVmFsaWRhdGlvbigpIHsKICAgIC8vQ1JOMTcwNzE5IERydWcgbmFtZSBpcyByZXF1aXJlZAogICAgLy9FUlMxNzA3MTkgbW9yZSBmaWVsZHMgZnJvbSBLZW4KICAgIHZhciBjYXNlSWQgPSAkKCdbbmFtZT0iWF9DYXNlX19jIl0nKS52YWwoKTsKICAgIC8vRVJTMTcwNzI3IGRlYnVnIG9ubHkgYWxlcnQoIkNhc2UgIitjYXNlSWQpOwogICAgCiAgICB2YXIgcmVxQnVmZmVyID0gIiI7CiAgICAKICAgIG49IlhfWlBBUEVSX19mYXhUeXBlX19jIjsgbD0iRG9jdW1lbnQgVHlwZSI7CiAgICBlPSQoJ1tuYW1lPSInK24rJyJdJyk7CiAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCByZWQnKTsKICAgICAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsgcmVxQnVmZmVyICs9ICIsICI7IH0KICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgIH0gZWxzZSBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICAKICAgIG49IlhfWlBBUEVSX19Qcmlvcml0eV9fYyI7IGw9IlByaW9yaXR5IjsKICAgIGU9JCgnW25hbWU9IicrbisnIl0nKTsKICAgIGlmIChlLmxlbmd0aCkgeyAvL0VSUzE5MDcyOSAjNjEyNzIKICAgICAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgICAgIGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgIGlmIChyZXFCdWZmZXIubGVuZ3RoID4gMCkgeyByZXFCdWZmZXIgKz0gIiwgIjsgfQogICAgICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgICAgICB9IGVsc2UgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwogICAgfSAvL2Vsc2UgYWxlcnQoIk5vdCB1c2luZyBQcmlvcml0eSIpOwogICAgCiAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsKICAgICAgICBhbGVydCgiRVJST1I6IFRoZSBmb2xsb3dpbmcgZmllbGRzIGFyZSByZXF1aXJlZDogIiArIHJlcUJ1ZmZlcik7CiAgICAgICAgcmV0dXJuIGZhbHNlOyAgIC8vQ1JOMTcwNzE5IG9uZSBvciBtb3JlIGZpZWxkIGlzIG1pc3NpbmcsIGRvbid0IHNlbmQgdG8gdGhlIHJ1bGVzIGVuZ2luZQogICAgfQogICAgcmV0dXJuIHRydWU7ICAgICAgICAvL0NSTjE3MDcxOSBBbGwgcmVxdWlyZWQgZmllbGRzIGhhdmUgYmVlbiBzdXBwbGllZCwgbGV0IHRoZSBydWxlcyBlbmdpbmUgYmUgbm90aWZpZWQKfQoKcmV0dXJuIGRvVmFsaWRhdGlvbigpOw==
//--- RULE VALIDATION CODE - END ---

</script>
