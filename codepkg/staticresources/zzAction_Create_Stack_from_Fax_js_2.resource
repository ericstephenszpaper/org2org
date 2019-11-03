<!--
// Name: Create Stack from Fax
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: updated the alert
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-10 18:20:18","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgQ3JlYXRlIHN0YWNrIGZyb20gZmF4IFJ1bGUgRmlyZWQgQEBAIyIpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgYXR0YWNoTGFiZWwgPSAiIjsKdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL0VSUzE3MDYyNiBub3cgaW4gdGhlIHBhY2thZ2UgLy9FUlMxOTA2MTcgekRhdGEuenAKdmFyIHpTdGFjaz16RGF0YS56cHM7IC8vIlN0YWNrX19jIgoKICAgIC8vRVJTMTkwNjE3IFRPRE8gZG9jdW1lbnQgaHViIHN0cmF0ZWd5CiAgICAvL0VSUzE5MDgxNCAjNjE1MTEgbW92ZSBvcmFuZCBhbmQgb3Jnc3dpdGNoIHVwIGJlZm9yZSB6RGF0YS5jaGFubmVsCiAgICB6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgLy93aG8gYW5kIHdoZXJlCiAgICB6RGF0YS5vcmdTd2l0Y2goZG9jKTsgLy9UT0RPIHJlZmFjdG9yIHdpdGggc2V0QnJhbmRQcm9ncmFtKCkKCnpEYXRhLmZyb21GaWxlPVgoZG9jLCJYX2Zyb21GaWxlIik7IC8vRVJTMTkwODE0IFRPRE8/IGRvIGluIGxpYnJhcnk/CmFsZXJ0KCJFUlMxOTA4MTQuMTEgekRhdGEuZnJvbUZpbGU9Iit6RGF0YS5mcm9tRmlsZSsiIC5jaGFubmVsPSIrekRhdGEuY2hhbm5lbCk7IC8vRVJTMTkwODE0Ci8vQ1JOMTkwMzA4IEhhbmRsZSB1cGxvYWRlZCBmaWxlcyB2aWEgTGlnaHRuaW5nIENvbXBvbmVudCBhbmQgelNlbmQgb3IgbWFzcyBpbXBvcnQKaWYgKHpEYXRhLmZyb21GaWxlKSB7IC8vRVJTMTkwNjE3IFRPRE8gY2hhbm5lbCBndWlkZQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpPi0xKSB7CiAgICAgICAgdmFyIGZyb21GaWxlID0gekRhdGEuZnJvbUZpbGUuc3Vic3RyaW5nKHpEYXRhLmZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsgLy9FUlMxOTA2MjQgc2NvcGluZwogICAgICAgIHZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCItIik7CiAgICAgICAgaWYgKHBhcnRzLmxlbmd0aCA+PSAzKSB7CiAgICAgICAgICAgIHZhciBhdHRhY2hUb0lkID0gcGFydHNbMl07CiAgICAgICAgICAgIGFsZXJ0KCJAQEAgVVBMT0FEOiBBVFRBQ0hJTkcgVE8gU0FMRVNGT1JDRSBSRUNPUkQgPSAiICsgYXR0YWNoVG9JZCk7CiAgICAgICAgICAgIHZhciBsYWJlbCA9ICJGaWxlIHVwbG9hZGVkICIgKyBmcm9tRmlsZTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgbGFiZWwsIGF0dGFjaFRvSWQsIHRydWUpOwogICAgICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJVcGxvYWRlZCIpOyAvLyBQVjE5MDUyNiB1cGRhdGVkIGZvciB1cGxvYWQgbG9naWMgCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIlVwbG9hZGVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsICJVUExPQUQiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRVcGxvYWQoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDcwNiB6RGF0YS5jaGFubmVsIGZvciB1cGxvYWQgYW5kIGltcG9ydAogICAgICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgICAgICAgICBpZiAoIXpEYXRhLm1ha2VTdGFjaykgcmV0dXJuOyAvL0VSUzE5MDgxNAogICAgICAgIH0KICAgIH0KICAgIGlmICh6RGF0YS5jaGFubmVsICYmIHpEYXRhLmNoYW5uZWwudG9Mb3dlckNhc2UoKS5pbmRleE9mKCJpbXBvcnQiKT4tMSkgewogICAgICAgIHZhciBmcm9tRmlsZSA9IHpEYXRhLmZyb21GaWxlLnN1YnN0cmluZyh6RGF0YS5mcm9tRmlsZS5sYXN0SW5kZXhPZignLycpICsgMSk7IC8vRVJTMTkwNjI0IHNjb3BpbmcKICAgICAgICAvL2N1c3RvbSBzZXR0aW5nIGltcG9ydCAtOjM6Q29udGFjdDpGYXggb3IgY2FsbCB6RGF0YS5jbGllbnRJbXBvcnRTT1FMKGZyb21GaWxlKSB0byBnZXQgcXVlcnkKICAgICAgICB2YXIgc2ZJZD16RGF0YS5jbGllbnRJbXBvcnRTT1FMKGRvYyxmcm9tRmlsZSk7CiAgICAgICAgdmFyIGltcG9ydENvbmZpZz1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIkltcG9ydGVyX19jIikudHJpbSgpOwogICAgICAgIGlmICghaW1wb3J0Q29uZmlnKSBpbXBvcnRDb25maWc9WERlcGxveW1lbnRJbmZvKGRvYywiSW1wb3J0ZXJfX2MiKS50cmltKCk7IC8vRVJTMTkwODA1IHR5cGUgaW4gaWYgKCkKICAgICAgICBpZiAoIXNmSWQgJiYgIWltcG9ydENvbmZpZykgaW1wb3J0Q29uZmlnPSItOjM6Q29udGFjdDpGYXgiOwogICAgICAgIGlmICghc2ZJZCAmJiBpbXBvcnRDb25maWcuaW5kZXhPZigiOiIpPi0xKSB7CiAgICAgICAgICAgIHZhciBpbXBvcnRlcj1pbXBvcnRDb25maWcuc3BsaXQoIjoiKTsKICAgICAgICAgICAgdmFyIGQ9aW1wb3J0ZXJbMF07CiAgICAgICAgICAgIHZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KGQpOwogICAgICAgICAgICB2YXIgZj0oIjAiK2ltcG9ydGVyWzFdKS8xOwogICAgICAgICAgICBpZiAocGFydHMubGVuZ3RoID49IGYpIHsKICAgICAgICAgICAgICAgIHZhciBzZnEgPSB7fTsgc2ZxW2ltcG9ydGVyWzNdXT1wYXJ0c1tmXTsgLy9FUlMxOTA4MDUKICAgICAgICAgICAgICAgIHNmSWQgPSBnZXRTRlJlY29yZElEKGRvYywgaW1wb3J0ZXJbMl0sIHNmcSApOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgICAgIGlmIChzZklkKSB7CiAgICAgICAgICAgIHZhciBhdHRhY2hUb0lkID0gc2ZJZDsKICAgICAgICAgICAgYWxlcnQoIkBAQCBJTVBPUlQ6IEFUVEFDSElORyBUTyBTQUxFU0ZPUkNFIFJFQ09SRCA9ICIgKyBhdHRhY2hUb0lkKTsKICAgICAgICAgICAgdmFyIGxhYmVsID0gIkZpbGUgdXBsb2FkZWQgIiArIGZyb21GaWxlOwogICAgICAgICAgICBhdHRhY2goZG9jLCBsYWJlbCwgYXR0YWNoVG9JZCwgdHJ1ZSk7CiAgICAgICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIkltcG9ydGVkIik7IC8vIFBWMTkwNTI2IHVwZGF0ZWQgZm9yIHVwbG9hZCBsb2dpYyAKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCAiSW1wb3J0ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgIklNUE9SVCIpOwogICAgICAgICAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFVwbG9hZChkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNzA2IHpEYXRhLmNoYW5uZWwgZm9yIHVwbG9hZCBhbmQgaW1wb3J0CiAgICAgICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIGlmICghekRhdGEubWFrZVN0YWNrKSByZXR1cm47CiAgICAgICAgfQogICAgfQp9IAoKICAgIC8vRVJTMTcxMDEyIGtleXdvcmRzIGZvciBkZW1vCiAgICB2YXIga2V5d29yZHM9WyJFTlJMOkVucm9sbG1lbnR+IiwiQ09OOkNvbnNlbnR+IiwiQ09OOmNvbnNlbnR+IiwiUEFQUDpQYXRpZW50IEFzc2lzdGFuY2UiLCJQQVVUSDpQcmlvcn4gQXV0aG9yaXphdGlvbn4iLCJSRUc6UmVndWxhdGlvbn4iLCJSRUY6UkVGRVJSQUwiLCJSRUY6UmVmZXJyYWwiLCJGQVg6Il07CiAgICBrZXl3b3Jkcz1bIkZBWDoiXTsgLy9FUlMxOTA2MTcgVE9ETyBhcnJheSBvciBub3Q/IC8vRVJTMTkwNjI0IHRoZSBGQVg6IHZhbHVlIGVmZmVjdGl2ZWx5IHJlbW92ZXMgT0NSIFRPRE8gdHJ5IGJvdGggd2F5cwogICAgekRhdGEuZG9jVHlwZU9DUiA9IHpEYXRhLmRvY1R5cGVyKGRvYywga2V5d29yZHMpOyAvL1BWMTkwNTI2IFJlbW92ZWQgdHlwZXMKICAgIGFsZXJ0KCJkb2NUeXBlIHdhcyAiICsgZG9jLmRvY1R5cGUgKyAiIG5vdyAiICsgekRhdGEuZG9jVHlwZU9DUik7CiAgICB2YXIgelR5cGUgPSBkb2MuWCgiWF9kb2NUeXBlIik7CiAgICBpZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIHpUeXBlID0gekRhdGEuZG9jVHlwZU9DUjsgLy9FUlMxNzAzMzAgc2F2ZWQgYmVsb3cgaW50byBTRiBmYXhUeXBlX19jIGZpZWxkCiAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7CiAgICB9CiAgICAKICAgIC8vRVJTMTkwNjE3IFRPRE8gZG9jdW1lbnQgaHViIHN0cmF0ZWd5CiAgICAvL0VSUzE5MDgxNCB6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgLy93aG8gYW5kIHdoZXJlCiAgICAvL0VSUzE5MDgxNCB6RGF0YS5vcmdTd2l0Y2goZG9jKTsgLy9UT0RPIHJlZmFjdG9yIHdpdGggc2V0QnJhbmRQcm9ncmFtKCkKCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCB6VHlwZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVuYXNzaWduZWQiKTsgLy9QdjE5MTAwNCB1cGRhdGVkIHByaW9yaXR5CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YXR1c19fYyIsICJOZXcgU3RhY2siKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsIHpEYXRhLmNoYW5uZWwpOwogICAgLy8gTVNIMTcxMTE2IHVzaW5nIHpTdGFja19SZWNlaXZlZF9fYyBpbnN0ZWFkIG9mIGxhdGVzdEZheF9fYyBiZWNhdXNlIGxhdGVzdEZheF9fYyBnZXRzIHVwZGF0ZWQgYnkgc2F2ZS5qc3AgZXZlcnkgdGltZSB0aGUgcmVjb3JkIGlzIHVwZGF0ZWQKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgekRhdGEuZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsgLy8gUFYxOTEwMDQgdXBkYXRlZCAKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsgLy9FUlMxNzA2MjggY2FsbGVyIGlkCiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IC8vRVJTMTcwNzMxICM0MDU5MwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsgCiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgIit6RGF0YS5jbGFzc2lmaWNhdGlvbisiIFN0YWNrIHJlY2VpdmVkIG9uICIgKyB6RGF0YS5mb3JtYXROb3c7CiAgICAKICAgIC8vRVJTMTkwODAzIHB1c2ggYW55IGN1c3RvbSBvbmUgdG8gekRhdGEuY2xpZW50U3RhY2tzKCkgb3IgbmV3IHpTdGFja0ZpZWxkcyBjdXN0b20gc2V0dGluZwogICAgLy9FUlMxOTA3MjIgbWFrZSBFeGNlcHRpb24gZ28gYXdheSBhcnJPZlBhaXJzLnB1c2goInpTdGFja19SZWNlaXZlZF9fYyIsIGZvcm1hdE5vdyk7CiAgICAvL0VSUzE5MDgwMyBhcnJPZlBhaXJzLnB1c2goInpDYWxsZXJfSURfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7IC8vTVNIMTcwODE3IGFkZGVkCiAgICAKICAgIGlmICh6RGF0YS5jbGllbnRTdGFjaykgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRTdGFjayhkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNjE3IFRPRE8gekRhdGEuY2xpZW50U3RhY2soKSB3aXRoIGxhYmVsIC8vU3RhY2tzKCkgbm93IFN0YWNrKCkKICAgIHZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgekRhdGEuenBzLCBhdHRhY2hMYWJlbCwgYXJyT2ZQYWlycyk7IC8vIFBWMTkwNTMwIGFkZGVkICIiCgogICAgLy9DUk4xODA3MjYgQ2FzZSAjNTA0NjkgLS0gU2V0IHRoZSAiUmVjZWl2ZWQiIGNoZWNrYm94CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwogICAgYXJyT2ZQYWlycyA9IFtdOyAvLyBQVjE5MDUzMSBhZGRlZCBmb3Igc3RhY2sgbGFiZWwKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CiAgICBpZiAoWChkb2MsICJYX2Zyb21GaWxlIik9PT0iIikgeyAvL0VSUzE5MDYyNAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9mcm9tRmlsZSIsZG9jLlVSTC5zdWJzdHJpbmcoZG9jLlVSTC5sYXN0SW5kZXhPZigiLyIpKzEpKTsgCiAgICAgICAgYWxlcnQoIkVSUzE5MDYyNCByZXBhaXJpbmcgWF9mcm9tRmlsZSB1c2luZyAiK2RvYy5VUkwpOwogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiUmVjZWl2ZWQiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJSZWNlaXZlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsgLy9FUlMxNzA5MDkgIzQwNTkyL0NBVyBVcGRhdGUKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7ICAgCiAgICAvKiBFTkQgKi8="},"ordinal":20}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Create stack from fax Rule Fired @@@#");
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
    arrOfPairs.push(zp+"Priority__c", "Unassigned"); //Pv191004 updated priority
    arrOfPairs.push(zp+"Status__c", "New Stack");
    arrOfPairs.push(zp+"Channel__c", zData.channel);
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
    arrOfPairs.push(zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zp+"newFax__c", "true");
    arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
    arrOfPairs.push(zp+"Program_Name__c", zData.programName); // PV191004 updated 
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
    arrOfPairs.push("db-label", attachLabel);
    if (X(doc, "X_fromFile")==="") { //ERS190624
        arrOfPairs.push("X_fromFile",doc.URL.substring(doc.URL.lastIndexOf("/")+1)); 
        alert("ERS190624 repairing X_fromFile using "+doc.URL);
    }
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    arrOfPairs.push("X_reviewedStatus", "Received");
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"+zData.signedStatus); //ERS170909 #40592/CAW Update
    updateDB(doc, arrOfPairs);   
    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
