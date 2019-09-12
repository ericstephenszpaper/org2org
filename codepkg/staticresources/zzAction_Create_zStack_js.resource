<!--
// Name: Create zStack
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV190707 Doctype as new; PV190707 to update type on docset
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-07-08 03:50:27","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA3MDUgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL3ZhciBrZXl3b3Jkcz1bIk5FVzpEb2N1bWVudCBTdGFjayJdOyAvL0VSUzE5MDMyNiAjNTc0NTYgIkVOUkw6Il07IHdpbGwgYWx3YXlzIG1hdGNoIGNoYW5nZWQgdG8gTkVXIEpQQjE5MDYwNAp2YXIga2V5d29yZE1hcD17fTsgCnZhciBrZXl3b3Jkcz1bIk5FVzpEb2N1bWVudCBTdGFja34iLCJFTlJMOkVucm9sbG1lbnR+IiwiRU5STDpFTlJPTExNRU5UfiIsIkNPTjpDb25zZW50fiIsIkNPTjpjb25zZW50fiIsIkZBQzpTZXR0aW5nfiIsIkZBQzpEaXN0cmlidXRpb25+IiwiU1RBUlQ6U3RhcnQgRm9ybX4iLCJDSEs6Q2hlY2tsaXN0fiIsIkhJUEFBOkFVVEhPUklaQVRJT05+IiwiSElQQUE6SElQQUF+IiwiSElQQUE6UE9SVEFCSUxJVFl+IiwiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiRklOOlcyfiIsIklDOk1lbWJlciBJRH4iLCJGQVg6Il07CmtleXdvcmRNYXBbIlRFTlIiXSA9IlRFTlI6U3RhcnQgRm9ybSI7IAprZXl3b3JkTWFwWyJORVciXSA9Ik5FVzpEb2N1bWVudCBTdGFjayI7CmtleXdvcmRNYXBbIkVOUkwiXSA9IkVOUkw6RW5yb2xsbWVudCBGb3JtIjsKa2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKa2V5d29yZE1hcFsiRkFYIl0gPSJORVc6RG9jdW1lbnQgU3RhY2siOwprZXl3b3JkTWFwWyJTVEFSVCJdID0iTkVXOkRvY3VtZW50IFN0YWNrIjsKLy9rZXl3b3JkTWFwWyJDT04iXSA9IkNPTjpDb25zZW50IjsKLy9rZXl3b3JkTWFwWyJISVBBQSJdID0iSElQQUE6SElQQUEgQVVUSE9SSVpBVElPTiI7Ci8va2V5d29yZE1hcFsiUkVGIl0gPSJSRUY6UkVGRVJSQUwiOwovL2tleXdvcmRNYXBbIkZJTiJdID0iRklOOlctMiI7Ci8va2V5d29yZE1hcFsiSUMiXSA9IklDOk1lbWJlciBJRCI7Ci8va2V5d29yZE1hcFsiQ0hLIl0gPSJDSEs6Q2hlY2tsaXN0IjsKCgp2YXIgelR5cGU9ZG9jLlgoIlhfZG9jVHlwZSIpOyAKaWYgKHpEYXRhLmRvY1R5cGVPQ1I9PT0iRkFYIiB8fCB6RGF0YS5kb2NUeXBlT0NSPT09IiIpIHsgCiAgICB6RGF0YS5kb2NUeXBlT0NSPXpEYXRhLmRvY1R5cGVyKGRvYyxrZXl3b3Jkcyk7IAogICAgYWxlcnQoImRvY1R5cGUgd2FzICIrZG9jLmRvY1R5cGUrIiBub3cgIisgekRhdGEuZG9jVHlwZU9DUik7CiAgICB6VHlwZT1kb2MuWCgiWF9kb2NUeXBlIik7CiAgICBpZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsekRhdGEuZG9jVHlwZU9DUik7CiAgICAJYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIix6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOyAKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgIH0KfSBlbHNlIHsgLy9FUlMxOTAxMTkgVE9ETyBhdXRvU3BsaXQgIzUzMDAwCiAgICB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOyAKICAgIGFsZXJ0KCJFUlMxOTAxMTkgQXV0b0RyaXZlIGZvdW5kICIrelR5cGUrIiBmaXJzdCBvciBsYXN0LiBXaGljaCBpcyBpdD8iKTsKfQoKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IAoKYWxlcnQoIiMjIyMgZmF4IHdhcyBkZWxpdmVyZWQgdG8gbnVtYmVyOiAiICsgZG9jLmRlbGl2ZXJlZFRvKTsgCnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgenA9IlpQQVBFUl9fIjsgCnZhciB6U3RhY2s9enArInpTdGFja19fYyI7IAoKaWYoelR5cGUgPT0gIkZBWCIgfHwgelR5cGUgPT0gIlNUQVJUIil7IC8vUFYxOTA3MDcgRG9jdHlwZSBhcyBuZXcKCXpUeXBlPSJORVciOwoKfQoKYWxlcnQoIkBAQEB6VHlwZT0iK3pUeXBlKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwga2V5d29yZE1hcFt6VHlwZV0pOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGF0dXNfX2MiLCAiUmVjZWl2ZWQiKTsgLy8gUFYxOTA0MTggVXBkYXRlZCBzdGFnZSB0byBiZSBSZWNlaXZlZCAKCmFsZXJ0KCJFUlMxODA1MDUgZG9jLmRlbGl2ZXJlZEZyb209Iitkb2MuZGVsaXZlcmVkRnJvbSk7Cgp2YXIgY2hhbm5lbD0iRmF4IjsgLy9KUEIxOTA1MjkgYWRkZWQgY29tbXVuaXR5IHRvIHRoZSBjaGFubmVsCnZhciBkZWxpdmVyZWRGcm9tID0gZG9jLmRlbGl2ZXJlZEZyb20gKyAiIjsgLy9DUk4xODA5MDkgTWFrZSBzdXJlIHdlIGhhdmUgYSBKYXZhc2NyaXB0IHN0cmluZwp2YXIgZGVsaXZlcmVkVG8gPSBkb2MuZGVsaXZlcmVkVG8gKyAiIjsJLy9KUEIxOTA1MjkgQ2hlY2sgZGVsaXZlcmVkVG8gZm9yIGNvbW11bml0eSB1cGxvYWRlcwppZiAoZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHtjaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE4MDUwNSAjNDgxMDEKaWYgKGlzTmFOKGRlbGl2ZXJlZFRvKSkgewoJaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewoJCWNoYW5uZWwgPSAiY29tbXVuaXR5IjsKCX0gCgllbHNlIHsKCQljaGFubmVsPSJTY2FuIjsKCX0KfSAKYXJyT2ZQYWlycy5wdXNoKHpwKyJDaGFubmVsX19jIixjaGFubmVsKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwphcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CmFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKYWxlcnQoIkBAQHpEYXRhLnByb2dyYW1OYW1lPSIrekRhdGEucHJvZ3JhbU5hbWUpOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsekRhdGEuY2xhc3NpZmljYXRpb24pOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJQcm9ncmFtX05hbWVfX2MiLHpEYXRhLnByb2dyYW1OYW1lKTsgCmlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoKaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDSEFSVEEpIHsKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IC8vSlBCMTkwNDI2IGNoYW5nZWQgdG8gY2xhc3NpZmljYXRpb24gZnJvbSBwcm9ncmFtCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsgIAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJIaWdoIik7IAp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDQVJUQSkgeyAKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsJCn0KLyplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aUkVGRVJSQUwpIHsgIAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsgCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fUEFMVkVPKSB7IAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJTcGVjaWFsIik7CQp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1ZJTkRJQ08pIHsgCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlN0YW5kYXJkIik7CQp9Ki8KZWxzZSAKewoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJOb3JtYWwiKTsKfQoKYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLCAoImNvbW11bml0eSIgPT09IGNoYW5uZWwgPyBjaGFubmVsIDogZG9jLmRlbGl2ZXJlZFRvKSk7IC8vSlBCMTkwNTI5IGFkZGVkIHNvIENvbW11bml0eSBzaG93cyB1cCBpbiBNYXN0ZXIgSW50YWtlIExpc3QKYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CmlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykge2Fyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7IH0gZWxzZSB7CmFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgCn0KCmFsZXJ0KCJSZXZpZXdlZCBTdGF0dXMgYmVmb3JlIHNldHRpbmcgaXQgdG8gUmVjZWl2ZWQ6ICIgKyBYKGRvYywgIlhfcmV2aWV3ZWRTdGF0dXMiKSk7CmFsZXJ0KCJ6RGF0YS5yZXZpZXdlZFN0YXR1cyA9ICIgKyB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7CnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCB6RGF0YS5jbGFzc2lmaWNhdGlvbiArICIgTmV3IFN0YWNrIiwgYXJyT2ZQYWlycyk7IC8vSlBCMTkwNjA0IGNoYW5nZWQgdG8gd2hhdCBLZW4gd2FudGVkIGZyb20gSW5pdGlhbCBQYXRpZW50IEVucm9sbG1lbnQgUGFja2V0IAphbGVydCgiIyMjIyBTdGFjayBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKYXJyT2ZQYWlycyA9IFtdOwovL0pQQjE5MDUyOSBGaXggdXAgdGhlIGZ1bmt5IGRlc3RpbmF0aW9uL2xhYmVsIGZvciBjb21tdW5pdHkgdXBsb2FkcwppZiAoImNvbW11bml0eSIgPT09IGNoYW5uZWwpIHsKCXZhciBmcm9tRmlsZSA9IGRvYy5mcm9tRmlsZSArICIiOwoJdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoJy0nKTsKCXZhciBidWZmZXIgPSAiIjsKCWZvciAodmFyIGk9MDsgaTxwYXJ0cy5sZW5ndGg7IGkrKykgewoJCWlmIChpID4gMCkgeyBidWZmZXIgKz0gJy0nOyB9CgkJaWYgKDEgPT09IGkpIAl7IGJ1ZmZlciArPSAiY29tbXVuaXR5IjsgfQoJCWVsc2UgCQkJeyBidWZmZXIgKz0gcGFydHNbaV07IH0KCX0KCWFyck9mUGFpcnMucHVzaCgiWF9mcm9tRmlsZSIsIGJ1ZmZlcik7CglhcnJPZlBhaXJzLnB1c2goIlhfZGVzdGluYXRpb24iLCAiY29tbXVuaXR5Iik7Cn0KYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uICsgIiBOZXcgU3RhY2siKTsgLy9KUEIxOTA2MDQgY2hhbmdlZCB0byB3aGF0IEtlbiB3YW50ZWQgZnJvbSBJbml0aWFsIFBhdGllbnQgRW5yb2xsbWVudCBQYWNrZXQKYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CmFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLHNmSWQpOyAKdmFyIHNpZ25lZFN0YXR1cyA9ICIiOyAgCmFsZXJ0KCJAQEBAIHpEYXRhLnJldmlld2VkU3RhdHVzID0gIiArIHpEYXRhLnJldmlld2VkU3RhdHVzKTsgIAppZiAoIlNpZ25lZCIgPT09IHpEYXRhLnJldmlld2VkU3RhdHVzKSB7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIHNpZ25lZFN0YXR1cyA9ICJTaWduZWQgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiI7IAp9CmFsZXJ0KCJTaWduZWRTdGF0dXMgPSAiICsgc2lnbmVkU3RhdHVzKTsKaWYgKDE9PT0xKSB7IAogICAgdmFyIGJhPSJSZWNlaXZlZCI7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKCWFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwICsgIiwgYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiIgKyBzaWduZWRTdGF0dXMpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCB6VHlwZSk7Ly8gUFYxOTA3MDcgdG8gdXBkYXRlIHR5cGUgb24gZG9jc2V0Cgp9CgphbGVydCgiQEBAIGNhbGxpbmcgdXBkYXRlREIgd2l0aCBwYXJhbXM6IEBAQEBAQEBAQEBAQCIpOwphbGVydChhcnJPZlBhaXJzKTsKYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKIC8qIEVORCAqLw=="},"ordinal":12}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190705 updated rule for Sales Demo Org
//var keywords=["NEW:Document Stack"]; //ERS190326 #57456 "ENRL:"]; will always match changed to NEW JPB190604
var keywordMap={}; 
var keywords=["NEW:Document Stack~","ENRL:Enrollment~","ENRL:ENROLLMENT~","CON:Consent~","CON:consent~","FAC:Setting~","FAC:Distribution~","START:Start Form~","CHK:Checklist~","HIPAA:AUTHORIZATION~","HIPAA:HIPAA~","HIPAA:PORTABILITY~","REF:REFERRAL","REF:Referral","FIN:W2~","IC:Member ID~","FAX:"];
keywordMap["TENR"] ="TENR:Start Form"; 
keywordMap["NEW"] ="NEW:Document Stack";
keywordMap["ENRL"] ="ENRL:Enrollment Form";
keywordMap["FAC"] ="FAC:Facility Enrollment Form";
keywordMap["FAX"] ="NEW:Document Stack";
keywordMap["START"] ="NEW:Document Stack";
//keywordMap["CON"] ="CON:Consent";
//keywordMap["HIPAA"] ="HIPAA:HIPAA AUTHORIZATION";
//keywordMap["REF"] ="REF:REFERRAL";
//keywordMap["FIN"] ="FIN:W-2";
//keywordMap["IC"] ="IC:Member ID";
//keywordMap["CHK"] ="CHK:Checklist";


