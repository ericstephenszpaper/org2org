<!--
// Name: SSLFax Library
// Committer: eric.stephens@zpaper.com
// Update: ERS211120 cleaning up; ERS211120 faxmd to faxMD and looking for place for ZQR url to keep forever; ERS211120 PDF; ERS211120 added link to track
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-11-20 21:38:08","evalContinue":"true","active":true,"button":"Stamp","name":"SSLFax Library","conditions":{"logic":"or","arguments":[{"name":"doc.status","value":"NoSSLFax","operation":"not-contains"},{"name":"doc.X(\"X_buttonAction\")","value":"ADD_STAMP","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMyMTA2MDUgY3JlYXRlIFFSIGNvZGUgYW5kIEJsb2NrY2hhaW4gY29udHJhY3QgdG8gZW5hYmxlIGZhc3RlciwgZGlnaXRhbCBhY2Nlc3MKaWYgKGRvYy5YKCJYX2J1dHRvbkFjdGlvbiIpID09ICJBRERfU1RBTVAiKSB7CiAgICByb29sLmV2YWxDb250aW51ZT1mYWxzZTsgLy9zdG9wcyB0aGUgYnVzIQp9CgovL21ha2UgYSBSRURJUkVDVCBzbmlwcGV0Ci8vY3JlYXRlIHRoZSAgYmxvY2tjaGFpbiBzbWFydCBjb250cmFjdAovLzFzdCBVUkwgaXMgb3BlbiB0aGVuIHJlcXVpcmUgYSBQSU4KLy9yZXR1cm4gYSBVUkwgZm9yIHRoZSBRUiBjb2RlCnpEYXRhLnN0YW1wTWFya3VwPSIiOyAvL0VSUzIxMDczMSAjODM3NjcgbWlnaHQgbmVlZCB0byBiZSBkaWZmZXJlbnQgZm9yIHNpZ25hdHVyZSBpbnZpdGUKekRhdGEuc3RhbXBNYXJrdXArPSJrYm0oJ0lNR1pTVEFNUF9SRUFMUERGQ09PUkRTJywnUEFHRTFJTUdaU1RBTVAnLCcva2IvanNwL3FyLmpzcD9jb2RlPXshcXJ9Jyw1NSw1NSwxMCwxMCwnJywnMTInLDQ1LDQ1LDE3LDc1MCk7IjsKekRhdGEuc3RhbXBNYXJrdXArPSJrYm0oJ0lNRzE2MjcxNDkzMTgwMzhfUkVBTFBERkNPT1JEUycsJ1BBR0UxSU1HMTYyNzE0OTMxODAzOCcsJ2FkZFRleHQnLDkzLDIyLDEwLDgzLCdmYXhNRC5vcmcnLCcxMCcsNzAsMTYsNyw3NTApOyI7Cgp6RGF0YS5hZGRTdGFtcD1mdW5jdGlvbihkb2MscmVxKSB7CiAgICB2YXIgc3RhbXBNYXJrdXA9ImdldCBmcm9tIHpEYXRhIjsgLy9FUlMyMTExMjAgY2xlYW5pbmcgdXAKICAgIC8vRVJTMjExMTIwIGZheG1kIHRvIGZheE1EIGFuZCBsb29raW5nIGZvciBwbGFjZSBmb3IgWlFSIHVybCB0byBrZWVwIGZvcmV2ZXIKICAgIHN0YW1wTWFya3VwPXpEYXRhLnN0YW1wTWFya3VwOyAvL0VSUzIxMDczMQogICAgdmFyIHVzZXJFbWFpbD1kb2MuWE9yZygiWF9jcm1Vc2VyIik7CiAgICBpZiAodXNlckVtYWlsLmluZGV4T2YoIkAiKT09LTEpIHVzZXJFbWFpbD0ic3VwcG9ydCtzaWduQHpwYXBlci5jb20iOwogICAgLy90cmFjayhkb2MsImludml0ZSBzZW50IiwiaW52aXRpbmcgIitYKGRvYywiWF9pbnZpdGVFbWFpbCIrbikucmVwbGFjZSgvIC9nLCIrIiksIDApOwogICAgYWxlcnQoIkVSUzIwMTIwNy4wOSB6cFNlcnZlcj0iK2RvYy5rYkRhdGEuSE9TVCk7CiAgICB6RGF0YS56cFNlcnZlcj0oIiIrZG9jLmtiRGF0YS5IT1NUKS5yZXBsYWNlKCJodHRwOi8vIiwiIikucmVwbGFjZSgiOjgwODAiLCIiKS5yZXBsYWNlKCJodHRwczovLyIsIiIpOyAvL0VSUzIwMTIwNCAjNzczMDIgLy9FUlMyMDEyMDYgbW9yZSBlbmdpbmUgcmVwbGFjZXMKICAgIGlmICghekRhdGEuenBTZXJ2ZXIpIHpEYXRhLnpwU2VydmVyPSJlZGdlLnpwYXBlci5jb20iOyAvL0VSUzE5MTExMCAjNjQxNjAgVE9ETyBnZXQgYSBzZXJ2ZXIKICAgIGlmICgoIiIrekRhdGEuenBTZXJ2ZXIpLmluZGV4T2YoInpwYXBlci5jb20iKT09LTEpIHsgLy9FUlMgVE9ETyBkb2MuenBTZXJ2ZXIgbmVlZGVkIGZvciB6aXBwaQogICAgICAgIHpEYXRhLnpwU2VydmVyPSJlZGdlLnpwYXBlci5jb20iOwogICAgICAgIGFsZXJ0KCJaSVBQSSBCVVNURUQhISEiKTsKICAgIH0KICAgIGFsZXJ0KCJFUlMyMDEyMDQuMTEgenBTZXJ2ZXIgaXMgIit6RGF0YS56cFNlcnZlcik7CiAgICB2YXIgbWFya3VwWE1MPSIiK1goZG9jLCJYX21hcmt1cCIpOyAvL0VSUzIxMDYxMSBhZGRlZCAiIiBmb3IgTlBFCiAgICBhbGVydCgiRVJTMjEwNjEyIG1YTUw9IittYXJrdXBYTUwpOwogICAgaWYgKG1hcmt1cFhNTC5pbmRleE9mKCJaU1RBTVAiKSE9LTEpIHsKICAgICAgICBhbGVydCgiQUxSRUFEWSBaU1RBTVBFRCEiKTsKICAgICAgICB2YXIgenN0YW1wPSIiK1goZG9jLCJYX2RlbGl2ZXJTdGFtcCIpOwogICAgICAgIGlmICh6c3RhbXAuaW5kZXhPZigiLmNvbS8iKSA9PSAtMSkgewogICAgICAgICAgICBhbGVydCgiUkVESVJFQ1QgYnJva2VuPyAiK3pzdGFtcCk7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgcmV0dXJuIHpzdGFtcDsgLy9wcm9iYWJseSBzaG91bGQgYmUgc3RhbXBNYXJrdXAucmVwbGFjZSgieyFxcn0iLHpzdGFtcCk7CiAgICAgICAgfQogICAgfQogICAgCiAgICB2YXIgbj0xOwogICAgdmFyIGFyck9mUGFpcnM9W107CiAgICB2YXIgUElOPVgoZG9jLCJYX2ludml0ZVBJTiIrbik7IC8vRVJTMjEwMTE4IFRPRE8gc3VwcG9ydCBpbmxpbmUgaW4gSU5WSVRFbjpTTVM6ZW1haWw6UElOIHZhbHVlcwogICAgUElOPSIiK1goZG9jLCJDb250YWN0RmF4Iik7IC8vVE9ETyBjbGVhbiB1cCB0byAxMCBkaWdpdHMKICAgIHZhciB0bz1QSU47IC8vZmF4IG9yIFNNUyBudW1iZXIKICAgIGlmICghUElOIHx8IFBJTi5pbmRleE9mKCJQREYiKSAhPSAtMSkgeyAvL21ha2Ugb25lIHVwIC8vRVJTMjExMTIwIFBERgogICAgICAgIFBJTj0iMzAwNzYiOwogICAgICAgIGlmICgxPT09MSkgeyBQSU49MDsJd2hpbGUgKFBJTjwxMDAwMCkgeyBQSU49TWF0aC5mbG9vcigxMDAwMDAqTWF0aC5yYW5kb20oKSk7IH0gfSAvL0VSUzIxMDkxMiBQSU4gYmFjayBvbgogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2ludml0ZVBJTiIrbiwgKCIiK1BJTikpOwogICAgdmFyIHNpZ25IaW50cz0iPFhfaW52aXRlUElOIituKyI+IitQSU4rIjwvWF9pbnZpdGVQSU4iK24rIj4iOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3NpZ25JdCIsIHNpZ25IaW50cyk7CgogICAgLy9jcmVhdGUgYSBvbmUgdGltZSB1c2UgcmVkaXJlY3QgKEEpIHRvIGRvd25sb2FkIG9yIHZpZXcgdGhlIFBERiBvciBlbWJlZGRlZCBkYXRhCiAgICAvL3N0YW1wIGNvbnRhaW5zIHRoZSBBIGxpbmsgYXMgYSBRUiBjb2RlCiAgICAvL2NyZWF0ZSBhIGNvbnRyYWN0IHJlZGlyZWN0IChCKSB3aXRoIGEgUElOIHRvIHZpZXcgLyBzaWduIC8gbWFya3VwIHRoZSBQREYgYWZ0ZXJ3YXJkcwogICAgLy9hZnRlciB0aGUgMXN0IHRpbWUgQSBpcyB1c2VkIGNoYW5nZSB0aGUgZm9yd2FyZCBmcm9tIEEgdG8gZ290byBCCiAgICAvL0VSUzIxMDYxMiBvbmNlIGEgcmVkaXJlY3QgaXMgb3V0IG9mIHZpZXdzIGlmIHRoZXJlIGlzIGEgOyB0aGVuIGZvcndhcmQgdG8gaXQKICAgIAogICAgYWxlcnQoIkVSUzIxMDYxMi41NCBkb2MuQkFURVMgbWF5IGJlIG51bGwiKTsKICAgIHZhciBuSWQ9IiIrWChkb2MsIlhfekl0ZW1JZCIpOyBpZiAoIW5JZCAmJiAoIiIrZG9jLkJBVEVTKS5pbmRleE9mKCJfRm9ybSIpPT0tMSkgbklkPWRvYy5kYklEOyAvL0VSUzIxMDYxMSAyMDQwMDdlNFoxZGtqbmkyaWwKICAgIGlmICghbklkKSB7IHJldHVybiAiRVJST1I6IFRlbXBsYXRlcyBkbyBub3QgbmVlZCBzdGFtcHMiOyB9CiAgICAKICAgIHZhciBsaW5rQT0iaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIva2IvcGRmLyIrbklkKyIveml0ZW0ucGRmIjsgLy9FUlMyMDEwMTQKICAgIHZhciBsaW5rQj0iaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIva2IvanNwL2RvY0NoYXQuanNwP2ludml0ZT0iK24rIiZkYklEPSIrbklkOyAvL0VSUzIwMTAxNAogICAgdmFyIG1vcmVEYXRhPSImcGFnZXM9Iitkb2MubnVtUGFnZXMrIiZzZW5kVG89IitYKGRvYywiQ29udGFjdEZheCIpOyAvL0VSUzIxMDcwMyAjODM3NjcKICAgIGFsZXJ0KCJFUlMyMTA3MDMgbW9yZURhdGE9Iittb3JlRGF0YSk7CgogICAgLyogVE9ETyBjYWxsIHpSZWRpcmVjdC5qc3AgdG8gZ2V0IHNob3J0IFVSTCAqLwogICAgdmFyIHJlc3VsdHNCPXdnZXQoZG9jLCAiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2tiL2pzcC96UmVkaXJlY3QuanNwP3ZpZXdzPS0xJlhfaW52aXRlUElOMT0iK1BJTittb3JlRGF0YSsiJnNhdmU9IitsaW5rQi5yZXBsYWNlKCImIiwiJTI2IikpOyAvL0VSUzIwMTAxMyBUT0RPIG90aGVyIHpSZWRpcmVjdCBjb250cm9scyBtb3JlIHRoYW4ganVzdCB0aGUgUElOCiAgICB2YXIgaT1yZXN1bHRzQi5pbmRleE9mKCJVUkwiKTsKICAgIHZhciBzaG9ydEI9cmVzdWx0c0Iuc3Vic3RyaW5nKGkrNixyZXN1bHRzQi5sZW5ndGgoKS0zKTsKICAgIHNob3J0Qj1zaG9ydEIucmVwbGFjZSgiaHR0cDovL2xvY2FsaG9zdDo4MDgwOjgwODAvIiwiaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIvIik7CiAgICBzaG9ydEI9c2hvcnRCLnJlcGxhY2UoImh0dHBzOi8vbG9jYWxob3N0OjgwODAvIiwiaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIvIik7IAogICAgdmFyIGV4cGlyZT1uZXcgRGF0ZSgpOyBleHBpcmUuc2V0VGltZShleHBpcmUuZ2V0VGltZSgpKzEwMDAqMzYwMCoyNCo3KTsgLy8yMDIxLTA2LTEwCiAgICB2YXIgZXhwaXJlZD1mb3JtYXREYXRlKGV4cGlyZSwgIllZWVktTU0tREQiKTsKICAgIHZhciByZXN1bHRzPXdnZXQoZG9jLCAiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2tiL2pzcC96UmVkaXJlY3QuanNwP3VudGlsPSIrZXhwaXJlZCttb3JlRGF0YSsiJnZpZXdzPTEmc2F2ZT0iKyhsaW5rQSsiOyIrc2hvcnRCKS5yZXBsYWNlKCImIiwiJTI2IikpOwogICAgaT1yZXN1bHRzLmluZGV4T2YoIlVSTCIpOwogICAgYWxlcnQoIkVSUzIwMTAxNCBpPSIraSsiIHJlc3VsdHM9IityZXN1bHRzKTsgLy9FUlMyMTAyMTEgIzc3MDMyIGFkZGVkIFhfaW52aXRlUElOMSB0byByZWRpcmVjdAogICAgYWxlcnQoIkVSUzIxMDYwOSBpPSIraSsiIHJlc3VsdHNCPSIrcmVzdWx0c0IpOyAKICAgIAogICAgdmFyIHN0YW1wWE1MPSIiOwogICAgaWYgKGk+LTEgJiYgcmVzdWx0cy5pbmRleE9mKCJFUlJPUiIpPT0tMSkgewogICAgICAgbGluaz1yZXN1bHRzLnN1YnN0cmluZyhpKzYscmVzdWx0cy5sZW5ndGgoKS0zKTsKICAgICAgIGxpbms9bGluay5yZXBsYWNlKCJodHRwOi8vbG9jYWxob3N0OjgwODA6ODA4MC8iLCJodHRwczovLyIrekRhdGEuenBTZXJ2ZXIrIi8iKTsgLy9FUlMyMDEwMTQgSEFDSyBKT0tJTkchISEhCiAgICAgICBsaW5rPWxpbmsucmVwbGFjZSgiaHR0cHM6Ly9sb2NhbGhvc3Q6ODA4MC8iLCJodHRwczovLyIrekRhdGEuenBTZXJ2ZXIrIi8iKTsgCiAgICAgICAvL1RPRE8gc2F2ZSB0aGUgbGluayBpbnRvIFNGIGZpZWxkIHNvIHRoYXQgY29tbXVuaWNhdGlvbiB0ZW1wbGF0ZSBjYW4gYWNjZXNzIGl0IDUwLTgwIGNoYXJzIHVzZSBaUEFQRVJfX291dGJvdW5kRmF4VGVtcGxhdGVfX2MKICAgICAgIC8vVE9ETyBtaWdodCBuZWVkIHRvIGJlIHRoZSBpbnZpdGVkIHBlcnNvbidzIElkIHN0b3JlZCBpbiArWChkb2MsIlhfaW52aXRlSWQiK24pCiAgICAgICAvL3ZhciBtYXJrdXBYTUw9WChkb2MsIlhfbWFya3VwIik7CiAgICAgICBpZiAobWFya3VwWE1MLmluZGV4T2YoIlpTVEFNUCIpPT0tMSkgeyAvL2NvZGU9aHR0cHM6Ly9lZGdlLnpwYXBlci5jb20va2Ivenp6LzBYMWV1OHNlMXNiJnc9MTYKICAgICAgICAgICAgdmFyIHFyPWxpbms7IC8vImh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiL2tiL3p6ei8iK3Nob3J0SUQrIiZ3PTE2IjsKICAgICAgICAgICAgc3RhbXBYTUw9c3RhbXBNYXJrdXAucmVwbGFjZSgieyFxcn0iLHFyKTsKICAgICAgICAgICAgLy9SRUFMUERGIGluIHBhZ2VfcGRmLmpzcCBidXQgbWFya3VwLmpzcCBwcmVmZXJzIDFzdCBzZXQKICAgICAgICAgICAgaWYgKCgiIitkb2MuQkFURVMpLmluZGV4T2YoIl9Gb3JtIik9PS0xKSB7CiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfbWFya3VwIixtYXJrdXBYTUwrc3RhbXBYTUwpOwogICAgICAgICAgICAgICAgLy9FUlMyMTA5MTEgVE9ETyBzZXQgQkFURVMgb2YgbmV3IGRvY3VtZW50IHRvIGJlIGFuIGludGVyYWN0aXZlIG9uZSB7IXNmSUR9QHshc2ZPcmd9LXtmb3JtSWR9CiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwiTkVFRFMgVE8gQkUgeyFzZklEfUB7IXNmT3JnfS17Zm9ybUlkfSIpOwogICAgICAgICAgICB9CiAgICAgICB9CiAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZGVsaXZlclN0YW1wIixsaW5rQSk7IC8vRVJTMjEwNjA5ICM4Mzc2NwogICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3JldHJpZXZlU3RhbXAiLGxpbmtCKTsKICAgICAgIAogICAgICAgLy9zYXZlIHRoZSBSRURJUkVDVCBJRCBiYWNrIGludG8gdGhlIG9yaWdpbmFsCiAgICAgICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgICAgIGFsZXJ0KCJFUlMyMDExMTAuMjMgc2lnbkl0PSIrc2lnbkhpbnRzICsgIiBQSU4iK24rIj0iK1BJTik7CiAgICAgICAgLy9FUlMyMTExMjAgYWRkZWQgbGluayB0byB0cmFjawogICAgICAgIHRyYWNrKGRvYywgIlNUQU1QLkNSRUFURSIsbGluaysiIHRvICIrIHRvICsiOiIrIFgoZG9jLCJYX2ludml0ZUVtYWlsIituKS5yZXBsYWNlKC8gL2csIisiKSwgMCk7IC8vRVJTMjEwMTEyIGludml0ZXMgdG9vCiAgICAgICAgLy9FUlMyMTA2MDUgcmV0dXJuIGxpbmsKICAgICAgICByZXR1cm4gc3RhbXBYTUw7IC8vRVJTMjEwNjExIFNGX3NlbmRGYXguanNwZiBjYWxscyB0aGlzIGFjdGlvbiBhbmQgbmVlZHMgdGhlIGFkZGl0aW9uYWwgbWFya3VwIFhNTCB0byBhZGQgdG8gdGhlIFBERiBub3QgeWV0IHN0b3JlZAogICAgfSBlbHNlIHsKICAgICAgICBhbGVydCgiU29tZXRoaW5nIHdlbnQgd3JvbmcgY3JlYXRpbmcgdGhlIHNlY3VyZSBsaW5rLiIpOwogICAgICAgIC8vcmV0dXJuIEVSUk9SCiAgICB9Cn0KCmlmIChkb2MuWCgiWF9idXR0b25BY3Rpb24iKSA9PSAiQUREX1NUQU1QIikgeyAKICAgIHZhciByZXM9ekRhdGEuYWRkU3RhbXAoZG9jLCIiKTsgCiAgICAvL3B1dCBpdCBpbiB0aGUgb3V0cHV0CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgcmVzKTsKfQ=="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS210605 create QR code and Blockchain contract to enable faster, digital access
if (doc.X("X_buttonAction") == "ADD_STAMP") {
    rool.evalContinue=false; //stops the bus!
}

//make a REDIRECT snippet
//create the  blockchain smart contract
//1st URL is open then require a PIN
//return a URL for the QR code
zData.stampMarkup=""; //ERS210731 #83767 might need to be different for signature invite
zData.stampMarkup+="kbm('IMGZSTAMP_REALPDFCOORDS','PAGE1IMGZSTAMP','/kb/jsp/qr.jsp?code={!qr}',55,55,10,10,'','12',45,45,17,750);";
zData.stampMarkup+="kbm('IMG1627149318038_REALPDFCOORDS','PAGE1IMG1627149318038','addText',93,22,10,83,'faxMD.org','10',70,16,7,750);";

zData.addStamp=function(doc,req) {
    var stampMarkup="get from zData"; //ERS211120 cleaning up
    //ERS211120 faxmd to faxMD and looking for place for ZQR url to keep forever
    stampMarkup=zData.stampMarkup; //ERS210731
    var userEmail=doc.XOrg("X_crmUser");
    if (userEmail.indexOf("@")==-1) userEmail="support+sign@zpaper.com";
    //track(doc,"invite sent","inviting "+X(doc,"X_inviteEmail"+n).replace(/ /g,"+"), 0);
    alert("ERS201207.09 zpServer="+doc.kbData.HOST);
    zData.zpServer=(""+doc.kbData.HOST).replace("http://","").replace(":8080","").replace("https://",""); //ERS201204 #77302 //ERS201206 more engine replaces
    if (!zData.zpServer) zData.zpServer="edge.zpaper.com"; //ERS191110 #64160 TODO get a server
    if ((""+zData.zpServer).indexOf("zpaper.com")==-1) { //ERS TODO doc.zpServer needed for zippi
        zData.zpServer="edge.zpaper.com";
        alert("ZIPPI BUSTED!!!");
    }
    alert("ERS201204.11 zpServer is "+zData.zpServer);
    var markupXML=""+X(doc,"X_markup"); //ERS210611 added "" for NPE
    alert("ERS210612 mXML="+markupXML);
    if (markupXML.indexOf("ZSTAMP")!=-1) {
        alert("ALREADY ZSTAMPED!");
        var zstamp=""+X(doc,"X_deliverStamp");
        if (zstamp.indexOf(".com/") == -1) {
            alert("REDIRECT broken? "+zstamp);
        } else {
            return zstamp; //probably should be stampMarkup.replace("{!qr}",zstamp);
        }
    }
    
    var n=1;
    var arrOfPairs=[];
    var PIN=X(doc,"X_invitePIN"+n); //ERS210118 TODO support inline in INVITEn:SMS:email:PIN values
    PIN=""+X(doc,"ContactFax"); //TODO clean up to 10 digits
    var to=PIN; //fax or SMS number
    if (!PIN || PIN.indexOf("PDF") != -1) { //make one up //ERS211120 PDF
        PIN="30076";
        if (1===1) { PIN=0;	while (PIN<10000) { PIN=Math.floor(100000*Math.random()); } } //ERS210912 PIN back on
    }
    arrOfPairs.push("X_invitePIN"+n, (""+PIN));
    var signHints="<X_invitePIN"+n+">"+PIN+"</X_invitePIN"+n+">";
    arrOfPairs.push("X_signIt", signHints);

    //create a one time use redirect (A) to download or view the PDF or embedded data
    //stamp contains the A link as a QR code
    //create a contract redirect (B) with a PIN to view / sign / markup the PDF afterwards
    //after the 1st time A is used change the forward from A to goto B
    //ERS210612 once a redirect is out of views if there is a ; then forward to it
    
    alert("ERS210612.54 doc.BATES may be null");
    var nId=""+X(doc,"X_zItemId"); if (!nId && (""+doc.BATES).indexOf("_Form")==-1) nId=doc.dbID; //ERS210611 204007e4Z1dkjni2il
    if (!nId) { return "ERROR: Templates do not need stamps"; }
    
    var linkA="https://"+zData.zpServer+"/kb/pdf/"+nId+"/zitem.pdf"; //ERS201014
    var linkB="https://"+zData.zpServer+"/kb/jsp/docChat.jsp?invite="+n+"&dbID="+nId; //ERS201014
    var moreData="&pages="+doc.numPages+"&sendTo="+X(doc,"ContactFax"); //ERS210703 #83767
    alert("ERS210703 moreData="+moreData);

    /* TODO call zRedirect.jsp to get short URL */
    var resultsB=wget(doc, "http://localhost:8080/kb/jsp/zRedirect.jsp?views=-1&X_invitePIN1="+PIN+moreData+"&save="+linkB.replace("&","%26")); //ERS201013 TODO other zRedirect controls more than just the PIN
    var i=resultsB.indexOf("URL");
    var shortB=resultsB.substring(i+6,resultsB.length()-3);
    shortB=shortB.replace("http://localhost:8080:8080/","https://"+zData.zpServer+"/");
    shortB=shortB.replace("https://localhost:8080/","https://"+zData.zpServer+"/"); 
    var expire=new Date(); expire.setTime(expire.getTime()+1000*3600*24*7); //2021-06-10
    var expired=formatDate(expire, "YYYY-MM-DD");
    var results=wget(doc, "http://localhost:8080/kb/jsp/zRedirect.jsp?until="+expired+moreData+"&views=1&save="+(linkA+";"+shortB).replace("&","%26"));
    i=results.indexOf("URL");
    alert("ERS201014 i="+i+" results="+results); //ERS210211 #77032 added X_invitePIN1 to redirect
    alert("ERS210609 i="+i+" resultsB="+resultsB); 
    
    var stampXML="";
    if (i>-1 && results.indexOf("ERROR")==-1) {
       link=results.substring(i+6,results.length()-3);
       link=link.replace("http://localhost:8080:8080/","https://"+zData.zpServer+"/"); //ERS201014 HACK JOKING!!!!
       link=link.replace("https://localhost:8080/","https://"+zData.zpServer+"/"); 
       //TODO save the link into SF field so that communication template can access it 50-80 chars use ZPAPER__outboundFaxTemplate__c
       //TODO might need to be the invited person's Id stored in +X(doc,"X_inviteId"+n)
       //var markupXML=X(doc,"X_markup");
       if (markupXML.indexOf("ZSTAMP")==-1) { //code=https://edge.zpaper.com/kb/zzz/0X1eu8se1sb&w=16
            var qr=link; //"https://"+zData.zpServer+"/kb/zzz/"+shortID+"&w=16";
            stampXML=stampMarkup.replace("{!qr}",qr);
            //REALPDF in page_pdf.jsp but markup.jsp prefers 1st set
            if ((""+doc.BATES).indexOf("_Form")==-1) {
                arrOfPairs.push("X_markup",markupXML+stampXML);
                //ERS210911 TODO set BATES of new document to be an interactive one {!sfID}@{!sfOrg}-{formId}
                arrOfPairs.push("db-BATES","NEEDS TO BE {!sfID}@{!sfOrg}-{formId}");
            }
       }
       arrOfPairs.push("X_deliverStamp",linkA); //ERS210609 #83767
       arrOfPairs.push("X_retrieveStamp",linkB);
       
       //save the REDIRECT ID back into the original
        updateDB(doc,arrOfPairs);
        alert("ERS201110.23 signIt="+signHints + " PIN"+n+"="+PIN);
        //ERS211120 added link to track
        track(doc, "STAMP.CREATE",link+" to "+ to +":"+ X(doc,"X_inviteEmail"+n).replace(/ /g,"+"), 0); //ERS210112 invites too
        //ERS210605 return link
        return stampXML; //ERS210611 SF_sendFax.jspf calls this action and needs the additional markup XML to add to the PDF not yet stored
    } else {
        alert("Something went wrong creating the secure link.");
        //return ERROR
    }
}

if (doc.X("X_buttonAction") == "ADD_STAMP") { 
    var res=zData.addStamp(doc,""); 
    //put it in the output
    addPostExecutionScript(doc, res);
}
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
