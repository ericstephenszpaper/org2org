<!--
// Name: Client Library
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: PV200413 adding function
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-04-13 21:31:38","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAovL0VSUzIwMDQxMiBtYXNzaXZlIGNvZGUgcmV2aWV3IGFuZCBpbnRlcm1peCBmb3IgekNoYW5uZWxzICM3MDk1MwoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCnpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL0VSUzE5MDgxNCAjNjE1MTEKCnpEYXRhLndhdGVybWFyaz0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIndhdGVybWFya19fYyIpOyAvL0VSUzE5MDYxOCBiZXN0IHByYWN0aWNlCi8vYWxlcnQoIkVSUzE5MDQxMSB3bT0iK3pEYXRhLndhdGVybWFyaysiIFpQQVBFUl9fc2VydmVyX19jPSIrWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3NlcnZlcl9fYyIpKTsKekRhdGEudXBsb2FkRGlyID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ1cGxvYWREaXJfX2MiKTsgLy8iYWxrZXJtZXNSb290IjsKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCnpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCgp2YXIgY3M9WERlcGxveW1lbnRJbmZvKGRvYywgIkJ1c2luZXNzX1Byb2Nlc3NfX2MiKTsgLy9FUlMyMDAyMjIgbmVlZCBib3RoIGRlcGxveW1lbnQgaW5mbyBhbmQgY3MKLy9hbGVydCgiY3M9Iitjcyk7CmlmIChjcykgewogICAgaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpPi0xKSBjcz1YKGRvYywiekN1c3RvbVNldHRpbmdzIixjcyk7CiAgICBhbGVydCgiRVJTMjAwMjI1IEVWQUwgb24gIitjcyk7CiAgICBpZiAoY3MgIT09ICIiKSBldmFsKCIiK2NzKTsgLy9FUlMyMDAyMjIgVE9ETyBKU09OLnBhcnNlKCkgLy9FUlMyMDAyMjUgYmVlZHMgdG8gYmUgZXZhbCBidXQgYWxzbyBuZWVkcyB0byB3b3JrISEhCiAgICBhbGVydCgiTm8gdHJ5IGp1c3QgZG8hIik7Cn0KCnpEYXRhLmNsaWVudEltcG9ydFNPUUw9ZnVuY3Rpb24oZG9jLGZyb21GaWxlKSB7IC8vRVJTMTkwNzA2IGN1c3RvbWl6ZSBpbXBvcnRzIHVzZWQgYnkgQ3JlYXRlIFN0YWNrCiAgICB6RGF0YS5pbXBvcnRlcj1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIkltcG9ydGVyX19jIikudHJpbSgpOwogICAgdmFyIHNmSWQ9IiI7CiAgICB2YXIgcGFydHM9ZnJvbUZpbGUuc3BsaXQoIl8iKTsKICAgIC8vc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQWNjb3VudCIsIHsgIkZheCIgOiBwYXJ0c1szXSB9ICk7CiAgICB6RGF0YS5tYWtlU3RhY2s9dHJ1ZTsgLy9kbyBhbGwgdGhlIHdvcmsgdGhlcmUgYnkgZGVmYXVsdAogICAgcmV0dXJuIHNmSWQ7Cn07CgovL2FsZXJ0KCJ6RGF0YS5jbGllbnRTdGFjayIpOwp6RGF0YS5jbGllbnRTdGFjaz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykgeyAvL3pEYXRhIG9yIHRoaXM/CiAgICB2YXIgenA9ekRhdGEuenA7IGlmICghenApIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwODA1CiAgICBpZiAoekRhdGEucmVjZWl2ZWQpIGFyck9mUGFpcnMucHVzaCgielN0YWNrX1JlY2VpdmVkX19jIiwgekRhdGEuZm9ybWF0Tm93KTsgLy9FUlMxOTA2MTcgVE9ETyBzYXZlIHdheSB0byBkbyB0aGlzCiAgICBpZiAoekRhdGEub3duZXJJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5vd25lcklkKTsgIC8vIHpDaGFydGEgUXVldWUgIjAwRzM2MDAwMDAyQ3lUSyIKICAgIGlmICh6RGF0YS5jYWxsZXJJZCkgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAogICAgaWYgKHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEucGF0RW5yb2xsUXVldWVJZCk7CgogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCB6RGF0YS5kb2NUeXBlKTsgLy8gUFYxOTEwMjkgY29tbWVudGVkCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CiAgICB2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKICAgIGlmKHBhZ2VSYW5nZSl7IC8vUHYxOTEwMjggdG8gdXBkYXRlIG51bWJlciBvZiBwYWdlcyBvbmx5IGlmIHdlIGFyZSBkb2luZyBpbmRleCBvbiBzdGFjayByZWNvcmQKICAgICAgICB2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MsIHBhZ2VSYW5nZSk7ICAKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGFnZXNfX2MiLCBwYWdlQ291bnQpOwogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0CiAgICAvL0VSUzE5MDgxMCBUT0RPPyBhcnJPZlBhaXJzLnB1c2goIlpTVEFDS19fUmVjZWl2ZWRfX2MiLCB6RGF0YS5mb3JtYXROb3cpOwogICAgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDSEFSVEEpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IC8vSlBCMTkwNDI2IGNoYW5nZWQgdG8gY2xhc3NpZmljYXRpb24gZnJvbSBwcm9ncmFtLy9QVjE5MTAwNCB1cGRhdGVkIGZyb20gVXJnZW50CiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsKICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7CiAgICB9ZWxzZSBpZiAoYXJyT2ZQYWlycy5pbmRleE9mKHpwKyJQcmlvcml0eV9fYyIpPDApIHsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVuYXNzaWduZWQiKTsKICAgICB9CiAgIAogICAKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgKCJDb21tdW5pdHkiID09PSB6RGF0YS5jaGFubmVsID8gekRhdGEuY2hhbm5lbCA6IGRvYy5kZWxpdmVyZWRUbykpOyAvL0pQQjE5MDUyOSBhZGRlZCBzbyBDb21tdW5pdHkgc2hvd3MgdXAgaW4gTWFzdGVyIEludGFrZSBMaXN0CiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykge2Fyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7IH0KICAgIGVsc2UgeyBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IH0KICAgIHpEYXRhLnN0YWNrUGFpcnM9YXJyT2ZQYWlyczsgLy9FUlMxOTA4MTAgIzYxNTcwIGZvciBjaGlsZCBzdGFjayBsYXRlcgogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pTdGFja0ZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04KcmV0dXJuIGFyck9mUGFpcnM7Cn07CgovL2FsZXJ0KCJ6RGF0YS5jbGllbnRGaWxlIik7CnpEYXRhLmNsaWVudEZpbGU9ZnVuY3Rpb24oZG9jLHN0YWdlKSB7IC8vRVJTMTcwODI5ICM0MTI5OCByZXR1cm5zIGEgbGFiZWwgdG8gYmUgdXNlZCBpbiBhbnkgYXR0YWNoZXMgYW5kIGZpeGVzIHRoZSBkb2MKICAgIC8vRG9jdW1lbnQgYXR0YWNobWVudCBsYWJlbCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIuICBDb25maXJtZWQgZm9yIHpQYXBlciBGaWxlIGFuZCBTRkRDIEF0dGFjaG1lbnQKICAgIHZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVlOZXcoKTsKICAgIGRvYy5sYWJlbD0gekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYysgIiAiICt6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyIgLSAiK1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKyIgLSAiK01NZGRZWVlZOyAvL1BWMTkxMDA4IHRvIHVwZGF0ZSBmb3IgZXhpc3RpbmcgcGF0aWVudCBvbiBjaGlsZCBzdGFjawogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICBpZiAoekRhdGEuc2ZJRCAgJiYgekRhdGEuc2ZJRC5pbmRleE9mKCI1MDAiKT09PTApIHsKICAgekRhdGEucHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgekRhdGEuc2ZJRCk7CiAgIGxhYmVsID0gIlJlY2VpdmVkIGZyb20gIiArIHpEYXRhLnByb3ZpZGVyOwogICAgICAgIC8vaWYgKHpEYXRhLmZhY2lsaXR5KSB7CiAgICAgICAgICAgIC8vekRhdGEuZmFjaWxpdHkgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5GYWNpbGl0eV9fci5OYW1lIiwgbnVsbCwgekRhdGEuc2ZJRCk7CiAgICAgICAgICAgLy8gZG9jLmxhYmVsKz0iIGF0ICIrekRhdGEuZmFjaWxpdHk7CiAgICAgICAgLy99Cn0KCnZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Ci8vUFYyMDA0MTMgYWRkaW5nIGZ1bmN0aW9uCnpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVlOZXcgPSBmdW5jdGlvbihkb2MpIHsgLy9NU0gxNzA4MzEgZXh0cmFjdCBkYXRlIGZvcm1hdCBmcm9tIHpEYXRhLm5hbWVGaWxlIAp2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwp2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKLy9NU0gxNzA5MDYgcGFkIGRheSB3aXRoIHplcm8KdmFyIGN1ckRheSA9IHRvZGF5LmdldERhdGUoKTsKLy9NU0gxNzA5MDYgdmFyIE1NZGRZWVlZID0gKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrIiIrdG9kYXkuZ2V0RGF0ZSgpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwp2YXIgTU1kZFlZWVkgPSAodG9kYXkuZ2V0RnVsbFllYXIoKSsgIi0iKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiLSIgOiAiMCIrY3VyTW9udGgpKygiIisoY3VyRGF5ID4gOSA/IGN1ckRheSsiIiA6ICIwIitjdXJEYXkpKSk7Ci8vYWxlcnQoIk1NZGRZWVlZID09ICIgKyBNTWRkWVlZWSk7CnJldHVybiBNTWRkWVlZWTsKfTsKekRhdGEuY2xpZW50VmFsdWU9ZnVuY3Rpb24oZG9jLHZhbCkgey8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OCiAgICB2YWw9dmFsLnJlcGxhY2UoInshZm9ybWF0Tm93fSIsekRhdGEuZm9ybWF0Tm93KTsKICAgIHJldHVybiB2YWw7Cn0KCnpEYXRhLmNsaWVudEZpZWxkcz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxqZCx6ZCkgeyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBpbiBzZXR0aW5nIHRvIGNvbmZpZ3VyZSBuZXcgcmVjb3JkCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKICAgIGlmIChqZCAmJiBqZC5pbmRleE9mKCJ7Iik9PT0wKSB7CiAgICAgICAvL3siVHlwZSI6IkVsaWdpYmlsaXR5IiwiT3duZXJJZCI6IjAwR2MwMDAwMDAzdmdxdyIsIlJlY29yZFR5cGVJZCI6IjAxMjZBMDAwMDAwSkVLZVFBTyJ9OwogICAgICAgLy9OT1QgQSBHT09EIElERUEgamQ9amQucmVwbGFjZUFsbCgiXCIiLCInIik7IC8vRVJTMTkwODExICM2MTU3MCBIQUNLPwogICAgICAgdHJ5IHsKICAgICAgICAgICB2YXIgamRhdGE9SlNPTi5wYXJzZShqZCk7IC8vRVJTMTkwODA1IGJldHRlciB0aGFuIGV2YWwKICAgICAgICAgICBmb3IgKHZhciBuIGluIGpkYXRhKSB7CiAgICAgICAgICAgICAgIHZhciB2MD1qZGF0YVtuXTsKICAgICAgICAgICAgICAgdmFyIHY9ekRhdGEuY2xpZW50VmFsdWUoZG9jLHYwKTsgLy9FUlMxOTA4MTEgLHYgbm93ICx2MAogICAgICAgICAgICAgICAvL2FsZXJ0KCJFUlMxOTA4MDMuOTcgIituKyI9Iit2MCsiPSIrdik7CiAgICAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaChuLHYpOyAvL0VSUzE5MDgxMSBhZGRlZCAucHVzaAogICAgICAgICAgIH0KICAgICAgIH0gY2F0Y2ggKGUpIHsKICAgICAgICAgICBhbGVydCgiSlNPTiBub3QgaW4gIitqZCsiIEV4Y2VwdGlvbjogIitlKTsgLy9FUlMxOTA4MTEgYWRkZWQgZQogICAgICAgfQogICAgfQogICAgYWxlcnQoIkBAQEAgUHJhdGh5dXNoYSBqZCBAQEBAICIramQpOwogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn0KCgp6RGF0YS5jbGllbnRDYXNlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKICAgIGlmICghemQudHJpYWdlVHlwZSAmJiBYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSkgemQudHJpYWdlVHlwZT1YKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsgLy9FUlMyMDAzMDgKICAgIGlmICghbGFiZWwpIHsgbGFiZWw9IkluZGV4ZWQtIiArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KICAgIC8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwogICAgaWYgKHpkLmNvbnRhY3RJZCkgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCB6ZC5jb250YWN0SWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwogICAgYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCBYKGRvYywiWF9TdGF0dXMiKSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiTmV3ICIremQuY2xhc3NpZmljYXRpb24pOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCiAgICBpZiAoMT09MSkgeyAvL0VSUzE3MDUyMyAjMzcxNjIgYWZ0ZXIgZHJ5cnVuCiAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCiAgICAgICAgaWYgKHpkLnByaW9yaXR5ICE9ICJOb3JtYWwiKSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5Iix6ZC5wcmlvcml0eSk7ICAvL0VSUzE3MDUyNCAjMzcxNjIgcHJpb3JpdHkgb24gQ2FzZQogICAgICAgIGVsc2UgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiT3JpZ2luIix6ZC5jaGFubmVsKTsKICAgIH0KICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19DYXNlRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgogICAgYWxlcnQoIkVSUzIwMDMwOC4xNDMgbmV3IENhc2UgcHJvdmlkZXJJZD0iK3pkLnByb3ZpZGVySWQrIiBwYXRpZW50SWQ9Iit6ZC5wYXRpZW50SWQpOwogICAgaWYgKHpkLnByb3ZpZGVySWQgJiYgemQucHJvdmlkZXJJZC5pbmRleE9mKCIwMDEiKT09MCkgeyBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIHpkLnByb3ZpZGVySWQpOyB9IC8vRVJTMjAwMzA4CiAgICBpZiAoemQucHJvdmlkZXJJZCAmJiB6ZC5wcm92aWRlcklkLmluZGV4T2YoIjAwMyIpPT0wKSB7IGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgemQucHJvdmlkZXJJZCk7IH0gLy9FUlMyMDAzMDgKICAgIGlmICh6ZC5wYXRpZW50SWQgJiYgemQucGF0aWVudElkLmluZGV4T2YoIjAwMSIpPT0wKSB7IGFyck9mUGFpcnMucHVzaCgiQWNjb3VudElkIiwgemQucGF0aWVudElkKTsgfSAvL0VSUzIwMDMwOAogICAgaWYgKHpkLnBhdGllbnRJZCAmJiB6ZC5wYXRpZW50SWQuaW5kZXhPZigiMDAzIik9PTApIHsgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCB6ZC5wYXRpZW50SWQpOyB9IC8vRVJTMjAwMzA4CiAgICBpZiAoemQuemNoYW5uZWwub3duZXIpIHsgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuemNoYW5uZWwub3duZXIpOyB9IC8vRVJTMjAwMzA4CiAgICB2YXIgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gY2FzZUlkOwp9OwoKekRhdGEuY2xpZW50UGF0aWVudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CiAgICBpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQogICAgLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0VSUzE5MDgxNCAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCiAgICAKICAgICAgICAvL3ZhciBydD1YQ3VzdG9tU2V0dGluZyhkb2MsIlBhdGllbnRSZWNvcmRUeXBlX19jIik7IC8vVE9ETyBpbnRvIE1QIEVSUzE5MDgwMiBsaWtlIDAxMjZBMDAwMDAwSkU4eVFBRyBvciBlbXB0eSB0byB1c2UgZGVmYXVsdAogICAgICAgIC8vaWYgKHJ0KSB7IGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgcnQpO30gLy9FUlMxOTA4MDMvL1BWMTkxMTExIGNvbW1lbnRlZAogICAgICAgIC8vVE9ETyBDb250YWN0IG9yIEFjY291bnQgRVJTMTkwNjI0IERPTkUhISBFUlMxOTA4MDIKICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50RmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgogICAgdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgbGFiZWwsIGFyck9mUGFpcnMpOyAvL0VSUzE5MDgwMyAjNjEyNzIKICAgIAogICAgLy9FUlMxOTA4MDMgc3BlY2lmaWMgdG8gY2xpZW50IGRhdGEgZW50cnkKICAgIHZhciBkcSA9IHpEYXRhLmRxOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BlcnNvbl9BY2NvdW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHNmSWQgKyBkcSArICIpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKICAgIHJldHVybiBzZklkOwp9OwoKekRhdGEuY2xpZW50QWNjb3VudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CiAgICBpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQogICAgLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0VSUzE5MDgxNCAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCiAgICAKICAgIHZhciBhY2NvdW50SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQWNjb3VudCIsIGxhYmVsLCBhcnJPZlBhaXJzKTsKICAgIHJldHVybiBhY2NvdW50SWQ7Cn07Cgp6RGF0YS5jbGllbnRSZWNvcmQ9ZnVuY3Rpb24oZG9jLHNmVHlwZSxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7IC8vRVJTMTkwNjIwIGNsaWVudFJlY29yZCBnZW5lcmljCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKICAgIGlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CiAgICAvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKICAgIHZhciB6cD0iIjsKICAgIGlmICgiLENhc2UsQ29udGFjdCxBY2NvdW50LExlYWQsT3Bwb3J0dW5pdHksWlBBUEVSX196U3RhY2tfX2MsIi50b0xvd2VyQ2FzZSgpLmluZGV4T2YoIiwiK3NmVHlwZS50b0xvd2VyQ2FzZSgpKyIsIik+LTEpIHpwPXpEYXRhLnpwOwogICAgLy9vbmx5IGRvIHRoaXMgaWYgdGhlIGZpZWxkcyBleGlzdAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCiAgICBhcnJPZlBhaXJzLnB1c2goenArImxhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKICAgIGFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsICJkb2MuZGJJRC5SZWMiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwogICAgCiAgICAvL1RPRE8gcHV0IGNsaWVudCBzcGVjaWZpYyBkYXRhIHVwZGF0ZXMgaGVyZQogICAgCiAgICB2YXIgbmV3SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCBzZlR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsKICAgIHJldHVybiBuZXdJZDsKfTsKCnpEYXRhLmNsaWVudFJlY29yZFR5cGU9ZnVuY3Rpb24oZG9jLHNmVHlwZSxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7IC8vRVJTMTkwNjIwIGNsaWVudFJlY29yZCBnZW5lcmljCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKICAgIGlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CiAgICAvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKICAgIHZhciB6cD0iIjsKICAgCiAgICB2YXIgbmV3SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCBzZlR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsKICAgIHJldHVybiBuZXdJZDsKfTsKICAgCnpEYXRhLmNsaWVudFJlY29yZFR5cGVOb0F0dGFjaD1mdW5jdGlvbihkb2Msc2ZUeXBlLGFyck9mUGFpcnMsbGFiZWwsemQpIHsgLy8gUFYxOTEyMDkgY2xpZW50UmVjb3JkIGdlbmVyaWMKICAgIGlmICghemQpIHpkPXpEYXRhOwogICAgaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KICAgIC8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwogICAgdmFyIHpwPSIiOwogICAgdmFyIG5ld0lkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCBzZlR5cGUsIG51bGwsIGFyck9mUGFpcnMpOyAgLy9DUk4xOTEyMTMgRG9uJ3Qgc2VuZCBpbiB0aGUgbmFtZSBwYXJhbWV0ZXIsIGl0IHNjcmV3cyB1cCByZWNvcmRzIHRoYXQgaGF2ZSBBdXRvIE51bWJlciBOYW1lIGZpZWxkcwogICAgLy92YXIgbmV3SWQgPSBjcmVhdGVTKGRvYywgc2ZUeXBlLCBsYWJlbCwgYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gbmV3SWQ7Cn07CgoKekRhdGEuY2xpZW50Q29tcGxldGU9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsemQpIHtyZXR1cm4gYXJyT2ZQYWlyczt9OyAvL0VSUzE5MDYyNQp6RGF0YS5jbGllbnREZWxpdmVyeT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykge3JldHVybiBhcnJPZlBhaXJzO307IC8vRVJTMTkwNzExICM2MDkwMCBQQU9TCgp6RGF0YS5jbGllbnRDaGlsZFN0YWNrPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHBhcmVudElkKSB7IC8vRVJTMTkwODEwICM2MTU3MCBiZSBzdXJlIHRvIGNhbGwgb24gbmV3IGNoaWxkIGRvYwogICAgdmFyIHBhaXJzPWFyck9mUGFpcnM7CiAgICAvL25vIG1lbW9yeSBvZiBzdGFjayBjcmVhdGlvbiB2YXIgcGFpcnM9ekRhdGEuc3RhY2tQYWlyczsKICAgIHpEYXRhLnJldmlld2VkU3RhdHVzPSJTcGxpdCI7CiAgICAvL0VSUzE5MDgxMCBUT0RPPyBwYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDaGlsZCBTdGFjayIpOwoKICAgIHBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxwYWlycyk7CiAgICBpZiAoWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pDaGlsZEZpZWxkc19fYyIpKSB7IC8vRVJTMTkwODExIG5vdCBpbiBhbGwgTVBzCiAgICAgICAgcGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxwYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBjaGlsZCByZWNvcmQgdHlwZSBpZAogICAgfQogICAgcGFpcnMucHVzaCgiWlBBUEVSX19QYXJlbnRfX2MiLCBwYXJlbnRJZCk7CiAgICBhbGVydCgiRVJTMTkwODExLjE5MSBaUEFQRVJfX1BhcmVudF9fYyIrIHBhcmVudElkKTsKICAgIHZhciBjaGlsZFN0YWNrU0ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJaUEFQRVJfX3pTdGFja19fYyIsICJ6U3RhY2sgc3BsaXQgb24gIiArIHpEYXRhLmZvcm1hdE5vdywgcGFpcnMpICsgIiI7CiAgICByZXR1cm4gY2hpbGRTdGFja1NGSWQ7Cn0KCnpEYXRhLmNsaWVudFN0YWNrQ29tcGxldGU9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsemQpIHsgLy9FUlMyMDAzMTQgIzcwMzM2CiAgICBpZiAoIXpkKSB6ZD16RGF0YTsgLy9FUlMyMDA0MDYgIzcxMTU2CiAgICBhcnJPZlBhaXJzLnB1c2goIlRpbWVfQ29tcGxldGVfRGF0ZV9fYyIsemQuZm9ybWF0Tm93KTsgLy9mb3IgZGFzaGJvYXJkCiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfTsgLy9FUlMxOTA2MjUKCmFsZXJ0KCJlbmQgY2xpZW50IGxpYnJhcnkiKTsgLy9FUlMxOTA2MTUgIzU4OTIxCg=="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client library"); //ERS190803 #52661 from OccFit
//ERS200412 massive code review and intermix for zChannels #70953

