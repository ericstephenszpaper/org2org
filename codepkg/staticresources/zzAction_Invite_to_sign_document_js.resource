<!--
// Name: Invite to sign document
// Committer: eric.stephens@zpaper.com
// Update: just one PIN
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2023-03-16 02:54:28","active":true,"button":"Invite","name":"Invite to sign document","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"invite","operation":"starts-with"}]},"consequence":{"doit":"YWxlcnQoImNhbGxpbmcgdGhlIGludml0ZSBtZXRob2QiKTsKdmFyIG49MTsKdmFyIGFjdGlvbj1kb2MuWCgiWF9idXR0b25BY3Rpb24iKTsKaWYgKGFjdGlvbi5pbmRleE9mKCIyIik+LTEpIG49MjsKaWYgKGFjdGlvbi5pbmRleE9mKCIzIik+LTEpIG49MzsKIHZhciB1c2VyRW1haWw9ZG9jLlhPcmcoIlhfY3JtVXNlciIpOwppZiAodXNlckVtYWlsLmluZGV4T2YoIkAiKT09LTEpIHVzZXJFbWFpbD0ic3VwcG9ydCtzaWduQHpwYXBlci5jb20iOwovL3RyYWNrKGRvYywiaW52aXRlIHNlbnQiLCJpbnZpdGluZyAiK1goZG9jLCJYX2ludml0ZUVtYWlsIituKS5yZXBsYWNlKC8gL2csIisiKSwgMCk7CnZhciBsaW5rPSIiOwoKYWxlcnQoIkVSUzIwMTIwNy4wOSB6cFNlcnZlcj0iK2RvYy5rYkRhdGEuSE9TVCk7CmlmICghZG9jLmtiRGF0YS5IT1NUICYmICF6RGF0YS56cFNlcnZlcikgeyAvL0VSUyBUT0RPIGRvYy56cFNlcnZlciBuZWVkZWQgZm9yIHppcHBpIC8vRVJTMjMwMTIzICM5NjgyMgogICAgekRhdGEuenBTZXJ2ZXI9ImVkZ2UuenBhcGVyLmNvbSI7CiAgICBhbGVydCgiWklQUEkgQlVTVEVEISEhIik7CiAgICBpZiAoMT09MSkgeyAvL0VSUzIzMDIxMiBIQUNLIGxvb2tpbmcgZm9yIGRvdWJsZSBTVEFNUCBpbiB6aXBwaSAKICAgICAgICBkb2Mua2JEYXRhLkhPU1Q9ekRhdGEuenBTZXJ2ZXI7IAogICAgICAgIGxpbms9WChkb2MsIlhfelFSIik7CiAgICAgICAgaWYgKCFsaW5rKSB7CiAgICAgICAgICAgIGFsZXJ0KCJFUlMyMzAyMTIgU1RPUCBUSEUgTUFERE5FU1MgLSBTSE9VTEQgSEFWRSBBTFJFQURZIElOVklURUQiKTsKICAgICAgICAgICAgcmV0dXJuOwogICAgICAgIH0KICAgIH0KfQp6RGF0YS56cFNlcnZlcj0oIiIrZG9jLmtiRGF0YS5IT1NUKS5yZXBsYWNlKCJodHRwOi8vIiwiIikucmVwbGFjZSgiOjgwODAiLCIiKS5yZXBsYWNlKCJodHRwczovLyIsIiIpOyAvL0VSUzIwMTIwNCAjNzczMDIgLy9FUlMyMDEyMDYgbW9yZSBlbmdpbmUgcmVwbGFjZXMKYWxlcnQoIkVSUzIwMTIwNC4xMSB6cFNlcnZlciBpcyAiK3pEYXRhLnpwU2VydmVyKTsKCmlmICgxPT0xKSB7IC8vRVJTMjMwMzE1ICM5NjgyMiBrZWVwIHRoZSBleHRyYSBSZWRpcmVjdCB3aXRoIHRoZSB3cm9uZyBQSU4gZnJvbSBoYXBwZW5pbmcKICAgIGxpbms9WChkb2MsIlhfelFSIik7CiAgICBpZiAoIWxpbmspIHsKICAgICAgICAgICAgYWxlcnQoIkVSUzIzMDIxMi4zMCBTVE9QIFRIRSBNQURETkVTUyAtIFNIT1VMRCBIQVZFIEFMUkVBRFkgSU5WSVRFRCIpOwogICAgICAgICAgICByZXR1cm47CiAgICB9IGVsc2UgeyBhbGVydCgiRVJTMjMwMzE1LjMyIElOVklURSBhY3Rpb24gc2VuZGluZyBlbWFpbCIpOyB9Cn0KCgp2YXIgc2ZJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7IC8vRVJTMjAxMTEwIFRPRE8gbWF5IHdhbnQgdGhlIGxhc3QgYXR0YWNoZWQgdG8gaW5zdGVhZAppZiAoIXNmSWQpIHsgdmFyIGF0PVgoZG9jLCJYX2F0dGFjaGVkVG8iKTsgc2ZJZD1hdC5zdWJzdHJpbmcoMSthdC5sYXN0SW5kZXhPZigiLyIpKTsgfQoKdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIHNmVXNlcklkPWRvYy5zZlVzZXJJRDsgIGlmICghc2ZVc2VySWQpIHsgc2ZVc2VySWQ9WChkb2MsIlhfc2ZVc2VySUQiKTsgfSAvL0VSUzIxMDExOCAjNzczMDIgbG9nRmF4LmpzcCBjYWxscwp2YXIgc2lnbkhpbnRzPSI8c2ZPcmc+Iitkb2Muc2ZPcmcrIjwvc2ZPcmc+IisiPHNmSWQ+IitzZklkKyI8L3NmSWQ+IisiPHNmVXNlcklEPiIrc2ZVc2VySWQrIjwvc2ZVc2VySUQ+IjsgLy9FUlMyMDExMTAgIzc3MzAyIG5lZWRlZCBmb3IgZ3Vlc3Qgc2lnbmluZwp2YXIgUElOPVgoZG9jLCJYX2ludml0ZVBJTiIrbik7IC8vRVJTMjEwMTE4IFRPRE8gc3VwcG9ydCBpbmxpbmUgaW4gSU5WSVRFbjpTTVM6ZW1haWw6UElOIHZhbHVlcwoKCmlmICgxPT0xKSB7Ly9FUlMyMzAxMjMgIzk2ODIyCiAgICB2YXIgbWFya3VwWE1MPSIiK1goZG9jLCJYX21hcmt1cCIpOyAKICAgIHZhciB6c3RhbXA9IiI7CiAgICBpZiAobWFya3VwWE1MLmluZGV4T2YoIlpTVEFNUCIpIT0tMSkgewogICAgICAgIGFsZXJ0KCJBTFJFQURZIFpTVEFNUEVEISIpOwogICAgICAgIHpzdGFtcD0iIitYKGRvYywiWF9zZW50U3RhbXAiKTsgLy9FUlMyMzAxMjMKICAgICAgICBpZiAoIXpzdGFtcCkgenN0YW1wPSIiK1goZG9jLCJYX2RlbGl2ZXJTdGFtcCIpOwogICAgICAgIGlmICh6c3RhbXAuaW5kZXhPZigiLmNvbS8iKSA9PSAtMSAmJiB6c3RhbXAuaW5kZXhPZigiLm1kLyIpPT0tMSkgewogICAgICAgICAgICBhbGVydCgiUkVESVJFQ1QgYnJva2VuPyAiK3pzdGFtcCk7CiAgICAgICAgICAgIHpzdGFtcD0iIjsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICBhbGVydCgiRVJTMjMwMTIzIHVzaW5nICIrenN0YW1wKTsgLy9wcm9iYWJseSBzaG91bGQgYmUgc3RhbXBNYXJrdXAucmVwbGFjZSgieyFxcn0iLHpzdGFtcCk7CiAgICAgICAgfQogICAgfSBlbHNlIHsKICAgICAgICBhbGVydCgiRVJTMjMwMTIzIG1hcmt1cFhNTD0iK21hcmt1cFhNTCk7CiAgICAgICAgYWxlcnQoIkVSUzIzMDMxNS42MCBJTlZJVElORyBhbmQgTk9UIEFMUkVBRFkgWlNUQU1QRUQhIik7CiAgICB9CiAgICBsaW5rPXpzdGFtcDsKfQogICAgCmlmICghUElOKSB7IC8vbWFrZSBvbmUgdXAKICAgIFBJTj0iMzAwNzYiOwogICAgUElOPTA7CXdoaWxlIChQSU48MTAwMDApIHsgUElOPU1hdGguZmxvb3IoMTAwMDAwKk1hdGgucmFuZG9tKCkpOyB9CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfaW52aXRlUElOIituLCAoIiIrUElOKSk7CiAgICBzaWduSGludHMrPSI8WF9pbnZpdGVQSU4iK24rIj4iK1BJTisiPC9YX2ludml0ZVBJTiIrbisiPiI7Cn0KCmlmIChYKGRvYywiWF9zaWduSXQiKSA9PT0gIiIpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9zaWduSXQiLCBzaWduSGludHMpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgYWxlcnQoIkVSUzIwMTExMC4yMyBzaWduSXQ9IitzaWduSGludHMgKyAiIFBJTiIrbisiPSIrUElOKTsKICAgIAogICAgbGluaz0iaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIva2IvanNwL2RvY0NoYXQuanNwP2ludml0ZT0iK24rIiZkYklEPSIrZG9jLmRiSUQ7IC8vRVJTMjAxMDE0CiAgICBpZiAoMT09PTAgJiYgc2ZJZC5pbmRleE9mKCI1MDAiKT09PTApIHsgLy9FUlMyMDEwMTMgbW9iaWxlIGZvcm1zIGFuZCBzZWN1cmUgbGlua3MKICAgICAgbGluaz0iaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIva2IvcHVsbC8iK3NmSWQrIkB6cGFwZXIuY29tLyIrc2ZJZCsiL2NhcmJhdHJvbFBvcnRhbF9EYXRhMl9XZWJfRm9ybS5odG0iOwogICAgfQogICAgLyogVE9ETyBjYWxsIHpSZWRpcmVjdC5qc3AgdG8gZ2V0IHNob3J0IFVSTCAqLwogICAgdmFyIHJlc3VsdHM9d2dldChkb2MsICJodHRwOi8vbG9jYWxob3N0OjgwODAva2IvanNwL3pSZWRpcmVjdC5qc3A/WF9pbnZpdGVQSU4xPSIrUElOKyImc2F2ZT0iK2xpbmsucmVwbGFjZSgiJiIsIiUyNiIpKTsgLy9FUlMyMDEwMTMgVE9ETyBvdGhlciB6UmVkaXJlY3QgY29udHJvbHMgbW9yZSB0aGFuIGp1c3QgdGhlIFBJTgogICAgdmFyIGk9cmVzdWx0cy5pbmRleE9mKCJVUkwiKTsKICAgIGFsZXJ0KCJFUlMyMDEwMTQgaT0iK2krIiByZXN1bHRzPSIrcmVzdWx0cyk7IC8vRVJTMjEwMjExICM3NzAzMiBhZGRlZCBYX2ludml0ZVBJTjEgdG8gcmVkaXJlY3QKICAgIAogICAgaWYgKGk+LTEgJiYgcmVzdWx0cy5pbmRleE9mKCJFUlJPUiIpPT0tMSkgewogICAgICAgbGluaz1yZXN1bHRzLnN1YnN0cmluZyhpKzYscmVzdWx0cy5sZW5ndGgoKS0zKTsKICAgICAgIGxpbms9bGluay5yZXBsYWNlKCJodHRwOi8vbG9jYWxob3N0OjgwODA6ODA4MC8iLCJodHRwczovLyIrekRhdGEuenBTZXJ2ZXIrIi8iKTsgLy9FUlMyMDEwMTQgSEFDSyBKT0tJTkchISEhCiAgICAgICAKICAgICAgIGlmICh6RGF0YS5zdGFtcE1hcmt1cCkgeyAvL0VSUzIxMDczMSAjODM3Njcgc3RhbXAgdGhlIGludml0ZQogICAgICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgIHZhciBtYXJrdXBYTUw9IiIrWChkb2MsIlhfbWFya3VwIik7IC8vRVJTMjEwNjExIGFkZGVkICIiIGZvciBOUEUKICAgICAgICAgICAgaWYgKG1hcmt1cFhNTC5pbmRleE9mKCJaU1RBTVAiKT09LTEpIHsKICAgICAgICAgICAgICAgIHZhciBxcj1saW5rOyAvLyJodHRwczovLyIrekRhdGEuenBTZXJ2ZXIrIi9rYi96enovIitzaG9ydElEKyImdz0xNiI7CiAgICAgICAgICAgICAgICB2YXIgbklkPWRvYy5kYklEOwogICAgICAgICAgICAgICAgdmFyIHN0YW1wWE1MPXpEYXRhLnN0YW1wTWFya3VwLnJlcGxhY2UoInshcXJ9Iixxcik7CiAgICAgICAgICAgICAgICAvL1RPRE8gPz8/IGlmICgoIiIrZG9jLkJBVEVTKS5pbmRleE9mKCJfRm9ybSIpPT0tMSkgYXJyT2ZQYWlycy5wdXNoKCJYX21hcmt1cCIsbWFya3VwWE1MK3N0YW1wWE1MKTsKICAgICAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9tYXJrdXAiLG1hcmt1cFhNTCtzdGFtcFhNTCk7CiAgICAgICAgICAgICAgICB2YXIgbGlua0E9Imh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiL2tiL3BkZi8iK25JZCsiL3ppdGVtLnBkZiI7IC8vRVJTMjAxMDE0CiAgICAgICAgICAgICAgICB2YXIgbGlua0I9Imh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiL2tiL2pzcC9kb2NDaGF0LmpzcD9pbnZpdGU9IituKyImZGJJRD0iK25JZDsgLy9FUlMyMDEwMTQKICAgICAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9kZWxpdmVyU3RhbXAiLGxpbmtBKTsgLy9FUlMyMTA2MDkgIzgzNzY3CiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV0cmlldmVTdGFtcCIsbGlua0IpOwogICAgICAgICAgICAgICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQp9CgppZiAobGluaykgewogICAvL1RPRE8gc2F2ZSB0aGUgbGluayBpbnRvIFNGIGZpZWxkIHNvIHRoYXQgY29tbXVuaWNhdGlvbiB0ZW1wbGF0ZSBjYW4gYWNjZXNzIGl0IDUwLTgwIGNoYXJzIHVzZSBaUEFQRVJfX291dGJvdW5kRmF4VGVtcGxhdGVfX2MKICAgLy9UT0RPIG1pZ2h0IG5lZWQgdG8gYmUgdGhlIGludml0ZWQgcGVyc29uJ3MgSWQgc3RvcmVkIGluICtYKGRvYywiWF9pbnZpdGVJZCIrbikKICAgdmFyIGFyck9mUGFpcnMyID0gW107CiAgIGFyck9mUGFpcnMyLnB1c2goIlpQQVBFUl9fb3V0Ym91bmRGYXhUZW1wbGF0ZV9fYyIsIGxpbmspOwogICB2YXIgdG9JZD1YKGRvYywiWF9pbnZpdGVJZCIrbik7CiAgIHZhciBzZlQ9Z2V0U0ZUeXBlKGRvYywgdG9JZCk7CiAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgc2ZULCB0b0lkLCBhcnJPZlBhaXJzMik7IC8vRVJTMjAxMjEyICM3NzMwMiBpbnZpdGUgd2l0aCBlbWFpbCB0ZW1wbGF0ZQoKICAgIHZhciBib2R5PSJDaGVjayB5b3VyIHBob25lIGZvciB0aGUgUElOIG5lZWRlZCB0byBzaWduIHRoaXMgZG9jdW1lbnQuICBPbmNlIHlvdSByZWNlaXZlIGl0IHRoZW4gY2xpY2sgIitsaW5rCiAgICAgICsiIGZyb20gYW55IHdlYiBicm93c2VyIG9yIG1vYmlsZSBkZXZpY2UgdG8gdmlldyBvciBzaWduIHRoZSBkb2N1bWVudC4iOwogICAgdmFyIHRvRW1haWw9WChkb2MsIlhfaW52aXRlRW1haWwiK24pOwogICAgdmFyIHRvU01TPVgoZG9jLCJYX2ludml0ZVBob25lIituKTsKICAgIGlmICghdG9TTVMgfHwgIXRvRW1haWwpIHsgLy9FUlMyMzAxMjQgIzk2ODIyIFBJTiBpcyBJTlZJVEU6U01TOkVtYWlsIGZvciBaQ2FyZAogICAgICAgIGlmICgoIiIrUElOKS5pbmRleE9mKCI6Iik+LTEpIHsgLy9FUlMyMzAyMTEgUElOLmluZGV4T2YKICAgICAgICAgICAgdG9FbWFpbD1QSU4uc3BsaXQoIjoiKVsyXTsKICAgICAgICAgICAgdG9TTVM9UElOLnNwbGl0KCI6IilbMV07CiAgICAgICAgfQogICAgfQogICAgdmFyIFBJTjI9UElOOwogICAgLy9hbGVydCgiRVJTMjMwMjExIHVzZXJFbWFpbD0iK3VzZXJFbWFpbCsiIFBJTj0iK1BJTisiIHRvU01TPSIrdG9TTVMrIiB0b0VtYWlsPSIrdG9FbWFpbCk7IC8vRVJTMjMwMjExICM5NjgyMgogICAgLy9pZiAoIXVzZXJFbWFpbCkgeyB1c2VyRW1haWw9InF1aWNrUmVhZHlNZWRpY2FsRGF0YUBxci5tZCI7IH0gLy9FUlMyMzAyMTEgVE9ETyB1c2VyRW1haWwgZm9yIGtiIHdvcmtmbG93CiAgICB0b0VtYWlsPXRvRW1haWwucmVwbGFjZSgvIC9nLCIrIik7CiAgICB2YXIgcjE9c2VuZEVtYWlsKGRvYyx1c2VyRW1haWwsdG9FbWFpbCwielBhcGVyIFNoYXJlIGFuZCBTaWduaW5nIixib2R5KTsKICAgICAvKmJvZHkgbWlnaHQgYmUgYSBzZklEOmNvbW11bmljYXRpb25UZW1wbGF0ZUlkIHNvbWVkYXkqLwogICAgLy9hbGVydCgiRVJTMjMwMjExLjExNSBQSU49IitQSU4rIiB0b1NNUz0iK3RvU01TKTsgLy9FUlMyMzAyMTEgIzk2ODIyCiAgICAKICAgIHZhciBmcm9tPSIrMTU3MTI5NzI3MzciOwogICAgYm9keT0iVXNlIFBJTiBvZiAiK1BJTisgIiB0byBzaWduIGFuZCBodHRwczovL3FhMDEuenBhcGVyLmNvbS9rYi9qc3AvbW9iaWxlU2lnbi5qc3A/aW52aXRlPVBJTiIrbisiOiIrZG9jLmRiSUQrIiB0byBsb2FkIHlvdXIgc2lnbmF0dXJlLiI7CiAgICBib2R5PSJVc2UgUElOIG9mICIrUElOKyAiIHRvIHZpZXcgb3Igc2lnbiAiICsgZG9jLmxhYmVsOwogICAgaWYgKCgiIitQSU4pLmluZGV4T2YoIjoiKT4tMSkgeyBib2R5PSJWaWV3ICIrZG9jLmxhYmVsOyB9IC8vRVJTMjMwMTAyNAogICAgYm9keSs9IiB1c2luZyB5b3VyIGVtYWlsIG9yICIrbGluazsKICAgIC8vYWxlcnQoIkVSUzIzMDIxMS4xMjEgUElOPSIrUElOKyIgdG9TTVM9Iit0b1NNUyk7IC8vRVJTMjMwMjExICM5NjgyMgogICAgdmFyIHIyPXNlbmRTTVMoZG9jLCBmcm9tLCB0b1NNUywgYm9keSk7CiAgICBhbGVydCgiRVJTMjMwMTI0IHIxPSIrcjErIiByMj0iK3IyKTsgLy9FUlMyMzAxMjQgIzk2ODIyCiAgICB0cmFjayhkb2MsICJTSUdOLklOVklURSIsIHRvU01TICsiOiIrIHRvRW1haWwsIDApOyAvL0VSUzIxMDExMiBpbnZpdGVzIHRvbwp9IGVsc2UgewogICAgYWxlcnQoIlNvbWV0aGluZyB3ZW50IHdyb25nIGdldHRpbmcgdGhlIHN0YW1wIGxpbmsuIik7Cn0KIA=="},"ordinal":7}

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
var link="";

