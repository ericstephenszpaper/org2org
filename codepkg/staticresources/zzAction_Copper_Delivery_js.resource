<!--
// Name: Copper Delivery
// Committer: allison.smith@zpaper.com
// Update: APS210921 Merged code to resolve activity creating with allfiles link. Now, activity will be created with link to salesforce file.
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-09-21 17:49:44","active":true,"button":"","name":"Copper Delivery","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTEyMjggdXBkYXRlZCBydWxlIGZvciBFZGdlIEhDIElETyBEZW1vIE9yZwphbGVydCgicmVzZXR0aW5nIHRvIGF2b2lkIGJ1dHRvbiByZXZlcmIiKTsgCmFsZXJ0KCJAQEAgbGFiZWwgPSAiICsgZG9jLmxhYmVsKTsgCgoKdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCnZhciBzZklEID0gWChkb2MsIlhfYWN0aXZpdHlPbklEIik7CmlmICghc2ZJRCB8fCBzZklEPT09IiIpIHsgc2ZJRD1YKGRvYywic2ZJRCIpOyBhbGVydCgiRVJTMjAwODIyIGRpc2NvdmVyZWQgIitzZklEKTsgfSAvL0VSUzIwODI1ICM3NTY4NSA8c2ZJRD4wMDMzdDAwMDAzNFVZa0JBQVc8L3NmSUQ+CnZhciBkb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGVTZW50Iik7IAp2YXIgcHJvdmlkZXI7CnZhciBmYWNpbGl0eTsKdmFyIGxhYmVsPSIiOyAKCnZhciBsaW5rZWRJZD0iIjsKaWYgKGRvYy5VUkwuaW5kZXhPZigiLzA2OSIpID09IC0xKSB7IAogICAgbGlua2VkSWQ9ekRhdGEuY29ubmVjdEZpbGUoZG9jLHNmSUQpOyAvL0VSUzIxMDQyNCBjb25uZWN0cyB0aGUgTEYgdG8gcmVjb3JkCn0gZWxzZSB7IC8vRVJTMjEwOTIxICM4NDA4NSBVc2VUaGVTRklEMTIzNDUgaGFzIGFscmVhZHkgZG9uZSB0aGlzCiAgICAvLy4uL2FsbGZpbGVzLzA2OTEyMzIzMjMyMzMzLTAwMjMyMzIzMjMyMzMzL2ZpbGUucGRmCiAgICBsaW5rZWRJZD1kb2MuVVJMLnN1YnN0cmluZyhkb2MuVVJMLmluZGV4T2YoImZpbGVzLyIpKzYsZG9jLlVSTC5pbmRleE9mKCItIikpOwp9CmlmIChsaW5rZWRJZC5pbmRleE9mKCIwNjkiKSAhPT0gMCkgewogICAgYWxlcnQoIkVSUzIxMDQyNSBUT0RPIGludG8gYSAwNjkgaW5zdGVhZCBvZiAiK2RvYy5VUkwpOwp9Cgp2YXIgYXJyT2ZQYWlycyA9IFtdOyAKLy9FUlMyMDA4MjIgIzc1Njg1IFRPRE8gbW92ZSB0byBjbGllbnRGaWxlIGhvdyBkbyBJIGdldCBpdCBvbnRvIHRoZSBkb2NTZXQ/CmlmICgwID09PSBzZklELmluZGV4T2YoIjAwMyIpKSB7CQoJcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNvbnRhY3QiLCAiTmFtZSIsIG51bGwsIHNmSUQpOyAKCWZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOyAKCWFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiU2VudCB0byAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGF0ICIgKyBmYWNpbGl0eSk7IAp9IGVsc2UgaWYgKDAgPT09IHNmSUQuaW5kZXhPZigiNTAwIikpIHsKCXByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNvbnRhY3QuTmFtZSIsIG51bGwsIHNmSUQpOyAKCWZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNvbnRhY3QuQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7IAoJYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJTZW50IHRvICIgKyBwcm92aWRlciArICIgIiArICIgYXQgIiArIGZhY2lsaXR5KTsgCgl2YXIgcGF0aWVudCA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsKICAgIHZhciB6U3RhdHVzPVgoZG9jLCJYX3Jldmlld2VkU3RhdHVzIik7CiAgICBpZiAoelN0YXR1cz09PSIiKSB6U3RhdHVzPSJTZW50IjsKICAgIGlmICh6U3RhdHVzPT09IlNpZ25lZCIgfHwgZG9jLlVSTC5pbmRleE9mKCJURiIpIT0tMSkgeyAgCiAgICAgICAgZG9jVHlwZT0iVEYiOyAvL0VSUzE5MTIxMSBIQUNLCiAgICAgICAgbGFiZWw9elN0YXR1cyArICIgYnkgIiArIHByb3ZpZGVyICsgIiAiICsgIiBmb3IgIiArIHBhdGllbnQ7IAogICAgICAgIGFsZXJ0KCJUZWxsIGRvY1R5cGUgZnJvbSAiKyBkb2MuVVJMKyIgYW5kIGxhYmVsPSIrbGFiZWwrIiBzZklEPSIrc2ZJRCk7CiAgICAgICAvL0VSUzIwMTIwMyAjNzczMDIgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsgCiAgICB9ICAKfQppZiAoZG9jVHlwZT09PSIiKSBkb2NUeXBlPWRvYy5kb2NUeXBlOwppZiAoZG9jVHlwZT09PSIiKSBYKGRvYywiWF9kb2NUeXBlIik7IAppZiAoZG9jVHlwZT09PSIiKSBYKGRvYywiQ29udGFjdE5hbWUiKTsgCmRvYy5kb2NUeXBlPWRvY1R5cGU7IAppZiAoIWRvY1R5cGUpIHtkb2NUeXBlPSJGQVgiO30gLy9FUlMyMDA4MjIgIzc1Njg1IGRlc2t0b3AgUERGIHdpdGggbm8gY292ZXJzaGVldAoKYWxlcnQoIkBAQCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOyAKCmlmIChkb2NUeXBlLmluZGV4T2YoIjoiKT4tMSkgZG9jVHlwZT1kb2NUeXBlLnNwbGl0KCI6IilbMF07CgphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uMCIsWChkb2MsIlhfYnV0dG9uQWN0aW9uIikpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOyAKYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSUQgKyAiLSIgKyBkb2NUeXBlKTsgIAphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsc2ZJRCk7IAppZiAoZG9jVHlwZSAhPT0gIiIpIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIixkb2NUeXBlKTsgCi8vaWYgKDE9PT0xKSB7IAogICAgdmFyIGJhPWRvYy5YKCJYX2ZheFN0YXR1cyIpKyIiOwogICAgaWYgKCJEZWxpdmVyZWQiICE9PSBiYSkgeyBiYT0iRmFpbGVkIjsgfSAKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwogICAgLy92YXIgY3VzdG9tTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsYmEpOyAvL0VSUzIwMTIwNCAjNzczMDIKICAgIC8vRVJTMjAxMjExIFRPRE8gSEMgZGF0YSBtb2RlbCBpZiAoY3VzdG9tTGFiZWwpIGxhYmVsPWN1c3RvbUxhYmVsOwovL30KaWYgKGxhYmVsKSB7IGRvYy5sYWJlbD1sYWJlbDsgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsgfSAvL0VSUzIwMTIxMSAjNzk1OTAKYXJyT2ZQYWlycy5wdXNoKCJYX0NvbnRhY3RfTmFtZSIscHJvdmlkZXIpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX0NvbnRhY3RfQWNjb3VudC5OYW1lIixmYWNpbGl0eSk7IAp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKLy9UT0RPIG1ha2MgYW4gYWN0aXZpdHkgb24gc2ZJZCBhbmQgdXNlIHRoZSBsaW5rZWRJZCB0byByZWZlciB0byB0aGUgbGlnaHRuaW5nIGZpbGUKLy9jcmVhdGVTRlJlY29yZChkb2MsIHNmVHlwZSwgbmFtZSwgYXJyYXlPZlBhaXJzKQp0cnkgeyAvL0VSUzIxMDUxMyB0cnkvY2F0Y2gKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGlmIChzZklELmluZGV4T2YoIjAwMyIpIT09MCkgeyAvL0VSUzIxMDUxMyBub3QgYSBjb250YWN0CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJXaGF0SWQiLHNmSUQpOwogICAgfSBlbHNlIHsgYXJyT2ZQYWlycy5wdXNoKCJXaG9JZCIsc2ZJRCk7IH0KICAgIGFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsYmErIjogIitkb2MubGFiZWwpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJEZXNjcmlwdGlvbiIsYmErIjogIitkb2MubGFiZWwrIiAoIisgZG9jVHlwZSsiKSAiKyBkb2MuWF9wYWdlcyArIiBwYWdlcyBpcyBzdG9yZWQgaW4gIitkb2Mua2JEYXRhLnNmU2VydmVyKyIvIitsaW5rZWRJZCk7CiAgICB2YXIgbmV3QWN0PWNyZWF0ZVNGUmVjb3JkKGRvYywiVGFzayIsbnVsbCxhcnJPZlBhaXJzKTsgLy9FUlMyMTA0MjUgbmV3IGFjdGl2aXR5IG51bGwgZm9yIE5hbWUKfSBjYXRjaCAoZSkgewogICAgYWxlcnQoIkVSUzIxMDUxMyAjODIwODEgaXMgU0YgaGF2aW5nIHRyb3VibGU/IE5ldyBhY3Rpdml0eSBmYWlsZWQgb24gIitzZklEKyIgZm9yICIrIGxpbmtlZElkKyIgZXJyb3I6IitlKTsKfQoKCmlmICgxPT0xKSB7IC8vRVJTMjEwNDIzIGRvIHRoZSBhY3Rpdml0eSBoZXJlCiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgJ3sic3RhdHVzIjoic3VjY2VzcyIsIm1lc3NhZ2UiOiJFWElUIExPR0ZBWCJ9Jyk7CiAgICBhbGVydCgiRVJTMjEwNDAzICM4MjQwMyBleGFtcGxlIHRvIHN0b3AgdGhlIG5ld0FjdGl2aXR5LmpzcCBmcm9tIGZpcmluZyEiKTsKfQovKiBFTkQgUERGIFVQTE9BRCBDT0RFIFNOSVBQRVQgKi8="},"ordinal":3}

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

