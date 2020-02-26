<!--
// Name: Client Library
// Committer: eric.stephens@zpaper.com
// Update: {} seems to work but need to look for other .length checks
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-25 22:31:01","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCnpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL0VSUzE5MDgxNCAjNjE1MTEKCnpEYXRhLndhdGVybWFyaz0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIndhdGVybWFya19fYyIpOyAvL0VSUzE5MDYxOCBiZXN0IHByYWN0aWNlCi8vYWxlcnQoIkVSUzE5MDQxMSB3bT0iK3pEYXRhLndhdGVybWFyaysiIFpQQVBFUl9fc2VydmVyX19jPSIrWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3NlcnZlcl9fYyIpKTsKekRhdGEudXBsb2FkRGlyID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ1cGxvYWREaXJfX2MiKTsgLy8iYWxrZXJtZXNSb290IjsKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCnpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCi8vVE9ETyB6RGF0YS5rZXl3b3JkTWFwWyJFTlJMIl0gPSJFTlJMOkVucm9sbG1lbnQgRm9ybSI7ICAvL1RPRE8gZ2V0IGZyb20gelN0YWNrIHBpY2tsaXN0cwovL1RPRE8gekRhdGEua2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKLy9FUlMyMDAyMDUgZGVsZXRlZCBkZW1vIGRhdGEgLSBkbyB3aXRoIGN1c3RvbSBzZXR0aW5ncwoKdmFyIGNzPVhEZXBsb3ltZW50SW5mbyhkb2MsICJCdXNpbmVzc19Qcm9jZXNzX19jIik7IC8vRVJTMjAwMjIyIG5lZWQgYm90aCBkZXBsb3ltZW50IGluZm8gYW5kIGNzCi8vYWxlcnQoImNzPSIrY3MpOwppZiAoY3MpIHsKICAgIGlmIChjcy5pbmRleE9mKCJ6Q3VzdG9tU2V0dGluZ3MiKT4tMSkgY3M9WChkb2MsInpDdXN0b21TZXR0aW5ncyIsY3MpOwogICAgYWxlcnQoIkVSUzIwMDIyNSBFVkFMIG9uICIrY3MpOwogICAgaWYgKGNzICE9PSAiIikgZXZhbCgiIitjcyk7IC8vRVJTMjAwMjIyIFRPRE8gSlNPTi5wYXJzZSgpIC8vRVJTMjAwMjI1IGJlZWRzIHRvIGJlIGV2YWwgYnV0IGFsc28gbmVlZHMgdG8gd29yayEhIQogICAgYWxlcnQoIk5vIHRyeSBqdXN0IGRvISIpOwp9CgoKaWYgKCF6RGF0YS5NVk5Qcm9ncmFtcyB8fCB6RGF0YS5NVk5Qcm9ncmFtcy5sZW5ndGggPT09IDApIHsgLy9FUlMyMDAyMjUgIzY4ODI1IGJldHRlciBpbml0KCkKICAgIHpEYXRhLk1WTlByb2dyYW1zPXt9OwogICAgYWxlcnQoIkVSUzIwMDIyMiBFUlJPUiBEZXBsb3ltZW50IElORk8gbWlzc2luZyBmb3IgTVZOUHJvZ3JhbXMiKTsgLy9FUlMyMDAyMjIKICAgIHpEYXRhLk1WTlByb2dyYW1zWyJQUk9DWVNCSSJdPSJhNDAwUjAwMDAwMFNYZ2kiOyAvLy56cGFwZXIgb3JnCiAgICB6RGF0YS5NVk5Qcm9ncmFtc1siQUNUSU1NVU5FIl09ImE0MDBSMDAwMDAwU1dMVSI7IC8vLnpwYXBlciBvcmcKICAgIHpEYXRhLk1WTlByb2dyYW1zWyJSQVZJQ1RJIl09ImE0MDBSMDAwMDAwU1ZOTiI7IC8vLnpwYXBlciBvcmcKICAgIC8vekRhdGEuTVZOUHJvZ3JhbXNbIkFDVElNTVVORSJdPSJhNDA0NjAwMDAwMFhlQmIiOyAvL2RldiAiYTQwMFIwMDAwMDBTV0xVIjsKICAgIC8vekRhdGEuTVZOUHJvZ3JhbXNbIlBST0NZU0JJIl09ImE0MDQ2MDAwMDAwZ00zdSI7IC8vZGV2ICJhNDAwUjAwMDAwMFNYZ2kiOwogICAgLy96RGF0YS5NVk5Qcm9ncmFtc1siUkFWSUNUSSJdPSJhNDA0NjAwMDAwMDBRVjEiOyAvL2RldiAiYTQwMFIwMDAwMDBTVk5OIjsgLy8uenBhcGVyIG9yZwogICAgLy96RGF0YS5NVk5Qcm9ncmFtc1siS1JZU1RFWFhBIl09ImE0MDQ2MDAwMDAwMExCbyI7Cn0KYWxlcnQoekRhdGEuTVZOUHJvZ3JhbXMrIiB6RGF0YS5NVk5Qcm9ncmFtcyIpOwoKaWYgKCF6RGF0YS5NVk5NZW1iZXJzIHx8IHpEYXRhLk1WTk1lbWJlcnMubGVuZ3RoID09PSAwKSB7IC8vRVJTMjAwMjI1ICM2ODgyNSBiZXR0ZXIgaW5pdCgpCiAgICB6RGF0YS5NVk5NZW1iZXJzPXt9OwogICAgYWxlcnQoIkVSUzIwMDIyMiBFUlJPUiBEZXBsb3ltZW50IElORk8gbWlzc2luZyBmb3IgTVZOTWVtYmVycyIpOyAvL0VSUzIwMDIyMgogICAgekRhdGEuTVZOTWVtYmVyc1siQUNUSU1NVU5FIl09IjAxMjQ2MDAwMDAxNUx4SyI7CiAgICB6RGF0YS5NVk5NZW1iZXJzWyJQUk9DWVNCSSJdPSIwMTI0NjAwMDAwMTVMeE0iOwogICAgekRhdGEuTVZOTWVtYmVyc1siUkFWSUNUSSJdPSIwMTI0NjAwMDAwMTVQOUkiOwogICAgekRhdGEuTVZOTWVtYmVyc1siS1JZU1RFWFhBIl09IjAxMjQ2MDAwMDAxNUx4TCI7Cn0KYWxlcnQoekRhdGEuTVZOTWVtYmVycysiIHpEYXRhLk1WTk1lbWJlcnMiKTsKCmlmICghekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGUpIHsgLy9UT0RPIGN1c3RvbSBzZXR0aW5nIG9yIGRlcGxveW1lbnQ/CiAgICB6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZT0iMDEyMFIwMDAwMDFOMm9JIjsKfQoKaWYgKFgoZG9jLCJYX1Byb2dyYW1fTWVtYmVyX01WTl9fYyIpKSB6RGF0YS5wYXRpZW50SWQ9WChkb2MsIlhfUHJvZ3JhbV9NZW1iZXJfTVZOX19jIik7IC8vRVJTMjAwMjA1ICM2ODgyNSBzZWUgemlwcGkgcGFyYW1zIGludG8gWAoKekRhdGEuY2xpZW50SW1wb3J0U09RTD1mdW5jdGlvbihkb2MsZnJvbUZpbGUpIHsgLy9FUlMxOTA3MDYgY3VzdG9taXplIGltcG9ydHMgdXNlZCBieSBDcmVhdGUgU3RhY2sKICAgIHpEYXRhLmltcG9ydGVyPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiSW1wb3J0ZXJfX2MiKS50cmltKCk7CiAgICB2YXIgc2ZJZD0iIjsKICAgIHZhciBwYXJ0cz1mcm9tRmlsZS5zcGxpdCgiXyIpOwogICAgLy9zZklkID0gZ2V0U0ZSZWNvcmRJRChkb2MsICJBY2NvdW50IiwgeyAiRmF4IiA6IHBhcnRzWzNdIH0gKTsKICAgIHpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL2RvIGFsbCB0aGUgd29yayB0aGVyZSBieSBkZWZhdWx0CiAgICByZXR1cm4gc2ZJZDsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudFN0YWNrIik7CnpEYXRhLmNsaWVudFN0YWNrPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzKSB7IC8vekRhdGEgb3IgdGhpcz8KICAgIHZhciB6cD16RGF0YS56cDsgaWYgKCF6cCkgenA9IlpQQVBFUl9fIjsgLy9FUlMxOTA4MDUgCglpZiAoekRhdGEucmVjZWl2ZWQpIGFyck9mUGFpcnMucHVzaCgielN0YWNrX1JlY2VpdmVkX19jIiwgekRhdGEuZm9ybWF0Tm93KTsgLy9FUlMxOTA2MTcgVE9ETyBzYXZlIHdheSB0byBkbyB0aGlzCglpZiAoekRhdGEub3duZXJJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5vd25lcklkKTsgIC8vIHpDaGFydGEgUXVldWUgIjAwRzM2MDAwMDAyQ3lUSyIgCglpZiAoekRhdGEuY2FsbGVySWQpIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKCWlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoJCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIHpEYXRhLmRvY1R5cGUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CiAgICBpZiAoIXBhZ2VSYW5nZSkgcGFnZVJhbmdlPSIxLSIrWChkb2MsIlhfcGFnZXMiKTsgCiAgICB2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MsIHBhZ2VSYW5nZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgCiAgICAvL0VSUzE5MDgxMCBUT0RPPyBhcnJPZlBhaXJzLnB1c2goIlpTVEFDS19fUmVjZWl2ZWRfX2MiLCB6RGF0YS5mb3JtYXROb3cpOwogICAgYWxlcnQoIkVSUzIwMDIxMy41MSBwYWdlUmFnZT0iK3BhZ2VSYW5nZSArICIgYnV0IHBhZ2VDb3VudD0iK3BhZ2VDb3VudCk7IC8vRVJTMjAwMjEzIGFsc28gY2FsbGVkIGluIG5ldyBpbmNvbWluZyBzdGFjawogICAgaWYgKCFYKGRvYywiWF9pZHhQYWdlcyIpKSBwYWdlQ291bnQ9WChkb2MsIlhfcGFnZXMiKTsgLy9FUlMyMDAyMTMgVE9ETyBmaXggekRhdGEuY291bnRQYWdlcygpCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGFnZXNfX2MiLCBwYWdlQ291bnQpOwogICAgCiAgICAvL0VSUzIwMDIwNCBUT0RPIHpTdGFjay5Qcm9ncmFtPwoKICAgIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7CiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsgLy9KUEIxOTA0MjYgY2hhbmdlZCB0byBjbGFzc2lmaWNhdGlvbiBmcm9tIHByb2dyYW0KICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsKICAgIAlhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsgCiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDQVJUQSkgewogICAgCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsJCiAgICB9IGVsc2UgewogICAgCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7CiAgICB9CiAgICAKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgKCJDb21tdW5pdHkiID09PSB6RGF0YS5jaGFubmVsID8gekRhdGEuY2hhbm5lbCA6IGRvYy5kZWxpdmVyZWRUbykpOyAvL0pQQjE5MDUyOSBhZGRlZCBzbyBDb21tdW5pdHkgc2hvd3MgdXAgaW4gTWFzdGVyIEludGFrZSBMaXN0CiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykge2Fyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7IH0gCiAgICBlbHNlIHsgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyB9CiAgICB6RGF0YS5zdGFja1BhaXJzPWFyck9mUGFpcnM7IC8vRVJTMTkwODEwICM2MTU3MCBmb3IgY2hpbGQgc3RhY2sgbGF0ZXIKICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196U3RhY2tGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIAoJcmV0dXJuIGFyck9mUGFpcnM7Cn07CgovL2FsZXJ0KCJ6RGF0YS5jbGllbnRGaWxlIik7CnpEYXRhLmNsaWVudEZpbGU9ZnVuY3Rpb24oZG9jLHN0YWdlKSB7IC8vRVJTMTcwODI5ICM0MTI5OCByZXR1cm5zIGEgbGFiZWwgdG8gYmUgdXNlZCBpbiBhbnkgYXR0YWNoZXMgYW5kIGZpeGVzIHRoZSBkb2MKICAgIC8vRG9jdW1lbnQgYXR0YWNobWVudCBsYWJlbCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIuICBDb25maXJtZWQgZm9yIHpQYXBlciBGaWxlIGFuZCBTRkRDIEF0dGFjaG1lbnQKICAgIHZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgIGRvYy5sYWJlbD1YKGRvYywiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpK1goZG9jLCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKSsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsKICAgIGFsZXJ0KCJFUlMxNzA4MjkgZGJJRD0iK2RvYy5kYklEKyIgbGFiZWw9Iitkb2MubGFiZWwpOwogICAgaWYgKHpEYXRhLnNmSUQgICYmIHpEYXRhLnNmSUQuaW5kZXhPZigiNTAwIik9PT0wKSB7CgkgICAgekRhdGEucHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgekRhdGEuc2ZJRCk7IAoJICAgIGxhYmVsID0gIlJlY2VpdmVkIGZyb20gIiArIHpEYXRhLnByb3ZpZGVyOwogICAgICAgIGlmICh6RGF0YS5mYWNpbGl0eSkgewogICAgICAgICAgICB6RGF0YS5mYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50LkZhY2lsaXR5X19yLk5hbWUiLCBudWxsLCB6RGF0YS5zZklEKTsKICAgICAgICAgICAgZG9jLmxhYmVsKz0iIGF0ICIrekRhdGEuZmFjaWxpdHk7CiAgICAgICAgfQoJfQoJdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwoJdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmNsaWVudFZhbHVlPWZ1bmN0aW9uKGRvYyx2YWwpIHsvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiAKICAgIHZhbD12YWwucmVwbGFjZSgieyFmb3JtYXROb3d9Iix6RGF0YS5mb3JtYXROb3cpOwogICAgcmV0dXJuIHZhbDsKfQoKekRhdGEuY2xpZW50RmllbGRzPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGpkLHpkKSB7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIGluIHNldHRpbmcgdG8gY29uZmlndXJlIG5ldyByZWNvcmQKICAgIGlmICghemQpIHpkPXpEYXRhOwoJaWYgKGpkICYmIGpkLmluZGV4T2YoInsiKT09PTApIHsgCgkgICAgLy97IlR5cGUiOiJFbGlnaWJpbGl0eSIsIk93bmVySWQiOiIwMEdjMDAwMDAwM3ZncXciLCJSZWNvcmRUeXBlSWQiOiIwMTI2QTAwMDAwMEpFS2VRQU8ifTsKCSAgICAvL05PVCBBIEdPT0QgSURFQSBqZD1qZC5yZXBsYWNlQWxsKCJcIiIsIiciKTsgLy9FUlMxOTA4MTEgIzYxNTcwIEhBQ0s/CgkgICAgdHJ5IHsKICAgIAkgICAgdmFyIGpkYXRhPUpTT04ucGFyc2UoamQpOyAvL0VSUzE5MDgwNSBiZXR0ZXIgdGhhbiBldmFsCiAgICAJICAgIGZvciAodmFyIG4gaW4gamRhdGEpIHsKICAgIAkgICAgICAgIHZhciB2MD1qZGF0YVtuXTsgCiAgICAJICAgICAgICB2YXIgdj16RGF0YS5jbGllbnRWYWx1ZShkb2MsdjApOyAvL0VSUzE5MDgxMSAsdiBub3cgLHYwCiAgICAJICAgICAgICAvL2FsZXJ0KCJFUlMxOTA4MDMuOTcgIituKyI9Iit2MCsiPSIrdik7IAogICAgCSAgICAgICAgYXJyT2ZQYWlycy5wdXNoKG4sdik7IC8vRVJTMTkwODExIGFkZGVkIC5wdXNoCiAgICAJICAgIH0KCSAgICB9IGNhdGNoIChlKSB7CgkgICAgICAgIGFsZXJ0KCJKU09OIG5vdCBpbiAiK2pkKyIgRXhjZXB0aW9uOiAiK2UpOyAvL0VSUzE5MDgxMSBhZGRlZCBlCgkgICAgfQoJfQoJcmV0dXJuIGFyck9mUGFpcnM7Cn0KCgp6RGF0YS5jbGllbnRDYXNlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghbGFiZWwpIHsgbGFiZWw9IkluZGV4ZWQtIiArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KCS8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwoJaWYgKHpkLmNvbnRhY3RJZCkgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCB6ZC5jb250YWN0SWQpOwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCBYKGRvYywiWF9TdGF0dXMiKSk7CgkvL0VSUzIwMDIwNSBhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiTmV3ICIremQuY2xhc3NpZmljYXRpb24pOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiTmV3ICIremQuZG9jVHlwZSk7CglpZiAoMT09MSkgeyAvL0VSUzE3MDUyMyAjMzcxNjIgYWZ0ZXIgZHJ5cnVuCgkJLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCgkJaWYgKHpkLnByaW9yaXR5ICE9ICJOb3JtYWwiKSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5Iix6ZC5wcmlvcml0eSk7ICAvL0VSUzE3MDUyNCAjMzcxNjIgcHJpb3JpdHkgb24gQ2FzZQoJCWVsc2UgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOwoJCWFyck9mUGFpcnMucHVzaCgiT3JpZ2luIiwiRmF4Iik7IC8vRVJTYTIwMDIwNSByck9mUGFpcnMucHVzaCgiT3JpZ2luIix6ZC5jaGFubmVsKTsKCX0KICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19DYXNlRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiAKCXZhciBjYXNlSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ2FzZSIsIGxhYmVsLCBhcnJPZlBhaXJzKTsKCXJldHVybiBjYXNlSWQ7Cn07Cgp6RGF0YS5jbGllbnRQYXRpZW50PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CglpZiAoIXpkLnBhdGllbnRJZCAmJiBYKGRvYywiWF9Qcm9ncmFtX01lbWJlcl9NVk5fX2MiKSkgewoJICAgIHpkLnBhdGllbnRJZD16RGF0YS5wYXRpZW50SWQ9WChkb2MsIlhfUHJvZ3JhbV9NZW1iZXJfTVZOX19jIik7CgkgICAgYWxlcnQoIkVSUzIwMDIwNSByZWNvdmVyZWQgIitYKGRvYywiWF9Qcm9ncmFtX01lbWJlcl9NVk5fX2MiKSk7Cgl9CglpZiAoemQucGF0aWVudElkKSB7IC8vRVJTMjAwMjA1ICM2ODgyNSBQcm9ncmFtIE1lbWJlcnMKCSAgICBhbGVydCgiUGF0aWVudCBhbHJlYWR5IGV4aXN0cyBpbiAiK3pkLnBhdGllbnRJZCk7CgkgICAgcmV0dXJuIHpkLnBhdGllbnRJZDsgLy9UT09EIGdldCBmcm9tIFhfcGF0aWVudElkICA/Pz8/Cgl9CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCXZhciBwPSJaUEFQRVJfXyI7IC8vRVJTMjAwMjAyIGFzc3VtZSB3b3JrZmxvdyBvbiByZWxhdGVkIHJlY29yZCB0eXBlcwoJaWYgKHpEYXRhLnBhdGllbnRUeXBlLmluZGV4T2YoIl9fYyIpID4gLTEpIHsgcD0iIjsgfSAvL0VSUzIwMDIwMyB0eXBvCglpZiAoMT09MCkgeyAvL0VSUzIwMDIwMiBzZWUgaWYgd29ya2Zsb3cgZW5hYmxlZAoJICAgIGFyck9mUGFpcnMucHVzaChwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgkgICAgYXJyT2ZQYWlycy5wdXNoKHArImxhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCSAgICBhcnJPZlBhaXJzLnB1c2gocCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJfQoKICAgIHZhciBydD1YQ3VzdG9tU2V0dGluZyhkb2MsIlBhdGllbnRSZWNvcmRUeXBlX19jIik7IC8vVE9ETyBpbnRvIE1QIEVSUzE5MDgwMiBsaWtlIDAxMjZBMDAwMDAwSkU4eVFBRyBvciBlbXB0eSB0byB1c2UgZGVmYXVsdAogICAgLy9pZiAocnQpIHsgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCBydCk7IH0gLy9FUlMxOTA4MDMKICAgIC8vVE9ETyBDb250YWN0IG9yIEFjY291bnQgRVJTMTkwNjI0IERPTkUhISBFUlMxOTA4MDIKICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50RmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiAKICAgIGFyck9mUGFpcnM9W107IC8vRVJTMjAwMjA0IHRlc3RpbmcgdG8gZ2V0IGl0IGdvaW5nCiAgICAKICAgIC8vRVJTMjAwMjAyIG5lZWQgdG8gbWFrZSB0aGUgQWNjb3VudCB3aXRoIFBhdGllbnQgcmVjb3JkVHlwZSBmaXJzdAogICAgLy8wMTI0NjAwMDAwME5HRllBQTQgaXMgLnpwYXBlciBmb3IgUGF0aWVudAogICAgdmFyIGFyID0gW107CiAgICBpZiAocnQpIHsgYXIucHVzaCgiUmVjb3JkVHlwZUlkIiwgcnQpOyB9IC8vRVJTMTkwODAzIC8vRVJTMjAwMjIyICM2OTE0OSBtb3ZlZCBkb3duIGFuZCBhZGRlZCBlbHNlIAogICAgZWxzZSBhci5wdXNoKCJSZWNvcmRUeXBlSWQiLCIwMTI0NjAwMDAwME5HRllBQTQiKTsKICAgIGFyLnB1c2goIkZpcnN0TmFtZSIsekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7CiAgICBhci5wdXNoKCJMYXN0TmFtZSIsekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgIHZhciBwYXRpZW50TmFtZT16RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MrIiwgIit6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jOwogICAgaWYgKHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpIGFyLnB1c2goIlBlcnNvbkJpcnRoRGF0ZSIsekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyk7CiAgICB2YXIgYUlkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiQWNjb3VudCIsIG51bGwsIGFyKTsgLy9FUlMyMDAyMDQgcGVyc29uIGFjY291bnQgc28gZG8gbm90IHNldCBwYXRpZW50TmFtZQogICAgCiAgICBpZiAoYUlkICYmIGFJZCAhPSAiTkVXIiAmJiBhSWQuaW5kZXhPZigiRVJST1IiKT09LTEpIHsKICAgICAgICAvL3Byb2dyYW0gYW5kIHByb2dyYW0gbWVtYmVyCiAgICAgICAgdmFyIG1ydD16RGF0YS5NVk5Qcm9ncmFtc1t6RGF0YS5wcm9ncmFtTmFtZV07IC8vekRhdGEuTVZOUHJvZ3JhbXNbIkFDVElNTVVORSJdPSJhNDAwUjAwMDAwMFNXTFUiOyAvL0VSUzIwMDIwNyBwcm9ncmFtZSB0eXBvCiAgICAgICAgaWYgKCFtcnQpIHsgbXJ0PSJhNDAwUjAwMDAwMFNXTFUiOyAgYWxlcnQoIkVSUk9SOiB6RGF0YS5NVk5Qcm9ncmFtc1siK3pEYXRhLnByb2dyYW1OYW1lKyJdIG5vdCBkZWZpbmVkIHNvIHVzaW5nICIrbXJ0KTsgfQogICAgICAgIC8vekRhdGEuTVZOUHJvZ3JhbXNbIlBST0NZU0JJIl09ImE0MDBSMDAwMDAwU1hnaSI7CgogICAgICAgIHZhciBzZklkID0gIiI7CiAgICAJCiAgICAgICAgaWYgKG1ydCkgYXJyT2ZQYWlycy5wdXNoKCJQcm9ncmFtX01WTl9fYyIsbXJ0KTsKICAgICAgICBpZiAoYUlkKSBhcnJPZlBhaXJzLnB1c2goIk1lbWJlcl9NVk5fX2MiLGFJZCk7CiAgICAgICAgdmFyIHBtcnQ9ekRhdGEuTVZOTWVtYmVyc1t6RGF0YS5wcm9ncmFtTmFtZV07IC8vRVJTMjAwMjIyICM2NjY4NgogICAgICAgIGlmIChwbXJ0KSB7IGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgcG1ydCk7IH0gLy9FUlMyMDAyMjIKICAgIAlpZiAobXJ0ICYmIGFJZCkgewogICAgCSAgICBpZiAoIXpEYXRhLmxhYmVsKSB6RGF0YS5sYWJlbD16RGF0YS5kb2NUeXBlOwogICAgCSAgICBzZklkPWNyZWF0ZUFuZEF0dGFjaChkb2MsIHpEYXRhLnBhdGllbnRUeXBlLCB6RGF0YS5sYWJlbCwgYXJyT2ZQYWlycyk7IC8vRVJTMTkwODAzICM2MTI3MiAvL0VSUzIwMDIwNCBQTV9NVk4gZG9lcyBub3QgaGF2ZSBhIE5hbWUKICAgIAkgICAgaWYgKHNmSWQpIHpEYXRhLnBhdGllbnRJZD1zZklkOwogICAgCX0KICAgIAkvL0VSUzE5MDgwMyBzcGVjaWZpYyB0byBjbGllbnQgZGF0YSBlbnRyeQogICAgCXZhciBkcSA9IHpEYXRhLmRxOwogICAgCS8vYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BlcnNvbl9BY2NvdW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHNmSWQgKyBkcSArICIpOyAiKTsKICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKICAgIAl2YXIgcj0iIjsKICAgIAlpZiAoc2ZJZCkgewogICAgCSAgICB2YXIgcE5hbWU9IlBNLSIrekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICJfIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYzsKICAgIAkgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcGF0aWVudElkIiwgc2ZJZCk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX1BhdGllbnQiLHNmSWQpOyAvL0VSUzIwMDIwNSBUT0RPIHVzZSB0aGlzIGluc3RlYWQgb2YgWF9wYXRpZW50SWQgZnJvbSB0aGUgSW5kZXggYWN0aW9uCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9Qcm9ncmFtX01lbWJlcl9NVk5fX2MiLHNmSWQpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfUHJvZ3JhbV9NZW1iZXJfTVZOX19jX05hbWUiLHBOYW1lKTsKCSAgICAgICAgcj11cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CgkgICAgICAgIGlmICghekRhdGEuc3RhY2tJZCkgeyB6RGF0YS5zdGFja0lkPXpEYXRhLnNmSWQ7IGFsZXJ0KCJQYXRjaGVkIHpEYXRhLnN0YWNrSWQ9Iit6RGF0YS5zZklkKTsgfQoJICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiUHJvZ3JhbV9NZW1iZXJfTVZOX19jIiwgc2ZJZCk7CiAgICAgICAgICAgIC8vRE8gTk9UIERPIFRISVMgaWYgKG1ydCkgYXJyT2ZQYWlycy5wdXNoKCJQcm9ncmFtX01WTl9fYyIsbXJ0KTsKICAgICAgICAgICAgcj11cGRhdGVTRlJlY29yZChkb2MsIlpQQVBFUl9felN0YWNrX19jIix6RGF0YS5zdGFja0lkLGFyck9mUGFpcnMpOwogICAgICAgICAgICBhbGVydCgiVXBkYXRpbmcgelN0YWNrIHdpdGggUHJvZ3JhbV9NZW1iZXJfTVZOX19jPSIrc2ZJZCsiIHI9IityKyIgc3RhY2tJZD0iK3pEYXRhLnN0YWNrSWQpOwogICAgICAgICAgICAKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1Byb2dyYW1fTWVtYmVyX01WTl9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBzZklkICsgZHEgKyAiKTsgIik7IC8vRVJTMjAwMjA0IHNldCB0aGUgbmV3IFBNCiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQcm9ncmFtX01lbWJlcl9NVk5fX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwTmFtZSArIGRxICsgIik7ICIpOwogICAgICAgICAgICAKICAgIAkgICAgcmV0dXJuIHNmSWQ7CiAgICAJfQogICAgfQogICAgcmV0dXJuIHsnRVJST1InOiAncGF0aWVudCBub3QgY3JlYXRlZCd9Cn07Cgp6RGF0YS5jbGllbnRBY2NvdW50PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCgl2YXIgYWNjb3VudElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkFjY291bnQiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gYWNjb3VudElkOwp9OwoKekRhdGEuY2xpZW50UmVjb3JkPWZ1bmN0aW9uKGRvYyxzZlR5cGUsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgeyAvL0VSUzE5MDYyMCBjbGllbnRSZWNvcmQgZ2VuZXJpYwoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7Cgl2YXIgenA9IiI7CglpZiAoIixDYXNlLENvbnRhY3QsQWNjb3VudCxMZWFkLE9wcG9ydHVuaXR5LFpQQVBFUl9felN0YWNrX19jLCIudG9Mb3dlckNhc2UoKS5pbmRleE9mKCIsIitzZlR5cGUudG9Mb3dlckNhc2UoKSsiLCIpPi0xKSB6cD16RGF0YS56cDsKCS8vb25seSBkbyB0aGlzIGlmIHRoZSBmaWVsZHMgZXhpc3QKCWFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCAiZG9jLmRiSUQuUmVjIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCQoJLy9UT0RPIHB1dCBjbGllbnQgc3BlY2lmaWMgZGF0YSB1cGRhdGVzIGhlcmUKCgl2YXIgbmV3SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCBzZlR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsKCXJldHVybiBuZXdJZDsKfTsKCnpEYXRhLmNsaWVudENvbXBsZXRlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHpkKSB7cmV0dXJuIGFyck9mUGFpcnM7fTsgLy9FUlMxOTA2MjUKekRhdGEuY2xpZW50RGVsaXZlcnk9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHsgLy9FUlMyMDAyMDIgVE9ETyBjb25zaWRlciBuZXcgRG9jdW1lbnRfTVZOCiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfTsgLy9FUlMxOTA3MTEgIzYwOTAwIFBBT1MKCnpEYXRhLmNsaWVudENoaWxkU3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMscGFyZW50SWQpIHsgLy9FUlMxOTA4MTAgIzYxNTcwIGJlIHN1cmUgdG8gY2FsbCBvbiBuZXcgY2hpbGQgZG9jCiAgICB2YXIgcGFpcnM9YXJyT2ZQYWlyczsKICAgIC8vbm8gbWVtb3J5IG9mIHN0YWNrIGNyZWF0aW9uIHZhciBwYWlycz16RGF0YS5zdGFja1BhaXJzOwogICAgekRhdGEucmV2aWV3ZWRTdGF0dXM9IlNwbGl0IjsKICAgIC8vRVJTMTkwODEwIFRPRE8/IHBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIkNoaWxkIFN0YWNrIik7CgogICAgcGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLHBhaXJzKTsKICAgIGlmIChYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpIHsgLy9FUlMxOTA4MTEgbm90IGluIGFsbCBNUHMKICAgICAgICBwYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLHBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196Q2hpbGRGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIGNoaWxkIHJlY29yZCB0eXBlIGlkCiAgICB9CiAgICBwYWlycy5wdXNoKCJaUEFQRVJfX1BhcmVudF9fYyIsIHBhcmVudElkKTsKICAgIGlmICh6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZSkgcGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIix6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZSk7CiAgICBwYWlycy5wdXNoKCIiKyJQcm9ncmFtX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7IC8vRVJTMjAwMjA1IFRPRE8gaW4gcGFja2FnZSBhbmQgaW50byBiYXNlIGNhbGwKICAgIGlmICh6RGF0YS5wYXRpZW50SWQpIHBhaXJzLnB1c2goIlByb2dyYW1fTWVtYmVyX01WTl9fYyIsekRhdGEucGF0aWVudElkKTsgLy9FUlMyMDAyMDUgUHJvZ3JhbV9NZW1iZXJfTVZOX19jIHdhcyB0aGUgVElDS0VUISEhCiAgICBhbGVydCgiRVJTMTkwODExLjE5MSBaUEFQRVJfX1BhcmVudF9fYyIrIHBhcmVudElkKyIgY2hpbGQgekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGU9Iit6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZSk7CiAgICB2YXIgY2hpbGRTdGFja1NGSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCAielN0YWNrIHNwbGl0IG9uICIgKyB6RGF0YS5mb3JtYXROb3csIHBhaXJzKSArICIiOwogICAgCiAgICBpZiAoekRhdGEuY2FzZUlkIHx8IHpEYXRhLnBhdGllbnRJZCkgeyAvL0VSUzIwMDEyNQogICAgICAgIHZhciBhcnJPZlBhaXJzMiA9IFtdOwogICAgICAgIHZhciBzYXZlSWQ9ekRhdGEubURvY0lkOwogICAgICAgIGlmICh6RGF0YS5jYXNlSWQpIHpEYXRhLm1Eb2NJZD16RGF0YS5uZXdEb2N1bWVudChkb2MsIGFyck9mUGFpcnMyLCIiLHpEYXRhLmNhc2VJZCk7CiAgICAgICAgaWYgKHpEYXRhLnBhdGllbnRJZCkgekRhdGEubURvY0lkPXpEYXRhLm5ld0RvY3VtZW50KGRvYywgYXJyT2ZQYWlyczIsIiIsekRhdGEucGF0aWVudElkKTsgLy9FUlMyMDAyMDIgYWRkZWQgcGF0aWVudElkIERvY3VtZW50X01WTgogICAgICAgIGlmIChzYXZlSWQgJiYgIXpEYXRhLm1Eb2NJZCkgeyB6RGF0YS5tRG9jSWQ9c2F2ZUlkOyBhbGVydCgiV0FSTklORzogbmV3RG9jdW1lbnQgdHJvdWJsZS4gIFJlc3RvcmluZyAiK3pEYXRhLm1Eb2NJZCk7IH0KICAgICAgICBhbGVydCgiRVJTMjAwMTI1IG1Eb2NJZD0iK3pEYXRhLm1Eb2NJZCk7CiAgICB9IGVsc2UgewogICAgICAgIGFsZXJ0KCJFUlMyMDAxMjUgbm8gY2FzZSBvciBwYXRpZW50IGluICIrekRhdGEpOyAgIAogICAgfQogICAgcmV0dXJuIGNoaWxkU3RhY2tTRklkOwp9OwoKYWxlcnQoImVuZCBjbGllbnQgbGlicmFyeSIpOyAvL0VSUzE5MDYxNSAjNTg5MjE="},"ordinal":3}

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
//ERS200205 deleted demo data - do with custom settings