alert("ERS201207.09 zpServer="+doc.kbData.HOST);
if (!doc.kbData.HOST && !zData.zpServer) { //ERS TODO doc.zpServer needed for zippi //ERS230123 #96822
    zData.zpServer="edge.zpaper.com";
    alert("ZIPPI BUSTED!!!");
    if (1==1) { //ERS230212 HACK looking for double STAMP in zippi 
        doc.kbData.HOST=zData.zpServer; 
        link=X(doc,"X_zQR");
        if (!link) {
            alert("ERS230212 STOP THE MADDNESS - SHOULD HAVE ALREADY INVITED");
            return;
        }
    }
}
zData.zpServer=(""+doc.kbData.HOST).replace("http://","").replace(":8080","").replace("https://",""); //ERS201204 #77302 //ERS201206 more engine replaces
alert("ERS201204.11 zpServer is "+zData.zpServer);

if (1==1) { //ERS230315 #96822 keep the extra Redirect with the wrong PIN from happening
    link=X(doc,"X_zQR");
    if (!link) {
            alert("ERS230212.30 STOP THE MADDNESS - SHOULD HAVE ALREADY INVITED");
            return;
    } else { alert("ERS230315.32 INVITE action sending email"); }
}


var sfId=zData.getStackId(doc); //ERS201110 TODO may want the last attached to instead
if (!sfId) { var at=X(doc,"X_attachedTo"); sfId=at.substring(1+at.lastIndexOf("/")); }

