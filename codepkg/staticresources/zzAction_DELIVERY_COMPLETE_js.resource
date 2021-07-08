<!--
// Name: DELIVERY_COMPLETE
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV UPdated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-07-07 14:34:44","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTEyMjggdXBkYXRlZCBydWxlIGZvciBFZGdlIEhDIElETyBEZW1vIE9yZwphbGVydCgicmVzZXR0aW5nIHRvIGF2b2lkIGJ1dHRvbiByZXZlcmIiKTsgCmFsZXJ0KCJAQEAgbGFiZWwgPSAiICsgZG9jLmxhYmVsKTsgCgoKdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCnZhciBzZklEID0gWChkb2MsIlhfYWN0aXZpdHlPbklEIik7CmlmICghc2ZJRCB8fCBzZklEPT09IiIpIHsgc2ZJRD1YKGRvYywic2ZJRCIpOyBhbGVydCgiRVJTMjAwODIyIGRpc2NvdmVyZWQgIitzZklEKTsgfSAvL0VSUzIwODI1ICM3NTY4NSA8c2ZJRD4wMDMzdDAwMDAzNFVZa0JBQVc8L3NmSUQ+CnZhciBkb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGVTZW50Iik7IAp2YXIgcHJvdmlkZXI9IiI7CnZhciBmYWNpbGl0eT0iIjsKdmFyIGxhYmVsPSIiOyAKdmFyIGFyck9mUGFpcnMgPSBbXTsgCi8vRVJTMjAwODIyICM3NTY4NSBUT0RPIG1vdmUgdG8gY2xpZW50RmlsZSBob3cgZG8gSSBnZXQgaXQgb250byB0aGUgZG9jU2V0PwppZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCIwMDMiKSkgewkKCXByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIk5hbWUiLCBudWxsLCBzZklEKTsgCglmYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ29udGFjdCIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgCglhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIlNlbnQgdG8gIiArIHByb3ZpZGVyICsgIiAiICsgIiBhdCAiICsgZmFjaWxpdHkpOyAKfSBlbHNlIGlmICgwID09PSBzZklELmluZGV4T2YoIjUwMCIpKSB7CgkvL3Byb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNvbnRhY3QuTmFtZSIsIG51bGwsIHNmSUQpOyAvL1BWMjEwNjIyIGNvbW1lbnRlZAoJLy9mYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDb250YWN0LkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOyAKCSBwcm92aWRlciA9ICJ0ZXN0IHByb3ZpZGVyIjsgLy9QVjIxMDYyMiBhZGRlZCBmb3IgdGVzdGluZyAKCSBmYWNpbGl0eSA9ICJ0ZXN0IGZhY2lsaXR5IjsKCWFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiU2VudCB0byAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGF0ICIgKyBmYWNpbGl0eSk7IAoJLy92YXIgcGF0aWVudCA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsKCXZhciBwYXRpZW50ID0gInRlc3QgcGF0aWVudCI7CiAgICB2YXIgelN0YXR1cz1YKGRvYywiWF9yZXZpZXdlZFN0YXR1cyIpOwogICAgaWYgKHpTdGF0dXM9PT0iIikgelN0YXR1cz0iU2VudCI7CiAgICBpZiAoelN0YXR1cz09PSJTaWduZWQiIHx8IGRvYy5VUkwuaW5kZXhPZigiVEYiKSE9LTEpIHsgIAogICAgICAgIGRvY1R5cGU9IlRGIjsgLy9FUlMxOTEyMTEgSEFDSwogICAgICAgIGxhYmVsPXpTdGF0dXMgKyAiIGJ5ICIgKyBwcm92aWRlciArICIgIiArICIgZm9yICIgKyBwYXRpZW50OyAKICAgICAgICBhbGVydCgiVGVsbCBkb2NUeXBlIGZyb20gIisgZG9jLlVSTCsiIGFuZCBsYWJlbD0iK2xhYmVsKyIgc2ZJRD0iK3NmSUQpOwogICAgICAgLy9FUlMyMDEyMDMgIzc3MzAyIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7IAogICAgfSAgCiAgICAvKmVsc2UgaWYgKDAgPT09c2ZJRC5pbmRleC5PZigiYTFNIikpewogICAgICAgIGNhc2VJZD0gZ2V0U0ZGaWVsZChkb2MsICJQYXRpZW50Q29ubmVjdF9fUENfRG9jdW1lbnRfY2MiLCAiTmFtZSIsIG51bGwsIHNmSUQpOwogICAgfSovCn0KaWYgKGRvY1R5cGU9PT0iIikgZG9jVHlwZT1kb2MuZG9jVHlwZTsKaWYgKGRvY1R5cGU9PT0iIikgWChkb2MsIlhfZG9jVHlwZSIpOyAKaWYgKGRvY1R5cGU9PT0iIikgWChkb2MsIkNvbnRhY3ROYW1lIik7IApkb2MuZG9jVHlwZT1kb2NUeXBlOyAKaWYgKCFkb2NUeXBlKSB7ZG9jVHlwZT0iRkFYIjt9IC8vRVJTMjAwODIyICM3NTY4NSBkZXNrdG9wIFBERiB3aXRoIG5vIGNvdmVyc2hlZXQKCmFsZXJ0KCJAQEAgZG9jVHlwZSA9ICIgKyBkb2NUeXBlKTsgCgppZiAoZG9jVHlwZS5pbmRleE9mKCI6Iik+LTEpIGRvY1R5cGU9ZG9jVHlwZS5zcGxpdCgiOiIpWzBdOwoKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbjAiLFgoZG9jLCJYX2J1dHRvbkFjdGlvbiIpKTsgCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsgCmFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklEICsgIi0iICsgZG9jVHlwZSk7ICAKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLHNmSUQpOyAKaWYgKGRvY1R5cGUgIT09ICIiKSBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsZG9jVHlwZSk7IAppZiAoMT09PTEpIHsgCiAgICB2YXIgYmE9ZG9jLlgoIlhfZmF4U3RhdHVzIikrIiI7CiAgICBpZiAoIkRlbGl2ZXJlZCIgIT09IGJhKSB7IGJhPSJGYWlsZWQiOyB9IAogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICAvL3ZhciBjdXN0b21MYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYyxiYSk7IC8vRVJTMjAxMjA0ICM3NzMwMgogICAgLy9FUlMyMDEyMTEgVE9ETyBIQyBkYXRhIG1vZGVsIGlmIChjdXN0b21MYWJlbCkgbGFiZWw9Y3VzdG9tTGFiZWw7Cn0KaWYgKGxhYmVsKSB7IGRvYy5sYWJlbD1sYWJlbDsgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsgfSAvL0VSUzIwMTIxMSAjNzk1OTAKaWYgKHByb3ZpZGVyKSBhcnJPZlBhaXJzLnB1c2goIlhfQ29udGFjdF9OYW1lIixwcm92aWRlcik7IAppZiAoZmFjaWxpdHkpIGFyck9mUGFpcnMucHVzaCgiWF9Db250YWN0X0FjY291bnQuTmFtZSIsZmFjaWxpdHkpOyAKYWxlcnQoInRlc3RpbmcgZG9jIik7CmlmICh6RGF0YS5jbGllbnREZWxpdmVyeSkgeyB6RGF0YS5jbGllbnREZWxpdmVyeShkb2MsYXJyT2ZQYWlycyk7IH0gLy9FUlMyMTA1MjkgIzgzMDMyCmFsZXJ0KCJEZWxpdmVyeSBDb21wbGV0ZSB0ZXN0aW5nIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgppZiAoMT09MCkgeyAvL0VSUzIxMDQwMyAjODI0MDMgMm5kIHRhc2sgLSBuZXdBY3Rpdml0eSBvciBkb3duc3RyZWFtIGlzIHRoZSBwcm9ibGVtCiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgJ3sic3RhdHVzIjoic3VjY2VzcyIsIm1lc3NhZ2UiOiJFWElUIExPR0ZBWCJ9Jyk7CiAgICBhbGVydCgiRVJTMjEwNDAzICM4MjQwMyBleGFtcGxlIHRvIHN0b3AgdGhlIG5ld0FjdGl2aXR5LmpzcCBmcm9tIGZpcmluZyEiKTsKfQp2YXIgc2ZJZHM9IFtzZklEXTsKIGlmKHpEYXRhLlBjRG9jSWQpIHNmSWRzLnB1c2goekRhdGEuUGNEb2NJZCk7IC8vUFYyMTA2MjkgdG8gYXR0YWNoIHRoZSBmaWxlIHRvIERMCmlmKHpEYXRhLnNmSWRDb25uZWN0b3IpIHNmSWRzLnB1c2goekRhdGEuc2ZJZENvbm5lY3Rvcik7CnpEYXRhLmNsaWVudExpZ2h0bmluZ0ZpbGUoZG9jLHNmSWRzLHpEYXRhKTsKCi8qIEVORCBQREYgVVBMT0FEIENPREUgU05JUFBFVCAqLw=="},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB191228 updated rule for Edge HC IDO Demo Org
alert("resetting to avoid button reverb"); 
alert("@@@ label = " + doc.label); 


