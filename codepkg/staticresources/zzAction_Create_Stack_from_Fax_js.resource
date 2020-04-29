<!--
// Name: Create Stack from Fax
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: PV200413; PV200413 Commented
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-04-13 22:48:09","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoInRvcCBvZiBDcmVhdGUgU3RhY2sgZnJvbSBGYXgiKTsgLy9FUlMyMDA0MTIgIzcwOTUzIHJlZmFjdG9yIGZvciBjbGFzcwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgYXR0YWNoTGFiZWwgPSAiIjsKdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL0VSUzE3MDYyNiBub3cgaW4gdGhlIHBhY2thZ2UgLy9FUlMxOTA2MTcgekRhdGEuenAKdmFyIHpTdGFjaz16RGF0YS56cHM7IC8vIlN0YWNrX19jIgoKICAgIC8vRVJTMTkwNjE3IFRPRE8gZG9jdW1lbnQgaHViIHN0cmF0ZWd5CiAgICAvL0VSUzE5MDgxNCAjNjE1MTEgbW92ZSBvcmFuZCBhbmQgb3Jnc3dpdGNoIHVwIGJlZm9yZSB6RGF0YS5jaGFubmVsCiAgICB6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgLy93aG8gYW5kIHdoZXJlCiAgICB6RGF0YS5vcmdTd2l0Y2goZG9jKTsgLy9UT0RPIHJlZmFjdG9yIHdpdGggc2V0QnJhbmRQcm9ncmFtKCkKCnpEYXRhLmZyb21GaWxlPVgoZG9jLCJYX2Zyb21GaWxlIik7IC8vRVJTMTkwODE0IFRPRE8/IGRvIGluIGxpYnJhcnk/CmFsZXJ0KCJFUlMxOTA4MTQuMTEgekRhdGEuZnJvbUZpbGU9Iit6RGF0YS5mcm9tRmlsZSsiIC5jaGFubmVsPSIrekRhdGEuY2hhbm5lbCk7IC8vRVJTMTkwODE0Ci8vQ1JOMTkwMzA4IEhhbmRsZSB1cGxvYWRlZCBmaWxlcyB2aWEgTGlnaHRuaW5nIENvbXBvbmVudCBhbmQgelNlbmQgb3IgbWFzcyBpbXBvcnQKaWYgKHpEYXRhLmZyb21GaWxlKSB7IC8vRVJTMTkwNjE3IFRPRE8gY2hhbm5lbCBndWlkZQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpPi0xKSB7CiAgICAgICAgdmFyIGZyb21GaWxlID0gekRhdGEuZnJvbUZpbGUuc3Vic3RyaW5nKHpEYXRhLmZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsgLy9FUlMxOTA2MjQgc2NvcGluZwogICAgICAgIHZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCItIik7CiAgICAgICAgaWYgKHBhcnRzLmxlbmd0aCA+PSAzKSB7CiAgICAgICAgICAgIHZhciBhdHRhY2hUb0lkID0gcGFydHNbMl07CiAgICAgICAgICAgIGFsZXJ0KCJAQEAgVVBMT0FEOiBBVFRBQ0hJTkcgVE8gU0FMRVNGT1JDRSBSRUNPUkQgPSAiICsgYXR0YWNoVG9JZCk7CiAgICAgICAgICAgIHZhciBsYWJlbCA9ICJGaWxlIHVwbG9hZGVkICIgKyBmcm9tRmlsZTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgbGFiZWwsIGF0dGFjaFRvSWQsIHRydWUpOwogICAgICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJVcGxvYWRlZCIpOyAvLyBQVjE5MDUyNiB1cGRhdGVkIGZvciB1cGxvYWQgbG9naWMKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCAiVXBsb2FkZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgIlVQTE9BRCIpOwogICAgICAgICAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFVwbG9hZChkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNzA2IHpEYXRhLmNoYW5uZWwgZm9yIHVwbG9hZCBhbmQgaW1wb3J0CiAgICAgICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIGlmICghekRhdGEubWFrZVN0YWNrKSByZXR1cm47IC8vRVJTMTkwODE0CiAgICAgICAgfQogICAgfQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImltcG9ydCIpPi0xKSB7CiAgICAgICAgdmFyIGZyb21GaWxlID0gekRhdGEuZnJvbUZpbGUuc3Vic3RyaW5nKHpEYXRhLmZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsgLy9FUlMxOTA2MjQgc2NvcGluZwogICAgICAgIC8vY3VzdG9tIHNldHRpbmcgaW1wb3J0IC06MzpDb250YWN0OkZheCBvciBjYWxsIHpEYXRhLmNsaWVudEltcG9ydFNPUUwoZnJvbUZpbGUpIHRvIGdldCBxdWVyeQogICAgICAgIHZhciBzZklkPXpEYXRhLmNsaWVudEltcG9ydFNPUUwoZG9jLGZyb21GaWxlKTsKICAgICAgICB2YXIgaW1wb3J0Q29uZmlnPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiSW1wb3J0ZXJfX2MiKS50cmltKCk7CiAgICAgICAgaWYgKCFpbXBvcnRDb25maWcpIGltcG9ydENvbmZpZz1YRGVwbG95bWVudEluZm8oZG9jLCJJbXBvcnRlcl9fYyIpLnRyaW0oKTsgLy9FUlMxOTA4MDUgdHlwZSBpbiBpZiAoKQogICAgICAgIGlmICghc2ZJZCAmJiAhaW1wb3J0Q29uZmlnKSBpbXBvcnRDb25maWc9Ii06MzpDb250YWN0OkZheCI7CiAgICAgICAgaWYgKCFzZklkICYmIGltcG9ydENvbmZpZy5pbmRleE9mKCI6Iik+LTEpIHsKICAgICAgICAgICAgdmFyIGltcG9ydGVyPWltcG9ydENvbmZpZy5zcGxpdCgiOiIpOwogICAgICAgICAgICB2YXIgZD1pbXBvcnRlclswXTsKICAgICAgICAgICAgdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoZCk7CiAgICAgICAgICAgIHZhciBmPSgiMCIraW1wb3J0ZXJbMV0pLzE7CiAgICAgICAgICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gZikgewogICAgICAgICAgICAgICAgdmFyIHNmcSA9IHt9OyBzZnFbaW1wb3J0ZXJbM11dPXBhcnRzW2ZdOyAvL0VSUzE5MDgwNQogICAgICAgICAgICAgICAgc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCBpbXBvcnRlclsyXSwgc2ZxICk7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICAgICAgaWYgKHNmSWQpIHsKICAgICAgICAgICAgdmFyIGF0dGFjaFRvSWQgPSBzZklkOwogICAgICAgICAgICBhbGVydCgiQEBAIElNUE9SVDogQVRUQUNISU5HIFRPIFNBTEVTRk9SQ0UgUkVDT1JEID0gIiArIGF0dGFjaFRvSWQpOwogICAgICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCAiICsgZnJvbUZpbGU7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiSW1wb3J0ZWQiKTsgLy8gUFYxOTA1MjYgdXBkYXRlZCBmb3IgdXBsb2FkIGxvZ2ljCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIkltcG9ydGVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsICJJTVBPUlQiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRVcGxvYWQoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDcwNiB6RGF0YS5jaGFubmVsIGZvciB1cGxvYWQgYW5kIGltcG9ydAogICAgICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgICAgICAgICBpZiAoIXpEYXRhLm1ha2VTdGFjaykgcmV0dXJuOwogICAgICAgIH0KICAgIH0KfQoKICAgIC8vRVJTMTcxMDEyIGtleXdvcmRzIGZvciBkZW1vCiAgICB2YXIga2V5d29yZHM9WyJFTlJMOkVucm9sbG1lbnR+IiwiQ09OOkNvbnNlbnR+IiwiQ09OOmNvbnNlbnR+IiwiUEFQUDpQYXRpZW50IEFzc2lzdGFuY2UiLCJQQVVUSDpQcmlvcn4gQXV0aG9yaXphdGlvbn4iLCJSRUc6UmVndWxhdGlvbn4iLCJSRUY6UkVGRVJSQUwiLCJSRUY6UmVmZXJyYWwiLCJGQVg6Il07CiAgICBrZXl3b3Jkcz1bIkZBWDoiXTsgLy9FUlMxOTA2MTcgVE9ETyBhcnJheSBvciBub3Q/IC8vRVJTMTkwNjI0IHRoZSBGQVg6IHZhbHVlIGVmZmVjdGl2ZWx5IHJlbW92ZXMgT0NSIFRPRE8gdHJ5IGJvdGggd2F5cwogICAgekRhdGEuZG9jVHlwZU9DUiA9IHpEYXRhLmRvY1R5cGVyKGRvYywga2V5d29yZHMpOyAvL1BWMTkwNTI2IFJlbW92ZWQgdHlwZXMKICAgIGFsZXJ0KCJkb2NUeXBlIHdhcyAiICsgZG9jLmRvY1R5cGUgKyAiIG5vdyAiICsgekRhdGEuZG9jVHlwZU9DUik7CiAgICB2YXIgelR5cGUgPSBkb2MuWCgiWF9kb2NUeXBlIik7CiAgICBpZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIHpUeXBlID0gekRhdGEuZG9jVHlwZU9DUjsgLy9FUlMxNzAzMzAgc2F2ZWQgYmVsb3cgaW50byBTRiBmYXhUeXBlX19jIGZpZWxkCiAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7CiAgICB9CiAgIAogICAgLy9FUlMxOTA2MTcgVE9ETyBkb2N1bWVudCBodWIgc3RyYXRlZ3kKICAgIC8vRVJTMTkwODE0IHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAvL3dobyBhbmQgd2hlcmUKICAgIC8vRVJTMTkwODE0IHpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL1RPRE8gcmVmYWN0b3Igd2l0aCBzZXRCcmFuZFByb2dyYW0oKQoKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsIHpUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YXR1c19fYyIsICJOZXcgU3RhY2siKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsIHpEYXRhLmNoYW5uZWwpOwogICAgLy8gTVNIMTcxMTE2IHVzaW5nIHpTdGFja19SZWNlaXZlZF9fYyBpbnN0ZWFkIG9mIGxhdGVzdEZheF9fYyBiZWNhdXNlIGxhdGVzdEZheF9fYyBnZXRzIHVwZGF0ZWQgYnkgc2F2ZS5qc3AgZXZlcnkgdGltZSB0aGUgcmVjb3JkIGlzIHVwZGF0ZWQKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgekRhdGEuZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsKICAgIHZhciBwYWdlUmFuZ2UgPSIxLSIrWChkb2MsIlhfcGFnZXMiKTsKICAgIHpEYXRhLnBhZ2VzPVgoZG9jLCJYX3BhZ2VzIikvMTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywiWF9wYWdlcyIpKTsgIGFsZXJ0KCJFUlMyMDAyMTMgWlBBUEVSX19QYWdlc19fYz0iK3pEYXRhLnBhZ2VzKyIgaXMgIitYKGRvYywiWF9wYWdlcyIpKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsgLy9FUlMyMDAyMDEgd2FzIHpEYXRhLmNsYXNzaWZpY2F0aW9uICM2ODgyNQogICAgLy9hcnJPZlBhaXJzLnB1c2goIlByb2dyYW1fX2MiLCB6RGF0YS5wcm9ncmFtTmFtZSk7IC8vRVJTMjAwMjAyIFRPRE8gaW50byBtYW5hZ2VkIHBhY2thZ2UgIzY4ODI1IC8vUFYyMDA0MTMKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsgLy9FUlMxNzA2MjggY2FsbGVyIGlkCiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IC8vRVJTMTcwNzMxICM0MDU5MwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsgCiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgIit6RGF0YS5jbGFzc2lmaWNhdGlvbisiIFN0YWNrIHJlY2VpdmVkIG9uICIgKyB6RGF0YS5mb3JtYXROb3c7CiAgICAvL2F0dGFjaExhYmVsID0gIk5ldyAiK3pEYXRhLnByb2dyYW1OYW1lKyIgU3RhY2sgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzsgLy9FUlMyMDAyMDIgY2xpZW50RmlsZSBwcm9iYWJseSBvdmVycmlkZXMgVE9ETyBjbGVhbj8gLy9QVjIwMDQxMyBDb21tZW50ZWQKICAgIAogICAKICAgIC8vRVJTMTkwODAzIHB1c2ggYW55IGN1c3RvbSBvbmUgdG8gekRhdGEuY2xpZW50U3RhY2tzKCkgb3IgbmV3IHpTdGFja0ZpZWxkcyBjdXN0b20gc2V0dGluZwogICAgLy9FUlMxOTA3MjIgbWFrZSBFeGNlcHRpb24gZ28gYXdheSBhcnJPZlBhaXJzLnB1c2goInpTdGFja19SZWNlaXZlZF9fYyIsIGZvcm1hdE5vdyk7CiAgICAvL0VSUzE5MDgwMyBhcnJPZlBhaXJzLnB1c2goInpDYWxsZXJfSURfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7IC8vTVNIMTcwODE3IGFkZGVkCiAgIAogICAgaWYgKHpEYXRhLmNsaWVudFN0YWNrKSBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA2MTcgVE9ETyB6RGF0YS5jbGllbnRTdGFjaygpIHdpdGggbGFiZWwgLy9TdGFja3MoKSBub3cgU3RhY2soKQogICAgdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS56cHMsIGF0dGFjaExhYmVsLCBhcnJPZlBhaXJzKTsgLy8gUFYxOTA1MzAgYWRkZWQgIiIKCiAgICAvL0NSTjE4MDcyNiBDYXNlICM1MDQ2OSAtLSBTZXQgdGhlICJSZWNlaXZlZCIgY2hlY2tib3gKICAgCiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwogICAgYXJyT2ZQYWlycyA9IFtdOyAvLyBQVjE5MDUzMSBhZGRlZCBmb3Igc3RhY2sgbGFiZWwKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CiAgICBpZiAoWChkb2MsICJYX2Zyb21GaWxlIik9PT0iIikgeyAvL0VSUzE5MDYyNAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9mcm9tRmlsZSIsZG9jLlVSTC5zdWJzdHJpbmcoZG9jLlVSTC5sYXN0SW5kZXhPZigiLyIpKzEpKTsKICAgICAgICBhbGVydCgiRVJTMTkwNjI0IHJlcGFpcmluZyBYX2Zyb21GaWxlIHVzaW5nICIrZG9jLlVSTCk7CiAgICB9CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJSZWNlaXZlZCIpOwogICAgaWYgKHNmSWQpIGFyck9mUGFpcnMucHVzaCgiWF9zdGFjayIsIHNmSWQpOyAvL0VSUzIwMDIwNCBidWcgb3IgbWlzdW5kZXJzdGFuZGluZyAjNjg4MjUKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJSZWNlaXZlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsgLy9FUlMxNzA5MDkgIzQwNTkyL0NBVyBVcGRhdGUKICAgCiAgICBpZiAoekRhdGEuemNoYW5uZWwpIHsgLy9FUlMyMDAyMDkgZ3JvdXBzICM2ODgyNSBUT0RPLURPTkUgbW92ZSB1cCBhbmQgY2hlY2sgZm9yIG90aGVyIHZhbHVlcwogICAgICAgIHZhciBmbGRzPSJkYi1yZWFkZXJzLGRiLXVzZXJzIi5zcGxpdCgiLCIpOwogICAgICAgIGZvciAodmFyIGkgaW4gZmxkcykgewogICAgICAgICAgICB2YXIgZj1mbGRzW2ldOwogICAgICAgICAgICBhbGVydCgiRVJTMjAwMjA5IHpjaGFubmVsLiIrZisiPSIrekRhdGEuemNoYW5uZWxbZl0pOwogICAgICAgICAgICBpZiAoekRhdGEuemNoYW5uZWxbZl0pIGFyck9mUGFpcnMucHVzaChmLCB6RGF0YS56Y2hhbm5lbFtmXSk7CiAgICAgICAgICAgIC8vaWYgKHpEYXRhLnpjaGFubmVsWyJkYi1yZWFkZXJzIl0pIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsIHpEYXRhLnpjaGFubmVsWyJkYi1yZWFkZXJzIl0pOwogICAgICAgICAgICAvL2lmICh6RGF0YS56Y2hhbm5lbFsiZGItdXNlcnMiXSkgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsIHpEYXRhLnpjaGFubmVsWyJkYi11c2VycyJdKTsKICAgICAgICB9CiAgICB9CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgYWxlcnQoIkVSUzIwMDIwNSBjcmVhdGVkIHpTdGFjayAiK3NmSWQpOyAvL0VSUzIwMDIwNSAjNjg4MjUKICAgIC8qIEVORCAqLw=="},"ordinal":16}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("top of Create Stack from Fax"); //ERS200412 #70953 refactor for class
var arrOfPairs = [];
var attachLabel = "";
var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS170626 now in the package //ERS190617 zData.zp
var zStack=zData.zps; //"Stack__c"

    //ERS190617 TODO document hub strategy
    //ERS190814 #61511 move orand and orgswitch up before zData.channel
    zData.setbrandprogram(doc); //who and where
    zData.orgSwitch(doc); //TODO refactor with setBrandProgram()