zData.maxChannels=3; //ERS190731 #61272 zippi is strongly typed
zData.makeStack=true; //ERS190814 #61511

zData.watermark=""+XCustomSetting(doc,"watermark__c"); //ERS190618 best practice
//alert("ERS190411 wm="+zData.watermark+" ZPAPER__server__c="+XCustomSetting(doc,"ZPAPER__server__c"));
zData.uploadDir = ""+XCustomSetting(doc,"uploadDir__c"); //"alkermesRoot";
zData.patEnrollQueueId = ""+XCustomSetting(doc,"patientQueueId__c"); //'00G4C000000LkmZ'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
zData.recTypeRequest = ""+XCustomSetting(doc,"recTypeRequest__c"); //'0124C000000Cj5Y'; //ID of the Case Record Type Request_PS_MVN

var cs=XDeploymentInfo(doc, "Business_Process__c"); //ERS200222 need both deployment info and cs
//alert("cs="+cs);
if (cs) {
    if (cs.indexOf("zCustomSettings")>-1) cs=X(doc,"zCustomSettings",cs);
    alert("ERS200225 EVAL on "+cs);
    if (cs !== "") eval(""+cs); //ERS200222 TODO JSON.parse() //ERS200225 beeds to be eval but also needs to work!!!
    alert("No try just do!");
}

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

    arrOfPairs.push("ZPAPER__faxType__c", zData.docType); // PV191029 commented
    arrOfPairs.push("ZPAPER__Classification__c", zData.classification);
    var pageRange = X(doc,"X_idxPages");
    if(pageRange){ //Pv191028 to update number of pages only if we are doing index on stack record
        var pageCount = zData.countPages(doc, pageRange);  
        arrOfPairs.push("ZPAPER__Pages__c", pageCount);
    }
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814
    //ERS190810 TODO? arrOfPairs.push("ZSTACK__Received__c", zData.formatNow);
    if (zData.classification === zData.PROGRAM_ZCHARTA) {
    arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB190426 changed to classification from program//PV191004 updated from Urgent
    } else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {
    arrOfPairs.push(zp+"Priority__c", "High");
    } else if (zData.classification === zData.PROGRAM_ZCARTA) {
    arrOfPairs.push(zp+"Priority__c", "Critical");
    }else if (arrOfPairs.indexOf(zp+"Priority__c")<0) {
        arrOfPairs.push(zp+"Priority__c", "Unassigned");
     }
   
   
    arrOfPairs.push(zp+"sentFaxTo__c", ("Community" === zData.channel ? zData.channel : doc.deliveredTo)); //JPB190529 added so Community shows up in Master Intake List
    arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
    if (zData.reviewedStatus) {arrOfPairs.push(zp+"Stage__c", zData.reviewedStatus); }
    else { arrOfPairs.push(zp+"Stage__c", "Received"); }
    zData.stackPairs=arrOfPairs; //ERS190810 #61570 for child stack later
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__zStackFields__c")); //ERS190803 #52661 using JSON
return arrOfPairs;
};

