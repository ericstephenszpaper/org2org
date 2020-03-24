<!--
// Name: MVN Library
// Committer: eric.stephens@zpaper.com
// Update: ERS200324 #69149 set type with no :
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-03-24 22:15:45","evalContinue":"true","active":true,"button":"","name":"MVN Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotMVN","operation":"ne"}]},"consequence":{"doit":"LyogQkVHSU4gTVZOIExpYnJhcnkgekFjdGlvbiAqLwphbGVydCgiQEBAIEluaXRpYWxpemluZyBNVk5fTGlicmFyeSBMSU5FIDEiKTsKCnpEYXRhLlBDcGFja2FnZSA9ICIiOyAvL01WTiBpcyBub3QgbWFuYWdlZAp6RGF0YS5TRkRDdHlwZSA9IHpEYXRhLlBDcGFja2FnZSArICJEb2N1bWVudF9NVk5fX2MiOwp6RGF0YS56UGFwZXJJZEZpZWxkID0gIkF0dGFjaG1lbnRfSWRfTVZOX19jIjsKCi8vRVJTMjAwMjAyIFRPRE8gbG9va3VwIGZvciBNVk4gcHJvZ3JhbXMKLy9odHRwczovL2NzOTQuc2FsZXNmb3JjZS5jb20vYTQwMFIwMDAwMDBTV0xVIGlzIEFDVElNTVVORQppZiAoIXpEYXRhLk1WTlByb2dyYW1zKSB6RGF0YS5NVk5Qcm9ncmFtcz1bXTsgLy9FUlMyMDAyMDMgaW5pdGlhbGl6ZSBpdCEKCi8vVE9ETyBJZHMgQ2FzZV9NVk5fX2MsIFByb2dyYW1fTWVtYmVyX01WTl9fYwovL1RPRE8gdGV4dC9waWNrbGlzdCBQcm9ncmFtX05hbWVfTVZOX19jLCBUeXBlX01WTl9fYywgCUhaTl9EcnVnX05hbWVfX2MKCi8vRVJTMjAwMTI1IGF0dGFjaGluZyB0byBhIENhc2Ugc2hvdWxkIGNyZWF0ZSBhIERvY3VtZW50X01WTl9fYwp6RGF0YS5uZXdEb2N1bWVudE1WTiA9IGZ1bmN0aW9uKGRvYywgYXJyT2ZQYWlycywgbGFiZWwsIHNmUGFyZW50SWQpIHsKICAgIC8vY3JlYXRlIHBhcnRuZXIgZG9jdW1lbnQgd2hlbiBhZGRpbmcgYW4gQXR0YWNobWVudAogICAgLy9zZXQgZG9jVHlwZSBhbmQgb3RoZXIgbWV0YSBkYXRhCiAgICAvL2Nvbm5lY3QgdG8gQ2FzZSBhbmQgb3RoZXIgYXZhaWxhYmxlIGxvb2t1cHMKICAgIHZhciBTRkRDdHlwZT16RGF0YS5TRkRDdHlwZTsKICAgIHZhciBwcm9ncmFtTmFtZT16RGF0YS5jbGFzc2lmaWNhdGlvbjsgLy9UT0RPIGJldHRlciB0byB1c2UgcHJvZ3JhbQogICAgaWYgKCFzZlBhcmVudElkKSB7YWxlcnQoIm5vIHNmUGFyZW50SWQgaW4gbmV3RG9jdW1lbnQgY2FsbCEiKTsgcmV0dXJuO30gLy9zaG91bGQgYmUgQ2FzZSBvciBNZW1iZXIKICAgIAogICAgdmFyIHpkPXpEYXRhOwogICAgaWYgKCF6RGF0YS5kb2NUeXBlIHx8IHpEYXRhLmRvY1R5cGU9PSJGQVgiKSB6RGF0YS5kb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGUiKTsgLy9FUlMyMDAyMDUKICAgIGlmICghemQudHJpYWdlVHlwZSkgemQudHJpYWdlVHlwZT16RGF0YS5kb2NUeXBlOwogICAgaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZCArICItIiArIHByb2dyYW1OYW1lICsgIiBNVk4gRG9jdW1lbnQgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzt9CgogICAgaWYgKHpkLnRyaWFnZVR5cGUuaW5kZXhPZigiOiIpPi0xKSB7IHpkLnRyaWFnZVR5cGU9emQudHJpYWdlVHlwZS5zdWJzdHJpbmcoMSt6ZC50cmlhZ2VUeXBlLmluZGV4T2YoIjoiKSk7IH0gLy9FUlMyMDAzMjQgIzY5MTQ5CiAgICBhcnJPZlBhaXJzLnB1c2goIlR5cGVfTVZOX19jIix6ZC50cmlhZ2VUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiVGl0bGVfTVZOX19jIix6ZC50cmlhZ2VUeXBlKTsgLy9FUlMyMDAyMTMgbGFiZWwgb3IgdHlwZT8KICAgIC8vRVJTMjAwMjEzIFRPRE8gRG8gd2UgbmVlZCB0aGUgU2FsZXNmb3JjZSBhdHRhY2hlbnQgSWQgZnJvbSB0aGUgUHJvZ3JhbSBNZW1iZXIgYXR0YWNoPyAgTm90IHN1cmUgaG93IHRvIGdldCB0aGF0Li4uCiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuelBhcGVySWRGaWVsZCxkb2MuZGJJRCk7IC8vVE9ETyBTRkRDIGF0dGFjaG1lbnQgSUQgb3Igd2hhdD8KICAgIGFyck9mUGFpcnMucHVzaCgiUHJvZ3JhbV9OYW1lX01WTl9fYyIscHJvZ3JhbU5hbWUpOwogICAgaWYgKHpEYXRhLmNhc2VJZCkgeyBhcnJPZlBhaXJzLnB1c2goIkNhc2VfTVZOX19jIix6RGF0YS5jYXNlSWQpOyB9CiAgICBpZiAoekRhdGEucGF0aWVudElkICYmIHpEYXRhLnBhdGllbnRJZCAhPSBzZlBhcmVudElkKSBhbGVydCgiRVJTMjAwMjEzICIrekRhdGEucGF0aWVudElkICsiIT0iKyBzZlBhcmVudElkKTsKICAgIGlmIChzZlBhcmVudElkICYmIHNmUGFyZW50SWQuaW5kZXhPZigiNTAwIikgIT09IDApIHsgYXJyT2ZQYWlycy5wdXNoKCJQcm9ncmFtX01lbWJlcl9NVk5fX2MiLHNmUGFyZW50SWQpOyB9IC8vVE9ETyBjaGVjayBJRCB0byBUeXBlCiAgICAKICAgIGFsZXJ0KCJFUlMyMDAyMTMgTVZOOiAiK2xhYmVsKyIgcGF0aWVudElkPSIrekRhdGEucGF0aWVudElkKyIgY2FzZUlkPSIrekRhdGEuY2FzZUlkKyIgc2ZQYXJlbnRJZD0iK3NmUGFyZW50SWQpOyAvL0VSUzIwMDIxMyBkZWJ1ZyBCTEFOSwogICAgdmFyIG5ld0lkPSIiOwogICAgaWYgKCF6RGF0YS5tRG9jSWQpIHsKICAgICAgICAvL0VSUzIwMDMwOSBNVk4gYXV0b21hdGlvbiBuZXdJZCA9ICIiICsgY3JlYXRlQW5kQXR0YWNoKGRvYywgU0ZEQ3R5cGUsIGxhYmVsICwgYXJyT2ZQYWlycyk7CiAgICAgICAgbmV3SWQgPSAiIiArY3JlYXRlU0ZSZWNvcmQoZG9jLCBTRkRDdHlwZSwgbnVsbCwgYXJyT2ZQYWlycyk7IC8vRVJTMjAwMzA5IEF0dGFjaG1lbnRNVk4gdHJpZ2dlcnMgb24gYXR0YWNoZXMKICAgICAgICBhbGVydCgiTWFkZSBNVk46IituZXdJZCk7CiAgICB9IGVsc2UgeyAvL1RPRE8gdXBkYXRlIGl0PwogICAgICAgIC8vRVJTMjAwMzA5IE1WTiBhdXRvbWF0aW9uIG5ld0lkID0gIiIgKyBjcmVhdGVBbmRBdHRhY2goZG9jLCBTRkRDdHlwZSwgbGFiZWwgLCBhcnJPZlBhaXJzKTsKICAgICAgICBuZXdJZCA9ICIiICtjcmVhdGVTRlJlY29yZChkb2MsIFNGREN0eXBlLCBudWxsLCBhcnJPZlBhaXJzKTsgLy9FUlMyMDAzMDkgQXR0YWNobWVudE1WTiB0cmlnZ2VycyBvbiBhdHRhY2hlcwogICAgICAgIGFsZXJ0KCJVcGRhdGUgTVZOOiIrbmV3SWQpOwogICAgfQogICAgaWYgKG5ld0lkKSB6RGF0YS5tRG9jSWQ9bmV3SWQ7CiAgICByZXR1cm4gbmV3SWQ7Cn07Cg=="},"ordinal":2}

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

    if (zd.triageType.indexOf(":")>-1) { zd.triageType=zd.triageType.substring(1+zd.triageType.indexOf(":")); } //ERS200324 #69149
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
