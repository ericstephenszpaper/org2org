<!--
// Name: Import HL7 CCD
// Committer: eric.stephens@zpaper.com
// Update: ERS190208; ERS190208 #56270 set the patient; ERS190208 #56270; ERS190208 CCD
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-02-08 18:23:31","active":true,"button":"HL7CCD","name":"Import HL7 CCD","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"HL7CCD","operation":"equals"},{"name":"doc.deliveredFrom","value":"CCD","operation":"contains"}]},"consequence":{"doit":"YWxlcnQoIlVzZSBKU09OIGFuZCBQREYiKTsgLy9FUlMxOTAxMjYKLy9UT0RPIGZpbmQgb3IgY3JlYXRlIHBhdGllbnQKLy9UT0RPIGNyZWF0ZSBPcHBvcnR1bml0eQoKLy9jcmVhdGUgYSBzdGFjawovL2xvb2sgdXAgcGF0aWVudCBGTixMTiwgRE9CCi8vaWYgbm90IGZvdW5kIG1ha2UgYSBMZWFkCi8vY3JlYXRlIGEgQ2FzZSBhdHRhY2hlZCBMZWFkIG9yIFBhdGllbnQKCnZhciBrZXl3b3Jkcz1bIkNDRDpDb250aW51aXR5IG9mIENhcmUiXTsKdmFyIGtleXdvcmRNYXA9e307IC8vSlBCMTgwODA4IGFkZGVkIGtleXdvcmRNYXAgdG8gbWF0Y2ggZG9jVHlwZQprZXl3b3JkTWFwWyJDQ0QiXSA9IkNDRDpDb250aW51aXR5IG9mIENhcmUiOwovL0VSUzE5MDExOSBUT0RPIGFsbCBvZiB0aGVzZSBkb2NUeXBlIGtleXdvcmRNYXAgaWRlYXMgbmVlZCB0byBiZSByZWZhY3RvcgoKdmFyIHpUeXBlPSJDQ0QiOwp6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgLy93aG8gYW5kIHdoZXJlCmRvYy5kZWxpdmVyZWRGcm9tPSJITDdDQ0QiOyB6RGF0YS5wcm9ncmFtTmFtZT0iSEw3Q0NEIjsgLy9FUlMxOTAyMDIgVE9ETyAvL0VSUzE5MDIwNiBDQ0QKCmFsZXJ0KCIjIyMjIGZheCB3YXMgZGVsaXZlcmVkIHRvIG51bWJlcjogIiArIGRvYy5kZWxpdmVyZWRUbyk7IC8vSlBCMTgwNjI2IGFkZGVkIGFsZXJ0IGRvYy5kZWxpdmVyZWRUbwp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZQp2YXIgelN0YWNrPXpwKyJ6U3RhY2tfX2MiOyAvLyJTdGFja19fYyIKCi8vZmluZCBQYXRpZW50IChBY2NvdW50LENvbnRhY3QsTGVhZCkKdmFyIHBJZD0iIjsgdmFyIHBOYW1lPW51bGw7CnZhciBITDdkYXRhPVgoZG9jLCJYX0hMNyIpOwovL2FsZXJ0KCJITDc9IitITDdkYXRhKTsKaWYgKEhMN2RhdGEuaW5kZXhPZigie1wicGF0aWVudCIpPT09MCkgeyAvL0VSUzE5MDIwNyBtb3ZlZCB1cAogICAgYWxlcnQoImJlZm9yZSBldmFsIik7CiAgICBldmFsKCJ6RGF0YS5wYXRpZW50PSgiK0hMN2RhdGErIilbJ3BhdGllbnQnXSIpOyAvL0hNQkFXVAogICAgYWxlcnQoImFmdGVyIGV2YWwiKTsKICAgIHRyeSB7CiAgICAgICAgYWxlcnQoInBhdGllbnQ9Iit6RGF0YS5wYXRpZW50KTsKICAgICAgICBpZiAoekRhdGEucGF0aWVudCkgewogICAgICAgICAgICBwTmFtZT16RGF0YS5wYXRpZW50LmZpcnN0TmFtZSsiICIrekRhdGEucGF0aWVudC5sYXN0TmFtZTsKICAgICAgICAgICAgaWYgKCFwSWQgfHwgMCA9PT0gcElkLmxlbmd0aCgpKSB7IHBJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQWNjb3VudCIsIHsiTmFtZSI6cE5hbWV9ICk7fQogICAgICAgICAgICBpZiAoIXBJZCB8fCAwID09PSBwSWQubGVuZ3RoKCkpIHsKICAgICAgICAgICAgICAgIHBJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQ29udGFjdCIsIAogICAgICAgICAgICAgICAgICAgIHsiTGFzdE5hbWUiOnpEYXRhLnBhdGllbnQubGFzdE5hbWUsIkZpcnN0TmFtZSI6ekRhdGEucGF0aWVudC5maXJzdE5hbWUsIkJpcnRoZGF0ZSI6ekRhdGEucGF0aWVudC5iaXJ0aERhdGV9IAogICAgICAgICAgICAgICAgKTsKICAgICAgICAgICAgfQogICAgICAgICAgICBpZiAoIXBJZCB8fCAwID09PSBwSWQubGVuZ3RoKCkpIHsKICAgICAgICAgICAgICAgIHBJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiTGVhZCIsIAogICAgICAgICAgICAgICAgICAgIHsiTmFtZSI6cE5hbWV9IAogICAgICAgICAgICAgICAgKTsKICAgICAgICAgICAgfQogICAgICAgICAgICBpZiAoIXBJZCB8fCAwID09PSBwSWQubGVuZ3RoKCkpIHsgLy9DcmVhdGUgYSBDb250YWN0IGZvciBQYXRpZW50CiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsICIwMTJmNDAwMDAwMFVrU2hBQUsiKTsgLy9FUlMxOTAyMDYgVE9ETyBsb29rdXAgZm9yIFBhdGllbnQgZGlmZmVyZW50IGluIEhDCiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIix6RGF0YS5wYXRpZW50Lmxhc3ROYW1lKTsKICAgICAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIix6RGF0YS5wYXRpZW50LmZpcnN0TmFtZSk7CiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkJpcnRoZGF0ZSIsekRhdGEucGF0aWVudC5iaXJ0aERhdGUpOwogICAgICAgICAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIjAwMWY0MDAwMDBGZVpnckFBRiIpOyAvL0VSUzE5MDIwMiBFT0ogSEFDSyBUT0RPCiAgICAgICAgICAgICAgICAgIC8qIHNldCB0aGUgelBhcGVyIHdvcmtmbG93IGZpZWxkcyAqLwoKICAgICAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgICAgICAgICAgICAgIHBJZD1jcmVhdGVBbmRBdHRhY2goZG9jLCAiQ29udGFjdCIsICJOZXcgIit6VHlwZSsiIFJlY2VpdmVkIE9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfSBjYXRjaCAoZXJyKSB7YWxlcnQoIlRvbyBNYW55IFNlY3JldHM6IitlcnIpO30KICAgIGFsZXJ0KCJzZklkIGZvciBwYXRpZW50IGlzICIrcElkKTsKICAgIC8vVE9ETyBFUlMxOTAyMDIgYXR0YWNoIENhc2UgdG8gc2ZJZAp9IGVsc2UgewogICAgYWxlcnQoIk5vIHNvdXAgZm9yIHlvdSEgIitITDdkYXRhKTsKfQoKYXJyT2ZQYWlycyA9IFtdOwphbGVydCgiQEBAQHpUeXBlPSIrelR5cGUpOwphcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCBrZXl3b3JkTWFwW3pUeXBlXSk7IC8vSlBCMTgwODA4IGFkZGVkIGtleXdvcmRNYXAgZm9yIHpUeXBlCmFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIk5ldyB6U3RhY2siKTsgLy9KUEIxODA3MDkgYWRkZWQgelN0YWNrCgp2YXIgY2hhbm5lbD0iRmF4IjsgLy9KUEIxODA1MjMKZG9jLmRlbGl2ZXJlZEZyb209ZG9jLmRlbGl2ZXJlZEZyb20udG9VcHBlckNhc2UoKTsgLy9FUlMxOTAyMDgKaWYgKGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIkAiKT4tMSB8fCBkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHtjaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE4MDUwNSAjNDgxMDEKZWxzZSBpZiAoZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiSEw3IikgfHwgZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQ0NEIikpIHsgY2hhbm5lbD0iSEw3IjsgfSAvL0VSUzE5MDIwMgplbHNlIGlmIChpc05hTihkb2MuZGVsaXZlcmVkRnJvbSkpIHsgY2hhbm5lbD0iU2NhbiI7IH0gLy9KUEIxODA3MTEgYWRkZWQgTmFOCmFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsY2hhbm5lbCk7CnpEYXRhLmNoYW5uZWw9Y2hhbm5lbDsKCmlmIChwSWQuaW5kZXhPZigiMDAzIik9PT0wKSB7IGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50X19jIixwSWQpOyB9IC8vRVJTMTkwMjA4ICM1NjI3MCBzZXQgdGhlIHBhdGllbnQKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1ByaW9yaXR5X19jIiwiSGlnaCIpOyAvL0VSUzE5MDIwOCAjNTYyNzAKCmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwphcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CnZhciB6UGFnZXM9WChkb2MsICJYX3BhZ2VzIik7IGlmICh6UGFnZXM9PT0iIikge3pQYWdlcz0yO30gLy9FUlMxOTAyMDUgdXBsb2FkSXRlbVBkZi5qc3AgVE9ETyBiZSBhY2N1cmF0ZQphcnJPZlBhaXJzLnB1c2goenArIlBhZ2VzX19jIiwgelBhZ2VzKTsKYWxlcnQoIkBAQHpEYXRhLnByb2dyYW1OYW1lPSIrekRhdGEucHJvZ3JhbU5hbWUpOyAvL0pQQjE4MDgxNSBhZGRlZCBhbGVydCAjNDgzMzkKYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsekRhdGEucHJvZ3JhbU5hbWUpOyAvL0pQQjE4MDgwOCBhZGRlZCBiYWNrIGluIENsYXNzaWZpY2F0aW9uCmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7IC8vSlBCMTgwNjI2IGdlbmVyYWxpemVkIHByb2dyYW0gbmFtZSAvL0pQQjE4MDcxMSBhZGRlZCBwcm9ncmFtIG5hbWVzCmlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoKCmFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIixkb2MuZGVsaXZlcmVkVG8pOyAvL0VSUzE3MDYyOCBjYWxsZXIgaWQKYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CmlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykge2Fyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7IH0gZWxzZSB7Ly9FUlMxOTAxMTggIzUzMDAwCiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IC8vRVJTMTcwNzMxICM0MDU5Mwp9CgphbGVydCgiUmV2aWV3ZWQgU3RhdHVzIGJlZm9yZSBzZXR0aW5nIGl0IHRvIFJlY2VpdmVkOiAiICsgWChkb2MsICJYX3Jldmlld2VkU3RhdHVzIikpOwphbGVydCgiekRhdGEucmV2aWV3ZWRTdGF0dXMgPSAiICsgekRhdGEucmV2aWV3ZWRTdGF0dXMpOwp2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpTdGFjaywgIk5ldyAiICsgekRhdGEucHJvZ3JhbU5hbWUgKyAiICIrIHpUeXBlKyIgelN0YWNrIHJlY2VpdmVkIiwgYXJyT2ZQYWlycyk7IC8vSlBCMTgwNjI2IHJlbW92ZWQgKyBmb3JtYXROb3cgZnJvbSBsaW5rCmFsZXJ0KCIjIyMjIFN0YWNrIFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOwoKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsIHpUeXBlKTsgLy9FUlMxOTAyMDggQ0NECmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiTmV3ICIgKyB6RGF0YS5wcm9ncmFtTmFtZSArICIgelN0YWNrIHJlY2VpdmVkICIpOyAvL0pQQjE4MDYyNiByZWxhYmVsZWQgdG8gcHJvZ3JhbSBKUEIxODA2MjYgcmVtb3ZlZCArIGZvcm1hdE5vdwphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsc2ZJZCk7IC8vRVJTMTcwNzI3ICM0MDQ0Nwp2YXIgc2lnbmVkU3RhdHVzID0gIiI7ICAvL0pQQjE5MDExNyBhZGRlZCBzaWduYXR1cmUgY2hlY2tib3ggZnVuY3Rpb24KaWYgKCJTaWduZWQiID09PSB6RGF0YS5yZXZpZXdlZFN0YXR1cykgewogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBzaWduZWRTdGF0dXMgPSAiU2lnbmVkIGF0ICIrbm93MCsiPGJyLz4iOyAvL0VSUzE3MDkwOSAjNDA1OTIKfQppZiAoMT09PTEpIHsgLy9FUlMxODAxMDMgc2V0IGFzIFJlY2VpdmVkICM0MTE1NQogICAgdmFyIGJhPSJSZWNlaXZlZCI7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKCWFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwICsgIiwgYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiIgKyBzaWduZWRTdGF0dXMpOyAvL0VSUzE3MDkwOSAjNDA1OTIKfQp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKCgovL21ha2UgYSBDYXNlCmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCAiTmV3Iik7CmFyck9mUGFpcnMucHVzaCgiVHlwZSIsICJOZXcgIit6VHlwZSk7CmFyck9mUGFpcnMucHVzaCgiT3JpZ2luIiwgekRhdGEuY2hhbm5lbCk7CmlmIChwSWQuaW5kZXhPZigiMDAzIik9PT0wKSB7YXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCBwSWQpOyB9IC8vRVJTMTkwMjAyIFRPRE8gZm9yIExlYWQ/CiAgLyogc2V0IHRoZSB6UGFwZXIgd29ya2Zsb3cgZmllbGRzICovCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CmNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgIk5ldyAiK3pUeXBlKyIgUmVjZWl2ZWQgT24gIiArIGZvcm1hdE5vdywgYXJyT2ZQYWlycyk7CgogLyogRU5EICov"},"ordinal":6}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("Use JSON and PDF"); //ERS190126
//TODO find or create patient
//TODO create Opportunity

