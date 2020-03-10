<!--
// Name: Create zStack
// Committer: judson.bruno@zpaper.com
// Update: JPB200305 updated rule for Sales Demo Org; JPB200305 changed to Orthopedics
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-03-06 01:35:26","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gQ3JlYXRlIHpTdGFjayAqLwovL0pQQjIwMDMwNSB1cGRhdGVkIHJ1bGUgZm9yIFNhbGVzIERlbW8gT3JnCi8vdmFyIGtleXdvcmRzPVsiTkVXOkRvY3VtZW50IFN0YWNrIl07IC8vRVJTMTkwMzI2ICM1NzQ1NiAiRU5STDoiXTsgd2lsbCBhbHdheXMgbWF0Y2ggY2hhbmdlZCB0byBORVcgSlBCMTkwNjA0CnZhciBrZXl3b3JkTWFwID0ge307CnZhciBrZXl3b3JkcyA9IFsiTkVXOkRvY3VtZW50IFN0YWNrfiIsIkZJVDpGSVQgUmVxdWlzaXRpb25+IiwiRU5STDpFbnJvbGxtZW50fiIsIkVOUkw6RU5ST0xMTUVOVH4iLCJDT046Q29uc2VudH4iLCJDT046Y29uc2VudH4iLCJGQUM6U2V0dGluZ34iLCJGQUM6RGlzdHJpYnV0aW9ufiIsIlNUQVJUOlN0YXJ0IEZvcm1+IiwiQ0hLOkNoZWNrbGlzdH4iLCJISVBBQTpBVVRIT1JJWkFUSU9OfiIsIkhJUEFBOkhJUEFBfiIsIkhJUEFBOlBPUlRBQklMSVRZfiIsIlJFRjpSRUZFUlJBTCIsIlJFRjpSZWZlcnJhbCIsIkZJTjpXMn4iLCJJQzpNZW1iZXIgSUR+IiwiRkFYOiJdOwprZXl3b3JkTWFwWyJURU5SIl0gPSAiVEVOUjpTdGFydCBGb3JtIjsKa2V5d29yZE1hcFsiTkVXIl0gPSAiTkVXOkRvY3VtZW50IFN0YWNrIjsKa2V5d29yZE1hcFsiRU5STCJdID0gIkVOUkw6RW5yb2xsbWVudCBGb3JtIjsKa2V5d29yZE1hcFsiRkFDIl0gPSAiRkFDOkZhY2lsaXR5IEVucm9sbG1lbnQgRm9ybSI7CmtleXdvcmRNYXBbIkZBWCJdID0gIk5FVzpEb2N1bWVudCBTdGFjayI7CmtleXdvcmRNYXBbIlNUQVJUIl0gPSAiTkVXOkRvY3VtZW50IFN0YWNrIjsKa2V5d29yZE1hcFsiRklUIl0gPSAiRklUOkZJVCBSZXF1aXNpdGlvbiI7Ci8va2V5d29yZE1hcFsiQ09OIl0gPSAiQ09OOkNvbnNlbnQiOwovL2tleXdvcmRNYXBbIkhJUEFBIl0gPSAiSElQQUE6SElQQUEgQVVUSE9SSVpBVElPTiI7Ci8va2V5d29yZE1hcFsiUkVGIl0gPSAiUkVGOlJFRkVSUkFMIjsKLy9rZXl3b3JkTWFwWyJGSU4iXSA9ICJGSU46Vy0yIjsKLy9rZXl3b3JkTWFwWyJJQyJdID0gIklDOk1lbWJlciBJRCI7Ci8va2V5d29yZE1hcFsiQ0hLIl0gPSAiQ0hLOkNoZWNrbGlzdCI7Cgp2YXIgelR5cGUgPSBYKGRvYywgIlhfZG9jVHlwZSIpOwppZiAoekRhdGEuZG9jVHlwZU9DUiA9PT0gIkZBWCIgfHwgekRhdGEuZG9jVHlwZU9DUiA9PT0gIiIpIHsKICAgIHpEYXRhLmRvY1R5cGVPQ1IgPSB6RGF0YS5kb2NUeXBlcihkb2MsIGtleXdvcmRzKTsKICAgIGFsZXJ0KCJkb2NUeXBlIHdhcyAiICsgZG9jLmRvY1R5cGUgKyAiIG5vdyAiICsgekRhdGEuZG9jVHlwZU9DUik7CiAgICB6VHlwZSA9IFgoZG9jLCAiWF9kb2NUeXBlIik7CiAgICBpZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIHpUeXBlID0gekRhdGEuZG9jVHlwZU9DUjsKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgIH0KfSBlbHNlIHsgLy9FUlMxOTAxMTkgVE9ETyBhdXRvU3BsaXQgIzUzMDAwCiAgICB6VHlwZSA9IHpEYXRhLmRvY1R5cGVPQ1I7CiAgICBhbGVydCgiRVJTMTkwMTE5IEF1dG9Ecml2ZSBmb3VuZCAiICsgelR5cGUgKyAiIGZpcnN0IG9yIGxhc3QuIFdoaWNoIGlzIGl0PyIpOwp9Cgp6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsKCmFsZXJ0KCIjIyMjIGZheCB3YXMgZGVsaXZlcmVkIHRvIG51bWJlcjogIiArIGRvYy5kZWxpdmVyZWRUbyk7CnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgenAgPSAiWlBBUEVSX18iOwp2YXIgelN0YWNrID0genAgKyAielN0YWNrX19jIjsKCmlmICgiRkFYIiA9PSB6VHlwZSB8fCAiU1RBUlQiID09IHpUeXBlKSB7IC8vUFYxOTA3MDcgRG9jdHlwZSBhcyBuZXcKICAgIHpUeXBlID0gIk5FVyI7Cn0KCmFsZXJ0KCJAQEBAelR5cGUgPSAiICsgelR5cGUpOwphcnJPZlBhaXJzLnB1c2goenAgKyAiZmF4VHlwZV9fYyIsIGtleXdvcmRNYXBbelR5cGVdKTsKYXJyT2ZQYWlycy5wdXNoKHpwICsgIlN0YXR1c19fYyIsICJSZWNlaXZlZCIpOyAvLyBQVjE5MDQxOCBVcGRhdGVkIHN0YWdlIHRvIGJlIFJlY2VpdmVkCgphbGVydCgiRVJTMTgwNTA1IGRvYy5kZWxpdmVyZWRGcm9tID0gIiArIGRvYy5kZWxpdmVyZWRGcm9tKTsKCnZhciBjaGFubmVsID0gIkZheCI7IC8vSlBCMTkwNTI5IGFkZGVkIGNvbW11bml0eSB0byB0aGUgY2hhbm5lbAp2YXIgZGVsaXZlcmVkRnJvbSA9IGRvYy5kZWxpdmVyZWRGcm9tICsgIiI7IC8vQ1JOMTgwOTA5IE1ha2Ugc3VyZSB3ZSBoYXZlIGEgSmF2YXNjcmlwdCBzdHJpbmcKdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvICsgIiI7CS8vSlBCMTkwNTI5IENoZWNrIGRlbGl2ZXJlZFRvIGZvciBjb21tdW5pdHkgdXBsb2FkZXMKdmFyIGZhY2lsaXR5SUQgPSAiIjsKaWYgKGRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpID4gLTEgfHwgZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIikgPiAtMSkgeyAgLy9FUlMxODA1MDUgIzQ4MTAxCiAgICBjaGFubmVsID0gIkVtYWlsIjsKfQoKaWYgKGlzTmFOKGRlbGl2ZXJlZFRvKSkgewogICAgaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewogICAgICAgIGNoYW5uZWwgPSAiY29tbXVuaXR5IjsKICAgIH0gZWxzZSBpZiAoZGVsaXZlcmVkVG8udG9Mb3dlckNhc2UoKS5pbmRleE9mKCJ1cGxvYWQiKSA+PSAwKSB7CiAgICAgICAgY2hhbm5lbCA9ICJ1cGxvYWQiCiAgICB9IGVsc2UgewogICAgICAgIGNoYW5uZWwgPSAiU2NhbiI7CiAgICB9Cn0KaWYgKCJGYXgiID09IGNoYW5uZWwpIHsKICAgIHZhciBpbmNvbWluZ051bWJlciA9IGRlbGl2ZXJlZEZyb207CiAgICBpZiAoZGVsaXZlcmVkRnJvbS5zaXplKCkgPT0gMTEpIHsKICAgICAgICBpbmNvbWluZ051bWJlciA9IGRlbGl2ZXJlZEZyb20uc3Vic3RyaW5nKDEpOwogICAgfQogICAgZmFjaWxpdHlJRCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQWNjb3VudCIsIHsiRmF4IjppbmNvbWluZ051bWJlcn0pOwogICAgaWYgKCIiICE9IGZhY2lsaXR5SUQgJiYgZmFjaWxpdHlJRC5sZW5ndGggPiAwKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJGYWNpbGl0eV9fYyIsIGZhY2lsaXR5SUQpOwogICAgfQp9CgphbGVydCgiIyMjIyBkZWxpdmVyZWRUbyA9ICIgKyBkZWxpdmVyZWRUbyArICIsIGNoYW5uZWwgPSAiICsgY2hhbm5lbCk7Ci8vSlBCMTkwOTMwIElmIHRoaXMgaXMgYW4gdXBsb2FkLCBjaGVjayB0byBzZWUgaWYgd2UgaGF2ZSBhIFNhbGVzZm9yY2UgSWQgdG8gYXR0YWNoIHRvCnZhciB1cGxvYWRMYWJlbCA9IG51bGw7CmlmICgidXBsb2FkIiA9PSBjaGFubmVsKSB7CiAgICAvLyBVcGxvYWQgZmlsZW5hbWUgbG9va3MgbGlrZSB0aGlzOiBlbWFpbC1saWdodG5pbmdVcGxvYWQtc2ZJZC1kb2NUeXBlLW5hbWUgb2YgdXBsb2FkZWQgZmlsZQogICAgdmFyIGZyb21GaWxlID0gZG9jLmZyb21GaWxlICsgIiI7CiAgICB2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgnLScpOwogICAgdmFyIHNmSWQsIGRvY1R5cGVVcGxvYWQgPSAiVU5LTk9XTiI7CiAgICBpZiAocGFydHMubGVuZ3RoID4gMikgewogICAgICAgIHNmSWQgPSBwYXJ0c1syXTsKICAgIH0KICAgIGlmIChwYXJ0cy5sZW5ndGggPiAzKSB7CiAgICAgICAgZG9jVHlwZVVwbG9hZCA9IHBhcnRzWzNdOwogICAgfQogICAgYWxlcnQoIkBAQEBAIEF0dGFjaGluZyBpbmNvbWluZyBkb2N1bWVudCB0byBTYWxlc2ZvcmNlIElkOiAiICsgc2ZJZCk7CiAgICBhbGVydCgiQEBAQEAgZG9jVHlwZSBvZiB1cGxvYWRlZCBkb2M6ICIgKyBkb2NUeXBlVXBsb2FkKTsKICAgIGF0dGFjaChkb2MsICJEb2N1bWVudCB1cGxvYWRlZCAtICIgKyBkb2NUeXBlVXBsb2FkLCBzZklkKTsKICAgIHZhciBhcnJPZlBhaXJzVXBsb2FkID0gW107CiAgICB2YXIgYmEgPSAiUmVjZWl2ZWQiOwogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKICAgIGFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwICsgIiwgYmEgPSAiICsgYmEpOwogICAgYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgYmEpOwogICAgYXJyT2ZQYWlyc1VwbG9hZC5wdXNoKCJYX3Jldmlld3MiLCBYKGRvYywgIlhfcmV2aWV3cyIpICsgYmEgKyAiIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+IiArIHNpZ25lZFN0YXR1cyk7CiAgICBhcnJPZlBhaXJzVXBsb2FkLnB1c2goIlhfZG9jVHlwZSIsIGRvY1R5cGVVcGxvYWQpOwogICAgdXBsb2FkTGFiZWwgPSAiTmV3ICIgKyBkb2NUeXBlVXBsb2FkICsgIiBEb2N1bWVudCBVcGxvYWRlZCI7CiAgICBhcnJPZlBhaXJzVXBsb2FkLnB1c2goImRiLWxhYmVsIiwgdXBsb2FkTGFiZWwpOyAvL0pQQjE5MDYwNCBjaGFuZ2VkIHRvIHdoYXQgS2VuIHdhbnRlZCBmcm9tIEluaXRpYWwgUGF0aWVudCBFbnJvbGxtZW50IFBhY2tldAogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzVXBsb2FkKTsKICAgIC8vYWxlcnQoIkBAQEAgUkVUVVJOSU5HIEZST00gUlVMRTsgTk9UIENSRUFUSU5HIE5FVyBTVEFDSyAoVEhJUyBJUyBXSEFUIEpVRFNPTiBXQU5UUykiKTsgSlBCMTkxMDE0IG5vdyB1cGxvYWQgd2lsbCBjcmVhdGUgYSB6U3RhY2sKICAgIC8vcmV0dXJuOwp9CgphcnJPZlBhaXJzLnB1c2goenAgKyAiQ2hhbm5lbF9fYyIsIGNoYW5uZWwpOwphcnJPZlBhaXJzLnB1c2goenAgKyAibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpwICsgInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CmFyck9mUGFpcnMucHVzaCh6cCArICJuZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goenAgKyAiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CmFsZXJ0KCJAQEB6RGF0YS5wcm9ncmFtTmFtZSA9ICIgKyB6RGF0YS5wcm9ncmFtTmFtZSk7CmFyck9mUGFpcnMucHVzaCh6cCArICJDbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKYXJyT2ZQYWlycy5wdXNoKHpwICsgIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsKaWYgKHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEucGF0RW5yb2xsUXVldWVJZCk7Cn0KCmlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IC8vSlBCMTkwNDI2IGNoYW5nZWQgdG8gY2xhc3NpZmljYXRpb24gZnJvbSBwcm9ncmFtCn0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJQcmlvcml0eV9fYyIsICJTcGVjaWFsIik7Cn0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsKfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aUkVGRVJSQUwpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJQcmlvcml0eV9fYyIsICJIaWdoIik7Cn0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlBSSU9SQVVUSCkgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIlByaW9yaXR5X19jIiwgIkltbWVkaWF0ZSIpOyAvL0pQQjIwMDIxMSBhZGRlZCBQcmlvciBBdXRoCn0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fT1JUSE9QRURJQ1MpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJQcmlvcml0eV9fYyIsICJTdGFuZGFyZCIpOyAvL0pQQjIwMDMwNSBjaGFuZ2VkIHRvIE9ydGhvcGVkaWNzICAgIAogICAgCi8qfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9QQUxWRU8pIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsKfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9WSU5ESUNPKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiUHJpb3JpdHlfX2MiLCAiTG93Iik7CiovCn0gZWxzZSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenAgKyAiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7Cn0KCmFyck9mUGFpcnMucHVzaCh6cCArICJzZW50RmF4VG9fX2MiLCAoImNvbW11bml0eSIgPT09IGNoYW5uZWwgfHwgInVwbG9hZCIgPT09IGNoYW5uZWwgPyBjaGFubmVsIDogZG9jLmRlbGl2ZXJlZFRvKSk7IC8vSlBCMTkwNTI5IGFkZGVkIHNvIENvbW11bml0eSBzaG93cyB1cCBpbiBNYXN0ZXIgSW50YWtlIExpc3QKYXJyT2ZQYWlycy5wdXNoKHpwICsgIkZyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CmlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIlN0YWdlX19jIiwgekRhdGEucmV2aWV3ZWRTdGF0dXMpOwp9IGVsc2UgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7Cn0KCmFsZXJ0KCJSZXZpZXdlZCBTdGF0dXMgYmVmb3JlIHNldHRpbmcgaXQgdG8gUmVjZWl2ZWQ6ICIgKyBYKGRvYywgIlhfcmV2aWV3ZWRTdGF0dXMiKSk7CmFsZXJ0KCJ6RGF0YS5yZXZpZXdlZFN0YXR1cyA9ICIgKyB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7CnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCB6RGF0YS5jbGFzc2lmaWNhdGlvbiArICIgTmV3IFN0YWNrIiwgYXJyT2ZQYWlycyk7IC8vSlBCMTkwNjA0IGNoYW5nZWQgdG8gd2hhdCBLZW4gd2FudGVkIGZyb20gSW5pdGlhbCBQYXRpZW50IEVucm9sbG1lbnQgUGFja2V0CmFsZXJ0KCIjIyMjIFN0YWNrIFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOwphcnJPZlBhaXJzID0gW107Ci8vSlBCMTkwNTI5IEZpeCB1cCB0aGUgZnVua3kgZGVzdGluYXRpb24vbGFiZWwgZm9yIGNvbW11bml0eSB1cGxvYWRzCmlmICgiY29tbXVuaXR5IiA9PT0gY2hhbm5lbCkgewogICAgdmFyIGZyb21GaWxlID0gZG9jLmZyb21GaWxlICsgIiI7CiAgICB2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgnLScpOwogICAgdmFyIGJ1ZmZlciA9ICIiOwogICAgZm9yICh2YXIgaSA9IDA7IGkgPCBwYXJ0cy5sZW5ndGg7IGkrKykgewogICAgICAgIGlmIChpID4gMCkgewogICAgICAgICAgICBidWZmZXIgKz0gJy0nOwogICAgICAgIH0KICAgICAgICBpZiAoMSA9PT0gaSkgewogICAgICAgICAgICBidWZmZXIgKz0gImNvbW11bml0eSI7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgYnVmZmVyICs9IHBhcnRzW2ldOwogICAgICAgIH0KICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiWF9mcm9tRmlsZSIsIGJ1ZmZlcik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfZGVzdGluYXRpb24iLCAiY29tbXVuaXR5Iik7Cn0KaWYgKCJ1cGxvYWQiICE9IGNoYW5uZWwpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbiArICIgTmV3IFN0YWNrIik7IC8vSlBCMTkwNjA0IGNoYW5nZWQgdG8gd2hhdCBLZW4gd2FudGVkIGZyb20gSW5pdGlhbCBQYXRpZW50IEVucm9sbG1lbnQgUGFja2V0CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsIHpUeXBlKTsvLyBQVjE5MDcwNyB0byB1cGRhdGUgdHlwZSBvbiBkb2NzZXQKfQphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsIHNmSWQpOwp2YXIgc2lnbmVkU3RhdHVzID0gIiI7CmFsZXJ0KCJAQEBAIHpEYXRhLnJldmlld2VkU3RhdHVzID0gIiArIHpEYXRhLnJldmlld2VkU3RhdHVzKTsKaWYgKCJTaWduZWQiID09PSB6RGF0YS5yZXZpZXdlZFN0YXR1cykgewogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKICAgIHNpZ25lZFN0YXR1cyA9ICJTaWduZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iOwp9CmFsZXJ0KCJTaWduZWRTdGF0dXMgPSAiICsgc2lnbmVkU3RhdHVzKTsKCmlmICgxPT09MSkgewogICAgdmFyIGJhID0gIlJlY2VpdmVkIjsKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSwgdHJ1ZSk7CiAgICBhbGVydCgiJCQkIG5vdzAgPSAiICsgbm93MCArICIsIGJhID0gIiArIGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsIGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArIGJhICsgIiBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIgKyBzaWduZWRTdGF0dXMpOwp9CgphbGVydCgiQEBAIGNhbGxpbmcgdXBkYXRlREIgd2l0aCBwYXJhbXM6IEBAQEBAQEBAQEBAQCIpOwphbGVydChhcnJPZlBhaXJzKTsKYWxlcnQoIkBAQCBjYWxsaW5nIHVwZGF0ZURCIHdpdGggcGFyYW1zOiBAQEBAQEBAQEBAQEAiKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKLyogRU5EIENyZWF0ZSB6U3RhY2sgKi8K"},"ordinal":14}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN Create zStack */
//JPB200305 updated rule for Sales Demo Org
//var keywords=["NEW:Document Stack"]; //ERS190326 #57456 "ENRL:"]; will always match changed to NEW JPB190604
var keywordMap = {};
var keywords = ["NEW:Document Stack~","FIT:FIT Requisition~","ENRL:Enrollment~","ENRL:ENROLLMENT~","CON:Consent~","CON:consent~","FAC:Setting~","FAC:Distribution~","START:Start Form~","CHK:Checklist~","HIPAA:AUTHORIZATION~","HIPAA:HIPAA~","HIPAA:PORTABILITY~","REF:REFERRAL","REF:Referral","FIN:W2~","IC:Member ID~","FAX:"];
keywordMap["TENR"] = "TENR:Start Form";
keywordMap["NEW"] = "NEW:Document Stack";
keywordMap["ENRL"] = "ENRL:Enrollment Form";
keywordMap["FAC"] = "FAC:Facility Enrollment Form";
keywordMap["FAX"] = "NEW:Document Stack";
keywordMap["START"] = "NEW:Document Stack";
keywordMap["FIT"] = "FIT:FIT Requisition";
//keywordMap["CON"] = "CON:Consent";
//keywordMap["HIPAA"] = "HIPAA:HIPAA AUTHORIZATION";
//keywordMap["REF"] = "REF:REFERRAL";
//keywordMap["FIN"] = "FIN:W-2";
//keywordMap["IC"] = "IC:Member ID";
//keywordMap["CHK"] = "CHK:Checklist";