//alert("zData.clientFile");
zData.clientFile=function(doc,stage) { //ERS170829 #41298 returns a label to be used in any attaches and fixes the doc
    //Document attachment label should be "Patient Name - Doc Type - Date".  Confirmed for zPaper File and SFDC Attachment
    var MMddYYYY = zData.formatTodayMMddYYYYNew();
    doc.label= zData.X_ZPAPER__FirstName__c+ " " +zData.X_ZPAPER__LastName__c +" - "+X(doc,"X_ZPAPER__faxType__c")+" - "+MMddYYYY; //PV191008 to update for existing patient on child stack
    alert("ERS170829 dbID="+doc.dbID+" label="+doc.label);
    if (zData.sfID  && zData.sfID.indexOf("500")===0) {
   zData.provider = getSFField(doc, "Case", "Account.Name", null, zData.sfID);
   label = "Received from " + zData.provider;
        //if (zData.facility) {
            //zData.facility = getSFField(doc, "Case", "Account.Facility__r.Name", null, zData.sfID);
           // doc.label+=" at "+zData.facility;
        //}
}

var arrOfPairs = [];
    arrOfPairs.push("db-label", doc.label);
    updateDB(doc,arrOfPairs);
    return doc.label;
};
//PV200413 adding function
zData.formatTodayMMddYYYYNew = function(doc) { //MSH170831 extract date format from zData.nameFile 
var today = new Date();
var curMonth = today.getMonth() + 1;
//MSH170906 pad day with zero
var curDay = today.getDate();
//MSH170906 var MMddYYYY = (""+(curMonth > 9 ? curMonth+"" : "0"+curMonth)+""+today.getDate()+""+today.getFullYear());
var MMddYYYY = (today.getFullYear()+ "-"+(curMonth > 9 ? curMonth+"-" : "0"+curMonth)+(""+(curDay > 9 ? curDay+"" : "0"+curDay)));
//alert("MMddYYYY == " + MMddYYYY);
return MMddYYYY;
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
    alert("@@@@ Prathyusha jd @@@@ "+jd);
    return arrOfPairs;
}


