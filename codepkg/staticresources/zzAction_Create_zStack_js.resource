<!--
// Name: Create zStack
// Committer: judson.bruno@zpaper.com
// Update: JPB190430 updated label removed"New " +; JPB190430 updated label removed "New " +
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-30 11:11:29","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwp2YXIga2V5d29yZHM9WyJFTlJMOkVucm9sbG1lbnQiLCJFTlJMOkVOUk9MTE1FTlQiLCJGQUM6U0VUVElORyIsIkZBQzpEaXN0cmlidXRpb24iLCJPVEg6T3RoZXIiXTsgLy9FUlMxOTAzMjYgIzU3NDU2ICJFTlJMOiJdOyB3aWxsIGFsd2F5cyBtYXRjaCAKdmFyIGtleXdvcmRNYXA9e307IAovL3ZhciBrZXl3b3Jkcz1bIkVOUkw6RW5yb2xsbWVudH4iLCJFTlJMOkVOUk9MTE1FTlR+IiwiQ09OOkNvbnNlbnR+IiwiQ09OOmNvbnNlbnR+IiwiRkFDOlNldHRpbmd+IiwiRkFDOkRpc3RyaWJ1dGlvbn4iLCJTVEFSVDpTdGFydCBGb3JtfiIsIkNISzpDaGVja2xpc3R+IiwiSElQQUE6QVVUSE9SSVpBVElPTn4iLCJISVBBQTpISVBBQX4iLCJISVBBQTpQT1JUQUJJTElUWX4iLCJSRUY6UkVGRVJSQUwiLCJSRUY6UmVmZXJyYWwiLCJGSU46VzJ+IiwiSUM6TWVtYmVyIElEfiIsIkZBWDoiXTsKLy9rZXl3b3JkTWFwWyJURU5SIl0gPSJURU5SOlN0YXJ0IEZvcm0iOyAKCmtleXdvcmRNYXBbIkVOUkwiXSA9IkVOUkw6RW5yb2xsbWVudCBGb3JtIjsKa2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKCi8va2V5d29yZE1hcFsiQ09OIl0gPSJDT046Q29uc2VudCI7Ci8va2V5d29yZE1hcFsiSElQQUEiXSA9IkhJUEFBOkhJUEFBIEFVVEhPUklaQVRJT04iOwovL2tleXdvcmRNYXBbIlJFRiJdID0iUkVGOlJFRkVSUkFMIjsKLy9rZXl3b3JkTWFwWyJGSU4iXSA9IkZJTjpXLTIiOwovL2tleXdvcmRNYXBbIklDIl0gPSJJQzpNZW1iZXIgSUQiOwovL2tleXdvcmRNYXBbIkNISyJdID0iQ0hLOkNoZWNrbGlzdCI7CgoKdmFyIHpUeXBlPWRvYy5YKCJYX2RvY1R5cGUiKTsgCmlmICh6RGF0YS5kb2NUeXBlT0NSPT09IkZBWCIgfHwgekRhdGEuZG9jVHlwZU9DUj09PSIiKSB7IAogICAgekRhdGEuZG9jVHlwZU9DUj16RGF0YS5kb2NUeXBlcihkb2Msa2V5d29yZHMpOyAKICAgIGFsZXJ0KCJkb2NUeXBlIHdhcyAiK2RvYy5kb2NUeXBlKyIgbm93ICIrIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgelR5cGU9ZG9jLlgoIlhfZG9jVHlwZSIpOwogICAgaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgICAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgCWFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsekRhdGEuZG9jVHlwZU9DUik7CiAgICAgICAgelR5cGU9ekRhdGEuZG9jVHlwZU9DUjsgCiAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7CiAgICB9Cn0gZWxzZSB7IC8vRVJTMTkwMTE5IFRPRE8gYXV0b1NwbGl0ICM1MzAwMAogICAgelR5cGU9ekRhdGEuZG9jVHlwZU9DUjsgCiAgICBhbGVydCgiRVJTMTkwMTE5IEF1dG9Ecml2ZSBmb3VuZCAiK3pUeXBlKyIgZmlyc3Qgb3IgbGFzdC4gV2hpY2ggaXMgaXQ/Iik7Cn0KCnpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAKCmFsZXJ0KCIjIyMjIGZheCB3YXMgZGVsaXZlcmVkIHRvIG51bWJlcjogIiArIGRvYy5kZWxpdmVyZWRUbyk7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIHpwPSJaUEFQRVJfXyI7IAp2YXIgelN0YWNrPXpwKyJ6U3RhY2tfX2MiOyAKCmFsZXJ0KCJAQEBAelR5cGU9Iit6VHlwZSk7CmFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsIGtleXdvcmRNYXBbelR5cGVdKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIlJlY2VpdmVkIik7IC8vIFBWMTkwNDE4IFVwZGF0ZWQgc3RhZ2UgdG8gYmUgUmVjZWl2ZWQgCgphbGVydCgiRVJTMTgwNTA1IGRvYy5kZWxpdmVyZWRGcm9tPSIrZG9jLmRlbGl2ZXJlZEZyb20pOwoKdmFyIGNoYW5uZWw9IkZheCI7IAppZiAoZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpPi0xIHx8IGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIi4iKT4tMSkge2NoYW5uZWw9IkVtYWlsIjt9IAplbHNlIGlmIChpc05hTihkb2MuZGVsaXZlcmVkRnJvbSkpIHsgY2hhbm5lbD0iU2NhbiI7IH0gCmFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsY2hhbm5lbCk7CmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwphcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CmFsZXJ0KCJAQEB6RGF0YS5wcm9ncmFtTmFtZT0iK3pEYXRhLnByb2dyYW1OYW1lKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiQ2xhc3NpZmljYXRpb25fX2MiLHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7IAppZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKCmlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7CglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVyZ2VudCIpOyAvL0pQQjE5MDQyNiBjaGFuZ2VkIHRvIGNsYXNzaWZpY2F0aW9uIGZyb20gcHJvZ3JhbQp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7ICAKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiSGlnaCIpOyAKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0FSVEEpIHsgCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7CQp9Ci8qZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlJFRkVSUkFMKSB7ICAKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7IAp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQSkgeyAKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiU3BlY2lhbCIpOwkKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9TUElOUkFaQSkgeyAKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiU3RhbmRhcmQiKTsJCn0qLwplbHNlIAp7CglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk5vcm1hbCIpOwp9CgphcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsZG9jLmRlbGl2ZXJlZFRvKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsZG9jLmRlbGl2ZXJlZEZyb20pOwppZiAoekRhdGEucmV2aWV3ZWRTdGF0dXMpIHthcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyB9IGVsc2UgewphcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IAp9CgphbGVydCgiUmV2aWV3ZWQgU3RhdHVzIGJlZm9yZSBzZXR0aW5nIGl0IHRvIFJlY2VpdmVkOiAiICsgWChkb2MsICJYX3Jldmlld2VkU3RhdHVzIikpOwphbGVydCgiekRhdGEucmV2aWV3ZWRTdGF0dXMgPSAiICsgekRhdGEucmV2aWV3ZWRTdGF0dXMpOwp2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpTdGFjaywgekRhdGEuY2xhc3NpZmljYXRpb24gKyAiIEluaXRpYWwgUGF0aWVudCBFbnJvbGxtZW50IFBhY2tldCIsIGFyck9mUGFpcnMpOyAvL0pQQjE5MDQzMCB1cGRhdGVkIGxhYmVsIHJlbW92ZWQiTmV3ICIgKyAKYWxlcnQoIiMjIyMgU3RhY2sgUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uICsgIiBJbml0aWFsIFBhdGllbnQgRW5yb2xsbWVudCBQYWNrZXQiKTsgLy9KUEIxOTA0MzAgdXBkYXRlZCBsYWJlbCByZW1vdmVkICJOZXcgIiArCmFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwphcnJPZlBhaXJzLnB1c2goIlhfc2ZTdGFja0lkIixzZklkKTsgCnZhciBzaWduZWRTdGF0dXMgPSAiIjsgIAphbGVydCgiQEBAQCB6RGF0YS5yZXZpZXdlZFN0YXR1cyA9ICIgKyB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7ICAKaWYgKCJTaWduZWQiID09PSB6RGF0YS5yZXZpZXdlZFN0YXR1cykgewogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBzaWduZWRTdGF0dXMgPSAiU2lnbmVkIGJ5IGFnZW50IGF0ICIrbm93MCsiPGJyLz4iOyAKfQphbGVydCgiU2lnbmVkU3RhdHVzID0gIiArIHNpZ25lZFN0YXR1cyk7CmlmICgxPT09MSkgeyAKICAgIHZhciBiYT0iUmVjZWl2ZWQiOwogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CglhbGVydCgiJCQkIG5vdzAgPSAiICsgbm93MCArICIsIGJhID0gIiArIGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5IGFnZW50IGF0ICIrbm93MCsiPGJyLz4iICsgc2lnbmVkU3RhdHVzKTsgCn0KYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKYWxlcnQoYXJyT2ZQYWlycyk7CmFsZXJ0KCJAQEAgY2FsbGluZyB1cGRhdGVEQiB3aXRoIHBhcmFtczogQEBAQEBAQEBAQEBAIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAvKiBFTkQgKi8="},"ordinal":14}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated rule for Sales Demo Org
var keywords=["ENRL:Enrollment","ENRL:ENROLLMENT","FAC:SETTING","FAC:Distribution","OTH:Other"]; //ERS190326 #57456 "ENRL:"]; will always match 
var keywordMap={}; 
//var keywords=["ENRL:Enrollment~","ENRL:ENROLLMENT~","CON:Consent~","CON:consent~","FAC:Setting~","FAC:Distribution~","START:Start Form~","CHK:Checklist~","HIPAA:AUTHORIZATION~","HIPAA:HIPAA~","HIPAA:PORTABILITY~","REF:REFERRAL","REF:Referral","FIN:W2~","IC:Member ID~","FAX:"];
//keywordMap["TENR"] ="TENR:Start Form"; 