var arrOfPairs = [];
var sfUserId=doc.sfUserID;  if (!sfUserId) { sfUserId=X(doc,"X_sfUserID"); } //ERS210118 #77302 logFax.jsp calls
var signHints="<sfOrg>"+doc.sfOrg+"</sfOrg>"+"<sfId>"+sfId+"</sfId>"+"<sfUserID>"+sfUserId+"</sfUserID>"; //ERS201110 #77302 needed for guest signing
var PIN=X(doc,"X_invitePIN"+n); //ERS210118 TODO support inline in INVITEn:SMS:email:PIN values


if (1==1) {//ERS230123 #96822
    var markupXML=""+X(doc,"X_markup"); 
    var zstamp="";
    if (markupXML.indexOf("ZSTAMP")!=-1) {
        alert("ALREADY ZSTAMPED!");
        zstamp=""+X(doc,"X_sentStamp"); //ERS230123
        if (!zstamp) zstamp=""+X(doc,"X_deliverStamp");
        if (zstamp.indexOf(".com/") == -1 && zstamp.indexOf(".md/")==-1) {
            alert("REDIRECT broken? "+zstamp);
            zstamp="";
        } else {
            alert("ERS230123 using "+zstamp); //probably should be stampMarkup.replace("{!qr}",zstamp);
        }
    } else {
        alert("ERS230123 markupXML="+markupXML);
        alert("ERS230315.60 INVITING and NOT ALREADY ZSTAMPED!");
    }
    link=zstamp;
}
    