var zType = X(doc, "X_docType");
if (zData.docTypeOCR === "FAX" || zData.docTypeOCR === "") {
    zData.docTypeOCR = zData.docTyper(doc, keywords);
    alert("docType was " + doc.docType + " now " + zData.docTypeOCR);
    zType = X(doc, "X_docType");
    if (doc.docType != zData.docTypeOCR) {
        var arrOfPairs0 = [];
        arrOfPairs0.push("X_docTypeOCR", zData.docTypeOCR);
        arrOfPairs0.push("X_docType", zData.docTypeOCR);
        zType = zData.docTypeOCR;
        updateDB(doc, arrOfPairs0);
    }
} else { //ERS190119 TODO autoSplit #53000
    zType = zData.docTypeOCR;
    alert("ERS190119 AutoDrive found " + zType + " first or last. Which is it?");
}

zData.setbrandprogram(doc);

alert("#### fax was delivered to number: " + doc.deliveredTo);
var formatNow = getCurDateAndTime(doc);
var arrOfPairs = [];
var zp = "ZPAPER__";
var zStack = zp + "zStack__c";

if ("FAX" == zType || "START" == zType) { //PV190707 Doctype as new
    zType = "NEW";
}

alert("@@@@zType = " + zType);
arrOfPairs.push(zp + "faxType__c", keywordMap[zType]);
arrOfPairs.push(zp + "Status__c", "Received"); // PV190418 Updated stage to be Received

