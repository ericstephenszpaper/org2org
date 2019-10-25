<!--
// Name: Create zStack
// Committer: judson.bruno@zpaper.com
// Update: alert("@@@@ RETURNING FROM RULE; NOT CREATING NEW STACK (THIS IS WHAT JUDSON WANTS)"); JPB191014 now upload will create a zStack
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-14 18:49:13","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA3MDUgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL3ZhciBrZXl3b3Jkcz1bIk5FVzpEb2N1bWVudCBTdGFjayJdOyAvL0VSUzE5MDMyNiAjNTc0NTYgIkVOUkw6Il07IHdpbGwgYWx3YXlzIG1hdGNoIGNoYW5nZWQgdG8gTkVXIEpQQjE5MDYwNAp2YXIga2V5d29yZE1hcD17fTsgCnZhciBrZXl3b3Jkcz1bIk5FVzpEb2N1bWVudCBTdGFja34iLCJFTlJMOkVucm9sbG1lbnR+IiwiRU5STDpFTlJPTExNRU5UfiIsIkNPTjpDb25zZW50fiIsIkNPTjpjb25zZW50fiIsIkZBQzpTZXR0aW5nfiIsIkZBQzpEaXN0cmlidXRpb25+IiwiU1RBUlQ6U3RhcnQgRm9ybX4iLCJDSEs6Q2hlY2tsaXN0fiIsIkhJUEFBOkFVVEhPUklaQVRJT05+IiwiSElQQUE6SElQQUF+IiwiSElQQUE6UE9SVEFCSUxJVFl+IiwiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiRklOOlcyfiIsIklDOk1lbWJlciBJRH4iLCJGQVg6Il07CmtleXdvcmRNYXBbIlRFTlIiXSA9IlRFTlI6U3RhcnQgRm9ybSI7IAprZXl3b3JkTWFwWyJORVciXSA9Ik5FVzpEb2N1bWVudCBTdGFjayI7CmtleXdvcmRNYXBbIkVOUkwiXSA9IkVOUkw6RW5yb2xsbWVudCBGb3JtIjsKa2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKa2V5d29yZE1hcFsiRkFYIl0gPSJORVc6RG9jdW1lbnQgU3RhY2siOwprZXl3b3JkTWFwWyJTVEFSVCJdID0iTkVXOkRvY3VtZW50IFN0YWNrIjsKLy9rZXl3b3JkTWFwWyJDT04iXSA9IkNPTjpDb25zZW50IjsKLy9rZXl3b3JkTWFwWyJISVBBQSJdID0iSElQQUE6SElQQUEgQVVUSE9SSVpBVElPTiI7Ci8va2V5d29yZE1hcFsiUkVGIl0gPSJSRUY6UkVGRVJSQUwiOwovL2tleXdvcmRNYXBbIkZJTiJdID0iRklOOlctMiI7Ci8va2V5d29yZE1hcFsiSUMiXSA9IklDOk1lbWJlciBJRCI7Ci8va2V5d29yZE1hcFsiQ0hLIl0gPSJDSEs6Q2hlY2tsaXN0IjsKCgp2YXIgelR5cGU9ZG9jLlgoIlhfZG9jVHlwZSIpOyAKaWYgKHpEYXRhLmRvY1R5cGVPQ1I9PT0iRkFYIiB8fCB6RGF0YS5kb2NUeXBlT0NSPT09IiIpIHsgCiAgICB6RGF0YS5kb2NUeXBlT0NSPXpEYXRhLmRvY1R5cGVyKGRvYyxrZXl3b3Jkcyk7IAogICAgYWxlcnQoImRvY1R5cGUgd2FzICIrZG9jLmRvY1R5cGUrIiBub3cgIisgekRhdGEuZG9jVHlwZU9DUik7CiAgICB6VHlwZT1kb2MuWCgiWF9kb2NUeXBlIik7CiAgICBpZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsekRhdGEuZG9jVHlwZU9DUik7CiAgICAJYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIix6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOyAKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgIH0KfSBlbHNlIHsgLy9FUlMxOTAxMTkgVE9ETyBhdXRvU3BsaXQgIzUzMDAwCiAgICB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOyAKICAgIGFsZXJ0KCJFUlMxOTAxMTkgQXV0b0RyaXZlIGZvdW5kICIrelR5cGUrIiBmaXJzdCBvciBsYXN0LiBXaGljaCBpcyBpdD8iKTsKfQoKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IAoKYWxlcnQoIiMjIyMgZmF4IHdhcyBkZWxpdmVyZWQgdG8gbnVtYmVyOiAiICsgZG9jLmRlbGl2ZXJlZFRvKTsgCnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgenA9IlpQQVBFUl9fIjsgCnZhciB6U3RhY2s9enArInpTdGFja19fYyI7IAoKaWYoelR5cGUgPT0gIkZBWCIgfHwgelR5cGUgPT0gIlNUQVJUIil7IC8vUFYxOTA3MDcgRG9jdHlwZSBhcyBuZXcKCXpUeXBlPSJORVciOwoKfQoKYWxlcnQoIkBAQEB6VHlwZT0iK3pUeXBlKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwga2V5d29yZE1hcFt6VHlwZV0pOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGF0dXNfX2MiLCAiUmVjZWl2ZWQiKTsgLy8gUFYxOTA0MTggVXBkYXRlZCBzdGFnZSB0byBiZSBSZWNlaXZlZCAKCmFsZXJ0KCJFUlMxODA1MDUgZG9jLmRlbGl2ZXJlZEZyb209Iitkb2MuZGVsaXZlcmVkRnJvbSk7Cgp2YXIgY2hhbm5lbD0iRmF4IjsgLy9KUEIxOTA1MjkgYWRkZWQgY29tbXVuaXR5IHRvIHRoZSBjaGFubmVsCnZhciBkZWxpdmVyZWRGcm9tID0gZG9jLmRlbGl2ZXJlZEZyb20gKyAiIjsgLy9DUk4xODA5MDkgTWFrZSBzdXJlIHdlIGhhdmUgYSBKYXZhc2NyaXB0IHN0cmluZwp2YXIgZGVsaXZlcmVkVG8gPSBkb2MuZGVsaXZlcmVkVG8gKyAiIjsJLy9KUEIxOTA1MjkgQ2hlY2sgZGVsaXZlcmVkVG8gZm9yIGNvbW11bml0eSB1cGxvYWRlcwppZiAoZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHtjaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE4MDUwNSAjNDgxMDEKaWYgKGlzTmFOKGRlbGl2ZXJlZFRvKSkgewoJaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewoJCWNoYW5uZWwgPSAiY29tbXVuaXR5IjsKCX0gCgllbHNlIGlmIChkZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpID49IDApIHsKCQljaGFubmVsID0gInVwbG9hZCIKCX0KCWVsc2UgewoJCWNoYW5uZWw9IlNjYW4iOwoJfQp9IAphbGVydCgiIyMjIyBkZWxpdmVyZWRUbyA9ICIgKyBkZWxpdmVyZWRUbyArICIsIGNoYW5uZWwgPSAiICsgY2hhbm5lbCk7Ci8vSlBCMTkwOTMwIElmIHRoaXMgaXMgYW4gdXBsb2FkLCBjaGVjayB0byBzZWUgaWYgd2UgaGF2ZSBhIFNhbGVzZm9yY2UgSWQgdG8gYXR0YWNoIHRvCnZhciB1cGxvYWRMYWJlbCA9IG51bGw7CmlmICgidXBsb2FkIiA9PSBjaGFubmVsKSB7CgkvLyBVcGxvYWQgZmlsZW5hbWUgbG9va3MgbGlrZSB0aGlzOiBlbWFpbC1saWdodG5pbmdVcGxvYWQtc2ZJZC1kb2NUeXBlLW5hbWUgb2YgdXBsb2FkZWQgZmlsZQoJdmFyIGZyb21GaWxlID0gZG9jLmZyb21GaWxlICsgIiI7Cgl2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgnLScpOwoJdmFyIHNmSWQsIGRvY1R5cGVVcGxvYWQgPSAiVU5LTk9XTiI7CglpZiAocGFydHMubGVuZ3RoID4gMikgeyBzZklkID0gcGFydHNbMl07IH0KCWlmIChwYXJ0cy5sZW5ndGggPiAzKSB7IGRvY1R5cGVVcGxvYWQgPSBwYXJ0c1szXTsgfQoJYWxlcnQoIkBAQEBAIEF0dGFjaGluZyBpbmNvbWluZyBkb2N1bWVudCB0byBTYWxlc2ZvcmNlIElkOiAiICsgc2ZJZCk7CglhbGVydCgiQEBAQEAgZG9jVHlwZSBvZiB1cGxvYWRlZCBkb2M6ICIgKyBkb2NUeXBlVXBsb2FkKTsKCWF0dGFjaChkb2MsICJEb2N1bWVudCB1cGxvYWRlZCAtICIgKyBkb2NUeXBlVXBsb2FkLCBzZklkKTsKCXZhciBhcnJPZlBhaXJzVXBsb2FkID0gW107CiAgICB2YXIgYmE9IlJlY2VpdmVkIjsKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwoJYWxlcnQoIiQkJCBub3cwID0gIiArIG5vdzAgKyAiLCBiYSA9ICIgKyBiYSk7CiAgICBhcnJPZlBhaXJzVXBsb2FkLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnNVcGxvYWQucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSBhZ2VudCBhdCAiK25vdzArIjxici8+IiArIHNpZ25lZFN0YXR1cyk7CglhcnJPZlBhaXJzVXBsb2FkLnB1c2goIlhfZG9jVHlwZSIsIGRvY1R5cGVVcGxvYWQpOwoJdXBsb2FkTGFiZWwgPSAiTmV3ICIgKyBkb2NUeXBlVXBsb2FkICsgIiBEb2N1bWVudCBVcGxvYWRlZCI7CglhcnJPZlBhaXJzVXBsb2FkLnB1c2goImRiLWxhYmVsIiwgdXBsb2FkTGFiZWwpOyAvL0pQQjE5MDYwNCBjaGFuZ2VkIHRvIHdoYXQgS2VuIHdhbnRlZCBmcm9tIEluaXRpYWwgUGF0aWVudCBFbnJvbGxtZW50IFBhY2tldAoJdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzVXBsb2FkKTsKCS8vYWxlcnQoIkBAQEAgUkVUVVJOSU5HIEZST00gUlVMRTsgTk9UIENSRUFUSU5HIE5FVyBTVEFDSyAoVEhJUyBJUyBXSEFUIEpVRFNPTiBXQU5UUykiKTsgSlBCMTkxMDE0IG5vdyB1cGxvYWQgd2lsbCBjcmVhdGUgYSB6U3RhY2sKCS8vcmV0dXJuOwp9CmFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsY2hhbm5lbCk7CmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwphcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CmFsZXJ0KCJAQEB6RGF0YS5wcm9ncmFtTmFtZT0iK3pEYXRhLnByb2dyYW1OYW1lKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiQ2xhc3NpZmljYXRpb25fX2MiLHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7IAppZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKCmlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7CglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVyZ2VudCIpOyAvL0pQQjE5MDQyNiBjaGFuZ2VkIHRvIGNsYXNzaWZpY2F0aW9uIGZyb20gcHJvZ3JhbQp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7ICAKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiSGlnaCIpOyAKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0FSVEEpIHsgCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7CQp9Ci8qZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlJFRkVSUkFMKSB7ICAKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7IAp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1BBTFZFTykgeyAKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiU3BlY2lhbCIpOwkKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9WSU5ESUNPKSB7IAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJTdGFuZGFyZCIpOwkKfSovCmVsc2UgCnsKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7Cn0KCmFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgKCJjb21tdW5pdHkiID09PSBjaGFubmVsIHx8ICJ1cGxvYWQiID09PSBjaGFubmVsID8gY2hhbm5lbCA6IGRvYy5kZWxpdmVyZWRUbykpOyAvL0pQQjE5MDUyOSBhZGRlZCBzbyBDb21tdW5pdHkgc2hvd3MgdXAgaW4gTWFzdGVyIEludGFrZSBMaXN0CmFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsZG9jLmRlbGl2ZXJlZEZyb20pOwppZiAoekRhdGEucmV2aWV3ZWRTdGF0dXMpIHthcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyB9IGVsc2UgewphcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IAp9CgphbGVydCgiUmV2aWV3ZWQgU3RhdHVzIGJlZm9yZSBzZXR0aW5nIGl0IHRvIFJlY2VpdmVkOiAiICsgWChkb2MsICJYX3Jldmlld2VkU3RhdHVzIikpOwphbGVydCgiekRhdGEucmV2aWV3ZWRTdGF0dXMgPSAiICsgekRhdGEucmV2aWV3ZWRTdGF0dXMpOwp2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpTdGFjaywgekRhdGEuY2xhc3NpZmljYXRpb24gKyAiIE5ldyBTdGFjayIsIGFyck9mUGFpcnMpOyAvL0pQQjE5MDYwNCBjaGFuZ2VkIHRvIHdoYXQgS2VuIHdhbnRlZCBmcm9tIEluaXRpYWwgUGF0aWVudCBFbnJvbGxtZW50IFBhY2tldCAKYWxlcnQoIiMjIyMgU3RhY2sgUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CmFyck9mUGFpcnMgPSBbXTsKLy9KUEIxOTA1MjkgRml4IHVwIHRoZSBmdW5reSBkZXN0aW5hdGlvbi9sYWJlbCBmb3IgY29tbXVuaXR5IHVwbG9hZHMKaWYgKCJjb21tdW5pdHkiID09PSBjaGFubmVsKSB7Cgl2YXIgZnJvbUZpbGUgPSBkb2MuZnJvbUZpbGUgKyAiIjsKCXZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCctJyk7Cgl2YXIgYnVmZmVyID0gIiI7Cglmb3IgKHZhciBpPTA7IGk8cGFydHMubGVuZ3RoOyBpKyspIHsKCQlpZiAoaSA+IDApIHsgYnVmZmVyICs9ICctJzsgfQoJCWlmICgxID09PSBpKSAJeyBidWZmZXIgKz0gImNvbW11bml0eSI7IH0KCQllbHNlIAkJCXsgYnVmZmVyICs9IHBhcnRzW2ldOyB9Cgl9CglhcnJPZlBhaXJzLnB1c2goIlhfZnJvbUZpbGUiLCBidWZmZXIpOwoJYXJyT2ZQYWlycy5wdXNoKCJYX2Rlc3RpbmF0aW9uIiwgImNvbW11bml0eSIpOwp9CmlmICgidXBsb2FkIiAhPSBjaGFubmVsKSB7CglhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgekRhdGEuY2xhc3NpZmljYXRpb24gKyAiIE5ldyBTdGFjayIpOyAvL0pQQjE5MDYwNCBjaGFuZ2VkIHRvIHdoYXQgS2VuIHdhbnRlZCBmcm9tIEluaXRpYWwgUGF0aWVudCBFbnJvbGxtZW50IFBhY2tldAogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCB6VHlwZSk7Ly8gUFYxOTA3MDcgdG8gdXBkYXRlIHR5cGUgb24gZG9jc2V0Cn0KYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CmFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLHNmSWQpOyAKdmFyIHNpZ25lZFN0YXR1cyA9ICIiOyAgCmFsZXJ0KCJAQEBAIHpEYXRhLnJldmlld2VkU3RhdHVzID0gIiArIHpEYXRhLnJldmlld2VkU3RhdHVzKTsgIAppZiAoIlNpZ25lZCIgPT09IHpEYXRhLnJldmlld2VkU3RhdHVzKSB7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIHNpZ25lZFN0YXR1cyA9ICJTaWduZWQgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiI7IAp9CmFsZXJ0KCJTaWduZWRTdGF0dXMgPSAiICsgc2lnbmVkU3RhdHVzKTsKaWYgKDE9PT0xKSB7IAogICAgdmFyIGJhPSJSZWNlaXZlZCI7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKCWFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwICsgIiwgYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiIgKyBzaWduZWRTdGF0dXMpOwoKfQoKYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKYWxlcnQoYXJyT2ZQYWlycyk7CmFsZXJ0KCJAQEAgY2FsbGluZyB1cGRhdGVEQiB3aXRoIHBhcmFtczogQEBAQEBAQEBAQEBAIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAvKiBFTkQgKi8="},"ordinal":14}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190705 updated rule for Sales Demo Org
//var keywords=["NEW:Document Stack"]; //ERS190326 #57456 "ENRL:"]; will always match changed to NEW JPB190604
var keywordMap={}; 
var keywords=["NEW:Document Stack~","ENRL:Enrollment~","ENRL:ENROLLMENT~","CON:Consent~","CON:consent~","FAC:Setting~","FAC:Distribution~","START:Start Form~","CHK:Checklist~","HIPAA:AUTHORIZATION~","HIPAA:HIPAA~","HIPAA:PORTABILITY~","REF:REFERRAL","REF:Referral","FIN:W2~","IC:Member ID~","FAX:"];
keywordMap["TENR"] ="TENR:Start Form"; 
keywordMap["NEW"] ="NEW:Document Stack";
keywordMap["ENRL"] ="ENRL:Enrollment Form";
keywordMap["FAC"] ="FAC:Facility Enrollment Form";
keywordMap["FAX"] ="NEW:Document Stack";
keywordMap["START"] ="NEW:Document Stack";
//keywordMap["CON"] ="CON:Consent";
//keywordMap["HIPAA"] ="HIPAA:HIPAA AUTHORIZATION";
//keywordMap["REF"] ="REF:REFERRAL";
//keywordMap["FIN"] ="FIN:W-2";
//keywordMap["IC"] ="IC:Member ID";
//keywordMap["CHK"] ="CHK:Checklist";


