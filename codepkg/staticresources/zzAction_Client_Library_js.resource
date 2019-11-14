<!--
// Name: Client Library
// Committer: Prathyusha.vasireddy2zpaper.com
// Update: PV191105 updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-05 19:50:07","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCgp6RGF0YS53YXRlcm1hcms9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ3YXRlcm1hcmtfX2MiKTsgLy9FUlMxOTA2MTggYmVzdCBwcmFjdGljZQovL2FsZXJ0KCJFUlMxOTA0MTEgd209Iit6RGF0YS53YXRlcm1hcmsrIiBaUEFQRVJfX3NlcnZlcl9fYz0iK1hDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19zZXJ2ZXJfX2MiKSk7CnpEYXRhLnVwbG9hZERpciA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywidXBsb2FkRGlyX19jIik7IC8vImFsa2VybWVzUm9vdCI7CnpEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInBhdGllbnRRdWV1ZUlkX19jIik7IC8vJzAwRzRDMDAwMDAwTGttWic7IC8vaW5zZXJ0IHRoZSBRdWV1ZSBJRCBvZiB0aGUgZGVzaXJlZCBvd25lcnNoaXAgcXVldWUuIFVwZGF0ZSB3aGVuIG1pZ3JhdGluZyBiZXR3ZWVuIGVudmlyb25tZW50cy4gTmVlZCB0byBhZGQgdGhpcyBxdWV1ZSBpbiBTZXR1cAp6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgovL1RPRE8gekRhdGEua2V5d29yZE1hcFsiRU5STCJdID0iRU5STDpFbnJvbGxtZW50IEZvcm0iOyAgLy9UT0RPIGdldCBmcm9tIHpTdGFjayBwaWNrbGlzdHMKLy9UT0RPIHpEYXRhLmtleXdvcmRNYXBbIkZBQyJdID0iRkFDOkZhY2lsaXR5IEVucm9sbG1lbnQgRm9ybSI7CnpEYXRhLlBST0dSQU1fWkNBUlRBPXpEYXRhLmNoYW5uZWxbInpDYXJ0YSJdOwp6RGF0YS5QUk9HUkFNX1pDSEFSVEE9ekRhdGEuY2hhbm5lbFsiekNoYXJ0YSJdOwp6RGF0YS5QUk9HUkFNX1pQQVBZUlVTPXpEYXRhLmNoYW5uZWxbInpQYXB5cnVzIl07Cgp6RGF0YS5jbGllbnRJbXBvcnRTT1FMPWZ1bmN0aW9uKGRvYyxmcm9tRmlsZSkgeyAvL0VSUzE5MDcwNiBjdXN0b21pemUgaW1wb3J0cyB1c2VkIGJ5IENyZWF0ZSBTdGFjawogICAgekRhdGEuaW1wb3J0ZXI9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJJbXBvcnRlcl9fYyIpLnRyaW0oKTsKICAgIHZhciBzZklkPSIiOwogICAgdmFyIHBhcnRzPWZyb21GaWxlLnNwbGl0KCJfIik7CiAgICAvL3NmSWQgPSBnZXRTRlJlY29yZElEKGRvYywgIkFjY291bnQiLCB7ICJGYXgiIDogcGFydHNbM10gfSApOwogICAgekRhdGEubWFrZVN0YWNrPXRydWU7IC8vZG8gYWxsIHRoZSB3b3JrIHRoZXJlIGJ5IGRlZmF1bHQKICAgIHJldHVybiBzZklkOwp9OwoKLy9hbGVydCgiekRhdGEuY2xpZW50U3RhY2siKTsKekRhdGEuY2xpZW50U3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHsgLy96RGF0YSBvciB0aGlzPwogICAgdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL0VSUzE5MDgwNQppZiAoekRhdGEucmVjZWl2ZWQpIGFyck9mUGFpcnMucHVzaCgielN0YWNrX1JlY2VpdmVkX19jIiwgZm9ybWF0Tm93KTsgLy9FUlMxOTA2MTcgVE9ETyBzYXZlIHdheSB0byBkbyB0aGlzCmlmICh6RGF0YS5vd25lcklkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLm93bmVySWQpOyAgLy8gekNoYXJ0YSBRdWV1ZSAiMDBHMzYwMDAwMDJDeVRLIgphbGVydCgiRVJTMTkwOTI2IGNsaWVudFN0YWNrIE93bmVySWQ9Iit6RGF0YS5vd25lcklkKTsgLy9FUlMxOTA5MjYgIzYzNTUyCmlmICh6RGF0YS5jYWxsZXJJZCkgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAppZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgewogICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwogICBhbGVydCgiRVJTMTkwOTI2LjM0IGNsaWVudFN0YWNrIE93bmVySWQ9Iit6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsgLy9FUlMxOTA5MjYgIzYzNTUyIFRPRE8gQ1JOIHR3byB2YWx1ZXMgd2hvIHdpbnM/Cn0KdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7IC8vUHYxOTEwMjggdG8gdXBkYXRlIG51bWJlciBvZiBwYWdlcyBvbmx5IGlmIHdlIGFyZSBkb2luZyBpbmRleCBvbiBzdGFjayByZWNvcmQKICAgIGlmKHBhZ2VSYW5nZSl7IAogICAgICAgIHZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYywgcGFnZVJhbmdlKTsgIAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYWdlc19fYyIsIHBhZ2VDb3VudCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vUFYxOTExMDUgdXBkYXRlZAogICAgfQogICAgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDSEFSVEEpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IC8vSlBCMTkwNDI2IGNoYW5nZWQgdG8gY2xhc3NpZmljYXRpb24gZnJvbSBwcm9ncmFtCiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsKICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7CiAgICB9IGVsc2UgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJOb3JtYWwiKTsKICAgIH0KICAgCiAgICBhcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsICgiQ29tbXVuaXR5IiA9PT0gekRhdGEuY2hhbm5lbCA/IHpEYXRhLmNoYW5uZWwgOiBkb2MuZGVsaXZlcmVkVG8pKTsgLy9KUEIxOTA1MjkgYWRkZWQgc28gQ29tbXVuaXR5IHNob3dzIHVwIGluIE1hc3RlciBJbnRha2UgTGlzdAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBpZiAoekRhdGEucmV2aWV3ZWRTdGF0dXMpIHthcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyB9CiAgICBlbHNlIHsgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyB9CiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9felN0YWNrRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgpyZXR1cm4gYXJyT2ZQYWlyczsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudEZpbGUiKTsKekRhdGEuY2xpZW50RmlsZT1mdW5jdGlvbihkb2Msc3RhZ2UpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgCiAgICBkb2MubGFiZWw9ekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyt6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7Ly9QVjE5MDkyOSB1cGRhdGVkIGZvciBsYWJlbAogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICBpZiAoekRhdGEuc2ZJRCAgJiYgekRhdGEuc2ZJRC5pbmRleE9mKCI1MDAiKT09PTApIHsKICAgekRhdGEucHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgekRhdGEuc2ZJRCk7CiAgIGxhYmVsID0gIlJlY2VpdmVkIGZyb20gIiArIHpEYXRhLnByb3ZpZGVyOwogICAgICAgIGlmICh6RGF0YS5mYWNpbGl0eSkgewogICAgICAgICAgICB6RGF0YS5mYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50LkZhY2lsaXR5X19yLk5hbWUiLCBudWxsLCB6RGF0YS5zZklEKTsKICAgICAgICAgICAgZG9jLmxhYmVsKz0iIGF0ICIrekRhdGEuZmFjaWxpdHk7CiAgICAgICAgfQp9CnZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmNsaWVudFZhbHVlPWZ1bmN0aW9uKGRvYyx2YWwpIHsvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgogICAgdmFsPXZhbC5yZXBsYWNlKCJ7IWZvcm1hdE5vd30iLHpEYXRhLmZvcm1hdE5vdyk7CiAgICByZXR1cm4gdmFsOwp9Cgp6RGF0YS5jbGllbnRGaWVsZHM9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsamQsemQpIHsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gaW4gc2V0dGluZyB0byBjb25maWd1cmUgbmV3IHJlY29yZAogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CmlmIChqZCAmJiBqZC5pbmRleE9mKCJ7Iik9PT0wKSB7CiAgIC8veyJUeXBlIjoiRWxpZ2liaWxpdHkiLCJPd25lcklkIjoiMDBHYzAwMDAwMDN2Z3F3IiwiUmVjb3JkVHlwZUlkIjoiMDEyNkEwMDAwMDBKRUtlUUFPIn07CiAgIHRyeSB7CiAgICAgICBqZCA9IGpkLnJlcGxhY2UoLyZhcG9zOy9nLCIiKS5yZXBsYWNlKC8mcXVvdDsvZywnIicpOwogICAgICAgdmFyIGpkYXRhPUpTT04ucGFyc2UoamQpOyAvL0VSUzE5MDgwNSBiZXR0ZXIgdGhhbiBldmFsCiAgICAgICBmb3IgKHZhciBuIGluIGpkYXRhKSB7CiAgICAgICAgICAgdmFyIHYwPWpkYXRhW25dOwogICAgICAgICAgIHZhciB2PXpEYXRhLmNsaWVudFZhbHVlKGRvYyx2KTsgYWxlcnQoIkVSUzE5MDgwMy45NyAiK24rIj0iK3YwKyI9Iit2KTsKICAgICAgICAgICBhcnJPZlBhaXJzKG4sdik7CiAgICAgICB9CiAgIH0gY2F0Y2ggKGUpIHsKICAgICAgIGFsZXJ0KCJKU09OIG5vdCBpbiAiK2pkKTsKICAgfQp9CnJldHVybiBhcnJPZlBhaXJzOwp9CgoKekRhdGEuY2xpZW50Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewppZiAoIXpkKSB6ZD16RGF0YTsKaWYgKCFsYWJlbCkgeyBsYWJlbD0iSW5kZXhlZC0iICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQovL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKaWYgKHpkLmNvbnRhY3RJZCkgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCB6ZC5jb250YWN0SWQpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsIFgoZG9jLCJYX1N0YXR1cyIpKTsKYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK3pkLmNsYXNzaWZpY2F0aW9uKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwppZiAoMT09MSkgeyAvL0VSUzE3MDUyMyAjMzcxNjIgYWZ0ZXIgZHJ5cnVuCi8vYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCIwMTJRMDAwMDAwMDVBaGoiKTsgLy9FUlMxNzA1MjMgUHJpb3IgQXV0aAppZiAoemQucHJpb3JpdHkgIT0gIk5vcm1hbCIpIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLHpkLnByaW9yaXR5KTsgIC8vRVJTMTcwNTI0ICMzNzE2MiBwcmlvcml0eSBvbiBDYXNlCmVsc2UgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOwphcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsemQuY2hhbm5lbCk7Cn0KICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19DYXNlRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgp2YXIgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CnJldHVybiBjYXNlSWQ7Cn07Cgp6RGF0YS5jbGllbnRQYXRpZW50PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CmlmICghemQpIHpkPXpEYXRhOwppZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQovL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCiAgICB2YXIgcnQ9WEN1c3RvbVNldHRpbmcoZG9jLCJQYXRpZW50UmVjb3JkVHlwZV9fYyIpOyAvL1RPRE8gaW50byBNUCBFUlMxOTA4MDIgbGlrZSAwMTI2QTAwMDAwMEpFOHlRQUcgb3IgZW1wdHkgdG8gdXNlIGRlZmF1bHQKICAgIGlmIChydCkgeyBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHJ0KTsgfSAvL0VSUzE5MDgwMwogICAgLy9UT0RPIENvbnRhY3Qgb3IgQWNjb3VudCBFUlMxOTA2MjQgRE9ORSEhIEVSUzE5MDgwMgogICAgYWxlcnQoIkBAQEBhcnJPZlBhaXJzIEBAQCIrYXJyT2ZQYWlycyk7CiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudEZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04KYWxlcnQoIkBAQEBhcnJPZlBhaXJzIEBAQCIrYXJyT2ZQYWlycyk7CnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgekRhdGEucGF0aWVudFR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsgLy9FUlMxOTA4MDMgIzYxMjcyCgovL0VSUzE5MDgwMyBzcGVjaWZpYyB0byBjbGllbnQgZGF0YSBlbnRyeQp2YXIgZHEgPSB6RGF0YS5kcTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BlcnNvbl9BY2NvdW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHNmSWQgKyBkcSArICIpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKcmV0dXJuIHNmSWQ7Cn07Cgp6RGF0YS5jbGllbnRBY2NvdW50PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CmlmICghemQpIHpkPXpEYXRhOwppZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQovL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCnZhciBhY2NvdW50SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQWNjb3VudCIsIGxhYmVsLCBhcnJPZlBhaXJzKTsKcmV0dXJuIGFjY291bnRJZDsKfTsKCnpEYXRhLmNsaWVudFJlY29yZD1mdW5jdGlvbihkb2Msc2ZUeXBlLGFyck9mUGFpcnMsbGFiZWwsemQpIHsgLy9FUlMxOTA2MjAgY2xpZW50UmVjb3JkIGdlbmVyaWMKaWYgKCF6ZCkgemQ9ekRhdGE7CmlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9Ci8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwp2YXIgenA9IiI7CmlmICgiLENhc2UsQ29udGFjdCxBY2NvdW50LExlYWQsT3Bwb3J0dW5pdHksWlBBUEVSX196U3RhY2tfX2MsIi50b0xvd2VyQ2FzZSgpLmluZGV4T2YoIiwiK3NmVHlwZS50b0xvd2VyQ2FzZSgpKyIsIik+LTEpIHpwPXpEYXRhLnpwOwovL29ubHkgZG8gdGhpcyBpZiB0aGUgZmllbGRzIGV4aXN0CmFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goenArImxhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgovL1RPRE8gcHV0IGNsaWVudCBzcGVjaWZpYyBkYXRhIHVwZGF0ZXMgaGVyZQoKdmFyIG5ld0lkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgc2ZUeXBlLCBsYWJlbCwgYXJyT2ZQYWlycyk7CnJldHVybiBuZXdJZDsKfTsKCnpEYXRhLmNsaWVudENvbXBsZXRlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHpkKSB7cmV0dXJuIGFyck9mUGFpcnM7fTsgLy9FUlMxOTA2MjUKekRhdGEuY2xpZW50RGVsaXZlcnk9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHtyZXR1cm4gYXJyT2ZQYWlyczt9OyAvL0VSUzE5MDcxMSAjNjA5MDAgUEFPUwp6RGF0YS5jbGllbnRDaGlsZFN0YWNrPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHBhcmVudElkKSB7IC8vRVJTMTkwODEwICM2MTU3MCBiZSBzdXJlIHRvIGNhbGwgb24gbmV3IGNoaWxkIGRvYwogICAgdmFyIHBhaXJzPWFyck9mUGFpcnM7CiAgICAvL25vIG1lbW9yeSBvZiBzdGFjayBjcmVhdGlvbiB2YXIgcGFpcnM9ekRhdGEuc3RhY2tQYWlyczsKICAgIHpEYXRhLnJldmlld2VkU3RhdHVzPSJTcGxpdCI7CiAgICAvL0VSUzE5MDgxMCBUT0RPPyBwYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDaGlsZCBTdGFjayIpOwoKICAgIHBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxwYWlycyk7CiAgICBpZiAoWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pDaGlsZEZpZWxkc19fYyIpKSB7IC8vRVJTMTkwODExIG5vdCBpbiBhbGwgTVBzCiAgICAgICAgcGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxwYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBjaGlsZCByZWNvcmQgdHlwZSBpZAogICAgfQogICAgcGFpcnMucHVzaCgiWlBBUEVSX19QYXJlbnRfX2MiLCBwYXJlbnRJZCk7CiAgICBhbGVydCgiRVJTMTkwODExLjE5MSBaUEFQRVJfX1BhcmVudF9fYyIrIHBhcmVudElkKTsKICAgIHZhciBjaGlsZFN0YWNrU0ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJaUEFQRVJfX3pTdGFja19fYyIsICJ6U3RhY2sgc3BsaXQgb24gIiArIHpEYXRhLmZvcm1hdE5vdywgcGFpcnMpICsgIiI7CiAgICByZXR1cm4gY2hpbGRTdGFja1NGSWQ7Cn0KCmFsZXJ0KCJlbmQgY2xpZW50IGxpYnJhcnkiKTsgLy9FUlMxOTA2MTUgIzU4OTIx"},"ordinal":2}

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
if (zData.received) arrOfPairs.push("zStack_Received__c", formatNow); //ERS190617 TODO save way to do this
if (zData.ownerId) arrOfPairs.push("OwnerId",zData.ownerId);  // zCharta Queue "00G36000002CyTK"
alert("ERS190926 clientStack OwnerId="+zData.ownerId); //ERS190926 #63552
if (zData.callerId) arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
if (zData.patEnrollQueueId) {
   arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
   alert("ERS190926.34 clientStack OwnerId="+zData.patEnrollQueueId); //ERS190926 #63552 TODO CRN two values who wins?
}
var pageRange = X(doc,"X_idxPages"); //Pv191028 to update number of pages only if we are doing index on stack record
    if(pageRange){ 
        var pageCount = zData.countPages(doc, pageRange);  
        arrOfPairs.push("ZPAPER__Pages__c", pageCount);
        arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //PV191105 updated
    }
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
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__zStackFields__c")); //ERS190803 #52661 using JSON
return arrOfPairs;
};

//alert("zData.clientFile");
zData.clientFile=function(doc,stage) { //ERS170829 #41298 returns a label to be used in any attaches and fixes the doc
    //Document attachment label should be "Patient Name - Doc Type - Date".  Confirmed for zPaper File and SFDC Attachment
    var MMddYYYY = zData.formatTodayMMddYYYY();
    
    doc.label=zData.X_ZPAPER__FirstName__c+zData.X_ZPAPER__LastName__c+" - "+X(doc,"X_ZPAPER__faxType__c")+" - "+MMddYYYY;//PV190929 updated for label
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
   try {
       jd = jd.replace(/&apos;/g,"").replace(/&quot;/g,'"');
       var jdata=JSON.parse(jd); //ERS190805 better than eval
       for (var n in jdata) {
           var v0=jdata[n];
           var v=zData.clientValue(doc,v); alert("ERS190803.97 "+n+"="+v0+"="+v);
           arrOfPairs(n,v);
       }
   } catch (e) {
       alert("JSON not in "+jd);
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
    alert("@@@@arrOfPairs @@@"+arrOfPairs);
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__PatientFields__c")); //ERS190803 #52661 using JSON
alert("@@@@arrOfPairs @@@"+arrOfPairs);
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
