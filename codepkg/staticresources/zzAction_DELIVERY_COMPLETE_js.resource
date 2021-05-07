<!--
// Name: DELIVERY_COMPLETE
// Committer: eric.stephens@zpaper.com
// Update: ERS210430 #82894 docType=; ERS210430 #82894 docType=; ERS210430 #82894 HACK; ERS201211 #79590
arrOfPairs.push("X_Contact_Name",provider); 
arrOfPairs.push("X_Contact_Account.Name",facility); 
updateDB(doc, arrOfPairs);

alert("ERS210430 status="+X(doc,"X_reviewedStatus") +" mode="+X(doc,"mode"));; ERS210430 #82894 no activity on until Processed PDFs
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-30 23:48:57","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTEyMjggdXBkYXRlZCBydWxlIGZvciBFZGdlIEhDIElETyBEZW1vIE9yZwphbGVydCgicmVzZXR0aW5nIHRvIGF2b2lkIGJ1dHRvbiByZXZlcmIiKTsgCmFsZXJ0KCJAQEAgbGFiZWwgPSAiICsgZG9jLmxhYmVsKTsgCgoKdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCnZhciBzZklEID0gWChkb2MsIlhfYWN0aXZpdHlPbklEIik7CmlmICghc2ZJRCB8fCBzZklEPT09IiIpIHsgc2ZJRD1YKGRvYywic2ZJRCIpOyBhbGVydCgiRVJTMjAwODIyIGRpc2NvdmVyZWQgIitzZklEKTsgfSAvL0VSUzIwODI1ICM3NTY4NSA8c2ZJRD4wMDMzdDAwMDAzNFVZa0JBQVc8L3NmSUQ+CnZhciBkb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGVTZW50Iik7IAp2YXIgcHJvdmlkZXI7CnZhciBmYWNpbGl0eTsKdmFyIGxhYmVsPSIiOyAKdmFyIGFyck9mUGFpcnMgPSBbXTsgCi8vRVJTMjAwODIyICM3NTY4NSBUT0RPIG1vdmUgdG8gY2xpZW50RmlsZSBob3cgZG8gSSBnZXQgaXQgb250byB0aGUgZG9jU2V0PwppZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCIwMDMiKSkgewkKCXByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIk5hbWUiLCBudWxsLCBzZklEKTsgCglmYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ29udGFjdCIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgCglhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIlNlbnQgdG8gIiArIHByb3ZpZGVyICsgIiAiICsgIiBhdCAiICsgZmFjaWxpdHkpOyAKfSBlbHNlIGlmICgwID09PSBzZklELmluZGV4T2YoIjUwMCIpKSB7Cglwcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDb250YWN0Lk5hbWUiLCBudWxsLCBzZklEKTsgCglmYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDb250YWN0LkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOyAKCWFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiU2VudCB0byAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGF0ICIgKyBmYWNpbGl0eSk7IAoJdmFyIHBhdGllbnQgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7CiAgICB2YXIgelN0YXR1cz1YKGRvYywiWF9yZXZpZXdlZFN0YXR1cyIpOwogICAgaWYgKHpTdGF0dXM9PT0iIikgelN0YXR1cz0iU2VudCI7CiAgICBpZiAoelN0YXR1cz09PSJTaWduZWQiIHx8IGRvYy5VUkwuaW5kZXhPZigiVEYiKSE9LTEpIHsgIAogICAgICAgIGRvY1R5cGU9IlRGIjsgLy9FUlMxOTEyMTEgSEFDSwogICAgICAgIGxhYmVsPXpTdGF0dXMgKyAiIGJ5ICIgKyBwcm92aWRlciArICIgIiArICIgZm9yICIgKyBwYXRpZW50OyAKICAgICAgICBhbGVydCgiVGVsbCBkb2NUeXBlIGZyb20gIisgZG9jLlVSTCsiIGFuZCBsYWJlbD0iK2xhYmVsKyIgc2ZJRD0iK3NmSUQpOwogICAgICAgLy9FUlMyMDEyMDMgIzc3MzAyIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7IAogICAgfSAgCn0KaWYgKGRvY1R5cGU9PT0iIikgZG9jVHlwZT1kb2MuZG9jVHlwZTsKaWYgKGRvY1R5cGU9PT0iIikgZG9jVHlwZT1YKGRvYywiWF9kb2NUeXBlIik7IC8vRVJTMjEwNDMwICM4Mjg5NCBkb2NUeXBlPQppZiAoZG9jVHlwZT09PSIiKSBkb2NUeXBlPVgoZG9jLCJDb250YWN0TmFtZSIpOyAvL0VSUzIxMDQzMCAjODI4OTQgZG9jVHlwZT0KaWYgKCFkb2NUeXBlKSB7ZG9jVHlwZT0iQ09SIjt9IC8vRVJTMjEwNDMwICM4Mjg5NCBIQUNLCmRvYy5kb2NUeXBlPWRvY1R5cGU7CmlmICghZG9jVHlwZSkge2RvY1R5cGU9IkZBWCI7fSAvL0VSUzIwMDgyMiAjNzU2ODUgZGVza3RvcCBQREYgd2l0aCBubyBjb3ZlcnNoZWV0CgphbGVydCgiQEBAIGRvY1R5cGUgPSAiICsgZG9jVHlwZSk7IAoKaWYgKGRvY1R5cGUuaW5kZXhPZigiOiIpPi0xKSBkb2NUeXBlPWRvY1R5cGUuc3BsaXQoIjoiKVswXTsKCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24wIixYKGRvYywiWF9idXR0b25BY3Rpb24iKSk7IAphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7IAphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJRCArICItIiArIGRvY1R5cGUpOyAgCmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixzZklEKTsgCmlmIChkb2NUeXBlICE9PSAiIikgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLGRvY1R5cGUpOyAKaWYgKDE9PT0xKSB7IAogICAgdmFyIGJhPWRvYy5YKCJYX2ZheFN0YXR1cyIpKyIiOwogICAgaWYgKCJEZWxpdmVyZWQiICE9PSBiYSkgeyBiYT0iRmFpbGVkIjsgfSAKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwogICAgLy92YXIgY3VzdG9tTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsYmEpOyAvL0VSUzIwMTIwNCAjNzczMDIKICAgIC8vRVJTMjAxMjExIFRPRE8gSEMgZGF0YSBtb2RlbCBpZiAoY3VzdG9tTGFiZWwpIGxhYmVsPWN1c3RvbUxhYmVsOwp9CmlmIChsYWJlbCkgeyBkb2MubGFiZWw9bGFiZWw7IGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7IH0gLy9FUlMyMDEyMTEgIzc5NTkwCmFyck9mUGFpcnMucHVzaCgiWF9Db250YWN0X05hbWUiLHByb3ZpZGVyKTsgCmFyck9mUGFpcnMucHVzaCgiWF9Db250YWN0X0FjY291bnQuTmFtZSIsZmFjaWxpdHkpOyAKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCmFsZXJ0KCJFUlMyMTA0MzAgc3RhdHVzPSIrWChkb2MsIlhfcmV2aWV3ZWRTdGF0dXMiKSArIiBtb2RlPSIrWChkb2MsIm1vZGUiKSk7CmlmICgxPT0xICYmICJQcm9jZXNzZWQiICE9IFgoZG9jLCJYX3Jldmlld2VkU3RhdHVzIikgJiYgWChkb2MsIm1vZGUiKS5pbmRleE9mKCJQREYiKSA+IC0xKSB7IC8vRVJTMjEwNDMwICM4Mjg5NCBubyBhY3Rpdml0eSBvbiB1bnRpbCBQcm9jZXNzZWQgUERGcwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICd7InN0YXR1cyI6InN1Y2Nlc3MiLCJtZXNzYWdlIjoiRVhJVCBMT0dGQVgifScpOwogICAgYWxlcnQoIkVSUzIxMDQwMyAjODI0MDMgZXhhbXBsZSB0byBzdG9wIHRoZSBuZXdBY3Rpdml0eS5qc3AgZnJvbSBmaXJpbmchIik7Cn0KLyogRU5EIFBERiBVUExPQUQgQ09ERSBTTklQUEVUICov"},"ordinal":5}

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
//ERS200822 #75685 TODO move to clientFile how do I get it onto the docSet?
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
       //ERS201203 #77302 arrOfPairs.push("db-label", label); 
    }  
}
if (docType==="") docType=doc.docType;
if (docType==="") docType=X(doc,"X_docType"); //ERS210430 #82894 docType=
if (docType==="") docType=X(doc,"ContactName"); //ERS210430 #82894 docType=
if (!docType) {docType="COR";} //ERS210430 #82894 HACK
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
arrOfPairs.push("X_Contact_Name",provider); 
arrOfPairs.push("X_Contact_Account.Name",facility); 
updateDB(doc, arrOfPairs);

alert("ERS210430 status="+X(doc,"X_reviewedStatus") +" mode="+X(doc,"mode"));
if (1==1 && "Processed" != X(doc,"X_reviewedStatus") && X(doc,"mode").indexOf("PDF") > -1) { //ERS210430 #82894 no activity on until Processed PDFs
    addPostExecutionScript(doc, '{"status":"success","message":"EXIT LOGFAX"}');
    alert("ERS210403 #82403 example to stop the newActivity.jsp from firing!");
}
/* END PDF UPLOAD CODE SNIPPET */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