var cs=XDeploymentInfo(doc, "Business_Process__c"); //ERS200222 need both deployment info and cs
//alert("cs="+cs);
if (cs) {
    if (cs.indexOf("zCustomSettings")>-1) cs=X(doc,"zCustomSettings",cs);
    alert("ERS200225 EVAL on "+cs);
    if (cs !== "") eval(""+cs); //ERS200222 TODO JSON.parse() //ERS200225 beeds to be eval but also needs to work!!!
    alert("No try just do!");
}


if (!zData.MVNPrograms || zData.MVNPrograms.length === 0) { //ERS200225 #68825 better init()
    zData.MVNPrograms={};
    alert("ERS200222 ERROR Deployment INFO missing for MVNPrograms"); //ERS200222
    zData.MVNPrograms["PROCYSBI"]="a400R000000SXgi"; //.zpaper org
    zData.MVNPrograms["ACTIMMUNE"]="a400R000000SWLU"; //.zpaper org
    zData.MVNPrograms["RAVICTI"]="a400R000000SVNN"; //.zpaper org
    //zData.MVNPrograms["ACTIMMUNE"]="a4046000000XeBb"; //dev "a400R000000SWLU";
    //zData.MVNPrograms["PROCYSBI"]="a4046000000gM3u"; //dev "a400R000000SXgi";
    //zData.MVNPrograms["RAVICTI"]="a40460000000QV1"; //dev "a400R000000SVNN"; //.zpaper org
    //zData.MVNPrograms["KRYSTEXXA"]="a40460000000LBo";
}
alert(zData.MVNPrograms+" zData.MVNPrograms");

