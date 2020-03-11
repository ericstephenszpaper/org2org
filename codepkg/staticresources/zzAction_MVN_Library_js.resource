<!--
// Name: MVN Library
// Committer: eric.stephens@zpaper.com
// Update: MVN rename
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-03-09 17:01:59","evalContinue":"true","active":true,"button":"","name":"MVN Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotMVN","operation":"ne"}]},"consequence":{"doit":"LyogQkVHSU4gTVZOIExpYnJhcnkgekFjdGlvbiAqLwphbGVydCgiQEBAIEluaXRpYWxpemluZyBNVk5fTGlicmFyeSBMSU5FIDEiKTsKCnpEYXRhLlBDcGFja2FnZSA9ICIiOyAvL01WTiBpcyBub3QgbWFuYWdlZAp6RGF0YS5TRkRDdHlwZSA9IHpEYXRhLlBDcGFja2FnZSArICJEb2N1bWVudF9NVk5fX2MiOwp6RGF0YS56UGFwZXJJZEZpZWxkID0gIkF0dGFjaG1lbnRfSWRfTVZOX19jIjsKCi8vRVJTMjAwMjAyIFRPRE8gbG9va3VwIGZvciBNVk4gcHJvZ3JhbXMKLy9odHRwczovL2NzOTQuc2FsZXNmb3JjZS5jb20vYTQwMFIwMDAwMDBTV0xVIGlzIEFDVElNTVVORQppZiAoIXpEYXRhLk1WTlByb2dyYW1zKSB6RGF0YS5NVk5Qcm9ncmFtcz1bXTsgLy9FUlMyMDAyMDMgaW5pdGlhbGl6ZSBpdCEKCi8vVE9ETyBJZHMgQ2FzZV9NVk5fX2MsIFByb2dyYW1fTWVtYmVyX01WTl9fYwovL1RPRE8gdGV4dC9waWNrbGlzdCBQcm9ncmFtX05hbWVfTVZOX19jLCBUeXBlX01WTl9fYywgCUhaTl9EcnVnX05hbWVfX2MKCi8vRVJTMjAwMTI1IGF0dGFjaGluZyB0byBhIENhc2Ugc2hvdWxkIGNyZWF0ZSBhIERvY3VtZW50X01WTl9fYwp6RGF0YS5uZXdEb2N1bWVudE1WTiA9IGZ1bmN0aW9uKGRvYywgYXJyT2ZQYWlycywgbGFiZWwsIHNmUGFyZW50SWQpIHsKICAgIC8vY3JlYXRlIHBhcnRuZXIgZG9jdW1lbnQgd2hlbiBhZGRpbmcgYW4gQXR0YWNobWVudAogICAgLy9zZXQgZG9jVHlwZSBhbmQgb3RoZXIgbWV0YSBkYXRhCiAgICAvL2Nvbm5lY3QgdG8gQ2FzZSBhbmQgb3RoZXIgYXZhaWxhYmxlIGxvb2t1cHMKICAgIHZhciBTRkRDdHlwZT16RGF0YS5TRkRDdHlwZTsKICAgIHZhciBwcm9ncmFtTmFtZT16RGF0YS5jbGFzc2lmaWNhdGlvbjsgLy9UT0RPIGJldHRlciB0byB1c2UgcHJvZ3JhbQogICAgaWYgKCFzZlBhcmVudElkKSB7YWxlcnQoIm5vIHNmUGFyZW50SWQgaW4gbmV3RG9jdW1lbnQgY2FsbCEiKTsgcmV0dXJuO30gLy9zaG91bGQgYmUgQ2FzZSBvciBNZW1iZXIKICAgIAogICAgdmFyIHpkPXpEYXRhOwogICAgaWYgKCF6RGF0YS5kb2NUeXBlIHx8IHpEYXRhLmRvY1R5cGU9PSJGQVgiKSB6RGF0YS5kb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGUiKTsgLy9FUlMyMDAyMDUKICAgIGlmICghemQudHJpYWdlVHlwZSkgemQudHJpYWdlVHlwZT16RGF0YS5kb2NUeXBlOwogICAgaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZCArICItIiArIHByb2dyYW1OYW1lICsgIiBNVk4gRG9jdW1lbnQgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzt9CgogICAgYXJyT2ZQYWlycy5wdXNoKCJUeXBlX01WTl9fYyIsemQudHJpYWdlVHlwZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlRpdGxlX01WTl9fYyIsemQudHJpYWdlVHlwZSk7IC8vRVJTMjAwMjEzIGxhYmVsIG9yIHR5cGU/CiAgICAvL0VSUzIwMDIxMyBUT0RPIERvIHdlIG5lZWQgdGhlIFNhbGVzZm9yY2UgYXR0YWNoZW50IElkIGZyb20gdGhlIFByb2dyYW0gTWVtYmVyIGF0dGFjaD8gIE5vdCBzdXJlIGhvdyB0byBnZXQgdGhhdC4uLgogICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLnpQYXBlcklkRmllbGQsZG9jLmRiSUQpOyAvL1RPRE8gU0ZEQyBhdHRhY2htZW50IElEIG9yIHdoYXQ/CiAgICBhcnJPZlBhaXJzLnB1c2goIlByb2dyYW1fTmFtZV9NVk5fX2MiLHByb2dyYW1OYW1lKTsKICAgIGlmICh6RGF0YS5jYXNlSWQpIHsgYXJyT2ZQYWlycy5wdXNoKCJDYXNlX01WTl9fYyIsekRhdGEuY2FzZUlkKTsgfQogICAgaWYgKHpEYXRhLnBhdGllbnRJZCAmJiB6RGF0YS5wYXRpZW50SWQgIT0gc2ZQYXJlbnRJZCkgYWxlcnQoIkVSUzIwMDIxMyAiK3pEYXRhLnBhdGllbnRJZCArIiE9Iisgc2ZQYXJlbnRJZCk7CiAgICBpZiAoc2ZQYXJlbnRJZCAmJiBzZlBhcmVudElkLmluZGV4T2YoIjUwMCIpICE9PSAwKSB7IGFyck9mUGFpcnMucHVzaCgiUHJvZ3JhbV9NZW1iZXJfTVZOX19jIixzZlBhcmVudElkKTsgfSAvL1RPRE8gY2hlY2sgSUQgdG8gVHlwZQogICAgCiAgICBhbGVydCgiRVJTMjAwMjEzIE1WTjogIitsYWJlbCsiIHBhdGllbnRJZD0iK3pEYXRhLnBhdGllbnRJZCsiIGNhc2VJZD0iK3pEYXRhLmNhc2VJZCsiIHNmUGFyZW50SWQ9IitzZlBhcmVudElkKTsgLy9FUlMyMDAyMTMgZGVidWcgQkxBTksKICAgIHZhciBuZXdJZD0iIjsKICAgIGlmICghekRhdGEubURvY0lkKSB7CiAgICAgICAgLy9FUlMyMDAzMDkgTVZOIGF1dG9tYXRpb24gbmV3SWQgPSAiIiArIGNyZWF0ZUFuZEF0dGFjaChkb2MsIFNGREN0eXBlLCBsYWJlbCAsIGFyck9mUGFpcnMpOwogICAgICAgIG5ld0lkID0gIiIgK2NyZWF0ZVNGUmVjb3JkKGRvYywgU0ZEQ3R5cGUsIG51bGwsIGFyck9mUGFpcnMpOyAvL0VSUzIwMDMwOSBBdHRhY2htZW50TVZOIHRyaWdnZXJzIG9uIGF0dGFjaGVzCiAgICAgICAgYWxlcnQoIk1hZGUgTVZOOiIrbmV3SWQpOwogICAgfSBlbHNlIHsgLy9UT0RPIHVwZGF0ZSBpdD8KICAgICAgICAvL0VSUzIwMDMwOSBNVk4gYXV0b21hdGlvbiBuZXdJZCA9ICIiICsgY3JlYXRlQW5kQXR0YWNoKGRvYywgU0ZEQ3R5cGUsIGxhYmVsICwgYXJyT2ZQYWlycyk7CiAgICAgICAgbmV3SWQgPSAiIiArY3JlYXRlU0ZSZWNvcmQoZG9jLCBTRkRDdHlwZSwgbnVsbCwgYXJyT2ZQYWlycyk7IC8vRVJTMjAwMzA5IEF0dGFjaG1lbnRNVk4gdHJpZ2dlcnMgb24gYXR0YWNoZXMKICAgICAgICBhbGVydCgiVXBkYXRlIE1WTjoiK25ld0lkKTsKICAgIH0KICAgIGlmIChuZXdJZCkgekRhdGEubURvY0lkPW5ld0lkOwogICAgcmV0dXJuIG5ld0lkOwp9Owo="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN MVN Library zAction */
alert("@@@ Initializing MVN_Library LINE 1");

