<!--
// Name: Invite to sign document
// Committer: eric.stephens@zpaper.com
// Update: ERS210211 #77032 added X_invitePIN1 to redirect
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-02-11 13:31:59","active":true,"button":"Invite","name":"Invite to sign document","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"invite","operation":"starts-with"}]},"consequence":{"doit":"YWxlcnQoImNhbGxpbmcgdGhlIGludml0ZSBtZXRob2QiKTsKdmFyIG49MTsKdmFyIGFjdGlvbj1kb2MuWCgiWF9idXR0b25BY3Rpb24iKTsKaWYgKGFjdGlvbi5pbmRleE9mKCIyIik+LTEpIG49MjsKaWYgKGFjdGlvbi5pbmRleE9mKCIzIik+LTEpIG49MzsKIHZhciB1c2VyRW1haWw9ZG9jLlhPcmcoIlhfY3JtVXNlciIpOwppZiAodXNlckVtYWlsLmluZGV4T2YoIkAiKT09LTEpIHVzZXJFbWFpbD0ic3VwcG9ydCtzaWduQHpwYXBlci5jb20iOwovL3RyYWNrKGRvYywiaW52aXRlIHNlbnQiLCJpbnZpdGluZyAiK1goZG9jLCJYX2ludml0ZUVtYWlsIituKS5yZXBsYWNlKC8gL2csIisiKSwgMCk7CmFsZXJ0KCJFUlMyMDEyMDcuMDkgenBTZXJ2ZXI9Iitkb2Mua2JEYXRhLkhPU1QpOwp6RGF0YS56cFNlcnZlcj0oIiIrZG9jLmtiRGF0YS5IT1NUKS5yZXBsYWNlKCJodHRwOi8vIiwiIikucmVwbGFjZSgiOjgwODAiLCIiKS5yZXBsYWNlKCJodHRwczovLyIsIiIpOyAvL0VSUzIwMTIwNCAjNzczMDIgLy9FUlMyMDEyMDYgbW9yZSBlbmdpbmUgcmVwbGFjZXMKaWYgKCF6RGF0YS56cFNlcnZlcikgekRhdGEuenBTZXJ2ZXI9ImVkZ2UuenBhcGVyLmNvbSI7IC8vRVJTMTkxMTEwICM2NDE2MCBUT0RPIGdldCBhIHNlcnZlcgphbGVydCgiRVJTMjAxMjA0LjExIHpwU2VydmVyIGlzICIrekRhdGEuenBTZXJ2ZXIpOwoKCnZhciBzZklkPXpEYXRhLmdldFN0YWNrSWQoZG9jKTsgLy9FUlMyMDExMTAgVE9ETyBtYXkgd2FudCB0aGUgbGFzdCBhdHRhY2hlZCB0byBpbnN0ZWFkCmlmICghc2ZJZCkgeyB2YXIgYXQ9WChkb2MsIlhfYXR0YWNoZWRUbyIpOyBzZklkPWF0LnN1YnN0cmluZygxK2F0Lmxhc3RJbmRleE9mKCIvIikpOyB9Cgp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgc2ZVc2VySWQ9ZG9jLnNmVXNlcklEOyAgaWYgKCFzZlVzZXJJZCkgeyBzZlVzZXJJZD1YKGRvYywiWF9zZlVzZXJJRCIpOyB9IC8vRVJTMjEwMTE4ICM3NzMwMiBsb2dGYXguanNwIGNhbGxzCnZhciBzaWduSGludHM9IjxzZk9yZz4iK2RvYy5zZk9yZysiPC9zZk9yZz4iKyI8c2ZJZD4iK3NmSWQrIjwvc2ZJZD4iKyI8c2ZVc2VySUQ+IitzZlVzZXJJZCsiPC9zZlVzZXJJRD4iOyAvL0VSUzIwMTExMCAjNzczMDIgbmVlZGVkIGZvciBndWVzdCBzaWduaW5nCnZhciBQSU49WChkb2MsIlhfaW52aXRlUElOIituKTsgLy9FUlMyMTAxMTggVE9ETyBzdXBwb3J0IGlubGluZSBpbiBJTlZJVEVuOlNNUzplbWFpbDpQSU4gdmFsdWVzCmlmICghUElOKSB7IC8vbWFrZSBvbmUgdXAKICAgIFBJTj0iMzAwNzYiOwogICAgUElOPTA7CXdoaWxlIChQSU48MTAwMDApIHsgUElOPU1hdGguZmxvb3IoMTAwMDAwKk1hdGgucmFuZG9tKCkpOyB9CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfaW52aXRlUElOIituLCAoIiIrUElOKSk7CiAgICBzaWduSGludHMrPSI8WF9pbnZpdGVQSU4iK24rIj4iK1BJTisiPC9YX2ludml0ZVBJTiIrbisiPiI7Cn0KYXJyT2ZQYWlycy5wdXNoKCJYX3NpZ25JdCIsIHNpZ25IaW50cyk7CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKYWxlcnQoIkVSUzIwMTExMC4yMyBzaWduSXQ9IitzaWduSGludHMgKyAiIFBJTiIrbisiPSIrUElOKTsKCnZhciBsaW5rPSJodHRwczovLyIrekRhdGEuenBTZXJ2ZXIrIi9rYi9qc3AvZG9jQ2hhdC5qc3A/aW52aXRlPSIrbisiJmRiSUQ9Iitkb2MuZGJJRDsgLy9FUlMyMDEwMTQKaWYgKDE9PT0wICYmIHNmSWQuaW5kZXhPZigiNTAwIik9PT0wKSB7IC8vRVJTMjAxMDEzIG1vYmlsZSBmb3JtcyBhbmQgc2VjdXJlIGxpbmtzCiAgbGluaz0iaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIva2IvcHVsbC8iK3NmSWQrIkB6cGFwZXIuY29tLyIrc2ZJZCsiL2NhcmJhdHJvbFBvcnRhbF9EYXRhMl9XZWJfRm9ybS5odG0iOwp9Ci8qIFRPRE8gY2FsbCB6UmVkaXJlY3QuanNwIHRvIGdldCBzaG9ydCBVUkwgKi8KdmFyIHJlc3VsdHM9d2dldChkb2MsICJodHRwOi8vbG9jYWxob3N0OjgwODAva2IvanNwL3pSZWRpcmVjdC5qc3A/WF9pbnZpdGVQSU4xPSIrUElOKyImc2F2ZT0iK2xpbmsucmVwbGFjZSgiJiIsIiUyNiIpKTsgLy9FUlMyMDEwMTMgVE9ETyBvdGhlciB6UmVkaXJlY3QgY29udHJvbHMgbW9yZSB0aGFuIGp1c3QgdGhlIFBJTgp2YXIgaT1yZXN1bHRzLmluZGV4T2YoIlVSTCIpOwphbGVydCgiRVJTMjAxMDE0IGk9IitpKyIgcmVzdWx0cz0iK3Jlc3VsdHMpOyAvL0VSUzIxMDIxMSAjNzcwMzIgYWRkZWQgWF9pbnZpdGVQSU4xIHRvIHJlZGlyZWN0CgppZiAoaT4tMSAmJiByZXN1bHRzLmluZGV4T2YoIkVSUk9SIik9PS0xKSB7CiAgIGxpbms9cmVzdWx0cy5zdWJzdHJpbmcoaSs2LHJlc3VsdHMubGVuZ3RoKCktMyk7CiAgIGxpbms9bGluay5yZXBsYWNlKCJodHRwOi8vbG9jYWxob3N0OjgwODA6ODA4MC8iLCJodHRwczovLyIrekRhdGEuenBTZXJ2ZXIrIi8iKTsgLy9FUlMyMDEwMTQgSEFDSyBKT0tJTkchISEhCiAgIC8vVE9ETyBzYXZlIHRoZSBsaW5rIGludG8gU0YgZmllbGQgc28gdGhhdCBjb21tdW5pY2F0aW9uIHRlbXBsYXRlIGNhbiBhY2Nlc3MgaXQgNTAtODAgY2hhcnMgdXNlIFpQQVBFUl9fb3V0Ym91bmRGYXhUZW1wbGF0ZV9fYwogICAvL1RPRE8gbWlnaHQgbmVlZCB0byBiZSB0aGUgaW52aXRlZCBwZXJzb24ncyBJZCBzdG9yZWQgaW4gK1goZG9jLCJYX2ludml0ZUlkIituKQogICB2YXIgYXJyT2ZQYWlyczIgPSBbXTsKICAgYXJyT2ZQYWlyczIucHVzaCgiWlBBUEVSX19vdXRib3VuZEZheFRlbXBsYXRlX19jIiwgbGluayk7CiAgIHZhciB0b0lkPVgoZG9jLCJYX2ludml0ZUlkIituKTsKICAgdmFyIHNmVD1nZXRTRlR5cGUoZG9jLCB0b0lkKTsKICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCBzZlQsIHRvSWQsIGFyck9mUGFpcnMyKTsgLy9FUlMyMDEyMTIgIzc3MzAyIGludml0ZSB3aXRoIGVtYWlsIHRlbXBsYXRlCgogICAgdmFyIGJvZHk9IkNoZWNrIHlvdXIgcGhvbmUgZm9yIHRoZSBQSU4gbmVlZGVkIHRvIHNpZ24gdGhpcyBkb2N1bWVudC4gIE9uY2UgeW91IHJlY2VpdmUgaXQgdGhlbiBjbGljayAiK2xpbmsKICAgICAgKyIgZnJvbSBhbnkgd2ViIGJyb3dzZXIgb3IgbW9iaWxlIGRldmljZSB0byBzaWduIHRoZSBkb2N1bWVudC4iOwogICAgc2VuZEVtYWlsKGRvYyx1c2VyRW1haWwsWChkb2MsIlhfaW52aXRlRW1haWwiK24pLnJlcGxhY2UoLyAvZywiKyIpLCJ6UGFwZXIgU2lnbmluZyIsYm9keSk7CiAgICAgLypib2R5IG1pZ2h0IGJlIGEgc2ZJRDpjb21tdW5pY2F0aW9uVGVtcGxhdGVJZCBzb21lZGF5Ki8KICAgIHZhciB0bz1YKGRvYywiWF9pbnZpdGVQaG9uZSIrbik7CiAgICB2YXIgZnJvbT0iKzE1NzEyOTcyNzM3IjsKICAgIGJvZHk9IlVzZSBQSU4gb2YgIitQSU4rICIgdG8gc2lnbiBhbmQgaHR0cHM6Ly9xYTAxLnpwYXBlci5jb20va2IvanNwL21vYmlsZVNpZ24uanNwP2ludml0ZT1QSU4iK24rIjoiK2RvYy5kYklEKyIgdG8gbG9hZCB5b3VyIHNpZ25hdHVyZS4iOwogICAgYm9keT0iVXNlIFBJTiBvZiAiK1BJTisgIiB0byBzaWduICIgKyBkb2MubGFiZWw7CiAgICBib2R5Kz0iIHVzaW5nIHlvdXIgZW1haWwgb3IgIitsaW5rOwogICAgaWYgKDE9PTEpIHNlbmRTTVMoZG9jLCBmcm9tLCB0bywgYm9keSk7CiAgICB0cmFjayhkb2MsICJTSUdOLklOVklURSIsIHRvICsiOiIrIFgoZG9jLCJYX2ludml0ZUVtYWlsIituKS5yZXBsYWNlKC8gL2csIisiKSwgMCk7IC8vRVJTMjEwMTEyIGludml0ZXMgdG9vCn0gZWxzZSB7CiAgICBhbGVydCgiU29tZXRoaW5nIHdlbnQgd3JvbmcgY3JlYXRpbmcgdGhlIHNlY3VyZSBsaW5rLiIpOwp9CiA="},"ordinal":24}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("calling the invite method");
var n=1;
var action=doc.X("X_buttonAction");
if (action.indexOf("2")>-1) n=2;
if (action.indexOf("3")>-1) n=3;
 var userEmail=doc.XOrg("X_crmUser");
