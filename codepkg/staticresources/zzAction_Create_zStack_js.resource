<!--
// Name: Create zStack
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-01 22:14:30","evalContinue":"true","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gQ3JlYXRlIHpTdGFjayAqLwovL0pQQjIwMDEyMyB1cGRhdGVkIHJ1bGUgZm9yIEhDIEVkZ2UgRGVtbyBPcmcKLy92YXIga2V5d29yZHM9WyJORVc6RG9jdW1lbnQgU3RhY2siXTsgLy9FUlMxOTAzMjYgIzU3NDU2ICJFTlJMOiJdOyB3aWxsIGFsd2F5cyBtYXRjaCBjaGFuZ2VkIHRvIE5FVyBKUEIxOTA2MDQKLy9DUk4yMDEwMjUgIzc2Nzg4IE1vdmluZyB0aGlzIHRvIENsaWVudCBMaWJyYXJ5IHdoZXJlIGl0IGJlbG9uZ3Mgc28gd2UgY2FuIHVzZSBpdCBpbiB0aGVjIEluZGV4IFBhZ2UgcnVsZSBhbHNvLgovL1NIUjIwMTAyNyAjNzY3ODggUmUtZW5hYmxlIHRlbXBvcmFyaWx5IHNvIEp1ZHNvbiBjYW4gaW1wb3J0IGRhdGEgLS0gd2h5IGFyZSBrZXl3b3JkcyBub3QgZGVmaW5lZCB3aGVuIHVzaW5nIHRoZSBCdXR0b24gYWN0aW9uPyE/CnZhciBrZXl3b3JkTWFwPXt9Owp2YXIga2V5d29yZHM9WyJORVc6RG9jdW1lbnQgU3RhY2t+IiwiRU5STDpFbnJvbGxtZW50fiIsIkVOUkw6RU5ST0xMTUVOVH4iLCJDT046Q29uc2VudH4iLCJDT046Y29uc2VudH4iLCJGQUM6U2V0dGluZ34iLCJGQUM6RGlzdHJpYnV0aW9ufiIsIlNUQVJUOlN0YXJ0IEZvcm1+IiwiQ0hLOkNoZWNrbGlzdH4iLCJISVBBQTpBVVRIT1JJWkFUSU9OfiIsIkhJUEFBOkhJUEFBfiIsIkhJUEFBOlBPUlRBQklMSVRZfiIsIlJFRjpSRUZFUlJBTCIsIlJFRjpSZWZlcnJhbCIsIkZJTjpXMn4iLCJJQzpNZW1iZXIgSUR+IiwiRkFYOiJdOwovL2tleXdvcmRNYXBbIlRFTlIiXSA9IlRFTlI6U3RhcnQgRm9ybSI7IAprZXl3b3JkTWFwWyJORVciXSA9Ik5FVzpEb2N1bWVudCBTdGFjayI7CmtleXdvcmRNYXBbIkVOUkwiXSA9IkVOUkw6RW5yb2xsbWVudCBGb3JtIjsKa2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKa2V5d29yZE1hcFsiRkFYIl0gPSJORVc6RG9jdW1lbnQgU3RhY2siOwovL2tleXdvcmRNYXBbIlNUQVJUIl0gPSJORVc6RG9jdW1lbnQgU3RhY2siOwprZXl3b3JkTWFwWyJDT04iXSA9IkNPTjpDb25zZW50IEZvcm0iOwprZXl3b3JkTWFwWyJISVBBQSJdID0iSElQQUE6SElQQUEgQVVUSE9SSVpBVElPTiI7CmtleXdvcmRNYXBbIlJFRiJdID0iUkVGOlJFRkVSUkFMIjsKa2V5d29yZE1hcFsiRlcyIl0gPSJGVzI6Vy0yIjsgLy9KUEIyMDEwMjMgYWRkZWQKa2V5d29yZE1hcFsiSTkiXSA9Ikk5OkktOSI7IC8vSlBCMjAxMDIzIGFkZGVkCmtleXdvcmRNYXBbIlc0Il0gPSJXNDpXLTQiOyAvL0pQQjIwMTAyMyBhZGRlZAovL2tleXdvcmRNYXBbIkZJTiJdID0iRklOOlctMiI7Ci8va2V5d29yZE1hcFsiSUMiXSA9IklDOk1lbWJlciBJRCI7Ci8va2V5d29yZE1hcFsiQ0hLIl0gPSJDSEs6Q2hlY2tsaXN0IjsKCgp2YXIgelR5cGU9ZG9jLlgoIlhfZG9jVHlwZSIpOwppZiAoekRhdGEuZG9jVHlwZU9DUj09PSJGQVgiIHx8IHpEYXRhLmRvY1R5cGVPQ1I9PT0iIikgewogICAgekRhdGEuZG9jVHlwZU9DUj16RGF0YS5kb2NUeXBlcihkb2Msa2V5d29yZHMpOyAKICAgIGFsZXJ0KCJkb2NUeXBlIHdhcyAiK2RvYy5kb2NUeXBlKyIgbm93ICIrIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgelR5cGU9ZG9jLlgoIlhfZG9jVHlwZSIpOwogICAgaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgICAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgCWFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsekRhdGEuZG9jVHlwZU9DUik7CiAgICAgICAgelR5cGU9ekRhdGEuZG9jVHlwZU9DUjsgCiAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7CiAgICB9Cn0gZWxzZSB7IC8vRVJTMTkwMTE5IFRPRE8gYXV0b1NwbGl0ICM1MzAwMAogICAgLy8gelR5cGU9ekRhdGEuZG9jVHlwZU9DUjsJCQkvL0NSTjIwMTAyNCBDYXNlICM3Njc4OCBUaGlzIGlzIHNjcmV3aW5nIHVwIHRoZSBsYWJlbCBvZiB0aGUgcGFyZW50IHN0YWNrJ3MgUmVjZWl2ZWQgRG9jdW1lbnQuCiAgICBhbGVydCgiRVJTMTkwMTE5IEF1dG9Ecml2ZSBmb3VuZCAiK3pUeXBlKyIgZmlyc3Qgb3IgbGFzdC4gV2hpY2ggaXMgaXQ/Iik7Cn0KCnpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAKCmFsZXJ0KCIjIyMjIGZheCB3YXMgZGVsaXZlcmVkIHRvIG51bWJlcjogIiArIGRvYy5kZWxpdmVyZWRUbyk7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIHpwPSJaUEFQRVJfXyI7IAp2YXIgelN0YWNrPXpwKyJ6U3RhY2tfX2MiOyAKCmlmKHpUeXBlID09ICJGQVgiIHx8IHpUeXBlID09ICJTVEFSVCIpeyAvL1BWMTkwNzA3IERvY3R5cGUgYXMgbmV3Cgl6VHlwZT0iTkVXIjsKCn0KCmFsZXJ0KCJAQEBAelR5cGU9Iit6VHlwZSk7Ci8vQ1JOMjAxMDI0IENhc2UgIzc2Nzg4IElmIHRoaXMgaXMgZnJvbSBhbiB1cGxvYWQgdG8gYSBSZWNlaXZlZCBEb2N1bWVudCwgc2V0IHRoZSBkb2NUeXBlIHRvIE5FVzpEb2N1bWVudCBTdGFjawovLyBhcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSA/ICJORVciIDoga2V5d29yZE1hcFt6VHlwZV0pOwovL0NSTjIwMTAyNSBDYXNlICM3Njc4OCBBY2NvcmRpbmcgdG8gSnVkc29uLCB0aGlzIG5ld2x5LXJlY2VpdmVkIFN0YWNrIHNob3VsZCBBTFdBWVMgYmUgc2V0IHRvIE5FVzpEb2N1bWVudCBTdGFjawphcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCAiTkVXIik7CmFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIlJlY2VpdmVkIik7IC8vIFBWMTkwNDE4IFVwZGF0ZWQgc3RhZ2UgdG8gYmUgUmVjZWl2ZWQKCmFsZXJ0KCJFUlMxODA1MDUgZG9jLmRlbGl2ZXJlZEZyb209Iitkb2MuZGVsaXZlcmVkRnJvbSk7Cgp2YXIgY2hhbm5lbD0iRmF4IjsgLy9KUEIxOTA1MjkgYWRkZWQgY29tbXVuaXR5IHRvIHRoZSBjaGFubmVsCnZhciBkZWxpdmVyZWRGcm9tID0gZG9jLmRlbGl2ZXJlZEZyb20gKyAiIjsgLy9DUk4xODA5MDkgTWFrZSBzdXJlIHdlIGhhdmUgYSBKYXZhc2NyaXB0IHN0cmluZwp2YXIgZGVsaXZlcmVkVG8gPSBkb2MuZGVsaXZlcmVkVG8gKyAiIjsJLy9KUEIxOTA1MjkgQ2hlY2sgZGVsaXZlcmVkVG8gZm9yIGNvbW11bml0eSB1cGxvYWRlcwp2YXIgZmFjaWxpdHlJRCA9ICIiOwkJCQkJCi8vIGlmIChkZWxpdmVyZWRGcm9tLmluZGV4T2YoIkAiKT4tMSB8fCBkZWxpdmVyZWRGcm9tLmluZGV4T2YoIi4iKT4tMSkge2NoYW5uZWw9IkVtYWlsIjt9IC8vRVJTMTgwNTA1ICM0ODEwMQppZiAoaXNOYU4oZGVsaXZlcmVkRnJvbSkpIHsKCS8vQ1JOMjAxMDI2ICM3Njc4OCBUaGlzIHdpbGwgb25seSB3b3JrIGZvciBkZW1vIHB1cnBvc2VzIGJlY2F1c2UgdGhlICdAJyBpcyBub3QgYmVpbmcgaW5jbHVkZWQgaW4gZW1haWwgYWRkcmVzc2VzCgkvLyB0aGF0IG1ha2UgdXAgdGhlICdkZWxpdmVyZWRGcm9tJyBwYXJ0IG9mIHRoZSBmaWxlIG5hbWU7CgkvLyBzbyB0aGUgZW1haWwgYWRkcmVzcyBNVVNUIGhhdmUgYSAnKycgaW4gaXQgZm9yIHRoaXMgdG8gd29yaywgd2hpY2ggb2YgY291cnNlIG1pZ2h0IG5vdCBiZSB0aGUgY2FzZSBpbiByZWFsIGxpZmUgdXNlIGNhc2VzLgoJY2hhbm5lbCA9IGRlbGl2ZXJlZEZyb20uc3RhcnRzV2l0aCgiMGlvIikgPyAidXBsb2FkIiA6IChkZWxpdmVyZWRGcm9tLmluZGV4T2YoJysnKSA+PSAwID8gIkVtYWlsIiA6ICJzY2FuIik7Cn0gLy9FUlMxODA1MDUgIzQ4MTAxCmlmIChpc05hTihkZWxpdmVyZWRUbykpIHsKCWlmIChkZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImNvbW11bml0eSIpID49IDApIHsKCQljaGFubmVsID0gImNvbW11bml0eSI7Cgl9IAoJZWxzZSBpZiAoZGVsaXZlcmVkVG8udG9Mb3dlckNhc2UoKS5pbmRleE9mKCJ1cGxvYWQiKSA+PSAwKSB7CgkJY2hhbm5lbCA9ICJ1cGxvYWQiCgl9CgllbHNlIHsKCQljaGFubmVsPSJTY2FuIjsKCX0KfSAKCWlmICgiRmF4IiA9PSBjaGFubmVsKSB7CiAgICB2YXIgaW5jb21pbmdOdW1iZXIgPSBkZWxpdmVyZWRGcm9tOwogICAgaWYgKGRlbGl2ZXJlZEZyb20uc2l6ZSgpID09IDExKSB7CiAgICAgICAgaW5jb21pbmdOdW1iZXIgPSBkZWxpdmVyZWRGcm9tLnN1YnN0cmluZygxKTsKICAgIH0KICAgIGZhY2lsaXR5SUQgPSBnZXRTRlJlY29yZElEKGRvYywgIkFjY291bnQiLCB7IkZheCI6aW5jb21pbmdOdW1iZXJ9KTsKICAgIGlmICghZmFjaWxpdHlJRCkgeyAvL01TSDIwMDkwMyAjNzU2ODUgcG90ZW50aWFsIG51bGwgcmVzcG9uc2UgZnJvbSBnZXRTRlJlY29yZElECiAgICAgICAgZmFjaWxpdHlJRCA9ICIiOwogICAgfQogICAgaWYgKCIiICE9PSBmYWNpbGl0eUlEICYmIGZhY2lsaXR5SUQubGVuZ3RoID4gMCkgewogICAgICAgIGFyck9mUGFpcnMucHVzaCgiRmFjaWxpdHlfX2MiLCBmYWNpbGl0eUlEKTsJCQkJICAgCgl9CQkJCQkJICAJIAp9CmFsZXJ0KCIjIyMjIGRlbGl2ZXJlZFRvID0gIiArIGRlbGl2ZXJlZFRvICsgIiwgY2hhbm5lbCA9ICIgKyBjaGFubmVsKTsKLy9KUEIxOTA5MzAgSWYgdGhpcyBpcyBhbiB1cGxvYWQsIGNoZWNrIHRvIHNlZSBpZiB3ZSBoYXZlIGEgU2FsZXNmb3JjZSBJZCB0byBhdHRhY2ggdG8KdmFyIHVwbG9hZExhYmVsID0gbnVsbDsKaWYgKCJ1cGxvYWQiID09IGNoYW5uZWwpIHsKCS8vIFVwbG9hZCBmaWxlbmFtZSBsb29rcyBsaWtlIHRoaXM6IGVtYWlsLWxpZ2h0bmluZ1VwbG9hZC1zZklkLWRvY1R5cGUtbmFtZSBvZiB1cGxvYWRlZCBmaWxlCgl2YXIgZnJvbUZpbGUgPSBkb2MuZnJvbUZpbGUgKyAiIjsKCXZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCctJyk7Cgl2YXIgc2ZJZCwgZG9jVHlwZVVwbG9hZCA9ICJVTktOT1dOIjsKCWlmIChwYXJ0cy5sZW5ndGggPiAyKSB7IHNmSWQgPSBwYXJ0c1syXTsgfQoJaWYgKHBhcnRzLmxlbmd0aCA+IDMpIHsgZG9jVHlwZVVwbG9hZCA9IHBhcnRzWzNdOyB9CglhbGVydCgiQEBAQEAgQXR0YWNoaW5nIGluY29taW5nIGRvY3VtZW50IHRvIFNhbGVzZm9yY2UgSWQ6ICIgKyBzZklkKTsKCWFsZXJ0KCJAQEBAQCBkb2NUeXBlIG9mIHVwbG9hZGVkIGRvYzogIiArIGRvY1R5cGVVcGxvYWQpOwoJYXR0YWNoKGRvYywgIkRvY3VtZW50IHVwbG9hZGVkIC0gIiArIGRvY1R5cGVVcGxvYWQsIHNmSWQpOwoJdmFyIGFyck9mUGFpcnNVcGxvYWQgPSBbXTsKICAgIHZhciBiYT0iUmVjZWl2ZWQiOwogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CglhbGVydCgiJCQkIG5vdzAgPSAiICsgbm93MCArICIsIGJhID0gIiArIGJhKTsKICAgIGFyck9mUGFpcnNVcGxvYWQucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwogICAgYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5IGFnZW50IGF0ICIrbm93MCsiPGJyLz4iICsgc2lnbmVkU3RhdHVzKTsKCWFyck9mUGFpcnNVcGxvYWQucHVzaCgiWF9kb2NUeXBlIiwgZG9jVHlwZVVwbG9hZCk7Cgl1cGxvYWRMYWJlbCA9ICJOZXcgIiArIGRvY1R5cGVVcGxvYWQgKyAiIERvY3VtZW50IFVwbG9hZGVkIjsKCWFyck9mUGFpcnNVcGxvYWQucHVzaCgiZGItbGFiZWwiLCB1cGxvYWRMYWJlbCk7IC8vSlBCMTkwNjA0IGNoYW5nZWQgdG8gd2hhdCBLZW4gd2FudGVkIGZyb20gSW5pdGlhbCBQYXRpZW50IEVucm9sbG1lbnQgUGFja2V0Cgl1cGRhdGVEQihkb2MsIGFyck9mUGFpcnNVcGxvYWQpOwoJLy9hbGVydCgiQEBAQCBSRVRVUk5JTkcgRlJPTSBSVUxFOyBOT1QgQ1JFQVRJTkcgTkVXIFNUQUNLIChUSElTIElTIFdIQVQgSlVEU09OIFdBTlRTKSIpOyBKUEIxOTEwMTQgbm93IHVwbG9hZCB3aWxsIGNyZWF0ZSBhIHpTdGFjawoJLy9yZXR1cm47Cn0KLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggSWYgdGhpcyBpcyBmcm9tIGFuIHVwbG9hZCB0byBhIFJlY2VpdmVkIERvY3VtZW50LCBzZXQgdGhlIGNoYW5uZWwgb24gdGhlIHpTdGFjayBhcyB1cGxvYWQKYXJyT2ZQYWlycy5wdXNoKHpwKyJDaGFubmVsX19jIixkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSA/ICJ1cGxvYWQiIDogY2hhbm5lbCk7CmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwphcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CmFsZXJ0KCJAQEB6RGF0YS5wcm9ncmFtTmFtZT0iK3pEYXRhLnByb2dyYW1OYW1lKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiQ2xhc3NpZmljYXRpb25fX2MiLHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7ICAvL1RPRE8gc3dpdGNoIHRvIHBpY2tsaXN0IC8vVE9ETyBFUlMyMDEyMDkgcmVtb3ZlIGZyb20gTVAKYXJyT2ZQYWlycy5wdXNoKHpwKyJQcm9ncmFtX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7IC8vSlBCMjAxMDIzIHN3aXRjaGVkIHRvIHBpY2tsaXN0IFRPRE9ORSAvL0VSUzIwMTIwOSBub3cgaW4gYmFzZSBNUCAjNzk0OTUKLy9FUlMyMDA4MTUgIzc1Njg1IEdVRVNTSU5HIGFyck9mUGFpcnMucHVzaCgiIisiUHJvZ3JhbV9fYyIsekRhdGEucHJvZ3JhbU5hbWUpOyAgLy9FUlMyMDAzMDggVE9ETyBzd2l0Y2ggdG8gcGlja2xpc3QKCi8vRVJTMjAwMzA4IGlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwppZiAoekRhdGEuemNoYW5uZWwpIHsgLy9FUlMyMDA4MjIgIzc1Njg0CmlmICh6RGF0YS56Y2hhbm5lbC5vd25lcikgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS56Y2hhbm5lbC5vd25lcik7IC8vRVJTMjAwMzA4ICM3MDI3MwphbGVydCgiRVJTMjAwMzA4LjExOSBvd25lcj0iK3pEYXRhLnpjaGFubmVsLm93bmVyKTsKfSBlbHNlIHsgYWxlcnQoIkVSUzIwMDgyMiBubyB6Y2hhbm5lbCB5ZXQhIik7IH0KCmlmICh6RGF0YS5wcm9ncmFtTmFtZSA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7IC8vSlBCMjAxMDIzIGNoYW5nZWQgZnJvbSBjbGFzc2lmaWNhdGlvbiB0byBwcm9ncmFtTmFtZQoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsgCn0KZWxzZSBpZiAoekRhdGEucHJvZ3JhbU5hbWUgPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsgIC8vSlBCMjAxMDIzIGNoYW5nZWQgZnJvbSBjbGFzc2lmaWNhdGlvbiB0byBwcm9ncmFtTmFtZQoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJIaWdoIik7IAp9CmVsc2UgaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSB6RGF0YS5QUk9HUkFNX1pDQVJUQSkgeyAvL0pQQjIwMTAyMyBjaGFuZ2VkIGZyb20gY2xhc3NpZmljYXRpb24gdG8gcHJvZ3JhbU5hbWUKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsJCn0KZWxzZSBpZiAoekRhdGEucHJvZ3JhbU5hbWUgPT09IHpEYXRhLlBST0dSQU1fWlJFRkVSUkFMKSB7ICAvL0pQQjIwMTAyMyBjaGFuZ2VkIGZyb20gY2xhc3NpZmljYXRpb24gdG8gcHJvZ3JhbU5hbWUKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiUm91dGluZSIpOyAKfQovKmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1BBTFZFTykgeyAKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiU3BlY2lhbCIpOwkKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9WSU5ESUNPKSB7IAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJTdGFuZGFyZCIpOwkKfSovCmVsc2UgCnsKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7Cn0KCmFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgKCJjb21tdW5pdHkiID09PSBjaGFubmVsIHx8ICJ1cGxvYWQiID09PSBjaGFubmVsID8gY2hhbm5lbCA6IGRvYy5kZWxpdmVyZWRUbykpOyAvL0pQQjE5MDUyOSBhZGRlZCBzbyBDb21tdW5pdHkgc2hvd3MgdXAgaW4gTWFzdGVyIEludGFrZSBMaXN0CmFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsZG9jLmRlbGl2ZXJlZEZyb20pOwppZiAoekRhdGEucmV2aWV3ZWRTdGF0dXMpIHthcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyB9IGVsc2UgewphcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IAp9CgphbGVydCgiUmV2aWV3ZWQgU3RhdHVzIGJlZm9yZSBzZXR0aW5nIGl0IHRvIFJlY2VpdmVkOiAiICsgWChkb2MsICJYX3Jldmlld2VkU3RhdHVzIikpOwphbGVydCgiekRhdGEucmV2aWV3ZWRTdGF0dXMgPSAiICsgekRhdGEucmV2aWV3ZWRTdGF0dXMpOwoKLyogIzgwNzk0IFN0ZXZlIGF0dGVtcHRlZCB0aGlzIHdvcmthcm91bmQgYnV0IGl0IGRpZG4ndCB3b3JrCmlmICh6RGF0YS5jbGllbnRTdGFjaykgeyAvL1NIUjIxMDEyNiAjODA3OTQgYWRkIHRoZSB6U3RhY2tGaWVsZHMgbGlzdGVkIGluIGN1c3RvbSBzZXR0aW5ncwogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pTdGFja0ZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCn0KKi8KCnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCB6RGF0YS5wcm9ncmFtTmFtZSArICIgTmV3IFN0YWNrIiwgYXJyT2ZQYWlycyk7IC8vSlBCMjAxMDIzIGNoYW5nZWQgZnJvbSBjbGFzc2lmaWNhdGlvbiB0byBwcm9ncmFtTmFtZQphbGVydCgiIyMjIyBTdGFjayBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggV2UgbmVlZCB0byBjcmVhdGUgYSBSZWNlaXZlZCBEb2N1bWVudCBmb3IgdGhlIHBhcmVudCBzdGFjayBhbHNvLgppZiAoekRhdGEuY2xpZW50UmVjZWl2ZWREb2N1bWVudCkgewoJLy8gIG9ubHkgaWYgaXQgd2Fzbid0IGFscmVhZHkgdXBsb2FkZWQgdG8gU2FsZXNmb3JjZQoJaWYgKCFkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSkgeyB6RGF0YS5yZWNEb2NJZCA9IHpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQoZG9jLCBzZklkLCAiUmVjZWl2ZWQgRG9jdW1lbnQgelN0YWNrIik7IH0JLy9FUlMyMDEwMTggIzc3MjUyCn0KLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggSWYgdGhpcyBpcyBmcm9tIGFuIHVwbG9hZCwgc2V0IHRoZSBEb2N1bWVudCBOdW1iZXIgaW4gdGhlIFJlY2VpdmVkIERvY3VtZW50CmFsZXJ0KCIjIyMgZG9jLmRlbGl2ZXJlZEZyb20gPT4gIiArIGRvYy5kZWxpdmVyZWRGcm9tKTsKaWYgKGRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoIjBpbyIpKSB7CglhbGVydCgiIyMjIFNldHRpbmcgdGhlIERvY3VtZW50IE51bWJlciBpbiB0aGUgUmVjZWl2ZWQgRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kZWxpdmVyZWRGcm9tKTsKCXZhciBhcnJvZlBhaXJzUkQgPSBbXTsKCWFycm9mUGFpcnNSRC5wdXNoKCJEb2N1bWVudE51bWJlciIsICJ6OiIgKyBkb2MuZGJJRCk7Cgl1cGRhdGVTRlJlY29yZChkb2MsICJSZWNlaXZlZERvY3VtZW50IiwgZG9jLmRlbGl2ZXJlZEZyb20sIGFycm9mUGFpcnNSRCk7Cn0KCmFyck9mUGFpcnMgPSBbXTsKLy9KUEIxOTA1MjkgRml4IHVwIHRoZSBmdW5reSBkZXN0aW5hdGlvbi9sYWJlbCBmb3IgY29tbXVuaXR5IHVwbG9hZHMKaWYgKCJjb21tdW5pdHkiID09PSBjaGFubmVsKSB7Cgl2YXIgZnJvbUZpbGUgPSBkb2MuZnJvbUZpbGUgKyAiIjsKCXZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCctJyk7Cgl2YXIgYnVmZmVyID0gIiI7Cglmb3IgKHZhciBpPTA7IGk8cGFydHMubGVuZ3RoOyBpKyspIHsKCQlpZiAoaSA+IDApIHsgYnVmZmVyICs9ICctJzsgfQoJCWlmICgxID09PSBpKSAJeyBidWZmZXIgKz0gImNvbW11bml0eSI7IH0KCQllbHNlIAkJCXsgYnVmZmVyICs9IHBhcnRzW2ldOyB9Cgl9CglhcnJPZlBhaXJzLnB1c2goIlhfZnJvbUZpbGUiLCBidWZmZXIpOwoJYXJyT2ZQYWlycy5wdXNoKCJYX2Rlc3RpbmF0aW9uIiwgImNvbW11bml0eSIpOwp9CmlmICgidXBsb2FkIiAhPSBjaGFubmVsKSB7CglhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgekRhdGEucHJvZ3JhbU5hbWUgKyAiIE5ldyBTdGFjayIpOyAvL0pQQjIwMTAyMyBjaGFuZ2VkIGZyb20gY2xhc3NpZmljYXRpb24gdG8gcHJvZ3JhbU5hbWUKICAgIC8vIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgelR5cGUpOy8vIFBWMTkwNzA3IHRvIHVwZGF0ZSB0eXBlIG9uIGRvY3NldAovL0NSTjIwMTAyNCBDYXNlICM3Njc4OCBJZiB0aGlzIGlzIGZyb20gYW4gdXBsb2FkIHRvIGEgUmVjZWl2ZWQgRG9jdW1lbnQsIHNldCB0aGUgZG9jVHlwZSBpbiBvdXIgZGF0YWJhc2UgdG8gTkVXCi8vICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsIGRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoIjBpbyIpID8gIk5FVyIgOiB6VHlwZSk7Ly8gUFYxOTA3MDcgdG8gdXBkYXRlIHR5cGUgb24gZG9jc2V0Ci8vQ1JOMjAxMDI1IENhc2UgIzc2Nzg4IEFjY29yZGluZyB0byBKdWRzb24sIHRoZSBkb2NUeXBlIGZvciB0aGlzIG5ld2x5LXJlY2VpdmVkIFN0YWNrIHNob3VsZCBBTFdBWVMgYmUgc2V0IHRvIE5FVwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCAiTkVXIik7Cn0KYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CmFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLHNmSWQpOyAKdmFyIHNpZ25lZFN0YXR1cyA9ICIiOyAgCmFsZXJ0KCJAQEBAIHpEYXRhLnJldmlld2VkU3RhdHVzID0gIiArIHpEYXRhLnJldmlld2VkU3RhdHVzKTsKLy9TSFIyMDEwMjcgVG8gcmVtb3ZlIHRoZSBTaWduZWQgc3RhZ2UgY2hlY2tib3ggZnJvbSB0aGUgcGFyZW50IChhcyBKQiBzdWdnZXN0cyksIGNvbW1lbnQgb3V0IHRoZSBsaW5lcyBiZWxvdwppZiAoMT09PTEgJiYgIlNpZ25lZCIgPT09IHpEYXRhLnJldmlld2VkU3RhdHVzKSB7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIHNpZ25lZFN0YXR1cyA9ICJTaWduZWQgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiI7IAp9CmFsZXJ0KCJTaWduZWRTdGF0dXMgPSAiICsgc2lnbmVkU3RhdHVzKTsKaWYgKDE9PT0xKSB7IAogICAgdmFyIGJhPSJSZWNlaXZlZCI7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKCWFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwICsgIiwgYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIGJhKyIgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiIgKyBzaWduZWRTdGF0dXMgKyBYKGRvYywiWF9yZXZpZXdzIikpOyAvL1NIUjIwMTAyNyAjNzY3ODggS2VlcCB0aGUgcGFyZW50IHJldmlld3MgYXQgdGhlIHRvcAoKfQoKYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKYWxlcnQoYXJyT2ZQYWlycyk7CmFsZXJ0KCJAQEAgY2FsbGluZyB1cGRhdGVEQiB3aXRoIHBhcmFtczogQEBAQEBAQEBAQEBAIik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAvKiBFTkQgKi8="},"ordinal":11}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN Create zStack */
//JPB200123 updated rule for HC Edge Demo Org
//var keywords=["NEW:Document Stack"]; //ERS190326 #57456 "ENRL:"]; will always match changed to NEW JPB190604
//CRN201025 #76788 Moving this to Client Library where it belongs so we can use it in thec Index Page rule also.
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

/* #80794 Steve attempted this workaround but it didn't work
if (zData.clientStack) { //SHR210126 #80794 add the zStackFields listed in custom settings
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__zStackFields__c")); //ERS190803 #52661 using JSON 
}
*/

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
