<!--
// Name: Client Library
// Committer: sasa
// Update: rule shoudl continue to evaluate
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-09-23 19:25:58","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCnpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL0VSUzE5MDgxNCAjNjE1MTEKCnpEYXRhLndhdGVybWFyaz0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIndhdGVybWFya19fYyIpOyAvL0VSUzE5MDYxOCBiZXN0IHByYWN0aWNlCi8vYWxlcnQoIkVSUzE5MDQxMSB3bT0iK3pEYXRhLndhdGVybWFyaysiIFpQQVBFUl9fc2VydmVyX19jPSIrWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3NlcnZlcl9fYyIpKTsKekRhdGEudXBsb2FkRGlyID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ1cGxvYWREaXJfX2MiKTsgLy8iYWxrZXJtZXNSb290IjsKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196U3RhY2tRdWV1ZUlkX19jIik7Ly9QVjIwMDkxNSAvLycwMEc0QzAwMDAwMExrbVonOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKekRhdGEucmVjVHlwZVJlcXVlc3QgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInJlY1R5cGVSZXF1ZXN0X19jIik7IC8vJzAxMjRDMDAwMDAwQ2o1WSc7IC8vSUQgb2YgdGhlIENhc2UgUmVjb3JkIFR5cGUgUmVxdWVzdF9QU19NVk4KLy9UT0RPIHpEYXRhLmtleXdvcmRNYXBbIkVOUkwiXSA9IkVOUkw6RW5yb2xsbWVudCBGb3JtIjsgIC8vVE9ETyBnZXQgZnJvbSB6U3RhY2sgcGlja2xpc3RzCi8vVE9ETyB6RGF0YS5rZXl3b3JkTWFwWyJGQUMiXSA9IkZBQzpGYWNpbGl0eSBFbnJvbGxtZW50IEZvcm0iOwovL0VSUzIwMDIwNSBkZWxldGVkIGRlbW8gZGF0YSAtIGRvIHdpdGggY3VzdG9tIHNldHRpbmdzCgp2YXIgY3M9WERlcGxveW1lbnRJbmZvKGRvYywgIkJ1c2luZXNzX1Byb2Nlc3NfX2MiKTsgLy9FUlMyMDAyMjIgbmVlZCBib3RoIGRlcGxveW1lbnQgaW5mbyBhbmQgY3MKLy9hbGVydCgiY3M9Iitjcyk7CmlmIChjcykgewogICAgaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpPi0xKSBjcz1YKGRvYywiekN1c3RvbVNldHRpbmdzIixjcyk7CiAgICBhbGVydCgiRVJTMjAwMjI1IEVWQUwgb24gIitjcyk7CiAgICBpZiAoY3MgIT09ICIiKSBldmFsKCIiK2NzKTsgLy9FUlMyMDAyMjIgVE9ETyBKU09OLnBhcnNlKCkgLy9FUlMyMDAyMjUgYmVlZHMgdG8gYmUgZXZhbCBidXQgYWxzbyBuZWVkcyB0byB3b3JrISEhCiAgICBhbGVydCgiTm8gdHJ5IGp1c3QgZG8hIik7Cn0KCmlmICghekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGUpIHsgLy9UT0RPIGN1c3RvbSBzZXR0aW5nIG9yIGRlcGxveW1lbnQ/CiAgICB6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZT0iMDEyMFIwMDAwMDFOMm9JIjsKfQoKekRhdGEuY2xpZW50SW1wb3J0U09RTD1mdW5jdGlvbihkb2MsZnJvbUZpbGUpIHsgLy9FUlMxOTA3MDYgY3VzdG9taXplIGltcG9ydHMgdXNlZCBieSBDcmVhdGUgU3RhY2sKICAgIHpEYXRhLmltcG9ydGVyPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiSW1wb3J0ZXJfX2MiKS50cmltKCk7CiAgICB2YXIgc2ZJZD0iIjsKICAgIHZhciBwYXJ0cz1mcm9tRmlsZS5zcGxpdCgiXyIpOwogICAgLy9zZklkID0gZ2V0U0ZSZWNvcmRJRChkb2MsICJBY2NvdW50IiwgeyAiRmF4IiA6IHBhcnRzWzNdIH0gKTsKICAgIHpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL2RvIGFsbCB0aGUgd29yayB0aGVyZSBieSBkZWZhdWx0CiAgICByZXR1cm4gc2ZJZDsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudFN0YWNrIik7CnpEYXRhLmNsaWVudFN0YWNrPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzKSB7IC8vekRhdGEgb3IgdGhpcz8KICAgIHZhciB6cD16RGF0YS56cDsgaWYgKCF6cCkgenA9IlpQQVBFUl9fIjsgLy9FUlMxOTA4MDUgCglpZiAoekRhdGEucmVjZWl2ZWQpIGFyck9mUGFpcnMucHVzaCgielN0YWNrX1JlY2VpdmVkX19jIiwgekRhdGEuZm9ybWF0Tm93KTsgLy9FUlMxOTA2MTcgVE9ETyBzYXZlIHdheSB0byBkbyB0aGlzCglpZiAoekRhdGEub3duZXJJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5vd25lcklkKTsgIC8vIHpDaGFydGEgUXVldWUgIjAwRzM2MDAwMDAyQ3lUSyIgCglpZiAoekRhdGEuY2FsbGVySWQpIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKCWlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoJCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIHpEYXRhLmRvY1R5cGUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CiAgICBpZiAoIXBhZ2VSYW5nZSkgcGFnZVJhbmdlPSIxLSIrWChkb2MsIlhfcGFnZXMiKTsgCiAgICB2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MsIHBhZ2VSYW5nZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgCiAgICAvL0VSUzE5MDgxMCBUT0RPPyBhcnJPZlBhaXJzLnB1c2goIlpTVEFDS19fUmVjZWl2ZWRfX2MiLCB6RGF0YS5mb3JtYXROb3cpOwogICAgYWxlcnQoIkVSUzIwMDIxMy41MSBwYWdlUmFnZT0iK3BhZ2VSYW5nZSArICIgYnV0IHBhZ2VDb3VudD0iK3BhZ2VDb3VudCk7IC8vRVJTMjAwMjEzIGFsc28gY2FsbGVkIGluIG5ldyBpbmNvbWluZyBzdGFjawogICAgaWYgKCFYKGRvYywiWF9pZHhQYWdlcyIpKSBwYWdlQ291bnQ9WChkb2MsIlhfcGFnZXMiKTsgLy9FUlMyMDAyMTMgVE9ETyBmaXggekRhdGEuY291bnRQYWdlcygpCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGFnZXNfX2MiLCBwYWdlQ291bnQpOwogICAgCiAgICAvL0VSUzIwMDIwNCBUT0RPIHpTdGFjay5Qcm9ncmFtPwoKICAgIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7CiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsgLy9KUEIxOTA0MjYgY2hhbmdlZCB0byBjbGFzc2lmaWNhdGlvbiBmcm9tIHByb2dyYW0KICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsKICAgIAlhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsgCiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDQVJUQSkgewogICAgCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsJCiAgICB9IGVsc2UgewogICAgCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7CiAgICB9CiAgICAKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgKCJDb21tdW5pdHkiID09PSB6RGF0YS5jaGFubmVsID8gekRhdGEuY2hhbm5lbCA6IGRvYy5kZWxpdmVyZWRUbykpOyAvL0pQQjE5MDUyOSBhZGRlZCBzbyBDb21tdW5pdHkgc2hvd3MgdXAgaW4gTWFzdGVyIEludGFrZSBMaXN0CiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykge2Fyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7IH0gCiAgICBlbHNlIHsgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyB9CiAgICB6RGF0YS5zdGFja1BhaXJzPWFyck9mUGFpcnM7IC8vRVJTMTkwODEwICM2MTU3MCBmb3IgY2hpbGQgc3RhY2sgbGF0ZXIKICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196U3RhY2tGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIAoJcmV0dXJuIGFyck9mUGFpcnM7Cn07CgovL2FsZXJ0KCJ6RGF0YS5jbGllbnRGaWxlIik7CnpEYXRhLmNsaWVudEZpbGU9ZnVuY3Rpb24oZG9jLHN0YWdlKSB7IC8vRVJTMTcwODI5ICM0MTI5OCByZXR1cm5zIGEgbGFiZWwgdG8gYmUgdXNlZCBpbiBhbnkgYXR0YWNoZXMgYW5kIGZpeGVzIHRoZSBkb2MKICAgIC8vRG9jdW1lbnQgYXR0YWNobWVudCBsYWJlbCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIuICBDb25maXJtZWQgZm9yIHpQYXBlciBGaWxlIGFuZCBTRkRDIEF0dGFjaG1lbnQKICAgIHZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgIGRvYy5sYWJlbD1YKGRvYywiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpK1goZG9jLCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKSsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsKICAgIGlmIChYKGRvYywiWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZSIpKSBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19QYXRpZW50X19yLk5hbWUiKSsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsgLy9FUlMyMDAzMTQgQDcwMzM2CiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIGlmICh6RGF0YS5zZklEICAmJiB6RGF0YS5zZklELmluZGV4T2YoIjUwMCIpPT09MCkgewoJICAgIHpEYXRhLnByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHpEYXRhLnNmSUQpOyAKCSAgICBsYWJlbCA9ICJSZWNlaXZlZCBmcm9tICIgKyB6RGF0YS5wcm92aWRlcjsKICAgICAgICBpZiAoekRhdGEuZmFjaWxpdHkpIHsKICAgICAgICAgICAgekRhdGEuZmFjaWxpdHkgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5GYWNpbGl0eV9fci5OYW1lIiwgbnVsbCwgekRhdGEuc2ZJRCk7CiAgICAgICAgICAgIGRvYy5sYWJlbCs9IiBhdCAiK3pEYXRhLmZhY2lsaXR5OwogICAgICAgIH0KCX0KCXZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKCXVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Cgp6RGF0YS5jbGllbnRWYWx1ZT1mdW5jdGlvbihkb2MsdmFsKSB7Ly9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCiAgICB2YWw9dmFsLnJlcGxhY2UoInshZm9ybWF0Tm93fSIsekRhdGEuZm9ybWF0Tm93KTsKICAgIHJldHVybiB2YWw7Cn0KCnpEYXRhLmNsaWVudEZpZWxkcz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxqZCx6ZCkgeyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBpbiBzZXR0aW5nIHRvIGNvbmZpZ3VyZSBuZXcgcmVjb3JkCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKCWlmIChqZCAmJiBqZC5pbmRleE9mKCJ7Iik9PT0wKSB7IAoJICAgIC8veyJUeXBlIjoiRWxpZ2liaWxpdHkiLCJPd25lcklkIjoiMDBHYzAwMDAwMDN2Z3F3IiwiUmVjb3JkVHlwZUlkIjoiMDEyNkEwMDAwMDBKRUtlUUFPIn07CgkgICAgLy9OT1QgQSBHT09EIElERUEgamQ9amQucmVwbGFjZUFsbCgiXCIiLCInIik7IC8vRVJTMTkwODExICM2MTU3MCBIQUNLPwoJICAgIHRyeSB7CiAgICAJICAgIHZhciBqZGF0YT1KU09OLnBhcnNlKGpkKTsgLy9FUlMxOTA4MDUgYmV0dGVyIHRoYW4gZXZhbAogICAgCSAgICBmb3IgKHZhciBuIGluIGpkYXRhKSB7CiAgICAJICAgICAgICB2YXIgdjA9amRhdGFbbl07IAogICAgCSAgICAgICAgdmFyIHY9ekRhdGEuY2xpZW50VmFsdWUoZG9jLHYwKTsgLy9FUlMxOTA4MTEgLHYgbm93ICx2MAogICAgCSAgICAgICAgLy9hbGVydCgiRVJTMTkwODAzLjk3ICIrbisiPSIrdjArIj0iK3YpOyAKICAgIAkgICAgICAgIGFyck9mUGFpcnMucHVzaChuLHYpOyAvL0VSUzE5MDgxMSBhZGRlZCAucHVzaAogICAgCSAgICB9CgkgICAgfSBjYXRjaCAoZSkgewoJICAgICAgICBhbGVydCgiSlNPTiBub3QgaW4gIitqZCsiIEV4Y2VwdGlvbjogIitlKTsgLy9FUlMxOTA4MTEgYWRkZWQgZQoJICAgIH0KCX0KCXJldHVybiBhcnJPZlBhaXJzOwp9CgoKekRhdGEuY2xpZW50Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIXpkLnRyaWFnZVR5cGUgJiYgWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikpIHpkLnRyaWFnZVR5cGU9WChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IC8vRVJTMjAwMzA4CglpZiAoIWxhYmVsKSB7IGxhYmVsPSJJbmRleGVkLSIgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CgkKCWFsZXJ0KCJFUlMyMDAzMDguMTI4IG5ldyBDYXNlIHByb3ZpZGVySWQ9Iit6ZC5wcm92aWRlcklkKyIgcGF0aWVudElkPSIremQucGF0aWVudElkKTsKCQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CglpZiAoemQuY29udGFjdElkKSBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIHpkLmNvbnRhY3RJZCk7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0VSUzE5MDgxNCAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsIFgoZG9jLCJYX1N0YXR1cyIpKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIix6ZC50cmlhZ2VUeXBlKTsgLy9FUlMyMDAzMDgKCS8vRVJTMjAwMjA1IGFyck9mUGFpcnMucHVzaCgiVHlwZSIsICJOZXcgIit6ZC5jbGFzc2lmaWNhdGlvbik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCS8vRVJTMjAwMzA4IGFyck9mUGFpcnMucHVzaCgiVHlwZSIsICJOZXcgIit6ZC5kb2NUeXBlKTsKCWlmICgxPT0xKSB7IC8vRVJTMTcwNTIzICMzNzE2MiBhZnRlciBkcnlydW4KCQkvL2Fyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwiMDEyUTAwMDAwMDA1QWhqIik7IC8vRVJTMTcwNTIzIFByaW9yIEF1dGgKCQlpZiAoemQucHJpb3JpdHkgIT0gIk5vcm1hbCIpIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLHpkLnByaW9yaXR5KTsgIC8vRVJTMTcwNTI0ICMzNzE2MiBwcmlvcml0eSBvbiBDYXNlCgkJZWxzZSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5IiwiTWVkaXVtIik7CgkJYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCJGYXgiKTsgLy9FUlNhMjAwMjA1IHJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLHpkLmNoYW5uZWwpOwoJfQogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX0Nhc2VGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OCiAgICAKICAgIGFsZXJ0KCJFUlMyMDAzMDguMTQzIG5ldyBDYXNlIHByb3ZpZGVySWQ9Iit6ZC5wcm92aWRlcklkKyIgcGF0aWVudElkPSIremQucGF0aWVudElkKTsKICAgIGlmICh6ZC5wcm92aWRlcklkICYmIHpkLnByb3ZpZGVySWQuaW5kZXhPZigiMDAxIik9PTApIHsgYXJyT2ZQYWlycy5wdXNoKCJBY2NvdW50SWQiLCB6ZC5wcm92aWRlcklkKTsgfSAvL0VSUzIwMDMwOAogICAgaWYgKHpkLnByb3ZpZGVySWQgJiYgemQucHJvdmlkZXJJZC5pbmRleE9mKCIwMDMiKT09MCkgeyBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIHpkLnByb3ZpZGVySWQpOyB9IC8vRVJTMjAwMzA4CiAgICBpZiAoemQucGF0aWVudElkICYmIHpkLnBhdGllbnRJZC5pbmRleE9mKCIwMDEiKT09MCkgeyBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIHpkLnBhdGllbnRJZCk7IH0gLy9FUlMyMDAzMDgKICAgIGlmICh6ZC5wYXRpZW50SWQgJiYgemQucGF0aWVudElkLmluZGV4T2YoIjAwMyIpPT0wKSB7IGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgemQucGF0aWVudElkKTsgfSAvL0VSUzIwMDMwOAogICAgaWYgKHpkLnpjaGFubmVsLm93bmVyKSB7IGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLnpjaGFubmVsLm93bmVyKTsgfSAvL0VSUzIwMDMwOAogICAgCgl2YXIgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gY2FzZUlkOwp9OwoKekRhdGEuY2xpZW50UGF0aWVudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJaWYgKHpkLnBhdGllbnRJZCkgeyAvL0VSUzIwMDIwNSAjNjg4MjUgUHJvZ3JhbSBNZW1iZXJzCgkgICAgYWxlcnQoIlBhdGllbnQgYWxyZWFkeSBleGlzdHMgaW4gIit6ZC5wYXRpZW50SWQpOwoJICAgIHJldHVybiB6ZC5wYXRpZW50SWQ7IC8vVE9PRCBnZXQgZnJvbSBYX3BhdGllbnRJZCAgPz8/PwoJfQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7Cgl2YXIgcD0iWlBBUEVSX18iOyAvL0VSUzIwMDIwMiBhc3N1bWUgd29ya2Zsb3cgb24gcmVsYXRlZCByZWNvcmQgdHlwZXMKCWlmICh6RGF0YS5wYXRpZW50VHlwZS5pbmRleE9mKCJfX2MiKSA+IC0xKSB7IHA9IiI7IH0gLy9FUlMyMDAyMDMgdHlwbwoJaWYgKDE9PTApIHsgLy9FUlMyMDAyMDIgc2VlIGlmIHdvcmtmbG93IGVuYWJsZWQKCSAgICBhcnJPZlBhaXJzLnB1c2gocCsibmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJICAgIGFyck9mUGFpcnMucHVzaChwKyJsYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgkgICAgYXJyT2ZQYWlycy5wdXNoKHArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCX0KCiAgICB2YXIgcnQ9WEN1c3RvbVNldHRpbmcoZG9jLCJQYXRpZW50UmVjb3JkVHlwZV9fYyIpOyAvL1RPRE8gaW50byBNUCBFUlMxOTA4MDIgbGlrZSAwMTI2QTAwMDAwMEpFOHlRQUcgb3IgZW1wdHkgdG8gdXNlIGRlZmF1bHQKICAgIC8vaWYgKHJ0KSB7IGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgcnQpOyB9IC8vRVJTMTkwODAzCiAgICAvL1RPRE8gQ29udGFjdCBvciBBY2NvdW50IEVSUzE5MDYyNCBET05FISEgRVJTMTkwODAyCiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudEZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCiAgICBhcnJPZlBhaXJzPVtdOyAvL0VSUzIwMDIwNCB0ZXN0aW5nIHRvIGdldCBpdCBnb2luZwogICAgCiAgICAvL0VSUzIwMDIwMiBuZWVkIHRvIG1ha2UgdGhlIEFjY291bnQgd2l0aCBQYXRpZW50IHJlY29yZFR5cGUgZmlyc3QKICAgIC8vMDEyNDYwMDAwMDBOR0ZZQUE0IGlzIC56cGFwZXIgZm9yIFBhdGllbnQKICAgIHZhciBhciA9IFtdOwogICAgaWYgKHJ0KSB7IGFyLnB1c2goIlJlY29yZFR5cGVJZCIsIHJ0KTsgfSAvL0VSUzE5MDgwMyAvL0VSUzIwMDIyMiAjNjkxNDkgbW92ZWQgZG93biBhbmQgYWRkZWQgZWxzZSAKICAgIGVsc2UgYXIucHVzaCgiUmVjb3JkVHlwZUlkIiwiMDEyNDYwMDAwMDBOR0ZZQUE0Iik7CiAgICBhci5wdXNoKCJGaXJzdE5hbWUiLHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOwogICAgYXIucHVzaCgiTGFzdE5hbWUiLHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICB2YXIgcGF0aWVudE5hbWU9ekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKyIsICIrekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYzsKICAgIGlmICh6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKSBhci5wdXNoKCJQZXJzb25CaXJ0aERhdGUiLHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpOwogICAgdmFyIGFJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgIkFjY291bnQiLCBudWxsLCBhcik7IC8vRVJTMjAwMjA0IHBlcnNvbiBhY2NvdW50IHNvIGRvIG5vdCBzZXQgcGF0aWVudE5hbWUKICAgIAogICAgaWYgKGFJZCAmJiBhSWQgIT0gIk5FVyIgJiYgYUlkLmluZGV4T2YoIkVSUk9SIik9PS0xKSB7CiAgICAgICAgdmFyIHNmSWQgPSAiIjsKICAgIAkKICAgIAkvL0VSUzE5MDgwMyBzcGVjaWZpYyB0byBjbGllbnQgZGF0YSBlbnRyeQogICAgCXZhciBkcSA9IHpEYXRhLmRxOwogICAgCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBzZklkICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BlcnNvbl9BY2NvdW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICIgIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIGRxICsgIik7ICIpOwogICAgfQogICAgcmV0dXJuIHsnRVJST1InOiAncGF0aWVudCBub3QgY3JlYXRlZCd9Cn07Cgp6RGF0YS5jbGllbnRBY2NvdW50PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCgl2YXIgYWNjb3VudElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkFjY291bnQiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gYWNjb3VudElkOwp9OwoKekRhdGEuY2xpZW50UmVjb3JkPWZ1bmN0aW9uKGRvYyxzZlR5cGUsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgeyAvL0VSUzE5MDYyMCBjbGllbnRSZWNvcmQgZ2VuZXJpYwoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7Cgl2YXIgenA9IiI7CglpZiAoIixDYXNlLENvbnRhY3QsQWNjb3VudCxMZWFkLE9wcG9ydHVuaXR5LFpQQVBFUl9felN0YWNrX19jLCIudG9Mb3dlckNhc2UoKS5pbmRleE9mKCIsIitzZlR5cGUudG9Mb3dlckNhc2UoKSsiLCIpPi0xKSB6cD16RGF0YS56cDsKCS8vb25seSBkbyB0aGlzIGlmIHRoZSBmaWVsZHMgZXhpc3QKCWFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCAiZG9jLmRiSUQuUmVjIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCQoJLy9UT0RPIHB1dCBjbGllbnQgc3BlY2lmaWMgZGF0YSB1cGRhdGVzIGhlcmUKCgl2YXIgbmV3SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCBzZlR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsKCXJldHVybiBuZXdJZDsKfTsKCnpEYXRhLmNsaWVudENvbXBsZXRlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHpkKSB7cmV0dXJuIGFyck9mUGFpcnM7fTsgLy9FUlMxOTA2MjUKekRhdGEuY2xpZW50RGVsaXZlcnk9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHsgLy9FUlMyMDAyMDIgVE9ETyBjb25zaWRlciBuZXcgRG9jdW1lbnRfTVZOCiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfTsgLy9FUlMxOTA3MTEgIzYwOTAwIFBBT1MKCnpEYXRhLmNsaWVudENoaWxkU3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMscGFyZW50SWQpIHsgLy9FUlMxOTA4MTAgIzYxNTcwIGJlIHN1cmUgdG8gY2FsbCBvbiBuZXcgY2hpbGQgZG9jCiAgICB2YXIgcGFpcnM9YXJyT2ZQYWlyczsKICAgIC8vbm8gbWVtb3J5IG9mIHN0YWNrIGNyZWF0aW9uIHZhciBwYWlycz16RGF0YS5zdGFja1BhaXJzOwogICAgekRhdGEucmV2aWV3ZWRTdGF0dXM9IlNwbGl0IjsKICAgIC8vRVJTMTkwODEwIFRPRE8/IHBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIkNoaWxkIFN0YWNrIik7CgogICAgcGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLHBhaXJzKTsKICAgIGlmIChYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpIHsgLy9FUlMxOTA4MTEgbm90IGluIGFsbCBNUHMKICAgICAgICBwYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLHBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196Q2hpbGRGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIGNoaWxkIHJlY29yZCB0eXBlIGlkCiAgICB9CiAgICBwYWlycy5wdXNoKCJaUEFQRVJfX1BhcmVudF9fYyIsIHBhcmVudElkKTsKICAgIGlmICh6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZSkgcGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIix6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZSk7CiAgICAKICAgIHBhaXJzLnB1c2goIiIrIlByb2dyYW1fX2MiLHpEYXRhLnByb2dyYW1OYW1lKTsgLy9FUlMyMDAyMDUgVE9ETyBpbiBwYWNrYWdlIGFuZCBpbnRvIGJhc2UgY2FsbAogICAgLy9FUlMyMDAyMjkgaWYgKHpEYXRhLnBhdGllbnRJZCkgcGFpcnMucHVzaCgiUHJvZ3JhbV9NZW1iZXJfTVZOX19jIix6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzIwMDIwNSBQcm9ncmFtX01lbWJlcl9NVk5fX2Mgd2FzIHRoZSBUSUNLRVQhISEKICAgIGFsZXJ0KCJFUlMxOTA4MTEuMTkxIFpQQVBFUl9fUGFyZW50X19jIisgcGFyZW50SWQrIiBjaGlsZCB6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZT0iK3pEYXRhLmNoaWxkU3RhY2tSZWNvcmRUeXBlKTsKICAgIHZhciBjaGlsZFN0YWNrU0ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJaUEFQRVJfX3pTdGFja19fYyIsICJ6U3RhY2sgc3BsaXQgb24gIiArIHpEYXRhLmZvcm1hdE5vdywgcGFpcnMpICsgIiI7CiAgICAKICAgIGlmICghekRhdGEucGF0aWVudElkICYmIFgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudEFjY291bnRfX2MiKSApeyAvL0VSUzIwMDMwOCBIQUNLCiAgICAgICAgekRhdGEucGF0aWVudElkPVgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudEFjY291bnRfX2MiKTsKICAgICAgICBhbGVydCgiRVJTMjAwMzA4IFdIWSBOT1QgaW4gekRhdGE/Iik7CiAgICB9CiAgICBpZiAoekRhdGEucGF0aWVudElkKSB7IC8vRVJTMjAwMzA4IGNyZWF0ZSBhbiBBY3Rpdml0eSBFdmVudCByZWxhdGVkIHRvIHRoZSBQYXRpZW50IChBY2NvdW50KSBmb3IgdGhlIFRpbWVsaW5lCiAgICAgICAgaWYgKCF6RGF0YS5kb2NUeXBlICYmIFgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKSB6RGF0YS5kb2NUeXBlPVgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOwogICAgICAgIHZhciBhcnI9W107CiAgICAgICAgLy9OT1QgU0VMRUNUIEFjY291bnRJZCxBY3Rpdml0eURhdGUsQ3JlYXRlZERhdGUsU3RhdHVzLFN1YmplY3QsVGFza1N1YnR5cGUsV2hhdElkLFdob0lkIEZST00gVGFzayB3aGVyZSBBY3Rpdml0eURhdGUgPiAyMDIwLTAyLTAxCiAgICAgICAgLy9TRUxFQ1QgSWQsQWNjb3VudElkLEFjdGl2aXR5RGF0ZSxDcmVhdGVkRGF0ZSxTdWJqZWN0LFdoYXRJZCxXaG9JZCBGUk9NIEV2ZW50IHdoZXJlIElkID0gJzAwVTRUMDAwMDAydkNoclVBRScKICAgICAgICAvL2Fyci5wdXNoKCJXaG9JZCIsekRhdGEucGF0aWVudElkKTsgLy9FUlMyMDAzMTAgdGltZWxpbmUgdHJpY2sKICAgICAgICBpZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwMSIpPT0wKSB7CiAgICAgICAgICAgIGFyci5wdXNoKCJXaGF0SWQiLHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMjAwMzEwIHRpbWVsaW5lIHRyaWNrCiAgICAgICAgICAgIC8vYXJyLnB1c2goIkFjY291bnRJZCIsekRhdGEucGF0aWVudElkKTsgLy9FUlMyMDAzMTAgdGltZWxpbmUgdHJpY2sKICAgICAgICB9IGVsc2UgaWYgKHpEYXRhLmNhc2VJZCkgYXJyLnB1c2goIldoYXRJZCIsekRhdGEuY2FzZUlkKTsKICAgICAgICBlbHNlIGlmICh6RGF0YS5wcm92aWRlcklkKSBhcnIucHVzaCgiV2hhdElkIix6RGF0YS5wcm92aWRlcklkKTsKICAgICAgICBlbHNlIGFyci5wdXNoKCJXaGF0SWQiLGNoaWxkU3RhY2tTRklkKTsKICAgICAgICAvL2Fyci5wdXNoKCJUYXNrU3VidHlwZSIsIlRhc2siKTsKICAgICAgICBhcnIucHVzaCgiU3ViamVjdCIsekRhdGEuc3RhZ2UgKyAiICIrekRhdGEuZG9jVHlwZSk7CiAgICAgICAgYXJyLnB1c2goIkRlc2NyaXB0aW9uIiwiQ2hlY2sgb3V0ICIrZG9jLmRiSUQpOwogICAgICAgIC8vYXJyLnB1c2goIkFjdGl2aXR5RGF0ZVRpbWUiLHpEYXRhLmZvcm1hdE5vdyk7IC8vRVJTMjAwMzA5IGhhY2tpbmcgYXdheSEKICAgICAgICBhcnIucHVzaCgiQWN0aXZpdHlEYXRlIix6RGF0YS5mb3JtYXROb3cuc3Vic3RyaW5nKDAsMTApKTsKICAgICAgICBhcnIucHVzaCgiUmVjb3JkVHlwZUlkIiwiMDEyNFQwMDAwMDA4YUZtUUFJIik7IC8vRVJTMjAwMzEwIEhBQ0sgZm9yIFRhc2sgb24gQ2FyZVBsYW4KICAgICAgICAvL2Fyci5wdXNoKCJEdXJhdGlvbkluTWludXRlcyIsIjUiKTsKICAgICAgICAvL2Fyci5wdXNoKCJTdGF0dXMiLCJDb21wbGV0ZWQiKTsKICAgICAgICAKICAgICAgICB2YXIgbGFiZWw9IlRpbWVsaW5lICIrekRhdGEuZG9jVHlwZTsKICAgICAgICB2YXIgYWN0SWQgPSBjcmVhdGVTRlJlY29yZChkb2MsICJUYXNrIiwgbnVsbCwgYXJyKTsgLy9FUlMyMDAzMDkgbnVsbCBtZWFucyBubyBOYW1lIGZpZWxkCiAgICAgICAgLy92YXIgYWN0SWQgPSBjcmVhdGVTRlJlY29yZChkb2MsICJFdmVudCIsIG51bGwsIGFycik7IC8vRVJTMjAwMzA5IG51bGwgbWVhbnMgbm8gTmFtZSBmaWVsZAogICAgICAgIGFsZXJ0KCJFUlMyMDAzMDguMjYyIHRpbWVsaW5lIGFjdGl2aXR5ICIrYWN0SWQpOwogICAgfSBlbHNlIHsgYWxlcnQoIkVSUzIwMDMwOC4yNjMgYmUgd29ycmllZCB0aGVyZSBpcyBubyBwYXRpZW50ISIpOyB9CiAgICAKICAgIHJldHVybiBjaGlsZFN0YWNrU0ZJZDsKfTsKCgp6RGF0YS5jbGllbnRTdGFja0NvbXBsZXRlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHpkKSB7IC8vRVJTMjAwMzE0ICM3MDMzNgogICAgaWYgKCF6ZCkgemQ9ekRhdGE7IC8vRVJTMjAwNDA2ICM3MTE1NgogICAgYXJyT2ZQYWlycy5wdXNoKCJUaW1lX0NvbXBsZXRlX0RhdGVfX2MiLHpkLmZvcm1hdE5vdyk7IC8vZm9yIGRhc2hib2FyZAogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn07IC8vRVJTMTkwNjI1CgphbGVydCgiZW5kIGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwNjE1ICM1ODkyMQ=="},"ordinal":1}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client library"); //ERS190803 #52661 from OccFit