var nowTimeStamp = new Date().getTime() + ""; 
var formatNow = getCurDateAndTime(doc);

var sfID = X(doc,"X_activityOnID");
if (!sfID || sfID==="") { sfID=X(doc,"sfID"); alert("ERS200822 discovered "+sfID); } //ERS20825 #75685 <sfID>0033t000034UYkBAAW</sfID>
var docType=X(doc,"X_docTypeSent"); 
var provider="";
var facility="";
var label=""; 
var arrOfPairs = []; 
//ERS200822 #75685 TODO move to clientFile how do I get it onto the docSet?
if (0 === sfID.indexOf("003")) {	
	provider = getSFField(doc, "Contact", "Name", null, sfID); 
	facility = getSFField(doc, "Contact", "Account.Name", null, sfID); 
	arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility); 
} else if (0 === sfID.indexOf("500")) {
	//provider = getSFField(doc, "Case", "Contact.Name", null, sfID); //PV210622 commented
	//facility = getSFField(doc, "Case", "Contact.Account.Name", null, sfID); 
	 provider = "test provider"; //PV210622 added for testing 
	 facility = "test facility";
	arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility); 
	//var patient = getSFField(doc, "Case", "Account.Name", null, sfID);
	var patient = "test patient";
    var zStatus=X(doc,"X_reviewedStatus");
    if (zStatus==="") zStatus="Sent";
    if (zStatus==="Signed" || doc.URL.indexOf("TF")!=-1) {  
        docType="TF"; //ERS191211 HACK
        label=zStatus + " by " + provider + " " + " for " + patient; 
        alert("Tell docType from "+ doc.URL+" and label="+label+" sfID="+sfID);
       //ERS201203 #77302 arrOfPairs.push("db-label", label); 
    }  
    /*else if (0 ===sfID.index.Of("a1M")){
        caseId= getSFField(doc, "PatientConnect__PC_Document_cc", "Name", null, sfID);
    }*/
}
if (docType==="") docType=doc.docType;
if (docType==="") X(doc,"X_docType"); 
if (docType==="") X(doc,"ContactName"); 
doc.docType=docType; 
if (!docType) {docType="FAX";} //ERS200822 #75685 desktop PDF with no coversheet