zData.PCpackage = ""; //MVN is not managed
zData.SFDCtype = zData.PCpackage + "Document_MVN__c";
zData.zPaperIdField = "Attachment_Id_MVN__c";

//ERS200202 TODO lookup for MVN programs
//https://cs94.salesforce.com/a400R000000SWLU is ACTIMMUNE
if (!zData.MVNPrograms) zData.MVNPrograms=[]; //ERS200203 initialize it!

//TODO Ids Case_MVN__c, Program_Member_MVN__c
//TODO text/picklist Program_Name_MVN__c, Type_MVN__c, 	HZN_Drug_Name__c

//ERS200125 attaching to a Case should create a Document_MVN__c
zData.newDocumentMVN = function(doc, arrOfPairs, label, sfParentId) {
    //create partner document when adding an Attachment
    //set docType and other meta data
    //connect to Case and other available lookups
    var SFDCtype=zData.SFDCtype;
    var programName=zData.classification; //TODO better to use program
    if (!sfParentId) {alert("no sfParentId in newDocument call!"); return;} //should be Case or Member
    
    var zd=zData;
    if (!zData.docType || zData.docType=="FAX") zData.docType=X(doc,"X_docType"); //ERS200205
    if (!zd.triageType) zd.triageType=zData.docType;
    if (!label) { label=zd.triageType + "-" + zd.stackId + "-" + programName + " MVN Document received on " + zData.formatNow;}

    arrOfPairs.push("Type_MVN__c",zd.triageType);
    arrOfPairs.push("Title_MVN__c",zd.triageType); //ERS200213 label or type?
    //ERS200213 TODO Do we need the Salesforce attachent Id from the Program Member attach?  Not sure how to get that...
    arrOfPairs.push(zData.zPaperIdField,doc.dbID); //TODO SFDC attachment ID or what?
    arrOfPairs.push("Program_Name_MVN__c",programName);
    if (zData.caseId) { arrOfPairs.push("Case_MVN__c",zData.caseId); }
    if (zData.patientId && zData.patientId != sfParentId) alert("ERS200213 "+zData.patientId +"!="+ sfParentId);
    if (sfParentId && sfParentId.indexOf("500") !== 0) { arrOfPairs.push("Program_Member_MVN__c",sfParentId); } //TODO check ID to Type
    
    alert("ERS200213 MVN: "+label+" patientId="+zData.patientId+" caseId="+zData.caseId+" sfParentId="+sfParentId); //ERS200213 debug BLANK
    var newId="";
    if (!zData.mDocId) {
        //ERS200309 MVN automation newId = "" + createAndAttach(doc, SFDCtype, label , arrOfPairs);
        newId = "" +createSFRecord(doc, SFDCtype, null, arrOfPairs); //ERS200309 AttachmentMVN triggers on attaches
        alert("Made MVN:"+newId);
    } else { //TODO update it?
        //ERS200309 MVN automation newId = "" + createAndAttach(doc, SFDCtype, label , arrOfPairs);
        newId = "" +createSFRecord(doc, SFDCtype, null, arrOfPairs); //ERS200309 AttachmentMVN triggers on attaches
        alert("Update MVN:"+newId);
    }
    if (newId) zData.mDocId=newId;
    return newId;
};

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