var zType=doc.X("X_docType"); 
if (zData.docTypeOCR==="FAX" || zData.docTypeOCR==="") { 
    zData.docTypeOCR=zData.docTyper(doc,keywords); 
    alert("docType was "+doc.docType+" now "+ zData.docTypeOCR);
    zType=doc.X("X_docType");
    if (doc.docType != zData.docTypeOCR) {
        var arrOfPairs0 = [];
        arrOfPairs0.push("X_docTypeOCR",zData.docTypeOCR);
    	arrOfPairs0.push("X_docType",zData.docTypeOCR);
        zType=zData.docTypeOCR; 
        updateDB(doc, arrOfPairs0);
    }
} else { //ERS190119 TODO autoSplit #53000
    zType=zData.docTypeOCR; 
    alert("ERS190119 AutoDrive found "+zType+" first or last. Which is it?");
}

zData.setbrandprogram(doc); 

alert("#### fax was delivered to number: " + doc.deliveredTo); 
var formatNow = getCurDateAndTime(doc);
var arrOfPairs = [];
var zp="ZPAPER__"; 
var zStack=zp+"zStack__c"; 

if(zType == "FAX" || zType == "START"){ //PV190707 Doctype as new
	zType="NEW";

}

alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", keywordMap[zType]); 
arrOfPairs.push(zp+"Status__c", "Received"); // PV190418 Updated stage to be Received 

alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);

var channel="Fax"; //JPB190529 added community to the channel
var deliveredFrom = doc.deliveredFrom + ""; //CRN180909 Make sure we have a Javascript string
var deliveredTo = doc.deliveredTo + "";	//JPB190529 Check deliveredTo for community uploades
if (deliveredFrom.indexOf("@")>-1 || deliveredFrom.indexOf(".")>-1) {channel="Email";} //ERS180505 #48101
if (isNaN(deliveredTo)) {
	if (deliveredTo.toLowerCase().indexOf("community") >= 0) {
		channel = "community";
	} 
	else if (deliveredTo.toLowerCase().indexOf("upload") >= 0) {
		channel = "upload"
	}
	else {
		channel="Scan";
	}
} 
alert("#### deliveredTo = " + deliveredTo + ", channel = " + channel);
//JPB190930 If this is an upload, check to see if we have a Salesforce Id to attach to
var uploadLabel = null;
if ("upload" == channel) {
	// Upload filename looks like this: email-lightningUpload-sfId-docType-name of uploaded file
	var fromFile = doc.fromFile + "";
	var parts = fromFile.split('-');
	var sfId, docTypeUpload = "UNKNOWN";
	if (parts.length > 2) { sfId = parts[2]; }
	if (parts.length > 3) { docTypeUpload = parts[3]; }
	alert("@@@@@ Attaching incoming document to Salesforce Id: " + sfId);
	alert("@@@@@ docType of uploaded doc: " + docTypeUpload);
	attach(doc, "Document uploaded - " + docTypeUpload, sfId);
	var arrOfPairsUpload = [];
    var ba="Received";
    var now0 = getCurDateAndTime(doc,false,true);
	alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairsUpload.push("X_reviewedStatus",ba);
    arrOfPairsUpload.push("X_reviews",X(doc,"X_reviews")+ba+" by agent at "+now0+"<br/>" + signedStatus);
	arrOfPairsUpload.push("X_docType", docTypeUpload);
	uploadLabel = "New " + docTypeUpload + " Document Uploaded";
	arrOfPairsUpload.push("db-label", uploadLabel); //JPB190604 changed to what Ken wanted from Initial Patient Enrollment Packet
	updateDB(doc, arrOfPairsUpload);
	//alert("@@@@ RETURNING FROM RULE; NOT CREATING NEW STACK (THIS IS WHAT JUDSON WANTS)"); JPB191014 now upload will create a zStack
	//return;
}
arrOfPairs.push(zp+"Channel__c",channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
alert("@@@zData.programName="+zData.programName); 
arrOfPairs.push(zp+"Classification__c",zData.classification); 
arrOfPairs.push(zp+"Program_Name__c",zData.programName); 
if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);