//create a stack
//look up patient FN,LN, DOB
//if not found make a Lead
//create a Case attached Lead or Patient

var keywords=["CCD:Continuity of Care"];
var keywordMap={}; //JPB180808 added keywordMap to match docType
keywordMap["CCD"] ="CCD:Continuity of Care";
//ERS190119 TODO all of these docType keywordMap ideas need to be refactor

var zType="CCD";
zData.setbrandprogram(doc); //who and where
doc.deliveredFrom="HL7CCD"; zData.programName="HL7CCD"; //ERS190202 TODO //ERS190206 CCD

alert("#### fax was delivered to number: " + doc.deliveredTo); //JPB180626 added alert doc.deliveredTo
var formatNow = getCurDateAndTime(doc);
var arrOfPairs = [];
var zp="ZPAPER__"; //ERS170626 now in the package
var zStack=zp+"zStack__c"; //"Stack__c"

//find Patient (Account,Contact,Lead)
var pId=""; var pName=null;
var HL7data=X(doc,"X_HL7");
//alert("HL7="+HL7data);
if (HL7data.indexOf("{\"patient")===0) { //ERS190207 moved up
    alert("before eval");
    eval("zData.patient=("+HL7data+")['patient']"); //HMBAWT
    alert("after eval");
    try {
        alert("patient="+zData.patient);
        if (zData.patient) {
            pName=zData.patient.firstName+" "+zData.patient.lastName;
            if (!pId || 0 === pId.length()) { pId = getSFRecordID(doc, "Account", {"Name":pName} );}
            if (!pId || 0 === pId.length()) {
                pId = getSFRecordID(doc, "Contact", 
                    {"LastName":zData.patient.lastName,"FirstName":zData.patient.firstName,"Birthdate":zData.patient.birthDate} 
                );
            }
            if (!pId || 0 === pId.length()) {
                pId = getSFRecordID(doc, "Lead", 
                    {"Name":pName} 
                );
            }
            if (!pId || 0 === pId.length()) { //Create a Contact for Patient
                arrOfPairs = [];
                arrOfPairs.push("RecordTypeId", "012f4000000UkShAAK"); //ERS190206 TODO lookup for Patient different in HC
                arrOfPairs.push("LastName",zData.patient.lastName);
                arrOfPairs.push("FirstName",zData.patient.firstName);
                arrOfPairs.push("Birthdate",zData.patient.birthDate);
                //arrOfPairs.push("AccountId","001f400000FeZgrAAF"); //ERS190202 EOJ HACK TODO
                  /* set the zPaper workflow fields */

                arrOfPairs.push("ZPAPER__newFax__c", "true");
                arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
                arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
                pId=createAndAttach(doc, "Contact", "New "+zType+" Received On " + formatNow, arrOfPairs);
            }
        }
    } catch (err) {alert("Too Many Secrets:"+err);}
    alert("sfId for patient is "+pId);
    //TODO ERS190202 attach Case to sfId
} else {
    alert("No soup for you! "+HL7data);
}

