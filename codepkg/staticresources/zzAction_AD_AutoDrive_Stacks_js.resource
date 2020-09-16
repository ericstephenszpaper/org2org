<!--
// Name: AD AutoDrive Stacks
// Committer: eric.stephens@zpaper.com
// Update: ERS200915 #75381 accelerator and orientations
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-09-15 18:32:10","active":true,"button":"Auto","name":"AD AutoDrive Stacks","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Auto","operation":"starts-with"},{"name":"doc.X(\"X_zippiCompare\")","value":"template","operation":"contains"}]},"consequence":{"doit":"XWFsZXJ0KCJAQEBAIEF1dG9Ecml2ZSBSdWxlIEZpcmVkIEBAQCMiKTsgLy9FUlMxOTA4MDMgIzUyNjYxIGZyb20gT2NjRml0CgovL0VSUzIwMDIyNyBjcml0ZXJpYSBsb29rcyBmb3IgYW55IHRlbXBsYXRlIG5vdCBqdXN0IEVOUgoKZnVuY3Rpb24gelByZXBvcChmZCxmaWxsZWQsY29uZmlkZW5jZSkgewogICAgaWYgKCFmZCkgcmV0dXJuIHt9OwogICAgdmFyIHZhbHVlcz17fTsKICAgIGlmICghZmlsbGVkKSBmaWxsZWQ9MC4wNDsKICAgIGlmICghY29uZmlkZW5jZSkgY29uZmlkZW5jZT0wLjkwOwogICAgZm9yICh2YXIgeCBpbiBmZCkgewogICAgICAgIC8vYWxlcnQoIng9Iit4KTsKICAgICAgICB2YXIgaT1mZFt4XTsKICAgICAgICBpZiAoaS50eXBlPT0idGV4dCIgJiYgaS5jb25maWRlbmNlPj1jb25maWRlbmNlKSB7IHZhbHVlc1tpLm5hbWVdPWkudGV4dDsgYWxlcnQoaS5uYW1lKyI9IitpLnRleHQpO30KICAgICAgICBpZiAoaS50eXBlPT0iY2hlY2tib3giKSB7IHZhbHVlc1tpLm5hbWVdPShpLmZpbGxlZD49ZmlsbGVkKTsgfQogICAgICAgIGlmIChpLnR5cGU9PSJzaWduYXR1cmUiKSB7IHZhbHVlc1tpLm5hbWVdPShpLmZpbGxlZD49ZmlsbGVkKTsgfSAvL0VSUzIwMDQwNiBUT0RPIHVzZSB0byBkZXRlY3Qgc2lnbmVkCiAgICB9CiAgICByZXR1cm4gdmFsdWVzOwp9Cgp6RGF0YS5hdXRvSW5kZXg9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCIiKyJBRHBlcnNvblR5cGVzX19jIikudHJpbSgpOyAvL1RPRE8gUEFDS0FHRSB6RGF0YS56cCsKaWYgKCF6RGF0YS5hdXRvSW5kZXgpIHthbGVydCgiTWlzc2luZyBBRFBlcnNvblR5cGVzIHNldHRpbmcuIik7IHpEYXRhLmF1dG9JbmRleD0iLE9SRCxISVBBQSwiOyB9CmFsZXJ0KCJFUlMyMDAyMjkuMjIgbG9va2luZyBmb3Igc2V0dGluZ3MgIitYQ3VzdG9tU2V0dGluZyhkb2MsIiIrIkFEUGVyc29uVHlwZXNfX2MiKSsiIG5vdyB1c2luZyAiK3pEYXRhLmF1dG9JbmRleCk7CnpEYXRhLmRhdGFDb25maWRlbmNlPSgiMCIrWEN1c3RvbVNldHRpbmcoZG9jLCIiKyJBRGRhdGFDb25maWRlbmNlX19jIikpLzEuMDA7CmlmICghekRhdGEuZGF0YUNvbmZpZGVuY2UpIHpEYXRhLmRhdGFDb25maWRlbmNlPTAuOTI7CmFsZXJ0KCJFUlMyMDAyMjkuMjIgdXNpbmcgY29uZmlkZW5jZSAiK3pEYXRhLmRhdGFDb25maWRlbmNlKyAiIGZyb20gIitYQ3VzdG9tU2V0dGluZyhkb2MsIiIrIkFEZGF0YUNvbmZpZGVuY2VfX2MiKSk7CgoKZnVuY3Rpb24gYXV0b1NwbGl0KGRvYyxwYWdlUmFuZ2UscDAsemMsemQpIHsgLy9FUlMxOTEwMTAgIzYxMzU3CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIGR0PXpjW3AwXS5kb2NUeXBlOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCBkdCk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsInBhZ2UgIitwYWdlUmFuZ2UrIiBhICIrZHQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsZHQrIiBhdXRvU3BsaXQgcGFnZSAiK3BhZ2VSYW5nZSk7CiAgICBpZiAoemRbcDBdKSBhcnJPZlBhaXJzLnB1c2goIlhfemlwcGlEYXRhIixKU09OLnN0cmluZ2lmeSh6UHJlcG9wKHpkW3AwXSkpICk7IC8vRVJTMTkxMDE0IGF1dG9EYXRhCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfemlwcGlDb21wYXJlIiwiW251bGwsIitKU09OLnN0cmluZ2lmeSh6Y1twMF0pKyJdIik7IC8vRVJTMTkxMDE0IGF1dG9EYXRhCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYXV0b0luZGV4ZWRQYWdlcyIsIHBhZ2VSYW5nZSk7CiAgICBhbGVydCgiRVJTMjAwMzEyLjM3IGJlZm9yZSBzcGxpdCAiK3BhZ2VSYW5nZSk7CiAgICB2YXIgbmV3SWQ9c3BsaXREb2N1bWVudEZvckluZGV4KGRvYywgImRlcHJlY2F0ZWQiLCBwYWdlUmFuZ2UsYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiRVJTMTkxMDE0IG5ld0lkPSIrbmV3SWQgKyIgZnJvbSAiK3BhZ2VSYW5nZSk7IC8vRVJTMTkxMDE0ICM2MTE5NgogICAgCiAgICAvL0VSUzIwMDMxMSBibG93cyB1cCEhISB0cmFjayhkb2MsICJBdXRvSW5kZXhlZCIsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHpEYXRhLmNvdW50UGFnZXMocGFnZVJhbmdlKSk7IC8vRVJTMjAwMzA4IHRyYWNraW5nCiAgICAvL1RPRE8gRVJTMTkxMDE1IGNyZWF0ZSB6U3RhY2sgcmVjb3JkIHR5cGUgYXV0bwogICAgLy8qCiAgICAvKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCiAgICAvLyoKICAgIC8vRVJTMjAwNDMwOCBUT0RPIHhfcmV2aWV3cyBmb3IgU2lnbmVkCiAgICAvL0VSUzIwMDQwNiAjNzExNTYgVE9ETyBkZXRlY3QgU2lnbmF0dXJlLCJ0cnVlIiBhbmQgYWRkIHN0YWdlIGZvciBTaWduZWQKICAgIHZhciBhcnJPZlBhaXJzMiA9IFtdOwogICAgekRhdGEuc3RhZ2U9IlJlY2VpdmVkIjsKICAgIGFyck9mUGFpcnMyPXpEYXRhLmFkZFN0YWdlKGRvYyxhcnJPZlBhaXJzLHpEYXRhLnN0YWdlKTsgLy9FUlMyMDA0MTggIzcxNDE1CiAgICB2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MscGFnZVJhbmdlKTsKICAgIHRyYWNrKGRvYywgIlN0YWdlLiIrekRhdGEuc3RhZ2UsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHBhZ2VDb3VudCk7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlyczIpOwogICAgCiAgICAvL0VSUzIwMDIyOSBtaWdodCBiZSBiZXR0ZXIgaW4gY2xpZW50IGxpYnJhcnkKICAgIHZhciBuZXdDaGlsZFN0YWNrSWQ9IiI7CiAgICBpZiAoekRhdGEuYXV0b0luZGV4LmluZGV4T2YoIiwiK2R0KyIsIik+LTEgfHwgekRhdGEucElkMCkgeyAvL2xvb2t1cCB3aXRoIHJlY29yZCB0eXBlLCBrZXkgdmFsdWVzIGFuZCByZWNlbnQgcElkMCBFUlMyMDA0MTgKICAgICAgICB2YXIgYXR0YWNoZWRJZD16RGF0YS5jbGllbnRBdXRvSW5kZXgoZG9jLGR0LHpQcmVwb3AoemRbcDBdLDAuMDMsekRhdGEuZGF0YUNvbmZpZGVuY2UpKTsKICAgICAgICBpZiAoMT09PTEgJiYgYXR0YWNoZWRJZCkgeyAvL0VSUzIwMDUwMiAjNzAyNzMgbm90IHNob3dpbmcgdXAgb24gdGhlIFRpbWVsaW5lCiAgICAgICAgICAgIC8vekRhdGEucGF0aWVudElkPXpEYXRhLmNsaWVudFBhdGllbnQoZG9jLGFyck9mUGFpcnMpOwogICAgICAgICAgICAvL2FsZXJ0KCJDcmVhdGVkIFBhdGllbnQgd2l0aCBJRDogIiArIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgIC8vYXR0YWNoKGRvYywgZHQrIiBBdXRvU3BsaXQgcGFnZSAiK3BhZ2VSYW5nZSwgYXR0YWNoZWRJZCk7CiAgICAgICAgICAgIHpEYXRhLnBhdGllbnRJZD1hdHRhY2hlZElkOwogICAgICAgICAgICB6RGF0YS5kb2NUeXBlPWR0OwogICAgICAgICAgICBpZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwMSIpPT09MCkgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIiwgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgbmV3Q2hpbGRTdGFja0lkPXpEYXRhLmNsaWVudENoaWxkU3RhY2soZG9jLGFyck9mUGFpcnMsekRhdGEuc3RhY2tJZCk7IC8vRVJTMjAwNTAzICM3MDI3MyBtYWtlcyB0aGUgVGltZWxpbmUgdGFzawogICAgICAgICAgICBhbGVydCgiTmV3IEF1dG9TdGFjayAiK25ld0NoaWxkU3RhY2tJZCk7CiAgICAgICAgfQogICAgfSBlbHNlIHsgYWxlcnQoIkVSUzIwMDIyOS40NCAiK2R0ICsiIG5vdCBpbiAiK3pEYXRhLmF1dG9JbmRleCk7IH0KICAgIAogICAgcmV0dXJuIG5ld0lkOwp9Cgp2YXIgc3RhY2tJZCA9IHpEYXRhLmdldFN0YWNrSWQoZG9jKTsgLy9FUlMxOTA2MjQgSEFDSz8gLy9FUlMyMDA3MTEgIzcyNDMzIGFkZGVkIGludG8gelN0YWNrIGxpYnJhcnkgZnJvbSAyMDE5CnpEYXRhLnN0YWdlPSJJbmRleGVkIjsgLy9FUlMyMDAzMTAgQXV0b0luZGV4ZWQgaXMgbm90IGluIHpTdGFjayBwaWNrbGlzdAp6RGF0YS5wYWdlcz0oIjAiK1goZG9jLCJYX3BhZ2VzIikpLzE7IGlmICh6RGF0YS5wYWdlcz09PTApIHpEYXRhLnBhZ2VzPTE7IC8vVE9ETyBpbnRpYWxpemUgekRhdGEgYmV0dGVyCgovL3JlYWxseSBuZWVkIHBhdGllbnQgaW5mbyBlbm91Z2ggdG8gYXR0YWNoIG9yIGNyZWF0ZQovL3pEYXRhLmdldERhdGFFbnRyeUZpZWxkcyhkb2MpOyAvL0VSUzE5MDkxNCBnZXQgZnJvbSBYX3ppcHBpRGF0YQp2YXIgemM9WChkb2MsIlhfemlwcGlDb21wYXJlIik7CnZhciB6ZD1YKGRvYywiWF96aXBwaURhdGEiKTsKYWxlcnQoInpjPSIremMpOwppZiAoemMgJiYgemMuaW5kZXhPZigiWyIpPT09MCkge3pjPUpTT04ucGFyc2UoemMpO30KYWxlcnQoInpjIG5vdyAiK3pjKTsKaWYgKHpkICYmIHpkLmluZGV4T2YoIlsiKT09PTApIHt6ZD1KU09OLnBhcnNlKHpkKTt9CgovL2xvb3AgcGFnZXMKdmFyIGR0MD0iRkFYIiwgcDA9MSwgYz0wOwp2YXIgZGJJRDA9ZG9jLmRiSUQ7CnZhciBkb2NTdGFjaz1kb2M7CnpEYXRhLm5ld1NwbGl0cz1bXTsKekRhdGEuc3RhY2tJZD1zdGFja0lkOyAvL0VSUzIwMDUwMyAjNzAyNzMKCnpEYXRhLnJvdGF0aW9uPSIiOyAvL0VSUzIwMDcwNCAjNzI0MzMKZm9yICh2YXIgcD0xOyBwPD16RGF0YS5wYWdlczsgcCsrKSB7CiAgICBhbGVydCgicGFnZSAiK3ApOwogICAgYWxlcnQoInpjW109Iit6Y1twXSk7CiAgICBpZiAoemNbcF0pIHsKICAgICAgICB2YXIgZHQ9emNbcF0uZG9jVHlwZTsKICAgICAgICBpZiAoZHQgIT0gZHQwIHx8IDE9PTEpIHsgLy9FUlMyMDAyMjcgIzYxMTk2IHpjW3BdIGV4aXN0aW5nIGlzIGVub3VnaD8KICAgICAgICAgICAgYWxlcnQoIlNwbGl0ICIrcDArekRhdGEucm90YXRpb24rIi0iKyhwLTEpKyIgaW50byAiK2R0MCk7CiAgICAgICAgICAgIC8vRVJTMjAwMzEyIGFsZXJ0KCJEYXRhICIrSlNPTi5zdHJpbmdpZnkoelByZXBvcCh6ZFtwMF0pKSk7CiAgICAgICAgICAgIGlmIChkdDAgIT0gIkZBWCIpIHsKICAgICAgICAgICAgICAgIGlmICh6YyAmJiB6Y1twXSAmJiB6Y1twXS5vcmllbnQgJiYgemNbcF0ub3JpZW50PT0xODApIHpEYXRhLnJvdGF0aW9uPSJ1IjsgLy9FUlMyMDA3MDQgIzcyNDMzCiAgICAgICAgICAgICAgICB6RGF0YS5uZXdTcGxpdHNbY109YXV0b1NwbGl0KGRvYyxwMCt6RGF0YS5yb3RhdGlvbisiLSIrKHAtMSkscDAsemMsemQpOwogICAgICAgICAgICAgICAgekRhdGEucm90YXRpb249IiI7IC8vRVJTMjAwNzExIHJlc2V0IHRvICIiIGFmdGVyIHRoZSBzcGxpdAogICAgICAgICAgICAgICAgLy9kb2M9ZG9jU3RhY2s7IAogICAgICAgICAgICAgICAgc2V0RG9jdW1lbnRDb250ZXh0KGRvYywgZGJJRDApOwogICAgICAgICAgICAgICAgYWxlcnQoIkVSUzE5MTAxNC41OSBhZnRlciBzcGxpdCBkb2MuZGJJRD0iK2RvYy5kYklEICsiIG5ldyAiK2MrIiA9ICIrekRhdGEubmV3U3BsaXRzW2NdKTsKICAgICAgICAgICAgICAgIGMrKzsKICAgICAgICAgICAgfQogICAgICAgICAgICAvL0hBQ0sgT0ZGIGlmICgocC1wMCk+MSkgZHQ9IndhcyIrZHQ7IC8vRVJTMjAwMjI3ICM2MTE5NiBtdWx0aXBsZSBjb250aW1lb3VzIE9yZGVycyAKICAgICAgICAgICAgZHQwPWR0OyBwMD1wOwogICAgICAgIH0KICAgIH0KfQovL0VSUzIwMDkxNSAjNzUzODEgYWNjZWxlcmF0b3IgYW5kIG9yaWVudGF0aW9ucwppZiAoemNbcDBdICYmIHpjW3AwXS5vcmllbnQgJiYgemNbcDBdLm9yaWVudD09MTgwKSB6RGF0YS5yb3RhdGlvbj0idSI7IC8vRVJTMjAwNzA0ICM3MjQzMyAvL0VSUzIwMDcxMSBUT0RPIG9yaWVudD0wIGluIGRlZmF1bHQKCmFsZXJ0KCJFUlMyMDA3MTEuMTE2IHJvdGF0aW9uPSIrekRhdGEucm90YXRpb24rIiBQYWdlcyAiK3AwK3pEYXRhLnJvdGF0aW9uKyItIisocC0xKSsiIGlzIGEgIitkdDApOwphbGVydCgiRGF0YSAiK0pTT04uc3RyaW5naWZ5KHpQcmVwb3AoemRbcDBdKSkpOwppZiAoZHQwICE9ICJGQVgiKSB7CiAgICB6RGF0YS5uZXdTcGxpdHNbY109YXV0b1NwbGl0KGRvYyxwMCt6RGF0YS5yb3RhdGlvbisiLSIrKHAtMSkscDAsemMsemQpOwp9CmFsZXJ0KCJTcGxpdHMgaW50byAiK3pEYXRhLm5ld1NwbGl0cyk7CgovKiBlbmQgb2YgcnVsZSAqLw=="},"ordinal":28}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
]alert("@@@@ AutoDrive Rule Fired @@@#"); //ERS190803 #52661 from OccFit

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

