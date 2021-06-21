<!--
// Name: Sign document
// Committer: eric.stephens@zpaper.com
// Update: ERS210112 doc.numPages
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-01-12 16:36:34","active":true,"button":"Sign","name":"Sign document","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Sign","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoImNhbGxpbmcgdGhlIFNpZ24gYWN0aW9uIik7CnZhciBuPTE7CnZhciBhY3Rpb249ZG9jLlgoIlhfYnV0dG9uQWN0aW9uIik7CmlmIChhY3Rpb24uaW5kZXhPZigiMiIpPi0xKSBuPTI7CmlmIChhY3Rpb24uaW5kZXhPZigiMyIpPi0xKSBuPTM7CnZhciBtaXNzaW5nPSIiOwovLzxYX21hcmt1cF8wPidQQUdFMUlNRzE2MDUzODEwODI1MDcnLDI0MCw3MCwxNDEsNjQyPC9YX21hcmt1cF8wPiAgLy9DUk4yMDExMTQgVE9ETyBYX21hcmt1cDEgbm90IFhfbWFya3VwXzAKaWYgKGRvYy5YKCJYX2ludml0ZUVtYWlsMSIpICE9ICIiICYmIGRvYy5YKCJYX21hcmt1cDEiKSA9PSAiIiAmJiBkb2MuWCgiWF9tYXJrdXBfMCIpID09ICIiKSBtaXNzaW5nKz1kb2MuWCgiWF9pbnZpdGVFbWFpbDEiKSsiLCI7IC8vRVJTMjAxMTE0IF8wCmlmIChkb2MuWCgiWF9pbnZpdGVFbWFpbDIiKSAhPSAiIiAmJiBkb2MuWCgiWF9tYXJrdXAyIikgPT0gIiIgJiYgZG9jLlgoIlhfbWFya3VwXzEiKSA9PSAiIikgbWlzc2luZys9ZG9jLlgoIlhfaW52aXRlRW1haWwyIikrIiwiOwppZiAoZG9jLlgoIlhfaW52aXRlRW1haWwzIikgIT0gIiIgJiYgZG9jLlgoIlhfbWFya3VwMyIpID09ICIiICYmIGRvYy5YKCJYX21hcmt1cF8yIikgPT0gIiIpIG1pc3NpbmcrPWRvYy5YKCJYX2ludml0ZUVtYWlsMyIpKyIsIjsKdmFyIG1zZz0iVGhhbmtzIGZvciBzaWduaW5nICIrZG9jLmxhYmVsOwp2YXIgZHE9U3RyaW5nLmZyb21DaGFyQ29kZSgzNCk7CmlmIChtaXNzaW5nPT0iIiAmJiAxPT09MSkgeyAvL0VSUzIwMTExMyB0dXJuIG9mZiB0byB0ZXN0IDE9PT0wIC8vRVJTMjAxMjExIHdoaXRlc3BhY2luZwogICAgIHZhciBzZklkPXpEYXRhLmdldFN0YWNrSWQoZG9jKTsgLy9FUlMyMDExMTAgVE9ETyBtYXkgd2FudCB0aGUgbGFzdCBhdHRhY2hlZCB0byBpbnN0ZWFkCiAgICAgaWYgKCFzZklkKSB7IHZhciBhdD1YKGRvYywiWF9hdHRhY2hlZFRvIik7IHNmSWQ9YXQuc3Vic3RyaW5nKDErYXQubGFzdEluZGV4T2YoIi8iKSk7IH0KICAgICB2YXIgcGFpcnMgPSBuZXcgQXJyYXkoKTsKICAgICBwYWlycy5wdXNoKCJkb2NUaXRsZSIsICJ6U2lnbmVkICIgK2RvYy5sYWJlbCk7IC8vRVJTMjAxMTI5ICM3NzMwMiBtYXkgbmVlZCB0byBpc29sYXRlIGluIERFTElWRVJZX0NPTVBMRVRFCiAgICAgcGFpcnMucHVzaCgiY292ZXJJRCIsZG9jLmRiSUQpOwogICAgIHZhciBlbWFpbHM9ZG9jLlgoIlhfaW52aXRlRW1haWwxIikrIiwiK2RvYy5YKCJYX2ludml0ZUVtYWlsMiIpKyIsIitkb2MuWCgiWF9pbnZpdGVFbWFpbDMiKS5yZXBsYWNlKCIsLCIsIiwiKTsgLy9FUlMyMDExMTQKICAgICBwYWlycy5wdXNoKCJDb250YWN0RmF4IixlbWFpbHMpOyAvL0VSUzIwMTExNCB3YXMgImZpbGVQREYiCiAgICAgcGFpcnMucHVzaCgiU0ZpZHMiLHNmSWQpOyAvL3dhcyBkb2MuWCgic2ZJRCIpIC8vRVJTMjAxMTE0IFRPRE8gdXNlIFhfaW52aXRlSWQxLDIsMwogICAgIC8qcGFpcnMucHVzaCgiU0ZzZXJ2ZXIiLGRvYy5zZlNlcnZlcik7CiAgICAgcGFpcnMucHVzaCgiU0ZzZXNzaW9uIixkb2Muc2ZTZXNzaW9uKTsKICAgICovCiAgICAgcGFpcnMucHVzaCgiU0ZvcmciLGRvYy5YKCJzZk9yZyIpKTsKICAgICBwYWlycy5wdXNoKCJTRnNlc3Npb24iLGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQpOyAvL0VSUzIwMTExNiBuZWVkIGZvciB6UGFwZXIgdXNlciB0ZXN0aW5nCiAgICAgLy9FUlMyMDExMTcgIzc3MzAyIGFkZCBzb21lIGN1c3RvbSBzZXR0dGluZyBmb3IgdGhlIGRlZmF1bHQgY29tbXVuaWNhdGlvbiB0ZW1wbGF0ZSBmb3Igc2lnbmF0dXJlcwogICAgIHBhaXJzLnB1c2goInNlbmRXaXRoIiwiMDAzNFQwMDAwMEhVZVl6UUFMIisiLSIrIjAwWDRUMDAwMDAxN2oybSIrIi0iKyIwRDI0VDAwMDAwMDA1WnIiKTsgLy9FUlMyMDExMTQgVE9ETyBjb25maWd1cmUgd2l0aCBhIGNoYW5uZWwgYW5kIHRoZSB1c2VyIDAwNTRUMDAwMDAwUUVralFBRwogICAgIGFsZXJ0KCJkb2Muc2ZVc2VySWQ9Iitkb2Mua2JEYXRhLnNmVXNlcklEKTsKICAgICB2YXIgYXJncz0iIjsKICAgICBhcmdzPSJTRnR5cGU9SUdOT1JFJiI7CiAgICAvKiAiU0ZpZHM9SUdOT1JFJlNGb3JnPUlHTk9SRSYiOwogICAgKi8KICAgICBmb3IgKHA9MDtwPHBhaXJzLmxlbmd0aDtwKyspIHthcmdzKz1wYWlyc1twXSsiPSIrcGFpcnNbcCsxXSsiJiI7cCsrfQogICAgIAogICAgIGFsZXJ0KCJFUlMyMDExMTQuMjgga2IvanNwL1NGX3NlbmRGYXguanNwIHdpdGggIithcmdzKTsKICAgICB2YXIgcmVzdWx0cz13Z2V0KGRvYywgImh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9rYi9qc3AvU0Zfc2VuZEZheC5qc3A/IithcmdzKTsKICAgICBhbGVydCgiRVJTMjAxMTE0LjI5IHJlc3VsdHM9IityZXN1bHRzKTsKICAgICAKICAgICB2YXIgaT1yZXN1bHRzLmluZGV4T2YoIjxpZnJhbWUiKTsKICAgICBpPXJlc3VsdHMuaW5kZXhPZigic3JjPSIsaSk7CiAgICAgdmFyIG5ld0RvY1ZpZXdlcj0iIjsKICAgICBpZiAoaT4tMSAmJiAxPT0wKSB7IC8vRVJTMjAxMTE0IGp1c3QgdXNlIHRoZSBlbWFpbCB0ZW1wbGF0ZSBhbmQgZGVsaXZlciBmcm9tIFNGX3NlbmRGYXgKICAgICAgICAgICB2YXIgdXNlckVtYWlsPWRvYy5YT3JnKCJYX2NybVVzZXIiKTsKICAgICAgICAgICB2YXIgbmV3RG9jPXJlc3VsdHMuc3Vic3RyaW5nKGkrNSxyZXN1bHRzLmluZGV4T2YoIj4iLGkrMSktMSk7CiAgICAgICAgICAgbXNnKz0iIGludG8gIisgbmV3RG9jOwogICAgICAgICAgIG5ld0RvY1ZpZXdlcj1uZXdEb2M7IC8vRVJTMjAxMTE0IFRPRE8gdmlldyBvciBkb3dubG9hZGFibGUgdmVyc2lvbiBvciBqdXN0IGdldCB0aGVtIGVtYWlsIHdoZW4gYWxsIGFyZSBkb25lCiAgICAgICAgICAgdmFyIGJvZHk9IlRoaXMgZG9jdW1lbnQgaGFzIGJlZW4gc2lnbmVkIGJ5IGFsbCBwYXJ0aWVzLiAgWW91IHdpbGwgbmVlZCB0aGUgUElOIHRoYXQgd2FzIHNlbnQgdG8geW91ciBwaG9uZSB0byBhY2Nlc3MgaXQgb25saW5lLiAgUGxlYXNlIGRvd25sb2FkIHlvdXIgb3duIGNvcHkuICBWaWV3IHRoZSA8YSBocmVmPSIrZHErbmV3RG9jK2RxKyI+c2lnbmVkIGRvY3VtZW50PC9hPi4iOwogICAgICAgICAgIGJvZHk9IlRoaXMgZG9jdW1lbnQgaGFzIGJlZW4gc2lnbmVkIGJ5IGFsbCBwYXJ0aWVzLiAgWW91IHdpbGwgbmVlZCB0aGUgUElOIHRoYXQgd2FzIHNlbnQgdG8geW91ciBwaG9uZSB0byBhY2Nlc3MgaXQgb25saW5lLiAgUGxlYXNlIGRvd25sb2FkIHlvdXIgb3duIGNvcHkuICBWaWV3IGl0IGF0ICIrbmV3RG9jKyIgbm93LiI7CiAgICAgICAgICAgc2VuZEVtYWlsKGRvYyx1c2VyRW1haWwsZW1haWxzLnJlcGxhY2UoLyAvZywiKyIpLCJ6UGFwZXIgc2lnbmVkICIrZG9jLmxhYmVsLGJvZHkpOwogICAgICAgICAgIC8vRVJTMjAxMTEwIFRPRE8gc2VuZEVtYWlsKGRvYyx1c2VyRW1haWwsZW1haWxzLnJlcGxhY2UoLyAvZywiKyIpLCJ6UGFwZXIgc2lnbmVkICIrZG9jLmxhYmVsLGJvZHksc2ZJZCxjb21tdW5pY2F0aW9uVGVtcGxhdGVJZCk7CiAgICAgfQogICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQoIitkcSttc2crZHErIik7ZG9jdW1lbnQud3JpdGUoIitkcSsiPGg0PiIrbXNnKyI8L2g0PiIrbmV3RG9jVmlld2VyK2RxKyIpOyIpOyAvL0VSUzIwMTExNCB0cnkgdG8gdmlldyBpdAogICAgIGlmICghZG9jLm51bVBhZ2VzKSBkb2MubnVtUGFnZXM9MTsgLy9FUlMyMTAxMTIKICAgICB0cmFjayhkb2MsICJTSUdOLkFMTCIsICJTaWduZWQgYnkgIitlbWFpbHMsIGRvYy5udW1QYWdlcy8xKTsgLy9FUlMyMDExMTYgLzEgdG8gbWFrZSBuYXNob3JuIGhhcHB5Cn0gZWxzZSB7CiAgIG1zZz0iU3RpbGwgd2FpdGluZyBvbiAiK21pc3Npbmc7CiAgIGFsZXJ0KCJFUlMyMDExMTMgIittc2cpOwogICAvL0VSUzIwMTExMyBUT0RPPyAKICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJhbGVydCgiK2RxK21zZytkcSsiKTtkb2N1bWVudC53cml0ZSgiK2RxKyI8aDQ+Iittc2crIjwvaDQ+IitkcSsiKTsiKTsgLy9FUlMyMDExMTQgVE9ETyBDU1MgcGxhbgp9CmFsZXJ0KCJTaWduIE1TRz0iK21zZyk7IC8vRVJTMjAxMTE0IHdyaXRlIHRvIFNS"},"ordinal":25}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("calling the Sign action");
var n=1;
var action=doc.X("X_buttonAction");
if (action.indexOf("2")>-1) n=2;
if (action.indexOf("3")>-1) n=3;
var missing="";
//<X_markup_0>'PAGE1IMG1605381082507',240,70,141,642</X_markup_0>  //CRN201114 TODO X_markup1 not X_markup_0
if (doc.X("X_inviteEmail1") != "" && doc.X("X_markup1") == "" && doc.X("X_markup_0") == "") missing+=doc.X("X_inviteEmail1")+","; //ERS201114 _0
if (doc.X("X_inviteEmail2") != "" && doc.X("X_markup2") == "" && doc.X("X_markup_1") == "") missing+=doc.X("X_inviteEmail2")+",";
if (doc.X("X_inviteEmail3") != "" && doc.X("X_markup3") == "" && doc.X("X_markup_2") == "") missing+=doc.X("X_inviteEmail3")+",";
var msg="Thanks for signing "+doc.label;
var dq=String.fromCharCode(34);
if (missing=="" && 1===1) { //ERS201113 turn off to test 1===0 //ERS201211 whitespacing
     var sfId=zData.getStackId(doc); //ERS201110 TODO may want the last attached to instead
     if (!sfId) { var at=X(doc,"X_attachedTo"); sfId=at.substring(1+at.lastIndexOf("/")); }
     var pairs = new Array();
     pairs.push("docTitle", "zSigned " +doc.label); //ERS201129 #77302 may need to isolate in DELIVERY_COMPLETE
     pairs.push("coverID",doc.dbID);
     var emails=doc.X("X_inviteEmail1")+","+doc.X("X_inviteEmail2")+","+doc.X("X_inviteEmail3").replace(",,",","); //ERS201114
     pairs.push("ContactFax",emails); //ERS201114 was "filePDF"
     pairs.push("SFids",sfId); //was doc.X("sfID") //ERS201114 TODO use X_inviteId1,2,3
     /*pairs.push("SFserver",doc.sfServer);
     pairs.push("SFsession",doc.sfSession);
    */
     pairs.push("SForg",doc.X("sfOrg"));
     pairs.push("SFsession",doc.kbData.sfSessionID); //ERS201116 need for zPaper user testing
     //ERS201117 #77302 add some custom settting for the default communication template for signatures
     pairs.push("sendWith","0034T00000HUeYzQAL"+"-"+"00X4T0000017j2m"+"-"+"0D24T00000005Zr"); //ERS201114 TODO configure with a channel and the user 0054T000000QEkjQAG
     alert("doc.sfUserId="+doc.kbData.sfUserID);
     var args="";
     args="SFtype=IGNORE&";
    /* "SFids=IGNORE&SForg=IGNORE&";
    */
     for (p=0;p<pairs.length;p++) {args+=pairs[p]+"="+pairs[p+1]+"&";p++}
     
     alert("ERS201114.28 kb/jsp/SF_sendFax.jsp with "+args);
     var results=wget(doc, "http://localhost:8080/kb/jsp/SF_sendFax.jsp?"+args);
     alert("ERS201114.29 results="+results);
     
     var i=results.indexOf("<iframe");
     i=results.indexOf("src=",i);
     var newDocViewer="";
     if (i>-1 && 1==0) { //ERS201114 just use the email template and deliver from SF_sendFax
           var userEmail=doc.XOrg("X_crmUser");
           var newDoc=results.substring(i+5,results.indexOf(">",i+1)-1);
           msg+=" into "+ newDoc;
           newDocViewer=newDoc; //ERS201114 TODO view or downloadable version or just get them email when all are done
           var body="This document has been signed by all parties.  You will need the PIN that was sent to your phone to access it online.  Please download your own copy.  View the <a href="+dq+newDoc+dq+">signed document</a>.";
           body="This document has been signed by all parties.  You will need the PIN that was sent to your phone to access it online.  Please download your own copy.  View it at "+newDoc+" now.";
           sendEmail(doc,userEmail,emails.replace(/ /g,"+"),"zPaper signed "+doc.label,body);
           //ERS201110 TODO sendEmail(doc,userEmail,emails.replace(/ /g,"+"),"zPaper signed "+doc.label,body,sfId,communicationTemplateId);
     }
     addPostExecutionScript(doc, "alert("+dq+msg+dq+");document.write("+dq+"<h4>"+msg+"</h4>"+newDocViewer+dq+");"); //ERS201114 try to view it
     if (!doc.numPages) doc.numPages=1; //ERS210112
     track(doc, "SIGN.ALL", "Signed by "+emails, doc.numPages/1); //ERS201116 /1 to make nashorn happy
} else {
   msg="Still waiting on "+missing;
   alert("ERS201113 "+msg);
   //ERS201113 TODO? 
   addPostExecutionScript(doc, "alert("+dq+msg+dq+");document.write("+dq+"<h4>"+msg+"</h4>"+dq+");"); //ERS201114 TODO CSS plan
}
alert("Sign MSG="+msg); //ERS201114 write to SR
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
