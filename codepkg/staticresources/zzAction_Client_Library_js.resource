<!--
// Name: Client Library
// Committer: eric.stephens@zpaper.com
// Update: ERS190830 #61924 Acct; ERS190830 #61924
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-08-30 13:52:41","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCnpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL0VSUzE5MDgxNCAjNjE1MTEKCnpEYXRhLndhdGVybWFyaz0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIndhdGVybWFya19fYyIpOyAvL0VSUzE5MDYxOCBiZXN0IHByYWN0aWNlCi8vYWxlcnQoIkVSUzE5MDQxMSB3bT0iK3pEYXRhLndhdGVybWFyaysiIFpQQVBFUl9fc2VydmVyX19jPSIrWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3NlcnZlcl9fYyIpKTsKekRhdGEudXBsb2FkRGlyID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ1cGxvYWREaXJfX2MiKTsgLy8iYWxrZXJtZXNSb290IjsKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCnpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCi8vVE9ETyB6RGF0YS5rZXl3b3JkTWFwWyJFTlJMIl0gPSJFTlJMOkVucm9sbG1lbnQgRm9ybSI7ICAvL1RPRE8gZ2V0IGZyb20gelN0YWNrIHBpY2tsaXN0cwovL1RPRE8gekRhdGEua2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKekRhdGEuUFJPR1JBTV9aQ0FSVEE9ekRhdGEuY2hhbm5lbFsiekNhcnRhIl07CnpEYXRhLlBST0dSQU1fWkNIQVJUQT16RGF0YS5jaGFubmVsWyJ6Q2hhcnRhIl07CnpEYXRhLlBST0dSQU1fWlBBUFlSVVM9ekRhdGEuY2hhbm5lbFsielBhcHlydXMiXTsKCnpEYXRhLmNsaWVudEltcG9ydFNPUUw9ZnVuY3Rpb24oZG9jLGZyb21GaWxlKSB7IC8vRVJTMTkwNzA2IGN1c3RvbWl6ZSBpbXBvcnRzIHVzZWQgYnkgQ3JlYXRlIFN0YWNrCiAgICB6RGF0YS5pbXBvcnRlcj1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIkltcG9ydGVyX19jIikudHJpbSgpOwogICAgdmFyIHNmSWQ9IiI7CiAgICB2YXIgcGFydHM9ZnJvbUZpbGUuc3BsaXQoIl8iKTsKICAgIC8vc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQWNjb3VudCIsIHsgIkZheCIgOiBwYXJ0c1szXSB9ICk7CiAgICB6RGF0YS5tYWtlU3RhY2s9dHJ1ZTsgLy9kbyBhbGwgdGhlIHdvcmsgdGhlcmUgYnkgZGVmYXVsdAogICAgcmV0dXJuIHNmSWQ7Cn07CgovL2FsZXJ0KCJ6RGF0YS5jbGllbnRTdGFjayIpOwp6RGF0YS5jbGllbnRTdGFjaz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykgeyAvL3pEYXRhIG9yIHRoaXM/CiAgICB2YXIgenA9ekRhdGEuenA7IGlmICghenApIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwODA1IAoJaWYgKHpEYXRhLnJlY2VpdmVkKSBhcnJPZlBhaXJzLnB1c2goInpTdGFja19SZWNlaXZlZF9fYyIsIHpEYXRhLmZvcm1hdE5vdyk7IC8vRVJTMTkwNjE3IFRPRE8gc2F2ZSB3YXkgdG8gZG8gdGhpcwoJaWYgKHpEYXRhLm93bmVySWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEub3duZXJJZCk7ICAvLyB6Q2hhcnRhIFF1ZXVlICIwMEczNjAwMDAwMkN5VEsiCglpZiAoekRhdGEuY2FsbGVySWQpIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKCWlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoJCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIHpEYXRhLmRvY1R5cGUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CiAgICB2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MsIHBhZ2VSYW5nZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgCiAgICAvL0VSUzE5MDgxMCBUT0RPPyBhcnJPZlBhaXJzLnB1c2goIlpTVEFDS19fUmVjZWl2ZWRfX2MiLCB6RGF0YS5mb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhZ2VzX19jIiwgcGFnZUNvdW50KTsgIC8vRVJTMTkwODI5IHJldmlldyBjb3VudFBhZ2VzIGZvciBlbWFpbHMgYW5kIGZheGVzCgogICAgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDSEFSVEEpIHsKICAgIAlhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVyZ2VudCIpOyAvL0pQQjE5MDQyNiBjaGFuZ2VkIHRvIGNsYXNzaWZpY2F0aW9uIGZyb20gcHJvZ3JhbQogICAgfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUykgewogICAgCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiSGlnaCIpOyAKICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7CiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJDcml0aWNhbCIpOwkKICAgIH0gZWxzZSB7CiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJOb3JtYWwiKTsKICAgIH0KICAgIAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLCAoIkNvbW11bml0eSIgPT09IHpEYXRhLmNoYW5uZWwgPyB6RGF0YS5jaGFubmVsIDogZG9jLmRlbGl2ZXJlZFRvKSk7IC8vSlBCMTkwNTI5IGFkZGVkIHNvIENvbW11bml0eSBzaG93cyB1cCBpbiBNYXN0ZXIgSW50YWtlIExpc3QKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsZG9jLmRlbGl2ZXJlZEZyb20pOwogICAgaWYgKHpEYXRhLnJldmlld2VkU3RhdHVzKSB7YXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsIHpEYXRhLnJldmlld2VkU3RhdHVzKTsgfSAKICAgIGVsc2UgeyBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IH0KICAgIHpEYXRhLnN0YWNrUGFpcnM9YXJyT2ZQYWlyczsgLy9FUlMxOTA4MTAgIzYxNTcwIGZvciBjaGlsZCBzdGFjayBsYXRlcgogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pTdGFja0ZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCglyZXR1cm4gYXJyT2ZQYWlyczsKfTsKCnpEYXRhLmNsaWVudFVwbG9hZD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxjaGFubmVsKSB7IC8vekRhdGEgb3IgdGhpcz8KICAgIHZhciB6cD16RGF0YS56cDsgaWYgKCF6cCkgenA9IlpQQVBFUl9fIjsgLy9FUlMxOTA4MDUKICAgIGlmICghY2hhbm5lbCkgY2hhbm5lbD0iVVBMT0FEIjsgLy9JTVBPUlQgaXMgdGhlIG90aGVyIG9uZQogICAgdmFyIHBhcnRzPXpEYXRhLmZyb21GaWxlLnNwbGl0KCItIik7CiAgICB2YXIgbGFiZWw9ekRhdGEuZnJvbUZpbGU7CiAgICBpZiAocGFydHMubGVuZ3RoID49MykgewogICAgICAgIGxhYmVsPXBhcnRzWzNdOwogICAgICAgIGZvciAodmFyIHA9NDsgcDxwYXJ0cy5sZW5ndGg7IHArKykge2xhYmVsKz0iLSIrcGFydHNbcF07fQogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsKICAgIHpEYXRhLmxhYmVsPWxhYmVsOwoJcmV0dXJuIGFyck9mUGFpcnM7Cn07Ci8vYXJyT2ZQYWlycz16RGF0YS5jbGllbnRVcGxvYWQoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDcwNiB6RGF0YS5jaGFubmVsIGZvciB1cGxvYWQgYW5kIGltcG9ydAoKLy9hbGVydCgiekRhdGEuY2xpZW50RmlsZSIpOwp6RGF0YS5jbGllbnRGaWxlPWZ1bmN0aW9uKGRvYyxzdGFnZSkgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICB2YXIgbj1YKGRvYywiWF9aUEFQRVJfX1BhdGllbnRBY2NvdW50X19yLk5hbWUiKTsgLy9FUlMxOTA4MzAgIzYxOTI0IEFjY3QKICAgIGlmICghbikgbj1YKGRvYywiWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZSIpOwogICAgaWYgKCFuKSBuPVgoZG9jLCJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIikrIiAiK1goZG9jLCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKICAgIGRvYy5sYWJlbD1uKyIgLSAiK1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKyIgLSAiK01NZGRZWVlZOwogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICBpZiAoekRhdGEuc2ZJRCAgJiYgekRhdGEuc2ZJRC5pbmRleE9mKCI1MDAiKT09PTApIHsKCSAgICB6RGF0YS5wcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCB6RGF0YS5zZklEKTsgCgkgICAgbGFiZWwgPSAiUmVjZWl2ZWQgZnJvbSAiICsgekRhdGEucHJvdmlkZXI7CiAgICAgICAgaWYgKHpEYXRhLmZhY2lsaXR5KSB7CiAgICAgICAgICAgIHpEYXRhLmZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuRmFjaWxpdHlfX3IuTmFtZSIsIG51bGwsIHpEYXRhLnNmSUQpOwogICAgICAgICAgICBkb2MubGFiZWwrPSIgYXQgIit6RGF0YS5mYWNpbGl0eTsKICAgICAgICB9Cgl9Cgl2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7CiAgICB6RGF0YS5sYWJlbD1kb2MubGFiZWw7IC8vRVJTMTkwODMwICM2MTkyNAoJdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmNsaWVudFZhbHVlPWZ1bmN0aW9uKGRvYyx2YWwpIHsvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiAKICAgIHZhbD12YWwucmVwbGFjZSgieyFmb3JtYXROb3d9Iix6RGF0YS5mb3JtYXROb3cpOwogICAgcmV0dXJuIHZhbDsKfQoKekRhdGEuY2xpZW50RmllbGRzPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGpkLHpkKSB7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIGluIHNldHRpbmcgdG8gY29uZmlndXJlIG5ldyByZWNvcmQKICAgIGlmICghemQpIHpkPXpEYXRhOwoJaWYgKGpkICYmIGpkLmluZGV4T2YoInsiKT09PTApIHsgCgkgICAgLy97IlR5cGUiOiJFbGlnaWJpbGl0eSIsIk93bmVySWQiOiIwMEdjMDAwMDAwM3ZncXciLCJSZWNvcmRUeXBlSWQiOiIwMTI2QTAwMDAwMEpFS2VRQU8ifTsKCSAgICAvL05PVCBBIEdPT0QgSURFQSBqZD1qZC5yZXBsYWNlQWxsKCJcIiIsIiciKTsgLy9FUlMxOTA4MTEgIzYxNTcwIEhBQ0s/CgkgICAgdHJ5IHsKICAgIAkgICAgdmFyIGpkYXRhPUpTT04ucGFyc2UoamQpOyAvL0VSUzE5MDgwNSBiZXR0ZXIgdGhhbiBldmFsCiAgICAJICAgIGZvciAodmFyIG4gaW4gamRhdGEpIHsKICAgIAkgICAgICAgIHZhciB2MD1qZGF0YVtuXTsgCiAgICAJICAgICAgICB2YXIgdj16RGF0YS5jbGllbnRWYWx1ZShkb2MsdjApOyAvL0VSUzE5MDgxMSAsdiBub3cgLHYwCiAgICAJICAgICAgICAvL2FsZXJ0KCJFUlMxOTA4MDMuOTcgIituKyI9Iit2MCsiPSIrdik7IAogICAgCSAgICAgICAgYXJyT2ZQYWlycy5wdXNoKG4sdik7IC8vRVJTMTkwODExIGFkZGVkIC5wdXNoCiAgICAJICAgIH0KCSAgICB9IGNhdGNoIChlKSB7CgkgICAgICAgIGFsZXJ0KCJKU09OIG5vdCBpbiAiK2pkKyIgRXhjZXB0aW9uOiAiK2UpOyAvL0VSUzE5MDgxMSBhZGRlZCBlCgkgICAgfQoJfQoJcmV0dXJuIGFyck9mUGFpcnM7Cn0KCgp6RGF0YS5jbGllbnRDYXNlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghbGFiZWwpIHsgbGFiZWw9IkluZGV4ZWQtIiArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KCS8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwoJaWYgKHpkLmNvbnRhY3RJZCkgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCB6ZC5jb250YWN0SWQpOwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCBYKGRvYywiWF9TdGF0dXMiKSk7CglhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiTmV3ICIremQuY2xhc3NpZmljYXRpb24pOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglpZiAoMT09MSkgeyAvL0VSUzE3MDUyMyAjMzcxNjIgYWZ0ZXIgZHJ5cnVuCgkJLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCgkJaWYgKHpkLnByaW9yaXR5ICE9ICJOb3JtYWwiKSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5Iix6ZC5wcmlvcml0eSk7ICAvL0VSUzE3MDUyNCAjMzcxNjIgcHJpb3JpdHkgb24gQ2FzZQoJCWVsc2UgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOwoJCWFyck9mUGFpcnMucHVzaCgiT3JpZ2luIix6ZC5jaGFubmVsKTsKCX0KICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19DYXNlRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiAKCXZhciBjYXNlSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ2FzZSIsIGxhYmVsLCBhcnJPZlBhaXJzKTsKCXJldHVybiBjYXNlSWQ7Cn07Cgp6RGF0YS5jbGllbnRQYXRpZW50PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCiAgICB2YXIgcnQ9WEN1c3RvbVNldHRpbmcoZG9jLCJQYXRpZW50UmVjb3JkVHlwZV9fYyIpOyAvL1RPRE8gaW50byBNUCBFUlMxOTA4MDIgbGlrZSAwMTI2QTAwMDAwMEpFOHlRQUcgb3IgZW1wdHkgdG8gdXNlIGRlZmF1bHQKICAgIGlmIChydCkgeyBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHJ0KTsgfSAvL0VSUzE5MDgwMwogICAgLy9UT0RPIENvbnRhY3Qgb3IgQWNjb3VudCBFUlMxOTA2MjQgRE9ORSEhIEVSUzE5MDgwMgogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX1BhdGllbnRGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIAoJdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgbGFiZWwsIGFyck9mUGFpcnMpOyAvL0VSUzE5MDgwMyAjNjEyNzIKCQoJLy9FUlMxOTA4MDMgc3BlY2lmaWMgdG8gY2xpZW50IGRhdGEgZW50cnkKCXZhciBkcSA9IHpEYXRhLmRxOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BlcnNvbl9BY2NvdW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHNmSWQgKyBkcSArICIpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKCXJldHVybiBzZklkOwp9OwoKekRhdGEuY2xpZW50QWNjb3VudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0VSUzE5MDgxNCAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgoJdmFyIGFjY291bnRJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJBY2NvdW50IiwgbGFiZWwsIGFyck9mUGFpcnMpOwoJcmV0dXJuIGFjY291bnRJZDsKfTsKCnpEYXRhLmNsaWVudFJlY29yZD1mdW5jdGlvbihkb2Msc2ZUeXBlLGFyck9mUGFpcnMsbGFiZWwsemQpIHsgLy9FUlMxOTA2MjAgY2xpZW50UmVjb3JkIGdlbmVyaWMKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KCS8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwoJdmFyIHpwPSIiOwoJaWYgKCIsQ2FzZSxDb250YWN0LEFjY291bnQsTGVhZCxPcHBvcnR1bml0eSxaUEFQRVJfX3pTdGFja19fYywiLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiLCIrc2ZUeXBlLnRvTG93ZXJDYXNlKCkrIiwiKT4tMSkgenA9ekRhdGEuenA7CgkvL29ubHkgZG8gdGhpcyBpZiB0aGUgZmllbGRzIGV4aXN0CglhcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgImRvYy5kYklELlJlYyIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgkKCS8vVE9ETyBwdXQgY2xpZW50IHNwZWNpZmljIGRhdGEgdXBkYXRlcyBoZXJlCgoJdmFyIG5ld0lkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgc2ZUeXBlLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gbmV3SWQ7Cn07Cgp6RGF0YS5jbGllbnRDb21wbGV0ZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyx6ZCkge3JldHVybiBhcnJPZlBhaXJzO307IC8vRVJTMTkwNjI1CnpEYXRhLmNsaWVudERlbGl2ZXJ5PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzKSB7cmV0dXJuIGFyck9mUGFpcnM7fTsgLy9FUlMxOTA3MTEgIzYwOTAwIFBBT1MKCnpEYXRhLmNsaWVudENoaWxkU3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMscGFyZW50SWQpIHsgLy9FUlMxOTA4MTAgIzYxNTcwIGJlIHN1cmUgdG8gY2FsbCBvbiBuZXcgY2hpbGQgZG9jCiAgICB2YXIgcGFpcnM9YXJyT2ZQYWlyczsKICAgIC8vbm8gbWVtb3J5IG9mIHN0YWNrIGNyZWF0aW9uIHZhciBwYWlycz16RGF0YS5zdGFja1BhaXJzOwogICAgekRhdGEucmV2aWV3ZWRTdGF0dXM9IlNwbGl0IjsKICAgIC8vRVJTMTkwODEwIFRPRE8/IHBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIkNoaWxkIFN0YWNrIik7CgogICAgcGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLHBhaXJzKTsKICAgIGlmIChYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpIHsgLy9FUlMxOTA4MTEgbm90IGluIGFsbCBNUHMKICAgICAgICBwYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLHBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196Q2hpbGRGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIGNoaWxkIHJlY29yZCB0eXBlIGlkCiAgICB9CiAgICBwYWlycy5wdXNoKCJaUEFQRVJfX1BhcmVudF9fYyIsIHBhcmVudElkKTsKICAgIGFsZXJ0KCJFUlMxOTA4MTEuMTkxIFpQQVBFUl9fUGFyZW50X19jIisgcGFyZW50SWQpOwogICAgdmFyIGNoaWxkU3RhY2tTRklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIlpQQVBFUl9felN0YWNrX19jIiwgInpTdGFjayBzcGxpdCBvbiAiICsgekRhdGEuZm9ybWF0Tm93LCBwYWlycykgKyAiIjsKICAgIHJldHVybiBjaGlsZFN0YWNrU0ZJZDsKfQoKYWxlcnQoImVuZCBjbGllbnQgbGlicmFyeSIpOyAvL0VSUzE5MDYxNSAjNTg5MjEK"},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client library"); //ERS190803 #52661 from OccFit

