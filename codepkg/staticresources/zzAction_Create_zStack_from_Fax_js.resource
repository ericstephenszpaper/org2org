<!--
// Name: Create zStack from Fax
// Committer: judson.bruno@zpaper.com
// Update: JPB190226 Debugging...; JPB190226 Doc set looks for "by agent". ERS170909 #40592
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-02-26 21:37:39","active":true,"button":"","name":"Create zStack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_buttonAction\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMxNzA4MDQgZG9jVHlwZSBieSBPQ1IKLy9FUlMxNzEwMTIga2V5d29yZHMgZm9yIGRlbW8KLy9KUEIxODA4MDggYWRkZWVkIFN0YXJ0IEZvcm0gYW5kIENoZWNrbGlzdCBmb3IgQklPR0VOIERFTU8KLy9KUEIxODEwMjIgYWRkZWQgU3BpbnJhemEKLy9KUEIxODEwMjUgcmVtb3ZlZCB+IGZyb20ga2V5d29yZHMgYW5kIG1vdmVkIEVucm9sbG1lbnQgdG8gZmlyc3QgcG9zaXRpb24KdmFyIGtleXdvcmRzPVsiRU5STDpFbnJvbGxtZW50IiwiRU5STDpFTlJPTExNRU5UIiwiUEE6UHJpb3IgQXV0aG9yaXphdGlvbiIsIlNUQVJUOlN0YXJ0IEZvcm0iLCJURU5SOlRFQ0ZJREVSQSIsIlRFTlI6VEVDLVVTLTAyOTgiLCJTVEFSVDpTUElOUkFaQSIsIlNUQVJUOlNQWi1VUy0wMjY2VjUiLCJDSEs6Q2hlY2tsaXN0IiwiQ0hLOjM3NTMxMjgiLCJDSEs6aW5mdXNpb24iLCJDT046Q29uc2VudCIsIkNPTjpjb25zZW50IiwiSElQQUE6QVVUSE9SSVpBVElPTiIsIkhJUEFBOkhJUEFBIiwiSElQQUE6UE9SVEFCSUxJVFkiLCJSRUY6UkVGRVJSQUwiLCJSRUY6UmVmZXJyYWwiLCJGSU46Vy0yIiwiSUM6TWVtYmVyIElEIiwiT1RIOiJdOyAvL0pQQjE4MDgyOCBjaGFuZ2VkIHRvIE9USCBmb3IgT3RoZXIgaW5zdGVhZCBvZiBGQVgKdmFyIGtleXdvcmRNYXA9e307IC8vSlBCMTgwODA4IGFkZGVkIGtleXdvcmRNYXAgdG8gbWF0Y2ggZG9jVHlwZQprZXl3b3JkTWFwWyJURU5SIl0gPSJURU5SOlN0YXJ0IEZvcm0iOyAvL0pQQjE5MDExNyBjaGFuZ2VkIHRvIG1hdGNoIERFTU8Ka2V5d29yZE1hcFsiQ0hLIl0gPSJDSEs6Q2hlY2tsaXN0IjsKa2V5d29yZE1hcFsiRU5STCJdID0iRU5STDpFbnJvbGxtZW50IjsKa2V5d29yZE1hcFsiQ09OIl0gPSJDT046Q29uc2VudCI7CmtleXdvcmRNYXBbIkhJUEFBIl0gPSJISVBBQTpBVVRIT1JJWkFUSU9OIjsKa2V5d29yZE1hcFsiUkVGIl0gPSJSRUY6UkVGRVJSQUwiOwprZXl3b3JkTWFwWyJGSU4iXSA9IkZJTjpXLTIiOwprZXl3b3JkTWFwWyJJQyJdID0iSUM6TWVtYmVyIElEIjsKa2V5d29yZE1hcFsiUEEiXSA9IlBBOlByaW9yIEF1dGhvcml6YXRpb24iOyAvL0pQQjE5MDIyMyBhZGRlZCBQQQovL0VSUzE5MDExOSBUT0RPIGFsbCBvZiB0aGVzZSBkb2NUeXBlIGtleXdvcmRNYXAgaWRlYXMgbmVlZCB0byBiZSByZWZhY3RvcgoKdmFyIHpUeXBlPWRvYy5YKCJYX2RvY1R5cGUiKTsgLy9FUlMxOTAxMTkgbW92ZWQgb3V0c2lkZSBpZgppZiAoekRhdGEuZG9jVHlwZU9DUj09PSJGQVgiIHx8IHpEYXRhLmRvY1R5cGVPQ1I9PT0iIikgeyAvL0VSUzE5MDExOCBub3QgbmVlZGVkIGlmIEF1dG9Ecml2ZSBhbHJlYWR5IHJ1bgogICAgekRhdGEuZG9jVHlwZU9DUj16RGF0YS5kb2NUeXBlcihkb2Msa2V5d29yZHMpOyAvL0VSUzE3MTAxMiBUT0RPIG1pc3NpbmcgZm9yIE1QCiAgICBhbGVydCgiZG9jVHlwZSB3YXMgIitkb2MuZG9jVHlwZSsiIG5vdyAiKyB6RGF0YS5kb2NUeXBlT0NSKTsKICAgIHpUeXBlPWRvYy5YKCJYX2RvY1R5cGUiKTsKICAgIGlmIChkb2MuZG9jVHlwZSAhPSB6RGF0YS5kb2NUeXBlT0NSKSB7CiAgICAgICAgdmFyIGFyck9mUGFpcnMwID0gW107CiAgICAgICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlT0NSIix6RGF0YS5kb2NUeXBlT0NSKTsKICAgIAlhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIHpUeXBlPXpEYXRhLmRvY1R5cGVPQ1I7IC8vRVJTMTcwMzMwIHNhdmVkIGJlbG93IGludG8gU0YgZmF4VHlwZV9fYyBmaWVsZAogICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyczApOwogICAgfQp9IGVsc2UgeyAvL0VSUzE5MDExOSBUT0RPIGF1dG9TcGxpdCAjNTMwMDAKICAgIHpUeXBlPXpEYXRhLmRvY1R5cGVPQ1I7IC8vRVJTMTkwMTE5ICM1MzAwMAogICAgYWxlcnQoIkVSUzE5MDExOSBBdXRvRHJpdmUgZm91bmQgIit6VHlwZSsiIGZpcnN0IG9yIGxhc3QuIFdoaWNoIGlzIGl0PyIpOwp9Cgp6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgLy93aG8gYW5kIHdoZXJlCgphbGVydCgiIyMjIyBmYXggd2FzIGRlbGl2ZXJlZCB0byBudW1iZXI6ICIgKyBkb2MuZGVsaXZlcmVkVG8pOyAvL0pQQjE4MDYyNiBhZGRlZCBhbGVydCBkb2MuZGVsaXZlcmVkVG8KdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBhcnJPZlBhaXJzID0gW107CnZhciB6cD0iWlBBUEVSX18iOyAvL0VSUzE3MDYyNiBub3cgaW4gdGhlIHBhY2thZ2UKdmFyIHpTdGFjaz16cCsielN0YWNrX19jIjsgLy8iU3RhY2tfX2MiCgphbGVydCgiQEBAQHpUeXBlPSIrelR5cGUpOwphcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCBrZXl3b3JkTWFwW3pUeXBlXSk7IC8vSlBCMTgwODA4IGFkZGVkIGtleXdvcmRNYXAgZm9yIHpUeXBlCmFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIk5ldyB6U3RhY2siKTsgLy9KUEIxODA3MDkgYWRkZWQgelN0YWNrCgphbGVydCgiRVJTMTgwNTA1IGRvYy5kZWxpdmVyZWRGcm9tPSIrZG9jLmRlbGl2ZXJlZEZyb20pOwoKLy92YXIgY2hhbm5lbD0iRmF4IjsgCi8vdmFyIGNoYW5uZWw9IkVtYWlsIjsgLy9KUEIxODA1MjMKdmFyIGNoYW5uZWw9IkZheCI7IC8vSlBCMTgwNTIzCmlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7Y2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCmVsc2UgaWYgKGlzTmFOKGRvYy5kZWxpdmVyZWRGcm9tKSkgeyBjaGFubmVsPSJTY2FuIjsgfSAvL0pQQjE4MDcxMSBhZGRlZCBOYU4KYXJyT2ZQYWlycy5wdXNoKHpwKyJDaGFubmVsX19jIixjaGFubmVsKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwphcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CmFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKYWxlcnQoIkBAQHpEYXRhLnByb2dyYW1OYW1lPSIrekRhdGEucHJvZ3JhbU5hbWUpOyAvL0pQQjE4MDgxNSBhZGRlZCBhbGVydCAjNDgzMzkKYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsekRhdGEucHJvZ3JhbU5hbWUpOyAvL0pQQjE4MDgwOCBhZGRlZCBiYWNrIGluIENsYXNzaWZpY2F0aW9uCmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7IC8vSlBCMTgwNjI2IGdlbmVyYWxpemVkIHByb2dyYW0gbmFtZSAvL0pQQjE4MDcxMSBhZGRlZCBwcm9ncmFtIG5hbWVzCmlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoKaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSB6RGF0YS5QUk9HUkFNX1pDSEFSVEEpIHsKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IC8vSlBCMTgwNzExIGFkZGVkIFVyZ2VudCBQcmlvcml0eV9fYwp9CmVsc2UgaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7ICAvL0pQQjE4MDcxMSBhZGRlZCAoekRhdGEucHJvZ3JhbU5hbWUgPT09ICJ6UGFweXJ1cyIpCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsgLy9KUEIxODA3MTEgYWRkZWQgSGlnaCBQcmlvcml0eV9fYwp9CmVsc2UgaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSB6RGF0YS5QUk9HUkFNX1pSRUZFUlJBTCkgeyAgLy9KUEIxODA3MTEgYWRkZWQgKHpEYXRhLnByb2dyYW1OYW1lID09PSAielJlZmVycmFsIikKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7IC8vSlBCMTgwNzExIGFkZGVkIE1lZGl1bSBQcmlvcml0eV9fYwp9CmVsc2UgaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSB6RGF0YS5QUk9HUkFNX1pDQVJUQSkgeyAvL0pQQjE4MDcxMSBhZGRlZCAoekRhdGEucHJvZ3JhbU5hbWUgPT09ICJ6Q0FSVGEiKQoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJDcml0aWNhbCIpOwkvL0pQQjE4MDcxMSBhZGRlZCBDcml0aWNhbCBQcmlvcml0eV9fYwp9CmVsc2UgaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSB6RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQSkgeyAvL0pQQjE4MDgwNiBhZGRlZCAoekRhdGEucHJvZ3JhbU5hbWUgPT09ICJUZWNmaWRlcmEiKQoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJTcGVjaWFsIik7CS8vSlBCMTgwODA2IGFkZGVkIFNwZWNpYWwgUHJpb3JpdHlfX2MKfQplbHNlIGlmICh6RGF0YS5wcm9ncmFtTmFtZSA9PT0gekRhdGEuUFJPR1JBTV9TUElOUkFaQSkgeyAvL0pQQjE4MTAyMiBhZGRlZCAoekRhdGEucHJvZ3JhbU5hbWUgPT09ICJTUElOUkFaQSIpCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlN0YW5kYXJkIik7CS8vSlBCMTgwODA4IGFkZGVkIFN0YW5kYXJkIFByaW9yaXR5X19jfQp9CmVsc2UgCnsKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7Cn0KCmFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIixkb2MuZGVsaXZlcmVkVG8pOyAvL0VSUzE3MDYyOCBjYWxsZXIgaWQKYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CmlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykge2Fyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7IH0gZWxzZSB7Ly9FUlMxOTAxMTggIzUzMDAwCmFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgLy9FUlMxNzA3MzEgIzQwNTkzCn0KCmFsZXJ0KCJSZXZpZXdlZCBTdGF0dXMgYmVmb3JlIHNldHRpbmcgaXQgdG8gUmVjZWl2ZWQ6ICIgKyBYKGRvYywgIlhfcmV2aWV3ZWRTdGF0dXMiKSk7CmFsZXJ0KCJ6RGF0YS5yZXZpZXdlZFN0YXR1cyA9ICIgKyB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7CnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCAiTmV3ICIgKyB6RGF0YS5wcm9ncmFtTmFtZSArICIgelN0YWNrIHJlY2VpdmVkIiwgYXJyT2ZQYWlycyk7IC8vSlBCMTgwNjI2IHJlbW92ZWQgKyBmb3JtYXROb3cgZnJvbSBsaW5rCmFsZXJ0KCIjIyMjIFN0YWNrIFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOwphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiTmV3ICIgKyB6RGF0YS5wcm9ncmFtTmFtZSArICIgelN0YWNrIHJlY2VpdmVkICIpOyAvL0pQQjE4MDYyNiByZWxhYmVsZWQgdG8gcHJvZ3JhbSBKUEIxODA2MjYgcmVtb3ZlZCArIGZvcm1hdE5vdwphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsc2ZJZCk7IC8vRVJTMTcwNzI3ICM0MDQ0Nwp2YXIgc2lnbmVkU3RhdHVzID0gIiI7ICAvL0pQQjE5MDExNyBhZGRlZCBzaWduYXR1cmUgY2hlY2tib3ggZnVuY3Rpb24KYWxlcnQoIkBAQEAgekRhdGEucmV2aWV3ZWRTdGF0dXMgPSAiICsgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyAgLy9KUEIxOTAyMjYgRGVidWdnaW5nLi4uIAppZiAoIlNpZ25lZCIgPT09IHpEYXRhLnJldmlld2VkU3RhdHVzKSB7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIHNpZ25lZFN0YXR1cyA9ICJTaWduZWQgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiI7IC8vSlBCMTkwMjI2IERvYyBzZXQgbG9va3MgZm9yICJieSBhZ2VudCIuIEVSUzE3MDkwOSAjNDA1OTIKfQphbGVydCgiU2lnbmVkU3RhdHVzID0gIiArIHNpZ25lZFN0YXR1cyk7CmlmICgxPT09MSkgeyAvL0VSUzE4MDEwMyBzZXQgYXMgUmVjZWl2ZWQgIzQxMTU1CiAgICB2YXIgYmE9IlJlY2VpdmVkIjsKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwoJYWxlcnQoIiQkJCBub3cwID0gIiArIG5vdzAgKyAiLCBiYSA9ICIgKyBiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSBhZ2VudCBhdCAiK25vdzArIjxici8+IiArIHNpZ25lZFN0YXR1cyk7IC8vRVJTMTcwOTA5ICM0MDU5Mgp9CmFsZXJ0KCJAQEAgY2FsbGluZyB1cGRhdGVEQiB3aXRoIHBhcmFtczogQEBAQEBAQEBAQEBAIik7CmFsZXJ0KGFyck9mUGFpcnMpOwphbGVydCgiQEBAIGNhbGxpbmcgdXBkYXRlREIgd2l0aCBwYXJhbXM6IEBAQEBAQEBAQEBAQCIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogLyogRU5EICov"},"ordinal":18}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS170804 docType by OCR
//ERS171012 keywords for demo
//JPB180808 addeed Start Form and Checklist for BIOGEN DEMO
//JPB181022 added Spinraza
//JPB181025 removed ~ from keywords and moved Enrollment to first position
var keywords=["ENRL:Enrollment","ENRL:ENROLLMENT","PA:Prior Authorization","START:Start Form","TENR:TECFIDERA","TENR:TEC-US-0298","START:SPINRAZA","START:SPZ-US-0266V5","CHK:Checklist","CHK:3753128","CHK:infusion","CON:Consent","CON:consent","HIPAA:AUTHORIZATION","HIPAA:HIPAA","HIPAA:PORTABILITY","REF:REFERRAL","REF:Referral","FIN:W-2","IC:Member ID","OTH:"]; //JPB180828 changed to OTH for Other instead of FAX
var keywordMap={}; //JPB180808 added keywordMap to match docType
keywordMap["TENR"] ="TENR:Start Form"; //JPB190117 changed to match DEMO
keywordMap["CHK"] ="CHK:Checklist";
keywordMap["ENRL"] ="ENRL:Enrollment";
keywordMap["CON"] ="CON:Consent";
keywordMap["HIPAA"] ="HIPAA:AUTHORIZATION";
keywordMap["REF"] ="REF:REFERRAL";
keywordMap["FIN"] ="FIN:W-2";
keywordMap["IC"] ="IC:Member ID";
keywordMap["PA"] ="PA:Prior Authorization"; //JPB190223 added PA
//ERS190119 TODO all of these docType keywordMap ideas need to be refactor