if (!zData.MVNMembers || zData.MVNMembers.length === 0) { //ERS200225 #68825 better init()
    zData.MVNMembers={};
    alert("ERS200222 ERROR Deployment INFO missing for MVNMembers"); //ERS200222
    zData.MVNMembers["ACTIMMUNE"]="012460000015LxK";
    zData.MVNMembers["PROCYSBI"]="012460000015LxM";
    zData.MVNMembers["RAVICTI"]="012460000015P9I";
    zData.MVNMembers["KRYSTEXXA"]="012460000015LxL";
}
alert(zData.MVNMembers+" zData.MVNMembers");

if (!zData.childStackRecordType) { //TODO custom setting or deployment?
    zData.childStackRecordType="0120R000001N2oI";
}

if (X(doc,"X_Program_Member_MVN__c")) zData.patientId=X(doc,"X_Program_Member_MVN__c"); //ERS200205 #68825 see zippi params into X

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
    if (!pageRange) pageRange="1-"+X(doc,"X_pages"); 
    var pageCount = zData.countPages(doc, pageRange);
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 
    //ERS190810 TODO? arrOfPairs.push("ZSTACK__Received__c", zData.formatNow);
    alert("ERS200213.51 pageRage="+pageRange + " but pageCount="+pageCount); //ERS200213 also called in new incoming stack
    if (!X(doc,"X_idxPages")) pageCount=X(doc,"X_pages"); //ERS200213 TODO fix zData.countPages()
    arrOfPairs.push("ZPAPER__Pages__c", pageCount);
    
    //ERS200204 TODO zStack.Program?

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

