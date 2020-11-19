<!--
// Name: Janssen_Benefit_Investigation
// Committer: eric.stephens@zpaper.com
// Update: BI wizard
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-10-31 15:46:21","active":true,"button":"BI_Wizard","name":"Janssen_Benefit_Investigation","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTEyMjggdXBkYXRlZCBydWxlIGZvciBFZGdlIEhDIElETyBEZW1vIE9yZwphbGVydCgicmVzZXR0aW5nIHRvIGF2b2lkIGJ1dHRvbiByZXZlcmIiKTsgCmFsZXJ0KCJAQEAgbGFiZWwgPSAiICsgZG9jLmxhYmVsKTsgCgoKdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCnZhciBzZklEID0gWChkb2MsIlhfYWN0aXZpdHlPbklEIik7CmlmICghc2ZJRCB8fCBzZklEPT09IiIpIHsgc2ZJRD1YKGRvYywic2ZJRCIpOyBhbGVydCgiRVJTMjAwODIyIGRpc2NvdmVyZWQgIitzZklEKTsgfSAvL0VSUzIwODI1ICM3NTY4NSA8c2ZJRD4wMDMzdDAwMDAzNFVZa0JBQVc8L3NmSUQ+CnZhciBkb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGVTZW50Iik7IAp2YXIgcHJvdmlkZXI7CnZhciBmYWNpbGl0eTsKdmFyIGxhYmVsPSIiOyAKdmFyIGFyck9mUGFpcnMgPSBbXTsgCi8vRVJTMjAwODIyICM3NTY4NSBUT0RPIG1vdmUgdG8gY2xpZW50TmFtZSBob3cgZG8gSSBnZXQgaXQgb250byB0aGUgZG9jU2V0PwppZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCIwMDMiKSkgewkKCXByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIk5hbWUiLCBudWxsLCBzZklEKTsgCglmYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ29udGFjdCIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgCglhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIlNlbnQgdG8gIiArIHByb3ZpZGVyICsgIiAiICsgIiBhdCAiICsgZmFjaWxpdHkpOyAKfSBlbHNlIGlmICgwID09PSBzZklELmluZGV4T2YoIjUwMCIpKSB7Cglwcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDb250YWN0Lk5hbWUiLCBudWxsLCBzZklEKTsgCglmYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDb250YWN0LkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOyAKCWFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiU2VudCB0byAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGF0ICIgKyBmYWNpbGl0eSk7IAoJdmFyIHBhdGllbnQgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7CiAgICB2YXIgelN0YXR1cz1YKGRvYywiWF9yZXZpZXdlZFN0YXR1cyIpOwogICAgaWYgKHpTdGF0dXM9PT0iIikgelN0YXR1cz0iU2VudCI7CiAgICBpZiAoelN0YXR1cz09PSJTaWduZWQiIHx8IGRvYy5VUkwuaW5kZXhPZigiVEYiKSE9LTEpIHsgIAogICAgICAgIGRvY1R5cGU9IlRGIjsgLy9FUlMxOTEyMTEgSEFDSwogICAgICAgIGxhYmVsPXpTdGF0dXMgKyAiIGJ5ICIgKyBwcm92aWRlciArICIgIiArICIgZm9yICIgKyBwYXRpZW50OyAKICAgICAgICBhbGVydCgiVGVsbCBkb2NUeXBlIGZyb20gIisgZG9jLlVSTCsiIGFuZCBsYWJlbD0iK2xhYmVsKyIgc2ZJRD0iK3NmSUQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7IAogICAgfSAgCn0KaWYgKGRvY1R5cGU9PT0iIikgZG9jVHlwZT1kb2MuZG9jVHlwZTsKaWYgKGRvY1R5cGU9PT0iIikgWChkb2MsIlhfZG9jVHlwZSIpOyAKaWYgKGRvY1R5cGU9PT0iIikgWChkb2MsIkNvbnRhY3ROYW1lIik7IApkb2MuZG9jVHlwZT1kb2NUeXBlOyAKaWYgKCFkb2NUeXBlKSB7ZG9jVHlwZT0iRkFYIjt9IC8vRVJTMjAwODIyICM3NTY4NSBkZXNrdG9wIFBERiB3aXRoIG5vIGNvdmVyc2hlZXQKCmFsZXJ0KCJAQEAgZG9jVHlwZSA9ICIgKyBkb2NUeXBlKTsgCgppZiAoZG9jVHlwZS5pbmRleE9mKCI6Iik+LTEpIGRvY1R5cGU9ZG9jVHlwZS5zcGxpdCgiOiIpWzBdOwoKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbjAiLFgoZG9jLCJYX2J1dHRvbkFjdGlvbiIpKTsgCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsgCmFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklEICsgIi0iICsgZG9jVHlwZSk7ICAKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLHNmSUQpOyAKaWYgKGRvY1R5cGUgIT09ICIiKSBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsZG9jVHlwZSk7IAppZiAoMT09PTEpIHsgCiAgICB2YXIgYmE9ZG9jLlgoIlhfZmF4U3RhdHVzIikrIiI7CiAgICBpZiAoIkRlbGl2ZXJlZCIgIT09IGJhKSB7IGJhPSJGYWlsZWQiOyB9IAogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7Cn0KYXJyT2ZQYWlycy5wdXNoKCJYX0NvbnRhY3RfTmFtZSIscHJvdmlkZXIpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX0NvbnRhY3RfQWNjb3VudC5OYW1lIixmYWNpbGl0eSk7IAoKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsgCi8qIEVORCBQREYgVVBMT0FEIENPREUgU05JUFBFVCAqLw=="},"ordinal":6}

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
var provider;
var facility;
var label=""; 
var arrOfPairs = []; 
//ERS200822 #75685 TODO move to clientName how do I get it onto the docSet?
if (0 === sfID.indexOf("003")) {	
	provider = getSFField(doc, "Contact", "Name", null, sfID); 
	facility = getSFField(doc, "Contact", "Account.Name", null, sfID); 
	arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility); 
} else if (0 === sfID.indexOf("500")) {
	provider = getSFField(doc, "Case", "Contact.Name", null, sfID); 
	facility = getSFField(doc, "Case", "Contact.Account.Name", null, sfID); 
	arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility); 
	var patient = getSFField(doc, "Case", "Account.Name", null, sfID);
    var zStatus=X(doc,"X_reviewedStatus");
    if (zStatus==="") zStatus="Sent";
    if (zStatus==="Signed" || doc.URL.indexOf("TF")!=-1) {  
        docType="TF"; //ERS191211 HACK
        label=zStatus + " by " + provider + " " + " for " + patient; 
        alert("Tell docType from "+ doc.URL+" and label="+label+" sfID="+sfID);
        arrOfPairs.push("db-label", label); 
    }  
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
}
arrOfPairs.push("X_Contact_Name",provider); 
arrOfPairs.push("X_Contact_Account.Name",facility); 

updateDB(doc, arrOfPairs); 
/* END PDF UPLOAD CODE SNIPPET */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