arrOfPairs = [];
alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", keywordMap[zType]); //JPB180808 added keywordMap for zType
arrOfPairs.push(zp+"Status__c", "New zStack"); //JPB180709 added zStack

var channel="Fax"; //JPB180523
doc.deliveredFrom=doc.deliveredFrom.toUpperCase(); //ERS190208
if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {channel="Email";} //ERS180505 #48101
else if (doc.deliveredFrom.indexOf("HL7") || doc.deliveredFrom.indexOf("CCD")) { channel="HL7"; } //ERS190202
else if (isNaN(doc.deliveredFrom)) { channel="Scan"; } //JPB180711 added NaN
arrOfPairs.push(zp+"Channel__c",channel);
zData.channel=channel;

if (pId.indexOf("003")===0) { arrOfPairs.push("ZPAPER__Patient__c",pId); } //ERS190208 #56270 set the patient
arrOfPairs.push("ZPAPER__Priority__c","High"); //ERS190208 #56270

arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
var zPages=X(doc, "X_pages"); if (zPages==="") {zPages=2;} //ERS190205 uploadItemPdf.jsp TODO be accurate
arrOfPairs.push(zp+"Pages__c", zPages);
alert("@@@zData.programName="+zData.programName); //JPB180815 added alert #48339
arrOfPairs.push(zp+"Classification__c",zData.programName); //JPB180808 added back in Classification
arrOfPairs.push(zp+"Program_Name__c",zData.programName); //JPB180626 generalized program name //JPB180711 added program names
if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);


