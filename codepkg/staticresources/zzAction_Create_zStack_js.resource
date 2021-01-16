<!--
// Name: Create zStack
// Committer: eric.stephens@zpaper.com
// Update: TODO ERS201209 remove from MP; ERS201209 now in base MP #79495
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-12-09 15:32:41","evalContinue":"true","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gQ3JlYXRlIHpTdGFjayAqLwovL0pQQjIwMDEyMyB1cGRhdGVkIHJ1bGUgZm9yIEhDIEVkZ2UgRGVtbyBPcmcKLy92YXIga2V5d29yZHM9WyJORVc6RG9jdW1lbnQgU3RhY2siXTsgLy9FUlMxOTAzMjYgIzU3NDU2ICJFTlJMOiJdOyB3aWxsIGFsd2F5cyBtYXRjaCBjaGFuZ2VkIHRvIE5FVyBKUEIxOTA2MDQKLy9DUk4yMDEwMjUgIzc2Nzg4IE1vdmluZyB0aGlzIHRvIENsaWVudCBMaWJyYXJ5IHdoZXJlIGl0IGJlbG9uZ3Mgc28gd2UgY2FuIHVzZSBpdCBpbiB0aGUgSW5kZXggUGFnZSBydWxlIGFsc28uCi8vU0hSMjAxMDI3ICM3Njc4OCBSZS1lbmFibGUgdGVtcG9yYXJpbHkgc28gSnVkc29uIGNhbiBpbXBvcnQgZGF0YSAtLSB3aHkgYXJlIGtleXdvcmRzIG5vdCBkZWZpbmVkIHdoZW4gdXNpbmcgdGhlIEJ1dHRvbiBhY3Rpb24/IT8KdmFyIGtleXdvcmRNYXA9e307CnZhciBrZXl3b3Jkcz1bIk5FVzpEb2N1bWVudCBTdGFja34iLCJFTlJMOkVucm9sbG1lbnR+IiwiRU5STDpFTlJPTExNRU5UfiIsIkNPTjpDb25zZW50fiIsIkNPTjpjb25zZW50fiIsIkZBQzpTZXR0aW5nfiIsIkZBQzpEaXN0cmlidXRpb25+IiwiU1RBUlQ6U3RhcnQgRm9ybX4iLCJDSEs6Q2hlY2tsaXN0fiIsIkhJUEFBOkFVVEhPUklaQVRJT05+IiwiSElQQUE6SElQQUF+IiwiSElQQUE6UE9SVEFCSUxJVFl+IiwiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiRklOOlcyfiIsIklDOk1lbWJlciBJRH4iLCJGQVg6Il07Ci8va2V5d29yZE1hcFsiVEVOUiJdID0iVEVOUjpTdGFydCBGb3JtIjsgCmtleXdvcmRNYXBbIk5FVyJdID0iTkVXOkRvY3VtZW50IFN0YWNrIjsKa2V5d29yZE1hcFsiRU5STCJdID0iRU5STDpFbnJvbGxtZW50IEZvcm0iOwprZXl3b3JkTWFwWyJGQUMiXSA9IkZBQzpGYWNpbGl0eSBFbnJvbGxtZW50IEZvcm0iOwprZXl3b3JkTWFwWyJGQVgiXSA9Ik5FVzpEb2N1bWVudCBTdGFjayI7Ci8va2V5d29yZE1hcFsiU1RBUlQiXSA9Ik5FVzpEb2N1bWVudCBTdGFjayI7CmtleXdvcmRNYXBbIkNPTiJdID0iQ09OOkNvbnNlbnQgRm9ybSI7CmtleXdvcmRNYXBbIkhJUEFBIl0gPSJISVBBQTpISVBBQSBBVVRIT1JJWkFUSU9OIjsKa2V5d29yZE1hcFsiUkVGIl0gPSJSRUY6UkVGRVJSQUwiOwprZXl3b3JkTWFwWyJGVzIiXSA9IkZXMjpXLTIiOyAvL0pQQjIwMTAyMyBhZGRlZAprZXl3b3JkTWFwWyJJOSJdID0iSTk6SS05IjsgLy9KUEIyMDEwMjMgYWRkZWQKa2V5d29yZE1hcFsiVzQiXSA9Ilc0OlctNCI7IC8vSlBCMjAxMDIzIGFkZGVkCi8va2V5d29yZE1hcFsiRklOIl0gPSJGSU46Vy0yIjsKLy9rZXl3b3JkTWFwWyJJQyJdID0iSUM6TWVtYmVyIElEIjsKLy9rZXl3b3JkTWFwWyJDSEsiXSA9IkNISzpDaGVja2xpc3QiOwoKCnZhciB6VHlwZT1kb2MuWCgiWF9kb2NUeXBlIik7CmlmICh6RGF0YS5kb2NUeXBlT0NSPT09IkZBWCIgfHwgekRhdGEuZG9jVHlwZU9DUj09PSIiKSB7CiAgICB6RGF0YS5kb2NUeXBlT0NSPXpEYXRhLmRvY1R5cGVyKGRvYyxrZXl3b3Jkcyk7IAogICAgYWxlcnQoImRvY1R5cGUgd2FzICIrZG9jLmRvY1R5cGUrIiBub3cgIisgekRhdGEuZG9jVHlwZU9DUik7CiAgICB6VHlwZT1kb2MuWCgiWF9kb2NUeXBlIik7CiAgICBpZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsekRhdGEuZG9jVHlwZU9DUik7CiAgICAJYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIix6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOyAKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgIH0KfSBlbHNlIHsgLy9FUlMxOTAxMTkgVE9ETyBhdXRvU3BsaXQgIzUzMDAwCiAgICAvLyB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOwkJCS8vQ1JOMjAxMDI0IENhc2UgIzc2Nzg4IFRoaXMgaXMgc2NyZXdpbmcgdXAgdGhlIGxhYmVsIG9mIHRoZSBwYXJlbnQgc3RhY2sncyBSZWNlaXZlZCBEb2N1bWVudC4KICAgIGFsZXJ0KCJFUlMxOTAxMTkgQXV0b0RyaXZlIGZvdW5kICIrelR5cGUrIiBmaXJzdCBvciBsYXN0LiBXaGljaCBpcyBpdD8iKTsKfQoKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IAoKYWxlcnQoIiMjIyMgZmF4IHdhcyBkZWxpdmVyZWQgdG8gbnVtYmVyOiAiICsgZG9jLmRlbGl2ZXJlZFRvKTsgCnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgenA9IlpQQVBFUl9fIjsgCnZhciB6U3RhY2s9enArInpTdGFja19fYyI7IAoKaWYoelR5cGUgPT0gIkZBWCIgfHwgelR5cGUgPT0gIlNUQVJUIil7IC8vUFYxOTA3MDcgRG9jdHlwZSBhcyBuZXcKCXpUeXBlPSJORVciOwoKfQoKYWxlcnQoIkBAQEB6VHlwZT0iK3pUeXBlKTsKLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggSWYgdGhpcyBpcyBmcm9tIGFuIHVwbG9hZCB0byBhIFJlY2VpdmVkIERvY3VtZW50LCBzZXQgdGhlIGRvY1R5cGUgdG8gTkVXOkRvY3VtZW50IFN0YWNrCi8vIGFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoIjBpbyIpID8gIk5FVyIgOiBrZXl3b3JkTWFwW3pUeXBlXSk7Ci8vQ1JOMjAxMDI1IENhc2UgIzc2Nzg4IEFjY29yZGluZyB0byBKdWRzb24sIHRoaXMgbmV3bHktcmVjZWl2ZWQgU3RhY2sgc2hvdWxkIEFMV0FZUyBiZSBzZXQgdG8gTkVXOkRvY3VtZW50IFN0YWNrCmFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsICJORVciKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGF0dXNfX2MiLCAiUmVjZWl2ZWQiKTsgLy8gUFYxOTA0MTggVXBkYXRlZCBzdGFnZSB0byBiZSBSZWNlaXZlZAoKYWxlcnQoIkVSUzE4MDUwNSBkb2MuZGVsaXZlcmVkRnJvbT0iK2RvYy5kZWxpdmVyZWRGcm9tKTsKCnZhciBjaGFubmVsPSJGYXgiOyAvL0pQQjE5MDUyOSBhZGRlZCBjb21tdW5pdHkgdG8gdGhlIGNoYW5uZWwKdmFyIGRlbGl2ZXJlZEZyb20gPSBkb2MuZGVsaXZlcmVkRnJvbSArICIiOyAvL0NSTjE4MDkwOSBNYWtlIHN1cmUgd2UgaGF2ZSBhIEphdmFzY3JpcHQgc3RyaW5nCnZhciBkZWxpdmVyZWRUbyA9IGRvYy5kZWxpdmVyZWRUbyArICIiOwkvL0pQQjE5MDUyOSBDaGVjayBkZWxpdmVyZWRUbyBmb3IgY29tbXVuaXR5IHVwbG9hZGVzCnZhciBmYWNpbGl0eUlEID0gIiI7CQkJCQkKLy8gaWYgKGRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpPi0xIHx8IGRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7Y2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCmlmIChpc05hTihkZWxpdmVyZWRGcm9tKSkgewoJLy9DUk4yMDEwMjYgIzc2Nzg4IFRoaXMgd2lsbCBvbmx5IHdvcmsgZm9yIGRlbW8gcHVycG9zZXMgYmVjYXVzZSB0aGUgJ0AnIGlzIG5vdCBiZWluZyBpbmNsdWRlZCBpbiBlbWFpbCBhZGRyZXNzZXMKCS8vIHRoYXQgbWFrZSB1cCB0aGUgJ2RlbGl2ZXJlZEZyb20nIHBhcnQgb2YgdGhlIGZpbGUgbmFtZTsKCS8vIHNvIHRoZSBlbWFpbCBhZGRyZXNzIE1VU1QgaGF2ZSBhICcrJyBpbiBpdCBmb3IgdGhpcyB0byB3b3JrLCB3aGljaCBvZiBjb3Vyc2UgbWlnaHQgbm90IGJlIHRoZSBjYXNlIGluIHJlYWwgbGlmZSB1c2UgY2FzZXMuCgljaGFubmVsID0gZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSA/ICJ1cGxvYWQiIDogKGRlbGl2ZXJlZEZyb20uaW5kZXhPZignKycpID49IDAgPyAiRW1haWwiIDogInNjYW4iKTsKfSAvL0VSUzE4MDUwNSAjNDgxMDEKaWYgKGlzTmFOKGRlbGl2ZXJlZFRvKSkgewoJaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewoJCWNoYW5uZWwgPSAiY29tbXVuaXR5IjsKCX0gCgllbHNlIGlmIChkZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpID49IDApIHsKCQljaGFubmVsID0gInVwbG9hZCIKCX0KCWVsc2UgewoJCWNoYW5uZWw9IlNjYW4iOwoJfQp9IAoJaWYgKCJGYXgiID09IGNoYW5uZWwpIHsKICAgIHZhciBpbmNvbWluZ051bWJlciA9IGRlbGl2ZXJlZEZyb207CiAgICBpZiAoZGVsaXZlcmVkRnJvbS5zaXplKCkgPT0gMTEpIHsKICAgICAgICBpbmNvbWluZ051bWJlciA9IGRlbGl2ZXJlZEZyb20uc3Vic3RyaW5nKDEpOwogICAgfQogICAgZmFjaWxpdHlJRCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQWNjb3VudCIsIHsiRmF4IjppbmNvbWluZ051bWJlcn0pOwogICAgaWYgKCFmYWNpbGl0eUlEKSB7IC8vTVNIMjAwOTAzICM3NTY4NSBwb3RlbnRpYWwgbnVsbCByZXNwb25zZSBmcm9tIGdldFNGUmVjb3JkSUQKICAgICAgICBmYWNpbGl0eUlEID0gIiI7CiAgICB9CiAgICBpZiAoIiIgIT09IGZhY2lsaXR5SUQgJiYgZmFjaWxpdHlJRC5sZW5ndGggPiAwKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJGYWNpbGl0eV9fYyIsIGZhY2lsaXR5SUQpOwkJCQkgICAKCX0JCQkJCQkgIAkgCn0KYWxlcnQoIiMjIyMgZGVsaXZlcmVkVG8gPSAiICsgZGVsaXZlcmVkVG8gKyAiLCBjaGFubmVsID0gIiArIGNoYW5uZWwpOwovL0pQQjE5MDkzMCBJZiB0aGlzIGlzIGFuIHVwbG9hZCwgY2hlY2sgdG8gc2VlIGlmIHdlIGhhdmUgYSBTYWxlc2ZvcmNlIElkIHRvIGF0dGFjaCB0bwp2YXIgdXBsb2FkTGFiZWwgPSBudWxsOwppZiAoInVwbG9hZCIgPT0gY2hhbm5lbCkgewoJLy8gVXBsb2FkIGZpbGVuYW1lIGxvb2tzIGxpa2UgdGhpczogZW1haWwtbGlnaHRuaW5nVXBsb2FkLXNmSWQtZG9jVHlwZS1uYW1lIG9mIHVwbG9hZGVkIGZpbGUKCXZhciBmcm9tRmlsZSA9IGRvYy5mcm9tRmlsZSArICIiOwoJdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoJy0nKTsKCXZhciBzZklkLCBkb2NUeXBlVXBsb2FkID0gIlVOS05PV04iOwoJaWYgKHBhcnRzLmxlbmd0aCA+IDIpIHsgc2ZJZCA9IHBhcnRzWzJdOyB9CglpZiAocGFydHMubGVuZ3RoID4gMykgeyBkb2NUeXBlVXBsb2FkID0gcGFydHNbM107IH0KCWFsZXJ0KCJAQEBAQCBBdHRhY2hpbmcgaW5jb21pbmcgZG9jdW1lbnQgdG8gU2FsZXNmb3JjZSBJZDogIiArIHNmSWQpOwoJYWxlcnQoIkBAQEBAIGRvY1R5cGUgb2YgdXBsb2FkZWQgZG9jOiAiICsgZG9jVHlwZVVwbG9hZCk7CglhdHRhY2goZG9jLCAiRG9jdW1lbnQgdXBsb2FkZWQgLSAiICsgZG9jVHlwZVVwbG9hZCwgc2ZJZCk7Cgl2YXIgYXJyT2ZQYWlyc1VwbG9hZCA9IFtdOwogICAgdmFyIGJhPSJSZWNlaXZlZCI7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKCWFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwICsgIiwgYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzVXBsb2FkLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiIgKyBzaWduZWRTdGF0dXMpOwoJYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJYX2RvY1R5cGUiLCBkb2NUeXBlVXBsb2FkKTsKCXVwbG9hZExhYmVsID0gIk5ldyAiICsgZG9jVHlwZVVwbG9hZCArICIgRG9jdW1lbnQgVXBsb2FkZWQiOwoJYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJkYi1sYWJlbCIsIHVwbG9hZExhYmVsKTsgLy9KUEIxOTA2MDQgY2hhbmdlZCB0byB3aGF0IEtlbiB3YW50ZWQgZnJvbSBJbml0aWFsIFBhdGllbnQgRW5yb2xsbWVudCBQYWNrZXQKCXVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyc1VwbG9hZCk7CgkvL2FsZXJ0KCJAQEBAIFJFVFVSTklORyBGUk9NIFJVTEU7IE5PVCBDUkVBVElORyBORVcgU1RBQ0sgKFRISVMgSVMgV0hBVCBKVURTT04gV0FOVFMpIik7IEpQQjE5MTAxNCBub3cgdXBsb2FkIHdpbGwgY3JlYXRlIGEgelN0YWNrCgkvL3JldHVybjsKfQovL0NSTjIwMTAyNCBDYXNlICM3Njc4OCBJZiB0aGlzIGlzIGZyb20gYW4gdXBsb2FkIHRvIGEgUmVjZWl2ZWQgRG9jdW1lbnQsIHNldCB0aGUgY2hhbm5lbCBvbiB0aGUgelN0YWNrIGFzIHVwbG9hZAphcnJPZlBhaXJzLnB1c2goenArIkNoYW5uZWxfX2MiLGRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoIjBpbyIpID8gInVwbG9hZCIgOiBjaGFubmVsKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwphcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CmFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKYWxlcnQoIkBAQHpEYXRhLnByb2dyYW1OYW1lPSIrekRhdGEucHJvZ3JhbU5hbWUpOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsekRhdGEuY2xhc3NpZmljYXRpb24pOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJQcm9ncmFtX05hbWVfX2MiLHpEYXRhLnByb2dyYW1OYW1lKTsgIC8vVE9ETyBzd2l0Y2ggdG8gcGlja2xpc3QgLy9UT0RPIEVSUzIwMTIwOSByZW1vdmUgZnJvbSBNUAphcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fX2MiLHpEYXRhLnByb2dyYW1OYW1lKTsgLy9KUEIyMDEwMjMgc3dpdGNoZWQgdG8gcGlja2xpc3QgVE9ET05FIC8vRVJTMjAxMjA5IG5vdyBpbiBiYXNlIE1QICM3OTQ5NQovL0VSUzIwMDgxNSAjNzU2ODUgR1VFU1NJTkcgYXJyT2ZQYWlycy5wdXNoKCIiKyJQcm9ncmFtX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7ICAvL0VSUzIwMDMwOCBUT0RPIHN3aXRjaCB0byBwaWNrbGlzdAoKLy9FUlMyMDAzMDggaWYgKHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEucGF0RW5yb2xsUXVldWVJZCk7CmlmICh6RGF0YS56Y2hhbm5lbCkgeyAvL0VSUzIwMDgyMiAjNzU2ODQKaWYgKHpEYXRhLnpjaGFubmVsLm93bmVyKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnpjaGFubmVsLm93bmVyKTsgLy9FUlMyMDAzMDggIzcwMjczCmFsZXJ0KCJFUlMyMDAzMDguMTE5IG93bmVyPSIrekRhdGEuemNoYW5uZWwub3duZXIpOwp9IGVsc2UgeyBhbGVydCgiRVJTMjAwODIyIG5vIHpjaGFubmVsIHlldCEiKTsgfQoKaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSB6RGF0YS5QUk9HUkFNX1pDSEFSVEEpIHsgLy9KUEIyMDEwMjMgY2hhbmdlZCBmcm9tIGNsYXNzaWZpY2F0aW9uIHRvIHByb2dyYW1OYW1lCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVyZ2VudCIpOyAKfQplbHNlIGlmICh6RGF0YS5wcm9ncmFtTmFtZSA9PT0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUykgeyAgLy9KUEIyMDEwMjMgY2hhbmdlZCBmcm9tIGNsYXNzaWZpY2F0aW9uIHRvIHByb2dyYW1OYW1lCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsgCn0KZWxzZSBpZiAoekRhdGEucHJvZ3JhbU5hbWUgPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7IC8vSlBCMjAxMDIzIGNoYW5nZWQgZnJvbSBjbGFzc2lmaWNhdGlvbiB0byBwcm9ncmFtTmFtZQoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJDcml0aWNhbCIpOwkKfQplbHNlIGlmICh6RGF0YS5wcm9ncmFtTmFtZSA9PT0gekRhdGEuUFJPR1JBTV9aUkVGRVJSQUwpIHsgIC8vSlBCMjAxMDIzIGNoYW5nZWQgZnJvbSBjbGFzc2lmaWNhdGlvbiB0byBwcm9ncmFtTmFtZQoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJSb3V0aW5lIik7IAp9Ci8qZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fUEFMVkVPKSB7IAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJTcGVjaWFsIik7CQp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1ZJTkRJQ08pIHsgCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlN0YW5kYXJkIik7CQp9Ki8KZWxzZSAKewoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJOb3JtYWwiKTsKfQoKYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLCAoImNvbW11bml0eSIgPT09IGNoYW5uZWwgfHwgInVwbG9hZCIgPT09IGNoYW5uZWwgPyBjaGFubmVsIDogZG9jLmRlbGl2ZXJlZFRvKSk7IC8vSlBCMTkwNTI5IGFkZGVkIHNvIENvbW11bml0eSBzaG93cyB1cCBpbiBNYXN0ZXIgSW50YWtlIExpc3QKYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CmlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykge2Fyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7IH0gZWxzZSB7CmFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgCn0KCmFsZXJ0KCJSZXZpZXdlZCBTdGF0dXMgYmVmb3JlIHNldHRpbmcgaXQgdG8gUmVjZWl2ZWQ6ICIgKyBYKGRvYywgIlhfcmV2aWV3ZWRTdGF0dXMiKSk7CmFsZXJ0KCJ6RGF0YS5yZXZpZXdlZFN0YXR1cyA9ICIgKyB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7CnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCB6RGF0YS5wcm9ncmFtTmFtZSArICIgTmV3IFN0YWNrIiwgYXJyT2ZQYWlycyk7IC8vSlBCMjAxMDIzIGNoYW5nZWQgZnJvbSBjbGFzc2lmaWNhdGlvbiB0byBwcm9ncmFtTmFtZQphbGVydCgiIyMjIyBTdGFjayBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggV2UgbmVlZCB0byBjcmVhdGUgYSBSZWNlaXZlZCBEb2N1bWVudCBmb3IgdGhlIHBhcmVudCBzdGFjayBhbHNvLgppZiAoekRhdGEuY2xpZW50UmVjZWl2ZWREb2N1bWVudCkgewoJLy8gIG9ubHkgaWYgaXQgd2Fzbid0IGFscmVhZHkgdXBsb2FkZWQgdG8gU2FsZXNmb3JjZQoJaWYgKCFkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSkgeyB6RGF0YS5yZWNEb2NJZCA9IHpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQoZG9jLCBzZklkLCAiUmVjZWl2ZWQgRG9jdW1lbnQgelN0YWNrIik7IH0JLy9FUlMyMDEwMTggIzc3MjUyCn0KLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggSWYgdGhpcyBpcyBmcm9tIGFuIHVwbG9hZCwgc2V0IHRoZSBEb2N1bWVudCBOdW1iZXIgaW4gdGhlIFJlY2VpdmVkIERvY3VtZW50CmFsZXJ0KCIjIyMgZG9jLmRlbGl2ZXJlZEZyb20gPT4gIiArIGRvYy5kZWxpdmVyZWRGcm9tKTsKaWYgKGRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoIjBpbyIpKSB7CglhbGVydCgiIyMjIFNldHRpbmcgdGhlIERvY3VtZW50IE51bWJlciBpbiB0aGUgUmVjZWl2ZWQgRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kZWxpdmVyZWRGcm9tKTsKCXZhciBhcnJvZlBhaXJzUkQgPSBbXTsKCWFycm9mUGFpcnNSRC5wdXNoKCJEb2N1bWVudE51bWJlciIsICJ6OiIgKyBkb2MuZGJJRCk7Cgl1cGRhdGVTRlJlY29yZChkb2MsICJSZWNlaXZlZERvY3VtZW50IiwgZG9jLmRlbGl2ZXJlZEZyb20sIGFycm9mUGFpcnNSRCk7Cn0KCmFyck9mUGFpcnMgPSBbXTsKLy9KUEIxOTA1MjkgRml4IHVwIHRoZSBmdW5reSBkZXN0aW5hdGlvbi9sYWJlbCBmb3IgY29tbXVuaXR5IHVwbG9hZHMKaWYgKCJjb21tdW5pdHkiID09PSBjaGFubmVsKSB7Cgl2YXIgZnJvbUZpbGUgPSBkb2MuZnJvbUZpbGUgKyAiIjsKCXZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCctJyk7Cgl2YXIgYnVmZmVyID0gIiI7Cglmb3IgKHZhciBpPTA7IGk8cGFydHMubGVuZ3RoOyBpKyspIHsKCQlpZiAoaSA+IDApIHsgYnVmZmVyICs9ICctJzsgfQoJCWlmICgxID09PSBpKSAJeyBidWZmZXIgKz0gImNvbW11bml0eSI7IH0KCQllbHNlIAkJCXsgYnVmZmVyICs9IHBhcnRzW2ldOyB9Cgl9CglhcnJPZlBhaXJzLnB1c2goIlhfZnJvbUZpbGUiLCBidWZmZXIpOwoJYXJyT2ZQYWlycy5wdXNoKCJYX2Rlc3RpbmF0aW9uIiwgImNvbW11bml0eSIpOwp9CmlmICgidXBsb2FkIiAhPSBjaGFubmVsKSB7CglhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgekRhdGEucHJvZ3JhbU5hbWUgKyAiIE5ldyBTdGFjayIpOyAvL0pQQjIwMTAyMyBjaGFuZ2VkIGZyb20gY2xhc3NpZmljYXRpb24gdG8gcHJvZ3JhbU5hbWUKICAgIC8vIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgelR5cGUpOy8vIFBWMTkwNzA3IHRvIHVwZGF0ZSB0eXBlIG9uIGRvY3NldAovL0NSTjIwMTAyNCBDYXNlICM3Njc4OCBJZiB0aGlzIGlzIGZyb20gYW4gdXBsb2FkIHRvIGEgUmVjZWl2ZWQgRG9jdW1lbnQsIHNldCB0aGUgZG9jVHlwZSBpbiBvdXIgZGF0YWJhc2UgdG8gTkVXCi8vICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsIGRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoIjBpbyIpID8gIk5FVyIgOiB6VHlwZSk7Ly8gUFYxOTA3MDcgdG8gdXBkYXRlIHR5cGUgb24gZG9jc2V0Ci8vQ1JOMjAxMDI1IENhc2UgIzc2Nzg4IEFjY29yZGluZyB0byBKdWRzb24sIHRoZSBkb2NUeXBlIGZvciB0aGlzIG5ld2x5LXJlY2VpdmVkIFN0YWNrIHNob3VsZCBBTFdBWVMgYmUgc2V0IHRvIE5FVwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCAiTkVXIik7Cn0KYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CmFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLHNmSWQpOyAKdmFyIHNpZ25lZFN0YXR1cyA9ICIiOyAgCmFsZXJ0KCJAQEBAIHpEYXRhLnJldmlld2VkU3RhdHVzID0gIiArIHpEYXRhLnJldmlld2VkU3RhdHVzKTsKLy9TSFIyMDEwMjcgVG8gcmVtb3ZlIHRoZSBTaWduZWQgc3RhZ2UgY2hlY2tib3ggZnJvbSB0aGUgcGFyZW50IChhcyBKQiBzdWdnZXN0cyksIGNvbW1lbnQgb3V0IHRoZSBsaW5lcyBiZWxvdwppZiAoMT09PTEgJiYgIlNpZ25lZCIgPT09IHpEYXRhLnJldmlld2VkU3RhdHVzKSB7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIHNpZ25lZFN0YXR1cyA9ICJTaWduZWQgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiI7IAp9CmFsZXJ0KCJTaWduZWRTdGF0dXMgPSAiICsgc2lnbmVkU3RhdHVzKTsKaWYgKDE9PT0xKSB7IAogICAgdmFyIGJhPSJSZWNlaXZlZCI7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKCWFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwICsgIiwgYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIGJhKyIgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiIgKyBzaWduZWRTdGF0dXMgKyBYKGRvYywiWF9yZXZpZXdzIikpOyAvL1NIUjIwMTAyNyAjNzY3ODggS2VlcCB0aGUgcGFyZW50IHJldmlld3MgYXQgdGhlIHRvcAoKfQoKYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKYWxlcnQoYXJyT2ZQYWlycyk7CmFsZXJ0KCJAQEAgY2FsbGluZyB1cGRhdGVEQiB3aXRoIHBhcmFtczogQEBAQEBAQEBAQEBAIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAvKiBFTkQgKi8="},"ordinal":28}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN Create zStack */
//JPB200123 updated rule for HC Edge Demo Org
//var keywords=["NEW:Document Stack"]; //ERS190326 #57456 "ENRL:"]; will always match changed to NEW JPB190604
//CRN201025 #76788 Moving this to Client Library where it belongs so we can use it in the Index Page rule also.
//SHR201027 #76788 Re-enable temporarily so Judson can import data -- why are keywords not defined when using the Button action?!?
var keywordMap={};
var keywords=["NEW:Document Stack~","ENRL:Enrollment~","ENRL:ENROLLMENT~","CON:Consent~","CON:consent~","FAC:Setting~","FAC:Distribution~","START:Start Form~","CHK:Checklist~","HIPAA:AUTHORIZATION~","HIPAA:HIPAA~","HIPAA:PORTABILITY~","REF:REFERRAL","REF:Referral","FIN:W2~","IC:Member ID~","FAX:"];
//keywordMap["TENR"] ="TENR:Start Form"; 
keywordMap["NEW"] ="NEW:Document Stack";
keywordMap["ENRL"] ="ENRL:Enrollment Form";
keywordMap["FAC"] ="FAC:Facility Enrollment Form";
keywordMap["FAX"] ="NEW:Document Stack";
//keywordMap["START"] ="NEW:Document Stack";
keywordMap["CON"] ="CON:Consent Form";
keywordMap["HIPAA"] ="HIPAA:HIPAA AUTHORIZATION";
keywordMap["REF"] ="REF:REFERRAL";
keywordMap["FW2"] ="FW2:W-2"; //JPB201023 added
keywordMap["I9"] ="I9:I-9"; //JPB201023 added
keywordMap["W4"] ="W4:W-4"; //JPB201023 added
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
    // zType=zData.docTypeOCR;			//CRN201024 Case #76788 This is screwing up the label of the parent stack's Received Document.
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
//CRN201024 Case #76788 If this is from an upload to a Received Document, set the docType to NEW:Document Stack
// arrOfPairs.push(zp+"faxType__c", doc.deliveredFrom.startsWith("0io") ? "NEW" : keywordMap[zType]);
//CRN201025 Case #76788 According to Judson, this newly-received Stack should ALWAYS be set to NEW:Document Stack
arrOfPairs.push(zp+"faxType__c", "NEW");
arrOfPairs.push(zp+"Status__c", "Received"); // PV190418 Updated stage to be Received

alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);

var channel="Fax"; //JPB190529 added community to the channel
var deliveredFrom = doc.deliveredFrom + ""; //CRN180909 Make sure we have a Javascript string
var deliveredTo = doc.deliveredTo + "";	//JPB190529 Check deliveredTo for community uploades
var facilityID = "";					
// if (deliveredFrom.indexOf("@")>-1 || deliveredFrom.indexOf(".")>-1) {channel="Email";} //ERS180505 #48101
if (isNaN(deliveredFrom)) {
	//CRN201026 #76788 This will only work for demo purposes because the '@' is not being included in email addresses
	// that make up the 'deliveredFrom' part of the file name;
	// so the email address MUST have a '+' in it for this to work, which of course might not be the case in real life use cases.
	channel = deliveredFrom.startsWith("0io") ? "upload" : (deliveredFrom.indexOf('+') >= 0 ? "Email" : "scan");
} //ERS180505 #48101
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
	if ("Fax" == channel) {
    var incomingNumber = deliveredFrom;
    if (deliveredFrom.size() == 11) {
        incomingNumber = deliveredFrom.substring(1);
    }
    facilityID = getSFRecordID(doc, "Account", {"Fax":incomingNumber});
    if (!facilityID) { //MSH200903 #75685 potential null response from getSFRecordID
        facilityID = "";
    }
    if ("" !== facilityID && facilityID.length > 0) {
        arrOfPairs.push("Facility__c", facilityID);				   
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
//CRN201024 Case #76788 If this is from an upload to a Received Document, set the channel on the zStack as upload
arrOfPairs.push(zp+"Channel__c",doc.deliveredFrom.startsWith("0io") ? "upload" : channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
alert("@@@zData.programName="+zData.programName); 
arrOfPairs.push(zp+"Classification__c",zData.classification); 
arrOfPairs.push(zp+"Program_Name__c",zData.programName);  //TODO switch to picklist //TODO ERS201209 remove from MP
arrOfPairs.push(zp+"Program__c",zData.programName); //JPB201023 switched to picklist TODONE //ERS201209 now in base MP #79495
//ERS200815 #75685 GUESSING arrOfPairs.push(""+"Program__c",zData.programName);  //ERS200308 TODO switch to picklist

//ERS200308 if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
if (zData.zchannel) { //ERS200822 #75684
if (zData.zchannel.owner) arrOfPairs.push("OwnerId",zData.zchannel.owner); //ERS200308 #70273
alert("ERS200308.119 owner="+zData.zchannel.owner);
} else { alert("ERS200822 no zchannel yet!"); }

if (zData.programName === zData.PROGRAM_ZCHARTA) { //JPB201023 changed from classification to programName
	arrOfPairs.push(zp+"Priority__c", "Urgent"); 
}
else if (zData.programName === zData.PROGRAM_ZPAPYRUS) {  //JPB201023 changed from classification to programName
	arrOfPairs.push(zp+"Priority__c", "High"); 
}
else if (zData.programName === zData.PROGRAM_ZCARTA) { //JPB201023 changed from classification to programName
	arrOfPairs.push(zp+"Priority__c", "Critical");	
}
else if (zData.programName === zData.PROGRAM_ZREFERRAL) {  //JPB201023 changed from classification to programName
	arrOfPairs.push(zp+"Priority__c", "Routine"); 
}
/*else if (zData.classification === zData.PROGRAM_PALVEO) { 
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
var sfId = createAndAttach(doc, zStack, zData.programName + " New Stack", arrOfPairs); //JPB201023 changed from classification to programName
alert("#### Stack Received. Attached to: " + sfId);
//CRN201024 Case #76788 We need to create a Received Document for the parent stack also.
if (zData.clientReceivedDocument) {
	//  only if it wasn't already uploaded to Salesforce
	if (!doc.deliveredFrom.startsWith("0io")) { zData.recDocId = zData.clientReceivedDocument(doc, sfId, "Received Document zStack"); }	//ERS201018 #77252
}
//CRN201024 Case #76788 If this is from an upload, set the Document Number in the Received Document
alert("### doc.deliveredFrom => " + doc.deliveredFrom);
if (doc.deliveredFrom.startsWith("0io")) {
	alert("### Setting the Document Number in the Received Document with Id: " + doc.deliveredFrom);
	var arrofPairsRD = [];
	arrofPairsRD.push("DocumentNumber", "z:" + doc.dbID);
	updateSFRecord(doc, "ReceivedDocument", doc.deliveredFrom, arrofPairsRD);
}

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
	arrOfPairs.push("db-label", zData.programName + " New Stack"); //JPB201023 changed from classification to programName
    // arrOfPairs.push("X_docType", zType);// PV190707 to update type on docset
//CRN201024 Case #76788 If this is from an upload to a Received Document, set the docType in our database to NEW
//     arrOfPairs.push("X_docType", doc.deliveredFrom.startsWith("0io") ? "NEW" : zType);// PV190707 to update type on docset
//CRN201025 Case #76788 According to Judson, the docType for this newly-received Stack should ALWAYS be set to NEW
    arrOfPairs.push("X_docType", "NEW");
}
arrOfPairs.push("db-BATES", sfId + "-STACK");
arrOfPairs.push("X_sfStackId",sfId); 
var signedStatus = "";  
alert("@@@@ zData.reviewedStatus = " + zData.reviewedStatus);
//SHR201027 To remove the Signed stage checkbox from the parent (as JB suggests), comment out the lines below
if (1===1 && "Signed" === zData.reviewedStatus) {
    var now0 = getCurDateAndTime(doc,false,true);
    signedStatus = "Signed by agent at "+now0+"<br/>"; 
}
alert("SignedStatus = " + signedStatus);
if (1===1) { 
    var ba="Received";
    var now0 = getCurDateAndTime(doc,false,true);
	alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews", ba+" by agent at "+now0+"<br/>" + signedStatus + X(doc,"X_reviews")); //SHR201027 #76788 Keep the parent reviews at the top

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