var zType=doc.X("X_docType"); 
if (zData.docTypeOCR==="FAX" || zData.docTypeOCR==="") { 
    zData.docTypeOCR=zData.docTyper(doc,keywords); 
    alert("docType was "+doc.docType+" now "+ zData.docTypeOCR);
    zType=doc.X("X_docType");
    if (doc.docType != zData.docTypeOCR) {
        var arrOfPairs0 = [];
        arrOfPairs0.push("X_docTypeOCR",zData.docTypeOCR);
    	arrOfPairs0.push("X_docType",zData.docTypeOCR);
        zType=zData.docTypeOCR; 
        updateDB(doc, arrOfPairs0);
    }
} else { //ERS190119 TODO autoSplit #53000
    zType=zData.docTypeOCR; 
    alert("ERS190119 AutoDrive found "+zType+" first or last. Which is it?");
}

zData.setbrandprogram(doc); 

alert("#### fax was delivered to number: " + doc.deliveredTo); 
var formatNow = getCurDateAndTime(doc);
var arrOfPairs = [];
var zp="ZPAPER__"; 
var zStack=zp+"zStack__c"; 

if(zType == "FAX" || zType == "START"){ //PV190707 Doctype as new
	zType="NEW";

}

alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", keywordMap[zType]); 
arrOfPairs.push(zp+"Status__c", "Received"); // PV190418 Updated stage to be Received 

alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);

var channel="Fax"; //JPB190529 added community to the channel
var deliveredFrom = doc.deliveredFrom + ""; //CRN180909 Make sure we have a Javascript string
var deliveredTo = doc.deliveredTo + "";	//JPB190529 Check deliveredTo for community uploades
if (deliveredFrom.indexOf("@")>-1 || deliveredFrom.indexOf(".")>-1) {channel="Email";} //ERS180505 #48101
if (isNaN(deliveredTo)) {
	if (deliveredTo.toLowerCase().indexOf("community") >= 0) {
		channel = "community";
	} 
	else {
		channel="Scan";
	}
} 
arrOfPairs.push(zp+"Channel__c",channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
alert("@@@zData.programName="+zData.programName); 
arrOfPairs.push(zp+"Classification__c",zData.classification); 
arrOfPairs.push(zp+"Program_Name__c",zData.programName); 
if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);

if (zData.classification === zData.PROGRAM_ZCHARTA) {
	arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB190426 changed to classification from program
}
else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {  
	arrOfPairs.push(zp+"Priority__c", "High"); 
}
else if (zData.classification === zData.PROGRAM_ZCARTA) { 
	arrOfPairs.push(zp+"Priority__c", "Critical");	
}
/*else if (zData.classification === zData.PROGRAM_ZREFERRAL) {  
	arrOfPairs.push(zp+"Priority__c", "Medium"); 
}
else if (zData.classification === zData.PROGRAM_PALVEO) { 
	arrOfPairs.push(zp+"Priority__c", "Special");	
}
else if (zData.classification === zData.PROGRAM_VINDICO) { 
	arrOfPairs.push(zp+"Priority__c", "Standard");	
}*/
else 
{
	arrOfPairs.push(zp+"Priority__c", "Normal");
}