var linkedId="";
if (doc.URL.indexOf("/069") == -1) { 
    linkedId=zData.connectFile(doc,sfID); //ERS210424 connects the LF to record
} else { //ERS210921 #84085 UseTheSFID12345 has already done this
    //../allfiles/06912323232333-00232323232333/file.pdf
    linkedId=doc.URL.substring(doc.URL.indexOf("files/")+6,doc.URL.indexOf("-"));
}
if (linkedId.indexOf("069") !== 0) {
    alert("ERS210425 TODO into a 069 instead of "+doc.URL);
}

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
//if (1===1) { 
    var ba=doc.X("X_faxStatus")+"";
    if ("Delivered" !== ba) { ba="Failed"; } 
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); 
    arrOfPairs.push("X_buttonAction","");
    //var customLabel=zData.clientFile(doc,ba); //ERS201204 #77302
    //ERS201211 TODO HC data model if (customLabel) label=customLabel;
//}
if (label) { doc.label=label; arrOfPairs.push("db-label", label); } //ERS201211 #79590
arrOfPairs.push("X_Contact_Name",provider); 
arrOfPairs.push("X_Contact_Account.Name",facility); 
updateDB(doc, arrOfPairs);

//TODO makc an activity on sfId and use the linkedId to refer to the lightning file
//createSFRecord(doc, sfType, name, arrayOfPairs)
try { //ERS210513 try/catch
    arrOfPairs = [];
    if (sfID.indexOf("003")!==0) { //ERS210513 not a contact
        arrOfPairs.push("WhatId",sfID);
    } else { arrOfPairs.push("WhoId",sfID); }
    arrOfPairs.push("Subject",ba+": "+doc.label);
    arrOfPairs.push("Description",ba+": "+doc.label+" ("+ docType+") "+ doc.X_pages +" pages is stored in "+doc.kbData.sfServer+"/"+linkedId);
    var newAct=createSFRecord(doc,"Task",null,arrOfPairs); //ERS210425 new activity null for Name
} catch (e) {
    alert("ERS210513 #82081 is SF having trouble? New activity failed on "+sfID+" for "+ linkedId+" error:"+e);
}


if (1==1) { //ERS210423 do the activity here
    addPostExecutionScript(doc, '{"status":"success","message":"EXIT LOGFAX"}');
    alert("ERS210403 #82403 example to stop the newActivity.jsp from firing!");
}
/* END PDF UPLOAD CODE SNIPPET */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
