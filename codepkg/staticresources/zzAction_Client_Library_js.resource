<!--
// Name: Client Library
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: pv191125 updated manually
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-25 21:15:22","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCnpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL1BWMTkxMTIyIAoKekRhdGEud2F0ZXJtYXJrPSIiK1hDdXN0b21TZXR0aW5nKGRvYywid2F0ZXJtYXJrX19jIik7IC8vRVJTMTkwNjE4IGJlc3QgcHJhY3RpY2UKLy9hbGVydCgiRVJTMTkwNDExIHdtPSIrekRhdGEud2F0ZXJtYXJrKyIgWlBBUEVSX19zZXJ2ZXJfX2M9IitYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fc2VydmVyX19jIikpOwp6RGF0YS51cGxvYWREaXIgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInVwbG9hZERpcl9fYyIpOyAvLyJhbGtlcm1lc1Jvb3QiOwp6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJwYXRpZW50UXVldWVJZF9fYyIpOyAvLycwMEc0QzAwMDAwMExrbVonOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKekRhdGEucmVjVHlwZVJlcXVlc3QgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInJlY1R5cGVSZXF1ZXN0X19jIik7IC8vJzAxMjRDMDAwMDAwQ2o1WSc7IC8vSUQgb2YgdGhlIENhc2UgUmVjb3JkIFR5cGUgUmVxdWVzdF9QU19NVk4KLy9UT0RPIHpEYXRhLmtleXdvcmRNYXBbIkVOUkwiXSA9IkVOUkw6RW5yb2xsbWVudCBGb3JtIjsgIC8vVE9ETyBnZXQgZnJvbSB6U3RhY2sgcGlja2xpc3RzCi8vVE9ETyB6RGF0YS5rZXl3b3JkTWFwWyJGQUMiXSA9IkZBQzpGYWNpbGl0eSBFbnJvbGxtZW50IEZvcm0iOwp6RGF0YS5QUk9HUkFNX1pDQVJUQT16RGF0YS5jaGFubmVsWyJ6Q2FydGEiXTsKekRhdGEuUFJPR1JBTV9aQ0hBUlRBPXpEYXRhLmNoYW5uZWxbInpDaGFydGEiXTsKekRhdGEuUFJPR1JBTV9aUEFQWVJVUz16RGF0YS5jaGFubmVsWyJ6UGFweXJ1cyJdOwoKekRhdGEuY2xpZW50SW1wb3J0U09RTD1mdW5jdGlvbihkb2MsZnJvbUZpbGUpIHsgLy9FUlMxOTA3MDYgY3VzdG9taXplIGltcG9ydHMgdXNlZCBieSBDcmVhdGUgU3RhY2sKICAgIHpEYXRhLmltcG9ydGVyPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiSW1wb3J0ZXJfX2MiKS50cmltKCk7CiAgICB2YXIgc2ZJZD0iIjsKICAgIHZhciBwYXJ0cz1mcm9tRmlsZS5zcGxpdCgiXyIpOwogICAgLy9zZklkID0gZ2V0U0ZSZWNvcmRJRChkb2MsICJBY2NvdW50IiwgeyAiRmF4IiA6IHBhcnRzWzNdIH0gKTsKICAgIHpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL2RvIGFsbCB0aGUgd29yayB0aGVyZSBieSBkZWZhdWx0CiAgICByZXR1cm4gc2ZJZDsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudFN0YWNrIik7CnpEYXRhLmNsaWVudFN0YWNrPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzKSB7IC8vekRhdGEgb3IgdGhpcz8KICAgIHZhciB6cD16RGF0YS56cDsgaWYgKCF6cCkgenA9IlpQQVBFUl9fIjsgLy9FUlMxOTA4MDUKaWYgKHpEYXRhLnJlY2VpdmVkKSBhcnJPZlBhaXJzLnB1c2goInpTdGFja19SZWNlaXZlZF9fYyIsIGZvcm1hdE5vdyk7IC8vRVJTMTkwNjE3IFRPRE8gc2F2ZSB3YXkgdG8gZG8gdGhpcwppZiAoekRhdGEub3duZXJJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5vd25lcklkKTsgIC8vIHpDaGFydGEgUXVldWUgIjAwRzM2MDAwMDAyQ3lUSyIKYWxlcnQoIkVSUzE5MDkyNiBjbGllbnRTdGFjayBPd25lcklkPSIrekRhdGEub3duZXJJZCk7IC8vRVJTMTkwOTI2ICM2MzU1MgppZiAoekRhdGEuY2FsbGVySWQpIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKaWYgKHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpIHsKICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKICAgYWxlcnQoIkVSUzE5MDkyNi4zNCBjbGllbnRTdGFjayBPd25lcklkPSIrekRhdGEucGF0RW5yb2xsUXVldWVJZCk7IC8vRVJTMTkwOTI2ICM2MzU1MiBUT0RPIENSTiB0d28gdmFsdWVzIHdobyB3aW5zPwp9CnZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOyAvL1B2MTkxMDI4IHRvIHVwZGF0ZSBudW1iZXIgb2YgcGFnZXMgb25seSBpZiB3ZSBhcmUgZG9pbmcgaW5kZXggb24gc3RhY2sgcmVjb3JkCiAgICBpZihwYWdlUmFuZ2UpewogICAgICAgIHZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYywgcGFnZVJhbmdlKTsgIAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYWdlc19fYyIsIHBhZ2VDb3VudCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vUFYxOTExMDUgdXBkYXRlZAogICAgfQogICAgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDSEFSVEEpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IC8vSlBCMTkwNDI2IGNoYW5nZWQgdG8gY2xhc3NpZmljYXRpb24gZnJvbSBwcm9ncmFtCiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsKICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7CiAgICB9IGVsc2UgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJOb3JtYWwiKTsKICAgIH0KICAgCiAgICBhcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsICgiQ29tbXVuaXR5IiA9PT0gekRhdGEuY2hhbm5lbCA/IHpEYXRhLmNoYW5uZWwgOiBkb2MuZGVsaXZlcmVkVG8pKTsgLy9KUEIxOTA1MjkgYWRkZWQgc28gQ29tbXVuaXR5IHNob3dzIHVwIGluIE1hc3RlciBJbnRha2UgTGlzdAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBpZiAoekRhdGEucmV2aWV3ZWRTdGF0dXMpIHthcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyB9CiAgICBlbHNlIHsgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyB9CiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9felN0YWNrRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgpyZXR1cm4gYXJyT2ZQYWlyczsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudEZpbGUiKTsKekRhdGEuY2xpZW50RmlsZT1mdW5jdGlvbihkb2Msc3RhZ2UpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAKICAgIGRvYy5sYWJlbD16RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jK3pEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYysiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsvL1BWMTkwOTI5IHVwZGF0ZWQgZm9yIGxhYmVsCiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIGlmICh6RGF0YS5zZklEICAmJiB6RGF0YS5zZklELmluZGV4T2YoIjUwMCIpPT09MCkgewogICB6RGF0YS5wcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCB6RGF0YS5zZklEKTsKICAgbGFiZWwgPSAiUmVjZWl2ZWQgZnJvbSAiICsgekRhdGEucHJvdmlkZXI7CiAgICAgICAgaWYgKHpEYXRhLmZhY2lsaXR5KSB7CiAgICAgICAgICAgIHpEYXRhLmZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuRmFjaWxpdHlfX3IuTmFtZSIsIG51bGwsIHpEYXRhLnNmSUQpOwogICAgICAgICAgICBkb2MubGFiZWwrPSIgYXQgIit6RGF0YS5mYWNpbGl0eTsKICAgICAgICB9Cn0KdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwoKekRhdGEuY2xpZW50VmFsdWU9ZnVuY3Rpb24oZG9jLHZhbCkgey8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OCiAgICB2YWw9dmFsLnJlcGxhY2UoInshZm9ybWF0Tm93fSIsekRhdGEuZm9ybWF0Tm93KTsKICAgIHJldHVybiB2YWw7Cn0KCnpEYXRhLmNsaWVudEZpZWxkcz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxqZCx6ZCkgeyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBpbiBzZXR0aW5nIHRvIGNvbmZpZ3VyZSBuZXcgcmVjb3JkCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKaWYgKGpkICYmIGpkLmluZGV4T2YoInsiKT09PTApIHsKICAgLy97IlR5cGUiOiJFbGlnaWJpbGl0eSIsIk93bmVySWQiOiIwMEdjMDAwMDAwM3ZncXciLCJSZWNvcmRUeXBlSWQiOiIwMTI2QTAwMDAwMEpFS2VRQU8ifTsKICAgdHJ5IHsKICAgICAgIGpkID0gamQucmVwbGFjZSgvJmFwb3M7L2csIiIpLnJlcGxhY2UoLyZxdW90Oy9nLCciJyk7CiAgICAgICB2YXIgamRhdGE9SlNPTi5wYXJzZShqZCk7IC8vRVJTMTkwODA1IGJldHRlciB0aGFuIGV2YWwKICAgICAgIGZvciAodmFyIG4gaW4gamRhdGEpIHsKICAgICAgICAgICB2YXIgdjA9amRhdGFbbl07CiAgICAgICAgICAgdmFyIHY9ekRhdGEuY2xpZW50VmFsdWUoZG9jLHYpOyBhbGVydCgiRVJTMTkwODAzLjk3ICIrbisiPSIrdjArIj0iK3YpOwogICAgICAgICAgIGFyck9mUGFpcnMobix2KTsKICAgICAgIH0KICAgfSBjYXRjaCAoZSkgewogICAgICAgYWxlcnQoIkpTT04gbm90IGluICIramQpOwogICB9Cn0KcmV0dXJuIGFyck9mUGFpcnM7Cn0KCgp6RGF0YS5jbGllbnRDYXNlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CmlmICghemQpIHpkPXpEYXRhOwppZiAoIWxhYmVsKSB7IGxhYmVsPSJJbmRleGVkLSIgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9Ci8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwppZiAoemQuY29udGFjdElkKSBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIHpkLmNvbnRhY3RJZCk7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCmFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgWChkb2MsIlhfU3RhdHVzIikpOwphcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiTmV3ICIremQuY2xhc3NpZmljYXRpb24pOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCmlmICgxPT0xKSB7IC8vRVJTMTcwNTIzICMzNzE2MiBhZnRlciBkcnlydW4KLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCmlmICh6ZC5wcmlvcml0eSAhPSAiTm9ybWFsIikgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsemQucHJpb3JpdHkpOyAgLy9FUlMxNzA1MjQgIzM3MTYyIHByaW9yaXR5IG9uIENhc2UKZWxzZSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5IiwiTWVkaXVtIik7CmFyck9mUGFpcnMucHVzaCgiT3JpZ2luIix6ZC5jaGFubmVsKTsKfQogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX0Nhc2VGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OCnZhciBjYXNlSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ2FzZSIsIGxhYmVsLCBhcnJPZlBhaXJzKTsKcmV0dXJuIGNhc2VJZDsKfTsKCnpEYXRhLmNsaWVudFBhdGllbnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKaWYgKCF6ZCkgemQ9ekRhdGE7CmlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9Ci8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoKICAgIHZhciBydD1YQ3VzdG9tU2V0dGluZyhkb2MsIlBhdGllbnRSZWNvcmRUeXBlX19jIik7IC8vVE9ETyBpbnRvIE1QIEVSUzE5MDgwMiBsaWtlIDAxMjZBMDAwMDAwSkU4eVFBRyBvciBlbXB0eSB0byB1c2UgZGVmYXVsdAogICAgaWYgKHJ0KSB7IGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgcnQpOyB9IC8vRVJTMTkwODAzCiAgICAvL1RPRE8gQ29udGFjdCBvciBBY2NvdW50IEVSUzE5MDYyNCBET05FISEgRVJTMTkwODAyCiAgICBhbGVydCgiQEBAQGFyck9mUGFpcnMgQEBAIithcnJPZlBhaXJzKTsKICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50RmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgphbGVydCgiQEBAQGFyck9mUGFpcnMgQEBAIithcnJPZlBhaXJzKTsKdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgbGFiZWwsIGFyck9mUGFpcnMpOyAvL0VSUzE5MDgwMyAjNjEyNzIKCi8vRVJTMTkwODAzIHNwZWNpZmljIHRvIGNsaWVudCBkYXRhIGVudHJ5CnZhciBkcSA9IHpEYXRhLmRxOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGVyc29uX0FjY291bnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgc2ZJZCArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BlcnNvbl9BY2NvdW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICIgIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIGRxICsgIik7ICIpOwpyZXR1cm4gc2ZJZDsKfTsKCnpEYXRhLmNsaWVudEFjY291bnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKaWYgKCF6ZCkgemQ9ekRhdGE7CmlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9Ci8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoKdmFyIGFjY291bnRJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJBY2NvdW50IiwgbGFiZWwsIGFyck9mUGFpcnMpOwpyZXR1cm4gYWNjb3VudElkOwp9OwoKekRhdGEuY2xpZW50UmVjb3JkPWZ1bmN0aW9uKGRvYyxzZlR5cGUsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgeyAvL0VSUzE5MDYyMCBjbGllbnRSZWNvcmQgZ2VuZXJpYwppZiAoIXpkKSB6ZD16RGF0YTsKaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CnZhciB6cD0iIjsKaWYgKCIsQ2FzZSxDb250YWN0LEFjY291bnQsTGVhZCxPcHBvcnR1bml0eSxaUEFQRVJfX3pTdGFja19fYywiLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiLCIrc2ZUeXBlLnRvTG93ZXJDYXNlKCkrIiwiKT4tMSkgenA9ekRhdGEuenA7Ci8vb25seSBkbyB0aGlzIGlmIHRoZSBmaWVsZHMgZXhpc3QKYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCi8vVE9ETyBwdXQgY2xpZW50IHNwZWNpZmljIGRhdGEgdXBkYXRlcyBoZXJlCgp2YXIgbmV3SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCBzZlR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsKcmV0dXJuIG5ld0lkOwp9OwoKekRhdGEuY2xpZW50Q29tcGxldGU9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsemQpIHtyZXR1cm4gYXJyT2ZQYWlyczt9OyAvL0VSUzE5MDYyNQp6RGF0YS5jbGllbnREZWxpdmVyeT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykge3JldHVybiBhcnJPZlBhaXJzO307IC8vRVJTMTkwNzExICM2MDkwMCBQQU9TCnpEYXRhLmNsaWVudENoaWxkU3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMscGFyZW50SWQpIHsgLy9FUlMxOTA4MTAgIzYxNTcwIGJlIHN1cmUgdG8gY2FsbCBvbiBuZXcgY2hpbGQgZG9jCiAgICB2YXIgcGFpcnM9YXJyT2ZQYWlyczsKICAgIC8vbm8gbWVtb3J5IG9mIHN0YWNrIGNyZWF0aW9uIHZhciBwYWlycz16RGF0YS5zdGFja1BhaXJzOwogICAgekRhdGEucmV2aWV3ZWRTdGF0dXM9IlNwbGl0IjsKICAgIC8vRVJTMTkwODEwIFRPRE8/IHBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIkNoaWxkIFN0YWNrIik7CgogICAgcGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLHBhaXJzKTsKICAgIGlmIChYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpIHsgLy9FUlMxOTA4MTEgbm90IGluIGFsbCBNUHMKICAgICAgICBwYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLHBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196Q2hpbGRGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIGNoaWxkIHJlY29yZCB0eXBlIGlkCiAgICB9CiAgICBwYWlycy5wdXNoKCJaUEFQRVJfX1BhcmVudF9fYyIsIHBhcmVudElkKTsKICAgIGFsZXJ0KCJFUlMxOTA4MTEuMTkxIFpQQVBFUl9fUGFyZW50X19jIisgcGFyZW50SWQpOwogICAgdmFyIGNoaWxkU3RhY2tTRklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIlpQQVBFUl9felN0YWNrX19jIiwgInpTdGFjayBzcGxpdCBvbiAiICsgekRhdGEuZm9ybWF0Tm93LCBwYWlycykgKyAiIjsKICAgIHJldHVybiBjaGlsZFN0YWNrU0ZJZDsKfQovL1BWMTkxMTIyIGFkZGVkIGZvciB1cGxvYWQKekRhdGEuY2xpZW50VXBsb2FkPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGNoYW5uZWwpIHsgLy96RGF0YSBvciB0aGlzPwogICAgdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL0VSUzE5MDgwNQogICAgaWYgKCFjaGFubmVsKSBjaGFubmVsPSJVUExPQUQiOyAvL0lNUE9SVCBpcyB0aGUgb3RoZXIgb25lCiAgICB2YXIgcGFydHM9ekRhdGEuZnJvbUZpbGUuc3BsaXQoIi0iKTsKICAgIHZhciBsYWJlbD16RGF0YS5mcm9tRmlsZTsKICAgIGlmIChwYXJ0cy5sZW5ndGggPj0zKSB7CiAgICAgICAgbGFiZWw9cGFydHNbM107CiAgICAgICAgZm9yICh2YXIgcD00OyBwPHBhcnRzLmxlbmd0aDsgcCsrKSB7bGFiZWwrPSItIitwYXJ0c1twXTt9CiAgICB9CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgekRhdGEubGFiZWw9bGFiZWw7CnJldHVybiBhcnJPZlBhaXJzOwp9OwphbGVydCgiZW5kIGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwNjE1ICM1ODkyMQo="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client library"); //ERS190803 #52661 from OccFit

zData.maxChannels=3; //ERS190731 #61272 zippi is strongly typed
zData.makeStack=true; //PV191122 

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
//PV191122 added for upload
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
alert("end client library"); //ERS190615 #58921

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
