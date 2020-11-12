<!--
// Name: Client Library
// Committer: cory.newey@zpaper.com
// Update: CRN201026 added; CRN201026 added; CRN201026 added; CRN201026 added; CRN201026 #76788 We need reviewedStatus to be "Indexed" for the index rule, so only set the field if it isn't already set.
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-10-26 13:31:17","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKLy9DUk4yMDEwMjUgIzc2Nzg4IE1vdmVkIGZyb20gelN0YWNrIExpYnJhcnkgc28gdGhhdCBpdCBjYW4gYmUgdXNlZCBpbiBtdWx0aXBsZSBydWxlcy4KdmFyIGtleXdvcmRNYXA9e307CnZhciBrZXl3b3Jkcz1bIk5FVzpEb2N1bWVudCBTdGFja34iLCJFTlJMOkVucm9sbG1lbnR+IiwiRU5STDpFTlJPTExNRU5UfiIsIkNPTjpDb25zZW50fiIsIkNPTjpjb25zZW50fiIsIkZBQzpTZXR0aW5nfiIsIkZBQzpEaXN0cmlidXRpb25+IiwiU1RBUlQ6U3RhcnQgRm9ybX4iLCJDSEs6Q2hlY2tsaXN0fiIsIkhJUEFBOkFVVEhPUklaQVRJT05+IiwiSElQQUE6SElQQUF+IiwiSElQQUE6UE9SVEFCSUxJVFl+IiwiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiRklOOlcyfiIsIklDOk1lbWJlciBJRH4iLCJGQVg6Il07Ci8va2V5d29yZE1hcFsiVEVOUiJdID0iVEVOUjpTdGFydCBGb3JtIjsKa2V5d29yZE1hcFsiTkVXIl0gPSJORVc6RG9jdW1lbnQgU3RhY2siOwprZXl3b3JkTWFwWyJFTlJMIl0gPSJFTlJMOkVucm9sbG1lbnQgRm9ybSI7CmtleXdvcmRNYXBbIkZBQyJdID0iRkFDOkZhY2lsaXR5IEVucm9sbG1lbnQgRm9ybSI7CmtleXdvcmRNYXBbIkZBWCJdID0iTkVXOkRvY3VtZW50IFN0YWNrIjsKLy9rZXl3b3JkTWFwWyJTVEFSVCJdID0iTkVXOkRvY3VtZW50IFN0YWNrIjsKa2V5d29yZE1hcFsiQ09OIl0gPSJDT046Q29uc2VudCBGb3JtIjsKa2V5d29yZE1hcFsiSElQQUEiXSA9IkhJUEFBOkhJUEFBIEF1dGhvcml6YXRpb24iOwprZXl3b3JkTWFwWyJSRUYiXSA9IlJFRjpSZWZlcnJhbCI7CmtleXdvcmRNYXBbIkZXMiJdID0iRlcyOlctMiI7IC8vSlBCMjAxMDIzIGFkZGVkCmtleXdvcmRNYXBbIkk5Il0gPSJJOTpJLTkiOyAvL0pQQjIwMTAyMyBhZGRlZAprZXl3b3JkTWFwWyJXNCJdID0iVzQ6Vy00IjsgLy9KUEIyMDEwMjMgYWRkZWQKa2V5d29yZE1hcFsiREVNIl0gPSJERU06RGVtb2dyYXBoaWNzIjsgLy9DUk4yMDEwMjYgYWRkZWQKa2V5d29yZE1hcFsiQ0xJTiJdID0iQ0xJTjpDbGluaWNhbCBOb3RlcyI7IC8vQ1JOMjAxMDI2IGFkZGVkCmtleXdvcmRNYXBbIkZJTiJdID0iRklOOkZpbmFuY2lhbCBJbmZvIjsgLy9DUk4yMDEwMjYgYWRkZWQKa2V5d29yZE1hcFsiSUMiXSA9IklDOkluc3VyYW5jZSBDYXJkIjsgLy9DUk4yMDEwMjYgYWRkZWQKCnpEYXRhLm1heENoYW5uZWxzPTM7IC8vRVJTMTkwNzMxICM2MTI3MiB6aXBwaSBpcyBzdHJvbmdseSB0eXBlZAp6RGF0YS5tYWtlU3RhY2s9dHJ1ZTsgLy9FUlMxOTA4MTQgIzYxNTExCgp6RGF0YS53YXRlcm1hcms9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ3YXRlcm1hcmtfX2MiKTsgLy9FUlMxOTA2MTggYmVzdCBwcmFjdGljZQovL2FsZXJ0KCJFUlMxOTA0MTEgd209Iit6RGF0YS53YXRlcm1hcmsrIiBaUEFQRVJfX3NlcnZlcl9fYz0iK1hDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19zZXJ2ZXJfX2MiKSk7CnpEYXRhLnVwbG9hZERpciA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywidXBsb2FkRGlyX19jIik7IC8vImFsa2VybWVzUm9vdCI7CnpEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInBhdGllbnRRdWV1ZUlkX19jIik7IC8vJzAwRzRDMDAwMDAwTGttWic7IC8vaW5zZXJ0IHRoZSBRdWV1ZSBJRCBvZiB0aGUgZGVzaXJlZCBvd25lcnNoaXAgcXVldWUuIFVwZGF0ZSB3aGVuIG1pZ3JhdGluZyBiZXR3ZWVuIGVudmlyb25tZW50cy4gTmVlZCB0byBhZGQgdGhpcyBxdWV1ZSBpbiBTZXR1cAp6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgovL1RPRE8gekRhdGEua2V5d29yZE1hcFsiRU5STCJdID0iRU5STDpFbnJvbGxtZW50IEZvcm0iOyAgLy9UT0RPIGdldCBmcm9tIHpTdGFjayBwaWNrbGlzdHMKLy9UT0RPIHpEYXRhLmtleXdvcmRNYXBbIkZBQyJdID0iRkFDOkZhY2lsaXR5IEVucm9sbG1lbnQgRm9ybSI7Ci8vRVJTMjAwMjA1IGRlbGV0ZWQgZGVtbyBkYXRhIC0gZG8gd2l0aCBjdXN0b20gc2V0dGluZ3MKCnZhciBjcz1YRGVwbG95bWVudEluZm8oZG9jLCAiQnVzaW5lc3NfUHJvY2Vzc19fYyIpOyAvL0VSUzIwMDIyMiBuZWVkIGJvdGggZGVwbG95bWVudCBpbmZvIGFuZCBjcwovL2FsZXJ0KCJjcz0iK2NzKTsKaWYgKGNzKSB7CiAgICBpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsKICAgIGFsZXJ0KCJFUlMyMDAyMjUgRVZBTCBvbiAiK2NzKTsKICAgIGlmIChjcyAhPT0gIiIpIGV2YWwoIiIrY3MpOyAvL0VSUzIwMDIyMiBUT0RPIEpTT04ucGFyc2UoKSAvL0VSUzIwMDIyNSBiZWVkcyB0byBiZSBldmFsIGJ1dCBhbHNvIG5lZWRzIHRvIHdvcmshISEKICAgIGFsZXJ0KCJObyB0cnkganVzdCBkbyEiKTsKfQoKaWYgKCF6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZSkgeyAvL1RPRE8gY3VzdG9tIHNldHRpbmcgb3IgZGVwbG95bWVudD8KICAgIHpEYXRhLmNoaWxkU3RhY2tSZWNvcmRUeXBlPSIwMTIwUjAwMDAwMU4yb0kiOwp9Cgp6RGF0YS5jbGllbnRJbXBvcnRTT1FMPWZ1bmN0aW9uKGRvYyxmcm9tRmlsZSkgeyAvL0VSUzE5MDcwNiBjdXN0b21pemUgaW1wb3J0cyB1c2VkIGJ5IENyZWF0ZSBTdGFjawogICAgekRhdGEuaW1wb3J0ZXI9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJJbXBvcnRlcl9fYyIpLnRyaW0oKTsKICAgIHZhciBzZklkPSIiOwogICAgdmFyIHBhcnRzPWZyb21GaWxlLnNwbGl0KCJfIik7CiAgICAvL3NmSWQgPSBnZXRTRlJlY29yZElEKGRvYywgIkFjY291bnQiLCB7ICJGYXgiIDogcGFydHNbM10gfSApOwogICAgekRhdGEubWFrZVN0YWNrPXRydWU7IC8vZG8gYWxsIHRoZSB3b3JrIHRoZXJlIGJ5IGRlZmF1bHQKICAgIHJldHVybiBzZklkOwp9OwoKLy9hbGVydCgiekRhdGEuY2xpZW50U3RhY2siKTsKekRhdGEuY2xpZW50U3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHsgLy96RGF0YSBvciB0aGlzPwogICAgdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL0VSUzE5MDgwNSAKCWlmICh6RGF0YS5yZWNlaXZlZCkgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCB6RGF0YS5mb3JtYXROb3cpOyAvL0VSUzE5MDYxNyBUT0RPIHNhdmUgd2F5IHRvIGRvIHRoaXMKCWlmICh6RGF0YS5vd25lcklkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLm93bmVySWQpOyAgLy8gekNoYXJ0YSBRdWV1ZSAiMDBHMzYwMDAwMDJDeVRLIiAKCWlmICh6RGF0YS5jYWxsZXJJZCkgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAoJaWYgKHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEucGF0RW5yb2xsUXVldWVJZCk7CgkKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgekRhdGEuZG9jVHlwZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CiAgICB2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKICAgIGlmICghcGFnZVJhbmdlKSBwYWdlUmFuZ2U9IjEtIitYKGRvYywiWF9wYWdlcyIpOyAKICAgIHZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYywgcGFnZVJhbmdlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0VSUzE5MDgxNCAKICAgIC8vRVJTMTkwODEwIFRPRE8/IGFyck9mUGFpcnMucHVzaCgiWlNUQUNLX19SZWNlaXZlZF9fYyIsIHpEYXRhLmZvcm1hdE5vdyk7CiAgICBhbGVydCgiRVJTMjAwMjEzLjUxIHBhZ2VSYWdlPSIrcGFnZVJhbmdlICsgIiBidXQgcGFnZUNvdW50PSIrcGFnZUNvdW50KTsgLy9FUlMyMDAyMTMgYWxzbyBjYWxsZWQgaW4gbmV3IGluY29taW5nIHN0YWNrCiAgICBpZiAoIVgoZG9jLCJYX2lkeFBhZ2VzIikpIHBhZ2VDb3VudD1YKGRvYywiWF9wYWdlcyIpOyAvL0VSUzIwMDIxMyBUT0RPIGZpeCB6RGF0YS5jb3VudFBhZ2VzKCkKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYWdlc19fYyIsIHBhZ2VDb3VudCk7CiAgICAKICAgIC8vRVJTMjAwMjA0IFRPRE8gelN0YWNrLlByb2dyYW0/CgogICAgaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSB6RGF0YS5QUk9HUkFNX1pDSEFSVEEpIHsgLy9KUEIyMDEwMjMgY2hhbmdlZCBmcm9tIGNsYXNzaWZpY2F0aW9uIHRvIHByb2dyYW1OYW1lCiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsgLy9KUEIxOTA0MjYgY2hhbmdlZCB0byBjbGFzc2lmaWNhdGlvbiBmcm9tIHByb2dyYW0KICAgIH0gZWxzZSBpZiAoekRhdGEucHJvZ3JhbU5hbWUgPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsgLy9KUEIyMDEwMjMgY2hhbmdlZCBmcm9tIGNsYXNzaWZpY2F0aW9uIHRvIHByb2dyYW1OYW1lCiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJIaWdoIik7IAogICAgfSBlbHNlIGlmICh6RGF0YS5wcm9ncmFtTmFtZSA9PT0gekRhdGEuUFJPR1JBTV9aQ0FSVEEpIHsgLy9KUEIyMDEwMjMgY2hhbmdlZCBmcm9tIGNsYXNzaWZpY2F0aW9uIHRvIHByb2dyYW1OYW1lCiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJDcml0aWNhbCIpOwkKICAgIH0gZWxzZSB7CiAgICAJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJOb3JtYWwiKTsKICAgIH0KICAgIAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLCAoIkNvbW11bml0eSIgPT09IHpEYXRhLmNoYW5uZWwgPyB6RGF0YS5jaGFubmVsIDogZG9jLmRlbGl2ZXJlZFRvKSk7IC8vSlBCMTkwNTI5IGFkZGVkIHNvIENvbW11bml0eSBzaG93cyB1cCBpbiBNYXN0ZXIgSW50YWtlIExpc3QKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsZG9jLmRlbGl2ZXJlZEZyb20pOwogICAgaWYgKHpEYXRhLnJldmlld2VkU3RhdHVzKSB7YXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsIHpEYXRhLnJldmlld2VkU3RhdHVzKTsgfSAKICAgIGVsc2UgeyBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IH0KICAgIHpEYXRhLnN0YWNrUGFpcnM9YXJyT2ZQYWlyczsgLy9FUlMxOTA4MTAgIzYxNTcwIGZvciBjaGlsZCBzdGFjayBsYXRlcgogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pTdGFja0ZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCglyZXR1cm4gYXJyT2ZQYWlyczsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudEZpbGUiKTsKekRhdGEuY2xpZW50RmlsZT1mdW5jdGlvbihkb2Msc3RhZ2UpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgLy9DUk4yMDEwMjUgIzc2Nzg4IEZpeGVkIHRvIG1hdGNoIHRoZSBjdXJyZW50IGRlbW8uCiAgICB2YXIgcGF0aWVudE5hbWUgPSBYKGRvYywiWF9aUEFQRVJfX1BhdGllbnRBY2NvdW50X19yLk5hbWUiKTsKICAgIGlmICghcGF0aWVudE5hbWUpIHsKICAgICAgICBwYXRpZW50TmFtZSA9IFgoZG9jLCJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIikgKyAiICIgKyBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwogICAgfQogICAgdmFyIGZheFR5cGUgPSBrZXl3b3JkTWFwW1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpXTsKICAgIGlmICghZmF4VHlwZSkgeyBmYXhUeXBlID0gWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IH0KICAgIGlmICghZmF4VHlwZS5pbmRleE9mKCc6JykgPj0gMCkgeyBmYXhUeXBlID0gZmF4VHlwZS5zcGxpdCgnOicpWzFdOyB9CiAgICAvLyBkb2MubGFiZWwgPSBwYXRpZW50TmFtZSArICIgLSAiICsgZmF4VHlwZSArICIgLSAiICsgTU1kZFlZWVk7CiAgICBkb2MubGFiZWwgPSBwYXRpZW50TmFtZSArICIgLSAiICsgZmF4VHlwZTsKICAgIGFsZXJ0KCJFUlMxNzA4MjkgZGJJRD0iK2RvYy5kYklEKyIgbGFiZWw9Iitkb2MubGFiZWwpOwogICAgaWYgKHpEYXRhLnNmSUQgICYmIHpEYXRhLnNmSUQuaW5kZXhPZigiNTAwIik9PT0wKSB7CgkgICAgekRhdGEucHJvdmlkZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQWNjb3VudC5OYW1lIiwgbnVsbCwgekRhdGEuc2ZJRCk7IAoJICAgIGxhYmVsID0gIlJlY2VpdmVkIGZyb20gIiArIHpEYXRhLnByb3ZpZGVyOwogICAgICAgIGlmICh6RGF0YS5mYWNpbGl0eSkgewogICAgICAgICAgICB6RGF0YS5mYWNpbGl0eSA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50LkZhY2lsaXR5X19yLk5hbWUiLCBudWxsLCB6RGF0YS5zZklEKTsKICAgICAgICAgICAgZG9jLmxhYmVsKz0iIGF0ICIrekRhdGEuZmFjaWxpdHk7CiAgICAgICAgfQoJfQoJdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwoJdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmNsaWVudFZhbHVlPWZ1bmN0aW9uKGRvYyx2YWwpIHsvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiAKICAgIHZhbD12YWwucmVwbGFjZSgieyFmb3JtYXROb3d9Iix6RGF0YS5mb3JtYXROb3cpOwogICAgcmV0dXJuIHZhbDsKfQoKekRhdGEuY2xpZW50RmllbGRzPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGpkLHpkKSB7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIGluIHNldHRpbmcgdG8gY29uZmlndXJlIG5ldyByZWNvcmQKICAgIGlmICghemQpIHpkPXpEYXRhOwoJaWYgKGpkICYmIGpkLmluZGV4T2YoInsiKT09PTApIHsgCgkgICAgLy97IlR5cGUiOiJFbGlnaWJpbGl0eSIsIk93bmVySWQiOiIwMEdjMDAwMDAwM3ZncXciLCJSZWNvcmRUeXBlSWQiOiIwMTI2QTAwMDAwMEpFS2VRQU8ifTsKCSAgICAvL05PVCBBIEdPT0QgSURFQSBqZD1qZC5yZXBsYWNlQWxsKCJcIiIsIiciKTsgLy9FUlMxOTA4MTEgIzYxNTcwIEhBQ0s/CgkgICAgdHJ5IHsKICAgIAkgICAgdmFyIGpkYXRhPUpTT04ucGFyc2UoamQpOyAvL0VSUzE5MDgwNSBiZXR0ZXIgdGhhbiBldmFsCiAgICAJICAgIGZvciAodmFyIG4gaW4gamRhdGEpIHsKICAgIAkgICAgICAgIHZhciB2MD1qZGF0YVtuXTsgCiAgICAJICAgICAgICB2YXIgdj16RGF0YS5jbGllbnRWYWx1ZShkb2MsdjApOyAvL0VSUzE5MDgxMSAsdiBub3cgLHYwCiAgICAJICAgICAgICAvL2FsZXJ0KCJFUlMxOTA4MDMuOTcgIituKyI9Iit2MCsiPSIrdik7IAogICAgCSAgICAgICAgYXJyT2ZQYWlycy5wdXNoKG4sdik7IC8vRVJTMTkwODExIGFkZGVkIC5wdXNoCiAgICAJICAgIH0KCSAgICB9IGNhdGNoIChlKSB7CgkgICAgICAgIGFsZXJ0KCJKU09OIG5vdCBpbiAiK2pkKyIgRXhjZXB0aW9uOiAiK2UpOyAvL0VSUzE5MDgxMSBhZGRlZCBlCgkgICAgfQoJfQoJcmV0dXJuIGFyck9mUGFpcnM7Cn0KCgp6RGF0YS5jbGllbnRDYXNlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghemQudHJpYWdlVHlwZSAmJiBYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSkgemQudHJpYWdlVHlwZT1YKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsgLy9FUlMyMDAzMDgKCWlmICghbGFiZWwpIHsgbGFiZWw9IkluZGV4ZWQtIiArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KCQoJYWxlcnQoIkVSUzIwMDMwOC4xMjggbmV3IENhc2UgcHJvdmlkZXJJZD0iK3pkLnByb3ZpZGVySWQrIiBwYXRpZW50SWQ9Iit6ZC5wYXRpZW50SWQpOwoJCgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCWlmICh6ZC5jb250YWN0SWQpIGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgemQuY29udGFjdElkKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgWChkb2MsIlhfU3RhdHVzIikpOwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLHpkLnRyaWFnZVR5cGUpOyAvL0VSUzIwMDMwOAoJLy9FUlMyMDAyMDUgYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK3pkLmNsYXNzaWZpY2F0aW9uKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJLy9FUlMyMDAzMDggYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK3pkLmRvY1R5cGUpOwoJaWYgKDE9PTEpIHsgLy9FUlMxNzA1MjMgIzM3MTYyIGFmdGVyIGRyeXJ1bgoJICAgIGFsZXJ0KCJAQEAgemQucHJpb3JpdHkgPT4gKiIgKyB6ZC5wcmlvcml0eSArICIqIik7CgkJLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCgkJaWYgKHpkLnByaW9yaXR5ICE9ICJOb3JtYWwiKSB7IGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLHpkLnByaW9yaXR5KTsgfSAgLy9FUlMxNzA1MjQgIzM3MTYyIHByaW9yaXR5IG9uIENhc2UKCQllbHNlIHsgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOyB9CgkJYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCJGYXgiKTsgLy9FUlNhMjAwMjA1IHJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLHpkLmNoYW5uZWwpOwoJfQogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX0Nhc2VGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OCiAgICAKICAgIGFsZXJ0KCJFUlMyMDAzMDguMTQzIG5ldyBDYXNlIHByb3ZpZGVySWQ9Iit6ZC5wcm92aWRlcklkKyIgcGF0aWVudElkPSIremQucGF0aWVudElkKTsKICAgIGlmICh6ZC5wcm92aWRlcklkICYmIHpkLnByb3ZpZGVySWQuaW5kZXhPZigiMDAxIik9PTApIHsgYXJyT2ZQYWlycy5wdXNoKCJBY2NvdW50SWQiLCB6ZC5wcm92aWRlcklkKTsgfSAvL0VSUzIwMDMwOAogICAgaWYgKHpkLnByb3ZpZGVySWQgJiYgemQucHJvdmlkZXJJZC5pbmRleE9mKCIwMDMiKT09MCkgeyBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIHpkLnByb3ZpZGVySWQpOyB9IC8vRVJTMjAwMzA4CiAgICBpZiAoemQucGF0aWVudElkICYmIHpkLnBhdGllbnRJZC5pbmRleE9mKCIwMDEiKT09MCkgeyBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIHpkLnBhdGllbnRJZCk7IH0gLy9FUlMyMDAzMDgKICAgIGlmICh6ZC5wYXRpZW50SWQgJiYgemQucGF0aWVudElkLmluZGV4T2YoIjAwMyIpPT0wKSB7IGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgemQucGF0aWVudElkKTsgfSAvL0VSUzIwMDMwOAogICAgaWYgKHpkLnpjaGFubmVsLm93bmVyKSB7IGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLnpjaGFubmVsLm93bmVyKTsgfSAvL0VSUzIwMDMwOAogICAgCgl2YXIgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gY2FzZUlkOwp9OwoKekRhdGEuY2xpZW50UGF0aWVudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJaWYgKHpkLnBhdGllbnRJZCkgeyAvL0VSUzIwMDIwNSAjNjg4MjUgUHJvZ3JhbSBNZW1iZXJzCgkgICAgYWxlcnQoIlBhdGllbnQgYWxyZWFkeSBleGlzdHMgaW4gIit6ZC5wYXRpZW50SWQpOwoJICAgIHJldHVybiB6ZC5wYXRpZW50SWQ7IC8vVE9PRCBnZXQgZnJvbSBYX3BhdGllbnRJZCAgPz8/PwoJfQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7Cgl2YXIgcD0iWlBBUEVSX18iOyAvL0VSUzIwMDIwMiBhc3N1bWUgd29ya2Zsb3cgb24gcmVsYXRlZCByZWNvcmQgdHlwZXMKCWlmICh6RGF0YS5wYXRpZW50VHlwZS5pbmRleE9mKCJfX2MiKSA+IC0xKSB7IHA9IiI7IH0gLy9FUlMyMDAyMDMgdHlwbwoJaWYgKDE9PTApIHsgLy9FUlMyMDAyMDIgc2VlIGlmIHdvcmtmbG93IGVuYWJsZWQKCSAgICBhcnJPZlBhaXJzLnB1c2gocCsibmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJICAgIGFyck9mUGFpcnMucHVzaChwKyJsYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgkgICAgYXJyT2ZQYWlycy5wdXNoKHArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCX0KCiAgICB2YXIgcnQ9WEN1c3RvbVNldHRpbmcoZG9jLCJQYXRpZW50UmVjb3JkVHlwZV9fYyIpOyAvL1RPRE8gaW50byBNUCBFUlMxOTA4MDIgbGlrZSAwMTI2QTAwMDAwMEpFOHlRQUcgb3IgZW1wdHkgdG8gdXNlIGRlZmF1bHQKICAgIC8vaWYgKHJ0KSB7IGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgcnQpOyB9IC8vRVJTMTkwODAzCiAgICAvL1RPRE8gQ29udGFjdCBvciBBY2NvdW50IEVSUzE5MDYyNCBET05FISEgRVJTMTkwODAyCiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudEZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCiAgICBhcnJPZlBhaXJzPVtdOyAvL0VSUzIwMDIwNCB0ZXN0aW5nIHRvIGdldCBpdCBnb2luZwogICAgCiAgICAvL0VSUzIwMDIwMiBuZWVkIHRvIG1ha2UgdGhlIEFjY291bnQgd2l0aCBQYXRpZW50IHJlY29yZFR5cGUgZmlyc3QKICAgIC8vMDEyNDYwMDAwMDBOR0ZZQUE0IGlzIC56cGFwZXIgZm9yIFBhdGllbnQKICAgIHZhciBhciA9IFtdOwogICAgaWYgKHJ0KSB7IGFyLnB1c2goIlJlY29yZFR5cGVJZCIsIHJ0KTsgfSAvL0VSUzE5MDgwMyAvL0VSUzIwMDIyMiAjNjkxNDkgbW92ZWQgZG93biBhbmQgYWRkZWQgZWxzZSAKICAgIGVsc2UgYXIucHVzaCgiUmVjb3JkVHlwZUlkIiwiMDEyNDYwMDAwMDBOR0ZZQUE0Iik7CiAgICBhci5wdXNoKCJGaXJzdE5hbWUiLHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOwogICAgYXIucHVzaCgiTGFzdE5hbWUiLHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICB2YXIgcGF0aWVudE5hbWU9ekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKyIsICIrekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYzsKICAgIGlmICh6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKSBhci5wdXNoKCJQZXJzb25CaXJ0aERhdGUiLHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpOwogICAgdmFyIGFJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgIkFjY291bnQiLCBudWxsLCBhcik7IC8vRVJTMjAwMjA0IHBlcnNvbiBhY2NvdW50IHNvIGRvIG5vdCBzZXQgcGF0aWVudE5hbWUKICAgIAogICAgaWYgKGFJZCAmJiBhSWQgIT0gIk5FVyIgJiYgYUlkLmluZGV4T2YoIkVSUk9SIik9PS0xKSB7CiAgICAgICAgdmFyIHNmSWQgPSAiIjsKICAgIAkKICAgIAkvL0VSUzE5MDgwMyBzcGVjaWZpYyB0byBjbGllbnQgZGF0YSBlbnRyeQogICAgCXZhciBkcSA9IHpEYXRhLmRxOwogICAgCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBzZklkICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BlcnNvbl9BY2NvdW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICIgIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIGRxICsgIik7ICIpOwogICAgfQogICAgcmV0dXJuIHsnRVJST1InOiAncGF0aWVudCBub3QgY3JlYXRlZCd9Cn07Cgp6RGF0YS5jbGllbnRBY2NvdW50PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCgl2YXIgYWNjb3VudElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkFjY291bnQiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CglyZXR1cm4gYWNjb3VudElkOwp9OwoKekRhdGEuY2xpZW50UmVjb3JkPWZ1bmN0aW9uKGRvYyxzZlR5cGUsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgeyAvL0VSUzE5MDYyMCBjbGllbnRSZWNvcmQgZ2VuZXJpYwoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQoJLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7Cgl2YXIgenA9IiI7CglpZiAoIixDYXNlLENvbnRhY3QsQWNjb3VudCxMZWFkLE9wcG9ydHVuaXR5LFpQQVBFUl9felN0YWNrX19jLCIudG9Mb3dlckNhc2UoKS5pbmRleE9mKCIsIitzZlR5cGUudG9Mb3dlckNhc2UoKSsiLCIpPi0xKSB6cD16RGF0YS56cDsKCS8vb25seSBkbyB0aGlzIGlmIHRoZSBmaWVsZHMgZXhpc3QKCWFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCAiZG9jLmRiSUQuUmVjIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCQoJLy9UT0RPIHB1dCBjbGllbnQgc3BlY2lmaWMgZGF0YSB1cGRhdGVzIGhlcmUKCgl2YXIgbmV3SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCBzZlR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsKCXJldHVybiBuZXdJZDsKfTsKCnpEYXRhLmNsaWVudENvbXBsZXRlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHpkKSB7cmV0dXJuIGFyck9mUGFpcnM7fTsgLy9FUlMxOTA2MjUKekRhdGEuY2xpZW50RGVsaXZlcnk9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHsgLy9FUlMyMDAyMDIgVE9ETyBjb25zaWRlciBuZXcgRG9jdW1lbnRfTVZOCiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfTsgLy9FUlMxOTA3MTEgIzYwOTAwIFBBT1MKCnpEYXRhLmNsaWVudENoaWxkU3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMscGFyZW50SWQpIHsgLy9FUlMxOTA4MTAgIzYxNTcwIGJlIHN1cmUgdG8gY2FsbCBvbiBuZXcgY2hpbGQgZG9jCiAgICB2YXIgcGFpcnM9YXJyT2ZQYWlyczsKICAgIC8vbm8gbWVtb3J5IG9mIHN0YWNrIGNyZWF0aW9uIHZhciBwYWlycz16RGF0YS5zdGFja1BhaXJzOwogICAgLy9DUk4yMDEwMjYgIzc2Nzg4IFdlIG5lZWQgcmV2aWV3ZWRTdGF0dXMgdG8gYmUgIkluZGV4ZWQiIGZvciB0aGUgaW5kZXggcnVsZSwgc28gb25seSBzZXQgdGhlIGZpZWxkIGlmIGl0IGlzbid0IGFscmVhZHkgc2V0LgogICAgaWYgKCF6RGF0YS5yZXZpZXdlZFN0YXR1cykgeyB6RGF0YS5yZXZpZXdlZFN0YXR1cz0iU3BsaXQiOyB9CiAgICAvL0VSUzE5MDgxMCBUT0RPPyBwYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJDaGlsZCBTdGFjayIpOwoKICAgIHBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxwYWlycyk7CiAgICBpZiAoWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pDaGlsZEZpZWxkc19fYyIpKSB7IC8vRVJTMTkwODExIG5vdCBpbiBhbGwgTVBzCiAgICAgICAgcGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxwYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBjaGlsZCByZWNvcmQgdHlwZSBpZAogICAgfQogICAgcGFpcnMucHVzaCgiWlBBUEVSX19QYXJlbnRfX2MiLCBwYXJlbnRJZCk7CiAgICBpZiAoekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGUpIHBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGUpOwogICAgCiAgICBwYWlycy5wdXNoKCIiKyJQcm9ncmFtX19jIix6RGF0YS5wcm9ncmFtTmFtZSk7IC8vRVJTMjAwMjA1IFRPRE8gaW4gcGFja2FnZSBhbmQgaW50byBiYXNlIGNhbGwKICAgIC8vRVJTMjAwMjI5IGlmICh6RGF0YS5wYXRpZW50SWQpIHBhaXJzLnB1c2goIlByb2dyYW1fTWVtYmVyX01WTl9fYyIsekRhdGEucGF0aWVudElkKTsgLy9FUlMyMDAyMDUgUHJvZ3JhbV9NZW1iZXJfTVZOX19jIHdhcyB0aGUgVElDS0VUISEhCiAgICBhbGVydCgiRVJTMTkwODExLjE5MSBaUEFQRVJfX1BhcmVudF9fYyIrIHBhcmVudElkKyIgY2hpbGQgekRhdGEuY2hpbGRTdGFja1JlY29yZFR5cGU9Iit6RGF0YS5jaGlsZFN0YWNrUmVjb3JkVHlwZSk7CiAgICB2YXIgY2hpbGRTdGFja1NGSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCAielN0YWNrIHNwbGl0IG9uICIgKyB6RGF0YS5mb3JtYXROb3csIHBhaXJzKSArICIiOwogICAgCiAgICBpZiAoIXpEYXRhLnBhdGllbnRJZCAmJiBYKGRvYywiWF9aUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIikgKXsgLy9FUlMyMDAzMDggSEFDSwogICAgICAgIHpEYXRhLnBhdGllbnRJZD1YKGRvYywiWF9aUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIik7CiAgICAgICAgYWxlcnQoIkVSUzIwMDMwOCBXSFkgTk9UIGluIHpEYXRhPyIpOwogICAgfQogICAgaWYgKHpEYXRhLnBhdGllbnRJZCkgeyAvL0VSUzIwMDMwOCBjcmVhdGUgYW4gQWN0aXZpdHkgRXZlbnQgcmVsYXRlZCB0byB0aGUgUGF0aWVudCAoQWNjb3VudCkgZm9yIHRoZSBUaW1lbGluZQogICAgICAgIGlmICghekRhdGEuZG9jVHlwZSAmJiBYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSkgekRhdGEuZG9jVHlwZT1YKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsKICAgICAgICB2YXIgYXJyPVtdOwogICAgICAgIC8vTk9UIFNFTEVDVCBBY2NvdW50SWQsQWN0aXZpdHlEYXRlLENyZWF0ZWREYXRlLFN0YXR1cyxTdWJqZWN0LFRhc2tTdWJ0eXBlLFdoYXRJZCxXaG9JZCBGUk9NIFRhc2sgd2hlcmUgQWN0aXZpdHlEYXRlID4gMjAyMC0wMi0wMQogICAgICAgIC8vU0VMRUNUIElkLEFjY291bnRJZCxBY3Rpdml0eURhdGUsQ3JlYXRlZERhdGUsU3ViamVjdCxXaGF0SWQsV2hvSWQgRlJPTSBFdmVudCB3aGVyZSBJZCA9ICcwMFU0VDAwMDAwMnZDaHJVQUUnCiAgICAgICAgLy9hcnIucHVzaCgiV2hvSWQiLHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMjAwMzEwIHRpbWVsaW5lIHRyaWNrCiAgICAgICAgaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMDEiKT09MCkgewogICAgICAgICAgICBhcnIucHVzaCgiV2hhdElkIix6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzIwMDMxMCB0aW1lbGluZSB0cmljawogICAgICAgICAgICAvL2Fyci5wdXNoKCJBY2NvdW50SWQiLHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMjAwMzEwIHRpbWVsaW5lIHRyaWNrCiAgICAgICAgfSBlbHNlIGlmICh6RGF0YS5jYXNlSWQpIGFyci5wdXNoKCJXaGF0SWQiLHpEYXRhLmNhc2VJZCk7CiAgICAgICAgZWxzZSBpZiAoekRhdGEucHJvdmlkZXJJZCkgYXJyLnB1c2goIldoYXRJZCIsekRhdGEucHJvdmlkZXJJZCk7CiAgICAgICAgZWxzZSBhcnIucHVzaCgiV2hhdElkIixjaGlsZFN0YWNrU0ZJZCk7CiAgICAgICAgLy9hcnIucHVzaCgiVGFza1N1YnR5cGUiLCJUYXNrIik7CiAgICAgICAgYXJyLnB1c2goIlN1YmplY3QiLHpEYXRhLnN0YWdlICsgIiAiK3pEYXRhLmRvY1R5cGUpOwogICAgICAgIGFyci5wdXNoKCJEZXNjcmlwdGlvbiIsIkNoZWNrIG91dCAiK2RvYy5kYklEKTsKICAgICAgICAvL2Fyci5wdXNoKCJBY3Rpdml0eURhdGVUaW1lIix6RGF0YS5mb3JtYXROb3cpOyAvL0VSUzIwMDMwOSBoYWNraW5nIGF3YXkhCiAgICAgICAgYXJyLnB1c2goIkFjdGl2aXR5RGF0ZSIsekRhdGEuZm9ybWF0Tm93LnN1YnN0cmluZygwLDEwKSk7CiAgICAgICAgYXJyLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMjRUMDAwMDAwOGFGbVFBSSIpOyAvL0VSUzIwMDMxMCBIQUNLIGZvciBUYXNrIG9uIENhcmVQbGFuCiAgICAgICAgLy9hcnIucHVzaCgiRHVyYXRpb25Jbk1pbnV0ZXMiLCI1Iik7CiAgICAgICAgLy9hcnIucHVzaCgiU3RhdHVzIiwiQ29tcGxldGVkIik7CiAgICAgICAgCiAgICAgICAgdmFyIGxhYmVsPSJUaW1lbGluZSAiK3pEYXRhLmRvY1R5cGU7CiAgICAgICAgdmFyIGFjdElkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiVGFzayIsIG51bGwsIGFycik7IC8vRVJTMjAwMzA5IG51bGwgbWVhbnMgbm8gTmFtZSBmaWVsZAogICAgICAgIC8vdmFyIGFjdElkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiRXZlbnQiLCBudWxsLCBhcnIpOyAvL0VSUzIwMDMwOSBudWxsIG1lYW5zIG5vIE5hbWUgZmllbGQKICAgICAgICBhbGVydCgiRVJTMjAwMzA4LjI2MiB0aW1lbGluZSBhY3Rpdml0eSAiK2FjdElkKTsKICAgIH0gZWxzZSB7IGFsZXJ0KCJFUlMyMDAzMDguMjYzIGJlIHdvcnJpZWQgdGhlcmUgaXMgbm8gcGF0aWVudCEiKTsgfQogICAgaWYgKDE9PT0xICYmIHpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQpIHsgekRhdGEucmVjRG9jSWQ9ekRhdGEuY2xpZW50UmVjZWl2ZWREb2N1bWVudChkb2MsY2hpbGRTdGFja1NGSWQpOyB9IC8vRVJTMjAxMDE4ICM3NzI1MgogICAgcmV0dXJuIGNoaWxkU3RhY2tTRklkOwp9OwoKCnpEYXRhLmNsaWVudFN0YWNrQ29tcGxldGU9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsemQpIHsgLy9FUlMyMDAzMTQgIzcwMzM2CiAgICBpZiAoIXpkKSB6ZD16RGF0YTsgLy9FUlMyMDA0MDYgIzcxMTU2CiAgICBhcnJPZlBhaXJzLnB1c2goIlRpbWVfQ29tcGxldGVfRGF0ZV9fYyIsemQuZm9ybWF0Tm93KTsgLy9mb3IgZGFzaGJvYXJkCiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfTsgLy9FUlMxOTA2MjUKCmFsZXJ0KCJlbmQgY2xpZW50IGxpYnJhcnkiKTsgLy9FUlMxOTA2MTUgIzU4OTIx"},"ordinal":4}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client library"); //ERS190803 #52661 from OccFit