arrOfPairs.push(zp+"sentFaxTo__c", ("community" === channel ? channel : doc.deliveredTo)); //JPB190529 added so Community shows up in Master Intake List
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
if (zData.reviewedStatus) {arrOfPairs.push(zp+"Stage__c", zData.reviewedStatus); } else {
arrOfPairs.push(zp+"Stage__c", "Received"); 
}

alert("Reviewed Status before setting it to Received: " + X(doc, "X_reviewedStatus"));
alert("zData.reviewedStatus = " + zData.reviewedStatus);
var sfId = createAndAttach(doc, zStack, zData.classification + " New Stack", arrOfPairs); //JPB190604 changed to what Ken wanted from Initial Patient Enrollment Packet 
alert("#### Stack Received. Attached to: " + sfId);
arrOfPairs = [];
//JPB190529 Fix up the funky destination/label for community uploads
if ("community" === channel) {
	var fromFile = doc.fromFile + "";
	var parts = fromFile.split('-');
	var buffer = "";
	for (var i=0; i<parts.length; i++) {
		if (i > 0) { buffer += '-'; }
		if (1 === i) 	{ buffer += "community"; }
		else 			{ buffer += parts[i]; }
	}
	arrOfPairs.push("X_fromFile", buffer);
	arrOfPairs.push("X_destination", "community");
}
arrOfPairs.push("db-label", zData.classification + " New Stack"); //JPB190604 changed to what Ken wanted from Initial Patient Enrollment Packet
arrOfPairs.push("db-BATES", sfId + "-STACK");
arrOfPairs.push("X_sfStackId",sfId); 
var signedStatus = "";  
alert("@@@@ zData.reviewedStatus = " + zData.reviewedStatus);  
if ("Signed" === zData.reviewedStatus) {
    var now0 = getCurDateAndTime(doc,false,true);
    signedStatus = "Signed by agent at "+now0+"<br/>"; 
}
alert("SignedStatus = " + signedStatus);
if (1===1) { 
    var ba="Received";
    var now0 = getCurDateAndTime(doc,false,true);
	alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by agent at "+now0+"<br/>" + signedStatus);
    arrOfPairs.push("X_docType", zType);// PV190707 to update type on docset

}

alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
alert(arrOfPairs);
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
updateDB(doc, arrOfPairs);
 /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
