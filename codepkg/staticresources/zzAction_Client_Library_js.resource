<!--
// Name: Client Library
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: Update static resources PV201125
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-11-25 17:12:40","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCnpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL0VSUzE5MDgxNCAjNjE1MTEKCnpEYXRhLndhdGVybWFyaz0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIndhdGVybWFya19fYyIpOyAvL0VSUzE5MDYxOCBiZXN0IHByYWN0aWNlCi8vYWxlcnQoIkVSUzE5MDQxMSB3bT0iK3pEYXRhLndhdGVybWFyaysiIFpQQVBFUl9fc2VydmVyX19jPSIrWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3NlcnZlcl9fYyIpKTsKekRhdGEudXBsb2FkRGlyID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ1cGxvYWREaXJfX2MiKTsgLy8iYWxrZXJtZXNSb290IjsKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCnpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCi8vVE9ETyB6RGF0YS5rZXl3b3JkTWFwWyJFTlJMIl0gPSJFTlJMOkVucm9sbG1lbnQgRm9ybSI7ICAvL1RPRE8gZ2V0IGZyb20gelN0YWNrIHBpY2tsaXN0cwovL1RPRE8gekRhdGEua2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKLy9FUlMyMDAyMDUgZGVsZXRlZCBkZW1vIGRhdGEgLSBkbyB3aXRoIGN1c3RvbSBzZXR0aW5ncwoKdmFyIGNzPVhEZXBsb3ltZW50SW5mbyhkb2MsICJCdXNpbmVzc19Qcm9jZXNzX19jIik7IC8vRVJTMjAwMjIyIG5lZWQgYm90aCBkZXBsb3ltZW50IGluZm8gYW5kIGNzCi8vYWxlcnQoImNzPSIrY3MpOwppZiAoY3MpIHsKICAgIGlmIChjcy5pbmRleE9mKCJ6Q3VzdG9tU2V0dGluZ3MiKT4tMSkgY3M9WChkb2MsInpDdXN0b21TZXR0aW5ncyIsY3MpOwogICAgYWxlcnQoIkVSUzIwMDIyNSBFVkFMIG9uICIrY3MpOwogICAgaWYgKGNzICE9PSAiIikgZXZhbCgiIitjcyk7IC8vRVJTMjAwMjIyIFRPRE8gSlNPTi5wYXJzZSgpIC8vRVJTMjAwMjI1IGJlZWRzIHRvIGJlIGV2YWwgYnV0IGFsc28gbmVlZHMgdG8gd29yayEhIQogICAgYWxlcnQoIk5vIHRyeSBqdXN0IGRvISIpOwp9CgppZiAoIXpEYXRhLmNoaWxkU3RhY2tSZWNvcmRUeXBlKSB7IC8vVE9ETyBjdXN0b20gc2V0dGluZyBvciBkZXBsb3ltZW50PwogICAgekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGU9IjAxMjE5MDAwMDAwREJRNSI7IC8vUFYyMDExMDIgY2hhbmdlZCBhIHJlY29yZCB0eXBlCn0gLy8gUFYyMDExMTcgV2UgY2FuIGNvbW1lbnQgdGhpcyBhZGRlZCBpbiBDdXN0b20gc2V0dGluZ3MKCnpEYXRhLmNsaWVudEltcG9ydFNPUUw9ZnVuY3Rpb24oZG9jLGZyb21GaWxlKSB7IC8vRVJTMTkwNzA2IGN1c3RvbWl6ZSBpbXBvcnRzIHVzZWQgYnkgQ3JlYXRlIFN0YWNrCiAgICB6RGF0YS5pbXBvcnRlcj1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIkltcG9ydGVyX19jIikudHJpbSgpOwogICAgdmFyIHNmSWQ9IiI7CiAgICB2YXIgcGFydHM9ZnJvbUZpbGUuc3BsaXQoIl8iKTsKICAgIC8vc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQWNjb3VudCIsIHsgIkZheCIgOiBwYXJ0c1szXSB9ICk7CiAgICB6RGF0YS5tYWtlU3RhY2s9dHJ1ZTsgLy9kbyBhbGwgdGhlIHdvcmsgdGhlcmUgYnkgZGVmYXVsdAogICAgcmV0dXJuIHNmSWQ7Cn07CgovL2FsZXJ0KCJ6RGF0YS5jbGllbnRTdGFjayIpOwp6RGF0YS5jbGllbnRTdGFjaz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykgeyAvL3pEYXRhIG9yIHRoaXM/CiAgICB2YXIgenA9ekRhdGEuenA7IGlmICghenApIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwODA1CmlmICh6RGF0YS5yZWNlaXZlZCkgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCB6RGF0YS5mb3JtYXROb3cpOyAvL0VSUzE5MDYxNyBUT0RPIHNhdmUgd2F5IHRvIGRvIHRoaXMKaWYgKHpEYXRhLm93bmVySWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEub3duZXJJZCk7ICAvLyB6Q2hhcnRhIFF1ZXVlICIwMEczNjAwMDAwMkN5VEsiCmlmICh6RGF0YS5jYWxsZXJJZCkgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAppZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKLy9pZiAoemQuemNoYW5uZWwucHJvZHVjdElkKSB7IGFyck9mUGFpcnMucHVzaCgielBhcGVyX1Byb2R1Y3RfX2MiLCB6RGF0YS56Y2hhbm5lbC5wcm9kdWN0SWQpOyB9Ly8gUFYyMDExMDkgZ2V0dGluZyBmcm9tIEN1c3RvbSBzZXR0aW5ncwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCB6RGF0YS5kb2NUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIHZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwogICAgaWYgKCFwYWdlUmFuZ2UpIHBhZ2VSYW5nZT0iMS0iK1goZG9jLCJYX3BhZ2VzIik7CiAgICB2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MsIHBhZ2VSYW5nZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQKICAgIC8vRVJTMTkwODEwIFRPRE8/IGFyck9mUGFpcnMucHVzaCgiWlNUQUNLX19SZWNlaXZlZF9fYyIsIHpEYXRhLmZvcm1hdE5vdyk7CiAgICBhbGVydCgiRVJTMjAwMjEzLjUxIHBhZ2VSYWdlPSIrcGFnZVJhbmdlICsgIiBidXQgcGFnZUNvdW50PSIrcGFnZUNvdW50KTsgLy9FUlMyMDAyMTMgYWxzbyBjYWxsZWQgaW4gbmV3IGluY29taW5nIHN0YWNrCiAgICBpZiAoIVgoZG9jLCJYX2lkeFBhZ2VzIikpIHBhZ2VDb3VudD1YKGRvYywiWF9wYWdlcyIpOyAvL0VSUzIwMDIxMyBUT0RPIGZpeCB6RGF0YS5jb3VudFBhZ2VzKCkKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYWdlc19fYyIsIHBhZ2VDb3VudCk7CiAgIAogICAgLy9FUlMyMDAyMDQgVE9ETyB6U3RhY2suUHJvZ3JhbT8KCiAgICBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNIQVJUQSkgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsgLy9KUEIxOTA0MjYgY2hhbmdlZCB0byBjbGFzc2lmaWNhdGlvbiBmcm9tIHByb2dyYW0KICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiSGlnaCIpOwogICAgfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0FSVEEpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsKICAgIH0gZWxzZSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk5vcm1hbCIpOwogICAgfQogICAKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgKCJDb21tdW5pdHkiID09PSB6RGF0YS5jaGFubmVsID8gekRhdGEuY2hhbm5lbCA6IGRvYy5kZWxpdmVyZWRUbykpOyAvL0pQQjE5MDUyOSBhZGRlZCBzbyBDb21tdW5pdHkgc2hvd3MgdXAgaW4gTWFzdGVyIEludGFrZSBMaXN0CiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykge2Fyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7IH0KICAgIGVsc2UgeyBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IH0KICAgIHpEYXRhLnN0YWNrUGFpcnM9YXJyT2ZQYWlyczsgLy9FUlMxOTA4MTAgIzYxNTcwIGZvciBjaGlsZCBzdGFjayBsYXRlcgogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pTdGFja0ZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04KCnJldHVybiBhcnJPZlBhaXJzOwp9OwoKLy9hbGVydCgiekRhdGEuY2xpZW50RmlsZSIpOwp6RGF0YS5jbGllbnRGaWxlPWZ1bmN0aW9uKGRvYyxzdGFnZSkgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKStYKGRvYywiWF9aUEFQRVJfX0xhc3ROYW1lX19jIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7CiAgICBpZiAoWChkb2MsIlhfWlBBUEVSX19QYXRpZW50X19yLk5hbWUiKSkgZG9jLmxhYmVsPVgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7IC8vRVJTMjAwMzE0IEA3MDMzNgogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICBpZiAoekRhdGEuc2ZJRCAgJiYgekRhdGEuc2ZJRC5pbmRleE9mKCI1MDAiKT09PTApIHsKICAgekRhdGEucHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgekRhdGEuc2ZJRCk7CiAgIGxhYmVsID0gIlJlY2VpdmVkIGZyb20gIiArIHpEYXRhLnByb3ZpZGVyOwogICAgICAgIGlmICh6RGF0YS5mYWNpbGl0eSkgewogICAgICAgICAgICB6RGF0YS5mYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50LkZhY2lsaXR5X19yLk5hbWUiLCBudWxsLCB6RGF0YS5zZklEKTsKICAgICAgICAgICAgZG9jLmxhYmVsKz0iIGF0ICIrekRhdGEuZmFjaWxpdHk7CiAgICAgICAgfQp9CnZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmNsaWVudFZhbHVlPWZ1bmN0aW9uKGRvYyx2YWwpIHsvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgogICAgdmFsPXZhbC5yZXBsYWNlKCJ7IWZvcm1hdE5vd30iLHpEYXRhLmZvcm1hdE5vdyk7CiAgICByZXR1cm4gdmFsOwp9Cgp6RGF0YS5jbGllbnRGaWVsZHM9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsamQsemQpIHsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gaW4gc2V0dGluZyB0byBjb25maWd1cmUgbmV3IHJlY29yZAogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CmlmIChqZCAmJiBqZC5pbmRleE9mKCJ7Iik9PT0wKSB7CiAgIC8veyJUeXBlIjoiRWxpZ2liaWxpdHkiLCJPd25lcklkIjoiMDBHYzAwMDAwMDN2Z3F3IiwiUmVjb3JkVHlwZUlkIjoiMDEyNkEwMDAwMDBKRUtlUUFPIn07CiAgIC8vTk9UIEEgR09PRCBJREVBIGpkPWpkLnJlcGxhY2VBbGwoIlwiIiwiJyIpOyAvL0VSUzE5MDgxMSAjNjE1NzAgSEFDSz8KICAgdHJ5IHsKICAgICAgIHZhciBqZGF0YT1KU09OLnBhcnNlKGpkKTsgLy9FUlMxOTA4MDUgYmV0dGVyIHRoYW4gZXZhbAogICAgICAgZm9yICh2YXIgbiBpbiBqZGF0YSkgewogICAgICAgICAgIHZhciB2MD1qZGF0YVtuXTsKICAgICAgICAgICB2YXIgdj16RGF0YS5jbGllbnRWYWx1ZShkb2MsdjApOyAvL0VSUzE5MDgxMSAsdiBub3cgLHYwCiAgICAgICAgICAgLy9hbGVydCgiRVJTMTkwODAzLjk3ICIrbisiPSIrdjArIj0iK3YpOwogICAgICAgICAgIGFyck9mUGFpcnMucHVzaChuLHYpOyAvL0VSUzE5MDgxMSBhZGRlZCAucHVzaAogICAgICAgfQogICB9IGNhdGNoIChlKSB7CiAgICAgICBhbGVydCgiSlNPTiBub3QgaW4gIitqZCsiIEV4Y2VwdGlvbjogIitlKTsgLy9FUlMxOTA4MTEgYWRkZWQgZQogICB9Cn0KcmV0dXJuIGFyck9mUGFpcnM7Cn0KCgp6RGF0YS5jbGllbnRDYXNlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CmlmICghemQpIHpkPXpEYXRhOwppZiAoIXpkLnRyaWFnZVR5cGUgJiYgWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikpIHpkLnRyaWFnZVR5cGU9WChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IC8vRVJTMjAwMzA4CmlmICghbGFiZWwpIHsgbGFiZWw9IkluZGV4ZWQtIiArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KCmFsZXJ0KCJFUlMyMDAzMDguMTI4IG5ldyBDYXNlIHByb3ZpZGVySWQ9Iit6ZC5wcm92aWRlcklkKyIgcGF0aWVudElkPSIremQucGF0aWVudElkKTsKCi8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwppZiAoemQuY29udGFjdElkKSBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIHpkLmNvbnRhY3RJZCk7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0VSUzE5MDgxNCAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCmFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgWChkb2MsIlhfU3RhdHVzIikpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsemQudHJpYWdlVHlwZSk7IC8vRVJTMjAwMzA4Ci8vRVJTMjAwMjA1IGFyck9mUGFpcnMucHVzaCgiVHlwZSIsICJOZXcgIit6ZC5jbGFzc2lmaWNhdGlvbik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKLy9FUlMyMDAzMDggYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK3pkLmRvY1R5cGUpOwppZiAoMT09MSkgeyAvL0VSUzE3MDUyMyAjMzcxNjIgYWZ0ZXIgZHJ5cnVuCi8vYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCIwMTJRMDAwMDAwMDVBaGoiKTsgLy9FUlMxNzA1MjMgUHJpb3IgQXV0aAppZiAoemQucHJpb3JpdHkgIT0gIk5vcm1hbCIpIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLHpkLnByaW9yaXR5KTsgIC8vRVJTMTcwNTI0ICMzNzE2MiBwcmlvcml0eSBvbiBDYXNlCmVsc2UgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOwphcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsIkZheCIpOyAvL0VSU2EyMDAyMDUgcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsemQuY2hhbm5lbCk7Cn0KICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19DYXNlRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgogICAKICAgIGFsZXJ0KCJFUlMyMDAzMDguMTQzIG5ldyBDYXNlIHByb3ZpZGVySWQ9Iit6ZC5wcm92aWRlcklkKyIgcGF0aWVudElkPSIremQucGF0aWVudElkKTsKICAgIGlmICh6ZC5wcm92aWRlcklkICYmIHpkLnByb3ZpZGVySWQuaW5kZXhPZigiMDAxIik9PTApIHsgYXJyT2ZQYWlycy5wdXNoKCJBY2NvdW50SWQiLCB6ZC5wcm92aWRlcklkKTsgfSAvL0VSUzIwMDMwOAogICAgaWYgKHpkLnByb3ZpZGVySWQgJiYgemQucHJvdmlkZXJJZC5pbmRleE9mKCIwMDMiKT09MCkgeyBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIHpkLnByb3ZpZGVySWQpOyB9IC8vRVJTMjAwMzA4CiAgICBpZiAoemQucGF0aWVudElkICYmIHpkLnBhdGllbnRJZC5pbmRleE9mKCIwMDEiKT09MCkgeyBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIHpkLnBhdGllbnRJZCk7IH0gLy9FUlMyMDAzMDgKICAgIGlmICh6ZC5wYXRpZW50SWQgJiYgemQucGF0aWVudElkLmluZGV4T2YoIjAwMyIpPT0wKSB7IGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgemQucGF0aWVudElkKTsgfSAvL0VSUzIwMDMwOAogICAgaWYgKHpkLnpjaGFubmVsLm93bmVyKSB7IGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLnpjaGFubmVsLm93bmVyKTsgfSAvL0VSUzIwMDMwOAogICAKdmFyIGNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgbGFiZWwsIGFyck9mUGFpcnMpOwpyZXR1cm4gY2FzZUlkOwp9OwoKekRhdGEuY2xpZW50UGF0aWVudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewppZiAoIXpkKSB6ZD16RGF0YTsKaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KaWYgKHpkLnBhdGllbnRJZCkgeyAvL0VSUzIwMDIwNSAjNjg4MjUgUHJvZ3JhbSBNZW1iZXJzCiAgIGFsZXJ0KCJQYXRpZW50IGFscmVhZHkgZXhpc3RzIGluICIremQucGF0aWVudElkKTsKICAgcmV0dXJuIHpkLnBhdGllbnRJZDsgLy9UT09EIGdldCBmcm9tIFhfcGF0aWVudElkICA/Pz8/Cn0KLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CnZhciBwPSJaUEFQRVJfXyI7IC8vRVJTMjAwMjAyIGFzc3VtZSB3b3JrZmxvdyBvbiByZWxhdGVkIHJlY29yZCB0eXBlcwppZiAoekRhdGEucGF0aWVudFR5cGUuaW5kZXhPZigiX19jIikgPiAtMSkgeyBwPSIiOyB9IC8vRVJTMjAwMjAzIHR5cG8KaWYgKDE9PTApIHsgLy9FUlMyMDAyMDIgc2VlIGlmIHdvcmtmbG93IGVuYWJsZWQKICAgYXJyT2ZQYWlycy5wdXNoKHArIm5ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKICAgYXJyT2ZQYWlycy5wdXNoKHArImxhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKICAgYXJyT2ZQYWlycy5wdXNoKHArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKfQoKICAgIHZhciBydD1YQ3VzdG9tU2V0dGluZyhkb2MsIlBhdGllbnRSZWNvcmRUeXBlX19jIik7IC8vVE9ETyBpbnRvIE1QIEVSUzE5MDgwMiBsaWtlIDAxMjZBMDAwMDAwSkU4eVFBRyBvciBlbXB0eSB0byB1c2UgZGVmYXVsdAogICAgLy9pZiAocnQpIHsgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCBydCk7IH0gLy9FUlMxOTA4MDMKICAgIC8vVE9ETyBDb250YWN0IG9yIEFjY291bnQgRVJTMTkwNjI0IERPTkUhISBFUlMxOTA4MDIKICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50RmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgogICAgYXJyT2ZQYWlycz1bXTsgLy9FUlMyMDAyMDQgdGVzdGluZyB0byBnZXQgaXQgZ29pbmcKICAgCiAgICAvL0VSUzIwMDIwMiBuZWVkIHRvIG1ha2UgdGhlIEFjY291bnQgd2l0aCBQYXRpZW50IHJlY29yZFR5cGUgZmlyc3QKICAgIC8vMDEyNDYwMDAwMDBOR0ZZQUE0IGlzIC56cGFwZXIgZm9yIFBhdGllbnQKICAgIHZhciBhciA9IFtdOwogICAgaWYgKHJ0KSB7IGFyLnB1c2goIlJlY29yZFR5cGVJZCIsIHJ0KTsgfSAvL0VSUzE5MDgwMyAvL0VSUzIwMDIyMiAjNjkxNDkgbW92ZWQgZG93biBhbmQgYWRkZWQgZWxzZQogICAgZWxzZSBhci5wdXNoKCJSZWNvcmRUeXBlSWQiLCIwMTI0NjAwMDAwME5HRllBQTQiKTsKICAgIGFyLnB1c2goIkZpcnN0TmFtZSIsekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7CiAgICBhci5wdXNoKCJMYXN0TmFtZSIsekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgIHZhciBwYXRpZW50TmFtZT16RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MrIiwgIit6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jOwogICAgaWYgKHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpIGFyLnB1c2goIlBlcnNvbkJpcnRoRGF0ZSIsekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyk7CiAgICB2YXIgYUlkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiQWNjb3VudCIsIG51bGwsIGFyKTsgLy9FUlMyMDAyMDQgcGVyc29uIGFjY291bnQgc28gZG8gbm90IHNldCBwYXRpZW50TmFtZQogICAKICAgIGlmIChhSWQgJiYgYUlkICE9ICJORVciICYmIGFJZC5pbmRleE9mKCJFUlJPUiIpPT0tMSkgewogICAgICAgIHZhciBzZklkID0gIiI7CiAgIAogICAgLy9FUlMxOTA4MDMgc3BlY2lmaWMgdG8gY2xpZW50IGRhdGEgZW50cnkKICAgIHZhciBkcSA9IHpEYXRhLmRxOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BlcnNvbl9BY2NvdW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHNmSWQgKyBkcSArICIpOyAiKTsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGVyc29uX0FjY291bnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jICsgIiAiICsgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jICsgZHEgKyAiKTsgIik7CiAgICB9CiAgICByZXR1cm4geydFUlJPUic6ICdwYXRpZW50IG5vdCBjcmVhdGVkJ30KfTsKCnpEYXRhLmNsaWVudEFjY291bnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKaWYgKCF6ZCkgemQ9ekRhdGE7CmlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9Ci8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoKdmFyIGFjY291bnRJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJBY2NvdW50IiwgbGFiZWwsIGFyck9mUGFpcnMpOwpyZXR1cm4gYWNjb3VudElkOwp9OwoKekRhdGEuY2xpZW50UmVjb3JkPWZ1bmN0aW9uKGRvYyxzZlR5cGUsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgeyAvL0VSUzE5MDYyMCBjbGllbnRSZWNvcmQgZ2VuZXJpYwppZiAoIXpkKSB6ZD16RGF0YTsKaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CnZhciB6cD0iIjsKaWYgKCIsQ2FzZSxDb250YWN0LEFjY291bnQsTGVhZCxPcHBvcnR1bml0eSxaUEFQRVJfX3pTdGFja19fYywiLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiLCIrc2ZUeXBlLnRvTG93ZXJDYXNlKCkrIiwiKT4tMSkgenA9ekRhdGEuenA7Ci8vb25seSBkbyB0aGlzIGlmIHRoZSBmaWVsZHMgZXhpc3QKYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCAiZG9jLmRiSUQuUmVjIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCi8vVE9ETyBwdXQgY2xpZW50IHNwZWNpZmljIGRhdGEgdXBkYXRlcyBoZXJlCgp2YXIgbmV3SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCBzZlR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsKcmV0dXJuIG5ld0lkOwp9OwoKekRhdGEuY2xpZW50Q29tcGxldGU9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsemQpIHtyZXR1cm4gYXJyT2ZQYWlyczt9OyAvL0VSUzE5MDYyNQp6RGF0YS5jbGllbnREZWxpdmVyeT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykgeyAvL0VSUzIwMDIwMiBUT0RPIGNvbnNpZGVyIG5ldyBEb2N1bWVudF9NVk4KICAgIHJldHVybiBhcnJPZlBhaXJzOwp9OyAvL0VSUzE5MDcxMSAjNjA5MDAgUEFPUwoKekRhdGEuY2xpZW50Q2hpbGRTdGFjaz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxwYXJlbnRJZCkgeyAvL0VSUzE5MDgxMCAjNjE1NzAgYmUgc3VyZSB0byBjYWxsIG9uIG5ldyBjaGlsZCBkb2MKICAgIHZhciBwYWlycz1hcnJPZlBhaXJzOwogICAgLy9ubyBtZW1vcnkgb2Ygc3RhY2sgY3JlYXRpb24gdmFyIHBhaXJzPXpEYXRhLnN0YWNrUGFpcnM7CiAgICB6RGF0YS5yZXZpZXdlZFN0YXR1cz0iU3BsaXQiOwogICAgLy9FUlMxOTA4MTAgVE9ETz8gcGFpcnMucHVzaCgiWlBBUEVSX19TdGF0dXNfX2MiLCAiQ2hpbGQgU3RhY2siKTsKCiAgICBwYWlycz16RGF0YS5jbGllbnRTdGFjayhkb2MscGFpcnMpOwogICAgaWYgKFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196Q2hpbGRGaWVsZHNfX2MiKSkgeyAvL0VSUzE5MDgxMSBub3QgaW4gYWxsIE1QcwogICAgICAgIHBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MscGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pDaGlsZEZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gY2hpbGQgcmVjb3JkIHR5cGUgaWQKICAgIH0KICAgIHBhaXJzLnB1c2goIlpQQVBFUl9fUGFyZW50X19jIiwgcGFyZW50SWQpOwogICAgaWYgKHpEYXRhLmNoaWxkU3RhY2tSZWNvcmRUeXBlKSBwYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLHpEYXRhLmNoaWxkU3RhY2tSZWNvcmRUeXBlKTsgLy8gV2UgY2FuIGNvbW1lbnQgdGhpcyBjb3ogaSBoYXZlIGFkZGVkIHJlY29yZCB0eXBlIGluIEN1c3RvbSBzZXR0aW5ncyAvL1BWMjAxMTE3CiAgIAogICAgLy9wYWlycy5wdXNoKHpEYXRhLnpwKyJQcm9ncmFtX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7IC8vRVJTMjAwMjA1IFRPRE8gaW4gcGFja2FnZSBhbmQgaW50byBiYXNlIGNhbGwgLy9QVjIwMTEwMgogICAgLy9FUlMyMDAyMjkgaWYgKHpEYXRhLnBhdGllbnRJZCkgcGFpcnMucHVzaCgiUHJvZ3JhbV9NZW1iZXJfTVZOX19jIix6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzIwMDIwNSBQcm9ncmFtX01lbWJlcl9NVk5fX2Mgd2FzIHRoZSBUSUNLRVQhISEKICAgIGFsZXJ0KCJFUlMxOTA4MTEuMTkxIFpQQVBFUl9fUGFyZW50X19jIisgcGFyZW50SWQrIiBjaGlsZCB6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZT0iK3pEYXRhLmNoaWxkU3RhY2tSZWNvcmRUeXBlKTsKICAgIHZhciBjaGlsZFN0YWNrU0ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJaUEFQRVJfX3pTdGFja19fYyIsICJ6U3RhY2sgc3BsaXQgb24gIiArIHpEYXRhLmZvcm1hdE5vdywgcGFpcnMpICsgIiI7CiAgIAogICAgaWYgKCF6RGF0YS5wYXRpZW50SWQgJiYgWChkb2MsIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIpICl7IC8vRVJTMjAwMzA4IEhBQ0sKICAgICAgICB6RGF0YS5wYXRpZW50SWQ9WChkb2MsIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIpOwogICAgICAgIGFsZXJ0KCJFUlMyMDAzMDggV0hZIE5PVCBpbiB6RGF0YT8iKTsKICAgIH0KICAgIC8vUFYyMDExMTcgY29tbWVudGVkIGNveiB3ZSBhcmUgbm90IGNyZWF0aW5nIGFueSB0YXNrCiAgICBpZiAoekRhdGEucGF0aWVudElkKSB7IC8vRVJTMjAwMzA4IGNyZWF0ZSBhbiBBY3Rpdml0eSBFdmVudCByZWxhdGVkIHRvIHRoZSBQYXRpZW50IChBY2NvdW50KSBmb3IgdGhlIFRpbWVsaW5lCiAgICAgICAgaWYgKCF6RGF0YS5kb2NUeXBlICYmIFgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKSB6RGF0YS5kb2NUeXBlPVgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOwogICAgICAgIHZhciBhcnI9W107CiAgICAgICAgLy9OT1QgU0VMRUNUIEFjY291bnRJZCxBY3Rpdml0eURhdGUsQ3JlYXRlZERhdGUsU3RhdHVzLFN1YmplY3QsVGFza1N1YnR5cGUsV2hhdElkLFdob0lkIEZST00gVGFzayB3aGVyZSBBY3Rpdml0eURhdGUgPiAyMDIwLTAyLTAxCiAgICAgICAgLy9TRUxFQ1QgSWQsQWNjb3VudElkLEFjdGl2aXR5RGF0ZSxDcmVhdGVkRGF0ZSxTdWJqZWN0LFdoYXRJZCxXaG9JZCBGUk9NIEV2ZW50IHdoZXJlIElkID0gJzAwVTRUMDAwMDAydkNoclVBRScKICAgICAgICAvL2Fyci5wdXNoKCJXaG9JZCIsekRhdGEucGF0aWVudElkKTsgLy9FUlMyMDAzMTAgdGltZWxpbmUgdHJpY2sKICAgICAgICBpZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwMyIpPT0wKSB7IC8vUFYyMDExMTcgIGFkZGVkIGNvbnRhY3QgaW5zdGVkIG9mIDAwMQogICAgICAgICAgICBhcnIucHVzaCgiV2hhdElkIix6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzIwMDMxMCB0aW1lbGluZSB0cmljawogICAgICAgICAgICAvL2Fyci5wdXNoKCJBY2NvdW50SWQiLHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMjAwMzEwIHRpbWVsaW5lIHRyaWNrCiAgICAgICAgfSBlbHNlIGlmICh6RGF0YS5jYXNlSWQpIGFyci5wdXNoKCJXaGF0SWQiLHpEYXRhLmNhc2VJZCk7CiAgICAgICAgZWxzZSBpZiAoekRhdGEucHJvdmlkZXJJZCkgYXJyLnB1c2goIldoYXRJZCIsekRhdGEucHJvdmlkZXJJZCk7CiAgICAgICAgLy9lbHNlIGFyci5wdXNoKCJXaGF0SWQiLGNoaWxkU3RhY2tTRklkKTsgLy9QVjIwMTExNwogICAgICAgIC8vYXJyLnB1c2goIlRhc2tTdWJ0eXBlIiwiVGFzayIpOwogICAgICAgIGFyci5wdXNoKCJTdWJqZWN0Iix6RGF0YS5zdGFnZSArICIgIit6RGF0YS5kb2NUeXBlKTsKICAgICAgICBhcnIucHVzaCgiRGVzY3JpcHRpb24iLCJDaGVjayBvdXQgIitkb2MuZGJJRCk7CiAgICAgICAgLy9hcnIucHVzaCgiQWN0aXZpdHlEYXRlVGltZSIsekRhdGEuZm9ybWF0Tm93KTsgLy9FUlMyMDAzMDkgaGFja2luZyBhd2F5IQogICAgICAgIGFyci5wdXNoKCJBY3Rpdml0eURhdGUiLHpEYXRhLmZvcm1hdE5vdy5zdWJzdHJpbmcoMCwxMCkpOwogICAgICAgIC8vYXJyLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMjUwMDAwMDAwTjJsbkFBQyIpOyAvL0VSUzIwMDMxMCBIQUNLIGZvciBUYXNrIG9uIENhcmVQbGFuIDAxMjRUMDAwMDAwOGFGbVFBSSAvL1BWMjAxMTE2IHVwZGF0ZWQgdGhlIHJlY29yZCB0eXBlCiAgICAgICAgLy9hcnIucHVzaCgiRHVyYXRpb25Jbk1pbnV0ZXMiLCI1Iik7CiAgICAgICAgLy9hcnIucHVzaCgiU3RhdHVzIiwiQ29tcGxldGVkIik7CiAgICAgICAKICAgICAgICB2YXIgbGFiZWw9IlRpbWVsaW5lICIrekRhdGEuZG9jVHlwZTsKICAgICAgICAvL3ZhciBhY3RJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgIlRhc2siLCBudWxsLCBhcnIpOyAvL0VSUzIwMDMwOSBudWxsIG1lYW5zIG5vIE5hbWUgZmllbGQgLy9QVjIwMTExNyBjb21lbnRlZAogICAgICAgIC8vdmFyIGFjdElkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiRXZlbnQiLCBudWxsLCBhcnIpOyAvL0VSUzIwMDMwOSBudWxsIG1lYW5zIG5vIE5hbWUgZmllbGQKICAgICAgIC8vIGFsZXJ0KCJFUlMyMDAzMDguMjYyIHRpbWVsaW5lIGFjdGl2aXR5ICIrYWN0SWQpOyAvL1BWMjAxMTE3IGNvbWVudGVkIGNveiB3ZSBhcmUgbm90IGNyZWF0aW5nIHRhc2sKICAgIH0gZWxzZSB7IGFsZXJ0KCJFUlMyMDAzMDguMjYzIGJlIHdvcnJpZWQgdGhlcmUgaXMgbm8gcGF0aWVudCEiKTsgfSAKICAgCiAgICByZXR1cm4gY2hpbGRTdGFja1NGSWQ7Cn07CgoKekRhdGEuY2xpZW50U3RhY2tDb21wbGV0ZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyx6ZCkgeyAvL0VSUzIwMDMxNCAjNzAzMzYKICAgIGlmICghemQpIHpkPXpEYXRhOyAvL0VSUzIwMDQwNiAjNzExNTYKICAgIGFyck9mUGFpcnMucHVzaCgiVGltZV9Db21wbGV0ZV9EYXRlX19jIix6ZC5mb3JtYXROb3cpOyAvL2ZvciBkYXNoYm9hcmQKICAgIHJldHVybiBhcnJPZlBhaXJzOwp9OyAvL0VSUzE5MDYyNQoKYWxlcnQoImVuZCBjbGllbnQgbGlicmFyeSIpOyAvL0VSUzE5MDYxNSAjNTg5MjEK"},"ordinal":1}

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