alert("@@@ docType = " + docType); 

if (docType.indexOf(":")>-1) docType=docType.split(":")[0];

arrOfPairs.push("X_buttonAction0",X(doc,"X_buttonAction")); 
arrOfPairs.push("X_buttonAction",""); 
arrOfPairs.push("db-BATES", sfID + "-" + docType);  
arrOfPairs.push("X_attachedTo",sfID); 
if (docType !== "") arrOfPairs.push("X_docType",docType); 
if (1===1) { 
    var ba=doc.X("X_faxStatus")+"";
    if ("Delivered" !== ba) { ba="Failed"; } 
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); 
    arrOfPairs.push("X_buttonAction","");
    //var customLabel=zData.clientFile(doc,ba); //ERS201204 #77302
    //ERS201211 TODO HC data model if (customLabel) label=customLabel;
}
if (label) { doc.label=label; arrOfPairs.push("db-label", label); } //ERS201211 #79590
if (provider) arrOfPairs.push("X_Contact_Name",provider); 
if (facility) arrOfPairs.push("X_Contact_Account.Name",facility); 
alert("testing doc");
if (zData.clientDelivery) { zData.clientDelivery(doc,arrOfPairs); } //ERS210529 #83032
alert("Delivery Complete testing");
updateDB(doc, arrOfPairs);

if (1==0) { //ERS210403 #82403 2nd task - newActivity or downstream is the problem
    addPostExecutionScript(doc, '{"status":"success","message":"EXIT LOGFAX"}');
    alert("ERS210403 #82403 example to stop the newActivity.jsp from firing!");
}
var sfIds= [sfID];
 if(zData.PcDocId) sfIds.push(zData.PcDocId); //PV210629 to attach the file to DL
if(zData.sfIdConnector) sfIds.push(zData.sfIdConnector);
zData.clientLightningFile(doc,sfIds,zData);

/* END PDF UPLOAD CODE SNIPPET */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