if (zData.classification === zData.PROGRAM_ZCHARTA) {
	arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB190426 changed to classification from program
}
else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {  
	arrOfPairs.push(zp+"Priority__c", "High"); 
}
else if (zData.classification === zData.PROGRAM_ZCARTA) { 
	arrOfPairs.push(zp+"Priority__c", "Critical");	
}
/*else if (zData.classification === zData.PROGRAM_ZREFERRAL) {  
	arrOfPairs.push(zp+"Priority__c", "Medium"); 
}
else if (zData.classification === zData.PROGRAM_PALVEO) { 
	arrOfPairs.push(zp+"Priority__c", "Special");	
}
else if (zData.classification === zData.PROGRAM_VINDICO) { 
	arrOfPairs.push(zp+"Priority__c", "Standard");	
}*/
else 
{
	arrOfPairs.push(zp+"Priority__c", "Normal");
}

arrOfPairs.push(zp+"sentFaxTo__c", ("community" === channel || "upload" === channel ? channel : doc.deliveredTo)); //JPB190529 added so Community shows up in Master Intake List
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
if (zData.reviewedStatus) {arrOfPairs.push(zp+"Stage__c", zData.reviewedStatus); } else {
arrOfPairs.push(zp+"Stage__c", "Received"); 
}

alert("Reviewed Status before setting it to Received: " + X(doc, "X_reviewedStatus"));
alert("zData.reviewedStatus = " + zData.reviewedStatus);
var sfId = createAndAttach(doc, zStack, zData.classification + " New Stack", arrOfPairs); //JPB190604 changed to what Ken wanted from Initial Patient Enrollment Packet 
alert("#### Stack Received. Attached to: " + sfId);
arrOfPairs = [];
//JPB190529 Fix up the funky destination/label for community uploads
if ("community" === channel) {
	var fromFile = doc.fromFile + "";
	var parts = fromFile.split('-');
	var buffer = "";
	for (var i=0; i<parts.length; i++) {
		if (i > 0) { buffer += '-'; }
		if (1 === i) 	{ buffer += "community"; }
		else 			{ buffer += parts[i]; }
	}
	arrOfPairs.push("X_fromFile", buffer);
	arrOfPairs.push("X_destination", "community");
}
if ("upload" != channel) {
	arrOfPairs.push("db-label", zData.classification + " New Stack"); //JPB190604 changed to what Ken wanted from Initial Patient Enrollment Packet
    arrOfPairs.push("X_docType", zType);// PV190707 to update type on docset
}
arrOfPairs.push("db-BATES", sfId + "-STACK");
arrOfPairs.push("X_sfStackId",sfId); 
var signedStatus = "";  
alert("@@@@ zData.reviewedStatus = " + zData.reviewedStatus);  
if ("Signed" === zData.reviewedStatus) {
    var now0 = getCurDateAndTime(doc,false,true);
    signedStatus = "Signed by agent at "+now0+"<br/>"; 
}
alert("SignedStatus = " + signedStatus);
if (1===1) { 
    var ba="Received";
    var now0 = getCurDateAndTime(doc,false,true);
	alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by agent at "+now0+"<br/>" + signedStatus);

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
