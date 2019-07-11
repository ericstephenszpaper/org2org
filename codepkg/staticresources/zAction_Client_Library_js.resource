<!--
// Name: Client Library
// Committer: eric.stephens@zpaper.com
// Update: ERS190711 #60900 PAOS
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-07-11 14:15:41","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7Cgp6RGF0YS53YXRlcm1hcms9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ3YXRlcm1hcmtfX2MiKTsgLy9FUlMxOTA2MTggYmVzdCBwcmFjdGljZQovL2FsZXJ0KCJFUlMxOTA0MTEgd209Iit6RGF0YS53YXRlcm1hcmsrIiBaUEFQRVJfX3NlcnZlcl9fYz0iK1hDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19zZXJ2ZXJfX2MiKSk7CnpEYXRhLnVwbG9hZERpciA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywidXBsb2FkRGlyX19jIik7IC8vImFsa2VybWVzUm9vdCI7CnpEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInBhdGllbnRRdWV1ZUlkX19jIik7IC8vJzAwRzRDMDAwMDAwTGttWic7IC8vaW5zZXJ0IHRoZSBRdWV1ZSBJRCBvZiB0aGUgZGVzaXJlZCBvd25lcnNoaXAgcXVldWUuIFVwZGF0ZSB3aGVuIG1pZ3JhdGluZyBiZXR3ZWVuIGVudmlyb25tZW50cy4gTmVlZCB0byBhZGQgdGhpcyBxdWV1ZSBpbiBTZXR1cAp6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgovL1RPRE8gekRhdGEua2V5d29yZE1hcFsiRU5STCJdID0iRU5STDpFbnJvbGxtZW50IEZvcm0iOyAgLy9UT0RPIGdldCBmcm9tIHpTdGFjayBwaWNrbGlzdHMKLy9UT0RPIHpEYXRhLmtleXdvcmRNYXBbIkZBQyJdID0iRkFDOkZhY2lsaXR5IEVucm9sbG1lbnQgRm9ybSI7CnpEYXRhLlBST0dSQU1fWkNBUlRBPXpEYXRhLmNoYW5uZWxbInpDYXJ0YSJdOwp6RGF0YS5QUk9HUkFNX1pDSEFSVEE9ekRhdGEuY2hhbm5lbFsiekNoYXJ0YSJdOwp6RGF0YS5QUk9HUkFNX1pQQVBZUlVTPXpEYXRhLmNoYW5uZWxbInpQYXB5cnVzIl07Cgp6RGF0YS5jbGllbnRJbXBvcnRTT1FMPWZ1bmN0aW9uKGRvYyxmcm9tRmlsZSkgeyAvL0VSUzE5MDcwNiBjdXN0b21pemUgaW1wb3J0cyB1c2VkIGJ5IENyZWF0ZSBTdGFjawogICAgekRhdGEuaW1wb3J0ZXI9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJJbXBvcnRlcl9fYyIpLnRyaW0oKTsKICAgIHZhciBzZklkPSIiOwogICAgdmFyIHBhcnRzPWZyb21GaWxlLnNwbGl0KCJfIik7CiAgICAvL3NmSWQgPSBnZXRTRlJlY29yZElEKGRvYywgIkFjY291bnQiLCB7ICJGYXgiIDogcGFydHNbM10gfSApOwogICAgekRhdGEubWFrZVN0YWNrPXRydWU7IC8vZG8gYWxsIHRoZSB3b3JrIHRoZXJlIGJ5IGRlZmF1bHQKICAgIHJldHVybiBzZklkOwp9OwoKLy9hbGVydCgiekRhdGEuY2xpZW50U3RhY2siKTsKekRhdGEuY2xpZW50U3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHsgLy96RGF0YSBvciB0aGlzPwoJaWYgKHpEYXRhLnJlY2VpdmVkKSBhcnJPZlBhaXJzLnB1c2goInpTdGFja19SZWNlaXZlZF9fYyIsIGZvcm1hdE5vdyk7IC8vRVJTMTkwNjE3IFRPRE8gc2F2ZSB3YXkgdG8gZG8gdGhpcwoJaWYgKHpEYXRhLm93bmVySWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEub3duZXJJZCk7ICAvLyB6Q2hhcnRhIFF1ZXVlICIwMEczNjAwMDAwMkN5VEsiCglpZiAoekRhdGEuY2FsbGVySWQpIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKCWlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoKICAgIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7CiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsgLy9KUEIxOTA0MjYgY2hhbmdlZCB0byBjbGFzc2lmaWNhdGlvbiBmcm9tIHByb2dyYW0KICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsKICAgIAlhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsgCiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDQVJUQSkgewogICAgCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsJCiAgICB9IGVsc2UgewogICAgCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7CiAgICB9CiAgICAKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgKCJDb21tdW5pdHkiID09PSBjaGFubmVsID8gY2hhbm5lbCA6IGRvYy5kZWxpdmVyZWRUbykpOyAvL0pQQjE5MDUyOSBhZGRlZCBzbyBDb21tdW5pdHkgc2hvd3MgdXAgaW4gTWFzdGVyIEludGFrZSBMaXN0CiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGlmICh6RGF0YS5yZXZpZXdlZFN0YXR1cykge2Fyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCB6RGF0YS5yZXZpZXdlZFN0YXR1cyk7IH0gCiAgICBlbHNlIHsgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyB9CglyZXR1cm4gYXJyT2ZQYWlyczsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudEZpbGUiKTsKekRhdGEuY2xpZW50RmlsZT1mdW5jdGlvbihkb2Msc3RhZ2UpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgZG9jLmxhYmVsPVgoZG9jLCJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIikrWChkb2MsIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpKyIgLSAiK1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKyIgLSAiK01NZGRZWVlZOwogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICBpZiAoekRhdGEuc2ZJRCAgJiYgekRhdGEuc2ZJRC5pbmRleE9mKCI1MDAiKT09PTApIHsKCSAgICB6RGF0YS5wcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCB6RGF0YS5zZklEKTsgCgkgICAgbGFiZWwgPSAiUmVjZWl2ZWQgZnJvbSAiICsgekRhdGEucHJvdmlkZXI7CiAgICAgICAgaWYgKHpEYXRhLmZhY2lsaXR5KSB7CiAgICAgICAgICAgIHpEYXRhLmZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuRmFjaWxpdHlfX3IuTmFtZSIsIG51bGwsIHpEYXRhLnNmSUQpOwogICAgICAgICAgICBkb2MubGFiZWwrPSIgYXQgIit6RGF0YS5mYWNpbGl0eTsKICAgICAgICB9Cgl9Cgl2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7Cgl1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwoKekRhdGEuY2xpZW50Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPSJJbmRleGVkLSIgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCWlmICh6ZC5jb250YWN0SWQpIGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgemQuY29udGFjdElkKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgWChkb2MsIlhfU3RhdHVzIikpOwoJYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK3pkLmNsYXNzaWZpY2F0aW9uKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJaWYgKDE9PTEpIHsgLy9FUlMxNzA1MjMgIzM3MTYyIGFmdGVyIGRyeXJ1bgoJCS8vYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCIwMTJRMDAwMDAwMDVBaGoiKTsgLy9FUlMxNzA1MjMgUHJpb3IgQXV0aAoJCWlmICh6ZC5wcmlvcml0eSAhPSAiTm9ybWFsIikgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsemQucHJpb3JpdHkpOyAgLy9FUlMxNzA1MjQgIzM3MTYyIHByaW9yaXR5IG9uIENhc2UKCQllbHNlIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLCJNZWRpdW0iKTsKCQlhcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsemQuY2hhbm5lbCk7Cgl9Cgl2YXIgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gY2FzZUlkOwp9OwoKekRhdGEuY2xpZW50UGF0aWVudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgogICAgLy9UT0RPIENvbnRhY3Qgb3IgQWNjb3VudCBFUlMxOTA2MjQKCXZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gc2ZJZDsKfTsKCnpEYXRhLmNsaWVudEFjY291bnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KCS8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoKCXZhciBhY2NvdW50SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQWNjb3VudCIsIGxhYmVsLCBhcnJPZlBhaXJzKTsKCXJldHVybiBhY2NvdW50SWQ7Cn07Cgp6RGF0YS5jbGllbnRSZWNvcmQ9ZnVuY3Rpb24oZG9jLHNmVHlwZSxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7IC8vRVJTMTkwNjIwIGNsaWVudFJlY29yZCBnZW5lcmljCglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCXZhciB6cD0iIjsKCWlmICgiLENhc2UsQ29udGFjdCxBY2NvdW50LExlYWQsT3Bwb3J0dW5pdHksWlBBUEVSX196U3RhY2tfX2MsIi50b0xvd2VyQ2FzZSgpLmluZGV4T2YoIiwiK3NmVHlwZS50b0xvd2VyQ2FzZSgpKyIsIik+LTEpIHpwPXpEYXRhLnpwOwoJLy9vbmx5IGRvIHRoaXMgaWYgdGhlIGZpZWxkcyBleGlzdAoJYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goenArImxhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJCgkvL1RPRE8gcHV0IGNsaWVudCBzcGVjaWZpYyBkYXRhIHVwZGF0ZXMgaGVyZQoKCXZhciBuZXdJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHNmVHlwZSwgbGFiZWwsIGFyck9mUGFpcnMpOwoJcmV0dXJuIG5ld0lkOwp9OwoKekRhdGEuY2xpZW50Q29tcGxldGU9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsemQpIHtyZXR1cm4gYXJyT2ZQYWlyczt9OyAvL0VSUzE5MDYyNQp6RGF0YS5jbGllbnREZWxpdmVyeT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykge3JldHVybiBhcnJPZlBhaXJzO307IC8vRVJTMTkwNzExICM2MDkwMCBQQU9TCgphbGVydCgiZW5kIGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwNjE1ICM1ODkyMQo="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client library");

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
	if (zData.received) arrOfPairs.push("zStack_Received__c", formatNow); //ERS190617 TODO save way to do this
	if (zData.ownerId) arrOfPairs.push("OwnerId",zData.ownerId);  // zCharta Queue "00G36000002CyTK"
	if (zData.callerId) arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
	if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);

    if (zData.classification === zData.PROGRAM_ZCHARTA) {
    	arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB190426 changed to classification from program
    } else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {
    	arrOfPairs.push(zp+"Priority__c", "High"); 
    } else if (zData.classification === zData.PROGRAM_ZCARTA) {
    	arrOfPairs.push(zp+"Priority__c", "Critical");	
    } else {
    	arrOfPairs.push(zp+"Priority__c", "Normal");
    }
    
    arrOfPairs.push(zp+"sentFaxTo__c", ("Community" === channel ? channel : doc.deliveredTo)); //JPB190529 added so Community shows up in Master Intake List
    arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
    if (zData.reviewedStatus) {arrOfPairs.push(zp+"Stage__c", zData.reviewedStatus); } 
    else { arrOfPairs.push(zp+"Stage__c", "Received"); }
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

    //TODO Contact or Account ERS190624
	var sfId = createAndAttach(doc, "Contact", label, arrOfPairs);
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

alert("end client library"); //ERS190615 #58921

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
