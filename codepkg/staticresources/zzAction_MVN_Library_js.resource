<!--
// Name: MVN Library
// Committer: eric.stephens@zpaper.com
// Update: ERS200205 docType?
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-05 20:10:41","evalContinue":"true","active":true,"button":"","name":"MVN Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotMVN","operation":"ne"}]},"consequence":{"doit":"LyogQkVHSU4gTVZOIExpYnJhcnkgekFjdGlvbiAqLwphbGVydCgiQEBAIEluaXRpYWxpemluZyBNVk5fTGlicmFyeSBMSU5FIDEiKTsKCnpEYXRhLlBDcGFja2FnZSA9ICIiOyAvL01WTiBpcyBub3QgbWFuYWdlZAp6RGF0YS5TRkRDdHlwZSA9IHpEYXRhLlBDcGFja2FnZSArICJEb2N1bWVudF9NVk5fX2MiOwp6RGF0YS56UGFwZXJJZEZpZWxkID0gIkF0dGFjaG1lbnRfSWRfTVZOX19jIjsKCi8vRVJTMjAwMjAyIFRPRE8gbG9va3VwIGZvciBNVk4gcHJvZ3JhbXMKLy9odHRwczovL2NzOTQuc2FsZXNmb3JjZS5jb20vYTQwMFIwMDAwMDBTV0xVIGlzIEFDVElNTVVORQppZiAoIXpEYXRhLk1WTlByb2dyYW1zKSB6RGF0YS5NVk5Qcm9ncmFtcz1bXTsgLy9FUlMyMDAyMDMgaW5pdGlhbGl6ZSBpdCEKCi8vVE9ETyBJZHMgQ2FzZV9NVk5fX2MsIFByb2dyYW1fTWVtYmVyX01WTl9fYwovL1RPRE8gdGV4dC9waWNrbGlzdCBQcm9ncmFtX05hbWVfTVZOX19jLCBUeXBlX01WTl9fYywgCUhaTl9EcnVnX05hbWVfX2MKCi8vRVJTMjAwMTI1IGF0dGFjaGluZyB0byBhIENhc2Ugc2hvdWxkIGNyZWF0ZSBhIERvY3VtZW50X01WTl9fYwp6RGF0YS5uZXdEb2N1bWVudCA9IGZ1bmN0aW9uKGRvYywgYXJyT2ZQYWlycywgbGFiZWwsIHNmUGFyZW50SWQpIHsKICAgIC8vY3JlYXRlIHBhcnRuZXIgZG9jdW1lbnQgd2hlbiBhZGRpbmcgYW4gQXR0YWNobWVudAogICAgLy9zZXQgZG9jVHlwZSBhbmQgb3RoZXIgbWV0YSBkYXRhCiAgICAvL2Nvbm5lY3QgdG8gQ2FzZSBhbmQgb3RoZXIgYXZhaWxhYmxlIGxvb2t1cHMKICAgIHZhciBTRkRDdHlwZT16RGF0YS5TRkRDdHlwZTsKICAgIHZhciBwcm9ncmFtTmFtZT16RGF0YS5jbGFzc2lmaWNhdGlvbjsgLy9UT0RPIGJldHRlciB0byB1c2UgcHJvZ3JhbQogICAgaWYgKCFzZlBhcmVudElkKSB7YWxlcnQoIm5vIHNmUGFyZW50SWQgaW4gbmV3RG9jdW1lbnQgY2FsbCEiKTsgcmV0dXJuO30gLy9zaG91bGQgYmUgQ2FzZSBvciBNZW1iZXIKICAgIAogICAgdmFyIHpkPXpEYXRhOwogICAgaWYgKCF6RGF0YS5kb2NUeXBlIHx8IHpEYXRhLmRvY1R5cGU9PSJGQVgiKSB6RGF0YS5kb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGUiKTsgLy9FUlMyMDAyMDUKICAgIGlmICghemQudHJpYWdlVHlwZSkgemQudHJpYWdlVHlwZT16RGF0YS5kb2NUeXBlOwogICAgaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZCArICItIiArIHByb2dyYW1OYW1lICsgIiBNVk4gRG9jdW1lbnQgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzt9CgogICAgYXJyT2ZQYWlycy5wdXNoKCJUeXBlX01WTl9fYyIsemQudHJpYWdlVHlwZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuelBhcGVySWRGaWVsZCxkb2MuZGJJRCk7IC8vVE9ETyBTRkRDIGF0dGFjaG1lbnQgSUQgb3Igd2hhdD8KICAgIGFyck9mUGFpcnMucHVzaCgiUHJvZ3JhbV9OYW1lX01WTl9fYyIscHJvZ3JhbU5hbWUpOwogICAgaWYgKHpEYXRhLmNhc2VJZCkgeyBhcnJPZlBhaXJzLnB1c2goIkNhc2VfTVZOX19jIix6RGF0YS5jYXNlSWQpOyB9CiAgICBpZiAoc2ZQYXJlbnRJZCAmJiBzZlBhcmVudElkLmluZGV4T2YoIjUwMCIpICE9PSAwKSB7IGFyck9mUGFpcnMucHVzaCgiUHJvZ3JhbV9NZW1iZXJfTVZOX19jIixzZlBhcmVudElkKTsgfSAvL1RPRE8gY2hlY2sgSUQgdG8gVHlwZQogICAgCiAgICBhbGVydCgiTVZOOiAiK2xhYmVsKTsKICAgIHZhciBuZXdJZD0iIjsKICAgIGlmICghekRhdGEubURvY0lkKSB7CiAgICAgICAgbmV3SWQgPSAiIiArIGNyZWF0ZUFuZEF0dGFjaChkb2MsIFNGREN0eXBlLCBsYWJlbCAsIGFyck9mUGFpcnMpOwogICAgICAgIGFsZXJ0KCJNYWRlIE1WTjoiK25ld0lkKTsKICAgIH0gZWxzZSB7IC8vVE9ETyB1cGRhdGUgaXQ/CiAgICAgICAgbmV3SWQgPSAiIiArIGNyZWF0ZUFuZEF0dGFjaChkb2MsIFNGREN0eXBlLCBsYWJlbCAsIGFyck9mUGFpcnMpOwogICAgICAgIGFsZXJ0KCJVcGRhdGUgTVZOOiIrbmV3SWQpOwogICAgfQogICAgaWYgKG5ld0lkKSB6RGF0YS5tRG9jSWQ9bmV3SWQ7CiAgICByZXR1cm4gbmV3SWQ7Cn07Cg=="},"ordinal":2}

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
zData.newDocument = function(doc, arrOfPairs, label, sfParentId) {
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
    arrOfPairs.push(zData.zPaperIdField,doc.dbID); //TODO SFDC attachment ID or what?
    arrOfPairs.push("Program_Name_MVN__c",programName);
    if (zData.caseId) { arrOfPairs.push("Case_MVN__c",zData.caseId); }
    if (sfParentId && sfParentId.indexOf("500") !== 0) { arrOfPairs.push("Program_Member_MVN__c",sfParentId); } //TODO check ID to Type
    
    alert("MVN: "+label);
    var newId="";
    if (!zData.mDocId) {
        newId = "" + createAndAttach(doc, SFDCtype, label , arrOfPairs);
        alert("Made MVN:"+newId);
    } else { //TODO update it?
        newId = "" + createAndAttach(doc, SFDCtype, label , arrOfPairs);
        alert("Update MVN:"+newId);
    }
    if (newId) zData.mDocId=newId;
    return newId;
};

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