if (userEmail.indexOf("@")==-1) userEmail="support+sign@zpaper.com";
//track(doc,"invite sent","inviting "+X(doc,"X_inviteEmail"+n).replace(/ /g,"+"), 0);
alert("ERS201207.09 zpServer="+doc.kbData.HOST);
zData.zpServer=(""+doc.kbData.HOST).replace("http://","").replace(":8080","").replace("https://",""); //ERS201204 #77302 //ERS201206 more engine replaces
if (!zData.zpServer) zData.zpServer="edge.zpaper.com"; //ERS191110 #64160 TODO get a server
alert("ERS201204.11 zpServer is "+zData.zpServer);


var sfId=zData.getStackId(doc); //ERS201110 TODO may want the last attached to instead
if (!sfId) { var at=X(doc,"X_attachedTo"); sfId=at.substring(1+at.lastIndexOf("/")); }

var arrOfPairs = [];
var sfUserId=doc.sfUserID;  if (!sfUserId) { sfUserId=X(doc,"X_sfUserID"); } //ERS210118 #77302 logFax.jsp calls
var signHints="<sfOrg>"+doc.sfOrg+"</sfOrg>"+"<sfId>"+sfId+"</sfId>"+"<sfUserID>"+sfUserId+"</sfUserID>"; //ERS201110 #77302 needed for guest signing
var PIN=X(doc,"X_invitePIN"+n); //ERS210118 TODO support inline in INVITEn:SMS:email:PIN values
if (!PIN) { //make one up
    PIN="30076";
    PIN=0;	while (PIN<10000) { PIN=Math.floor(100000*Math.random()); }
    arrOfPairs.push("X_invitePIN"+n, (""+PIN));
    signHints+="<X_invitePIN"+n+">"+PIN+"</X_invitePIN"+n+">";
}
arrOfPairs.push("X_signIt", signHints);
updateDB(doc,arrOfPairs);
alert("ERS201110.23 signIt="+signHints + " PIN"+n+"="+PIN);

