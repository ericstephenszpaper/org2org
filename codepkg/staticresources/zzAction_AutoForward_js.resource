<!--
// Name: AutoForward 
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: reverted PV191023
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-23 23:14:30","evalContinue":"true","active":true,"button":"","name":"AutoForward ","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.deliveredTo","value":"16789489653$|6789489653$","operation":"regex"}]},"consequence":{"doit":"dmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIGF0dGFjaExhYmVsID0gIiI7CnZhciB6cD16RGF0YS56cDsgaWYgKCF6cCkgenA9IlpQQVBFUl9fIjsgLy9FUlMxNzA2MjYgbm93IGluIHRoZSBwYWNrYWdlIC8vRVJTMTkwNjE3IHpEYXRhLnpwCnZhciB6U3RhY2s9ekRhdGEuenBzOyAvLyJTdGFja19fYyIKCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgIzYxNTExIG1vdmUgb3JhbmQgYW5kIG9yZ3N3aXRjaCB1cCBiZWZvcmUgekRhdGEuY2hhbm5lbAogICAgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCgp6RGF0YS5mcm9tRmlsZT1YKGRvYywiWF9mcm9tRmlsZSIpOyAvL0VSUzE5MDgxNCBUT0RPPyBkbyBpbiBsaWJyYXJ5PwphbGVydCgiRVJTMTkwODE0LjExIHpEYXRhLmZyb21GaWxlPSIrekRhdGEuZnJvbUZpbGUrIiAuY2hhbm5lbD0iK3pEYXRhLmNoYW5uZWwpOyAvL0VSUzE5MDgxNAovL0NSTjE5MDMwOCBIYW5kbGUgdXBsb2FkZWQgZmlsZXMgdmlhIExpZ2h0bmluZyBDb21wb25lbnQgYW5kIHpTZW5kIG9yIG1hc3MgaW1wb3J0CmlmICh6RGF0YS5mcm9tRmlsZSkgeyAvL0VSUzE5MDYxNyBUT0RPIGNoYW5uZWwgZ3VpZGUKICAgIGlmICh6RGF0YS5jaGFubmVsICYmIHpEYXRhLmNoYW5uZWwudG9Mb3dlckNhc2UoKS5pbmRleE9mKCJ1cGxvYWQiKT4tMSkgewogICAgICAgIHZhciBmcm9tRmlsZSA9IHpEYXRhLmZyb21GaWxlLnN1YnN0cmluZyh6RGF0YS5mcm9tRmlsZS5sYXN0SW5kZXhPZignLycpICsgMSk7IC8vRVJTMTkwNjI0IHNjb3BpbmcKICAgICAgICB2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgiLSIpOwogICAgICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gMykgewogICAgICAgICAgICB2YXIgYXR0YWNoVG9JZCA9IHBhcnRzWzJdOwogICAgICAgICAgICBhbGVydCgiQEBAIFVQTE9BRDogQVRUQUNISU5HIFRPIFNBTEVTRk9SQ0UgUkVDT1JEID0gIiArIGF0dGFjaFRvSWQpOwogICAgICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCAiICsgZnJvbUZpbGU7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiVXBsb2FkZWQiKTsgLy8gUFYxOTEwMTN1cGRhdGVkIGZvciB1cGxvYWQgbG9naWMKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCAiVXBsb2FkZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgIlVQTE9BRCIpOwogICAgICAgICAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFVwbG9hZChkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNzA2IHpEYXRhLmNoYW5uZWwgZm9yIHVwbG9hZCBhbmQgaW1wb3J0CiAgICAgICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIGlmICghekRhdGEubWFrZVN0YWNrKSByZXR1cm47IC8vRVJTMTkwODE0CiAgICAgICAgfQogICAgfQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImltcG9ydCIpPi0xKSB7CiAgICAgICAgdmFyIGZyb21GaWxlID0gekRhdGEuZnJvbUZpbGUuc3Vic3RyaW5nKHpEYXRhLmZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsgLy9FUlMxOTA2MjQgc2NvcGluZwogICAgICAgIC8vY3VzdG9tIHNldHRpbmcgaW1wb3J0IC06MzpDb250YWN0OkZheCBvciBjYWxsIHpEYXRhLmNsaWVudEltcG9ydFNPUUwoZnJvbUZpbGUpIHRvIGdldCBxdWVyeQogICAgICAgIHZhciBzZklkPXpEYXRhLmNsaWVudEltcG9ydFNPUUwoZG9jLGZyb21GaWxlKTsKICAgICAgICB2YXIgaW1wb3J0Q29uZmlnPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiSW1wb3J0ZXJfX2MiKS50cmltKCk7CiAgICAgICAgaWYgKCFpbXBvcnRDb25maWcpIGltcG9ydENvbmZpZz1YRGVwbG95bWVudEluZm8oZG9jLCJJbXBvcnRlcl9fYyIpLnRyaW0oKTsgLy9FUlMxOTA4MDUgdHlwZSBpbiBpZiAoKQogICAgICAgIGlmICghc2ZJZCAmJiAhaW1wb3J0Q29uZmlnKSBpbXBvcnRDb25maWc9Ii06MzpDb250YWN0OkZheCI7CiAgICAgICAgaWYgKCFzZklkICYmIGltcG9ydENvbmZpZy5pbmRleE9mKCI6Iik+LTEpIHsKICAgICAgICAgICAgdmFyIGltcG9ydGVyPWltcG9ydENvbmZpZy5zcGxpdCgiOiIpOwogICAgICAgICAgICB2YXIgZD1pbXBvcnRlclswXTsKICAgICAgICAgICAgdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoZCk7CiAgICAgICAgICAgIHZhciBmPSgiMCIraW1wb3J0ZXJbMV0pLzE7CiAgICAgICAgICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gZikgewogICAgICAgICAgICAgICAgdmFyIHNmcSA9IHt9OyBzZnFbaW1wb3J0ZXJbM11dPXBhcnRzW2ZdOyAvL0VSUzE5MDgwNQogICAgICAgICAgICAgICAgc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCBpbXBvcnRlclsyXSwgc2ZxICk7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICAgICAgaWYgKHNmSWQpIHsKICAgICAgICAgICAgdmFyIGF0dGFjaFRvSWQgPSBzZklkOwogICAgICAgICAgICBhbGVydCgiQEBAIElNUE9SVDogQVRUQUNISU5HIFRPIFNBTEVTRk9SQ0UgUkVDT1JEID0gIiArIGF0dGFjaFRvSWQpOwogICAgICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCAiICsgZnJvbUZpbGU7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiSW1wb3J0ZWQiKTsgLy8gUFYxOTA1MjYgdXBkYXRlZCBmb3IgdXBsb2FkIGxvZ2ljCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIkltcG9ydGVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsICJJTVBPUlQiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRVcGxvYWQoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDcwNiB6RGF0YS5jaGFubmVsIGZvciB1cGxvYWQgYW5kIGltcG9ydAogICAgICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgICAgICAgICBpZiAoIXpEYXRhLm1ha2VTdGFjaykgcmV0dXJuOwogICAgICAgIH0KICAgIH0KfQoKICAgIC8vRVJTMTcxMDEyIGtleXdvcmRzIGZvciBkZW1vCiAgICB2YXIga2V5d29yZHM9WyJFTlJMOkVucm9sbG1lbnR+IiwiQ09OOkNvbnNlbnR+IiwiQ09OOmNvbnNlbnR+IiwiUEFQUDpQYXRpZW50IEFzc2lzdGFuY2UiLCJQQVVUSDpQcmlvcn4gQXV0aG9yaXphdGlvbn4iLCJSRUc6UmVndWxhdGlvbn4iLCJSRUY6UkVGRVJSQUwiLCJSRUY6UmVmZXJyYWwiLCJGQVg6Il07CiAgICBrZXl3b3Jkcz1bIkZBWDoiXTsgLy9FUlMxOTA2MTcgVE9ETyBhcnJheSBvciBub3Q/IC8vRVJTMTkwNjI0IHRoZSBGQVg6IHZhbHVlIGVmZmVjdGl2ZWx5IHJlbW92ZXMgT0NSIFRPRE8gdHJ5IGJvdGggd2F5cwogICAgekRhdGEuZG9jVHlwZU9DUiA9IHpEYXRhLmRvY1R5cGVyKGRvYywga2V5d29yZHMpOyAvL1BWMTkwNTI2IFJlbW92ZWQgdHlwZXMKICAgIGFsZXJ0KCJkb2NUeXBlIHdhcyAiICsgZG9jLmRvY1R5cGUgKyAiIG5vdyAiICsgekRhdGEuZG9jVHlwZU9DUik7CiAgICB2YXIgelR5cGUgPSBkb2MuWCgiWF9kb2NUeXBlIik7CiAgICBpZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIHpUeXBlID0gekRhdGEuZG9jVHlwZU9DUjsgLy9FUlMxNzAzMzAgc2F2ZWQgYmVsb3cgaW50byBTRiBmYXhUeXBlX19jIGZpZWxkCiAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7CiAgICB9CiAgIAogICAgLy9FUlMxOTA2MTcgVE9ETyBkb2N1bWVudCBodWIgc3RyYXRlZ3kKICAgIC8vRVJTMTkwODE0IHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAvL3dobyBhbmQgd2hlcmUKICAgIC8vRVJTMTkwODE0IHpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL1RPRE8gcmVmYWN0b3Igd2l0aCBzZXRCcmFuZFByb2dyYW0oKQoKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsICJVbmtub3duIik7IC8vUFYxOTEwIHVwZGF0ZWQgZG9jdHlwZQogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVbmFzc2lnbmVkIik7IC8vUHYxOTEwMDQgdXBkYXRlZCBwcmlvcml0eQogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGF0dXNfX2MiLCAiRm9yd2FyZCIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDaGFubmVsX19jIiwgekRhdGEuY2hhbm5lbCk7CiAgICAvL2Fyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsICIxNjc4OTQ4MzA3MyIpOwogICAgLy8gTVNIMTcxMTE2IHVzaW5nIHpTdGFja19SZWNlaXZlZF9fYyBpbnN0ZWFkIG9mIGxhdGVzdEZheF9fYyBiZWNhdXNlIGxhdGVzdEZheF9fYyBnZXRzIHVwZGF0ZWQgYnkgc2F2ZS5qc3AgZXZlcnkgdGltZSB0aGUgcmVjb3JkIGlzIHVwZGF0ZWQKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgekRhdGEuZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsib3V0Ym91bmRGYXhUZW1wbGF0ZV9fYyIsIjxzZW5kVG8+ODU1MzQzMzgwMTwvc2VuZFRvPjxmb3JtSWQ+Iitkb2MuZGJJRCArIjwvZm9ybUlkPjxjb3ZlcklEPm5vQ29kZTwvY292ZXJJRD4iICk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlBhZ2VzX19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcm9ncmFtX05hbWVfX2MiLCB6RGF0YS5wcm9ncmFtTmFtZSk7IC8vIFBWMTkxMDA0IHVwZGF0ZWQKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsgLy9FUlMxNzA2MjggY2FsbGVyIGlkCiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIkNvbXBsZXRlZCIpOyAvL0VSUzE3MDczMSAjNDA1OTMKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgIit6RGF0YS5jbGFzc2lmaWNhdGlvbisiIFN0YWNrIHJlY2VpdmVkIG9uICIgKyB6RGF0YS5mb3JtYXROb3c7CiAgIAogICAgLy9FUlMxOTA4MDMgcHVzaCBhbnkgY3VzdG9tIG9uZSB0byB6RGF0YS5jbGllbnRTdGFja3MoKSBvciBuZXcgelN0YWNrRmllbGRzIGN1c3RvbSBzZXR0aW5nCiAgICAvL0VSUzE5MDcyMiBtYWtlIEV4Y2VwdGlvbiBnbyBhd2F5IGFyck9mUGFpcnMucHVzaCgielN0YWNrX1JlY2VpdmVkX19jIiwgZm9ybWF0Tm93KTsKICAgIC8vRVJTMTkwODAzIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKICAgCiAgICBpZiAoekRhdGEuY2xpZW50U3RhY2spIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDYxNyBUT0RPIHpEYXRhLmNsaWVudFN0YWNrKCkgd2l0aCBsYWJlbCAvL1N0YWNrcygpIG5vdyBTdGFjaygpCiAgICB2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpEYXRhLnpwcywgYXR0YWNoTGFiZWwsIGFyck9mUGFpcnMpOyAvLyBQVjE5MDUzMCBhZGRlZCAKICAgIAogICAvLyB2YXIgZmxhdFVSTD0iaHR0cDovL2xvY2FsaG9zdDo4MDgwL2tiL2pzcC9TRl9zZW5kRmF4LmpzcD9mYXhUbz0xNjc4OTQ4MzA3MyZtb2RlPWZpbGVQREYiOyAvL1BWMTkxMDEwIGFkZGVkIHRvIHJlcm91dGUgZmF4CiAgICB2YXIgZmxhdFVSTD0iaHR0cDovL2xvY2FsaG9zdDo4MDgwL2tiL2pzcC9TRl9zZW5kRmF4LmpzcD9mYXhUbz04NTUzNDMzODAxQCIrc2ZJZCsiJlNGaWRzPSIrc2ZJZCsiJm1vZGU9ZmlsZVBERiI7ICAvL1BWMTkxMDEzIGZvciByZXJvdGUgbG9naWMgIAogICAgYWxlcnQoIkVSUzE5MDQxMSBVUkw9IitmbGF0VVJMKTsKICAgICAgICB2YXIgc2ZPcmdJRD1kb2Mua2JEYXRhLnNmT3JnYW5pemF0aW9uSUQ7CiAgICAgICAgaWYgKCFzZk9yZ0lEKSBzZk9yZ0lEPWRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQuc3Vic3RyaW5nKDAsZG9jLmtiRGF0YS5zZlNlc3Npb25JRC5pbmRleE9mKCIhIiktMSk7CiAgICAgICAgZmxhdFVSTCs9IiZTRm9yZz0iK3NmT3JnSUQrIiZTRnNlc3Npb249Iitkb2Mua2JEYXRhLnNmU2Vzc2lvbklEOwogICAgICAgIGZsYXRVUkwrPSImY292ZXJJRDI9bm9CYXJjb2RlJmNvdmVySUQ9Iitkb2MuZGJJRDsgLy9uZXdTbmlwcGV0SWQgZm9yIGJhcmNvZGVpZiB3ZSB3YW50IHdlIGNhbiByZW1vdmUoY292ZXJJRDI9bm9CYXJjb2RlKQogICAgICAgIGZsYXRVUkwrPSImU0Z0eXBlPVpQQVBFUl9felN0YWNrX19jIjsgIC8vRVJTMTkwNDExIFRPRE8gYmV0dGVyIG1pc3NpbmcgcGFyYW1ldGVycwogICAgICAgIGFsZXJ0KCJFUlMxOTA0MTEgZmxhdHRlbiB3aXRoICIrZmxhdFVSTCk7CiAgICAgICAgdmFyIGZsYXREYXRhPXdnZXQoZG9jLGZsYXRVUkwsbnVsbCxudWxsKTsgLy9TRl9zZW5kRmF4LmpzcCBpcyByZXR1cm5pbmcgYSB6aXBwaSBpZAogICAgICAgIGFsZXJ0KCJmbGF0RGF0YT09PT09IitmbGF0RGF0YSk7IC8vUFYxOTEwMTMgdG8gbG9nIHJlc3BvbnNlCgogICAgLy9DUk4xODA3MjYgQ2FzZSAjNTA0NjkgLS0gU2V0IHRoZSAiUmVjZWl2ZWQiIGNoZWNrYm94CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwogICAgLyphcnJPZlBhaXJzID0gW107IC8vIFBWMTkwNTMxIGFkZGVkIGZvciBzdGFjayBsYWJlbAogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGF0dGFjaExhYmVsKTsKICAgIGlmIChYKGRvYywgIlhfZnJvbUZpbGUiKT09PSIiKSB7IC8vRVJTMTkwNjI0CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2Zyb21GaWxlIixkb2MuVVJMLnN1YnN0cmluZyhkb2MuVVJMLmxhc3RJbmRleE9mKCIvIikrMSkpOwogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyAiUmVjZWl2ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOyAgKi8KICAgIC8qIEVORCAqLw=="},"ordinal":13}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
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
            arrOfPairs.push("X_reviewedStatus", "Uploaded"); // PV191013updated for upload logic
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
    arrOfPairs.push(zp+"faxType__c", "Unknown"); //PV1910 updated doctype
    arrOfPairs.push(zp+"Priority__c", "Unassigned"); //Pv191004 updated priority
    arrOfPairs.push(zp+"Status__c", "Forward");
    arrOfPairs.push(zp+"Channel__c", zData.channel);
    //arrOfPairs.push(zp+"Channel__c", "16789483073");
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
    arrOfPairs.push(zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zp+"outboundFaxTemplate__c","<sendTo>8553433801</sendTo><formId>"+doc.dbID +"</formId><coverID>noCode</coverID>" );
    arrOfPairs.push(zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zp+"newFax__c", "true");
    arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
    arrOfPairs.push(zp+"Program_Name__c", zData.programName); // PV191004 updated
    arrOfPairs.push(zp+"sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
    arrOfPairs.push(zp+"From__c", doc.deliveredFrom);
    arrOfPairs.push(zp+"Stage__c", "Completed"); //ERS170731 #40593
    arrOfPairs.push(zp+"Classification__c", zData.classification);
    attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
   
    //ERS190803 push any custom one to zData.clientStacks() or new zStackFields custom setting
    //ERS190722 make Exception go away arrOfPairs.push("zStack_Received__c", formatNow);
    //ERS190803 arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
   
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
    var sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added 
    
   // var flatURL="http://localhost:8080/kb/jsp/SF_sendFax.jsp?faxTo=16789483073&mode=filePDF"; //PV191010 added to reroute fax
    var flatURL="http://localhost:8080/kb/jsp/SF_sendFax.jsp?faxTo=8553433801@"+sfId+"&SFids="+sfId+"&mode=filePDF";  //PV191013 for rerote logic  
    alert("ERS190411 URL="+flatURL);
        var sfOrgID=doc.kbData.sfOrganizationID;
        if (!sfOrgID) sfOrgID=doc.kbData.sfSessionID.substring(0,doc.kbData.sfSessionID.indexOf("!")-1);
        flatURL+="&SForg="+sfOrgID+"&SFsession="+doc.kbData.sfSessionID;
        flatURL+="&coverID2=noBarcode&coverID="+doc.dbID; //newSnippetId for barcodeif we want we can remove(coverID2=noBarcode)
        flatURL+="&SFtype=ZPAPER__zStack__c";  //ERS190411 TODO better missing parameters
        alert("ERS190411 flatten with "+flatURL);
        var flatData=wget(doc,flatURL,null,null); //SF_sendFax.jsp is returning a zippi id
        alert("flatData====="+flatData); //PV191013 to log response

    //CRN180726 Case #50469 -- Set the "Received" checkbox
    var now0 = getCurDateAndTime(doc, false, true);
    /*arrOfPairs = []; // PV190531 added for stack label
    arrOfPairs.push("db-label", attachLabel);
    if (X(doc, "X_fromFile")==="") { //ERS190624
        arrOfPairs.push("X_fromFile",doc.URL.substring(doc.URL.lastIndexOf("/")+1));
        alert("ERS190624 repairing X_fromFile using "+doc.URL);
    }
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    arrOfPairs.push("X_reviewedStatus", "Received");
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"+zData.signedStatus); //ERS170909 #40592/CAW Update
    updateDB(doc, arrOfPairs);  */
    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
