<!--
// Name: Client Library
// Committer: eric.stephens@zpaper.com
// Update: ERS201018 #77252 update static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-10-18 20:31:27","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCnpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL0VSUzE5MDgxNCAjNjE1MTEKCnpEYXRhLndhdGVybWFyaz0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIndhdGVybWFya19fYyIpOyAvL0VSUzE5MDYxOCBiZXN0IHByYWN0aWNlCi8vYWxlcnQoIkVSUzE5MDQxMSB3bT0iK3pEYXRhLndhdGVybWFyaysiIFpQQVBFUl9fc2VydmVyX19jPSIrWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3NlcnZlcl9fYyIpKTsKekRhdGEudXBsb2FkRGlyID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ1cGxvYWREaXJfX2MiKTsgLy8iYWxrZXJtZXNSb290IjsKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCnpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCi8vVE9ETyB6RGF0YS5rZXl3b3JkTWFwWyJFTlJMIl0gPSJFTlJMOkVucm9sbG1lbnQgRm9ybSI7ICAvL1RPRE8gZ2V0IGZyb20gelN0YWNrIHBpY2tsaXN0cwovL1RPRE8gekRhdGEua2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKLy9FUlMyMDAyMDUgZGVsZXRlZCBkZW1vIGRhdGEgLSBkbyB3aXRoIGN1c3RvbSBzZXR0aW5ncwoKdmFyIGNzPVhEZXBsb3ltZW50SW5mbyhkb2MsICJCdXNpbmVzc19Qcm9jZXNzX19jIik7IC8vRVJTMjAwMjIyIG5lZWQgYm90aCBkZXBsb3ltZW50IGluZm8gYW5kIGNzCi8vYWxlcnQoImNzPSIrY3MpOwppZiAoY3MpIHsKICAgIGlmIChjcy5pbmRleE9mKCJ6Q3VzdG9tU2V0dGluZ3MiKT4tMSkgY3M9WChkb2MsInpDdXN0b21TZXR0aW5ncyIsY3MpOwogICAgYWxlcnQoIkVSUzIwMDIyNSBFVkFMIG9uICIrY3MpOwogICAgaWYgKGNzICE9PSAiIikgZXZhbCgiIitjcyk7IC8vRVJTMjAwMjIyIFRPRE8gSlNPTi5wYXJzZSgpIC8vRVJTMjAwMjI1IGJlZWRzIHRvIGJlIGV2YWwgYnV0IGFsc28gbmVlZHMgdG8gd29yayEhIQogICAgYWxlcnQoIk5vIHRyeSBqdXN0IGRvISIpOwp9CgppZiAoIXpEYXRhLmNoaWxkU3RhY2tSZWNvcmRUeXBlKSB7IC8vVE9ETyBjdXN0b20gc2V0dGluZyBvciBkZXBsb3ltZW50PwogICAgekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGU9IjAxMjBSMDAwMDAxTjJvSSI7Cn0KCnpEYXRhLmNsaWVudEltcG9ydFNPUUw9ZnVuY3Rpb24oZG9jLGZyb21GaWxlKSB7IC8vRVJTMTkwNzA2IGN1c3RvbWl6ZSBpbXBvcnRzIHVzZWQgYnkgQ3JlYXRlIFN0YWNrCiAgICB6RGF0YS5pbXBvcnRlcj1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIkltcG9ydGVyX19jIikudHJpbSgpOwogICAgdmFyIHNmSWQ9IiI7CiAgICB2YXIgcGFydHM9ZnJvbUZpbGUuc3BsaXQoIl8iKTsKICAgIC8vc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQWNjb3VudCIsIHsgIkZheCIgOiBwYXJ0c1szXSB9ICk7CiAgICB6RGF0YS5tYWtlU3RhY2s9dHJ1ZTsgLy9kbyBhbGwgdGhlIHdvcmsgdGhlcmUgYnkgZGVmYXVsdAogICAgcmV0dXJuIHNmSWQ7Cn07CgovL2FsZXJ0KCJ6RGF0YS5jbGllbnRTdGFjayIpOwp6RGF0YS5jbGllbnRTdGFjaz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykgeyAvL3pEYXRhIG9yIHRoaXM/CiAgICB2YXIgenA9ekRhdGEuenA7IGlmICghenApIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwODA1IAoJaWYgKHpEYXRhLnJlY2VpdmVkKSBhcnJPZlBhaXJzLnB1c2goInpTdGFja19SZWNlaXZlZF9fYyIsIHpEYXRhLmZvcm1hdE5vdyk7IC8vRVJTMTkwNjE3IFRPRE8gc2F2ZSB3YXkgdG8gZG8gdGhpcwoJaWYgKHpEYXRhLm93bmVySWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEub3duZXJJZCk7ICAvLyB6Q2hhcnRhIFF1ZXVlICIwMEczNjAwMDAwMkN5VEsiIAoJaWYgKHpEYXRhLmNhbGxlcklkKSBhcnJPZlBhaXJzLnB1c2goInpDYWxsZXJfSURfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7IC8vTVNIMTcwODE3IGFkZGVkCglpZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKCQogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCB6RGF0YS5kb2NUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIHZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwogICAgaWYgKCFwYWdlUmFuZ2UpIHBhZ2VSYW5nZT0iMS0iK1goZG9jLCJYX3BhZ2VzIik7IAogICAgdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLCBwYWdlUmFuZ2UpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IAogICAgLy9FUlMxOTA4MTAgVE9ETz8gYXJyT2ZQYWlycy5wdXNoKCJaU1RBQ0tfX1JlY2VpdmVkX19jIiwgekRhdGEuZm9ybWF0Tm93KTsKICAgIGFsZXJ0KCJFUlMyMDAyMTMuNTEgcGFnZVJhZ2U9IitwYWdlUmFuZ2UgKyAiIGJ1dCBwYWdlQ291bnQ9IitwYWdlQ291bnQpOyAvL0VSUzIwMDIxMyBhbHNvIGNhbGxlZCBpbiBuZXcgaW5jb21pbmcgc3RhY2sKICAgIGlmICghWChkb2MsIlhfaWR4UGFnZXMiKSkgcGFnZUNvdW50PVgoZG9jLCJYX3BhZ2VzIik7IC8vRVJTMjAwMjEzIFRPRE8gZml4IHpEYXRhLmNvdW50UGFnZXMoKQogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhZ2VzX19jIiwgcGFnZUNvdW50KTsKICAgIAogICAgLy9FUlMyMDAyMDQgVE9ETyB6U3RhY2suUHJvZ3JhbT8KCiAgICBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNIQVJUQSkgewogICAgCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IC8vSlBCMTkwNDI2IGNoYW5nZWQgdG8gY2xhc3NpZmljYXRpb24gZnJvbSBwcm9ncmFtCiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7CiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJIaWdoIik7IAogICAgfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0FSVEEpIHsKICAgIAlhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7CQogICAgfSBlbHNlIHsKICAgIAlhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk5vcm1hbCIpOwogICAgfQogICAgCiAgICBhcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsICgiQ29tbXVuaXR5IiA9PT0gekRhdGEuY2hhbm5lbCA/IHpEYXRhLmNoYW5uZWwgOiBkb2MuZGVsaXZlcmVkVG8pKTsgLy9KUEIxOTA1MjkgYWRkZWQgc28gQ29tbXVuaXR5IHNob3dzIHVwIGluIE1hc3RlciBJbnRha2UgTGlzdAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBpZiAoekRhdGEucmV2aWV3ZWRTdGF0dXMpIHthcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyB9IAogICAgZWxzZSB7IGFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgfQogICAgekRhdGEuc3RhY2tQYWlycz1hcnJPZlBhaXJzOyAvL0VSUzE5MDgxMCAjNjE1NzAgZm9yIGNoaWxkIHN0YWNrIGxhdGVyCiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9felN0YWNrRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiAKCXJldHVybiBhcnJPZlBhaXJzOwp9OwoKLy9hbGVydCgiekRhdGEuY2xpZW50RmlsZSIpOwp6RGF0YS5jbGllbnRGaWxlPWZ1bmN0aW9uKGRvYyxzdGFnZSkgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKStYKGRvYywiWF9aUEFQRVJfX0xhc3ROYW1lX19jIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7CiAgICBpZiAoWChkb2MsIlhfWlBBUEVSX19QYXRpZW50X19yLk5hbWUiKSkgZG9jLmxhYmVsPVgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7IC8vRVJTMjAwMzE0IEA3MDMzNgogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICBpZiAoekRhdGEuc2ZJRCAgJiYgekRhdGEuc2ZJRC5pbmRleE9mKCI1MDAiKT09PTApIHsKCSAgICB6RGF0YS5wcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCB6RGF0YS5zZklEKTsgCgkgICAgbGFiZWwgPSAiUmVjZWl2ZWQgZnJvbSAiICsgekRhdGEucHJvdmlkZXI7CiAgICAgICAgaWYgKHpEYXRhLmZhY2lsaXR5KSB7CiAgICAgICAgICAgIHpEYXRhLmZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuRmFjaWxpdHlfX3IuTmFtZSIsIG51bGwsIHpEYXRhLnNmSUQpOwogICAgICAgICAgICBkb2MubGFiZWwrPSIgYXQgIit6RGF0YS5mYWNpbGl0eTsKICAgICAgICB9Cgl9Cgl2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7Cgl1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwoKekRhdGEuY2xpZW50VmFsdWU9ZnVuY3Rpb24oZG9jLHZhbCkgey8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIAogICAgdmFsPXZhbC5yZXBsYWNlKCJ7IWZvcm1hdE5vd30iLHpEYXRhLmZvcm1hdE5vdyk7CiAgICByZXR1cm4gdmFsOwp9Cgp6RGF0YS5jbGllbnRGaWVsZHM9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsamQsemQpIHsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gaW4gc2V0dGluZyB0byBjb25maWd1cmUgbmV3IHJlY29yZAogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoamQgJiYgamQuaW5kZXhPZigieyIpPT09MCkgeyAKCSAgICAvL3siVHlwZSI6IkVsaWdpYmlsaXR5IiwiT3duZXJJZCI6IjAwR2MwMDAwMDAzdmdxdyIsIlJlY29yZFR5cGVJZCI6IjAxMjZBMDAwMDAwSkVLZVFBTyJ9OwoJICAgIC8vTk9UIEEgR09PRCBJREVBIGpkPWpkLnJlcGxhY2VBbGwoIlwiIiwiJyIpOyAvL0VSUzE5MDgxMSAjNjE1NzAgSEFDSz8KCSAgICB0cnkgewogICAgCSAgICB2YXIgamRhdGE9SlNPTi5wYXJzZShqZCk7IC8vRVJTMTkwODA1IGJldHRlciB0aGFuIGV2YWwKICAgIAkgICAgZm9yICh2YXIgbiBpbiBqZGF0YSkgewogICAgCSAgICAgICAgdmFyIHYwPWpkYXRhW25dOyAKICAgIAkgICAgICAgIHZhciB2PXpEYXRhLmNsaWVudFZhbHVlKGRvYyx2MCk7IC8vRVJTMTkwODExICx2IG5vdyAsdjAKICAgIAkgICAgICAgIC8vYWxlcnQoIkVSUzE5MDgwMy45NyAiK24rIj0iK3YwKyI9Iit2KTsgCiAgICAJICAgICAgICBhcnJPZlBhaXJzLnB1c2gobix2KTsgLy9FUlMxOTA4MTEgYWRkZWQgLnB1c2gKICAgIAkgICAgfQoJICAgIH0gY2F0Y2ggKGUpIHsKCSAgICAgICAgYWxlcnQoIkpTT04gbm90IGluICIramQrIiBFeGNlcHRpb246ICIrZSk7IC8vRVJTMTkwODExIGFkZGVkIGUKCSAgICB9Cgl9CglyZXR1cm4gYXJyT2ZQYWlyczsKfQoKCnpEYXRhLmNsaWVudENhc2U9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCF6ZC50cmlhZ2VUeXBlICYmIFgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKSB6ZC50cmlhZ2VUeXBlPVgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOyAvL0VSUzIwMDMwOAoJaWYgKCFsYWJlbCkgeyBsYWJlbD0iSW5kZXhlZC0iICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJCglhbGVydCgiRVJTMjAwMzA4LjEyOCBuZXcgQ2FzZSBwcm92aWRlcklkPSIremQucHJvdmlkZXJJZCsiIHBhdGllbnRJZD0iK3pkLnBhdGllbnRJZCk7CgkKCS8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwoJaWYgKHpkLmNvbnRhY3RJZCkgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCB6ZC5jb250YWN0SWQpOwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCBYKGRvYywiWF9TdGF0dXMiKSk7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsemQudHJpYWdlVHlwZSk7IC8vRVJTMjAwMzA4CgkvL0VSUzIwMDIwNSBhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiTmV3ICIremQuY2xhc3NpZmljYXRpb24pOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgkvL0VSUzIwMDMwOCBhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiTmV3ICIremQuZG9jVHlwZSk7CglpZiAoMT09MSkgeyAvL0VSUzE3MDUyMyAjMzcxNjIgYWZ0ZXIgZHJ5cnVuCgkJLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCgkJaWYgKHpkLnByaW9yaXR5ICE9ICJOb3JtYWwiKSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5Iix6ZC5wcmlvcml0eSk7ICAvL0VSUzE3MDUyNCAjMzcxNjIgcHJpb3JpdHkgb24gQ2FzZQoJCWVsc2UgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOwoJCWFyck9mUGFpcnMucHVzaCgiT3JpZ2luIiwiRmF4Iik7IC8vRVJTYTIwMDIwNSByck9mUGFpcnMucHVzaCgiT3JpZ2luIix6ZC5jaGFubmVsKTsKCX0KICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19DYXNlRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgogICAgCiAgICBhbGVydCgiRVJTMjAwMzA4LjE0MyBuZXcgQ2FzZSBwcm92aWRlcklkPSIremQucHJvdmlkZXJJZCsiIHBhdGllbnRJZD0iK3pkLnBhdGllbnRJZCk7CiAgICBpZiAoemQucHJvdmlkZXJJZCAmJiB6ZC5wcm92aWRlcklkLmluZGV4T2YoIjAwMSIpPT0wKSB7IGFyck9mUGFpcnMucHVzaCgiQWNjb3VudElkIiwgemQucHJvdmlkZXJJZCk7IH0gLy9FUlMyMDAzMDgKICAgIGlmICh6ZC5wcm92aWRlcklkICYmIHpkLnByb3ZpZGVySWQuaW5kZXhPZigiMDAzIik9PTApIHsgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCB6ZC5wcm92aWRlcklkKTsgfSAvL0VSUzIwMDMwOAogICAgaWYgKHpkLnBhdGllbnRJZCAmJiB6ZC5wYXRpZW50SWQuaW5kZXhPZigiMDAxIik9PTApIHsgYXJyT2ZQYWlycy5wdXNoKCJBY2NvdW50SWQiLCB6ZC5wYXRpZW50SWQpOyB9IC8vRVJTMjAwMzA4CiAgICBpZiAoemQucGF0aWVudElkICYmIHpkLnBhdGllbnRJZC5pbmRleE9mKCIwMDMiKT09MCkgeyBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIHpkLnBhdGllbnRJZCk7IH0gLy9FUlMyMDAzMDgKICAgIGlmICh6ZC56Y2hhbm5lbC5vd25lcikgeyBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS56Y2hhbm5lbC5vd25lcik7IH0gLy9FUlMyMDAzMDgKICAgIAoJdmFyIGNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgbGFiZWwsIGFyck9mUGFpcnMpOwoJcmV0dXJuIGNhc2VJZDsKfTsKCnpEYXRhLmNsaWVudFBhdGllbnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KCWlmICh6ZC5wYXRpZW50SWQpIHsgLy9FUlMyMDAyMDUgIzY4ODI1IFByb2dyYW0gTWVtYmVycwoJICAgIGFsZXJ0KCJQYXRpZW50IGFscmVhZHkgZXhpc3RzIGluICIremQucGF0aWVudElkKTsKCSAgICByZXR1cm4gemQucGF0aWVudElkOyAvL1RPT0QgZ2V0IGZyb20gWF9wYXRpZW50SWQgID8/Pz8KCX0KCS8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwoJdmFyIHA9IlpQQVBFUl9fIjsgLy9FUlMyMDAyMDIgYXNzdW1lIHdvcmtmbG93IG9uIHJlbGF0ZWQgcmVjb3JkIHR5cGVzCglpZiAoekRhdGEucGF0aWVudFR5cGUuaW5kZXhPZigiX19jIikgPiAtMSkgeyBwPSIiOyB9IC8vRVJTMjAwMjAzIHR5cG8KCWlmICgxPT0wKSB7IC8vRVJTMjAwMjAyIHNlZSBpZiB3b3JrZmxvdyBlbmFibGVkCgkgICAgYXJyT2ZQYWlycy5wdXNoKHArIm5ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCSAgICBhcnJPZlBhaXJzLnB1c2gocCsibGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJICAgIGFyck9mUGFpcnMucHVzaChwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0VSUzE5MDgxNCAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgl9CgogICAgdmFyIHJ0PVhDdXN0b21TZXR0aW5nKGRvYywiUGF0aWVudFJlY29yZFR5cGVfX2MiKTsgLy9UT0RPIGludG8gTVAgRVJTMTkwODAyIGxpa2UgMDEyNkEwMDAwMDBKRTh5UUFHIG9yIGVtcHR5IHRvIHVzZSBkZWZhdWx0CiAgICAvL2lmIChydCkgeyBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHJ0KTsgfSAvL0VSUzE5MDgwMwogICAgLy9UT0RPIENvbnRhY3Qgb3IgQWNjb3VudCBFUlMxOTA2MjQgRE9ORSEhIEVSUzE5MDgwMgogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX1BhdGllbnRGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIAogICAgYXJyT2ZQYWlycz1bXTsgLy9FUlMyMDAyMDQgdGVzdGluZyB0byBnZXQgaXQgZ29pbmcKICAgIAogICAgLy9FUlMyMDAyMDIgbmVlZCB0byBtYWtlIHRoZSBBY2NvdW50IHdpdGggUGF0aWVudCByZWNvcmRUeXBlIGZpcnN0CiAgICAvLzAxMjQ2MDAwMDAwTkdGWUFBNCBpcyAuenBhcGVyIGZvciBQYXRpZW50CiAgICB2YXIgYXIgPSBbXTsKICAgIGlmIChydCkgeyBhci5wdXNoKCJSZWNvcmRUeXBlSWQiLCBydCk7IH0gLy9FUlMxOTA4MDMgLy9FUlMyMDAyMjIgIzY5MTQ5IG1vdmVkIGRvd24gYW5kIGFkZGVkIGVsc2UgCiAgICBlbHNlIGFyLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMjQ2MDAwMDAwTkdGWUFBNCIpOwogICAgYXIucHVzaCgiRmlyc3ROYW1lIix6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKTsKICAgIGFyLnB1c2goIkxhc3ROYW1lIix6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwogICAgdmFyIHBhdGllbnROYW1lPXpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYysiLCAiK3pEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2M7CiAgICBpZiAoekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYykgYXIucHVzaCgiUGVyc29uQmlydGhEYXRlIix6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsKICAgIHZhciBhSWQgPSBjcmVhdGVTRlJlY29yZChkb2MsICJBY2NvdW50IiwgbnVsbCwgYXIpOyAvL0VSUzIwMDIwNCBwZXJzb24gYWNjb3VudCBzbyBkbyBub3Qgc2V0IHBhdGllbnROYW1lCiAgICAKICAgIGlmIChhSWQgJiYgYUlkICE9ICJORVciICYmIGFJZC5pbmRleE9mKCJFUlJPUiIpPT0tMSkgewogICAgICAgIHZhciBzZklkID0gIiI7CiAgICAJCiAgICAJLy9FUlMxOTA4MDMgc3BlY2lmaWMgdG8gY2xpZW50IGRhdGEgZW50cnkKICAgIAl2YXIgZHEgPSB6RGF0YS5kcTsKICAgIAlhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGVyc29uX0FjY291bnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgc2ZJZCArIGRxICsgIik7ICIpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKICAgIH0KICAgIHJldHVybiB7J0VSUk9SJzogJ3BhdGllbnQgbm90IGNyZWF0ZWQnfQp9OwoKekRhdGEuY2xpZW50QWNjb3VudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0VSUzE5MDgxNCAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgoJdmFyIGFjY291bnRJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJBY2NvdW50IiwgbGFiZWwsIGFyck9mUGFpcnMpOwoJcmV0dXJuIGFjY291bnRJZDsKfTsKCnpEYXRhLmNsaWVudFJlY29yZD1mdW5jdGlvbihkb2Msc2ZUeXBlLGFyck9mUGFpcnMsbGFiZWwsemQpIHsgLy9FUlMxOTA2MjAgY2xpZW50UmVjb3JkIGdlbmVyaWMKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KCS8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwoJdmFyIHpwPSIiOwoJaWYgKCIsQ2FzZSxDb250YWN0LEFjY291bnQsTGVhZCxPcHBvcnR1bml0eSxaUEFQRVJfX3pTdGFja19fYywiLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiLCIrc2ZUeXBlLnRvTG93ZXJDYXNlKCkrIiwiKT4tMSkgenA9ekRhdGEuenA7CgkvL29ubHkgZG8gdGhpcyBpZiB0aGUgZmllbGRzIGV4aXN0CglhcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgImRvYy5kYklELlJlYyIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgkKCS8vVE9ETyBwdXQgY2xpZW50IHNwZWNpZmljIGRhdGEgdXBkYXRlcyBoZXJlCgoJdmFyIG5ld0lkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgc2ZUeXBlLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gbmV3SWQ7Cn07Cgp6RGF0YS5jbGllbnRDb21wbGV0ZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyx6ZCkge3JldHVybiBhcnJPZlBhaXJzO307IC8vRVJTMTkwNjI1CnpEYXRhLmNsaWVudERlbGl2ZXJ5PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzKSB7IC8vRVJTMjAwMjAyIFRPRE8gY29uc2lkZXIgbmV3IERvY3VtZW50X01WTgogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn07IC8vRVJTMTkwNzExICM2MDkwMCBQQU9TCgp6RGF0YS5jbGllbnRDaGlsZFN0YWNrPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHBhcmVudElkKSB7IC8vRVJTMTkwODEwICM2MTU3MCBiZSBzdXJlIHRvIGNhbGwgb24gbmV3IGNoaWxkIGRvYwogICAgdmFyIHBhaXJzPWFyck9mUGFpcnM7CiAgICAvL25vIG1lbW9yeSBvZiBzdGFjayBjcmVhdGlvbiB2YXIgcGFpcnM9ekRhdGEuc3RhY2tQYWlyczsKICAgIHpEYXRhLnJldmlld2VkU3RhdHVzPSJTcGxpdCI7CiAgICAvL0VSUzE5MDgxMCBUT0RPPyBwYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDaGlsZCBTdGFjayIpOwoKICAgIHBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxwYWlycyk7CiAgICBpZiAoWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pDaGlsZEZpZWxkc19fYyIpKSB7IC8vRVJTMTkwODExIG5vdCBpbiBhbGwgTVBzCiAgICAgICAgcGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxwYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBjaGlsZCByZWNvcmQgdHlwZSBpZAogICAgfQogICAgcGFpcnMucHVzaCgiWlBBUEVSX19QYXJlbnRfX2MiLCBwYXJlbnRJZCk7CiAgICBpZiAoekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGUpIHBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGUpOwogICAgCiAgICBwYWlycy5wdXNoKCIiKyJQcm9ncmFtX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7IC8vRVJTMjAwMjA1IFRPRE8gaW4gcGFja2FnZSBhbmQgaW50byBiYXNlIGNhbGwKICAgIC8vRVJTMjAwMjI5IGlmICh6RGF0YS5wYXRpZW50SWQpIHBhaXJzLnB1c2goIlByb2dyYW1fTWVtYmVyX01WTl9fYyIsekRhdGEucGF0aWVudElkKTsgLy9FUlMyMDAyMDUgUHJvZ3JhbV9NZW1iZXJfTVZOX19jIHdhcyB0aGUgVElDS0VUISEhCiAgICBhbGVydCgiRVJTMTkwODExLjE5MSBaUEFQRVJfX1BhcmVudF9fYyIrIHBhcmVudElkKyIgY2hpbGQgekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGU9Iit6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZSk7CiAgICB2YXIgY2hpbGRTdGFja1NGSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCAielN0YWNrIHNwbGl0IG9uICIgKyB6RGF0YS5mb3JtYXROb3csIHBhaXJzKSArICIiOwogICAgCiAgICBpZiAoIXpEYXRhLnBhdGllbnRJZCAmJiBYKGRvYywiWF9aUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIikgKXsgLy9FUlMyMDAzMDggSEFDSwogICAgICAgIHpEYXRhLnBhdGllbnRJZD1YKGRvYywiWF9aUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIik7CiAgICAgICAgYWxlcnQoIkVSUzIwMDMwOCBXSFkgTk9UIGluIHpEYXRhPyIpOwogICAgfQogICAgaWYgKHpEYXRhLnBhdGllbnRJZCkgeyAvL0VSUzIwMDMwOCBjcmVhdGUgYW4gQWN0aXZpdHkgRXZlbnQgcmVsYXRlZCB0byB0aGUgUGF0aWVudCAoQWNjb3VudCkgZm9yIHRoZSBUaW1lbGluZQogICAgICAgIGlmICghekRhdGEuZG9jVHlwZSAmJiBYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSkgekRhdGEuZG9jVHlwZT1YKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsKICAgICAgICB2YXIgYXJyPVtdOwogICAgICAgIC8vTk9UIFNFTEVDVCBBY2NvdW50SWQsQWN0aXZpdHlEYXRlLENyZWF0ZWREYXRlLFN0YXR1cyxTdWJqZWN0LFRhc2tTdWJ0eXBlLFdoYXRJZCxXaG9JZCBGUk9NIFRhc2sgd2hlcmUgQWN0aXZpdHlEYXRlID4gMjAyMC0wMi0wMQogICAgICAgIC8vU0VMRUNUIElkLEFjY291bnRJZCxBY3Rpdml0eURhdGUsQ3JlYXRlZERhdGUsU3ViamVjdCxXaGF0SWQsV2hvSWQgRlJPTSBFdmVudCB3aGVyZSBJZCA9ICcwMFU0VDAwMDAwMnZDaHJVQUUnCiAgICAgICAgLy9hcnIucHVzaCgiV2hvSWQiLHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMjAwMzEwIHRpbWVsaW5lIHRyaWNrCiAgICAgICAgaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMDEiKT09MCkgewogICAgICAgICAgICBhcnIucHVzaCgiV2hhdElkIix6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzIwMDMxMCB0aW1lbGluZSB0cmljawogICAgICAgICAgICAvL2Fyci5wdXNoKCJBY2NvdW50SWQiLHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMjAwMzEwIHRpbWVsaW5lIHRyaWNrCiAgICAgICAgfSBlbHNlIGlmICh6RGF0YS5jYXNlSWQpIGFyci5wdXNoKCJXaGF0SWQiLHpEYXRhLmNhc2VJZCk7CiAgICAgICAgZWxzZSBpZiAoekRhdGEucHJvdmlkZXJJZCkgYXJyLnB1c2goIldoYXRJZCIsekRhdGEucHJvdmlkZXJJZCk7CiAgICAgICAgZWxzZSBhcnIucHVzaCgiV2hhdElkIixjaGlsZFN0YWNrU0ZJZCk7CiAgICAgICAgLy9hcnIucHVzaCgiVGFza1N1YnR5cGUiLCJUYXNrIik7CiAgICAgICAgYXJyLnB1c2goIlN1YmplY3QiLHpEYXRhLnN0YWdlICsgIiAiK3pEYXRhLmRvY1R5cGUpOwogICAgICAgIGFyci5wdXNoKCJEZXNjcmlwdGlvbiIsIkNoZWNrIG91dCAiK2RvYy5kYklEKTsKICAgICAgICAvL2Fyci5wdXNoKCJBY3Rpdml0eURhdGVUaW1lIix6RGF0YS5mb3JtYXROb3cpOyAvL0VSUzIwMDMwOSBoYWNraW5nIGF3YXkhCiAgICAgICAgYXJyLnB1c2goIkFjdGl2aXR5RGF0ZSIsekRhdGEuZm9ybWF0Tm93LnN1YnN0cmluZygwLDEwKSk7CiAgICAgICAgYXJyLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMjRUMDAwMDAwOGFGbVFBSSIpOyAvL0VSUzIwMDMxMCBIQUNLIGZvciBUYXNrIG9uIENhcmVQbGFuCiAgICAgICAgLy9hcnIucHVzaCgiRHVyYXRpb25Jbk1pbnV0ZXMiLCI1Iik7CiAgICAgICAgLy9hcnIucHVzaCgiU3RhdHVzIiwiQ29tcGxldGVkIik7CiAgICAgICAgCiAgICAgICAgdmFyIGxhYmVsPSJUaW1lbGluZSAiK3pEYXRhLmRvY1R5cGU7CiAgICAgICAgdmFyIGFjdElkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiVGFzayIsIG51bGwsIGFycik7IC8vRVJTMjAwMzA5IG51bGwgbWVhbnMgbm8gTmFtZSBmaWVsZAogICAgICAgIC8vdmFyIGFjdElkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiRXZlbnQiLCBudWxsLCBhcnIpOyAvL0VSUzIwMDMwOSBudWxsIG1lYW5zIG5vIE5hbWUgZmllbGQKICAgICAgICBhbGVydCgiRVJTMjAwMzA4LjI2MiB0aW1lbGluZSBhY3Rpdml0eSAiK2FjdElkKTsKICAgIH0gZWxzZSB7IGFsZXJ0KCJFUlMyMDAzMDguMjYzIGJlIHdvcnJpZWQgdGhlcmUgaXMgbm8gcGF0aWVudCEiKTsgfQogICAgaWYgKDE9PT0xICYmIHpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQpIHsgekRhdGEucmVjRG9jSWQ9ekRhdGEuY2xpZW50UmVjZWl2ZWREb2N1bWVudChkb2MsY2hpbGRTdGFja1NGSWQpOyB9IC8vRVJTMjAxMDE4ICM3NzI1MgogICAgcmV0dXJuIGNoaWxkU3RhY2tTRklkOwp9OwoKCnpEYXRhLmNsaWVudFN0YWNrQ29tcGxldGU9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsemQpIHsgLy9FUlMyMDAzMTQgIzcwMzM2CiAgICBpZiAoIXpkKSB6ZD16RGF0YTsgLy9FUlMyMDA0MDYgIzcxMTU2CiAgICBhcnJPZlBhaXJzLnB1c2goIlRpbWVfQ29tcGxldGVfRGF0ZV9fYyIsemQuZm9ybWF0Tm93KTsgLy9mb3IgZGFzaGJvYXJkCiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfTsgLy9FUlMxOTA2MjUKCmFsZXJ0KCJlbmQgY2xpZW50IGxpYnJhcnkiKTsgLy9FUlMxOTA2MTUgIzU4OTIx"},"ordinal":4}

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
    if (1===1 && zData.clientReceivedDocument) { zData.recDocId=zData.clientReceivedDocument(doc,childStackSFId); } //ERS201018 #77252
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