//alert("zData.clientFile");
zData.clientFile=function(doc,stage) { //ERS170829 #41298 returns a label to be used in any attaches and fixes the doc
    //Document attachment label should be "Patient Name - Doc Type - Date".  Confirmed for zPaper File and SFDC Attachment
    var MMddYYYY = zData.formatTodayMMddYYYY();
    doc.label=X(doc,"X_ZPAPER__FirstName__c")+X(doc,"X_ZPAPER__LastName__c")+" - "+X(doc,"X_ZPAPER__faxType__c")+" - "+MMddYYYY;
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
	//ERS200205 arrOfPairs.push("Type", "New "+zd.classification); //JPB 170512 added these workflow fields
	arrOfPairs.push("Type", "New "+zd.docType);
	if (1==1) { //ERS170523 #37162 after dryrun
		//arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
		if (zd.priority != "Normal") arrOfPairs.push("Priority",zd.priority);  //ERS170524 #37162 priority on Case
		else arrOfPairs.push("Priority","Medium");
		arrOfPairs.push("Origin","Fax"); //ERSa200205 rrOfPairs.push("Origin",zd.channel);
	}
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__CaseFields__c")); //ERS190803 #52661 using JSON 
	var caseId = createAndAttach(doc, "Case", label, arrOfPairs);
	return caseId;
};

