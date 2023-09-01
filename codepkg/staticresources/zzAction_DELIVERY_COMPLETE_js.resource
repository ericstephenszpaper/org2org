<!--
// Name: DELIVERY_COMPLETE
// Committer: eric.stephens@zpaper.com
// Update: zippiMode not zmode
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2023-08-30 22:42:19","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTEyMjggdXBkYXRlZCBydWxlIGZvciBFZGdlIEhDIElETyBEZW1vIE9yZwphbGVydCgicmVzZXR0aW5nIHRvIGF2b2lkIGJ1dHRvbiByZXZlcmIiKTsgCmFsZXJ0KCJAQEAgbGFiZWwgPSAiICsgZG9jLmxhYmVsKTsgCgoKdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCnZhciBzZklEID0gWChkb2MsIlhfYWN0aXZpdHlPbklEIik7CmlmICghc2ZJRCB8fCBzZklEPT09IiIpIHsgc2ZJRD1YKGRvYywic2ZJRCIpOyBhbGVydCgiRVJTMjAwODIyIGRpc2NvdmVyZWQgIitzZklEKTsgfSAvL0VSUzIwODI1ICM3NTY4NSA8c2ZJRD4wMDMzdDAwMDAzNFVZa0JBQVc8L3NmSUQ+CnZhciBkb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGVTZW50Iik7IAp2YXIgcHJvdmlkZXI7CnZhciBmYWNpbGl0eTsKdmFyIGxhYmVsPSIiOyAKdmFyIGFyck9mUGFpcnMgPSBbXTsgCi8vIHZhciBhdHRlbnRpb25UbzsgLy9BSFMyMzA4MjQgLSBhZGRlZCB2YWxyaWFibGUgZm9yIHN0b3JpbmcgdmFsdWUgb2YgYXR0ZW50aW9uIHRvIGZpZWxkIGZyb20gY2FzZSBvYmplY3QKLy9FUlMyMDA4MjIgIzc1Njg1IFRPRE8gbW92ZSB0byBjbGllbnRGaWxlIGhvdyBkbyBJIGdldCBpdCBvbnRvIHRoZSBkb2NTZXQ/CmlmICgwID09PSBzZklELmluZGV4T2YoIjAwMyIpKSB7CQoJcHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNvbnRhY3QiLCAiTmFtZSIsIG51bGwsIHNmSUQpOyAKCWZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOyAKCWFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiU2VudCB0byAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGF0ICIgKyBmYWNpbGl0eSk7IAp9IGVsc2UgaWYgKDAgPT09IHNmSUQuaW5kZXhPZigiNTAwIikpIHsKCXByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNvbnRhY3QuTmFtZSIsIG51bGwsIHNmSUQpOyAKCWZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNvbnRhY3QuQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7IAogICAgLy8gCWFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiU2VudCB0byAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGF0ICIgKyBmYWNpbGl0eSk7IC8vIEFIUzIzMDgyNCAtIGNvbW1lbnRlZCBmb3IgdXBkYXRpbmcgbGFiZWwgdG8gdXNlIGF0dGVudGlvbiB0byBmaWVsZCBvbiBjYXNlIG9iamVjdAogICAgLy8gQUhTMjMwODI0IC0gY29tbWVudGVkIGZvciB1cGRhdGluZyBsYWJlbCB0byB1c2UgYXR0ZW50aW9uIHRvIGZpZWxkIC0gc3RhcnQKICAgIC8vIGF0dGVudGlvblRvID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkF0dGVudGlvbl9Ub19fYyIsIG51bGwsIHNmSUQpOyAKICAgIC8vIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiU2VudCB0byAiICsgYXR0ZW50aW9uVG8pOwogICAgLy8gQUhTMjMwODI0IC0gY29tbWVudGVkIGZvciB1cGRhdGluZyBsYWJlbCB0byB1c2UgYXR0ZW50aW9uIHRvIGZpZWxkIC0gZW5kCgl2YXIgcGF0aWVudCA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsKICAgIHZhciB6U3RhdHVzPVgoZG9jLCJYX3Jldmlld2VkU3RhdHVzIik7CiAgICBpZiAoelN0YXR1cz09PSIiKSB6U3RhdHVzPSJTZW50IjsKICAgIGlmICh6U3RhdHVzPT09IlNpZ25lZCIgfHwgZG9jLlVSTC5pbmRleE9mKCJURiIpIT0tMSkgeyAgCiAgICAgICAgZG9jVHlwZT0iVEYiOyAvL0VSUzE5MTIxMSBIQUNLCiAgICAgICAgbGFiZWw9elN0YXR1cyArICIgYnkgIiArIHByb3ZpZGVyICsgIiAiICsgIiBmb3IgIiArIHBhdGllbnQ7IAogICAgICAgIGFsZXJ0KCJUZWxsIGRvY1R5cGUgZnJvbSAiKyBkb2MuVVJMKyIgYW5kIGxhYmVsPSIrbGFiZWwrIiBzZklEPSIrc2ZJRCk7CiAgICAgICAvL0VSUzIwMTIwMyAjNzczMDIgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsgCiAgICB9ICAKfQppZiAoZG9jVHlwZT09PSIiKSBkb2NUeXBlPWRvYy5kb2NUeXBlOwppZiAoZG9jVHlwZT09PSIiKSBYKGRvYywiWF9kb2NUeXBlIik7IAppZiAoZG9jVHlwZT09PSIiKSBYKGRvYywiQ29udGFjdE5hbWUiKTsgCmRvYy5kb2NUeXBlPWRvY1R5cGU7IAppZiAoIWRvY1R5cGUpIHtkb2NUeXBlPSJGQVgiO30gLy9FUlMyMDA4MjIgIzc1Njg1IGRlc2t0b3AgUERGIHdpdGggbm8gY292ZXJzaGVldAoKYWxlcnQoIkBAQCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOyAKCmlmIChkb2NUeXBlLmluZGV4T2YoIjoiKT4tMSkgZG9jVHlwZT1kb2NUeXBlLnNwbGl0KCI6IilbMF07CgphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uMCIsWChkb2MsIlhfYnV0dG9uQWN0aW9uIikpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwphbGVydCgiRVJTLjIxMDkxMiBzc2xGYXg9ZG9jLm9yZ1hNTCBhbmQgQkFURVM9Iitkb2MuQkFURVMpOwppZiAoKDE9PTAgfHwgZG9jLkJBVEVTPT0iIikgJiYgIXpEYXRhLnNzbEZheCkgeyAvL0VSUzIxMDkxMiAjODM3NjcgbG9nRmF4IG92ZXJ3cml0ZQogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSUQgKyAiLSIgKyBkb2NUeXBlKTsgCn0KYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLHNmSUQpOyAKaWYgKGRvY1R5cGUgIT09ICIiKSBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsZG9jVHlwZSk7IAppZiAoMT09PTEpIHsgCiAgICB2YXIgYmE9ZG9jLlgoIlhfZmF4U3RhdHVzIikrIiI7CiAgICBpZiAoIkRlbGl2ZXJlZCIgIT09IGJhKSB7IGJhPSJGYWlsZWQiOyB9IC8vVE9ETyBFUlMyMjAyMTQgODk3NTAgaW5jb3Jwb3JhdGUgUGVuZGluZwogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICAvL3ZhciBjdXN0b21MYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYyxiYSk7IC8vRVJTMjAxMjA0ICM3NzMwMgogICAgLy9FUlMyMDEyMTEgVE9ETyBIQyBkYXRhIG1vZGVsIGlmIChjdXN0b21MYWJlbCkgbGFiZWw9Y3VzdG9tTGFiZWw7Cn0KaWYgKGxhYmVsKSB7IGRvYy5sYWJlbD1sYWJlbDsgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsgfSAvL0VSUzIwMTIxMSAjNzk1OTAKYXJyT2ZQYWlycy5wdXNoKCJYX0NvbnRhY3RfTmFtZSIscHJvdmlkZXIpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX0NvbnRhY3RfQWNjb3VudC5OYW1lIixmYWNpbGl0eSk7IAppZiAoekRhdGEuY2xpZW50RGVsaXZlcnkpIHsgekRhdGEuY2xpZW50RGVsaXZlcnkoZG9jLGFyck9mUGFpcnMpOyB9IC8vRVJTMjEwNTI3ICM4MzAzMgp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwphbGVydCgiRVJTMjMwODMwLjczIHpEYXRhLnppcHBpTW9kZT0iK3pEYXRhLnppcHBpTW9kZSk7Ci8vekRhdGEuem1vZGU9Im5hdGl2ZSI7IC8vRVJTMjMwODMwIEhBQ0sgSEFDSyBzaG91bGQgYmUgaW4gdGhlIGRlcGxveW1lbnQKaWYgKHpEYXRhLnppcHBpTW9kZSkgeyAvL0VSUzIzMDgzMCBuZWVkZWQgZm9yIERlcGxveW1lbnQgemlwcGkubW9kZT0nbmF0aXZlJzsgem1vZGUgbm93IHppcHBpTW9kZQogICAgdmFyIGxpbmtlZElkPSJnZXQgZnJvbSB6RGF0YSI7CiAgICB0cnkgeyAvL0VSUzIxMDUxMyB0cnkvY2F0Y2ggLy9FUlMyMTA5MjEgZnJvbSBnaXRyb29scyBvbiBkdjE0ICM4NDA4NQogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBpZiAoc2ZJRC5pbmRleE9mKCIwMDMiKSE9PTApIHsgLy9FUlMyMTA1MTMgbm90IGEgY29udGFjdAogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIldoYXRJZCIsc2ZJRCk7CiAgICAgICAgfSBlbHNlIHsgYXJyT2ZQYWlycy5wdXNoKCJXaG9JZCIsc2ZJRCk7IH0KICAgICAgICBpZiAoMT09MSkgeyAvL0VSUzIyMDcxOSAjOTI3MTYgCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwiQ29tcGxldGVkIik7CiAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJBY3Rpdml0eURhdGUiLGdldEN1ckRhdGUoZG9jLCBudWxsKSk7Ly9QVjIyMDkyOSBhZGRlZCBmb3IgZGF0ZQogICAgICAgICAgICBpZiAoIWRvYy5YX3BhZ2VzKSB7IGRvYy5YX3BhZ2VzPWRvYy5udW1QYWdlczsgfSAvL0VSUzIyMDcxOSAjOTI3MTYgCiAgICAgICAgfQogICAgICAgIGFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsYmErIjogIitkb2MubGFiZWwrIiB0byAiK1goZG9jLCJDb250YWN0RmF4IikpOyAvL0VSUzIyMDgyNSAjOTMyNjIgYWRkIGRlc3RpbmF0aW9uCiAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIkRlc2NyaXB0aW9uIixiYSsiOiAiK2RvYy5sYWJlbCsiICgiKyBkb2NUeXBlKyIpICIrIGRvYy5YX3BhZ2VzICsiIHBhZ2VzIGlzIHN0b3JlZCBpbiAiK2RvYy5rYkRhdGEuc2ZTZXJ2ZXIrIi8iK2xpbmtlZElkKTsKICAgICAgICAvL1RPRE8gdXNlIGd3IGFuZCBwaG9uZQogICAgICAgIHZhciBmYXg9IiI7IC8vUFYyMjA5MjkgYWRkZWQgZmF4IG51bWJlcgogICAgICAgIGlmICghZmF4KSBmYXg9ZG9jLmtiRGF0YS5jdXN0b21TZXR0aW5ncy5aUEFQRVJfX0NoYW5uZWwxX19jOyAvL0VSUzIzMDgzMAogICAgICAgIGFsZXJ0KCJFUlMyMzA4MzAuOTIgZmF4IGZyb20gIitKU09OLnN0cmluZ2lmeShkb2Mua2JEYXRhLmN1c3RvbVNldHRpbmdzKSk7CiAgICAgICAgLy9UT0RPIEZJWCBFUlMyMzA4MzAgaWYgKHpjaGFubmVsICYmIHpjaGFubmVsLmZheCkgZmF4PXpjaGFubmVsLmZheDsgaWYgKCFmYXgpIHsgZmF4PSIxNjc4NzcxMDM2NCYiOyBhbGVydCgiVE9ETzIyMDgyMyBsb29rdXAgZmF4IG9mICIrZmF4KTsgfQogICAgICAgIHZhciB6U2VydmVyPSJndyI7CiAgICAgICAgaWYgKDE9PTEpIHsgelNlcnZlcj0iZ3ciOyB9IC8vQ01BMjIwODI1IGNoYW5nZWQgdG8gZGV2LWd3LnpwYXBlci5jb20gRVJTMjIwODI1ICM5MzI2MiBUT0RPIGd3LnpwYXBlci5jb20vcmVkLyByZWRpcmVjdCBjbGlja3VwIGh0dHBzOi8vYXBwLmNsaWNrdXAuY29tL3QvMnZ6OHF3OSAvL1BWMjIwOTIzIHVwZGF0ZWQgZnJvbSBkZXYtZ3cgdG8gZ3cKICAgICAgICBsaW5rZWRJZD0iaHR0cHM6Ly8iK3pTZXJ2ZXIrIi56cGFwZXIuY29tL3JlZC96aXBwaS92aWV3L0hUTUwvIitkb2MuZGJJRCsiP2NoYW5uZWw9IitmYXg7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJEZXNjcmlwdGlvbiIsYmErIjogIitkb2MubGFiZWwrIiAoIisgZG9jVHlwZSsiKSAiKyBkb2MuWF9wYWdlcyArIiBwYWdlcyBpcyBzdG9yZWQgaW4gIitsaW5rZWRJZCk7CiAgICAgICAgdmFyIG5ld0FjdD1jcmVhdGVTRlJlY29yZChkb2MsIlRhc2siLG51bGwsYXJyT2ZQYWlycyk7IC8vRVJTMjEwNDI1IG5ldyBhY3Rpdml0eSBudWxsIGZvciBOYW1lCiAgICAgICAgYWxlcnQoIkVSUzIzMDgzMCBjcmVhdGVkIEFjdGl2aXR5ICIrbmV3QWN0KyIgIitiYSsiIHdpdGggIitsaW5rZWRJZCk7CiAgICB9IGNhdGNoIChlKSB7CiAgICAgICAgYWxlcnQoIkVSUzIxMDUxMyAjODIwODEgaXMgU0YgaGF2aW5nIHRyb3VibGU/IE5ldyBhY3Rpdml0eSBmYWlsZWQgb24gIitzZklEKyIgZm9yICIrIGxpbmtlZElkKyIgZXJyb3I6IitlKTsKICAgIH0KfQppZiAoMT09MCB8fCB6RGF0YS56aXBwaU1vZGUgfHwgekRhdGEuem1vZGUpIHsgLy9FUlMyMjA4MjMgIzkzMjYyIHptb2RlIC8vRVJTMjEwNDAzICM4MjQwMyAybmQgdGFzayAtIG5ld0FjdGl2aXR5IG9yIGRvd25zdHJlYW0gaXMgdGhlIHByb2JsZW0KICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAneyJzdGF0dXMiOiJzdWNjZXNzIiwibWVzc2FnZSI6IkVYSVQgTE9HRkFYIn0nKTsKICAgIGFsZXJ0KCJFUlMyMTA0MDMgIzgyNDAzIGV4YW1wbGUgdG8gc3RvcCB0aGUgbmV3QWN0aXZpdHkuanNwIGZyb20gZmlyaW5nISIpOwp9Ci8qIEVORCBQREYgVVBMT0FEIENPREUgU05JUFBFVCAqLw=="},"ordinal":2}

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
// var attentionTo; //AHS230824 - added valriable for storing value of attention to field from case object
//ERS200822 #75685 TODO move to clientFile how do I get it onto the docSet?
if (0 === sfID.indexOf("003")) {	
	provider = getSFField(doc, "Contact", "Name", null, sfID); 
	facility = getSFField(doc, "Contact", "Account.Name", null, sfID); 
	arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility); 
} else if (0 === sfID.indexOf("500")) {
	provider = getSFField(doc, "Case", "Contact.Name", null, sfID); 
	facility = getSFField(doc, "Case", "Contact.Account.Name", null, sfID); 
    // 	arrOfPairs.push("db-label", "Sent to " + provider + " " + " at " + facility); // AHS230824 - commented for updating label to use attention to field on case object
    // AHS230824 - commented for updating label to use attention to field - start
    // attentionTo = getSFField(doc, "Case", "Attention_To__c", null, sfID); 
    // arrOfPairs.push("db-label", "Sent to " + attentionTo);
    // AHS230824 - commented for updating label to use attention to field - end
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
alert("ERS.210912 sslFax=doc.orgXML and BATES="+doc.BATES);
if ((1==0 || doc.BATES=="") && !zData.sslFax) { //ERS210912 #83767 logFax overwrite
    arrOfPairs.push("db-BATES", sfID + "-" + docType); 
}
arrOfPairs.push("X_attachedTo",sfID); 
if (docType !== "") arrOfPairs.push("X_docType",docType); 
if (1===1) { 
    var ba=doc.X("X_faxStatus")+"";
    if ("Delivered" !== ba) { ba="Failed"; } //TODO ERS220214 89750 incorporate Pending
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
if (zData.clientDelivery) { zData.clientDelivery(doc,arrOfPairs); } //ERS210527 #83032
updateDB(doc, arrOfPairs);
alert("ERS230830.73 zData.zippiMode="+zData.zippiMode);
//zData.zmode="native"; //ERS230830 HACK HACK should be in the deployment
if (zData.zippiMode) { //ERS230830 needed for Deployment zippi.mode='native'; zmode now zippiMode
    var linkedId="get from zData";
    try { //ERS210513 try/catch //ERS210921 from gitrools on dv14 #84085
        arrOfPairs = [];
        if (sfID.indexOf("003")!==0) { //ERS210513 not a contact
            arrOfPairs.push("WhatId",sfID);
        } else { arrOfPairs.push("WhoId",sfID); }
        if (1==1) { //ERS220719 #92716 
            arrOfPairs.push("Status","Completed");
           arrOfPairs.push("ActivityDate",getCurDate(doc, null));//PV220929 added for date
            if (!doc.X_pages) { doc.X_pages=doc.numPages; } //ERS220719 #92716 
        }
        arrOfPairs.push("Subject",ba+": "+doc.label+" to "+X(doc,"ContactFax")); //ERS220825 #93262 add destination
        //arrOfPairs.push("Description",ba+": "+doc.label+" ("+ docType+") "+ doc.X_pages +" pages is stored in "+doc.kbData.sfServer+"/"+linkedId);
        //TODO use gw and phone
        var fax=""; //PV220929 added fax number
        if (!fax) fax=doc.kbData.customSettings.ZPAPER__Channel1__c; //ERS230830
        alert("ERS230830.92 fax from "+JSON.stringify(doc.kbData.customSettings));
        //TODO FIX ERS230830 if (zchannel && zchannel.fax) fax=zchannel.fax; if (!fax) { fax="16787710364&"; alert("TODO220823 lookup fax of "+fax); }
        var zServer="gw";
        if (1==1) { zServer="gw"; } //CMA220825 changed to dev-gw.zpaper.com ERS220825 #93262 TODO gw.zpaper.com/red/ redirect clickup https://app.clickup.com/t/2vz8qw9 //PV220923 updated from dev-gw to gw
        linkedId="https://"+zServer+".zpaper.com/red/zippi/view/HTML/"+doc.dbID+"?channel="+fax;
        arrOfPairs.push("Description",ba+": "+doc.label+" ("+ docType+") "+ doc.X_pages +" pages is stored in "+linkedId);
        var newAct=createSFRecord(doc,"Task",null,arrOfPairs); //ERS210425 new activity null for Name
        alert("ERS230830 created Activity "+newAct+" "+ba+" with "+linkedId);
    } catch (e) {
        alert("ERS210513 #82081 is SF having trouble? New activity failed on "+sfID+" for "+ linkedId+" error:"+e);
    }
}
if (1==0 || zData.zippiMode || zData.zmode) { //ERS220823 #93262 zmode //ERS210403 #82403 2nd task - newActivity or downstream is the problem
    addPostExecutionScript(doc, '{"status":"success","message":"EXIT LOGFAX"}');
    alert("ERS210403 #82403 example to stop the newActivity.jsp from firing!");
}
/* END PDF UPLOAD CODE SNIPPET */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
