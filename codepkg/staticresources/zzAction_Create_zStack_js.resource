<!--
// Name: Create zStack
// Committer: eric.stephens@zpaper.com
// Update: ERS200918 zStack owner
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-09-18 22:42:41","evalContinue":"true","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gQ3JlYXRlIHpTdGFjayAqLwovL0pQQjIwMDEwNSB1cGRhdGVkIHJ1bGUgZm9yIEhDIEVkZ2UgRGVtbyBPcmcKLy92YXIga2V5d29yZHM9WyJORVc6RG9jdW1lbnQgU3RhY2siXTsgLy9FUlMxOTAzMjYgIzU3NDU2ICJFTlJMOiJdOyB3aWxsIGFsd2F5cyBtYXRjaCBjaGFuZ2VkIHRvIE5FVyBKUEIxOTA2MDQKdmFyIGtleXdvcmRNYXA9e307IAp2YXIga2V5d29yZHM9WyJORVc6RG9jdW1lbnQgU3RhY2t+IiwiRU5STDpFbnJvbGxtZW50fiIsIkVOUkw6RU5ST0xMTUVOVH4iLCJDT046Q29uc2VudH4iLCJDT046Y29uc2VudH4iLCJGQUM6U2V0dGluZ34iLCJGQUM6RGlzdHJpYnV0aW9ufiIsIlNUQVJUOlN0YXJ0IEZvcm1+IiwiQ0hLOkNoZWNrbGlzdH4iLCJISVBBQTpBVVRIT1JJWkFUSU9OfiIsIkhJUEFBOkhJUEFBfiIsIkhJUEFBOlBPUlRBQklMSVRZfiIsIlJFRjpSRUZFUlJBTCIsIlJFRjpSZWZlcnJhbCIsIkZJTjpXMn4iLCJJQzpNZW1iZXIgSUR+IiwiRkFYOiJdOwprZXl3b3JkTWFwWyJURU5SIl0gPSJURU5SOlN0YXJ0IEZvcm0iOyAKa2V5d29yZE1hcFsiTkVXIl0gPSJORVc6RG9jdW1lbnQgU3RhY2siOwprZXl3b3JkTWFwWyJFTlJMIl0gPSJFTlJMOkVucm9sbG1lbnQgRm9ybSI7CmtleXdvcmRNYXBbIkZBQyJdID0iRkFDOkZhY2lsaXR5IEVucm9sbG1lbnQgRm9ybSI7CmtleXdvcmRNYXBbIkZBWCJdID0iTkVXOkRvY3VtZW50IFN0YWNrIjsKa2V5d29yZE1hcFsiU1RBUlQiXSA9Ik5FVzpEb2N1bWVudCBTdGFjayI7Ci8va2V5d29yZE1hcFsiQ09OIl0gPSJDT046Q29uc2VudCI7Ci8va2V5d29yZE1hcFsiSElQQUEiXSA9IkhJUEFBOkhJUEFBIEFVVEhPUklaQVRJT04iOwovL2tleXdvcmRNYXBbIlJFRiJdID0iUkVGOlJFRkVSUkFMIjsKLy9rZXl3b3JkTWFwWyJGSU4iXSA9IkZJTjpXLTIiOwovL2tleXdvcmRNYXBbIklDIl0gPSJJQzpNZW1iZXIgSUQiOwovL2tleXdvcmRNYXBbIkNISyJdID0iQ0hLOkNoZWNrbGlzdCI7CgoKdmFyIHpUeXBlPWRvYy5YKCJYX2RvY1R5cGUiKTsgCmlmICh6RGF0YS5kb2NUeXBlT0NSPT09IkZBWCIgfHwgekRhdGEuZG9jVHlwZU9DUj09PSIiKSB7IAogICAgekRhdGEuZG9jVHlwZU9DUj16RGF0YS5kb2NUeXBlcihkb2Msa2V5d29yZHMpOyAKICAgIGFsZXJ0KCJkb2NUeXBlIHdhcyAiK2RvYy5kb2NUeXBlKyIgbm93ICIrIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgelR5cGU9ZG9jLlgoIlhfZG9jVHlwZSIpOwogICAgaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgICAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgCWFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsekRhdGEuZG9jVHlwZU9DUik7CiAgICAgICAgelR5cGU9ekRhdGEuZG9jVHlwZU9DUjsgCiAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7CiAgICB9Cn0gZWxzZSB7IC8vRVJTMTkwMTE5IFRPRE8gYXV0b1NwbGl0ICM1MzAwMAogICAgelR5cGU9ekRhdGEuZG9jVHlwZU9DUjsgCiAgICBhbGVydCgiRVJTMTkwMTE5IEF1dG9Ecml2ZSBmb3VuZCAiK3pUeXBlKyIgZmlyc3Qgb3IgbGFzdC4gV2hpY2ggaXMgaXQ/Iik7Cn0KCnpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAKCmFsZXJ0KCIjIyMjIGZheCB3YXMgZGVsaXZlcmVkIHRvIG51bWJlcjogIiArIGRvYy5kZWxpdmVyZWRUbyk7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIHpwPSJaUEFQRVJfXyI7IAp2YXIgelN0YWNrPXpwKyJ6U3RhY2tfX2MiOyAKCmlmKHpUeXBlID09ICJGQVgiIHx8IHpUeXBlID09ICJTVEFSVCIpeyAvL1BWMTkwNzA3IERvY3R5cGUgYXMgbmV3Cgl6VHlwZT0iTkVXIjsKCn0KCmFsZXJ0KCJAQEBAelR5cGU9Iit6VHlwZSk7CmFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsIGtleXdvcmRNYXBbelR5cGVdKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIlJlY2VpdmVkIik7IC8vIFBWMTkwNDE4IFVwZGF0ZWQgc3RhZ2UgdG8gYmUgUmVjZWl2ZWQgCgphbGVydCgiRVJTMTgwNTA1IGRvYy5kZWxpdmVyZWRGcm9tPSIrZG9jLmRlbGl2ZXJlZEZyb20pOwoKdmFyIGNoYW5uZWw9IkZheCI7IC8vSlBCMTkwNTI5IGFkZGVkIGNvbW11bml0eSB0byB0aGUgY2hhbm5lbAp2YXIgZGVsaXZlcmVkRnJvbSA9IGRvYy5kZWxpdmVyZWRGcm9tICsgIiI7IC8vQ1JOMTgwOTA5IE1ha2Ugc3VyZSB3ZSBoYXZlIGEgSmF2YXNjcmlwdCBzdHJpbmcKdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvICsgIiI7CS8vSlBCMTkwNTI5IENoZWNrIGRlbGl2ZXJlZFRvIGZvciBjb21tdW5pdHkgdXBsb2FkZXMKdmFyIGZhY2lsaXR5SUQgPSAiIjsJCQkJCQppZiAoZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHtjaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE4MDUwNSAjNDgxMDEKaWYgKGlzTmFOKGRlbGl2ZXJlZFRvKSkgewoJaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewoJCWNoYW5uZWwgPSAiY29tbXVuaXR5IjsKCX0gCgllbHNlIGlmIChkZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpID49IDApIHsKCQljaGFubmVsID0gInVwbG9hZCIKCX0KCWVsc2UgewoJCWNoYW5uZWw9IlNjYW4iOwoJfQp9IAoJaWYgKCJGYXgiID09IGNoYW5uZWwpIHsKICAgIHZhciBpbmNvbWluZ051bWJlciA9IGRlbGl2ZXJlZEZyb207CiAgICBpZiAoZGVsaXZlcmVkRnJvbS5zaXplKCkgPT0gMTEpIHsKICAgICAgICBpbmNvbWluZ051bWJlciA9IGRlbGl2ZXJlZEZyb20uc3Vic3RyaW5nKDEpOwogICAgfQogICAgZmFjaWxpdHlJRCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQWNjb3VudCIsIHsiRmF4IjppbmNvbWluZ051bWJlcn0pOwogICAgaWYgKCIiICE9IGZhY2lsaXR5SUQgJiYgZmFjaWxpdHlJRC5sZW5ndGggPiAwKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJGYWNpbGl0eV9fYyIsIGZhY2lsaXR5SUQpOwkJCQkgICAKCX0JCQkJCQkgIAkgCn0KYWxlcnQoIiMjIyMgZGVsaXZlcmVkVG8gPSAiICsgZGVsaXZlcmVkVG8gKyAiLCBjaGFubmVsID0gIiArIGNoYW5uZWwpOwovL0pQQjE5MDkzMCBJZiB0aGlzIGlzIGFuIHVwbG9hZCwgY2hlY2sgdG8gc2VlIGlmIHdlIGhhdmUgYSBTYWxlc2ZvcmNlIElkIHRvIGF0dGFjaCB0bwp2YXIgdXBsb2FkTGFiZWwgPSBudWxsOwppZiAoInVwbG9hZCIgPT0gY2hhbm5lbCkgewoJLy8gVXBsb2FkIGZpbGVuYW1lIGxvb2tzIGxpa2UgdGhpczogZW1haWwtbGlnaHRuaW5nVXBsb2FkLXNmSWQtZG9jVHlwZS1uYW1lIG9mIHVwbG9hZGVkIGZpbGUKCXZhciBmcm9tRmlsZSA9IGRvYy5mcm9tRmlsZSArICIiOwoJdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoJy0nKTsKCXZhciBzZklkLCBkb2NUeXBlVXBsb2FkID0gIlVOS05PV04iOwoJaWYgKHBhcnRzLmxlbmd0aCA+IDIpIHsgc2ZJZCA9IHBhcnRzWzJdOyB9CglpZiAocGFydHMubGVuZ3RoID4gMykgeyBkb2NUeXBlVXBsb2FkID0gcGFydHNbM107IH0KCWFsZXJ0KCJAQEBAQCBBdHRhY2hpbmcgaW5jb21pbmcgZG9jdW1lbnQgdG8gU2FsZXNmb3JjZSBJZDogIiArIHNmSWQpOwoJYWxlcnQoIkBAQEBAIGRvY1R5cGUgb2YgdXBsb2FkZWQgZG9jOiAiICsgZG9jVHlwZVVwbG9hZCk7CglhdHRhY2goZG9jLCAiRG9jdW1lbnQgdXBsb2FkZWQgLSAiICsgZG9jVHlwZVVwbG9hZCwgc2ZJZCk7Cgl2YXIgYXJyT2ZQYWlyc1VwbG9hZCA9IFtdOwogICAgdmFyIGJhPSJSZWNlaXZlZCI7CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKCWFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwICsgIiwgYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzVXBsb2FkLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgYWdlbnQgYXQgIitub3cwKyI8YnIvPiIgKyBzaWduZWRTdGF0dXMpOwoJYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJYX2RvY1R5cGUiLCBkb2NUeXBlVXBsb2FkKTsKCXVwbG9hZExhYmVsID0gIk5ldyAiICsgZG9jVHlwZVVwbG9hZCArICIgRG9jdW1lbnQgVXBsb2FkZWQiOwoJYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJkYi1sYWJlbCIsIHVwbG9hZExhYmVsKTsgLy9KUEIxOTA2MDQgY2hhbmdlZCB0byB3aGF0IEtlbiB3YW50ZWQgZnJvbSBJbml0aWFsIFBhdGllbnQgRW5yb2xsbWVudCBQYWNrZXQKCXVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyc1VwbG9hZCk7CgkvL2FsZXJ0KCJAQEBAIFJFVFVSTklORyBGUk9NIFJVTEU7IE5PVCBDUkVBVElORyBORVcgU1RBQ0sgKFRISVMgSVMgV0hBVCBKVURTT04gV0FOVFMpIik7IEpQQjE5MTAxNCBub3cgdXBsb2FkIHdpbGwgY3JlYXRlIGEgelN0YWNrCgkvL3JldHVybjsKfQphcnJPZlBhaXJzLnB1c2goenArIkNoYW5uZWxfX2MiLGNoYW5uZWwpOwphcnJPZlBhaXJzLnB1c2goenArImxhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CmFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goenArIlBhZ2VzX19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwphbGVydCgiQEBAekRhdGEucHJvZ3JhbU5hbWU9Iit6RGF0YS5wcm9ncmFtTmFtZSk7IAphcnJPZlBhaXJzLnB1c2goenArIkNsYXNzaWZpY2F0aW9uX19jIix6RGF0YS5jbGFzc2lmaWNhdGlvbik7IAphcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsekRhdGEucHJvZ3JhbU5hbWUpOyAgLy9UT0RPIHN3aXRjaCB0byBwaWNrbGlzdAoKLy9FUlMyMDA4MTUgIzc1Njg1IEdVRVNTSU5HIGFyck9mUGFpcnMucHVzaCgiIisiUHJvZ3JhbV9fYyIsekRhdGEucHJvZ3JhbU5hbWUpOyAgLy9FUlMyMDAzMDggVE9ETyBzd2l0Y2ggdG8gcGlja2xpc3QKCi8vRVJTMjAwMzA4IGlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwppZiAoekRhdGEuemNoYW5uZWwpIHsgLy9FUlMyMDA4MjIgIzc1Njg0CmlmICh6RGF0YS56Y2hhbm5lbC5vd25lcikgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS56Y2hhbm5lbC5vd25lcik7IC8vRVJTMjAwMzA4ICM3MDI3MwphbGVydCgiRVJTMjAwMzA4LjExOSBvd25lcj0iK3pEYXRhLnpjaGFubmVsLm93bmVyKTsKfSBlbHNlIHsgYWxlcnQoIkVSUzIwMDgyMiBubyB6Y2hhbm5lbCB5ZXQhIik7IH0KCmlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7CglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVyZ2VudCIpOyAKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUykgeyAgCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsgCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7IAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJDcml0aWNhbCIpOwkKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aUkVGRVJSQUwpIHsgIAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJSb3V0aW5lIik7IAp9Ci8qZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fUEFMVkVPKSB7IAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJTcGVjaWFsIik7CQp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1ZJTkRJQ08pIHsgCglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlN0YW5kYXJkIik7CQp9Ki8KZWxzZSAKewoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJOb3JtYWwiKTsKfQoKYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLCAoImNvbW11bml0eSIgPT09IGNoYW5uZWwgfHwgInVwbG9hZCIgPT09IGNoYW5uZWwgPyBjaGFubmVsIDogZG9jLmRlbGl2ZXJlZFRvKSk7IC8vSlBCMTkwNTI5IGFkZGVkIHNvIENvbW11bml0eSBzaG93cyB1cCBpbiBNYXN0ZXIgSW50YWtlIExpc3QKYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CmlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykge2Fyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7IH0gZWxzZSB7CmFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgCn0KCmFsZXJ0KCJSZXZpZXdlZCBTdGF0dXMgYmVmb3JlIHNldHRpbmcgaXQgdG8gUmVjZWl2ZWQ6ICIgKyBYKGRvYywgIlhfcmV2aWV3ZWRTdGF0dXMiKSk7CmFsZXJ0KCJ6RGF0YS5yZXZpZXdlZFN0YXR1cyA9ICIgKyB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7CmlmICh6RGF0YS5jbGllbnRTdGFjaykgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRTdGFjayhkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNjE3IFRPRE8gekRhdGEuY2xpZW50U3RhY2soKSB3aXRoIGxhYmVsIC8vU3RhY2tzKCkgbm93IFN0YWNrKCkgLy9FUlMyMDA5MTgKdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6U3RhY2ssIHpEYXRhLmNsYXNzaWZpY2F0aW9uICsgIiBOZXcgU3RhY2siLCBhcnJPZlBhaXJzKTsgCmFsZXJ0KCIjIyMjIFN0YWNrIFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOwphcnJPZlBhaXJzID0gW107Ci8vSlBCMTkwNTI5IEZpeCB1cCB0aGUgZnVua3kgZGVzdGluYXRpb24vbGFiZWwgZm9yIGNvbW11bml0eSB1cGxvYWRzCmlmICgiY29tbXVuaXR5IiA9PT0gY2hhbm5lbCkgewoJdmFyIGZyb21GaWxlID0gZG9jLmZyb21GaWxlICsgIiI7Cgl2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgnLScpOwoJdmFyIGJ1ZmZlciA9ICIiOwoJZm9yICh2YXIgaT0wOyBpPHBhcnRzLmxlbmd0aDsgaSsrKSB7CgkJaWYgKGkgPiAwKSB7IGJ1ZmZlciArPSAnLSc7IH0KCQlpZiAoMSA9PT0gaSkgCXsgYnVmZmVyICs9ICJjb21tdW5pdHkiOyB9CgkJZWxzZSAJCQl7IGJ1ZmZlciArPSBwYXJ0c1tpXTsgfQoJfQoJYXJyT2ZQYWlycy5wdXNoKCJYX2Zyb21GaWxlIiwgYnVmZmVyKTsKCWFyck9mUGFpcnMucHVzaCgiWF9kZXN0aW5hdGlvbiIsICJjb21tdW5pdHkiKTsKfQppZiAoInVwbG9hZCIgIT0gY2hhbm5lbCkgewoJYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uICsgIiBOZXcgU3RhY2siKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsIHpUeXBlKTsvLyBQVjE5MDcwNyB0byB1cGRhdGUgdHlwZSBvbiBkb2NzZXQKfQphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsc2ZJZCk7IAp2YXIgc2lnbmVkU3RhdHVzID0gIiI7ICAKYWxlcnQoIkBAQEAgekRhdGEucmV2aWV3ZWRTdGF0dXMgPSAiICsgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyAgCmlmICgiU2lnbmVkIiA9PT0gekRhdGEucmV2aWV3ZWRTdGF0dXMpIHsKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgc2lnbmVkU3RhdHVzID0gIlNpZ25lZCBieSBhZ2VudCBhdCAiK25vdzArIjxici8+IjsgCn0KYWxlcnQoIlNpZ25lZFN0YXR1cyA9ICIgKyBzaWduZWRTdGF0dXMpOwppZiAoMT09PTEpIHsgCiAgICB2YXIgYmE9IlJlY2VpdmVkIjsKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwoJYWxlcnQoIiQkJCBub3cwID0gIiArIG5vdzAgKyAiLCBiYSA9ICIgKyBiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSBhZ2VudCBhdCAiK25vdzArIjxici8+IiArIHNpZ25lZFN0YXR1cyk7Cgp9CgphbGVydCgiQEBAIGNhbGxpbmcgdXBkYXRlREIgd2l0aCBwYXJhbXM6IEBAQEBAQEBAQEBAQCIpOwphbGVydChhcnJPZlBhaXJzKTsKYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKIC8qIEVORCAqLw=="},"ordinal":6}

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
var deliveredTo = doc.deliveredTo + "";	//JPB190529 Check deliveredTo for community uploades
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
    if ("" != facilityID && facilityID.length > 0) {
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
if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack() //ERS200918
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
		if (1 === i) 	{ buffer += "community"; }
		else 			{ buffer += parts[i]; }
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