keywordMap["ENRL"] ="ENRL:Enrollment Form";
keywordMap["FAC"] ="FAC:Facility Enrollment Form";

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

alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", keywordMap[zType]); 
arrOfPairs.push(zp+"Status__c", "Received"); // PV190418 Updated stage to be Received 

alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);

var channel="Fax"; 
if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {channel="Email";} 
else if (isNaN(doc.deliveredFrom)) { channel="Scan"; } 
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
else if (zData.classification === zData.PROGRAM_TECFIDERA) { 
	arrOfPairs.push(zp+"Priority__c", "Special");	
}
else if (zData.classification === zData.PROGRAM_SPINRAZA) { 
	arrOfPairs.push(zp+"Priority__c", "Standard");	
}*/
else 
{
	arrOfPairs.push(zp+"Priority__c", "Normal");
}

arrOfPairs.push(zp+"sentFaxTo__c",doc.deliveredTo); 
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
if (zData.reviewedStatus) {arrOfPairs.push(zp+"Stage__c", zData.reviewedStatus); } else {
arrOfPairs.push(zp+"Stage__c", "Received"); 
}

alert("Reviewed Status before setting it to Received: " + X(doc, "X_reviewedStatus"));
alert("zData.reviewedStatus = " + zData.reviewedStatus);
var sfId = createAndAttach(doc, zStack, zData.classification + " Initial Patient Enrollment Packet", arrOfPairs); //JPB190430 updated label removed"New " + 
alert("#### Stack Received. Attached to: " + sfId);
arrOfPairs = [];
arrOfPairs.push("db-label", zData.classification + " Initial Patient Enrollment Packet"); //JPB190430 updated label removed "New " +
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