zData.maxChannels=3; //ERS190731 #61272 zippi is strongly typed
zData.makeStack=true; //ERS190814 #61511

zData.watermark=""+XCustomSetting(doc,"watermark__c"); //ERS190618 best practice
//alert("ERS190411 wm="+zData.watermark+" ZPAPER__server__c="+XCustomSetting(doc,"ZPAPER__server__c"));
zData.uploadDir = ""+XCustomSetting(doc,"uploadDir__c"); //"alkermesRoot";
zData.patEnrollQueueId = ""+XCustomSetting(doc,"patientQueueId__c"); //'00G4C000000LkmZ'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
zData.recTypeRequest = ""+XCustomSetting(doc,"recTypeRequest__c"); //'0124C000000Cj5Y'; //ID of the Case Record Type Request_PS_MVN
//TODO zData.keywordMap["ENRL"] ="ENRL:Enrollment Form";  //TODO get from zStack picklists
//TODO zData.keywordMap["FAC"] ="FAC:Facility Enrollment Form";
zData.PROGRAM_ZCARTA=zData.channel["zCarta"];
zData.PROGRAM_ZCHARTA=zData.channel["zCharta"];
zData.PROGRAM_ZPAPYRUS=zData.channel["zPapyrus"];

zData.clientImportSOQL=function(doc,fromFile) { //ERS190706 customize imports used by Create Stack
    zData.importer=XCustomSetting(doc,zData.zp+"Importer__c").trim();
    var sfId="";
    var parts=fromFile.split("_");
    //sfId = getSFRecordID(doc, "Account", { "Fax" : parts[3] } );
    zData.makeStack=true; //do all the work there by default
    return sfId;
};