zData.clientCase=function(doc,arrOfPairs,label,zd) {
    if (!zd) zd=zData;
    if (!zd.triageType && X(doc,"X_ZPAPER__faxType__c")) zd.triageType=X(doc,"X_ZPAPER__faxType__c"); //ERS200308
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
    alert("ERS200308.143 new Case providerId="+zd.providerId+" patientId="+zd.patientId);
    if (zd.providerId && zd.providerId.indexOf("001")==0) { arrOfPairs.push("AccountId", zd.providerId); } //ERS200308
    if (zd.providerId && zd.providerId.indexOf("003")==0) { arrOfPairs.push("ContactId", zd.providerId); } //ERS200308
    if (zd.patientId && zd.patientId.indexOf("001")==0) { arrOfPairs.push("AccountId", zd.patientId); } //ERS200308
    if (zd.patientId && zd.patientId.indexOf("003")==0) { arrOfPairs.push("ContactId", zd.patientId); } //ERS200308
    if (zd.zchannel.owner) { arrOfPairs.push("OwnerId", zData.zchannel.owner); } //ERS200308
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
    
        //var rt=XCustomSetting(doc,"PatientRecordType__c"); //TODO into MP ERS190802 like 0126A000000JE8yQAG or empty to use default
        //if (rt) { arrOfPairs.push("RecordTypeId", rt);} //ERS190803//PV191111 commented
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

zData.clientRecordType=function(doc,sfType,arrOfPairs,label,zd) { //ERS190620 clientRecord generic
    if (!zd) zd=zData;
    if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
    //ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
    var zp="";
   
    var newId = createAndAttach(doc, sfType, label, arrOfPairs);
    return newId;
};
   
zData.clientRecordTypeNoAttach=function(doc,sfType,arrOfPairs,label,zd) { // PV191209 clientRecord generic
    if (!zd) zd=zData;
    if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
    //ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
    var zp="";
    var newId = createSFRecord(doc, sfType, null, arrOfPairs);  //CRN191213 Don't send in the name parameter, it screws up records that have Auto Number Name fields
    //var newId = createS(doc, sfType, label, arrOfPairs);
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

zData.clientStackComplete=function(doc,arrOfPairs,zd) { //ERS200314 #70336
    if (!zd) zd=zData; //ERS200406 #71156
    arrOfPairs.push("Time_Complete_Date__c",zd.formatNow); //for dashboard
    return arrOfPairs;
}; //ERS190625

alert("end client library"); //ERS190615 #58921

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