if (!PIN) { //make one up
    PIN="30076";
    PIN=0;	while (PIN<10000) { PIN=Math.floor(100000*Math.random()); }
    arrOfPairs.push("X_invitePIN"+n, (""+PIN));
    signHints+="<X_invitePIN"+n+">"+PIN+"</X_invitePIN"+n+">";
}

if (X(doc,"X_signIt") === "") {
    arrOfPairs.push("X_signIt", signHints);
    updateDB(doc,arrOfPairs);
    alert("ERS201110.23 signIt="+signHints + " PIN"+n+"="+PIN);
    
    link="https://"+zData.zpServer+"/kb/jsp/docChat.jsp?invite="+n+"&dbID="+doc.dbID; //ERS201014
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
    }
}

if (link) {
   //TODO save the link into SF field so that communication template can access it 50-80 chars use ZPAPER__outboundFaxTemplate__c
   //TODO might need to be the invited person's Id stored in +X(doc,"X_inviteId"+n)
   var arrOfPairs2 = [];
   arrOfPairs2.push("ZPAPER__outboundFaxTemplate__c", link);
   var toId=X(doc,"X_inviteId"+n);
   var sfT=getSFType(doc, toId);
   updateSFRecord(doc, sfT, toId, arrOfPairs2); //ERS201212 #77302 invite with email template

    var body="Check your phone for the PIN needed to sign this document.  Once you receive it then click "+link
      +" from any web browser or mobile device to view or sign the document.";
    var toEmail=X(doc,"X_inviteEmail"+n);
    var toSMS=X(doc,"X_invitePhone"+n);
    if (!toSMS || !toEmail) { //ERS230124 #96822 PIN is INVITE:SMS:Email for ZCard
        if ((""+PIN).indexOf(":")>-1) { //ERS230211 PIN.indexOf
            toEmail=PIN.split(":")[2];
            toSMS=PIN.split(":")[1];
        }
    }
    var PIN2=PIN;
    //alert("ERS230211 userEmail="+userEmail+" PIN="+PIN+" toSMS="+toSMS+" toEmail="+toEmail); //ERS230211 #96822
    //if (!userEmail) { userEmail="quickReadyMedicalData@qr.md"; } //ERS230211 TODO userEmail for kb workflow
    toEmail=toEmail.replace(/ /g,"+");
    var r1=sendEmail(doc,userEmail,toEmail,"zPaper Share and Signing",body);
     /*body might be a sfID:communicationTemplateId someday*/
    //alert("ERS230211.115 PIN="+PIN+" toSMS="+toSMS); //ERS230211 #96822
    
    var from="+15712972737";
    body="Use PIN of "+PIN+ " to sign and https://qa01.zpaper.com/kb/jsp/mobileSign.jsp?invite=PIN"+n+":"+doc.dbID+" to load your signature.";
    body="Use PIN of "+PIN+ " to view or sign " + doc.label;
    if ((""+PIN).indexOf(":")>-1) { body="View "+doc.label; } //ERS2301024
    body+=" using your email or "+link;
    //alert("ERS230211.121 PIN="+PIN+" toSMS="+toSMS); //ERS230211 #96822
    var r2=sendSMS(doc, from, toSMS, body);
    alert("ERS230124 r1="+r1+" r2="+r2); //ERS230124 #96822
    track(doc, "SIGN.INVITE", toSMS +":"+ toEmail, 0); //ERS210112 invites too
} else {
    alert("Something went wrong getting the stamp link.");
}
 
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