zData.clientPatient=function(doc,arrOfPairs,label,zd) {
	if (!zd) zd=zData;
	if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
	if (!zd.patientId && X(doc,"X_Program_Member_MVN__c")) {
	    zd.patientId=zData.patientId=X(doc,"X_Program_Member_MVN__c");
	    alert("ERS200205 recovered "+X(doc,"X_Program_Member_MVN__c"));
	}
	if (zd.patientId) { //ERS200205 #68825 Program Members
	    alert("Patient already exists in "+zd.patientId);
	    return zd.patientId; //TOOD get from X_patientId  ????
	}
	//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
	var p="ZPAPER__"; //ERS200202 assume workflow on related record types
	if (zData.patientType.indexOf("__c") > -1) { p=""; } //ERS200203 typo
	if (1==0) { //ERS200202 see if workflow enabled
	    arrOfPairs.push(p+"newFax__c", "true"); //JPB 170512 added these workflow fields
	    arrOfPairs.push(p+"latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
	    arrOfPairs.push(p+"receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields
	}

    var rt=XCustomSetting(doc,"PatientRecordType__c"); //TODO into MP ERS190802 like 0126A000000JE8yQAG or empty to use default
    //if (rt) { arrOfPairs.push("RecordTypeId", rt); } //ERS190803
    //TODO Contact or Account ERS190624 DONE!! ERS190802
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__PatientFields__c")); //ERS190803 #52661 using JSON 
    arrOfPairs=[]; //ERS200204 testing to get it going
    
    //ERS200202 need to make the Account with Patient recordType first
    //01246000000NGFYAA4 is .zpaper for Patient
    var ar = [];
    if (rt) { ar.push("RecordTypeId", rt); } //ERS190803 //ERS200222 #69149 moved down and added else 
    else ar.push("RecordTypeId","01246000000NGFYAA4");
    ar.push("FirstName",zData.X_ZPAPER__FirstName__c);
    ar.push("LastName",zData.X_ZPAPER__LastName__c);
    var patientName=zData.X_ZPAPER__LastName__c+", "+zData.X_ZPAPER__FirstName__c;
    if (zData.X_ZPAPER__Birthdate__c) ar.push("PersonBirthDate",zData.X_ZPAPER__Birthdate__c);
    var aId = createSFRecord(doc, "Account", null, ar); //ERS200204 person account so do not set patientName
    
    if (aId && aId != "NEW" && aId.indexOf("ERROR")==-1) {
        //program and program member
        var mrt=zData.MVNPrograms[zData.programName]; //zData.MVNPrograms["ACTIMMUNE"]="a400R000000SWLU"; //ERS200207 programe typo
        if (!mrt) { mrt="a400R000000SWLU";  alert("ERROR: zData.MVNPrograms["+zData.programName+"] not defined so using "+mrt); }
        //zData.MVNPrograms["PROCYSBI"]="a400R000000SXgi";

        var sfId = "";
    	
        if (mrt) arrOfPairs.push("Program_MVN__c",mrt);
        if (aId) arrOfPairs.push("Member_MVN__c",aId);
        var pmrt=zData.MVNMembers[zData.programName]; //ERS200222 #66686
        if (pmrt) { arrOfPairs.push("RecordTypeId", pmrt); } //ERS200222
    	if (mrt && aId) {
    	    if (!zData.label) zData.label=zData.docType;
    	    sfId=createAndAttach(doc, zData.patientType, zData.label, arrOfPairs); //ERS190803 #61272 //ERS200204 PM_MVN does not have a Name
    	    if (sfId) zData.patientId=sfId;
    	}
    	//ERS190803 specific to client data entry
    	var dq = zData.dq;
    	//addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c" + dq + ").val(" + dq + sfId + dq + "); ");
        //addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c_Name" + dq + ").val(" + dq + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c + dq + "); ");
    	var r="";
    	if (sfId) {
    	    var pName="PM-"+zData.X_ZPAPER__FirstName__c + "_" + zData.X_ZPAPER__LastName__c;
    	    arrOfPairs = [];
            arrOfPairs.push("X_patientId", sfId);
            arrOfPairs.push("X_ZPAPER__Patient",sfId); //ERS200205 TODO use this instead of X_patientId from the Index action
            arrOfPairs.push("X_Program_Member_MVN__c",sfId);
            arrOfPairs.push("X_Program_Member_MVN__c_Name",pName);
	        r=updateDB(doc,arrOfPairs);
	        if (!zData.stackId) { zData.stackId=zData.sfId; alert("Patched zData.stackId="+zData.sfId); }
	        arrOfPairs = [];
            arrOfPairs.push("Program_Member_MVN__c", sfId);
            //DO NOT DO THIS if (mrt) arrOfPairs.push("Program_MVN__c",mrt);
            r=updateSFRecord(doc,"ZPAPER__zStack__c",zData.stackId,arrOfPairs);
            alert("Updating zStack with Program_Member_MVN__c="+sfId+" r="+r+" stackId="+zData.stackId);
            
            addPostExecutionScript(doc, " $(" + dq + "#Program_Member_MVN__c" + dq + ").val(" + dq + sfId + dq + "); "); //ERS200204 set the new PM
            addPostExecutionScript(doc, " $(" + dq + "#Program_Member_MVN__c_Name" + dq + ").val(" + dq + pName + dq + "); ");
            
    	    return sfId;
    	}
    }
    return {'ERROR': 'patient not created'}
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
zData.clientDelivery=function(doc,arrOfPairs) { //ERS200202 TODO consider new Document_MVN
    return arrOfPairs;
}; //ERS190711 #60900 PAOS

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
    if (zData.childStackRecordType) pairs.push("RecordTypeId",zData.childStackRecordType);
    pairs.push(""+"Program__c",zData.programName); //ERS200205 TODO in package and into base call
    if (zData.patientId) pairs.push("Program_Member_MVN__c",zData.patientId); //ERS200205 Program_Member_MVN__c was the TICKET!!!
    alert("ERS190811.191 ZPAPER__Parent__c"+ parentId+" child zData.childStackRecordType="+zData.childStackRecordType);
    var childStackSFId = createAndAttach(doc, "ZPAPER__zStack__c", "zStack split on " + zData.formatNow, pairs) + "";
    
    if (zData.caseId || zData.patientId) { //ERS200125
        var arrOfPairs2 = [];
        var saveId=zData.mDocId;
        if (zData.caseId) zData.mDocId=zData.newDocument(doc, arrOfPairs2,"",zData.caseId);
        if (zData.patientId) zData.mDocId=zData.newDocument(doc, arrOfPairs2,"",zData.patientId); //ERS200202 added patientId Document_MVN
        if (saveId && !zData.mDocId) { zData.mDocId=saveId; alert("WARNING: newDocument trouble.  Restoring "+zData.mDocId); }
        alert("ERS200125 mDocId="+zData.mDocId);
    } else {
        alert("ERS200125 no case or patient in "+zData);   
    }
    return childStackSFId;
};

alert("end client library"); //ERS190615 #58921
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
