<!--
// Name: Create Stack from Fax
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: PV191125 added to cretae stack from upload
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-25 21:16:39","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"dmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIGF0dGFjaExhYmVsID0gIiI7CnZhciB6cD16RGF0YS56cDsgaWYgKCF6cCkgenA9IlpQQVBFUl9fIjsgLy9FUlMxNzA2MjYgbm93IGluIHRoZSBwYWNrYWdlIC8vRVJTMTkwNjE3IHpEYXRhLnpwCnZhciB6U3RhY2s9ekRhdGEuenBzOyAvLyJTdGFja19fYyIKekRhdGEuZnJvbUZpbGU9WChkb2MsIlhfZnJvbUZpbGUiKTsgLy9QVjE5MTEyMiBUT0RPPyBkbyBpbiBsaWJyYXJ5PwovL0NSTjE5MDMwOCBIYW5kbGUgdXBsb2FkZWQgZmlsZXMgdmlhIExpZ2h0bmluZyBDb21wb25lbnQgYW5kIHpTZW5kIG9yIG1hc3MgaW1wb3J0CnZhciBpc1VwbG9hZCA9IGZhbHNlOwppZiAoekRhdGEuZnJvbUZpbGUpIHsgLy9FUlMxOTA2MTcgVE9ETyBjaGFubmVsIGd1aWRlCiAgICBpZiAoekRhdGEuY2hhbm5lbCAmJiB6RGF0YS5jaGFubmVsLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigidXBsb2FkIik+LTEpIHsKICAgICAgICBpc1VwbG9hZCA9IHRydWU7CiAgICAgICAgdmFyIGZyb21GaWxlID0gekRhdGEuZnJvbUZpbGUuc3Vic3RyaW5nKHpEYXRhLmZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsgLy9FUlMxOTA2MjQgc2NvcGluZwogICAgICAgIHZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCItIik7CiAgICAgICAgaWYgKHBhcnRzLmxlbmd0aCA+PSAzKSB7CiAgICAgICAgICAgIHZhciBhdHRhY2hUb0lkID0gcGFydHNbMl07CiAgICAgICAgICAgIGlmKCJORVciIT09IGF0dGFjaFRvSWQpIHsgLy9QVjE5MTEyNSBhZGRlZCB0byBjcmV0YWUgc3RhY2sgZnJvbSB1cGxvYWQKICAgICAgICAgICAgICAgIGFsZXJ0KCJAQEAgVVBMT0FEOiBBVFRBQ0hJTkcgVE8gU0FMRVNGT1JDRSBSRUNPUkQgPSAiICsgYXR0YWNoVG9JZCk7CiAgICAgICAgICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCAiICsgZnJvbUZpbGU7CiAgICAgICAgICAgICAgICBhdHRhY2goZG9jLCBsYWJlbCwgYXR0YWNoVG9JZCwgdHJ1ZSk7CiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiVXBsb2FkZWQiKTsgLy8gUFYxOTA1MjYgdXBkYXRlZCBmb3IgdXBsb2FkIGxvZ2ljCiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJVcGxvYWRlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsKICAgICAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsICJVUExPQUQiKTsKICAgICAgICAgICAgICAgIC8vYXJyT2ZQYWlycz16RGF0YS5jbGllbnRVcGxvYWQoZG9jLGFyck9mUGFpcnMsIlVQTE9BRCIpOyAvL0VSUzE5MDcwNiB6RGF0YS5jaGFubmVsIGZvciB1cGxvYWQgYW5kIGltcG9ydAogICAgICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGZyb21GaWxlICk7Ly9QdjE5MTEyMiB0byB1cGRhdGUgbGFiZWwKICAgICAgICAgICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgICAgICBpZiAoIXpEYXRhLm1ha2VTdGFjaykgcmV0dXJuOyAvL0VSUzE5MDgxNAogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImltcG9ydCIpPi0xKSB7CiAgICAgICAgdmFyIGZyb21GaWxlID0gekRhdGEuZnJvbUZpbGUuc3Vic3RyaW5nKHpEYXRhLmZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsgLy9FUlMxOTA2MjQgc2NvcGluZwogICAgICAgIC8vY3VzdG9tIHNldHRpbmcgaW1wb3J0IC06MzpDb250YWN0OkZheCBvciBjYWxsIHpEYXRhLmNsaWVudEltcG9ydFNPUUwoZnJvbUZpbGUpIHRvIGdldCBxdWVyeQogICAgICAgIHZhciBzZklkPXpEYXRhLmNsaWVudEltcG9ydFNPUUwoZG9jLGZyb21GaWxlKTsKICAgICAgICB2YXIgaW1wb3J0Q29uZmlnPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiSW1wb3J0ZXJfX2MiKS50cmltKCk7CiAgICAgICAgaWYgKCFpbXBvcnRDb25maWcpIGltcG9ydENvbmZpZz1YRGVwbG95bWVudEluZm8oZG9jLCJJbXBvcnRlcl9fYyIpLnRyaW0oKTsgLy9FUlMxOTA4MDUgdHlwZSBpbiBpZiAoKQogICAgICAgIGlmICghc2ZJZCAmJiAhaW1wb3J0Q29uZmlnKSBpbXBvcnRDb25maWc9Ii06MzpDb250YWN0OkZheCI7CiAgICAgICAgaWYgKCFzZklkICYmIGltcG9ydENvbmZpZy5pbmRleE9mKCI6Iik+LTEpIHsKICAgICAgICAgICAgdmFyIGltcG9ydGVyPWltcG9ydENvbmZpZy5zcGxpdCgiOiIpOwogICAgICAgICAgICB2YXIgZD1pbXBvcnRlclswXTsKICAgICAgICAgICAgdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoZCk7CiAgICAgICAgICAgIHZhciBmPSgiMCIraW1wb3J0ZXJbMV0pLzE7CiAgICAgICAgICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gZikgewogICAgICAgICAgICAgICAgdmFyIHNmcSA9IHt9OyBzZnFbaW1wb3J0ZXJbM11dPXBhcnRzW2ZdOyAvL0VSUzE5MDgwNQogICAgICAgICAgICAgICAgc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCBpbXBvcnRlclsyXSwgc2ZxICk7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICAgICAgaWYgKHNmSWQpIHsKICAgICAgICAgICAgdmFyIGF0dGFjaFRvSWQgPSBzZklkOwogICAgICAgICAgICBhbGVydCgiQEBAIElNUE9SVDogQVRUQUNISU5HIFRPIFNBTEVTRk9SQ0UgUkVDT1JEID0gIiArIGF0dGFjaFRvSWQpOwogICAgICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCAiICsgZnJvbUZpbGU7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiSW1wb3J0ZWQiKTsgLy8gUFYxOTA1MjYgdXBkYXRlZCBmb3IgdXBsb2FkIGxvZ2ljCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIkltcG9ydGVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsICJJTVBPUlQiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRVcGxvYWQoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDcwNiB6RGF0YS5jaGFubmVsIGZvciB1cGxvYWQgYW5kIGltcG9ydAogICAgICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgICAgICAgICBpZiAoIXpEYXRhLm1ha2VTdGFjaykgcmV0dXJuOwogICAgICAgIH0KICAgIH0KfQoKICAgIC8vRVJTMTcxMDEyIGtleXdvcmRzIGZvciBkZW1vCiAgICB2YXIga2V5d29yZHM9WyJFTlJMOkVucm9sbG1lbnR+IiwiQ09OOkNvbnNlbnR+IiwiQ09OOmNvbnNlbnR+IiwiUEFQUDpQYXRpZW50IEFzc2lzdGFuY2UiLCJQQVVUSDpQcmlvcn4gQXV0aG9yaXphdGlvbn4iLCJSRUc6UmVndWxhdGlvbn4iLCJSRUY6UkVGRVJSQUwiLCJSRUY6UmVmZXJyYWwiLCJGQVg6Il07CiAgICBrZXl3b3Jkcz1bIkZBWDoiXTsgLy9FUlMxOTA2MTcgVE9ETyBhcnJheSBvciBub3Q/IC8vRVJTMTkwNjI0IHRoZSBGQVg6IHZhbHVlIGVmZmVjdGl2ZWx5IHJlbW92ZXMgT0NSIFRPRE8gdHJ5IGJvdGggd2F5cwogICAgekRhdGEuZG9jVHlwZU9DUiA9IHpEYXRhLmRvY1R5cGVyKGRvYywga2V5d29yZHMpOyAvL1BWMTkwNTI2IFJlbW92ZWQgdHlwZXMKICAgIGFsZXJ0KCJkb2NUeXBlIHdhcyAiICsgZG9jLmRvY1R5cGUgKyAiIG5vdyAiICsgekRhdGEuZG9jVHlwZU9DUik7CiAgICB2YXIgelR5cGUgPSBkb2MuWCgiWF9kb2NUeXBlIik7CiAgICBpZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIHpUeXBlID0gekRhdGEuZG9jVHlwZU9DUjsgLy9FUlMxNzAzMzAgc2F2ZWQgYmVsb3cgaW50byBTRiBmYXhUeXBlX19jIGZpZWxkCiAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7CiAgICB9CiAgIAogICAgLy9FUlMxOTA2MTcgVE9ETyBkb2N1bWVudCBodWIgc3RyYXRlZ3kKICAgIHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAvL3dobyBhbmQgd2hlcmUKICAgIHpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL1RPRE8gcmVmYWN0b3Igd2l0aCBzZXRCcmFuZFByb2dyYW0oKQoKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsIHpUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YXR1c19fYyIsICJOZXcgU3RhY2siKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsIHpEYXRhLmNoYW5uZWwpOwogICAgLy8gTVNIMTcxMTE2IHVzaW5nIHpTdGFja19SZWNlaXZlZF9fYyBpbnN0ZWFkIG9mIGxhdGVzdEZheF9fYyBiZWNhdXNlIGxhdGVzdEZheF9fYyBnZXRzIHVwZGF0ZWQgYnkgc2F2ZS5qc3AgZXZlcnkgdGltZSB0aGUgcmVjb3JkIGlzIHVwZGF0ZWQKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgekRhdGEuZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsgLy9FUlMxNzA2MjggY2FsbGVyIGlkCiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IC8vRVJTMTcwNzMxICM0MDU5MwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIGF0dGFjaExhYmVsID0gIk5ldyAiK3pEYXRhLmNsYXNzaWZpY2F0aW9uKyIgU3RhY2sgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzsKICAgCiAgICAvL0VSUzE5MDgwMyBwdXNoIGFueSBjdXN0b20gb25lIHRvIHpEYXRhLmNsaWVudFN0YWNrcygpIG9yIG5ldyB6U3RhY2tGaWVsZHMgY3VzdG9tIHNldHRpbmcKICAgIC8vRVJTMTkwNzIyIG1ha2UgRXhjZXB0aW9uIGdvIGF3YXkgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCBmb3JtYXROb3cpOwogICAgLy9FUlMxOTA4MDMgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAogICAKICAgIGlmICh6RGF0YS5jbGllbnRTdGFjaykgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRTdGFjayhkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNjE3IFRPRE8gekRhdGEuY2xpZW50U3RhY2soKSB3aXRoIGxhYmVsIC8vU3RhY2tzKCkgbm93IFN0YWNrKCkKICAgIHZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgekRhdGEuenBzLCBhdHRhY2hMYWJlbCwgYXJyT2ZQYWlycyk7IC8vIFBWMTkwNTMwIGFkZGVkICIiCgogICAgLy9DUk4xODA3MjYgQ2FzZSAjNTA0NjkgLS0gU2V0IHRoZSAiUmVjZWl2ZWQiIGNoZWNrYm94CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwogICAgYXJyT2ZQYWlycyA9IFtdOyAvLyBQVjE5MDUzMSBhZGRlZCBmb3Igc3RhY2sgbGFiZWwKICAgIGlmICghaXNVcGxvYWQpIHsgICAgLy9DUk4xOTExMjIgVGhlIEgySCBmb2xrcyBkb24ndCB3YW50IHVwbG9hZHMgdG8gaGF2ZSB0aGUgZGVmdWFsdCBsYWJlbC4gSXQgaXMgYWxyZWFkeSBzZXQgYWJvdmUuCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGF0dGFjaExhYmVsKTsKICAgIH0KICAgIGlmIChYKGRvYywgIlhfZnJvbUZpbGUiKT09PSIiKSB7IC8vRVJTMTkwNjI0CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2Zyb21GaWxlIixkb2MuVVJMLnN1YnN0cmluZyhkb2MuVVJMLmxhc3RJbmRleE9mKCIvIikrMSkpOwogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsIHNmSWQpOy8vUFYxOTEwMjMgdG8gY29ubmVjdCBjaGlsZCB6c3RhY2sgdG8gYWN0dWFsIHBhcmVudCBpbnN0ZWFkIG9mIGdyYW5kIHBhcmVudAogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyAiUmVjZWl2ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOyAgCiAgICAvKiBFTkQgKi8K"},"ordinal":14}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var arrOfPairs = [];
var attachLabel = "";
var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS170626 now in the package //ERS190617 zData.zp
var zStack=zData.zps; //"Stack__c"
zData.fromFile=X(doc,"X_fromFile"); //PV191122 TODO? do in library?
//CRN190308 Handle uploaded files via Lightning Component and zSend or mass import
var isUpload = false;
if (zData.fromFile) { //ERS190617 TODO channel guide
    if (zData.channel && zData.channel.toLowerCase().indexOf("upload")>-1) {
        isUpload = true;
        var fromFile = zData.fromFile.substring(zData.fromFile.lastIndexOf('/') + 1); //ERS190624 scoping
        var parts = fromFile.split("-");
        if (parts.length >= 3) {
            var attachToId = parts[2];
            if("NEW"!== attachToId) { //PV191125 added to cretae stack from upload
                alert("@@@ UPLOAD: ATTACHING TO SALESFORCE RECORD = " + attachToId);
                var label = "File uploaded " + fromFile;
                attach(doc, label, attachToId, true);
                arrOfPairs = [];
                arrOfPairs.push("X_reviewedStatus", "Uploaded"); // PV190526 updated for upload logic
                arrOfPairs.push("X_reviews", "Uploaded by agent at " + now0 + "<br/>"+zData.signedStatus);
                arrOfPairs.push("db-label", label);
                arrOfPairs.push("X_docType", "UPLOAD");
                //arrOfPairs=zData.clientUpload(doc,arrOfPairs,"UPLOAD"); //ERS190706 zData.channel for upload and import
                arrOfPairs.push("db-label", fromFile );//Pv191122 to update label
                updateDB(doc, arrOfPairs);
                if (!zData.makeStack) return; //ERS190814
            }
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
    zData.setbrandprogram(doc); //who and where
    zData.orgSwitch(doc); //TODO refactor with setBrandProgram()

    arrOfPairs = [];
    arrOfPairs.push(zp+"faxType__c", zType);
    arrOfPairs.push(zp+"Priority__c", "Medium");
    arrOfPairs.push(zp+"Status__c", "New Stack");
    arrOfPairs.push(zp+"Channel__c", zData.channel);
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
    arrOfPairs.push(zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zp+"newFax__c", "true");
    arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
    arrOfPairs.push(zp+"Program_Name__c", zData.classification);
    arrOfPairs.push(zp+"sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
    arrOfPairs.push(zp+"From__c", doc.deliveredFrom);
    arrOfPairs.push(zp+"Stage__c", "Received"); //ERS170731 #40593
    arrOfPairs.push(zp+"Classification__c", zData.classification);
    attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
   
    //ERS190803 push any custom one to zData.clientStacks() or new zStackFields custom setting
    //ERS190722 make Exception go away arrOfPairs.push("zStack_Received__c", formatNow);
    //ERS190803 arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
   
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
    var sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added ""

    //CRN180726 Case #50469 -- Set the "Received" checkbox
    var now0 = getCurDateAndTime(doc, false, true);
    arrOfPairs = []; // PV190531 added for stack label
    if (!isUpload) {    //CRN191122 The H2H folks don't want uploads to have the defualt label. It is already set above.
        arrOfPairs.push("db-label", attachLabel);
    }
    if (X(doc, "X_fromFile")==="") { //ERS190624
        arrOfPairs.push("X_fromFile",doc.URL.substring(doc.URL.lastIndexOf("/")+1));
        alert("ERS190624 repairing X_fromFile using "+doc.URL);
    }
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    arrOfPairs.push("X_sfStackId", sfId);//PV191023 to connect child zstack to actual parent instead of grand parent
    arrOfPairs.push("X_reviewedStatus", "Received");
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"+zData.signedStatus); //ERS170909 #40592/CAW Update
    updateDB(doc, arrOfPairs);  
    /* END */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