arrOfPairs.push(zp+"sentFaxTo__c",doc.deliveredTo); //ERS170628 caller id
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
if (zData.reviewedStatus) {arrOfPairs.push(zp+"Stage__c", zData.reviewedStatus); } else {//ERS190118 #53000
    arrOfPairs.push(zp+"Stage__c", "Received"); //ERS170731 #40593
}

alert("Reviewed Status before setting it to Received: " + X(doc, "X_reviewedStatus"));
alert("zData.reviewedStatus = " + zData.reviewedStatus);
var sfId = createAndAttach(doc, zStack, "New " + zData.programName + " "+ zType+" zStack received", arrOfPairs); //JPB180626 removed + formatNow from link
alert("#### Stack Received. Attached to: " + sfId);

arrOfPairs = [];
arrOfPairs.push("X_docType", zType); //ERS190208 CCD
arrOfPairs.push("db-label", "New " + zData.programName + " zStack received "); //JPB180626 relabeled to program JPB180626 removed + formatNow
arrOfPairs.push("db-BATES", sfId + "-STACK");
arrOfPairs.push("X_sfStackId",sfId); //ERS170727 #40447
var signedStatus = "";  //JPB190117 added signature checkbox function
if ("Signed" === zData.reviewedStatus) {
    var now0 = getCurDateAndTime(doc,false,true);
    signedStatus = "Signed at "+now0+"<br/>"; //ERS170909 #40592
}
if (1===1) { //ERS180103 set as Received #41155
    var ba="Received";
    var now0 = getCurDateAndTime(doc,false,true);
	alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by agent at "+now0+"<br/>" + signedStatus); //ERS170909 #40592
}
updateDB(doc, arrOfPairs);



//make a Case
arrOfPairs = [];
arrOfPairs.push("Status", "New");
arrOfPairs.push("Type", "New "+zType);
arrOfPairs.push("Origin", zData.channel);
if (pId.indexOf("003")===0) {arrOfPairs.push("ContactId", pId); } //ERS190202 TODO for Lead?
  /* set the zPaper workflow fields */
arrOfPairs.push("ZPAPER__newFax__c", "true");
arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
createAndAttach(doc, "Case", "New "+zType+" Received On " + formatNow, arrOfPairs);

 /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