//alert("zData.clientStack");
zData.clientStack=function(doc,arrOfPairs) { //zData or this?
    var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS190805 
	if (zData.received) arrOfPairs.push("zStack_Received__c", zData.formatNow); //ERS190617 TODO save way to do this
	if (zData.ownerId) arrOfPairs.push("OwnerId",zData.ownerId);  // zCharta Queue "00G36000002CyTK"
	if (zData.callerId) arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
	if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
	
    arrOfPairs.push("ZPAPER__faxType__c", zData.docType);
    arrOfPairs.push("ZPAPER__Classification__c", zData.classification);
    var pageRange = X(doc,"X_idxPages");
    var pageCount = zData.countPages(doc, pageRange);
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 
    //ERS190810 TODO? arrOfPairs.push("ZSTACK__Received__c", zData.formatNow);
    arrOfPairs.push("ZPAPER__Pages__c", pageCount);  //ERS190829 review countPages for emails and faxes

    if (zData.classification === zData.PROGRAM_ZCHARTA) {
    	arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB190426 changed to classification from program
    } else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {
    	arrOfPairs.push(zp+"Priority__c", "High"); 
    } else if (zData.classification === zData.PROGRAM_ZCARTA) {
    	arrOfPairs.push(zp+"Priority__c", "Critical");	
    } else {
    	arrOfPairs.push(zp+"Priority__c", "Normal");
    }
    
    arrOfPairs.push(zp+"sentFaxTo__c", ("Community" === zData.channel ? zData.channel : doc.deliveredTo)); //JPB190529 added so Community shows up in Master Intake List
    arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
    if (zData.reviewedStatus) {arrOfPairs.push(zp+"Stage__c", zData.reviewedStatus); } 
    else { arrOfPairs.push(zp+"Stage__c", "Received"); }
    zData.stackPairs=arrOfPairs; //ERS190810 #61570 for child stack later
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__zStackFields__c")); //ERS190803 #52661 using JSON 
	return arrOfPairs;
};