var zType=doc.X("X_docType"); //ERS190119 moved outside if
if (zData.docTypeOCR==="FAX" || zData.docTypeOCR==="") { //ERS190118 not needed if AutoDrive already run
    zData.docTypeOCR=zData.docTyper(doc,keywords); //ERS171012 TODO missing for MP
    alert("docType was "+doc.docType+" now "+ zData.docTypeOCR);
    zType=doc.X("X_docType");
    if (doc.docType != zData.docTypeOCR) {
        var arrOfPairs0 = [];
        arrOfPairs0.push("X_docTypeOCR",zData.docTypeOCR);
    	arrOfPairs0.push("X_docType",zData.docTypeOCR);
        zType=zData.docTypeOCR; //ERS170330 saved below into SF faxType__c field
        updateDB(doc, arrOfPairs0);
    }
} else { //ERS190119 TODO autoSplit #53000
    zType=zData.docTypeOCR; //ERS190119 #53000
    alert("ERS190119 AutoDrive found "+zType+" first or last. Which is it?");
}

zData.setbrandprogram(doc); //who and where

alert("#### fax was delivered to number: " + doc.deliveredTo); //JPB180626 added alert doc.deliveredTo
var formatNow = getCurDateAndTime(doc);
var arrOfPairs = [];
var zp="ZPAPER__"; //ERS170626 now in the package
var zStack=zp+"zStack__c"; //"Stack__c"

alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", keywordMap[zType]); //JPB180808 added keywordMap for zType
arrOfPairs.push(zp+"Status__c", "New zStack"); //JPB180709 added zStack

alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);

//var channel="Fax"; 
//var channel="Email"; //JPB180523
var channel="Fax"; //JPB180523
if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {channel="Email";} //ERS180505 #48101
else if (isNaN(doc.deliveredFrom)) { channel="Scan"; } //JPB180711 added NaN
arrOfPairs.push(zp+"Channel__c",channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
alert("@@@zData.programName="+zData.programName); //JPB180815 added alert #48339
arrOfPairs.push(zp+"Classification__c",zData.programName); //JPB180808 added back in Classification
arrOfPairs.push(zp+"Program_Name__c",zData.programName); //JPB180626 generalized program name //JPB180711 added program names
if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);

if (zData.programName === zData.PROGRAM_ZCHARTA) {
	arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB180711 added Urgent Priority__c
}
else if (zData.programName === zData.PROGRAM_ZPAPYRUS) {  //JPB180711 added (zData.programName === "zPapyrus")
	arrOfPairs.push(zp+"Priority__c", "High"); //JPB180711 added High Priority__c
}
else if (zData.programName === zData.PROGRAM_ZREFERRAL) {  //JPB180711 added (zData.programName === "zReferral")
	arrOfPairs.push(zp+"Priority__c", "Medium"); //JPB180711 added Medium Priority__c
}
else if (zData.programName === zData.PROGRAM_ZCARTA) { //JPB180711 added (zData.programName === "zCARTa")
	arrOfPairs.push(zp+"Priority__c", "Critical");	//JPB180711 added Critical Priority__c
}
else if (zData.programName === zData.PROGRAM_TECFIDERA) { //JPB180806 added (zData.programName === "Tecfidera")
	arrOfPairs.push(zp+"Priority__c", "Special");	//JPB180806 added Special Priority__c
}
else if (zData.programName === zData.PROGRAM_SPINRAZA) { //JPB181022 added (zData.programName === "SPINRAZA")
	arrOfPairs.push(zp+"Priority__c", "Standard");	//JPB180808 added Standard Priority__c}
}
else 
{
	arrOfPairs.push(zp+"Priority__c", "Normal");
}