if (!zData.childStackRecordType) { //TODO custom setting or deployment?
    zData.childStackRecordType="01219000000DBQ5"; //PV201102 changed a record type
} // PV201117 We can comment this added in Custom settings

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
//if (zd.zchannel.productId) { arrOfPairs.push("zPaper_Product__c", zData.zchannel.productId); }// PV201109 getting from Custom settings
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
    if (zData.childStackRecordType) pairs.push("RecordTypeId",zData.childStackRecordType); // We can comment this coz i have added record type in Custom settings //PV201117
   
    //pairs.push(zData.zp+"Program__c",zData.programName); //ERS200205 TODO in package and into base call //PV201102
    //ERS200229 if (zData.patientId) pairs.push("Program_Member_MVN__c",zData.patientId); //ERS200205 Program_Member_MVN__c was the TICKET!!!
    alert("ERS190811.191 ZPAPER__Parent__c"+ parentId+" child zData.childStackRecordType="+zData.childStackRecordType);
    var childStackSFId = createAndAttach(doc, "ZPAPER__zStack__c", "zStack split on " + zData.formatNow, pairs) + "";
   
    if (!zData.patientId && X(doc,"X_ZPAPER__PatientAccount__c") ){ //ERS200308 HACK
        zData.patientId=X(doc,"X_ZPAPER__PatientAccount__c");
        alert("ERS200308 WHY NOT in zData?");
    }
    //PV201117 commented coz we are not creating any task
    if (zData.patientId) { //ERS200308 create an Activity Event related to the Patient (Account) for the Timeline
        if (!zData.docType && X(doc,"X_ZPAPER__faxType__c")) zData.docType=X(doc,"X_ZPAPER__faxType__c");
        var arr=[];
        //NOT SELECT AccountId,ActivityDate,CreatedDate,Status,Subject,TaskSubtype,WhatId,WhoId FROM Task where ActivityDate > 2020-02-01
        //SELECT Id,AccountId,ActivityDate,CreatedDate,Subject,WhatId,WhoId FROM Event where Id = '00U4T000002vChrUAE'
        //arr.push("WhoId",zData.patientId); //ERS200310 timeline trick
        if (zData.patientId.indexOf("003")==0) { //PV201117  added contact insted of 001
            arr.push("WhatId",zData.patientId); //ERS200310 timeline trick
            //arr.push("AccountId",zData.patientId); //ERS200310 timeline trick
        } else if (zData.caseId) arr.push("WhatId",zData.caseId);
        else if (zData.providerId) arr.push("WhatId",zData.providerId);
        //else arr.push("WhatId",childStackSFId); //PV201117
        //arr.push("TaskSubtype","Task");
        arr.push("Subject",zData.stage + " "+zData.docType);
        arr.push("Description","Check out "+doc.dbID);
        //arr.push("ActivityDateTime",zData.formatNow); //ERS200309 hacking away!
        arr.push("ActivityDate",zData.formatNow.substring(0,10));
        //arr.push("RecordTypeId","01250000000N2lnAAC"); //ERS200310 HACK for Task on CarePlan 0124T0000008aFmQAI //PV201116 updated the record type
        //arr.push("DurationInMinutes","5");
        //arr.push("Status","Completed");
       
        var label="Timeline "+zData.docType;
        //var actId = createSFRecord(doc, "Task", null, arr); //ERS200309 null means no Name field //PV201117 comented
        //var actId = createSFRecord(doc, "Event", null, arr); //ERS200309 null means no Name field
       // alert("ERS200308.262 timeline activity "+actId); //PV201117 comented coz we are not creating task
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