zData.clientUpload=function(doc,arrOfPairs,channel) { //zData or this?
    var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS190805
    if (!channel) channel="UPLOAD"; //IMPORT is the other one
    var parts=zData.fromFile.split("-");
    var label=zData.fromFile;
    if (parts.length >=3) {
        label=parts[3];
        for (var p=4; p<parts.length; p++) {label+="-"+parts[p];}
    }
    arrOfPairs.push("db-label", label);
    zData.label=label;
	return arrOfPairs;
};
//arrOfPairs=zData.clientUpload(doc,arrOfPairs); //ERS190706 zData.channel for upload and import

//alert("zData.clientFile");
zData.clientFile=function(doc,stage) { //ERS170829 #41298 returns a label to be used in any attaches and fixes the doc
    //Document attachment label should be "Patient Name - Doc Type - Date".  Confirmed for zPaper File and SFDC Attachment
    var MMddYYYY = zData.formatTodayMMddYYYY();
    var n=X(doc,"X_ZPAPER__PatientAccount__r.Name"); //ERS190830 #61924 Acct
    if (!n) n=X(doc,"X_ZPAPER__Patient__r.Name");
    if (!n) n=X(doc,"X_ZPAPER__FirstName__c")+" "+X(doc,"X_ZPAPER__LastName__c");
    doc.label=n+" - "+X(doc,"X_ZPAPER__faxType__c")+" - "+MMddYYYY;
    alert("ERS170829 dbID="+doc.dbID+" label="+doc.label);
    if (zData.sfID  && zData.sfID.indexOf("500")===0) {
	    zData.provider = getSFField(doc, "Case", "Account.Name", null, zData.sfID); 
	    label = "Received from " + zData.provider;
        if (zData.facility) {
            zData.facility = getSFField(doc, "Case", "Account.Facility__r.Name", null, zData.sfID);
            doc.label+=" at "+zData.facility;
        }
	}
	var arrOfPairs = [];
    arrOfPairs.push("db-label", doc.label);
    zData.label=doc.label; //ERS190830 #61924
	updateDB(doc,arrOfPairs);
    return doc.label;
};

