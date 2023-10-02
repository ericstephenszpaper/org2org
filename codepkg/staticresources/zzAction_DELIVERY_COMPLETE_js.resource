<!--
// Name: DELIVERY_COMPLETE
// Committer: eric.stephens@zpaper.com
// Update: zippi native delivery
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2023-08-30 22:45:39","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTEyMjggdXBkYXRlZCBydWxlIGZvciBFZGdlIEhDIElETyBEZW1vIE9yZwphbGVydCgicmVzZXR0aW5nIHRvIGF2b2lkIGJ1dHRvbiByZXZlcmIiKTsgCmFsZXJ0KCJAQEAgbGFiZWwgPSAiICsgZG9jLmxhYmVsKTsgCgoKdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCnZhciBzZklEID0gWChkb2MsIlhfYWN0aXZpdHlPbklEIik7CmlmICghc2ZJRCB8fCBzZklEPT09IiIpIHsgc2ZJRD1YKGRvYywic2ZJRCIpOyBhbGVydCgiRVJTMjAwODIyIGRpc2NvdmVyZWQgIitzZklEKTsgfSAvL0VSUzIwODI1ICM3NTY4NSA8c2ZJRD4wMDMzdDAwMDAzNFVZa0JBQVc8L3NmSUQ+CnZhciBkb2NUeXBlPVgoZG9jLCJYX2RvY1R5cGVTZW50Iik7IAp2YXIgcHJvdmlkZXI7CnZhciBmYWNpbGl0eTsKdmFyIGxhYmVsPSIiOyAKdmFyIGFyck9mUGFpcnMgPSBbXTsgCi8vRVJTMjAwODIyICM3NTY4NSBUT0RPIG1vdmUgdG8gY2xpZW50RmlsZSBob3cgZG8gSSBnZXQgaXQgb250byB0aGUgZG9jU2V0PwppZiAoMCA9PT0gc2ZJRC5pbmRleE9mKCIwMDMiKSkgewkKCXByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDb250YWN0IiwgIk5hbWUiLCBudWxsLCBzZklEKTsgCglmYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ29udGFjdCIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCBzZklEKTsgCglhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIlNlbnQgdG8gIiArIHByb3ZpZGVyICsgIiAiICsgIiBhdCAiICsgZmFjaWxpdHkpOyAKfSBlbHNlIGlmICgwID09PSBzZklELmluZGV4T2YoIjUwMCIpKSB7Cglwcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDb250YWN0Lk5hbWUiLCBudWxsLCBzZklEKTsgCglmYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDb250YWN0LkFjY291bnQuTmFtZSIsIG51bGwsIHNmSUQpOyAKCWFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiU2VudCB0byAiICsgcHJvdmlkZXIgKyAiICIgKyAiIGF0ICIgKyBmYWNpbGl0eSk7IAoJdmFyIHBhdGllbnQgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgc2ZJRCk7CiAgICB2YXIgelN0YXR1cz1YKGRvYywiWF9yZXZpZXdlZFN0YXR1cyIpOwogICAgaWYgKHpTdGF0dXM9PT0iIikgelN0YXR1cz0iU2VudCI7CiAgICBpZiAoelN0YXR1cz09PSJTaWduZWQiIHx8IGRvYy5VUkwuaW5kZXhPZigiVEYiKSE9LTEpIHsgIAogICAgICAgIGRvY1R5cGU9IlRGIjsgLy9FUlMxOTEyMTEgSEFDSwogICAgICAgIGxhYmVsPXpTdGF0dXMgKyAiIGJ5ICIgKyBwcm92aWRlciArICIgIiArICIgZm9yICIgKyBwYXRpZW50OyAKICAgICAgICBhbGVydCgiVGVsbCBkb2NUeXBlIGZyb20gIisgZG9jLlVSTCsiIGFuZCBsYWJlbD0iK2xhYmVsKyIgc2ZJRD0iK3NmSUQpOwogICAgICAgLy9FUlMyMDEyMDMgIzc3MzAyIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7IAogICAgfSAgCn0KaWYgKGRvY1R5cGU9PT0iIikgZG9jVHlwZT1kb2MuZG9jVHlwZTsKaWYgKGRvY1R5cGU9PT0iIikgWChkb2MsIlhfZG9jVHlwZSIpOyAKaWYgKGRvY1R5cGU9PT0iIikgWChkb2MsIkNvbnRhY3ROYW1lIik7IApkb2MuZG9jVHlwZT1kb2NUeXBlOyAKaWYgKCFkb2NUeXBlKSB7ZG9jVHlwZT0iRkFYIjt9IC8vRVJTMjAwODIyICM3NTY4NSBkZXNrdG9wIFBERiB3aXRoIG5vIGNvdmVyc2hlZXQKCmFsZXJ0KCJAQEAgZG9jVHlwZSA9ICIgKyBkb2NUeXBlKTsgCgppZiAoZG9jVHlwZS5pbmRleE9mKCI6Iik+LTEpIGRvY1R5cGU9ZG9jVHlwZS5zcGxpdCgiOiIpWzBdOwoKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbjAiLFgoZG9jLCJYX2J1dHRvbkFjdGlvbiIpKTsgCmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKYWxlcnQoIkVSUy4yMTA5MTIgc3NsRmF4PWRvYy5vcmdYTUwgYW5kIEJBVEVTPSIrZG9jLkJBVEVTKTsKaWYgKCgxPT0wIHx8IGRvYy5CQVRFUz09IiIpICYmICF6RGF0YS5zc2xGYXgpIHsgLy9FUlMyMTA5MTIgIzgzNzY3IGxvZ0ZheCBvdmVyd3JpdGUKICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklEICsgIi0iICsgZG9jVHlwZSk7IAp9CmFsZXJ0KCJFUlMyMzA0MDguNTEgekRhdGEuY2hhbm5lbD0iK3pEYXRhLmNoYW5uZWwpOwppZiAoekRhdGEuY2hhbm5lbC50b1VwcGVyQ2FzZSgpID09ICJTQ0FOIiAmJiB6RGF0YS5zc2xGYXgpIHsgLy9FUlMyMzA0MDggSU5WSVRFIHZlcnN1cyBGQVggYnV0IFRPRE8gZW1haWwvZG0KICAgIGFsZXJ0KCJFUlMyMzA0MDguNTMgVE9ETyBiZXR0ZXIgc3RhbXAgREVMSVZFUllfQ09NUExFVEUgZm9yIHpEYXRhLmNoYW5uZWw9Iit6RGF0YS5jaGFubmVsKTsKfSBlbHNlIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixzZklEKTsgCiAgICBpZiAoZG9jVHlwZSAhPT0gIiIpIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIixkb2NUeXBlKTsgCiAgICBpZiAoMT09PTEpIHsgCiAgICAgICAgdmFyIGJhPWRvYy5YKCJYX2ZheFN0YXR1cyIpKyIiOwogICAgICAgIGlmICgiRGVsaXZlcmVkIiAhPT0gYmEpIHsgYmE9IkZhaWxlZCI7IH0gLy9UT0RPIEVSUzIyMDIxNCA4OTc1MCBpbmNvcnBvcmF0ZSBQZW5kaW5nCiAgICAgICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICAgICAgLy92YXIgY3VzdG9tTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsYmEpOyAvL0VSUzIwMTIwNCAjNzczMDIKICAgICAgICAvL0VSUzIwMTIxMSBUT0RPIEhDIGRhdGEgbW9kZWwgaWYgKGN1c3RvbUxhYmVsKSBsYWJlbD1jdXN0b21MYWJlbDsKICAgIH0KICAgIGlmIChsYWJlbCkgeyBkb2MubGFiZWw9bGFiZWw7IGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7IH0gLy9FUlMyMDEyMTEgIzc5NTkwCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfQ29udGFjdF9OYW1lIixwcm92aWRlcik7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJYX0NvbnRhY3RfQWNjb3VudC5OYW1lIixmYWNpbGl0eSk7IAogICAgaWYgKHpEYXRhLmNsaWVudERlbGl2ZXJ5KSB7IHpEYXRhLmNsaWVudERlbGl2ZXJ5KGRvYyxhcnJPZlBhaXJzKTsgfSAvL0VSUzIxMDUyNyAjODMwMzIKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7Cn0KCnZhciB6Y2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fIisiekNoYW5uZWwxX19jIik7CmFsZXJ0KCJFUlMyMjA4MjMgemM9Iit6Y2hhbm5lbCk7CmlmICh6Y2hhbm5lbCAmJiB6Y2hhbm5lbC5pbmRleE9mKCJ7Iik+LTEpIHpjaGFubmVsPUpTT04ucGFyc2UoemNoYW5uZWwpOwphbGVydCgiRVJTMjMwODMwLjczIHpEYXRhLnppcHBpTW9kZT0iK3pEYXRhLnppcHBpTW9kZSk7Ci8vekRhdGEuem1vZGU9Im5hdGl2ZSI7IC8vRVJTMjMwODMwIEhBQ0sgSEFDSyBzaG91bGQgYmUgaW4gdGhlIGRlcGxveW1lbnQKaWYgKHpEYXRhLnppcHBpTW9kZSkgeyAvL0VSUzIzMDgzMCBuZWVkZWQgZm9yIERlcGxveW1lbnQgemlwcGkubW9kZT0nbmF0aXZlJzsgem1vZGUgbm93IHppcHBpTW9kZQogICAgdmFyIGxpbmtlZElkPSJnZXQgZnJvbSB6RGF0YSI7CiAgICB0cnkgeyAvL0VSUzIxMDUxMyB0cnkvY2F0Y2ggLy9FUlMyMTA5MjEgZnJvbSBnaXRyb29scyBvbiBkdjE0ICM4NDA4NQogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBpZiAoc2ZJRC5pbmRleE9mKCIwMDMiKSE9PTApIHsgLy9FUlMyMTA1MTMgbm90IGEgY29udGFjdAogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIldoYXRJZCIsc2ZJRCk7CiAgICAgICAgfSBlbHNlIHsgYXJyT2ZQYWlycy5wdXNoKCJXaG9JZCIsc2ZJRCk7IH0KICAgICAgICBpZiAoMT09MSkgeyAvL0VSUzIyMDcxOSAjOTI3MTYgCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwiQ29tcGxldGVkIik7CiAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJBY3Rpdml0eURhdGUiLGdldEN1ckRhdGUoZG9jLCBudWxsKSk7Ly9QVjIyMDkyOSBhZGRlZCBmb3IgZGF0ZQogICAgICAgICAgICBpZiAoIWRvYy5YX3BhZ2VzKSB7IGRvYy5YX3BhZ2VzPWRvYy5udW1QYWdlczsgfSAvL0VSUzIyMDcxOSAjOTI3MTYgCiAgICAgICAgfQogICAgICAgIGFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsYmErIjogIitkb2MubGFiZWwrIiB0byAiK1goZG9jLCJDb250YWN0RmF4IikpOyAvL0VSUzIyMDgyNSAjOTMyNjIgYWRkIGRlc3RpbmF0aW9uCiAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIkRlc2NyaXB0aW9uIixiYSsiOiAiK2RvYy5sYWJlbCsiICgiKyBkb2NUeXBlKyIpICIrIGRvYy5YX3BhZ2VzICsiIHBhZ2VzIGlzIHN0b3JlZCBpbiAiK2RvYy5rYkRhdGEuc2ZTZXJ2ZXIrIi8iK2xpbmtlZElkKTsKICAgICAgICAvL1RPRE8gdXNlIGd3IGFuZCBwaG9uZQogICAgICAgIHZhciBmYXg9IiI7IC8vUFYyMjA5MjkgYWRkZWQgZmF4IG51bWJlcgogICAgICAgIGlmICghZmF4KSBmYXg9ZG9jLmtiRGF0YS5jdXN0b21TZXR0aW5ncy5aUEFQRVJfX0NoYW5uZWwxX19jOyAvL0VSUzIzMDgzMAogICAgICAgIC8vYWxlcnQoIkVSUzIzMDgzMC45MiBmYXggZnJvbSAiK0pTT04uc3RyaW5naWZ5KGRvYy5rYkRhdGEuY3VzdG9tU2V0dGluZ3MpKTsKICAgICAgICAvL1RPRE8gRklYIEVSUzIzMDgzMCBpZiAoemNoYW5uZWwgJiYgemNoYW5uZWwuZmF4KSBmYXg9emNoYW5uZWwuZmF4OyBpZiAoIWZheCkgeyBmYXg9IjE2Nzg3NzEwMzY0JiI7IGFsZXJ0KCJUT0RPMjIwODIzIGxvb2t1cCBmYXggb2YgIitmYXgpOyB9CiAgICAgICAgdmFyIHpTZXJ2ZXI9Imd3IjsKICAgICAgICBpZiAoMT09MSkgeyB6U2VydmVyPSJndyI7IH0gLy9DTUEyMjA4MjUgY2hhbmdlZCB0byBkZXYtZ3cuenBhcGVyLmNvbSBFUlMyMjA4MjUgIzkzMjYyIFRPRE8gZ3cuenBhcGVyLmNvbS9yZWQvIHJlZGlyZWN0IGNsaWNrdXAgaHR0cHM6Ly9hcHAuY2xpY2t1cC5jb20vdC8ydno4cXc5IC8vUFYyMjA5MjMgdXBkYXRlZCBmcm9tIGRldi1ndyB0byBndwogICAgICAgIGxpbmtlZElkPSJodHRwczovLyIrelNlcnZlcisiLnpwYXBlci5jb20vcmVkL3ppcHBpL3ZpZXcvSFRNTC8iK2RvYy5kYklEKyI/Y2hhbm5lbD0iK2ZheDsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkRlc2NyaXB0aW9uIixiYSsiOiAiK2RvYy5sYWJlbCsiICgiKyBkb2NUeXBlKyIpICIrIGRvYy5YX3BhZ2VzICsiIHBhZ2VzIGlzIHN0b3JlZCBpbiAiK2xpbmtlZElkKTsKICAgICAgICB2YXIgbmV3QWN0PWNyZWF0ZVNGUmVjb3JkKGRvYywiVGFzayIsbnVsbCxhcnJPZlBhaXJzKTsgLy9FUlMyMTA0MjUgbmV3IGFjdGl2aXR5IG51bGwgZm9yIE5hbWUKICAgICAgICBhbGVydCgiRVJTMjMwODMwIGNyZWF0ZWQgQWN0aXZpdHkgIituZXdBY3QrIiAiK2JhKyIgd2l0aCAiK2xpbmtlZElkKTsKICAgIH0gY2F0Y2ggKGUpIHsKICAgICAgICBhbGVydCgiRVJTMjEwNTEzICM4MjA4MSBpcyBTRiBoYXZpbmcgdHJvdWJsZT8gTmV3IGFjdGl2aXR5IGZhaWxlZCBvbiAiK3NmSUQrIiBmb3IgIisgbGlua2VkSWQrIiBlcnJvcjoiK2UpOwogICAgfQp9CmlmICgxPT0wIHx8IHpEYXRhLnppcHBpTW9kZSB8fCB6RGF0YS56bW9kZSkgeyAvL0VSUzIyMDgyMyAjOTMyNjIgem1vZGUgLy9FUlMyMTA0MDMgIzgyNDAzIDJuZCB0YXNrIC0gbmV3QWN0aXZpdHkgb3IgZG93bnN0cmVhbSBpcyB0aGUgcHJvYmxlbQogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICd7InN0YXR1cyI6InN1Y2Nlc3MiLCJtZXNzYWdlIjoiRVhJVCBMT0dGQVgifScpOwogICAgYWxlcnQoIkVSUzIxMDQwMyAjODI0MDMgZXhhbXBsZSB0byBzdG9wIHRoZSBuZXdBY3Rpdml0eS5qc3AgZnJvbSBmaXJpbmchIik7Cn0KLyogRU5EIFBERiBVUExPQUQgQ09ERSBTTklQUEVUICov"},"ordinal":6}

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
alert("ERS230408.51 zData.channel="+zData.channel);
if (zData.channel.toUpperCase() == "SCAN" && zData.sslFax) { //ERS230408 INVITE versus FAX but TODO email/dm
    alert("ERS230408.53 TODO better stamp DELIVERY_COMPLETE for zData.channel="+zData.channel);
} else {
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
}

var zchannel=XCustomSetting(doc,"ZPAPER__"+"zChannel1__c");
alert("ERS220823 zc="+zchannel);
if (zchannel && zchannel.indexOf("{")>-1) zchannel=JSON.parse(zchannel);
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
        //alert("ERS230830.92 fax from "+JSON.stringify(doc.kbData.customSettings));
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