var link="https://"+zData.zpServer+"/kb/jsp/docChat.jsp?invite="+n+"&dbID="+doc.dbID; //ERS201014
if (1===0 && sfId.indexOf("500")===0) { //ERS201013 mobile forms and secure links
  link="https://"+zData.zpServer+"/kb/pull/"+sfId+"@zpaper.com/"+sfId+"/carbatrolPortal_Data2_Web_Form.htm";
}
/* TODO call zRedirect.jsp to get short URL */
var results=wget(doc, "http://localhost:8080/kb/jsp/zRedirect.jsp?X_invitePIN1="+PIN+"&save="+link.replace("&","%26")); //ERS201013 TODO other zRedirect controls more than just the PIN
var i=results.indexOf("URL");
alert("ERS201014 i="+i+" results="+results); //ERS210211 #77032 added X_invitePIN1 to redirect

if (i>-1 && results.indexOf("ERROR")==-1) {
   link=results.substring(i+6,results.length()-3);
   link=link.replace("http://localhost:8080:8080/","https://"+zData.zpServer+"/"); //ERS201014 HACK JOKING!!!!
   //TODO save the link into SF field so that communication template can access it 50-80 chars use ZPAPER__outboundFaxTemplate__c
   //TODO might need to be the invited person's Id stored in +X(doc,"X_inviteId"+n)
   var arrOfPairs2 = [];
   arrOfPairs2.push("ZPAPER__outboundFaxTemplate__c", link);
   var toId=X(doc,"X_inviteId"+n);
   var sfT=getSFType(doc, toId);
   updateSFRecord(doc, sfT, toId, arrOfPairs2); //ERS201212 #77302 invite with email template

    var body="Check your phone for the PIN needed to sign this document.  Once you receive it then click "+link
      +" from any web browser or mobile device to sign the document.";
    sendEmail(doc,userEmail,X(doc,"X_inviteEmail"+n).replace(/ /g,"+"),"zPaper Signing",body);
     /*body might be a sfID:communicationTemplateId someday*/
    var to=X(doc,"X_invitePhone"+n);
    var from="+15712972737";
    body="Use PIN of "+PIN+ " to sign and https://qa01.zpaper.com/kb/jsp/mobileSign.jsp?invite=PIN"+n+":"+doc.dbID+" to load your signature.";
    body="Use PIN of "+PIN+ " to sign " + doc.label;
    body+=" using your email or "+link;
    if (1==1) sendSMS(doc, from, to, body);
    track(doc, "SIGN.INVITE", to +":"+ X(doc,"X_inviteEmail"+n).replace(/ /g,"+"), 0); //ERS210112 invites too
} else {
    alert("Something went wrong creating the secure link.");
}
 
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
