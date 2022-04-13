<!--
// Name: Invite to sign document
// Committer: eric.stephens@zpaper.com
// Update: ERS210731 #83767 stamp the invite
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-08-01 00:59:25","active":true,"button":"Invite","name":"Invite to sign document","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"invite","operation":"starts-with"}]},"consequence":{"doit":"YWxlcnQoImNhbGxpbmcgdGhlIGludml0ZSBtZXRob2QiKTsKdmFyIG49MTsKdmFyIGFjdGlvbj1kb2MuWCgiWF9idXR0b25BY3Rpb24iKTsKaWYgKGFjdGlvbi5pbmRleE9mKCIyIik+LTEpIG49MjsKaWYgKGFjdGlvbi5pbmRleE9mKCIzIik+LTEpIG49MzsKIHZhciB1c2VyRW1haWw9ZG9jLlhPcmcoIlhfY3JtVXNlciIpOwppZiAodXNlckVtYWlsLmluZGV4T2YoIkAiKT09LTEpIHVzZXJFbWFpbD0ic3VwcG9ydCtzaWduQHpwYXBlci5jb20iOwovL3RyYWNrKGRvYywiaW52aXRlIHNlbnQiLCJpbnZpdGluZyAiK1goZG9jLCJYX2ludml0ZUVtYWlsIituKS5yZXBsYWNlKC8gL2csIisiKSwgMCk7CmFsZXJ0KCJFUlMyMDEyMDcuMDkgenBTZXJ2ZXI9Iitkb2Mua2JEYXRhLkhPU1QpOwp6RGF0YS56cFNlcnZlcj0oIiIrZG9jLmtiRGF0YS5IT1NUKS5yZXBsYWNlKCJodHRwOi8vIiwiIikucmVwbGFjZSgiOjgwODAiLCIiKS5yZXBsYWNlKCJodHRwczovLyIsIiIpOyAvL0VSUzIwMTIwNCAjNzczMDIgLy9FUlMyMDEyMDYgbW9yZSBlbmdpbmUgcmVwbGFjZXMKaWYgKCF6RGF0YS56cFNlcnZlcikgekRhdGEuenBTZXJ2ZXI9ImVkZ2UuenBhcGVyLmNvbSI7IC8vRVJTMTkxMTEwICM2NDE2MCBUT0RPIGdldCBhIHNlcnZlcgphbGVydCgiRVJTMjAxMjA0LjExIHpwU2VydmVyIGlzICIrekRhdGEuenBTZXJ2ZXIpOwoKCnZhciBzZklkPXpEYXRhLmdldFN0YWNrSWQoZG9jKTsgLy9FUlMyMDExMTAgVE9ETyBtYXkgd2FudCB0aGUgbGFzdCBhdHRhY2hlZCB0byBpbnN0ZWFkCmlmICghc2ZJZCkgeyB2YXIgYXQ9WChkb2MsIlhfYXR0YWNoZWRUbyIpOyBzZklkPWF0LnN1YnN0cmluZygxK2F0Lmxhc3RJbmRleE9mKCIvIikpOyB9Cgp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgc2ZVc2VySWQ9ZG9jLnNmVXNlcklEOyAgaWYgKCFzZlVzZXJJZCkgeyBzZlVzZXJJZD1YKGRvYywiWF9zZlVzZXJJRCIpOyB9IC8vRVJTMjEwMTE4ICM3NzMwMiBsb2dGYXguanNwIGNhbGxzCnZhciBzaWduSGludHM9IjxzZk9yZz4iK2RvYy5zZk9yZysiPC9zZk9yZz4iKyI8c2ZJZD4iK3NmSWQrIjwvc2ZJZD4iKyI8c2ZVc2VySUQ+IitzZlVzZXJJZCsiPC9zZlVzZXJJRD4iOyAvL0VSUzIwMTExMCAjNzczMDIgbmVlZGVkIGZvciBndWVzdCBzaWduaW5nCnZhciBQSU49WChkb2MsIlhfaW52aXRlUElOIituKTsgLy9FUlMyMTAxMTggVE9ETyBzdXBwb3J0IGlubGluZSBpbiBJTlZJVEVuOlNNUzplbWFpbDpQSU4gdmFsdWVzCmlmICghUElOKSB7IC8vbWFrZSBvbmUgdXAKICAgIFBJTj0iMzAwNzYiOwogICAgUElOPTA7CXdoaWxlIChQSU48MTAwMDApIHsgUElOPU1hdGguZmxvb3IoMTAwMDAwKk1hdGgucmFuZG9tKCkpOyB9CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfaW52aXRlUElOIituLCAoIiIrUElOKSk7CiAgICBzaWduSGludHMrPSI8WF9pbnZpdGVQSU4iK24rIj4iK1BJTisiPC9YX2ludml0ZVBJTiIrbisiPiI7Cn0KYXJyT2ZQYWlycy5wdXNoKCJYX3NpZ25JdCIsIHNpZ25IaW50cyk7Cgp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CmFsZXJ0KCJFUlMyMDExMTAuMjMgc2lnbkl0PSIrc2lnbkhpbnRzICsgIiBQSU4iK24rIj0iK1BJTik7Cgp2YXIgbGluaz0iaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIva2IvanNwL2RvY0NoYXQuanNwP2ludml0ZT0iK24rIiZkYklEPSIrZG9jLmRiSUQ7IC8vRVJTMjAxMDE0CmlmICgxPT09MCAmJiBzZklkLmluZGV4T2YoIjUwMCIpPT09MCkgeyAvL0VSUzIwMTAxMyBtb2JpbGUgZm9ybXMgYW5kIHNlY3VyZSBsaW5rcwogIGxpbms9Imh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiL2tiL3B1bGwvIitzZklkKyJAenBhcGVyLmNvbS8iK3NmSWQrIi9jYXJiYXRyb2xQb3J0YWxfRGF0YTJfV2ViX0Zvcm0uaHRtIjsKfQovKiBUT0RPIGNhbGwgelJlZGlyZWN0LmpzcCB0byBnZXQgc2hvcnQgVVJMICovCnZhciByZXN1bHRzPXdnZXQoZG9jLCAiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2tiL2pzcC96UmVkaXJlY3QuanNwP1hfaW52aXRlUElOMT0iK1BJTisiJnNhdmU9IitsaW5rLnJlcGxhY2UoIiYiLCIlMjYiKSk7IC8vRVJTMjAxMDEzIFRPRE8gb3RoZXIgelJlZGlyZWN0IGNvbnRyb2xzIG1vcmUgdGhhbiBqdXN0IHRoZSBQSU4KdmFyIGk9cmVzdWx0cy5pbmRleE9mKCJVUkwiKTsKYWxlcnQoIkVSUzIwMTAxNCBpPSIraSsiIHJlc3VsdHM9IityZXN1bHRzKTsgLy9FUlMyMTAyMTEgIzc3MDMyIGFkZGVkIFhfaW52aXRlUElOMSB0byByZWRpcmVjdAoKaWYgKGk+LTEgJiYgcmVzdWx0cy5pbmRleE9mKCJFUlJPUiIpPT0tMSkgewogICBsaW5rPXJlc3VsdHMuc3Vic3RyaW5nKGkrNixyZXN1bHRzLmxlbmd0aCgpLTMpOwogICBsaW5rPWxpbmsucmVwbGFjZSgiaHR0cDovL2xvY2FsaG9zdDo4MDgwOjgwODAvIiwiaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIvIik7IC8vRVJTMjAxMDE0IEhBQ0sgSk9LSU5HISEhIQogICAKICAgaWYgKHpEYXRhLnN0YW1wTWFya3VwKSB7IC8vRVJTMjEwNzMxICM4Mzc2NyBzdGFtcCB0aGUgaW52aXRlCiAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIHZhciBtYXJrdXBYTUw9IiIrWChkb2MsIlhfbWFya3VwIik7IC8vRVJTMjEwNjExIGFkZGVkICIiIGZvciBOUEUKICAgICAgICBpZiAobWFya3VwWE1MLmluZGV4T2YoIlpTVEFNUCIpPT0tMSkgewogICAgICAgICAgICB2YXIgcXI9bGluazsgLy8iaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIva2Ivenp6LyIrc2hvcnRJRCsiJnc9MTYiOwogICAgICAgICAgICB2YXIgbklkPWRvYy5kYklEOwogICAgICAgICAgICB2YXIgc3RhbXBYTUw9ekRhdGEuc3RhbXBNYXJrdXAucmVwbGFjZSgieyFxcn0iLHFyKTsKICAgICAgICAgICAgLy9UT0RPID8/PyBpZiAoKCIiK2RvYy5CQVRFUykuaW5kZXhPZigiX0Zvcm0iKT09LTEpIGFyck9mUGFpcnMucHVzaCgiWF9tYXJrdXAiLG1hcmt1cFhNTCtzdGFtcFhNTCk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9tYXJrdXAiLG1hcmt1cFhNTCtzdGFtcFhNTCk7CiAgICAgICAgICAgIHZhciBsaW5rQT0iaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIva2IvcGRmLyIrbklkKyIveml0ZW0ucGRmIjsgLy9FUlMyMDEwMTQKICAgICAgICAgICAgdmFyIGxpbmtCPSJodHRwczovLyIrekRhdGEuenBTZXJ2ZXIrIi9rYi9qc3AvZG9jQ2hhdC5qc3A/aW52aXRlPSIrbisiJmRiSUQ9IituSWQ7IC8vRVJTMjAxMDE0CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9kZWxpdmVyU3RhbXAiLGxpbmtBKTsgLy9FUlMyMTA2MDkgIzgzNzY3CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXRyaWV2ZVN0YW1wIixsaW5rQik7CiAgICAgICAgICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICB9CiAgICB9CgogICAKICAgLy9UT0RPIHNhdmUgdGhlIGxpbmsgaW50byBTRiBmaWVsZCBzbyB0aGF0IGNvbW11bmljYXRpb24gdGVtcGxhdGUgY2FuIGFjY2VzcyBpdCA1MC04MCBjaGFycyB1c2UgWlBBUEVSX19vdXRib3VuZEZheFRlbXBsYXRlX19jCiAgIC8vVE9ETyBtaWdodCBuZWVkIHRvIGJlIHRoZSBpbnZpdGVkIHBlcnNvbidzIElkIHN0b3JlZCBpbiArWChkb2MsIlhfaW52aXRlSWQiK24pCiAgIHZhciBhcnJPZlBhaXJzMiA9IFtdOwogICBhcnJPZlBhaXJzMi5wdXNoKCJaUEFQRVJfX291dGJvdW5kRmF4VGVtcGxhdGVfX2MiLCBsaW5rKTsKICAgdmFyIHRvSWQ9WChkb2MsIlhfaW52aXRlSWQiK24pOwogICB2YXIgc2ZUPWdldFNGVHlwZShkb2MsIHRvSWQpOwogICB1cGRhdGVTRlJlY29yZChkb2MsIHNmVCwgdG9JZCwgYXJyT2ZQYWlyczIpOyAvL0VSUzIwMTIxMiAjNzczMDIgaW52aXRlIHdpdGggZW1haWwgdGVtcGxhdGUKCiAgICB2YXIgYm9keT0iQ2hlY2sgeW91ciBwaG9uZSBmb3IgdGhlIFBJTiBuZWVkZWQgdG8gc2lnbiB0aGlzIGRvY3VtZW50LiAgT25jZSB5b3UgcmVjZWl2ZSBpdCB0aGVuIGNsaWNrICIrbGluawogICAgICArIiBmcm9tIGFueSB3ZWIgYnJvd3NlciBvciBtb2JpbGUgZGV2aWNlIHRvIHNpZ24gdGhlIGRvY3VtZW50LiI7CiAgICBzZW5kRW1haWwoZG9jLHVzZXJFbWFpbCxYKGRvYywiWF9pbnZpdGVFbWFpbCIrbikucmVwbGFjZSgvIC9nLCIrIiksInpQYXBlciBTaWduaW5nIixib2R5KTsKICAgICAvKmJvZHkgbWlnaHQgYmUgYSBzZklEOmNvbW11bmljYXRpb25UZW1wbGF0ZUlkIHNvbWVkYXkqLwogICAgdmFyIHRvPVgoZG9jLCJYX2ludml0ZVBob25lIituKTsKICAgIHZhciBmcm9tPSIrMTU3MTI5NzI3MzciOwogICAgYm9keT0iVXNlIFBJTiBvZiAiK1BJTisgIiB0byBzaWduIGFuZCBodHRwczovL3FhMDEuenBhcGVyLmNvbS9rYi9qc3AvbW9iaWxlU2lnbi5qc3A/aW52aXRlPVBJTiIrbisiOiIrZG9jLmRiSUQrIiB0byBsb2FkIHlvdXIgc2lnbmF0dXJlLiI7CiAgICBib2R5PSJVc2UgUElOIG9mICIrUElOKyAiIHRvIHNpZ24gIiArIGRvYy5sYWJlbDsKICAgIGJvZHkrPSIgdXNpbmcgeW91ciBlbWFpbCBvciAiK2xpbms7CiAgICBpZiAoMT09MSkgc2VuZFNNUyhkb2MsIGZyb20sIHRvLCBib2R5KTsKICAgIHRyYWNrKGRvYywgIlNJR04uSU5WSVRFIiwgdG8gKyI6IisgWChkb2MsIlhfaW52aXRlRW1haWwiK24pLnJlcGxhY2UoLyAvZywiKyIpLCAwKTsgLy9FUlMyMTAxMTIgaW52aXRlcyB0b28KfSBlbHNlIHsKICAgIGFsZXJ0KCJTb21ldGhpbmcgd2VudCB3cm9uZyBjcmVhdGluZyB0aGUgc2VjdXJlIGxpbmsuIik7Cn0KIA=="},"ordinal":31}

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
   
   if (zData.stampMarkup) { //ERS210731 #83767 stamp the invite
        arrOfPairs = [];
        var markupXML=""+X(doc,"X_markup"); //ERS210611 added "" for NPE
        if (markupXML.indexOf("ZSTAMP")==-1) {
            var qr=link; //"https://"+zData.zpServer+"/kb/zzz/"+shortID+"&w=16";
            var nId=doc.dbID;
            var stampXML=zData.stampMarkup.replace("{!qr}",qr);
            //TODO ??? if ((""+doc.BATES).indexOf("_Form")==-1) arrOfPairs.push("X_markup",markupXML+stampXML);
            arrOfPairs.push("X_markup",markupXML+stampXML);
            var linkA="https://"+zData.zpServer+"/kb/pdf/"+nId+"/zitem.pdf"; //ERS201014
            var linkB="https://"+zData.zpServer+"/kb/jsp/docChat.jsp?invite="+n+"&dbID="+nId; //ERS201014
            arrOfPairs.push("X_deliverStamp",linkA); //ERS210609 #83767
            arrOfPairs.push("X_retrieveStamp",linkB);
            updateDB(doc,arrOfPairs);
        }
    }

   
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