var stackId = zData.getStackId(doc); //ERS190624 HACK? //ERS200711 #72433 added into zStack library from 2019
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

zData.rotation=""; //ERS200704 #72433
for (var p=1; p<=zData.pages; p++) {
    alert("page "+p);
    alert("zc[]="+zc[p]);
    if (zc[p]) {
        var dt=zc[p].docType;
        if (dt != dt0 || 1==1) { //ERS200227 #61196 zc[p] existing is enough?
            alert("Split "+p0+zData.rotation+"-"+(p-1)+" into "+dt0);
            //ERS200312 alert("Data "+JSON.stringify(zPrepop(zd[p0])));
            if (dt0 != "FAX") {
                if (zc && zc[p] && zc[p].orient && zc[p].orient==180) zData.rotation="u"; //ERS200704 #72433
                zData.newSplits[c]=autoSplit(doc,p0+zData.rotation+"-"+(p-1),p0,zc,zd);
                zData.rotation=""; //ERS200711 reset to "" after the split
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
//ERS200915 #75381 accelerator and orientations
if (zc[p0] && zc[p0].orient && zc[p0].orient==180) zData.rotation="u"; //ERS200704 #72433 //ERS200711 TODO orient=0 in default

alert("ERS200711.116 rotation="+zData.rotation+" Pages "+p0+zData.rotation+"-"+(p-1)+" is a "+dt0);
alert("Data "+JSON.stringify(zPrepop(zd[p0])));
if (dt0 != "FAX") {
    zData.newSplits[c]=autoSplit(doc,p0+zData.rotation+"-"+(p-1),p0,zc,zd);
}
alert("Splits into "+zData.newSplits);

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