zData.clientValue=function(doc,val) {//ERS190803 #52661 using JSON 
    val=val.replace("{!formatNow}",zData.formatNow);
    return val;
}

zData.clientFields=function(doc,arrOfPairs,jd,zd) { //ERS190803 #52661 using JSON in setting to configure new record
    if (!zd) zd=zData;
	if (jd && jd.indexOf("{")===0) { 
	    //{"Type":"Eligibility","OwnerId":"00Gc0000003vgqw","RecordTypeId":"0126A000000JEKeQAO"};
	    //NOT A GOOD IDEA jd=jd.replaceAll("\"","'"); //ERS190811 #61570 HACK?
	    try {
    	    var jdata=JSON.parse(jd); //ERS190805 better than eval
    	    for (var n in jdata) {
    	        var v0=jdata[n]; 
    	        var v=zData.clientValue(doc,v0); //ERS190811 ,v now ,v0
    	        //alert("ERS190803.97 "+n+"="+v0+"="+v); 
    	        arrOfPairs.push(n,v); //ERS190811 added .push
    	    }
	    } catch (e) {
	        alert("JSON not in "+jd+" Exception: "+e); //ERS190811 added e
	    }
	}
	return arrOfPairs;
}


zData.clientCase=function(doc,arrOfPairs,label,zd) {
	if (!zd) zd=zData;
	if (!label) { label="Indexed-" + "-" + zd.triageType + "-" + zd.stackId;}
	//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
	if (zd.contactId) arrOfPairs.push("ContactId", zd.contactId);
	arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields
	arrOfPairs.push("Status", X(doc,"X_Status"));
	arrOfPairs.push("Type", "New "+zd.classification); //JPB 170512 added these workflow fields
	if (1==1) { //ERS170523 #37162 after dryrun
		//arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
		if (zd.priority != "Normal") arrOfPairs.push("Priority",zd.priority);  //ERS170524 #37162 priority on Case
		else arrOfPairs.push("Priority","Medium");
		arrOfPairs.push("Origin",zd.channel);
	}
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__CaseFields__c")); //ERS190803 #52661 using JSON 
	var caseId = createAndAttach(doc, "Case", label, arrOfPairs);
	return caseId;
};

