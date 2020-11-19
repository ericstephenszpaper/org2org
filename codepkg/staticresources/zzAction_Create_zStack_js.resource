<!--
// Name: Create zStack
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: Update 
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-11-17 22:57:39","evalContinue":"true","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gQ3JlYXRlIHpTdGFjayAqLwovL0pQQjIwMDEwNSB1cGRhdGVkIHJ1bGUgZm9yIEhDIEVkZ2UgRGVtbyBPcmcKLy92YXIga2V5d29yZHM9WyJORVc6RG9jdW1lbnQgU3RhY2siXTsgLy9FUlMxOTAzMjYgIzU3NDU2ICJFTlJMOiJdOyB3aWxsIGFsd2F5cyBtYXRjaCBjaGFuZ2VkIHRvIE5FVyBKUEIxOTA2MDQKdmFyIGtleXdvcmRNYXA9e307CnZhciBrZXl3b3Jkcz1bIk5FVzpEb2N1bWVudCBTdGFja34iLCJFTlJMOkVucm9sbG1lbnR+IiwiRU5STDpFTlJPTExNRU5UfiIsIkNPTjpDb25zZW50fiIsIkNPTjpjb25zZW50fiIsIkZBQzpTZXR0aW5nfiIsIkZBQzpEaXN0cmlidXRpb25+IiwiU1RBUlQ6U3RhcnQgRm9ybX4iLCJDSEs6Q2hlY2tsaXN0fiIsIkhJUEFBOkFVVEhPUklaQVRJT05+IiwiSElQQUE6SElQQUF+IiwiSElQQUE6UE9SVEFCSUxJVFl+IiwiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiRklOOlcyfiIsIklDOk1lbWJlciBJRH4iLCJGQVg6Il07CmtleXdvcmRNYXBbIlRFTlIiXSA9IlRFTlI6U3RhcnQgRm9ybSI7CmtleXdvcmRNYXBbIk5FVyJdID0iTkVXOkRvY3VtZW50IFN0YWNrIjsKa2V5d29yZE1hcFsiRU5STCJdID0iRU5STDpFbnJvbGxtZW50IEZvcm0iOwprZXl3b3JkTWFwWyJGQUMiXSA9IkZBQzpGYWNpbGl0eSBFbnJvbGxtZW50IEZvcm0iOwprZXl3b3JkTWFwWyJGQVgiXSA9Ik5FVzpEb2N1bWVudCBTdGFjayI7CmtleXdvcmRNYXBbIlNUQVJUIl0gPSJORVc6RG9jdW1lbnQgU3RhY2siOwovL2tleXdvcmRNYXBbIkNPTiJdID0iQ09OOkNvbnNlbnQiOwovL2tleXdvcmRNYXBbIkhJUEFBIl0gPSJISVBBQTpISVBBQSBBVVRIT1JJWkFUSU9OIjsKLy9rZXl3b3JkTWFwWyJSRUYiXSA9IlJFRjpSRUZFUlJBTCI7Ci8va2V5d29yZE1hcFsiRklOIl0gPSJGSU46Vy0yIjsKLy9rZXl3b3JkTWFwWyJJQyJdID0iSUM6TWVtYmVyIElEIjsKLy9rZXl3b3JkTWFwWyJDSEsiXSA9IkNISzpDaGVja2xpc3QiOwoKCnZhciB6VHlwZT1kb2MuWCgiWF9kb2NUeXBlIik7CmlmICh6RGF0YS5kb2NUeXBlT0NSPT09IkZBWCIgfHwgekRhdGEuZG9jVHlwZU9DUj09PSIiKSB7CiAgICB6RGF0YS5kb2NUeXBlT0NSPXpEYXRhLmRvY1R5cGVyKGRvYyxrZXl3b3Jkcyk7CiAgICBhbGVydCgiZG9jVHlwZSB3YXMgIitkb2MuZG9jVHlwZSsiIG5vdyAiKyB6RGF0YS5kb2NUeXBlT0NSKTsKICAgIHpUeXBlPWRvYy5YKCJYX2RvY1R5cGUiKTsKICAgIGlmIChkb2MuZG9jVHlwZSAhPSB6RGF0YS5kb2NUeXBlT0NSKSB7CiAgICAgICAgdmFyIGFyck9mUGFpcnMwID0gW107CiAgICAgICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlT0NSIix6RGF0YS5kb2NUeXBlT0NSKTsKICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsekRhdGEuZG9jVHlwZU9DUik7CiAgICAgICAgelR5cGU9ekRhdGEuZG9jVHlwZU9DUjsKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgIH0KfSBlbHNlIHsgLy9FUlMxOTAxMTkgVE9ETyBhdXRvU3BsaXQgIzUzMDAwCiAgICB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOwogICAgYWxlcnQoIkVSUzE5MDExOSBBdXRvRHJpdmUgZm91bmQgIit6VHlwZSsiIGZpcnN0IG9yIGxhc3QuIFdoaWNoIGlzIGl0PyIpOwp9Cgp6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsKCmFsZXJ0KCIjIyMjIGZheCB3YXMgZGVsaXZlcmVkIHRvIG51bWJlcjogIiArIGRvYy5kZWxpdmVyZWRUbyk7CnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgenA9IlpQQVBFUl9fIjsKdmFyIHpTdGFjaz16cCsielN0YWNrX19jIjsKCmlmKHpUeXBlID09ICJGQVgiIHx8IHpUeXBlID09ICJTVEFSVCIpeyAvL1BWMTkwNzA3IERvY3R5cGUgYXMgbmV3CnpUeXBlPSJORVciOwoKfQoKYWxlcnQoIkBAQEB6VHlwZT0iK3pUeXBlKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwga2V5d29yZE1hcFt6VHlwZV0pOwphcnJPZlBhaXJzLnB1c2goenArIlN0YXR1c19fYyIsICJSZWNlaXZlZCIpOyAvLyBQVjE5MDQxOCBVcGRhdGVkIHN0YWdlIHRvIGJlIFJlY2VpdmVkCgphbGVydCgiRVJTMTgwNTA1IGRvYy5kZWxpdmVyZWRGcm9tPSIrZG9jLmRlbGl2ZXJlZEZyb20pOwoKdmFyIGNoYW5uZWw9IkZheCI7IC8vSlBCMTkwNTI5IGFkZGVkIGNvbW11bml0eSB0byB0aGUgY2hhbm5lbAp2YXIgZGVsaXZlcmVkRnJvbSA9IGRvYy5kZWxpdmVyZWRGcm9tICsgIiI7IC8vQ1JOMTgwOTA5IE1ha2Ugc3VyZSB3ZSBoYXZlIGEgSmF2YXNjcmlwdCBzdHJpbmcKdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvICsgIiI7IC8vSlBCMTkwNTI5IENoZWNrIGRlbGl2ZXJlZFRvIGZvciBjb21tdW5pdHkgdXBsb2FkZXMKdmFyIGZhY2lsaXR5SUQgPSAiIjsKaWYgKGRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpPi0xIHx8IGRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7Y2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCmlmIChpc05hTihkZWxpdmVyZWRUbykpIHsKaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewpjaGFubmVsID0gImNvbW11bml0eSI7Cn0KZWxzZSBpZiAoZGVsaXZlcmVkVG8udG9Mb3dlckNhc2UoKS5pbmRleE9mKCJ1cGxvYWQiKSA+PSAwKSB7CmNoYW5uZWwgPSAidXBsb2FkIgp9CmVsc2UgewpjaGFubmVsPSJTY2FuIjsKfQp9CmlmICgiRmF4IiA9PSBjaGFubmVsKSB7CiAgICB2YXIgaW5jb21pbmdOdW1iZXIgPSBkZWxpdmVyZWRGcm9tOwogICAgaWYgKGRlbGl2ZXJlZEZyb20uc2l6ZSgpID09IDExKSB7CiAgICAgICAgaW5jb21pbmdOdW1iZXIgPSBkZWxpdmVyZWRGcm9tLnN1YnN0cmluZygxKTsKICAgIH0KICAgIGZhY2lsaXR5SUQgPSBnZXRTRlJlY29yZElEKGRvYywgIkFjY291bnQiLCB7IkZheCI6aW5jb21pbmdOdW1iZXJ9KTsKICAgIGlmICghZmFjaWxpdHlJRCkgeyAvL01TSDIwMDkwMyAjNzU2ODUgcG90ZW50aWFsIG51bGwgcmVzcG9uc2UgZnJvbSBnZXRTRlJlY29yZElECiAgICAgICAgZmFjaWxpdHlJRCA9ICIiOwogICAgfQogICAgaWYgKCIiICE9PSBmYWNpbGl0eUlEICYmIGZhY2lsaXR5SUQubGVuZ3RoID4gMCkgewogICAgICAgIGFyck9mUGFpcnMucHVzaCgiRmFjaWxpdHlfX2MiLCBmYWNpbGl0eUlEKTsgIAp9ICAKfQphbGVydCgiIyMjIyBkZWxpdmVyZWRUbyA9ICIgKyBkZWxpdmVyZWRUbyArICIsIGNoYW5uZWwgPSAiICsgY2hhbm5lbCk7Ci8vSlBCMTkwOTMwIElmIHRoaXMgaXMgYW4gdXBsb2FkLCBjaGVjayB0byBzZWUgaWYgd2UgaGF2ZSBhIFNhbGVzZm9yY2UgSWQgdG8gYXR0YWNoIHRvCnZhciB1cGxvYWRMYWJlbCA9IG51bGw7CmlmICgidXBsb2FkIiA9PSBjaGFubmVsKSB7Ci8vIFVwbG9hZCBmaWxlbmFtZSBsb29rcyBsaWtlIHRoaXM6IGVtYWlsLWxpZ2h0bmluZ1VwbG9hZC1zZklkLWRvY1R5cGUtbmFtZSBvZiB1cGxvYWRlZCBmaWxlCnZhciBmcm9tRmlsZSA9IGRvYy5mcm9tRmlsZSArICIiOwp2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgnLScpOwp2YXIgc2ZJZCwgZG9jVHlwZVVwbG9hZCA9ICJVTktOT1dOIjsKaWYgKHBhcnRzLmxlbmd0aCA+IDIpIHsgc2ZJZCA9IHBhcnRzWzJdOyB9CmlmIChwYXJ0cy5sZW5ndGggPiAzKSB7IGRvY1R5cGVVcGxvYWQgPSBwYXJ0c1szXTsgfQphbGVydCgiQEBAQEAgQXR0YWNoaW5nIGluY29taW5nIGRvY3VtZW50IHRvIFNhbGVzZm9yY2UgSWQ6ICIgKyBzZklkKTsKYWxlcnQoIkBAQEBAIGRvY1R5cGUgb2YgdXBsb2FkZWQgZG9jOiAiICsgZG9jVHlwZVVwbG9hZCk7CmF0dGFjaChkb2MsICJEb2N1bWVudCB1cGxvYWRlZCAtICIgKyBkb2NUeXBlVXBsb2FkLCBzZklkKTsKdmFyIGFyck9mUGFpcnNVcGxvYWQgPSBbXTsKICAgIHZhciBiYT0iUmVjZWl2ZWQiOwogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CmFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwICsgIiwgYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzVXBsb2FkLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiIgKyBzaWduZWRTdGF0dXMpOwphcnJPZlBhaXJzVXBsb2FkLnB1c2goIlhfZG9jVHlwZSIsIGRvY1R5cGVVcGxvYWQpOwp1cGxvYWRMYWJlbCA9ICJOZXcgIiArIGRvY1R5cGVVcGxvYWQgKyAiIERvY3VtZW50IFVwbG9hZGVkIjsKYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJkYi1sYWJlbCIsIHVwbG9hZExhYmVsKTsgLy9KUEIxOTA2MDQgY2hhbmdlZCB0byB3aGF0IEtlbiB3YW50ZWQgZnJvbSBJbml0aWFsIFBhdGllbnQgRW5yb2xsbWVudCBQYWNrZXQKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzVXBsb2FkKTsKLy9hbGVydCgiQEBAQCBSRVRVUk5JTkcgRlJPTSBSVUxFOyBOT1QgQ1JFQVRJTkcgTkVXIFNUQUNLIChUSElTIElTIFdIQVQgSlVEU09OIFdBTlRTKSIpOyBKUEIxOTEwMTQgbm93IHVwbG9hZCB3aWxsIGNyZWF0ZSBhIHpTdGFjawovL3JldHVybjsKfQphcnJPZlBhaXJzLnB1c2goenArIkNoYW5uZWxfX2MiLGNoYW5uZWwpOwphcnJPZlBhaXJzLnB1c2goenArImxhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CmFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goenArIlBhZ2VzX19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwphbGVydCgiQEBAekRhdGEucHJvZ3JhbU5hbWU9Iit6RGF0YS5wcm9ncmFtTmFtZSk7CmFyck9mUGFpcnMucHVzaCh6cCsiQ2xhc3NpZmljYXRpb25fX2MiLHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJQcm9ncmFtX05hbWVfX2MiLHpEYXRhLnByb2dyYW1OYW1lKTsgIC8vVE9ETyBzd2l0Y2ggdG8gcGlja2xpc3QKCi8vRVJTMjAwODE1ICM3NTY4NSBHVUVTU0lORyBhcnJPZlBhaXJzLnB1c2goIiIrIlByb2dyYW1fX2MiLHpEYXRhLnByb2dyYW1OYW1lKTsgIC8vRVJTMjAwMzA4IFRPRE8gc3dpdGNoIHRvIHBpY2tsaXN0CgovL0VSUzIwMDMwOCBpZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKaWYgKHpEYXRhLnpjaGFubmVsKSB7IC8vRVJTMjAwODIyICM3NTY4NAppZiAoekRhdGEuemNoYW5uZWwub3duZXIpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEuemNoYW5uZWwub3duZXIpOyAvL0VSUzIwMDMwOCAjNzAyNzMKYWxlcnQoIkVSUzIwMDMwOC4xMTkgb3duZXI9Iit6RGF0YS56Y2hhbm5lbC5vd25lcik7Cn0gZWxzZSB7IGFsZXJ0KCJFUlMyMDA4MjIgbm8gemNoYW5uZWwgeWV0ISIpOyB9CgppZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNIQVJUQSkgewphcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVyZ2VudCIpOwp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7ICAKYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJIaWdoIik7Cn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7CmFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aUkVGRVJSQUwpIHsgIAphcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlJvdXRpbmUiKTsKfQovKmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1BBTFZFTykgewphcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlNwZWNpYWwiKTsKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9WSU5ESUNPKSB7CmFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiU3RhbmRhcmQiKTsKfSovCmVsc2UKewphcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk5vcm1hbCIpOwp9CgphcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsICgiY29tbXVuaXR5IiA9PT0gY2hhbm5lbCB8fCAidXBsb2FkIiA9PT0gY2hhbm5lbCA/IGNoYW5uZWwgOiBkb2MuZGVsaXZlcmVkVG8pKTsgLy9KUEIxOTA1MjkgYWRkZWQgc28gQ29tbXVuaXR5IHNob3dzIHVwIGluIE1hc3RlciBJbnRha2UgTGlzdAphcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLGRvYy5kZWxpdmVyZWRGcm9tKTsKaWYgKHpEYXRhLnJldmlld2VkU3RhdHVzKSB7YXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsIHpEYXRhLnJldmlld2VkU3RhdHVzKTsgfSBlbHNlIHsKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOwp9CgphbGVydCgiUmV2aWV3ZWQgU3RhdHVzIGJlZm9yZSBzZXR0aW5nIGl0IHRvIFJlY2VpdmVkOiAiICsgWChkb2MsICJYX3Jldmlld2VkU3RhdHVzIikpOwphbGVydCgiekRhdGEucmV2aWV3ZWRTdGF0dXMgPSAiICsgekRhdGEucmV2aWV3ZWRTdGF0dXMpOwphcnJPZlBhaXJzID0gekRhdGEuY2xpZW50U3RhY2soZG9jLGFyck9mUGFpcnMpOyAvL1BWMjAxMTA5ICB3ZSBhcmUgdXNpbmcgY2xpZW50IGxpYiBub3cKdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6U3RhY2ssIHpEYXRhLmNsYXNzaWZpY2F0aW9uICsgIiBOZXcgU3RhY2siLCBhcnJPZlBhaXJzKTsKYWxlcnQoIiMjIyMgU3RhY2sgUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CmFyck9mUGFpcnMgPSBbXTsKLy9KUEIxOTA1MjkgRml4IHVwIHRoZSBmdW5reSBkZXN0aW5hdGlvbi9sYWJlbCBmb3IgY29tbXVuaXR5IHVwbG9hZHMKaWYgKCJjb21tdW5pdHkiID09PSBjaGFubmVsKSB7CnZhciBmcm9tRmlsZSA9IGRvYy5mcm9tRmlsZSArICIiOwp2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgnLScpOwp2YXIgYnVmZmVyID0gIiI7CmZvciAodmFyIGk9MDsgaTxwYXJ0cy5sZW5ndGg7IGkrKykgewppZiAoaSA+IDApIHsgYnVmZmVyICs9ICctJzsgfQppZiAoMSA9PT0gaSkgeyBidWZmZXIgKz0gImNvbW11bml0eSI7IH0KZWxzZSB7IGJ1ZmZlciArPSBwYXJ0c1tpXTsgfQp9CmFyck9mUGFpcnMucHVzaCgiWF9mcm9tRmlsZSIsIGJ1ZmZlcik7CmFyck9mUGFpcnMucHVzaCgiWF9kZXN0aW5hdGlvbiIsICJjb21tdW5pdHkiKTsKfQppZiAoInVwbG9hZCIgIT0gY2hhbm5lbCkgewphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgekRhdGEuY2xhc3NpZmljYXRpb24gKyAiIE5ldyBTdGFjayIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCB6VHlwZSk7Ly8gUFYxOTA3MDcgdG8gdXBkYXRlIHR5cGUgb24gZG9jc2V0Cn0KYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CmFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLHNmSWQpOwp2YXIgc2lnbmVkU3RhdHVzID0gIiI7ICAKYWxlcnQoIkBAQEAgekRhdGEucmV2aWV3ZWRTdGF0dXMgPSAiICsgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyAgCmlmICgiU2lnbmVkIiA9PT0gekRhdGEucmV2aWV3ZWRTdGF0dXMpIHsKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgc2lnbmVkU3RhdHVzID0gIlNpZ25lZCBieSBhZ2VudCBhdCAiK25vdzArIjxici8+IjsKfQphbGVydCgiU2lnbmVkU3RhdHVzID0gIiArIHNpZ25lZFN0YXR1cyk7CmlmICgxPT09MSkgewogICAgdmFyIGJhPSJSZWNlaXZlZCI7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKYWxlcnQoIiQkJCBub3cwID0gIiArIG5vdzAgKyAiLCBiYSA9ICIgKyBiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSBhZ2VudCBhdCAiK25vdzArIjxici8+IiArIHNpZ25lZFN0YXR1cyk7Cgp9CgphbGVydCgiQEBAIGNhbGxpbmcgdXBkYXRlREIgd2l0aCBwYXJhbXM6IEBAQEBAQEBAQEBAQCIpOwphbGVydChhcnJPZlBhaXJzKTsKYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKIC8qIEVORCAqLw=="},"ordinal":13}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN Create zStack */
//JPB200105 updated rule for HC Edge Demo Org
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
var deliveredTo = doc.deliveredTo + ""; //JPB190529 Check deliveredTo for community uploades
var facilityID = "";
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
arrOfPairs.push(zp+"Channel__c",channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
alert("@@@zData.programName="+zData.programName);
arrOfPairs.push(zp+"Classification__c",zData.classification);
arrOfPairs.push(zp+"Program_Name__c",zData.programName);  //TODO switch to picklist

//ERS200815 #75685 GUESSING arrOfPairs.push(""+"Program__c",zData.programName);  //ERS200308 TODO switch to picklist

//ERS200308 if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
if (zData.zchannel) { //ERS200822 #75684
if (zData.zchannel.owner) arrOfPairs.push("OwnerId",zData.zchannel.owner); //ERS200308 #70273
alert("ERS200308.119 owner="+zData.zchannel.owner);
} else { alert("ERS200822 no zchannel yet!"); }

if (zData.classification === zData.PROGRAM_ZCHARTA) {
arrOfPairs.push(zp+"Priority__c", "Urgent");
}
else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {  
arrOfPairs.push(zp+"Priority__c", "High");
}
else if (zData.classification === zData.PROGRAM_ZCARTA) {
arrOfPairs.push(zp+"Priority__c", "Critical");
}
else if (zData.classification === zData.PROGRAM_ZREFERRAL) {  
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
arrOfPairs = zData.clientStack(doc,arrOfPairs); //PV201109  we are using client lib now
var sfId = createAndAttach(doc, zStack, zData.classification + " New Stack", arrOfPairs);
alert("#### Stack Received. Attached to: " + sfId);
arrOfPairs = [];
//JPB190529 Fix up the funky destination/label for community uploads
if ("community" === channel) {
var fromFile = doc.fromFile + "";
var parts = fromFile.split('-');
var buffer = "";
for (var i=0; i<parts.length; i++) {
if (i > 0) { buffer += '-'; }
if (1 === i) { buffer += "community"; }
else { buffer += parts[i]; }
}
arrOfPairs.push("X_fromFile", buffer);
arrOfPairs.push("X_destination", "community");
}
if ("upload" != channel) {
arrOfPairs.push("db-label", zData.classification + " New Stack");
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
