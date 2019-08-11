<!--
// Name: Client Library
// Committer: eric.stephens@zpaper.com
// Update: parentId passed in
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-08-11 23:36:18","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCgp6RGF0YS53YXRlcm1hcms9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ3YXRlcm1hcmtfX2MiKTsgLy9FUlMxOTA2MTggYmVzdCBwcmFjdGljZQovL2FsZXJ0KCJFUlMxOTA0MTEgd209Iit6RGF0YS53YXRlcm1hcmsrIiBaUEFQRVJfX3NlcnZlcl9fYz0iK1hDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19zZXJ2ZXJfX2MiKSk7CnpEYXRhLnVwbG9hZERpciA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywidXBsb2FkRGlyX19jIik7IC8vImFsa2VybWVzUm9vdCI7CnpEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInBhdGllbnRRdWV1ZUlkX19jIik7IC8vJzAwRzRDMDAwMDAwTGttWic7IC8vaW5zZXJ0IHRoZSBRdWV1ZSBJRCBvZiB0aGUgZGVzaXJlZCBvd25lcnNoaXAgcXVldWUuIFVwZGF0ZSB3aGVuIG1pZ3JhdGluZyBiZXR3ZWVuIGVudmlyb25tZW50cy4gTmVlZCB0byBhZGQgdGhpcyBxdWV1ZSBpbiBTZXR1cAp6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgovL1RPRE8gekRhdGEua2V5d29yZE1hcFsiRU5STCJdID0iRU5STDpFbnJvbGxtZW50IEZvcm0iOyAgLy9UT0RPIGdldCBmcm9tIHpTdGFjayBwaWNrbGlzdHMKLy9UT0RPIHpEYXRhLmtleXdvcmRNYXBbIkZBQyJdID0iRkFDOkZhY2lsaXR5IEVucm9sbG1lbnQgRm9ybSI7CnpEYXRhLlBST0dSQU1fWkNBUlRBPXpEYXRhLmNoYW5uZWxbInpDYXJ0YSJdOwp6RGF0YS5QUk9HUkFNX1pDSEFSVEE9ekRhdGEuY2hhbm5lbFsiekNoYXJ0YSJdOwp6RGF0YS5QUk9HUkFNX1pQQVBZUlVTPXpEYXRhLmNoYW5uZWxbInpQYXB5cnVzIl07Cgp6RGF0YS5jbGllbnRJbXBvcnRTT1FMPWZ1bmN0aW9uKGRvYyxmcm9tRmlsZSkgeyAvL0VSUzE5MDcwNiBjdXN0b21pemUgaW1wb3J0cyB1c2VkIGJ5IENyZWF0ZSBTdGFjawogICAgekRhdGEuaW1wb3J0ZXI9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJJbXBvcnRlcl9fYyIpLnRyaW0oKTsKICAgIHZhciBzZklkPSIiOwogICAgdmFyIHBhcnRzPWZyb21GaWxlLnNwbGl0KCJfIik7CiAgICAvL3NmSWQgPSBnZXRTRlJlY29yZElEKGRvYywgIkFjY291bnQiLCB7ICJGYXgiIDogcGFydHNbM10gfSApOwogICAgekRhdGEubWFrZVN0YWNrPXRydWU7IC8vZG8gYWxsIHRoZSB3b3JrIHRoZXJlIGJ5IGRlZmF1bHQKICAgIHJldHVybiBzZklkOwp9OwoKLy9hbGVydCgiekRhdGEuY2xpZW50U3RhY2siKTsKekRhdGEuY2xpZW50U3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHsgLy96RGF0YSBvciB0aGlzPwogICAgdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL0VSUzE5MDgwNSAKCWlmICh6RGF0YS5yZWNlaXZlZCkgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCB6RGF0YS5mb3JtYXROb3cpOyAvL0VSUzE5MDYxNyBUT0RPIHNhdmUgd2F5IHRvIGRvIHRoaXMKCWlmICh6RGF0YS5vd25lcklkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLm93bmVySWQpOyAgLy8gekNoYXJ0YSBRdWV1ZSAiMDBHMzYwMDAwMDJDeVRLIgoJaWYgKHpEYXRhLmNhbGxlcklkKSBhcnJPZlBhaXJzLnB1c2goInpDYWxsZXJfSURfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7IC8vTVNIMTcwODE3IGFkZGVkCglpZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKCQogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCB6RGF0YS5kb2NUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIHZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwogICAgdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLCBwYWdlUmFuZ2UpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICAvL0VSUzE5MDgxMCBUT0RPPyBhcnJPZlBhaXJzLnB1c2goIlpTVEFDS19fUmVjZWl2ZWRfX2MiLCB6RGF0YS5mb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhZ2VzX19jIiwgcGFnZUNvdW50KTsKCiAgICBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNIQVJUQSkgewogICAgCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IC8vSlBCMTkwNDI2IGNoYW5nZWQgdG8gY2xhc3NpZmljYXRpb24gZnJvbSBwcm9ncmFtCiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7CiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJIaWdoIik7IAogICAgfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0FSVEEpIHsKICAgIAlhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7CQogICAgfSBlbHNlIHsKICAgIAlhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk5vcm1hbCIpOwogICAgfQogICAgCiAgICBhcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsICgiQ29tbXVuaXR5IiA9PT0gekRhdGEuY2hhbm5lbCA/IHpEYXRhLmNoYW5uZWwgOiBkb2MuZGVsaXZlcmVkVG8pKTsgLy9KUEIxOTA1MjkgYWRkZWQgc28gQ29tbXVuaXR5IHNob3dzIHVwIGluIE1hc3RlciBJbnRha2UgTGlzdAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBpZiAoekRhdGEucmV2aWV3ZWRTdGF0dXMpIHthcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyB9IAogICAgZWxzZSB7IGFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgfQogICAgekRhdGEuc3RhY2tQYWlycz1hcnJPZlBhaXJzOyAvL0VSUzE5MDgxMCAjNjE1NzAgZm9yIGNoaWxkIHN0YWNrIGxhdGVyCiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9felN0YWNrRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiAKCXJldHVybiBhcnJPZlBhaXJzOwp9OwoKLy9hbGVydCgiekRhdGEuY2xpZW50RmlsZSIpOwp6RGF0YS5jbGllbnRGaWxlPWZ1bmN0aW9uKGRvYyxzdGFnZSkgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKStYKGRvYywiWF9aUEFQRVJfX0xhc3ROYW1lX19jIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7CiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIGlmICh6RGF0YS5zZklEICAmJiB6RGF0YS5zZklELmluZGV4T2YoIjUwMCIpPT09MCkgewoJICAgIHpEYXRhLnByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHpEYXRhLnNmSUQpOyAKCSAgICBsYWJlbCA9ICJSZWNlaXZlZCBmcm9tICIgKyB6RGF0YS5wcm92aWRlcjsKICAgICAgICBpZiAoekRhdGEuZmFjaWxpdHkpIHsKICAgICAgICAgICAgekRhdGEuZmFjaWxpdHkgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5GYWNpbGl0eV9fci5OYW1lIiwgbnVsbCwgekRhdGEuc2ZJRCk7CiAgICAgICAgICAgIGRvYy5sYWJlbCs9IiBhdCAiK3pEYXRhLmZhY2lsaXR5OwogICAgICAgIH0KCX0KCXZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKCXVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Cgp6RGF0YS5jbGllbnRWYWx1ZT1mdW5jdGlvbihkb2MsdmFsKSB7Ly9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCiAgICB2YWw9dmFsLnJlcGxhY2UoInshZm9ybWF0Tm93fSIsekRhdGEuZm9ybWF0Tm93KTsKICAgIHJldHVybiB2YWw7Cn0KCnpEYXRhLmNsaWVudEZpZWxkcz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxqZCx6ZCkgeyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBpbiBzZXR0aW5nIHRvIGNvbmZpZ3VyZSBuZXcgcmVjb3JkCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKCWlmIChqZCAmJiBqZC5pbmRleE9mKCJ7Iik9PT0wKSB7IAoJICAgIC8veyJUeXBlIjoiRWxpZ2liaWxpdHkiLCJPd25lcklkIjoiMDBHYzAwMDAwMDN2Z3F3IiwiUmVjb3JkVHlwZUlkIjoiMDEyNkEwMDAwMDBKRUtlUUFPIn07CgkgICAgLy9OT1QgQSBHT09EIElERUEgamQ9amQucmVwbGFjZUFsbCgiXCIiLCInIik7IC8vRVJTMTkwODExICM2MTU3MCBIQUNLPwoJICAgIHRyeSB7CiAgICAJICAgIHZhciBqZGF0YT1KU09OLnBhcnNlKGpkKTsgLy9FUlMxOTA4MDUgYmV0dGVyIHRoYW4gZXZhbAogICAgCSAgICBmb3IgKHZhciBuIGluIGpkYXRhKSB7CiAgICAJICAgICAgICB2YXIgdjA9amRhdGFbbl07IAogICAgCSAgICAgICAgdmFyIHY9ekRhdGEuY2xpZW50VmFsdWUoZG9jLHYwKTsgLy9FUlMxOTA4MTEgLHYgbm93ICx2MAogICAgCSAgICAgICAgLy9hbGVydCgiRVJTMTkwODAzLjk3ICIrbisiPSIrdjArIj0iK3YpOyAKICAgIAkgICAgICAgIGFyck9mUGFpcnMucHVzaChuLHYpOyAvL0VSUzE5MDgxMSBhZGRlZCAucHVzaAogICAgCSAgICB9CgkgICAgfSBjYXRjaCAoZSkgewoJICAgICAgICBhbGVydCgiSlNPTiBub3QgaW4gIitqZCsiIEV4Y2VwdGlvbjogIitlKTsgLy9FUlMxOTA4MTEgYWRkZWQgZQoJICAgIH0KCX0KCXJldHVybiBhcnJPZlBhaXJzOwp9CgoKekRhdGEuY2xpZW50Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPSJJbmRleGVkLSIgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCWlmICh6ZC5jb250YWN0SWQpIGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgemQuY29udGFjdElkKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgWChkb2MsIlhfU3RhdHVzIikpOwoJYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK3pkLmNsYXNzaWZpY2F0aW9uKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJaWYgKDE9PTEpIHsgLy9FUlMxNzA1MjMgIzM3MTYyIGFmdGVyIGRyeXJ1bgoJCS8vYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCIwMTJRMDAwMDAwMDVBaGoiKTsgLy9FUlMxNzA1MjMgUHJpb3IgQXV0aAoJCWlmICh6ZC5wcmlvcml0eSAhPSAiTm9ybWFsIikgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsemQucHJpb3JpdHkpOyAgLy9FUlMxNzA1MjQgIzM3MTYyIHByaW9yaXR5IG9uIENhc2UKCQllbHNlIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLCJNZWRpdW0iKTsKCQlhcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsemQuY2hhbm5lbCk7Cgl9CiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fQ2FzZUZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCgl2YXIgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gY2FzZUlkOwp9OwoKekRhdGEuY2xpZW50UGF0aWVudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgogICAgdmFyIHJ0PVhDdXN0b21TZXR0aW5nKGRvYywiUGF0aWVudFJlY29yZFR5cGVfX2MiKTsgLy9UT0RPIGludG8gTVAgRVJTMTkwODAyIGxpa2UgMDEyNkEwMDAwMDBKRTh5UUFHIG9yIGVtcHR5IHRvIHVzZSBkZWZhdWx0CiAgICBpZiAocnQpIHsgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCBydCk7IH0gLy9FUlMxOTA4MDMKICAgIC8vVE9ETyBDb250YWN0IG9yIEFjY291bnQgRVJTMTkwNjI0IERPTkUhISBFUlMxOTA4MDIKICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50RmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiAKCXZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgekRhdGEucGF0aWVudFR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsgLy9FUlMxOTA4MDMgIzYxMjcyCgkKCS8vRVJTMTkwODAzIHNwZWNpZmljIHRvIGNsaWVudCBkYXRhIGVudHJ5Cgl2YXIgZHEgPSB6RGF0YS5kcTsKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBzZklkICsgZHEgKyAiKTsgIik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGVyc29uX0FjY291bnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jICsgIiAiICsgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jICsgZHEgKyAiKTsgIik7CglyZXR1cm4gc2ZJZDsKfTsKCnpEYXRhLmNsaWVudEFjY291bnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KCS8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoKCXZhciBhY2NvdW50SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQWNjb3VudCIsIGxhYmVsLCBhcnJPZlBhaXJzKTsKCXJldHVybiBhY2NvdW50SWQ7Cn07Cgp6RGF0YS5jbGllbnRSZWNvcmQ9ZnVuY3Rpb24oZG9jLHNmVHlwZSxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7IC8vRVJTMTkwNjIwIGNsaWVudFJlY29yZCBnZW5lcmljCglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCXZhciB6cD0iIjsKCWlmICgiLENhc2UsQ29udGFjdCxBY2NvdW50LExlYWQsT3Bwb3J0dW5pdHksWlBBUEVSX196U3RhY2tfX2MsIi50b0xvd2VyQ2FzZSgpLmluZGV4T2YoIiwiK3NmVHlwZS50b0xvd2VyQ2FzZSgpKyIsIik+LTEpIHpwPXpEYXRhLnpwOwoJLy9vbmx5IGRvIHRoaXMgaWYgdGhlIGZpZWxkcyBleGlzdAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goenArImxhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJCgkvL1RPRE8gcHV0IGNsaWVudCBzcGVjaWZpYyBkYXRhIHVwZGF0ZXMgaGVyZQoKCXZhciBuZXdJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHNmVHlwZSwgbGFiZWwsIGFyck9mUGFpcnMpOwoJcmV0dXJuIG5ld0lkOwp9OwoKekRhdGEuY2xpZW50Q29tcGxldGU9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsemQpIHtyZXR1cm4gYXJyT2ZQYWlyczt9OyAvL0VSUzE5MDYyNQp6RGF0YS5jbGllbnREZWxpdmVyeT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykge3JldHVybiBhcnJPZlBhaXJzO307IC8vRVJTMTkwNzExICM2MDkwMCBQQU9TCgp6RGF0YS5jbGllbnRDaGlsZFN0YWNrPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHBhcmVudElkKSB7IC8vRVJTMTkwODEwICM2MTU3MCBiZSBzdXJlIHRvIGNhbGwgb24gbmV3IGNoaWxkIGRvYwogICAgdmFyIHBhaXJzPWFyck9mUGFpcnM7CiAgICAvL25vIG1lbW9yeSBvZiBzdGFjayBjcmVhdGlvbiB2YXIgcGFpcnM9ekRhdGEuc3RhY2tQYWlyczsKICAgIHpEYXRhLnJldmlld2VkU3RhdHVzPSJTcGxpdCI7CiAgICAvL0VSUzE5MDgxMCBUT0RPPyBwYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDaGlsZCBTdGFjayIpOwoKICAgIHBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxwYWlycyk7CiAgICBpZiAoWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pDaGlsZEZpZWxkc19fYyIpKSB7IC8vRVJTMTkwODExIG5vdCBpbiBhbGwgTVBzCiAgICAgICAgcGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxwYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBjaGlsZCByZWNvcmQgdHlwZSBpZAogICAgfQogICAgcGFpcnMucHVzaCgiWlBBUEVSX19QYXJlbnRfX2MiLCBwYXJlbnRJZCk7CiAgICBhbGVydCgiRVJTMTkwODExLjE5MSBaUEFQRVJfX1BhcmVudF9fYyIrIHBhcmVudElkKTsKICAgIHZhciBjaGlsZFN0YWNrU0ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJaUEFQRVJfX3pTdGFja19fYyIsICJ6U3RhY2sgc3BsaXQgb24gIiArIHpEYXRhLmZvcm1hdE5vdywgcGFpcnMpICsgIiI7CiAgICByZXR1cm4gY2hpbGRTdGFja1NGSWQ7Cn0KCmFsZXJ0KCJlbmQgY2xpZW50IGxpYnJhcnkiKTsgLy9FUlMxOTA2MTUgIzU4OTIxCg=="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client library"); //ERS190803 #52661 from OccFit

zData.maxChannels=3; //ERS190731 #61272 zippi is strongly typed

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
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
    //ERS190810 TODO? arrOfPairs.push("ZSTACK__Received__c", zData.formatNow);
    arrOfPairs.push("ZPAPER__Pages__c", pageCount);

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
	arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //JPB 170512 added these workflow fields
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
	arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //JPB 170512 added these workflow fields

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
	arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //JPB 170512 added these workflow fields

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
	arrOfPairs.push(zp+"receivedId__c", doc.dbID); //JPB 170512 added these workflow fields
	
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