arrOfPairs.push(zp+"sentFaxTo__c",doc.deliveredTo); //ERS170628 caller id
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
if (zData.reviewedStatus) {arrOfPairs.push(zp+"Stage__c", zData.reviewedStatus); } else {//ERS190118 #53000
arrOfPairs.push(zp+"Stage__c", "Received"); //ERS170731 #40593
}

alert("Reviewed Status before setting it to Received: " + X(doc, "X_reviewedStatus"));
alert("zData.reviewedStatus = " + zData.reviewedStatus);
var sfId = createAndAttach(doc, zStack, "New " + zData.programName + " zStack received", arrOfPairs); //JPB180626 removed + formatNow from link
alert("#### Stack Received. Attached to: " + sfId);
arrOfPairs = [];
arrOfPairs.push("db-label", "New " + zData.programName + " zStack received "); //JPB180626 relabeled to program JPB180626 removed + formatNow
arrOfPairs.push("db-BATES", sfId + "-STACK");
arrOfPairs.push("X_sfStackId",sfId); //ERS170727 #40447
var signedStatus = "";  //JPB190117 added signature checkbox function
alert("@@@@ zData.reviewedStatus = " + zData.reviewedStatus);  //JPB190226 Debugging... 
if ("Signed" === zData.reviewedStatus) {
    var now0 = getCurDateAndTime(doc,false,true);
    signedStatus = "Signed by agent at "+now0+"<br/>"; //JPB190226 Doc set looks for "by agent". ERS170909 #40592
}
alert("SignedStatus = " + signedStatus);
if (1===1) { //ERS180103 set as Received #41155
    var ba="Received";
    var now0 = getCurDateAndTime(doc,false,true);
	alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by agent at "+now0+"<br/>" + signedStatus); //ERS170909 #40592
}
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
alert(arrOfPairs);
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
updateDB(doc, arrOfPairs);
 /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