zData.fromFile=X(doc,"X_fromFile"); //ERS190814 TODO? do in library?
alert("ERS190814.11 zData.fromFile="+zData.fromFile+" .channel="+zData.channel); //ERS190814
//CRN190308 Handle uploaded files via Lightning Component and zSend or mass import
if (zData.fromFile) { //ERS190617 TODO channel guide
    if (zData.channel && zData.channel.toLowerCase().indexOf("upload")>-1) {
        var fromFile = zData.fromFile.substring(zData.fromFile.lastIndexOf('/') + 1); //ERS190624 scoping
        var parts = fromFile.split("-");
        if (parts.length >= 3) {
            var attachToId = parts[2];
            alert("@@@ UPLOAD: ATTACHING TO SALESFORCE RECORD = " + attachToId);
            var label = "File uploaded " + fromFile;
            attach(doc, label, attachToId, true);
            arrOfPairs = [];
            arrOfPairs.push("X_reviewedStatus", "Uploaded"); // PV190526 updated for upload logic
            arrOfPairs.push("X_reviews", "Uploaded by agent at " + now0 + "<br/>"+zData.signedStatus);
            arrOfPairs.push("db-label", label);
            arrOfPairs.push("X_docType", "UPLOAD");
            arrOfPairs=zData.clientUpload(doc,arrOfPairs); //ERS190706 zData.channel for upload and import
            updateDB(doc, arrOfPairs);
            if (!zData.makeStack) return; //ERS190814
        }
    }
    if (zData.channel && zData.channel.toLowerCase().indexOf("import")>-1) {
        var fromFile = zData.fromFile.substring(zData.fromFile.lastIndexOf('/') + 1); //ERS190624 scoping
        //custom setting import -:3:Contact:Fax or call zData.clientImportSOQL(fromFile) to get query
        var sfId=zData.clientImportSOQL(doc,fromFile);
        var importConfig=XCustomSetting(doc,zData.zp+"Importer__c").trim();
        if (!importConfig) importConfig=XDeploymentInfo(doc,"Importer__c").trim(); //ERS190805 type in if ()
        if (!sfId && !importConfig) importConfig="-:3:Contact:Fax";
        if (!sfId && importConfig.indexOf(":")>-1) {
            var importer=importConfig.split(":");
            var d=importer[0];
            var parts = fromFile.split(d);
            var f=("0"+importer[1])/1;
            if (parts.length >= f) {
                var sfq = {}; sfq[importer[3]]=parts[f]; //ERS190805
                sfId = getSFRecordID(doc, importer[2], sfq );
            }
        }
        if (sfId) {
            var attachToId = sfId;
            alert("@@@ IMPORT: ATTACHING TO SALESFORCE RECORD = " + attachToId);
            var label = "File uploaded " + fromFile;
            attach(doc, label, attachToId, true);
            arrOfPairs = [];
            arrOfPairs.push("X_reviewedStatus", "Imported"); // PV190526 updated for upload logic
            arrOfPairs.push("X_reviews", "Imported by agent at " + now0 + "<br/>"+zData.signedStatus);
            arrOfPairs.push("db-label", label);
            arrOfPairs.push("X_docType", "IMPORT");
            arrOfPairs=zData.clientUpload(doc,arrOfPairs); //ERS190706 zData.channel for upload and import
            updateDB(doc, arrOfPairs);
            if (!zData.makeStack) return;
        }
    }
}

    //ERS171012 keywords for demo
    var keywords=["ENRL:Enrollment~","CON:Consent~","CON:consent~","PAPP:Patient Assistance","PAUTH:Prior~ Authorization~","REG:Regulation~","REF:REFERRAL","REF:Referral","FAX:"];
    keywords=["FAX:"]; //ERS190617 TODO array or not? //ERS190624 the FAX: value effectively removes OCR TODO try both ways
    zData.docTypeOCR = zData.docTyper(doc, keywords); //PV190526 Removed types
    alert("docType was " + doc.docType + " now " + zData.docTypeOCR);
    var zType = doc.X("X_docType");
    if (doc.docType != zData.docTypeOCR) {
        var arrOfPairs0 = [];
        arrOfPairs0.push("X_docTypeOCR", zData.docTypeOCR);
        arrOfPairs0.push("X_docType", zData.docTypeOCR);
        zType = zData.docTypeOCR; //ERS170330 saved below into SF faxType__c field
        updateDB(doc, arrOfPairs0);
    }
   
    //ERS190617 TODO document hub strategy
    //ERS190814 zData.setbrandprogram(doc); //who and where
    //ERS190814 zData.orgSwitch(doc); //TODO refactor with setBrandProgram()

    arrOfPairs = [];
    arrOfPairs.push(zp+"faxType__c", zType);
    arrOfPairs.push(zp+"Priority__c", "Medium");
    arrOfPairs.push(zp+"Status__c", "New Stack");
    arrOfPairs.push(zp+"Channel__c", zData.channel);
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
    arrOfPairs.push(zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zp+"newFax__c", "true");
    var pageRange ="1-"+X(doc,"X_pages");
    zData.pages=X(doc,"X_pages")/1;
    arrOfPairs.push(zp+"Pages__c", X(doc,"X_pages"));  alert("ERS200213 ZPAPER__Pages__c="+zData.pages+" is "+X(doc,"X_pages")); 
    arrOfPairs.push(zp+"Program_Name__c", zData.programName); //ERS200201 was zData.classification #68825
    //arrOfPairs.push("Program__c", zData.programName); //ERS200202 TODO into managed package #68825 //PV200413
    arrOfPairs.push(zp+"sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
    arrOfPairs.push(zp+"From__c", doc.deliveredFrom);
    arrOfPairs.push(zp+"Stage__c", "Received"); //ERS170731 #40593
    arrOfPairs.push(zp+"Classification__c", zData.classification); 
    attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
    //attachLabel = "New "+zData.programName+" Stack received on " + zData.formatNow; //ERS200202 clientFile probably overrides TODO clean? //PV200413 Commented
    
   
    //ERS190803 push any custom one to zData.clientStacks() or new zStackFields custom setting
    //ERS190722 make Exception go away arrOfPairs.push("zStack_Received__c", formatNow);
    //ERS190803 arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
   
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
    var sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added ""

    //CRN180726 Case #50469 -- Set the "Received" checkbox
   
    var now0 = getCurDateAndTime(doc, false, true);
    arrOfPairs = []; // PV190531 added for stack label
    arrOfPairs.push("db-label", attachLabel);
    if (X(doc, "X_fromFile")==="") { //ERS190624
        arrOfPairs.push("X_fromFile",doc.URL.substring(doc.URL.lastIndexOf("/")+1));
        alert("ERS190624 repairing X_fromFile using "+doc.URL);
    }
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    arrOfPairs.push("X_reviewedStatus", "Received");
    if (sfId) arrOfPairs.push("X_stack", sfId); //ERS200204 bug or misunderstanding #68825
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"+zData.signedStatus); //ERS170909 #40592/CAW Update
   
    if (zData.zchannel) { //ERS200209 groups #68825 TODO-DONE move up and check for other values
        var flds="db-readers,db-users".split(",");
        for (var i in flds) {
            var f=flds[i];
            alert("ERS200209 zchannel."+f+"="+zData.zchannel[f]);
            if (zData.zchannel[f]) arrOfPairs.push(f, zData.zchannel[f]);
            //if (zData.zchannel["db-readers"]) arrOfPairs.push("db-readers", zData.zchannel["db-readers"]);
            //if (zData.zchannel["db-users"]) arrOfPairs.push("db-users", zData.zchannel["db-users"]);
        }
    }
    updateDB(doc, arrOfPairs);
    alert("ERS200205 created zStack "+sfId); //ERS200205 #68825
    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
