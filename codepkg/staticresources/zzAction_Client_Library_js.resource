<!--
// Name: Client Library
// Committer: eric.stephens@zpaper.com
// Update: ERS200225 #68825 better init(); ERS200225 #68825 better init()
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-25 21:48:43","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCnpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL0VSUzE5MDgxNCAjNjE1MTEKCnpEYXRhLndhdGVybWFyaz0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIndhdGVybWFya19fYyIpOyAvL0VSUzE5MDYxOCBiZXN0IHByYWN0aWNlCi8vYWxlcnQoIkVSUzE5MDQxMSB3bT0iK3pEYXRhLndhdGVybWFyaysiIFpQQVBFUl9fc2VydmVyX19jPSIrWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3NlcnZlcl9fYyIpKTsKekRhdGEudXBsb2FkRGlyID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ1cGxvYWREaXJfX2MiKTsgLy8iYWxrZXJtZXNSb290IjsKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCnpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCi8vVE9ETyB6RGF0YS5rZXl3b3JkTWFwWyJFTlJMIl0gPSJFTlJMOkVucm9sbG1lbnQgRm9ybSI7ICAvL1RPRE8gZ2V0IGZyb20gelN0YWNrIHBpY2tsaXN0cwovL1RPRE8gekRhdGEua2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKLy9FUlMyMDAyMDUgZGVsZXRlZCBkZW1vIGRhdGEgLSBkbyB3aXRoIGN1c3RvbSBzZXR0aW5ncwoKdmFyIGNzPVhEZXBsb3ltZW50SW5mbyhkb2MsICJCdXNpbmVzc19Qcm9jZXNzX19jIik7IC8vRVJTMjAwMjIyIG5lZWQgYm90aCBkZXBsb3ltZW50IGluZm8gYW5kIGNzCmFsZXJ0KCJjcz0iK2NzKTsKaWYgKGNzKSB7CiAgICBpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsKICAgIGlmIChjcyAhPT0gIiIpIGV2YWwoY3MpOyAvL0VSUzIwMDIyMiBUT0RPIEpTT04ucGFyc2UoKQp9CgoKaWYgKCF6RGF0YS5NVk5Qcm9ncmFtcyB8fCB6RGF0YS5NVk5Qcm9ncmFtcy5sZW5ndGggPT09IDApIHsgLy9FUlMyMDAyMjUgIzY4ODI1IGJldHRlciBpbml0KCkKICAgIHpEYXRhLk1WTlByb2dyYW1zPVtdOwogICAgYWxlcnQoIkVSUzIwMDIyMiBFUlJPUiBEZXBsb3ltZW50IElORk8gbWlzc2luZyBmb3IgTVZOUHJvZ3JhbXMiKTsgLy9FUlMyMDAyMjIKICAgIHpEYXRhLk1WTlByb2dyYW1zWyJQUk9DWVNCSSJdPSJhNDAwUjAwMDAwMFNYZ2kiOyAvLy56cGFwZXIgb3JnCiAgICB6RGF0YS5NVk5Qcm9ncmFtc1siQUNUSU1NVU5FIl09ImE0MDBSMDAwMDAwU1dMVSI7IC8vLnpwYXBlciBvcmcKICAgIHpEYXRhLk1WTlByb2dyYW1zWyJSQVZJQ1RJIl09ImE0MDBSMDAwMDAwU1ZOTiI7IC8vLnpwYXBlciBvcmcKICAgIC8vekRhdGEuTVZOUHJvZ3JhbXNbIkFDVElNTVVORSJdPSJhNDA0NjAwMDAwMFhlQmIiOyAvL2RldiAiYTQwMFIwMDAwMDBTV0xVIjsKICAgIC8vekRhdGEuTVZOUHJvZ3JhbXNbIlBST0NZU0JJIl09ImE0MDQ2MDAwMDAwZ00zdSI7IC8vZGV2ICJhNDAwUjAwMDAwMFNYZ2kiOwogICAgLy96RGF0YS5NVk5Qcm9ncmFtc1siUkFWSUNUSSJdPSJhNDA0NjAwMDAwMDBRVjEiOyAvL2RldiAiYTQwMFIwMDAwMDBTVk5OIjsgLy8uenBhcGVyIG9yZwogICAgLy96RGF0YS5NVk5Qcm9ncmFtc1siS1JZU1RFWFhBIl09ImE0MDQ2MDAwMDAwMExCbyI7Cn0KCmlmICghekRhdGEuTVZOTWVtYmVycyB8fCB6RGF0YS5NVk5NZW1iZXJzLmxlbmd0aCA9PT0gMCkgeyAvL0VSUzIwMDIyNSAjNjg4MjUgYmV0dGVyIGluaXQoKQogICAgekRhdGEuTVZOTWVtYmVycz1bXTsKICAgIGFsZXJ0KCJFUlMyMDAyMjIgRVJST1IgRGVwbG95bWVudCBJTkZPIG1pc3NpbmcgZm9yIE1WTk1lbWJlcnMiKTsgLy9FUlMyMDAyMjIKICAgIHpEYXRhLk1WTk1lbWJlcnNbIkFDVElNTVVORSJdPSIwMTI0NjAwMDAwMTVMeEsiOwogICAgekRhdGEuTVZOTWVtYmVyc1siUFJPQ1lTQkkiXT0iMDEyNDYwMDAwMDE1THhNIjsKICAgIHpEYXRhLk1WTk1lbWJlcnNbIlJBVklDVEkiXT0iMDEyNDYwMDAwMDE1UDlJIjsKICAgIHpEYXRhLk1WTk1lbWJlcnNbIktSWVNURVhYQSJdPSIwMTI0NjAwMDAwMTVMeEwiOwp9CgppZiAoIXpEYXRhLmNoaWxkU3RhY2tSZWNvcmRUeXBlKSB7IC8vVE9ETyBjdXN0b20gc2V0dGluZyBvciBkZXBsb3ltZW50PwogICAgekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGU9IjAxMjBSMDAwMDAxTjJvSSI7Cn0KCmlmIChYKGRvYywiWF9Qcm9ncmFtX01lbWJlcl9NVk5fX2MiKSkgekRhdGEucGF0aWVudElkPVgoZG9jLCJYX1Byb2dyYW1fTWVtYmVyX01WTl9fYyIpOyAvL0VSUzIwMDIwNSAjNjg4MjUgc2VlIHppcHBpIHBhcmFtcyBpbnRvIFgKCnpEYXRhLmNsaWVudEltcG9ydFNPUUw9ZnVuY3Rpb24oZG9jLGZyb21GaWxlKSB7IC8vRVJTMTkwNzA2IGN1c3RvbWl6ZSBpbXBvcnRzIHVzZWQgYnkgQ3JlYXRlIFN0YWNrCiAgICB6RGF0YS5pbXBvcnRlcj1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIkltcG9ydGVyX19jIikudHJpbSgpOwogICAgdmFyIHNmSWQ9IiI7CiAgICB2YXIgcGFydHM9ZnJvbUZpbGUuc3BsaXQoIl8iKTsKICAgIC8vc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQWNjb3VudCIsIHsgIkZheCIgOiBwYXJ0c1szXSB9ICk7CiAgICB6RGF0YS5tYWtlU3RhY2s9dHJ1ZTsgLy9kbyBhbGwgdGhlIHdvcmsgdGhlcmUgYnkgZGVmYXVsdAogICAgcmV0dXJuIHNmSWQ7Cn07CgovL2FsZXJ0KCJ6RGF0YS5jbGllbnRTdGFjayIpOwp6RGF0YS5jbGllbnRTdGFjaz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykgeyAvL3pEYXRhIG9yIHRoaXM/CiAgICB2YXIgenA9ekRhdGEuenA7IGlmICghenApIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwODA1IAoJaWYgKHpEYXRhLnJlY2VpdmVkKSBhcnJPZlBhaXJzLnB1c2goInpTdGFja19SZWNlaXZlZF9fYyIsIHpEYXRhLmZvcm1hdE5vdyk7IC8vRVJTMTkwNjE3IFRPRE8gc2F2ZSB3YXkgdG8gZG8gdGhpcwoJaWYgKHpEYXRhLm93bmVySWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEub3duZXJJZCk7ICAvLyB6Q2hhcnRhIFF1ZXVlICIwMEczNjAwMDAwMkN5VEsiIAoJaWYgKHpEYXRhLmNhbGxlcklkKSBhcnJPZlBhaXJzLnB1c2goInpDYWxsZXJfSURfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7IC8vTVNIMTcwODE3IGFkZGVkCglpZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKCQogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCB6RGF0YS5kb2NUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIHZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwogICAgaWYgKCFwYWdlUmFuZ2UpIHBhZ2VSYW5nZT0iMS0iK1goZG9jLCJYX3BhZ2VzIik7IAogICAgdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLCBwYWdlUmFuZ2UpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IAogICAgLy9FUlMxOTA4MTAgVE9ETz8gYXJyT2ZQYWlycy5wdXNoKCJaU1RBQ0tfX1JlY2VpdmVkX19jIiwgekRhdGEuZm9ybWF0Tm93KTsKICAgIGFsZXJ0KCJFUlMyMDAyMTMuNTEgcGFnZVJhZ2U9IitwYWdlUmFuZ2UgKyAiIGJ1dCBwYWdlQ291bnQ9IitwYWdlQ291bnQpOyAvL0VSUzIwMDIxMyBhbHNvIGNhbGxlZCBpbiBuZXcgaW5jb21pbmcgc3RhY2sKICAgIGlmICghWChkb2MsIlhfaWR4UGFnZXMiKSkgcGFnZUNvdW50PVgoZG9jLCJYX3BhZ2VzIik7IC8vRVJTMjAwMjEzIFRPRE8gZml4IHpEYXRhLmNvdW50UGFnZXMoKQogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhZ2VzX19jIiwgcGFnZUNvdW50KTsKICAgIAogICAgLy9FUlMyMDAyMDQgVE9ETyB6U3RhY2suUHJvZ3JhbT8KCiAgICBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNIQVJUQSkgewogICAgCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IC8vSlBCMTkwNDI2IGNoYW5nZWQgdG8gY2xhc3NpZmljYXRpb24gZnJvbSBwcm9ncmFtCiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7CiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJIaWdoIik7IAogICAgfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0FSVEEpIHsKICAgIAlhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7CQogICAgfSBlbHNlIHsKICAgIAlhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk5vcm1hbCIpOwogICAgfQogICAgCiAgICBhcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsICgiQ29tbXVuaXR5IiA9PT0gekRhdGEuY2hhbm5lbCA/IHpEYXRhLmNoYW5uZWwgOiBkb2MuZGVsaXZlcmVkVG8pKTsgLy9KUEIxOTA1MjkgYWRkZWQgc28gQ29tbXVuaXR5IHNob3dzIHVwIGluIE1hc3RlciBJbnRha2UgTGlzdAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBpZiAoekRhdGEucmV2aWV3ZWRTdGF0dXMpIHthcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyB9IAogICAgZWxzZSB7IGFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgfQogICAgekRhdGEuc3RhY2tQYWlycz1hcnJPZlBhaXJzOyAvL0VSUzE5MDgxMCAjNjE1NzAgZm9yIGNoaWxkIHN0YWNrIGxhdGVyCiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9felN0YWNrRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiAKCXJldHVybiBhcnJPZlBhaXJzOwp9OwoKLy9hbGVydCgiekRhdGEuY2xpZW50RmlsZSIpOwp6RGF0YS5jbGllbnRGaWxlPWZ1bmN0aW9uKGRvYyxzdGFnZSkgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKStYKGRvYywiWF9aUEFQRVJfX0xhc3ROYW1lX19jIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7CiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIGlmICh6RGF0YS5zZklEICAmJiB6RGF0YS5zZklELmluZGV4T2YoIjUwMCIpPT09MCkgewoJICAgIHpEYXRhLnByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHpEYXRhLnNmSUQpOyAKCSAgICBsYWJlbCA9ICJSZWNlaXZlZCBmcm9tICIgKyB6RGF0YS5wcm92aWRlcjsKICAgICAgICBpZiAoekRhdGEuZmFjaWxpdHkpIHsKICAgICAgICAgICAgekRhdGEuZmFjaWxpdHkgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5GYWNpbGl0eV9fci5OYW1lIiwgbnVsbCwgekRhdGEuc2ZJRCk7CiAgICAgICAgICAgIGRvYy5sYWJlbCs9IiBhdCAiK3pEYXRhLmZhY2lsaXR5OwogICAgICAgIH0KCX0KCXZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKCXVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Cgp6RGF0YS5jbGllbnRWYWx1ZT1mdW5jdGlvbihkb2MsdmFsKSB7Ly9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCiAgICB2YWw9dmFsLnJlcGxhY2UoInshZm9ybWF0Tm93fSIsekRhdGEuZm9ybWF0Tm93KTsKICAgIHJldHVybiB2YWw7Cn0KCnpEYXRhLmNsaWVudEZpZWxkcz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxqZCx6ZCkgeyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBpbiBzZXR0aW5nIHRvIGNvbmZpZ3VyZSBuZXcgcmVjb3JkCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKCWlmIChqZCAmJiBqZC5pbmRleE9mKCJ7Iik9PT0wKSB7IAoJICAgIC8veyJUeXBlIjoiRWxpZ2liaWxpdHkiLCJPd25lcklkIjoiMDBHYzAwMDAwMDN2Z3F3IiwiUmVjb3JkVHlwZUlkIjoiMDEyNkEwMDAwMDBKRUtlUUFPIn07CgkgICAgLy9OT1QgQSBHT09EIElERUEgamQ9amQucmVwbGFjZUFsbCgiXCIiLCInIik7IC8vRVJTMTkwODExICM2MTU3MCBIQUNLPwoJICAgIHRyeSB7CiAgICAJICAgIHZhciBqZGF0YT1KU09OLnBhcnNlKGpkKTsgLy9FUlMxOTA4MDUgYmV0dGVyIHRoYW4gZXZhbAogICAgCSAgICBmb3IgKHZhciBuIGluIGpkYXRhKSB7CiAgICAJICAgICAgICB2YXIgdjA9amRhdGFbbl07IAogICAgCSAgICAgICAgdmFyIHY9ekRhdGEuY2xpZW50VmFsdWUoZG9jLHYwKTsgLy9FUlMxOTA4MTEgLHYgbm93ICx2MAogICAgCSAgICAgICAgLy9hbGVydCgiRVJTMTkwODAzLjk3ICIrbisiPSIrdjArIj0iK3YpOyAKICAgIAkgICAgICAgIGFyck9mUGFpcnMucHVzaChuLHYpOyAvL0VSUzE5MDgxMSBhZGRlZCAucHVzaAogICAgCSAgICB9CgkgICAgfSBjYXRjaCAoZSkgewoJICAgICAgICBhbGVydCgiSlNPTiBub3QgaW4gIitqZCsiIEV4Y2VwdGlvbjogIitlKTsgLy9FUlMxOTA4MTEgYWRkZWQgZQoJICAgIH0KCX0KCXJldHVybiBhcnJPZlBhaXJzOwp9CgoKekRhdGEuY2xpZW50Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPSJJbmRleGVkLSIgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCWlmICh6ZC5jb250YWN0SWQpIGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgemQuY29udGFjdElkKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgWChkb2MsIlhfU3RhdHVzIikpOwoJLy9FUlMyMDAyMDUgYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK3pkLmNsYXNzaWZpY2F0aW9uKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK3pkLmRvY1R5cGUpOwoJaWYgKDE9PTEpIHsgLy9FUlMxNzA1MjMgIzM3MTYyIGFmdGVyIGRyeXJ1bgoJCS8vYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCIwMTJRMDAwMDAwMDVBaGoiKTsgLy9FUlMxNzA1MjMgUHJpb3IgQXV0aAoJCWlmICh6ZC5wcmlvcml0eSAhPSAiTm9ybWFsIikgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsemQucHJpb3JpdHkpOyAgLy9FUlMxNzA1MjQgIzM3MTYyIHByaW9yaXR5IG9uIENhc2UKCQllbHNlIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLCJNZWRpdW0iKTsKCQlhcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsIkZheCIpOyAvL0VSU2EyMDAyMDUgcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsemQuY2hhbm5lbCk7Cgl9CiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fQ2FzZUZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCgl2YXIgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gY2FzZUlkOwp9OwoKekRhdGEuY2xpZW50UGF0aWVudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJaWYgKCF6ZC5wYXRpZW50SWQgJiYgWChkb2MsIlhfUHJvZ3JhbV9NZW1iZXJfTVZOX19jIikpIHsKCSAgICB6ZC5wYXRpZW50SWQ9ekRhdGEucGF0aWVudElkPVgoZG9jLCJYX1Byb2dyYW1fTWVtYmVyX01WTl9fYyIpOwoJICAgIGFsZXJ0KCJFUlMyMDAyMDUgcmVjb3ZlcmVkICIrWChkb2MsIlhfUHJvZ3JhbV9NZW1iZXJfTVZOX19jIikpOwoJfQoJaWYgKHpkLnBhdGllbnRJZCkgeyAvL0VSUzIwMDIwNSAjNjg4MjUgUHJvZ3JhbSBNZW1iZXJzCgkgICAgYWxlcnQoIlBhdGllbnQgYWxyZWFkeSBleGlzdHMgaW4gIit6ZC5wYXRpZW50SWQpOwoJICAgIHJldHVybiB6ZC5wYXRpZW50SWQ7IC8vVE9PRCBnZXQgZnJvbSBYX3BhdGllbnRJZCAgPz8/PwoJfQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7Cgl2YXIgcD0iWlBBUEVSX18iOyAvL0VSUzIwMDIwMiBhc3N1bWUgd29ya2Zsb3cgb24gcmVsYXRlZCByZWNvcmQgdHlwZXMKCWlmICh6RGF0YS5wYXRpZW50VHlwZS5pbmRleE9mKCJfX2MiKSA+IC0xKSB7IHA9IiI7IH0gLy9FUlMyMDAyMDMgdHlwbwoJaWYgKDE9PTApIHsgLy9FUlMyMDAyMDIgc2VlIGlmIHdvcmtmbG93IGVuYWJsZWQKCSAgICBhcnJPZlBhaXJzLnB1c2gocCsibmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJICAgIGFyck9mUGFpcnMucHVzaChwKyJsYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgkgICAgYXJyT2ZQYWlycy5wdXNoKHArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCX0KCiAgICB2YXIgcnQ9WEN1c3RvbVNldHRpbmcoZG9jLCJQYXRpZW50UmVjb3JkVHlwZV9fYyIpOyAvL1RPRE8gaW50byBNUCBFUlMxOTA4MDIgbGlrZSAwMTI2QTAwMDAwMEpFOHlRQUcgb3IgZW1wdHkgdG8gdXNlIGRlZmF1bHQKICAgIC8vaWYgKHJ0KSB7IGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgcnQpOyB9IC8vRVJTMTkwODAzCiAgICAvL1RPRE8gQ29udGFjdCBvciBBY2NvdW50IEVSUzE5MDYyNCBET05FISEgRVJTMTkwODAyCiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudEZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCiAgICBhcnJPZlBhaXJzPVtdOyAvL0VSUzIwMDIwNCB0ZXN0aW5nIHRvIGdldCBpdCBnb2luZwogICAgCiAgICAvL0VSUzIwMDIwMiBuZWVkIHRvIG1ha2UgdGhlIEFjY291bnQgd2l0aCBQYXRpZW50IHJlY29yZFR5cGUgZmlyc3QKICAgIC8vMDEyNDYwMDAwMDBOR0ZZQUE0IGlzIC56cGFwZXIgZm9yIFBhdGllbnQKICAgIHZhciBhciA9IFtdOwogICAgaWYgKHJ0KSB7IGFyLnB1c2goIlJlY29yZFR5cGVJZCIsIHJ0KTsgfSAvL0VSUzE5MDgwMyAvL0VSUzIwMDIyMiAjNjkxNDkgbW92ZWQgZG93biBhbmQgYWRkZWQgZWxzZSAKICAgIGVsc2UgYXIucHVzaCgiUmVjb3JkVHlwZUlkIiwiMDEyNDYwMDAwMDBOR0ZZQUE0Iik7CiAgICBhci5wdXNoKCJGaXJzdE5hbWUiLHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOwogICAgYXIucHVzaCgiTGFzdE5hbWUiLHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICB2YXIgcGF0aWVudE5hbWU9ekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKyIsICIrekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYzsKICAgIGlmICh6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKSBhci5wdXNoKCJQZXJzb25CaXJ0aERhdGUiLHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpOwogICAgdmFyIGFJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgIkFjY291bnQiLCBudWxsLCBhcik7IC8vRVJTMjAwMjA0IHBlcnNvbiBhY2NvdW50IHNvIGRvIG5vdCBzZXQgcGF0aWVudE5hbWUKICAgIAogICAgaWYgKGFJZCAmJiBhSWQgIT0gIk5FVyIgJiYgYUlkLmluZGV4T2YoIkVSUk9SIik9PS0xKSB7CiAgICAgICAgLy9wcm9ncmFtIGFuZCBwcm9ncmFtIG1lbWJlcgogICAgICAgIHZhciBtcnQ9ekRhdGEuTVZOUHJvZ3JhbXNbekRhdGEucHJvZ3JhbU5hbWVdOyAvL3pEYXRhLk1WTlByb2dyYW1zWyJBQ1RJTU1VTkUiXT0iYTQwMFIwMDAwMDBTV0xVIjsgLy9FUlMyMDAyMDcgcHJvZ3JhbWUgdHlwbwogICAgICAgIGlmICghbXJ0KSB7IG1ydD0iYTQwMFIwMDAwMDBTV0xVIjsgIGFsZXJ0KCJFUlJPUjogekRhdGEuTVZOUHJvZ3JhbXNbIit6RGF0YS5wcm9ncmFtTmFtZSsiXSBub3QgZGVmaW5lZCBzbyB1c2luZyAiK21ydCk7IH0KICAgICAgICAvL3pEYXRhLk1WTlByb2dyYW1zWyJQUk9DWVNCSSJdPSJhNDAwUjAwMDAwMFNYZ2kiOwoKICAgICAgICB2YXIgc2ZJZCA9ICIiOwogICAgCQogICAgICAgIGlmIChtcnQpIGFyck9mUGFpcnMucHVzaCgiUHJvZ3JhbV9NVk5fX2MiLG1ydCk7CiAgICAgICAgaWYgKGFJZCkgYXJyT2ZQYWlycy5wdXNoKCJNZW1iZXJfTVZOX19jIixhSWQpOwogICAgICAgIHZhciBwbXJ0PXpEYXRhLk1WTk1lbWJlcnNbekRhdGEucHJvZ3JhbU5hbWVdOyAvL0VSUzIwMDIyMiAjNjY2ODYKICAgICAgICBpZiAocG1ydCkgeyBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHBtcnQpOyB9IC8vRVJTMjAwMjIyCiAgICAJaWYgKG1ydCAmJiBhSWQpIHsKICAgIAkgICAgaWYgKCF6RGF0YS5sYWJlbCkgekRhdGEubGFiZWw9ekRhdGEuZG9jVHlwZTsKICAgIAkgICAgc2ZJZD1jcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgekRhdGEubGFiZWwsIGFyck9mUGFpcnMpOyAvL0VSUzE5MDgwMyAjNjEyNzIgLy9FUlMyMDAyMDQgUE1fTVZOIGRvZXMgbm90IGhhdmUgYSBOYW1lCiAgICAJICAgIGlmIChzZklkKSB6RGF0YS5wYXRpZW50SWQ9c2ZJZDsKICAgIAl9CiAgICAJLy9FUlMxOTA4MDMgc3BlY2lmaWMgdG8gY2xpZW50IGRhdGEgZW50cnkKICAgIAl2YXIgZHEgPSB6RGF0YS5kcTsKICAgIAkvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBzZklkICsgZHEgKyAiKTsgIik7CiAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGVyc29uX0FjY291bnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jICsgIiAiICsgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jICsgZHEgKyAiKTsgIik7CiAgICAJdmFyIHI9IiI7CiAgICAJaWYgKHNmSWQpIHsKICAgIAkgICAgdmFyIHBOYW1lPSJQTS0iK3pEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiXyIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2M7CiAgICAJICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3BhdGllbnRJZCIsIHNmSWQpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19QYXRpZW50IixzZklkKTsgLy9FUlMyMDAyMDUgVE9ETyB1c2UgdGhpcyBpbnN0ZWFkIG9mIFhfcGF0aWVudElkIGZyb20gdGhlIEluZGV4IGFjdGlvbgogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfUHJvZ3JhbV9NZW1iZXJfTVZOX19jIixzZklkKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX1Byb2dyYW1fTWVtYmVyX01WTl9fY19OYW1lIixwTmFtZSk7CgkgICAgICAgIHI9dXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoJICAgICAgICBpZiAoIXpEYXRhLnN0YWNrSWQpIHsgekRhdGEuc3RhY2tJZD16RGF0YS5zZklkOyBhbGVydCgiUGF0Y2hlZCB6RGF0YS5zdGFja0lkPSIrekRhdGEuc2ZJZCk7IH0KCSAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlByb2dyYW1fTWVtYmVyX01WTl9fYyIsIHNmSWQpOwogICAgICAgICAgICAvL0RPIE5PVCBETyBUSElTIGlmIChtcnQpIGFyck9mUGFpcnMucHVzaCgiUHJvZ3JhbV9NVk5fX2MiLG1ydCk7CiAgICAgICAgICAgIHI9dXBkYXRlU0ZSZWNvcmQoZG9jLCJaUEFQRVJfX3pTdGFja19fYyIsekRhdGEuc3RhY2tJZCxhcnJPZlBhaXJzKTsKICAgICAgICAgICAgYWxlcnQoIlVwZGF0aW5nIHpTdGFjayB3aXRoIFByb2dyYW1fTWVtYmVyX01WTl9fYz0iK3NmSWQrIiByPSIrcisiIHN0YWNrSWQ9Iit6RGF0YS5zdGFja0lkKTsKICAgICAgICAgICAgCiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQcm9ncmFtX01lbWJlcl9NVk5fX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgc2ZJZCArIGRxICsgIik7ICIpOyAvL0VSUzIwMDIwNCBzZXQgdGhlIG5ldyBQTQogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUHJvZ3JhbV9NZW1iZXJfTVZOX19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgcE5hbWUgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgCiAgICAJICAgIHJldHVybiBzZklkOwogICAgCX0KICAgIH0KICAgIHJldHVybiB7J0VSUk9SJzogJ3BhdGllbnQgbm90IGNyZWF0ZWQnfQp9OwoKekRhdGEuY2xpZW50QWNjb3VudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0VSUzE5MDgxNCAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgoJdmFyIGFjY291bnRJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJBY2NvdW50IiwgbGFiZWwsIGFyck9mUGFpcnMpOwoJcmV0dXJuIGFjY291bnRJZDsKfTsKCnpEYXRhLmNsaWVudFJlY29yZD1mdW5jdGlvbihkb2Msc2ZUeXBlLGFyck9mUGFpcnMsbGFiZWwsemQpIHsgLy9FUlMxOTA2MjAgY2xpZW50UmVjb3JkIGdlbmVyaWMKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KCS8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwoJdmFyIHpwPSIiOwoJaWYgKCIsQ2FzZSxDb250YWN0LEFjY291bnQsTGVhZCxPcHBvcnR1bml0eSxaUEFQRVJfX3pTdGFja19fYywiLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiLCIrc2ZUeXBlLnRvTG93ZXJDYXNlKCkrIiwiKT4tMSkgenA9ekRhdGEuenA7CgkvL29ubHkgZG8gdGhpcyBpZiB0aGUgZmllbGRzIGV4aXN0CglhcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgImRvYy5kYklELlJlYyIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgkKCS8vVE9ETyBwdXQgY2xpZW50IHNwZWNpZmljIGRhdGEgdXBkYXRlcyBoZXJlCgoJdmFyIG5ld0lkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgc2ZUeXBlLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gbmV3SWQ7Cn07Cgp6RGF0YS5jbGllbnRDb21wbGV0ZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyx6ZCkge3JldHVybiBhcnJPZlBhaXJzO307IC8vRVJTMTkwNjI1CnpEYXRhLmNsaWVudERlbGl2ZXJ5PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzKSB7IC8vRVJTMjAwMjAyIFRPRE8gY29uc2lkZXIgbmV3IERvY3VtZW50X01WTgogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn07IC8vRVJTMTkwNzExICM2MDkwMCBQQU9TCgp6RGF0YS5jbGllbnRDaGlsZFN0YWNrPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHBhcmVudElkKSB7IC8vRVJTMTkwODEwICM2MTU3MCBiZSBzdXJlIHRvIGNhbGwgb24gbmV3IGNoaWxkIGRvYwogICAgdmFyIHBhaXJzPWFyck9mUGFpcnM7CiAgICAvL25vIG1lbW9yeSBvZiBzdGFjayBjcmVhdGlvbiB2YXIgcGFpcnM9ekRhdGEuc3RhY2tQYWlyczsKICAgIHpEYXRhLnJldmlld2VkU3RhdHVzPSJTcGxpdCI7CiAgICAvL0VSUzE5MDgxMCBUT0RPPyBwYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDaGlsZCBTdGFjayIpOwoKICAgIHBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxwYWlycyk7CiAgICBpZiAoWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pDaGlsZEZpZWxkc19fYyIpKSB7IC8vRVJTMTkwODExIG5vdCBpbiBhbGwgTVBzCiAgICAgICAgcGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxwYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBjaGlsZCByZWNvcmQgdHlwZSBpZAogICAgfQogICAgcGFpcnMucHVzaCgiWlBBUEVSX19QYXJlbnRfX2MiLCBwYXJlbnRJZCk7CiAgICBpZiAoekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGUpIHBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGUpOwogICAgcGFpcnMucHVzaCgiIisiUHJvZ3JhbV9fYyIsekRhdGEucHJvZ3JhbU5hbWUpOyAvL0VSUzIwMDIwNSBUT0RPIGluIHBhY2thZ2UgYW5kIGludG8gYmFzZSBjYWxsCiAgICBpZiAoekRhdGEucGF0aWVudElkKSBwYWlycy5wdXNoKCJQcm9ncmFtX01lbWJlcl9NVk5fX2MiLHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMjAwMjA1IFByb2dyYW1fTWVtYmVyX01WTl9fYyB3YXMgdGhlIFRJQ0tFVCEhIQogICAgYWxlcnQoIkVSUzE5MDgxMS4xOTEgWlBBUEVSX19QYXJlbnRfX2MiKyBwYXJlbnRJZCsiIGNoaWxkIHpEYXRhLmNoaWxkU3RhY2tSZWNvcmRUeXBlPSIrekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGUpOwogICAgdmFyIGNoaWxkU3RhY2tTRklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIlpQQVBFUl9felN0YWNrX19jIiwgInpTdGFjayBzcGxpdCBvbiAiICsgekRhdGEuZm9ybWF0Tm93LCBwYWlycykgKyAiIjsKICAgIAogICAgaWYgKHpEYXRhLmNhc2VJZCB8fCB6RGF0YS5wYXRpZW50SWQpIHsgLy9FUlMyMDAxMjUKICAgICAgICB2YXIgYXJyT2ZQYWlyczIgPSBbXTsKICAgICAgICB2YXIgc2F2ZUlkPXpEYXRhLm1Eb2NJZDsKICAgICAgICBpZiAoekRhdGEuY2FzZUlkKSB6RGF0YS5tRG9jSWQ9ekRhdGEubmV3RG9jdW1lbnQoZG9jLCBhcnJPZlBhaXJzMiwiIix6RGF0YS5jYXNlSWQpOwogICAgICAgIGlmICh6RGF0YS5wYXRpZW50SWQpIHpEYXRhLm1Eb2NJZD16RGF0YS5uZXdEb2N1bWVudChkb2MsIGFyck9mUGFpcnMyLCIiLHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMjAwMjAyIGFkZGVkIHBhdGllbnRJZCBEb2N1bWVudF9NVk4KICAgICAgICBpZiAoc2F2ZUlkICYmICF6RGF0YS5tRG9jSWQpIHsgekRhdGEubURvY0lkPXNhdmVJZDsgYWxlcnQoIldBUk5JTkc6IG5ld0RvY3VtZW50IHRyb3VibGUuICBSZXN0b3JpbmcgIit6RGF0YS5tRG9jSWQpOyB9CiAgICAgICAgYWxlcnQoIkVSUzIwMDEyNSBtRG9jSWQ9Iit6RGF0YS5tRG9jSWQpOwogICAgfSBlbHNlIHsKICAgICAgICBhbGVydCgiRVJTMjAwMTI1IG5vIGNhc2Ugb3IgcGF0aWVudCBpbiAiK3pEYXRhKTsgICAKICAgIH0KICAgIHJldHVybiBjaGlsZFN0YWNrU0ZJZDsKfTsKCmFsZXJ0KCJlbmQgY2xpZW50IGxpYnJhcnkiKTsgLy9FUlMxOTA2MTUgIzU4OTIx"},"ordinal":3}

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
alert("cs="+cs);
if (cs) {
    if (cs.indexOf("zCustomSettings")>-1) cs=X(doc,"zCustomSettings",cs);
    if (cs !== "") eval(cs); //ERS200222 TODO JSON.parse()
}