zData.maxChannels=3; //ERS190731 #61272 zippi is strongly typed
zData.makeStack=true; //ERS190814 #61511

zData.watermark=""+XCustomSetting(doc,"watermark__c"); //ERS190618 best practice
//alert("ERS190411 wm="+zData.watermark+" ZPAPER__server__c="+XCustomSetting(doc,"ZPAPER__server__c"));
zData.uploadDir = ""+XCustomSetting(doc,"uploadDir__c"); //"alkermesRoot";
zData.patEnrollQueueId = ""+XCustomSetting(doc,"ZPAPER__zStackQueueId__c");//PV200915 //'00G4C000000LkmZ'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
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

if (!zData.childStackRecordType) { //TODO custom setting or deployment?
    zData.childStackRecordType="0120R000001N2oI";
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
    if (X(doc,"X_ZPAPER__Patient__r.Name")) doc.label=X(doc,"X_ZPAPER__Patient__r.Name")+" - "+X(doc,"X_ZPAPER__faxType__c")+" - "+MMddYYYY; //ERS200314 @70336
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
	if (!zd.triageType && X(doc,"X_ZPAPER__faxType__c")) zd.triageType=X(doc,"X_ZPAPER__faxType__c"); //ERS200308
	if (!label) { label="Indexed-" + "-" + zd.triageType + "-" + zd.stackId;}
	
	alert("ERS200308.128 new Case providerId="+zd.providerId+" patientId="+zd.patientId);
	
	//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
	if (zd.contactId) arrOfPairs.push("ContactId", zd.contactId);
	arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields
	arrOfPairs.push("Status", X(doc,"X_Status"));
	arrOfPairs.push("ZPAPER__faxType__c",zd.triageType); //ERS200308
	//ERS200205 arrOfPairs.push("Type", "New "+zd.classification); //JPB 170512 added these workflow fields
	//ERS200308 arrOfPairs.push("Type", "New "+zd.docType);
	if (1==1) { //ERS170523 #37162 after dryrun
		//arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
		if (zd.priority != "Normal") arrOfPairs.push("Priority",zd.priority);  //ERS170524 #37162 priority on Case
		else arrOfPairs.push("Priority","Medium");
		arrOfPairs.push("Origin","Fax"); //ERSa200205 rrOfPairs.push("Origin",zd.channel);
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
        var sfId = "";
    	
    	//ERS190803 specific to client data entry
    	var dq = zData.dq;
    	addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c" + dq + ").val(" + dq + sfId + dq + "); ");
        addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c_Name" + dq + ").val(" + dq + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c + dq + "); ");
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
    //ERS200229 if (zData.patientId) pairs.push("Program_Member_MVN__c",zData.patientId); //ERS200205 Program_Member_MVN__c was the TICKET!!!
    alert("ERS190811.191 ZPAPER__Parent__c"+ parentId+" child zData.childStackRecordType="+zData.childStackRecordType);
    var childStackSFId = createAndAttach(doc, "ZPAPER__zStack__c", "zStack split on " + zData.formatNow, pairs) + "";
    
    if (!zData.patientId && X(doc,"X_ZPAPER__PatientAccount__c") ){ //ERS200308 HACK
        zData.patientId=X(doc,"X_ZPAPER__PatientAccount__c");
        alert("ERS200308 WHY NOT in zData?");
    }
    if (zData.patientId) { //ERS200308 create an Activity Event related to the Patient (Account) for the Timeline
        if (!zData.docType && X(doc,"X_ZPAPER__faxType__c")) zData.docType=X(doc,"X_ZPAPER__faxType__c");
        var arr=[];
        //NOT SELECT AccountId,ActivityDate,CreatedDate,Status,Subject,TaskSubtype,WhatId,WhoId FROM Task where ActivityDate > 2020-02-01
        //SELECT Id,AccountId,ActivityDate,CreatedDate,Subject,WhatId,WhoId FROM Event where Id = '00U4T000002vChrUAE'
        //arr.push("WhoId",zData.patientId); //ERS200310 timeline trick
        if (zData.patientId.indexOf("001")==0) {
            arr.push("WhatId",zData.patientId); //ERS200310 timeline trick
            //arr.push("AccountId",zData.patientId); //ERS200310 timeline trick
        } else if (zData.caseId) arr.push("WhatId",zData.caseId);
        else if (zData.providerId) arr.push("WhatId",zData.providerId);
        else arr.push("WhatId",childStackSFId);
        //arr.push("TaskSubtype","Task");
        arr.push("Subject",zData.stage + " "+zData.docType);
        arr.push("Description","Check out "+doc.dbID);
        //arr.push("ActivityDateTime",zData.formatNow); //ERS200309 hacking away!
        arr.push("ActivityDate",zData.formatNow.substring(0,10));
        arr.push("RecordTypeId","0124T0000008aFmQAI"); //ERS200310 HACK for Task on CarePlan
        //arr.push("DurationInMinutes","5");
        //arr.push("Status","Completed");
        
        var label="Timeline "+zData.docType;
        var actId = createSFRecord(doc, "Task", null, arr); //ERS200309 null means no Name field
        //var actId = createSFRecord(doc, "Event", null, arr); //ERS200309 null means no Name field
        alert("ERS200308.262 timeline activity "+actId);
    } else { alert("ERS200308.263 be worried there is no patient!"); }
    
    return childStackSFId;
};


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
