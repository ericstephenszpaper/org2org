<!--
// Name: Create zStack
// Committer: judson.bruno@zpaper.com
// Update: JPB190930 If this is an upload, check to see if we have a Salesforce Id to attach to
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-09-30 21:23:47","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA3MDUgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL3ZhciBrZXl3b3Jkcz1bIk5FVzpEb2N1bWVudCBTdGFjayJdOyAvL0VSUzE5MDMyNiAjNTc0NTYgIkVOUkw6Il07IHdpbGwgYWx3YXlzIG1hdGNoIGNoYW5nZWQgdG8gTkVXIEpQQjE5MDYwNAp2YXIga2V5d29yZE1hcD17fTsgCnZhciBrZXl3b3Jkcz1bIk5FVzpEb2N1bWVudCBTdGFja34iLCJFTlJMOkVucm9sbG1lbnR+IiwiRU5STDpFTlJPTExNRU5UfiIsIkNPTjpDb25zZW50fiIsIkNPTjpjb25zZW50fiIsIkZBQzpTZXR0aW5nfiIsIkZBQzpEaXN0cmlidXRpb25+IiwiU1RBUlQ6U3RhcnQgRm9ybX4iLCJDSEs6Q2hlY2tsaXN0fiIsIkhJUEFBOkFVVEhPUklaQVRJT05+IiwiSElQQUE6SElQQUF+IiwiSElQQUE6UE9SVEFCSUxJVFl+IiwiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiRklOOlcyfiIsIklDOk1lbWJlciBJRH4iLCJGQVg6Il07CmtleXdvcmRNYXBbIlRFTlIiXSA9IlRFTlI6U3RhcnQgRm9ybSI7IAprZXl3b3JkTWFwWyJORVciXSA9Ik5FVzpEb2N1bWVudCBTdGFjayI7CmtleXdvcmRNYXBbIkVOUkwiXSA9IkVOUkw6RW5yb2xsbWVudCBGb3JtIjsKa2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKa2V5d29yZE1hcFsiRkFYIl0gPSJORVc6RG9jdW1lbnQgU3RhY2siOwprZXl3b3JkTWFwWyJTVEFSVCJdID0iTkVXOkRvY3VtZW50IFN0YWNrIjsKLy9rZXl3b3JkTWFwWyJDT04iXSA9IkNPTjpDb25zZW50IjsKLy9rZXl3b3JkTWFwWyJISVBBQSJdID0iSElQQUE6SElQQUEgQVVUSE9SSVpBVElPTiI7Ci8va2V5d29yZE1hcFsiUkVGIl0gPSJSRUY6UkVGRVJSQUwiOwovL2tleXdvcmRNYXBbIkZJTiJdID0iRklOOlctMiI7Ci8va2V5d29yZE1hcFsiSUMiXSA9IklDOk1lbWJlciBJRCI7Ci8va2V5d29yZE1hcFsiQ0hLIl0gPSJDSEs6Q2hlY2tsaXN0IjsKCgp2YXIgelR5cGU9ZG9jLlgoIlhfZG9jVHlwZSIpOyAKaWYgKHpEYXRhLmRvY1R5cGVPQ1I9PT0iRkFYIiB8fCB6RGF0YS5kb2NUeXBlT0NSPT09IiIpIHsgCiAgICB6RGF0YS5kb2NUeXBlT0NSPXpEYXRhLmRvY1R5cGVyKGRvYyxrZXl3b3Jkcyk7IAogICAgYWxlcnQoImRvY1R5cGUgd2FzICIrZG9jLmRvY1R5cGUrIiBub3cgIisgekRhdGEuZG9jVHlwZU9DUik7CiAgICB6VHlwZT1kb2MuWCgiWF9kb2NUeXBlIik7CiAgICBpZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsekRhdGEuZG9jVHlwZU9DUik7CiAgICAJYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIix6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOyAKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgIH0KfSBlbHNlIHsgLy9FUlMxOTAxMTkgVE9ETyBhdXRvU3BsaXQgIzUzMDAwCiAgICB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOyAKICAgIGFsZXJ0KCJFUlMxOTAxMTkgQXV0b0RyaXZlIGZvdW5kICIrelR5cGUrIiBmaXJzdCBvciBsYXN0LiBXaGljaCBpcyBpdD8iKTsKfQoKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IAoKYWxlcnQoIiMjIyMgZmF4IHdhcyBkZWxpdmVyZWQgdG8gbnVtYmVyOiAiICsgZG9jLmRlbGl2ZXJlZFRvKTsgCnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgenA9IlpQQVBFUl9fIjsgCnZhciB6U3RhY2s9enArInpTdGFja19fYyI7IAoKaWYoelR5cGUgPT0gIkZBWCIgfHwgelR5cGUgPT0gIlNUQVJUIil7IC8vUFYxOTA3MDcgRG9jdHlwZSBhcyBuZXcKCXpUeXBlPSJORVciOwoKfQoKYWxlcnQoIkBAQEB6VHlwZT0iK3pUeXBlKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwga2V5d29yZE1hcFt6VHlwZV0pOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGF0dXNfX2MiLCAiUmVjZWl2ZWQiKTsgLy8gUFYxOTA0MTggVXBkYXRlZCBzdGFnZSB0byBiZSBSZWNlaXZlZCAKCmFsZXJ0KCJFUlMxODA1MDUgZG9jLmRlbGl2ZXJlZEZyb209Iitkb2MuZGVsaXZlcmVkRnJvbSk7Cgp2YXIgY2hhbm5lbD0iRmF4IjsgLy9KUEIxOTA1MjkgYWRkZWQgY29tbXVuaXR5IHRvIHRoZSBjaGFubmVsCnZhciBkZWxpdmVyZWRGcm9tID0gZG9jLmRlbGl2ZXJlZEZyb20gKyAiIjsgLy9DUk4xODA5MDkgTWFrZSBzdXJlIHdlIGhhdmUgYSBKYXZhc2NyaXB0IHN0cmluZwp2YXIgZGVsaXZlcmVkVG8gPSBkb2MuZGVsaXZlcmVkVG8gKyAiIjsJLy9KUEIxOTA1MjkgQ2hlY2sgZGVsaXZlcmVkVG8gZm9yIGNvbW11bml0eSB1cGxvYWRlcwppZiAoZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHtjaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE4MDUwNSAjNDgxMDEKaWYgKGlzTmFOKGRlbGl2ZXJlZFRvKSkgewoJaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewoJCWNoYW5uZWwgPSAiY29tbXVuaXR5IjsKCX0gCgllbHNlIGlmIChkZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpID49IDApIHsKCQljaGFubmVsID0gInVwbG9hZCIKCX0KCWVsc2UgewoJCWNoYW5uZWw9IlNjYW4iOwoJfQp9IAphbGVydCgiIyMjIyBkZWxpdmVyZWRUbyA9ICIgKyBkZWxpdmVyZWRUbyArICIsIGNoYW5uZWwgPSAiICsgY2hhbm5lbCk7Ci8vSlBCMTkwOTMwIElmIHRoaXMgaXMgYW4gdXBsb2FkLCBjaGVjayB0byBzZWUgaWYgd2UgaGF2ZSBhIFNhbGVzZm9yY2UgSWQgdG8gYXR0YWNoIHRvCmlmICgidXBsb2FkIiA9PSBjaGFubmVsKSB7CgkvLyBVcGxvYWQgZmlsZW5hbWUgbG9va3MgbGlrZSB0aGlzOiBlbWFpbC1saWdodG5pbmdVcGxvYWQtc2ZJZC1kb2NUeXBlLW5hbWUgb2YgdXBsb2FkZWQgZmlsZQoJdmFyIGZyb21GaWxlID0gZG9jLmZyb21GaWxlICsgIiI7Cgl2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgnLScpOwoJdmFyIHNmSWQsIGRvY1R5cGVVcGxvYWQgPSAiVU5LTk9XTiI7CglpZiAocGFydHMubGVuZ3RoID4gMikgeyBzZklkID0gcGFydHNbMl07IH0KCWlmIChwYXJ0cy5sZW5ndGggPiAzKSB7IGRvY1R5cGVVcGxvYWQgPSBwYXJ0c1szXTsgfQoJYWxlcnQoIkBAQEBAIEF0dGFjaGluZyBpbmNvbWluZyBkb2N1bWVudCB0byBTYWxlc2ZvcmNlIElkOiAiICsgc2ZJZCk7CglhbGVydCgiQEBAQEAgZG9jVHlwZSBvZiB1cGxvYWRlZCBkb2M6ICIgKyBkb2NUeXBlVXBsb2FkKTsKCWF0dGFjaChkb2MsICJEb2N1bWVudCB1cGxvYWRlZCAtICIgKyBkb2NUeXBlVXBsb2FkLCBzZklkKTsKCXZhciBhcnJPZlBhaXJzVXBsb2FkID0gW107CiAgICB2YXIgYmE9IlJlY2VpdmVkIjsKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwoJYWxlcnQoIiQkJCBub3cwID0gIiArIG5vdzAgKyAiLCBiYSA9ICIgKyBiYSk7CiAgICBhcnJPZlBhaXJzVXBsb2FkLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnNVcGxvYWQucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSBhZ2VudCBhdCAiK25vdzArIjxici8+IiArIHNpZ25lZFN0YXR1cyk7CglhcnJPZlBhaXJzVXBsb2FkLnB1c2goIlhfZG9jVHlwZSIsIGRvY1R5cGVVcGxvYWQpOwoJYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJkYi1sYWJlbCIsICJOZXcgIiArIGRvY1R5cGVVcGxvYWQgKyAiIERvY3VtZW50IFVwbG9hZGVkIik7IC8vSlBCMTkwNjA0IGNoYW5nZWQgdG8gd2hhdCBLZW4gd2FudGVkIGZyb20gSW5pdGlhbCBQYXRpZW50IEVucm9sbG1lbnQgUGFja2V0Cgl1cGRhdGVEQihkb2MsIGFyck9mUGFpcnNVcGxvYWQpOwoJYWxlcnQoIkBAQEAgUkVUVVJOSU5HIEZST00gUlVMRTsgTk9UIENSRUFUSU5HIE5FVyBTVEFDSyAoVEhJUyBJUyBXSEFUIEpVRFNPTiBXQU5UUykiKTsKCXJldHVybjsKfQphcnJPZlBhaXJzLnB1c2goenArIkNoYW5uZWxfX2MiLGNoYW5uZWwpOwphcnJPZlBhaXJzLnB1c2goenArImxhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CmFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goenArIlBhZ2VzX19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwphbGVydCgiQEBAekRhdGEucHJvZ3JhbU5hbWU9Iit6RGF0YS5wcm9ncmFtTmFtZSk7IAphcnJPZlBhaXJzLnB1c2goenArIkNsYXNzaWZpY2F0aW9uX19jIix6RGF0YS5jbGFzc2lmaWNhdGlvbik7IAphcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsekRhdGEucHJvZ3JhbU5hbWUpOyAKaWYgKHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEucGF0RW5yb2xsUXVldWVJZCk7CgppZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNIQVJUQSkgewoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsgLy9KUEIxOTA0MjYgY2hhbmdlZCB0byBjbGFzc2lmaWNhdGlvbiBmcm9tIHByb2dyYW0KfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUykgeyAgCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsgCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7IAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJDcml0aWNhbCIpOwkKfQovKmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pSRUZFUlJBTCkgeyAgCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk1lZGl1bSIpOyAKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9QQUxWRU8pIHsgCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlNwZWNpYWwiKTsJCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fVklORElDTykgeyAKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiU3RhbmRhcmQiKTsJCn0qLwplbHNlIAp7CglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk5vcm1hbCIpOwp9CgphcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsICgiY29tbXVuaXR5IiA9PT0gY2hhbm5lbCB8fCAidXBsb2FkIiA9PT0gY2hhbm5lbCA/IGNoYW5uZWwgOiBkb2MuZGVsaXZlcmVkVG8pKTsgLy9KUEIxOTA1MjkgYWRkZWQgc28gQ29tbXVuaXR5IHNob3dzIHVwIGluIE1hc3RlciBJbnRha2UgTGlzdAphcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLGRvYy5kZWxpdmVyZWRGcm9tKTsKaWYgKHpEYXRhLnJldmlld2VkU3RhdHVzKSB7YXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsIHpEYXRhLnJldmlld2VkU3RhdHVzKTsgfSBlbHNlIHsKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyAKfQoKYWxlcnQoIlJldmlld2VkIFN0YXR1cyBiZWZvcmUgc2V0dGluZyBpdCB0byBSZWNlaXZlZDogIiArIFgoZG9jLCAiWF9yZXZpZXdlZFN0YXR1cyIpKTsKYWxlcnQoInpEYXRhLnJldmlld2VkU3RhdHVzID0gIiArIHpEYXRhLnJldmlld2VkU3RhdHVzKTsKdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6U3RhY2ssIHpEYXRhLmNsYXNzaWZpY2F0aW9uICsgIiBOZXcgU3RhY2siLCBhcnJPZlBhaXJzKTsgLy9KUEIxOTA2MDQgY2hhbmdlZCB0byB3aGF0IEtlbiB3YW50ZWQgZnJvbSBJbml0aWFsIFBhdGllbnQgRW5yb2xsbWVudCBQYWNrZXQgCmFsZXJ0KCIjIyMjIFN0YWNrIFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOwphcnJPZlBhaXJzID0gW107Ci8vSlBCMTkwNTI5IEZpeCB1cCB0aGUgZnVua3kgZGVzdGluYXRpb24vbGFiZWwgZm9yIGNvbW11bml0eSB1cGxvYWRzCmlmICgiY29tbXVuaXR5IiA9PT0gY2hhbm5lbCkgewoJdmFyIGZyb21GaWxlID0gZG9jLmZyb21GaWxlICsgIiI7Cgl2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgnLScpOwoJdmFyIGJ1ZmZlciA9ICIiOwoJZm9yICh2YXIgaT0wOyBpPHBhcnRzLmxlbmd0aDsgaSsrKSB7CgkJaWYgKGkgPiAwKSB7IGJ1ZmZlciArPSAnLSc7IH0KCQlpZiAoMSA9PT0gaSkgCXsgYnVmZmVyICs9ICJjb21tdW5pdHkiOyB9CgkJZWxzZSAJCQl7IGJ1ZmZlciArPSBwYXJ0c1tpXTsgfQoJfQoJYXJyT2ZQYWlycy5wdXNoKCJYX2Zyb21GaWxlIiwgYnVmZmVyKTsKCWFyck9mUGFpcnMucHVzaCgiWF9kZXN0aW5hdGlvbiIsICJjb21tdW5pdHkiKTsKfQphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgekRhdGEuY2xhc3NpZmljYXRpb24gKyAiIE5ldyBTdGFjayIpOyAvL0pQQjE5MDYwNCBjaGFuZ2VkIHRvIHdoYXQgS2VuIHdhbnRlZCBmcm9tIEluaXRpYWwgUGF0aWVudCBFbnJvbGxtZW50IFBhY2tldAphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsc2ZJZCk7IAp2YXIgc2lnbmVkU3RhdHVzID0gIiI7ICAKYWxlcnQoIkBAQEAgekRhdGEucmV2aWV3ZWRTdGF0dXMgPSAiICsgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyAgCmlmICgiU2lnbmVkIiA9PT0gekRhdGEucmV2aWV3ZWRTdGF0dXMpIHsKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgc2lnbmVkU3RhdHVzID0gIlNpZ25lZCBieSBhZ2VudCBhdCAiK25vdzArIjxici8+IjsgCn0KYWxlcnQoIlNpZ25lZFN0YXR1cyA9ICIgKyBzaWduZWRTdGF0dXMpOwppZiAoMT09PTEpIHsgCiAgICB2YXIgYmE9IlJlY2VpdmVkIjsKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwoJYWxlcnQoIiQkJCBub3cwID0gIiArIG5vdzAgKyAiLCBiYSA9ICIgKyBiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSBhZ2VudCBhdCAiK25vdzArIjxici8+IiArIHNpZ25lZFN0YXR1cyk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsIHpUeXBlKTsvLyBQVjE5MDcwNyB0byB1cGRhdGUgdHlwZSBvbiBkb2NzZXQKCn0KCmFsZXJ0KCJAQEAgY2FsbGluZyB1cGRhdGVEQiB3aXRoIHBhcmFtczogQEBAQEBAQEBAQEBAIik7CmFsZXJ0KGFyck9mUGFpcnMpOwphbGVydCgiQEBAIGNhbGxpbmcgdXBkYXRlREIgd2l0aCBwYXJhbXM6IEBAQEBAQEBAQEBAQCIpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogLyogRU5EICov"},"ordinal":14}

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
	arrOfPairsUpload.push("db-label", "New " + docTypeUpload + " Document Uploaded"); //JPB190604 changed to what Ken wanted from Initial Patient Enrollment Packet
	updateDB(doc, arrOfPairsUpload);
	alert("@@@@ RETURNING FROM RULE; NOT CREATING NEW STACK (THIS IS WHAT JUDSON WANTS)");
	return;
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
arrOfPairs.push("db-label", zData.classification + " New Stack"); //JPB190604 changed to what Ken wanted from Initial Patient Enrollment Packet
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
    arrOfPairs.push("X_docType", zType);// PV190707 to update type on docset

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
