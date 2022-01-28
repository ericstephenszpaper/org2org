<!--
// Name: Copper Delivery
// Committer: eric.stephens@zpaper.com
// Update: activated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-11-22 21:39:38","active":true,"button":"","name":"Copper Delivery","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTEyMjggdXBkYXRlZCBydWxlIGZvciBFZGdlIEhDIElETyBEZW1vIE9yZwphbGVydCgicmVzZXR0aW5nIHRvIGF2b2lkIGJ1dHRvbiByZXZlcmIiKTsgCmFsZXJ0KCJAQEAgbGFiZWwgPSAiICsgZG9jLmxhYmVsKTsgCgoKdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCnZhciBzZklEID0gWChkb2MsIlhfYWN0aXZpdHlPbklEIik7CmlmICghc2ZJRCB8fCBzZklEPT09IiIpIHsgc2ZJRD1YKGRvYywic2ZJRCIpOyBhbGVydCgiRVJTMjAwODIyIGRpc2NvdmVyZWQgIitzZklEKTsgfSAvL0VSUzIwODI1ICM3NTY4NSA8c2ZJRD4wMDMzdDAwMDAzNFVZa0JBQVc8L3NmSUQ+CnZhciBkb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGVTZW50Iik7IAp2YXIgcHJvdmlkZXI7CnZhciBmYWNpbGl0eTsKdmFyIGxhYmVsPSIiOyAKCnZhciBsaW5rZWRJZD0iIjsKaWYgKGRvYy5VUkwuaW5kZXhPZigiMDY5IikgPT0gLTEpIHsgCiAgICBsaW5rZWRJZD16RGF0YS5jb25uZWN0RmlsZShkb2Msc2ZJRCk7IC8vRVJTMjEwNDI0IGNvbm5lY3RzIHRoZSBMRiB0byByZWNvcmQKfSBlbHNlIHsgLy9FUlMyMTA5MjEgIzg0MDg1IFVzZVRoZVNGSUQxMjM0NSBoYXMgYWxyZWFkeSBkb25lIHRoaXMKICAgIC8vLi4vYWxsZmlsZXMvMDY5MTIzMjMyMzIzMzMtMDAyMzIzMjMyMzIzMzMvZmlsZS5wZGYKICAgIGxpbmtlZElkPWRvYy5VUkwuc3Vic3RyaW5nKGRvYy5VUkwuaW5kZXhPZigiZmlsZXMvIikrNixkb2MuVVJMLmluZGV4T2YoIi0iKSk7Cn0KaWYgKGxpbmtlZElkLmluZGV4T2YoIjA2OSIpICE9PSAwKSB7CiAgICBhbGVydCgiRVJTMjEwNDI1IFRPRE8gaW50byBhIDA2OSBpbnN0ZWFkIG9mICIrZG9jLlVSTCk7Cn0KCnZhciBhcnJPZlBhaXJzID0gW107IAovL0VSUzIwMDgyMiAjNzU2ODUgVE9ETyBtb3ZlIHRvIGNsaWVudEZpbGUgaG93IGRvIEkgZ2V0IGl0IG9udG8gdGhlIGRvY1NldD8KaWYgKDAgPT09IHNmSUQuaW5kZXhPZigiMDAzIikpIHsJCglwcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ29udGFjdCIsICJOYW1lIiwgbnVsbCwgc2ZJRCk7IAoJZmFjaWxpdHkgPSBnZXRTRkZpZWxkKGRvYywgIkNvbnRhY3QiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7IAoJYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJTZW50IHRvICIgKyBwcm92aWRlciArICIgIiArICIgYXQgIiArIGZhY2lsaXR5KTsgCn0gZWxzZSBpZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCI1MDAiKSkgewoJcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQ29udGFjdC5OYW1lIiwgbnVsbCwgc2ZJRCk7IAoJZmFjaWxpdHkgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQ29udGFjdC5BY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgCglhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIlNlbnQgdG8gIiArIHByb3ZpZGVyICsgIiAiICsgIiBhdCAiICsgZmFjaWxpdHkpOyAKCXZhciBwYXRpZW50ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOwogICAgdmFyIHpTdGF0dXM9WChkb2MsIlhfcmV2aWV3ZWRTdGF0dXMiKTsKICAgIGlmICh6U3RhdHVzPT09IiIpIHpTdGF0dXM9IlNlbnQiOwogICAgaWYgKHpTdGF0dXM9PT0iU2lnbmVkIiB8fCBkb2MuVVJMLmluZGV4T2YoIlRGIikhPS0xKSB7ICAKICAgICAgICBkb2NUeXBlPSJURiI7IC8vRVJTMTkxMjExIEhBQ0sKICAgICAgICBsYWJlbD16U3RhdHVzICsgIiBieSAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGZvciAiICsgcGF0aWVudDsgCiAgICAgICAgYWxlcnQoIlRlbGwgZG9jVHlwZSBmcm9tICIrIGRvYy5VUkwrIiBhbmQgbGFiZWw9IitsYWJlbCsiIHNmSUQ9IitzZklEKTsKICAgICAgIC8vRVJTMjAxMjAzICM3NzMwMiBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOyAKICAgIH0gIAp9CmlmIChkb2NUeXBlPT09IiIpIGRvY1R5cGU9ZG9jLmRvY1R5cGU7CmlmIChkb2NUeXBlPT09IiIpIFgoZG9jLCJYX2RvY1R5cGUiKTsgCmlmIChkb2NUeXBlPT09IiIpIFgoZG9jLCJDb250YWN0TmFtZSIpOyAKZG9jLmRvY1R5cGU9ZG9jVHlwZTsgCmlmICghZG9jVHlwZSkge2RvY1R5cGU9IkZBWCI7fSAvL0VSUzIwMDgyMiAjNzU2ODUgZGVza3RvcCBQREYgd2l0aCBubyBjb3ZlcnNoZWV0CgphbGVydCgiQEBAIGRvY1R5cGUgPSAiICsgZG9jVHlwZSk7IAoKaWYgKGRvY1R5cGUuaW5kZXhPZigiOiIpPi0xKSBkb2NUeXBlPWRvY1R5cGUuc3BsaXQoIjoiKVswXTsKCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24wIixYKGRvYywiWF9idXR0b25BY3Rpb24iKSk7IAphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7IAphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJRCArICItIiArIGRvY1R5cGUpOyAgCmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixzZklEKTsgCmlmIChkb2NUeXBlICE9PSAiIikgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLGRvY1R5cGUpOyAKLy9pZiAoMT09PTEpIHsgCiAgICB2YXIgYmE9ZG9jLlgoIlhfZmF4U3RhdHVzIikrIiI7CiAgICBpZiAoIkRlbGl2ZXJlZCIgIT09IGJhKSB7IGJhPSJGYWlsZWQiOyB9IAogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICAvL3ZhciBjdXN0b21MYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYyxiYSk7IC8vRVJTMjAxMjA0ICM3NzMwMgogICAgLy9FUlMyMDEyMTEgVE9ETyBIQyBkYXRhIG1vZGVsIGlmIChjdXN0b21MYWJlbCkgbGFiZWw9Y3VzdG9tTGFiZWw7Ci8vfQppZiAobGFiZWwpIHsgZG9jLmxhYmVsPWxhYmVsOyBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOyB9IC8vRVJTMjAxMjExICM3OTU5MAphcnJPZlBhaXJzLnB1c2goIlhfQ29udGFjdF9OYW1lIixwcm92aWRlcik7IAphcnJPZlBhaXJzLnB1c2goIlhfQ29udGFjdF9BY2NvdW50Lk5hbWUiLGZhY2lsaXR5KTsgCnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgoKLy9UT0RPIG1ha2MgYW4gYWN0aXZpdHkgb24gc2ZJZCBhbmQgdXNlIHRoZSBsaW5rZWRJZCB0byByZWZlciB0byB0aGUgbGlnaHRuaW5nIGZpbGUKLy9jcmVhdGVTRlJlY29yZChkb2MsIHNmVHlwZSwgbmFtZSwgYXJyYXlPZlBhaXJzKQp0cnkgeyAvL0VSUzIxMDUxMyB0cnkvY2F0Y2ggLy9FUlMyMTA5MjEgZnJvbSBnaXRyb29scyBvbiBkdjE0ICM4NDA4NQogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgaWYgKHNmSUQuaW5kZXhPZigiMDAzIikhPT0wKSB7IC8vRVJTMjEwNTEzIG5vdCBhIGNvbnRhY3QKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIldoYXRJZCIsc2ZJRCk7CiAgICB9IGVsc2UgeyBhcnJPZlBhaXJzLnB1c2goIldob0lkIixzZklEKTsgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJTdWJqZWN0IixiYSsiOiAiK2RvYy5sYWJlbCk7CiAgICBhcnJPZlBhaXJzLnB1c2goIkRlc2NyaXB0aW9uIixiYSsiOiAiK2RvYy5sYWJlbCsiICgiKyBkb2NUeXBlKyIpICIrIGRvYy5YX3BhZ2VzICsiIHBhZ2VzIGlzIHN0b3JlZCBpbiAiK2RvYy5rYkRhdGEuc2ZTZXJ2ZXIrIi8iK2xpbmtlZElkKTsKICAgIHZhciBuZXdBY3Q9Y3JlYXRlU0ZSZWNvcmQoZG9jLCJUYXNrIixudWxsLGFyck9mUGFpcnMpOyAvL0VSUzIxMDQyNSBuZXcgYWN0aXZpdHkgbnVsbCBmb3IgTmFtZQp9IGNhdGNoIChlKSB7CiAgICBhbGVydCgiRVJTMjEwNTEzICM4MjA4MSBpcyBTRiBoYXZpbmcgdHJvdWJsZT8gTmV3IGFjdGl2aXR5IGZhaWxlZCBvbiAiK3NmSUQrIiBmb3IgIisgbGlua2VkSWQrIiBlcnJvcjoiK2UpOwp9CgoKaWYgKDE9PTEpIHsgLy9FUlMyMTA0MjMgZG8gdGhlIGFjdGl2aXR5IGhlcmUKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAneyJzdGF0dXMiOiJzdWNjZXNzIiwibWVzc2FnZSI6IkVYSVQgTE9HRkFYIn0nKTsKICAgIGFsZXJ0KCJFUlMyMTA0MDMgIzgyNDAzIGV4YW1wbGUgdG8gc3RvcCB0aGUgbmV3QWN0aXZpdHkuanNwIGZyb20gZmlyaW5nISIpOwp9Ci8qIEVORCBQREYgVVBMT0FEIENPREUgU05JUFBFVCAqLw=="},"ordinal":7}

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
if (doc.URL.indexOf("069") == -1) { 
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
try { //ERS210513 try/catch //ERS210921 from gitrools on dv14 #84085
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