if (!zData.MVNPrograms || zData.MVNPrograms.length === 0) { //ERS200225 #68825 better init()
    zData.MVNPrograms=[];
    alert("ERS200222 ERROR Deployment INFO missing for MVNPrograms"); //ERS200222
    zData.MVNPrograms["PROCYSBI"]="a400R000000SXgi"; //.zpaper org
    zData.MVNPrograms["ACTIMMUNE"]="a400R000000SWLU"; //.zpaper org
    zData.MVNPrograms["RAVICTI"]="a400R000000SVNN"; //.zpaper org
    //zData.MVNPrograms["ACTIMMUNE"]="a4046000000XeBb"; //dev "a400R000000SWLU";
    //zData.MVNPrograms["PROCYSBI"]="a4046000000gM3u"; //dev "a400R000000SXgi";
    //zData.MVNPrograms["RAVICTI"]="a40460000000QV1"; //dev "a400R000000SVNN"; //.zpaper org
    //zData.MVNPrograms["KRYSTEXXA"]="a40460000000LBo";
}

if (!zData.MVNMembers || zData.MVNMembers.length === 0) { //ERS200225 #68825 better init()
    zData.MVNMembers=[];
    alert("ERS200222 ERROR Deployment INFO missing for MVNMembers"); //ERS200222
    zData.MVNMembers["ACTIMMUNE"]="012460000015LxK";
    zData.MVNMembers["PROCYSBI"]="012460000015LxM";
    zData.MVNMembers["RAVICTI"]="012460000015P9I";
    zData.MVNMembers["KRYSTEXXA"]="012460000015LxL";
}

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