alert("ERS180505 doc.deliveredFrom = " + doc.deliveredFrom);

var channel = "Fax"; //JPB190529 added community to the channel
var deliveredFrom = doc.deliveredFrom + ""; //CRN180909 Make sure we have a Javascript string
var deliveredTo = doc.deliveredTo + "";	//JPB190529 Check deliveredTo for community uploades
var facilityID = "";
if (deliveredFrom.indexOf("@") > -1 || deliveredFrom.indexOf(".") > -1) {  //ERS180505 #48101
    channel = "Email";
}

if (isNaN(deliveredTo)) {
    if (deliveredTo.toLowerCase().indexOf("community") >= 0) {
        channel = "community";
    } else if (deliveredTo.toLowerCase().indexOf("upload") >= 0) {
        channel = "upload"
    } else {
        channel = "Scan";
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
    if (parts.length > 2) {
        sfId = parts[2];
    }
    if (parts.length > 3) {
        docTypeUpload = parts[3];
    }
    alert("@@@@@ Attaching incoming document to Salesforce Id: " + sfId);
    alert("@@@@@ docType of uploaded doc: " + docTypeUpload);
    attach(doc, "Document uploaded - " + docTypeUpload, sfId);
    var arrOfPairsUpload = [];
    var ba = "Received";
    var now0 = getCurDateAndTime(doc, false, true);
    alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairsUpload.push("X_reviewedStatus", ba);
    arrOfPairsUpload.push("X_reviews", X(doc, "X_reviews") + ba + " by agent at " + now0 + "<br/>" + signedStatus);
    arrOfPairsUpload.push("X_docType", docTypeUpload);
    uploadLabel = "New " + docTypeUpload + " Document Uploaded";
    arrOfPairsUpload.push("db-label", uploadLabel); //JPB190604 changed to what Ken wanted from Initial Patient Enrollment Packet
    updateDB(doc, arrOfPairsUpload);
    //alert("@@@@ RETURNING FROM RULE; NOT CREATING NEW STACK (THIS IS WHAT JUDSON WANTS)"); JPB191014 now upload will create a zStack
    //return;
}

arrOfPairs.push(zp + "Channel__c", channel);
arrOfPairs.push(zp + "latestFax__c", formatNow);
arrOfPairs.push(zp + "receivedId__c", doc.dbID);
arrOfPairs.push(zp + "newFax__c", "true");
arrOfPairs.push(zp + "Pages__c", X(doc, "X_pages"));
alert("@@@zData.programName = " + zData.programName);
arrOfPairs.push(zp + "Classification__c", zData.classification);
arrOfPairs.push(zp + "Program_Name__c", zData.programName);
if (zData.patEnrollQueueId) {
    arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
}

if (zData.classification === zData.PROGRAM_ZCHARTA) {
    arrOfPairs.push(zp + "Priority__c", "Urgent"); //JPB190426 changed to classification from program
} else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {
    arrOfPairs.push(zp + "Priority__c", "Special");
} else if (zData.classification === zData.PROGRAM_ZCARTA) {
    arrOfPairs.push(zp + "Priority__c", "Critical");
} else if (zData.classification === zData.PROGRAM_ZREFERRAL) {
    arrOfPairs.push(zp + "Priority__c", "High");
} else if (zData.classification === zData.PROGRAM_ZPRIORAUTH) {
    arrOfPairs.push(zp + "Priority__c", "Immediate"); //JPB200211 added Prior Auth
} else if (zData.classification === zData.PROGRAM_ORTHOPEDICS) {
    arrOfPairs.push(zp + "Priority__c", "Standard"); //JPB200305 changed to Orthopedics    
    
/*} else if (zData.classification === zData.PROGRAM_PALVEO) {
    arrOfPairs.push(zp + "Priority__c", "Medium");
} else if (zData.classification === zData.PROGRAM_VINDICO) {
    arrOfPairs.push(zp + "Priority__c", "Low");
*/
} else {
    arrOfPairs.push(zp + "Priority__c", "Normal");
}

arrOfPairs.push(zp + "sentFaxTo__c", ("community" === channel || "upload" === channel ? channel : doc.deliveredTo)); //JPB190529 added so Community shows up in Master Intake List
arrOfPairs.push(zp + "From__c", doc.deliveredFrom);
if (zData.reviewedStatus) {
    arrOfPairs.push(zp + "Stage__c", zData.reviewedStatus);
} else {
    arrOfPairs.push(zp + "Stage__c", "Received");
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
    for (var i = 0; i < parts.length; i++) {
        if (i > 0) {
            buffer += '-';
        }
        if (1 === i) {
            buffer += "community";
        } else {
            buffer += parts[i];
        }
    }
    arrOfPairs.push("X_fromFile", buffer);
    arrOfPairs.push("X_destination", "community");
}
if ("upload" != channel) {
    arrOfPairs.push("db-label", zData.classification + " New Stack"); //JPB190604 changed to what Ken wanted from Initial Patient Enrollment Packet
    arrOfPairs.push("X_docType", zType);// PV190707 to update type on docset
}
arrOfPairs.push("db-BATES", sfId + "-STACK");
arrOfPairs.push("X_sfStackId", sfId);
var signedStatus = "";
alert("@@@@ zData.reviewedStatus = " + zData.reviewedStatus);
if ("Signed" === zData.reviewedStatus) {
    var now0 = getCurDateAndTime(doc, false, true);
    signedStatus = "Signed by agent at " + now0 + "<br/>";
}
alert("SignedStatus = " + signedStatus);

if (1===1) {
    var ba = "Received";
    var now0 = getCurDateAndTime(doc, false, true);
    alert("$$$ now0 = " + now0 + ", ba = " + ba);
    arrOfPairs.push("X_reviewedStatus", ba);
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + ba + " by agent at " + now0 + "<br/>" + signedStatus);
}

alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
alert(arrOfPairs);
alert("@@@ calling updateDB with params: @@@@@@@@@@@@");
updateDB(doc, arrOfPairs);
/* END Create zStack */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