zData.clientPatient=function(doc,arrOfPairs,label,zd) {
	if (!zd) zd=zData;
	if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
	//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
	arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields

    var rt=XCustomSetting(doc,"PatientRecordType__c"); //TODO into MP ERS190802 like 0126A000000JE8yQAG or empty to use default
    if (rt) { arrOfPairs.push("RecordTypeId", rt); } //ERS190803
    //TODO Contact or Account ERS190624 DONE!! ERS190802
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__PatientFields__c")); //ERS190803 #52661 using JSON 
	var sfId = createAndAttach(doc, zData.patientType, label, arrOfPairs); //ERS190803 #61272
	
	//ERS190803 specific to client data entry
	var dq = zData.dq;
	addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c" + dq + ").val(" + dq + sfId + dq + "); ");
    addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c_Name" + dq + ").val(" + dq + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c + dq + "); ");
	return sfId;
};

zData.clientAccount=function(doc,arrOfPairs,label,zd) {
	if (!zd) zd=zData;
	if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
	//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
	arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields

	var accountId = createAndAttach(doc, "Account", label, arrOfPairs);
	return accountId;
};

zData.clientRecord=function(doc,sfType,arrOfPairs,label,zd) { //ERS190620 clientRecord generic
	if (!zd) zd=zData;
	if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
	//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
	var zp="";
	if (",Case,Contact,Account,Lead,Opportunity,ZPAPER__zStack__c,".toLowerCase().indexOf(","+sfType.toLowerCase()+",")>-1) zp=zData.zp;
	//only do this if the fields exist
	arrOfPairs.push(zp+"newFax__c", "true"); //JPB 170512 added these workflow fields
	arrOfPairs.push(zp+"latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
	arrOfPairs.push(zp+"receivedId__c", "doc.dbID.Rec"); //JPB 170512 added these workflow fields
	
	//TODO put client specific data updates here

	var newId = createAndAttach(doc, sfType, label, arrOfPairs);
	return newId;
};

zData.clientComplete=function(doc,arrOfPairs,zd) {return arrOfPairs;}; //ERS190625
zData.clientDelivery=function(doc,arrOfPairs) {return arrOfPairs;}; //ERS190711 #60900 PAOS

zData.clientChildStack=function(doc,arrOfPairs,parentId) { //ERS190810 #61570 be sure to call on new child doc
    var pairs=arrOfPairs;
    //no memory of stack creation var pairs=zData.stackPairs;
    zData.reviewedStatus="Split";
    //ERS190810 TODO? pairs.push("ZPAPER__Status__c", "Child Stack");

    pairs=zData.clientStack(doc,pairs);
    if (XCustomSetting(doc,"ZPAPER__zChildFields__c")) { //ERS190811 not in all MPs
        pairs=zData.clientFields(doc,pairs,XCustomSetting(doc,"ZPAPER__zChildFields__c")); //ERS190803 #52661 using JSON child record type id
    }
    pairs.push("ZPAPER__Parent__c", parentId);
    alert("ERS190811.191 ZPAPER__Parent__c"+ parentId);
    var childStackSFId = createAndAttach(doc, "ZPAPER__zStack__c", "zStack split on " + zData.formatNow, pairs) + "";
    return childStackSFId;
}

alert("end client library"); //ERS190615 #58921

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