//CRN201025 #76788 Moved from zStack Library so that it can be used in multiple rules.
var keywordMap={};
var keywords=["NEW:Document Stack~","ENRL:Enrollment~","ENRL:ENROLLMENT~","CON:Consent~","CON:consent~","FAC:Setting~","FAC:Distribution~","START:Start Form~","CHK:Checklist~","HIPAA:AUTHORIZATION~","HIPAA:HIPAA~","HIPAA:PORTABILITY~","REF:REFERRAL","REF:Referral","FIN:W2~","IC:Member ID~","FAX:"];
//keywordMap["TENR"] ="TENR:Start Form";
keywordMap["NEW"] ="NEW:Document Stack";
keywordMap["ENRL"] ="ENRL:Enrollment Form";
keywordMap["FAC"] ="FAC:Facility Enrollment Form";
keywordMap["FAX"] ="NEW:Document Stack";
//keywordMap["START"] ="NEW:Document Stack";
keywordMap["CON"] ="CON:Consent Form";
keywordMap["HIPAA"] ="HIPAA:HIPAA Authorization";
keywordMap["REF"] ="REF:Referral";
keywordMap["FW2"] ="FW2:W-2"; //JPB201023 added
keywordMap["I9"] ="I9:I-9"; //JPB201023 added
keywordMap["W4"] ="W4:W-4"; //JPB201023 added
keywordMap["DEM"] ="DEM:Demographics"; //CRN201026 added
keywordMap["CLIN"] ="CLIN:Clinical Notes"; //CRN201026 added
keywordMap["FIN"] ="FIN:Financial Info"; //CRN201026 added
keywordMap["IC"] ="IC:Insurance Card"; //CRN201026 added

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

    if (zData.programName === zData.PROGRAM_ZCHARTA) { //JPB201023 changed from classification to programName
    	arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB190426 changed to classification from program
    } else if (zData.programName === zData.PROGRAM_ZPAPYRUS) { //JPB201023 changed from classification to programName
    	arrOfPairs.push(zp+"Priority__c", "High"); 
    } else if (zData.programName === zData.PROGRAM_ZCARTA) { //JPB201023 changed from classification to programName
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
    //CRN201025 #76788 Fixed to match the current demo.
    var patientName = X(doc,"X_ZPAPER__PatientAccount__r.Name");
    if (!patientName) {
        patientName = X(doc,"X_ZPAPER__FirstName__c") + " " + X(doc, "X_ZPAPER__LastName__c");
    }
    var faxType = keywordMap[X(doc,"X_ZPAPER__faxType__c")];
    if (!faxType) { faxType = X(doc,"X_ZPAPER__faxType__c"); }
    if (!faxType.indexOf(':') >= 0) { faxType = faxType.split(':')[1]; }
    // doc.label = patientName + " - " + faxType + " - " + MMddYYYY;
    doc.label = patientName + " - " + faxType;
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
	    alert("@@@ zd.priority => *" + zd.priority + "*");
		//arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
		if (zd.priority != "Normal") { arrOfPairs.push("Priority",zd.priority); }  //ERS170524 #37162 priority on Case
		else { arrOfPairs.push("Priority","Medium"); }
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
    //CRN201026 #76788 We need reviewedStatus to be "Indexed" for the index rule, so only set the field if it isn't already set.
    if (!zData.reviewedStatus) { zData.reviewedStatus="Split"; }
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
