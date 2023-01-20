<!--
// Name: Copper Client Library
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2023-01-20 04:56:27","evalContinue":"true","active":true,"button":"","name":"Copper Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNvcHBlciBjbGllbnQgbGlicmFyeSIpOyAvL0VSUzIxMDQyNCAjODIwODEKLy9FUlMyMDExMTcgVE9ETyBnZXQgcmlkIG9mZiB0aGVzZSBrZXl3b3JkcyBhbmQgdXNlIGEgZG9jdW1lbnQgam91cm5leSB3aXphcmQgZnJvbSBLUFMgYW5kIEpha2UKCi8vQ1JOMjAxMDI1ICM3Njc4OCBNb3ZlZCBmcm9tIHpTdGFjayBMaWJyYXJ5IHNvIHRoYXQgaXQgY2FuIGJlIHVzZWQgaW4gbXVsdGlwbGUgcnVsZXMuCnZhciBrZXl3b3JkTWFwPXt9OyAvL1RPRE8yMTA0MjQgcmVtb3ZlIGNvbXBsZXRlbHkKdmFyIGtleXdvcmRzPVtdOyAvL1RPRE8yMTA0MjQgcmVtb3ZlIGNvbXBsZXRlbHkKCnpEYXRhLm1heENoYW5uZWxzPTQ7IC8vRVJTMTkwNzMxICM2MTI3MiB6aXBwaSBpcyBzdHJvbmdseSB0eXBlZAp6RGF0YS5tYWtlU3RhY2s9ZmFsc2U7IC8vRVJTMTkwODE0ICM2MTUxMQp6RGF0YS51cGxvYWREaXIgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInVwbG9hZERpcl9fYyIpOyAvLyJhbGtlcm1lc1Jvb3QiOwp6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJwYXRpZW50UXVldWVJZF9fYyIpOyAvLycwMEc0QzAwMDAwMExrbVonOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKekRhdGEucmVjVHlwZVJlcXVlc3QgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInJlY1R5cGVSZXF1ZXN0X19jIik7IC8vJzAxMjRDMDAwMDAwQ2o1WSc7IC8vSUQgb2YgdGhlIENhc2UgUmVjb3JkIFR5cGUgUmVxdWVzdF9QU19NVk4KCnZhciBjcz1YRGVwbG95bWVudEluZm8oZG9jLCAiQnVzaW5lc3NfUHJvY2Vzc19fYyIpOyAvL0VSUzIwMDIyMiBuZWVkIGJvdGggZGVwbG95bWVudCBpbmZvIGFuZCBjcwovL2FsZXJ0KCJjcz0iK2NzKTsKaWYgKGNzKSB7CiAgICBpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsKICAgIGFsZXJ0KCJFUlMyMDAyMjUgRVZBTCBvbiAiK2NzKTsKICAgIGlmIChjcyAhPT0gIiIpIGV2YWwoIiIrY3MpOyAvL0VSUzIwMDIyMiBUT0RPIEpTT04ucGFyc2UoKSAvL0VSUzIwMDIyNSBiZWVkcyB0byBiZSBldmFsIGJ1dCBhbHNvIG5lZWRzIHRvIHdvcmshISEKICAgIGFsZXJ0KCJObyB0cnkganVzdCBkbyEiKTsKfQoKekRhdGEuY2xpZW50SW1wb3J0U09RTD1mdW5jdGlvbihkb2MsZnJvbUZpbGUpIHsgLy9FUlMxOTA3MDYgY3VzdG9taXplIGltcG9ydHMgdXNlZCBieSBDcmVhdGUgU3RhY2sKICAgIHpEYXRhLmltcG9ydGVyPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiSW1wb3J0ZXJfX2MiKS50cmltKCk7CiAgICB2YXIgc2ZJZD0iIjsKICAgIHZhciBwYXJ0cz1mcm9tRmlsZS5zcGxpdCgiXyIpOwogICAgLy9zZklkID0gZ2V0U0ZSZWNvcmRJRChkb2MsICJBY2NvdW50IiwgeyAiRmF4IiA6IHBhcnRzWzNdIH0gKTsKICAgIHpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL2RvIGFsbCB0aGUgd29yayB0aGVyZSBieSBkZWZhdWx0CiAgICByZXR1cm4gc2ZJZDsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudFN0YWNrIik7CnpEYXRhLmNsaWVudFN0YWNrPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzKSB7IC8vVE9ETzIxMDQyNCB1c2UgdGhlIHpDaGFubmVsIGFjdGlvbgogICAgdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL0VSUzE5MDgwNSAvL1RPRE8yMTA0MjQgWlBBUEVSNl9fCiAgICBpZiAoekRhdGEuZWRpdGlvbiA9PSAiQ29wcGVyIiB8fCB6RGF0YS56cHMuaW5kZXhPZigielN0YWNrIikgPT0gLTEgKSB7CiAgICAgICAgYWxlcnQoIkVSUzIxMDQyNCAiK3pEYXRhLmVkaXRpb24rIiBzbyBubyB6U3RhY2siKTsKICAgICAgICAvL25lZWQgdGhlIGNsaWVudEZpZWxkcyB0byBkbyBpdCByZXR1cm4gYXJyT2ZQYWlyczsKICAgIH0KCWlmICh6RGF0YS5vd25lcklkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLm93bmVySWQpOyAgLy8gekNoYXJ0YSBRdWV1ZSAiMDBHMzYwMDAwMDJDeVRLIiAKCWlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pTdGFja0ZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCglyZXR1cm4gYXJyT2ZQYWlyczsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudEZpbGUiKTsKekRhdGEuY2xpZW50RmlsZT1mdW5jdGlvbihkb2Msc3RhZ2UpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwoJdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7CgkvL3VwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Cgp6RGF0YS5jbGllbnRWYWx1ZT1mdW5jdGlvbihkb2MsdmFsKSB7Ly9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCiAgICB2YWw9dmFsLnJlcGxhY2UoInshZm9ybWF0Tm93fSIsekRhdGEuZm9ybWF0Tm93KTsKICAgIHJldHVybiB2YWw7Cn0KCnpEYXRhLmNsaWVudEZpZWxkcz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxqZCx6ZCkgeyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBpbiBzZXR0aW5nIHRvIGNvbmZpZ3VyZSBuZXcgcmVjb3JkCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKICAgIHZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwogICAgaWYgKCFwYWdlUmFuZ2UpIHBhZ2VSYW5nZT0iMS0iK1goZG9jLCJYX3BhZ2VzIik7IAogICAgdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLCBwYWdlUmFuZ2UpOyAvL1RPRE8gbm8gcGxhY2UgdG8gc3RvcmUgb24gUkQKICAgIGlmICh6ZC56cHMgIT0gIiIpIHsgLy9pZiBUcmFuc3BvcnQgaW4gU2VydmljZSBDbG91ZCB0aGVuIHpkLnpwcyBlbXB0eSBub3QgUmVjZWl2ZWREb2N1bWVudAogICAgICAgIGlmICh6ZC5lZGl0aW9uPT0iQ29wcGVyIiB8fCB6ZC5zZklkLmluZGV4T2YoIjBpbyIpPT09MCkgeyAvL0VSUzIxMDQyNCBSZXF1aXJlZCBmaWVsZHMgYXJlIG1pc3Npbmc6IFtOYW1lLCBTdGF0dXNdIFRPRE8gTU9SRSBSRCBGSUVMRFMKICAgICAgICAgICAgaWYgKHpEYXRhLm93bmVySWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEub3duZXJJZCk7ICAvLyB6Q2hhcnRhIFF1ZXVlICIwMEczNjAwMDAwMkN5VEsiIAogICAgCSAgICBpZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJOYW1lIiwgekRhdGEuYXR0YWNoTGFiZWwpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJEcmFmdCIpOyAvL0VSUzIxMDQyNCB3aGVyZSBhcmUgdGhlIHBpY2tsaXN0IGRlZmluZWQKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJTb3VyY2UiLCBkb2MuZGVsaXZlcmVkVG8pOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkRpcmVjdGlvbiIsICJJbmNvbWluZyIpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkRvY3VtZW50TnVtYmVyIiwgInp6OiIrZG9jLmRiSUQpOwogICAgICAgIH0KICAgIH0KCXJldHVybiBhcnJPZlBhaXJzOwp9CgoKekRhdGEuY2xpZW50Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgeyAvL0VSUzIxMTEyMiBGT1IgVFJBTlNQT1JUIE9OTFkKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCF6ZC50cmlhZ2VUeXBlICYmIFgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKSB6ZC50cmlhZ2VUeXBlPVgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOyAvL0VSUzIwMDMwOAoJaWYgKCFsYWJlbCkgbGFiZWw9ZG9jLmxhYmVsOwoJaWYgKDE9PTEpIHsgLy9FUlMxNzA1MjMgIzM3MTYyIGFmdGVyIGRyeXJ1bgoJICAgIGFsZXJ0KCJAQEAgemQucHJpb3JpdHkgPT4gKiIgKyB6ZC5wcmlvcml0eSArICIqIik7CgkJLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCgkJaWYgKHpkLnByaW9yaXR5ICE9ICJOb3JtYWwiKSB7IGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLHpkLnByaW9yaXR5KTsgfSAgLy9FUlMxNzA1MjQgIzM3MTYyIHByaW9yaXR5IG9uIENhc2UKCQllbHNlIHsgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOyB9CgkJYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCJGYXgiKTsgLy9FUlNhMjAwMjA1IHJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLHpkLmNoYW5uZWwpOwoJCWFyck9mUGFpcnMucHVzaCgiU3VwcGxpZWROYW1lIiwieno6Iitkb2MuZGJJRCk7IC8vRVJTMjExMTIyICM4NzYzOQoJCWFyck9mUGFpcnMucHVzaCgiU3VwcGxpZWRQaG9uZSIsZG9jLmRlbGl2ZXJlZEZyb20pOyAvL0VSUzIxMTEyMiAjODc2MzkgLy9UT0RPIEtQUyB0byBkZWNpZGUKCQlhcnJPZlBhaXJzLnB1c2goIlN1YmplY3QiLGxhYmVsKTsgLy9FUlMyMTExMjIgIzg3NjM5IC8vVE9ETyBLUFMgdG8gZGVjaWRlCgl9CiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fQ2FzZUZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04KICAgIGlmICh6ZC56Y2hhbm5lbC5vd25lcikgeyBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS56Y2hhbm5lbC5vd25lcik7IH0gLy9FUlMyMDAzMDgKICAgIAoJLy9jb25uZWN0IGluc3RlYWQgdmFyIGNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgbGFiZWwsIGFyck9mUGFpcnMpOwoJdmFyIGNhc2VJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgIkNhc2UiLCBsYWJlbCwgYXJyT2ZQYWlycyk7IC8vY29ubmVjdCgpIHdpbGwgbWFrZSBhIExGIGZvciBUUkFOU1BPUlQgT05MWQoJcmV0dXJuIGNhc2VJZDsKfTsKCnpEYXRhLmNsaWVudFBhdGllbnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKCXJldHVybiB7J0VSUk9SJzogJ3BhdGllbnQgbm90IGNyZWF0ZWQnfQp9OwoKekRhdGEuY2xpZW50QWNjb3VudD1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewoJaWYgKCF6ZCkgemQ9ekRhdGE7CglpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQogICAgdmFyIGFjY291bnRJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJBY2NvdW50IiwgbGFiZWwsIGFyck9mUGFpcnMpOwoJcmV0dXJuIGFjY291bnRJZDsKfTsKCnpEYXRhLmNsaWVudFJlY29yZD1mdW5jdGlvbihkb2Msc2ZUeXBlLGFyck9mUGFpcnMsbGFiZWwsemQpIHsgLy9FUlMxOTA2MjAgY2xpZW50UmVjb3JkIGdlbmVyaWMKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCFsYWJlbCkgeyBsYWJlbD1kb2MubGFiZWw7fSAvL0VSUzIxMDQyNCBzaG91bGQgdGhpcyBiZSB6ZC5sYWJlbD8KICAgIHZhciBuZXdJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHNmVHlwZSwgbGFiZWwsIGFyck9mUGFpcnMpOwoJcmV0dXJuIG5ld0lkOwp9OwoKekRhdGEuY2xpZW50Q29tcGxldGU9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsemQpIHtyZXR1cm4gYXJyT2ZQYWlyczt9OyAvL0VSUzE5MDYyNQp6RGF0YS5jbGllbnREZWxpdmVyeT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykgeyAvL0VSUzIwMDIwMiBUT0RPIGNvbnNpZGVyIG5ldyBEb2N1bWVudF9NVk4KICAgIHJldHVybiBhcnJPZlBhaXJzOwp9OyAvL0VSUzE5MDcxMSAjNjA5MDAgUEFPUwoKekRhdGEuY2xpZW50Q2hpbGRTdGFjaz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxwYXJlbnRJZCkgeyAvL0VSUzE5MDgxMCAjNjE1NzAgYmUgc3VyZSB0byBjYWxsIG9uIG5ldyBjaGlsZCBkb2MKICAgIHZhciBwYWlycz1hcnJPZlBhaXJzOwogICAgcGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLHBhaXJzKTsKICAgIGlmIChYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpIHsgLy9FUlMxOTA4MTEgbm90IGluIGFsbCBNUHMKICAgICAgICBwYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLHBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196Q2hpbGRGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OIGNoaWxkIHJlY29yZCB0eXBlIGlkCiAgICB9CiAgICBjaGlsZFN0YWNrU0ZJZD0iIjsgLy9FUlMyMTA0MjQgbm8gc3RhY2tzIGluIGNvcHBlcgogICAgaWYgKDE9PT0xICYmIHpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQpIHsgekRhdGEucmVjRG9jSWQ9ekRhdGEuY2xpZW50UmVjZWl2ZWREb2N1bWVudChkb2MsY2hpbGRTdGFja1NGSWQpOyB9IC8vRVJTMjAxMDE4ICM3NzI1MgogICAgcmV0dXJuIGNoaWxkU3RhY2tTRklkOwp9OwoKLy9QVjIzMDExOCAtIG1vdmluZyBjb2RlIHRvIGNsaWVudCBsaWJyYXJ5CnpEYXRhLmNsaWVudEN1c3RvbUJhcmNvZGUgPSBmdW5jdGlvbihkb2MsIHNmSUQpIHsKICAgIHZhciBudW1PZlBhZ2VzID0gWChkb2MsICJYX3BhZ2VzIik7CiAgICB2YXIgZGVzYyA9IFgoZG9jLCAiWF9maWVsZDAiKTsKICAgIHZhciBkb2NUaXRsZSA9ICJCYXJjb2RlZCBkb2N1bWVudCByZWNlaXZlZCB0byAiK3pEYXRhLnByb2dyYW1OYW1lICsgIiAtICIgKyBudW1PZlBhZ2VzICsgIiBQZyI7Cgl2YXIgZG9jVGl0bGVzID0gIkJhcmNvZGVkIGRvY3VtZW50IHJlY2VpdmVkIHRvICIrekRhdGEucHJvZ3JhbU5hbWUgOwoJdmFyIHNmVHlwZSA9ICIiOwoJaWYoc2ZJRCAmJiBzZklELmluZGV4T2YoIjAwMSIpID09IDApIHsKCSAgICBzZlR5cGUgPSAiQWNjb3VudCI7Cgl9CgllbHNlIGlmKHNmSUQgJiYgc2ZJRC5pbmRleE9mKCIwMDMiKSA9PSAwKSB7CgkgICAgc2ZUeXBlID0gIkNvbnRhY3QiOwoJfQoJZWxzZSBpZihzZklEICYmIHNmSUQuaW5kZXhPZigiMDBRIikgPT0gMCkgewoJICAgIHNmVHlwZSA9ICJRdW90ZSI7Cgl9CgllbHNlIGlmKHNmSUQgJiYgc2ZJRC5pbmRleE9mKCI1MDAiKSA9PSAwKSB7CgkgICAgc2ZUeXBlID0gIkNhc2UiOwoJfQoJZWxzZSBpZihzZklEICYmIHNmSUQuaW5kZXhPZigiMDA2IikgPT0gMCkgewoJICAgIHNmVHlwZSA9ICJPcHBvcnR1bml0eSI7Cgl9CiAgICB0cnkgewogICAgICAgIHZhciBjYXNlT3JBY2NvdW50RXhpc3RzID0gZ2V0U0ZGaWVsZChkb2MsIHNmVHlwZSwgIklkIiwgbnVsbCwgc2ZJRCk7CiAgICB9IGNhdGNoKGVycikgewogICAgICAgIGFsZXJ0KCJJIGFtIGluc2lkZSBjYXRjaCBmb3IgZXJyb3IgYmVjYXVzZSBjYXNlT3JBY2NvdW50RXhpc3RzIGlzOiAiKyBjYXNlT3JBY2NvdW50RXhpc3RzKTsKICAgICAgICBkb2NUaXRsZXMgPSAiVW5yZWNvZ25pemVkIEJhcmNvZGVkIGRvY3VtZW50IHJlY2VpdmVkIHRvICIrekRhdGEucHJvZ3JhbU5hbWUgOwogICAgICAgIGRvY1RpdGxlID0gIlVucmVjb2duaXplZCBCYXJjb2RlZCBkb2N1bWVudCByZWNlaXZlZCB0byAiK3pEYXRhLnByb2dyYW1OYW1lICsgIiAtICIgKyBudW1PZlBhZ2VzICsgIiBQZyI7CiAgICB9CiAgICAKICAgIC8vY3JlYXRlIGEgbGlnaHRuaW5nIGZpbGUKICAgIHpEYXRhLmZpbGVJZCA9IHpEYXRhLmNsaWVudExpZ2h0bmluZ0ZpbGUoZG9jLCBzZklELCB6RGF0YSwgZG9jVGl0bGUpOwogICAgLy9hdHRhY2goZG9jLCBkb2NUaXRsZSwgc2ZJRCk7IC8vYXR0YWNoIHRoZSB6UGFwZXIgZmlsZSB0byBTRiByZWNvcmQgaWQgKGJhcmNvZGUpCiAgICAvLyBjcmVhdGUgYSByZWNlaXZlZCBkb2N1bWVudCBmb3IgYmFyY29kZWQgKyBub24gYmFyY29kZWQgZmF4ZXMKICAgICAKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goIk5hbWUiLCBkb2NUaXRsZXMpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJTb3VyY2UiLHpEYXRhLnByb2dyYW1OYW1lKTsKICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwiRHJhZnQiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiRGlyZWN0aW9uIiwiSW5jb21pbmciKTsKICAgIGFyck9mUGFpcnMucHVzaCgiaXNBY3RpdmUiLGZhbHNlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiRG9jdW1lbnROdW1iZXIiLCJ6OiIrZG9jLmRiSUQpOwogICAgdmFyIHJlY0RvY0lkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIlJlY2VpdmVkRG9jdW1lbnQiLCBkb2NUaXRsZSwgYXJyT2ZQYWlycyk7IC8vIFBWMTkwNTMwIGFkZGVkICIiIAogICAgCiAgICAvL2Fzc29jaWF0ZSB0aGUgbGlnaHRuaW5nIGZpbGUgd2l0aCBSZWNlaXZlZCBEb2N1bWVudAogICAgekRhdGEuY29ubmVjdEZpbGUoZG9jLHJlY0RvY0lkKTsKICAgIC8vYXNzb2NpYXRlIHRoZSBsaWdodG5pbmcgZmlsZSB3aXRoIE9yaWdpbmFsIFJlY29yZAogICAgekRhdGEuY29ubmVjdEZpbGUoZG9jLHNmSUQpOwogICAgYWxlcnQoIkNvZGUgZXhlY3V0ZWQgaGVyZSAtIDIiKTsKICAgIHZhciBjdklkID0gZ2V0U0ZGaWVsZChkb2MsICJDb250ZW50VmVyc2lvbiIsICJJZCIsICJDb250ZW50RG9jdW1lbnRJZCA9ICciICsgekRhdGEuZmlsZUlkICsgIicgYW5kIElzTGF0ZXN0ID0gdHJ1ZSIsIG51bGwpOwogICAgdmFyIGN2QXJyT2ZQYWlycyA9IFsiVGl0bGUiLCBkb2NUaXRsZV07CiAgICBpZihkb2NUaXRsZS5pbmRleE9mKCJVbnJlY29nbml6ZWQiKSA+IC0xKSB7CiAgICAgICAgYWxlcnQoImRvY3RpdGlsZSBjb250aWFucyB1bnJlY29nbml6ZWQgc28gdGhlIHZhbHVlIGRlc2NyaXB0aW9uIGlzOiAiICsgZGVzYyk7IC8vUFYyMDIzMDExOQogICAgICAgIGN2QXJyT2ZQYWlycy5wdXNoKCJEZXNjcmlwdGlvbiIsIGRlc2MpOwogICAgfQogICAgLy92YXIgZGVzYyA9IFgoZG9jLCAiWF9maWVsZDAiKTsKICAgIC8vdmFyIGN2QXJyT2ZQYWlycyA9IFsiRGVzY3JpcHRpb24iLCBkZXNjXTsKICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgIkNvbnRlbnRWZXJzaW9uIiwgY3ZJZCwgY3ZBcnJPZlBhaXJzKTsKfTsKLy9QVjIzMDExOCAtIG1vdmluZyBjb2RlIHRvIGNsaWVudCBsaWJyYXJ5CmFsZXJ0KCJlbmQgY29wcGVyIGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwNjE1ICM1ODkyMQ=="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start copper client library"); //ERS210424 #82081
//ERS201117 TODO get rid off these keywords and use a document journey wizard from KPS and Jake

//CRN201025 #76788 Moved from zStack Library so that it can be used in multiple rules.
var keywordMap={}; //TODO210424 remove completely
var keywords=[]; //TODO210424 remove completely

zData.maxChannels=4; //ERS190731 #61272 zippi is strongly typed
zData.makeStack=false; //ERS190814 #61511
zData.uploadDir = ""+XCustomSetting(doc,"uploadDir__c"); //"alkermesRoot";
zData.patEnrollQueueId = ""+XCustomSetting(doc,"patientQueueId__c"); //'00G4C000000LkmZ'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
zData.recTypeRequest = ""+XCustomSetting(doc,"recTypeRequest__c"); //'0124C000000Cj5Y'; //ID of the Case Record Type Request_PS_MVN

var cs=XDeploymentInfo(doc, "Business_Process__c"); //ERS200222 need both deployment info and cs
//alert("cs="+cs);
if (cs) {
    if (cs.indexOf("zCustomSettings")>-1) cs=X(doc,"zCustomSettings",cs);
    alert("ERS200225 EVAL on "+cs);
    if (cs !== "") eval(""+cs); //ERS200222 TODO JSON.parse() //ERS200225 beeds to be eval but also needs to work!!!
    alert("No try just do!");
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
zData.clientStack=function(doc,arrOfPairs) { //TODO210424 use the zChannel action
    var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS190805 //TODO210424 ZPAPER6__
    if (zData.edition == "Copper" || zData.zps.indexOf("zStack") == -1 ) {
        alert("ERS210424 "+zData.edition+" so no zStack");
        //need the clientFields to do it return arrOfPairs;
    }
	if (zData.ownerId) arrOfPairs.push("OwnerId",zData.ownerId);  // zCharta Queue "00G36000002CyTK" 
	if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__zStackFields__c")); //ERS190803 #52661 using JSON 
	return arrOfPairs;
};

//alert("zData.clientFile");
zData.clientFile=function(doc,stage) { //ERS170829 #41298 returns a label to be used in any attaches and fixes the doc
    //Document attachment label should be "Patient Name - Doc Type - Date".  Confirmed for zPaper File and SFDC Attachment
    var MMddYYYY = zData.formatTodayMMddYYYY();
	var arrOfPairs = [];
    //arrOfPairs.push("db-label", doc.label);
	//updateDB(doc,arrOfPairs);
    return doc.label;
};

zData.clientValue=function(doc,val) {//ERS190803 #52661 using JSON 
    val=val.replace("{!formatNow}",zData.formatNow);
    return val;
}

zData.clientFields=function(doc,arrOfPairs,jd,zd) { //ERS190803 #52661 using JSON in setting to configure new record
    if (!zd) zd=zData;
    var pageRange = X(doc,"X_idxPages");
    if (!pageRange) pageRange="1-"+X(doc,"X_pages"); 
    var pageCount = zData.countPages(doc, pageRange); //TODO no place to store on RD
    if (zd.zps != "") { //if Transport in Service Cloud then zd.zps empty not ReceivedDocument
        if (zd.edition=="Copper" || zd.sfId.indexOf("0io")===0) { //ERS210424 Required fields are missing: [Name, Status] TODO MORE RD FIELDS
            if (zData.ownerId) arrOfPairs.push("OwnerId",zData.ownerId);  // zCharta Queue "00G36000002CyTK" 
    	    if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
            arrOfPairs.push("Name", zData.attachLabel);
            arrOfPairs.push("Status", "Draft"); //ERS210424 where are the picklist defined
            arrOfPairs.push("Source", doc.deliveredTo);
            arrOfPairs.push("Direction", "Incoming");
            arrOfPairs.push("DocumentNumber", "zz:"+doc.dbID);
        }
    }
	return arrOfPairs;
}


zData.clientCase=function(doc,arrOfPairs,label,zd) { //ERS211122 FOR TRANSPORT ONLY
	if (!zd) zd=zData;
	if (!zd.triageType && X(doc,"X_ZPAPER__faxType__c")) zd.triageType=X(doc,"X_ZPAPER__faxType__c"); //ERS200308
	if (!label) label=doc.label;
	if (1==1) { //ERS170523 #37162 after dryrun
	    alert("@@@ zd.priority => *" + zd.priority + "*");
		//arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
		if (zd.priority != "Normal") { arrOfPairs.push("Priority",zd.priority); }  //ERS170524 #37162 priority on Case
		else { arrOfPairs.push("Priority","Medium"); }
		arrOfPairs.push("Origin","Fax"); //ERSa200205 rrOfPairs.push("Origin",zd.channel);
		arrOfPairs.push("SuppliedName","zz:"+doc.dbID); //ERS211122 #87639
		arrOfPairs.push("SuppliedPhone",doc.deliveredFrom); //ERS211122 #87639 //TODO KPS to decide
		arrOfPairs.push("Subject",label); //ERS211122 #87639 //TODO KPS to decide
	}
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__CaseFields__c")); //ERS190803 #52661 using JSON
    if (zd.zchannel.owner) { arrOfPairs.push("OwnerId", zData.zchannel.owner); } //ERS200308
    
	//connect instead var caseId = createAndAttach(doc, "Case", label, arrOfPairs);
	var caseId = createSFRecord(doc, "Case", label, arrOfPairs); //connect() will make a LF for TRANSPORT ONLY
	return caseId;
};

zData.clientPatient=function(doc,arrOfPairs,label,zd) {
	return {'ERROR': 'patient not created'}
};

zData.clientAccount=function(doc,arrOfPairs,label,zd) {
	if (!zd) zd=zData;
	if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
    var accountId = createAndAttach(doc, "Account", label, arrOfPairs);
	return accountId;
};

zData.clientRecord=function(doc,sfType,arrOfPairs,label,zd) { //ERS190620 clientRecord generic
	if (!zd) zd=zData;
	if (!label) { label=doc.label;} //ERS210424 should this be zd.label?
    var newId = createAndAttach(doc, sfType, label, arrOfPairs);
	return newId;
};

zData.clientComplete=function(doc,arrOfPairs,zd) {return arrOfPairs;}; //ERS190625
zData.clientDelivery=function(doc,arrOfPairs) { //ERS200202 TODO consider new Document_MVN
    return arrOfPairs;
}; //ERS190711 #60900 PAOS

zData.clientChildStack=function(doc,arrOfPairs,parentId) { //ERS190810 #61570 be sure to call on new child doc
    var pairs=arrOfPairs;
    pairs=zData.clientStack(doc,pairs);
    if (XCustomSetting(doc,"ZPAPER__zChildFields__c")) { //ERS190811 not in all MPs
        pairs=zData.clientFields(doc,pairs,XCustomSetting(doc,"ZPAPER__zChildFields__c")); //ERS190803 #52661 using JSON child record type id
    }
    childStackSFId=""; //ERS210424 no stacks in copper
    if (1===1 && zData.clientReceivedDocument) { zData.recDocId=zData.clientReceivedDocument(doc,childStackSFId); } //ERS201018 #77252
    return childStackSFId;
};

//PV230118 - moving code to client library
zData.clientCustomBarcode = function(doc, sfID) {
    var numOfPages = X(doc, "X_pages");
    var desc = X(doc, "X_field0");
    var docTitle = "Barcoded document received to "+zData.programName + " - " + numOfPages + " Pg";
	var docTitles = "Barcoded document received to "+zData.programName ;
	var sfType = "";
	if(sfID && sfID.indexOf("001") == 0) {
	    sfType = "Account";
	}
	else if(sfID && sfID.indexOf("003") == 0) {
	    sfType = "Contact";
	}
	else if(sfID && sfID.indexOf("00Q") == 0) {
	    sfType = "Quote";
	}
	else if(sfID && sfID.indexOf("500") == 0) {
	    sfType = "Case";
	}
	else if(sfID && sfID.indexOf("006") == 0) {
	    sfType = "Opportunity";
	}
    try {
        var caseOrAccountExists = getSFField(doc, sfType, "Id", null, sfID);
    } catch(err) {
        alert("I am inside catch for error because caseOrAccountExists is: "+ caseOrAccountExists);
        docTitles = "Unrecognized Barcoded document received to "+zData.programName ;
        docTitle = "Unrecognized Barcoded document received to "+zData.programName + " - " + numOfPages + " Pg";
    }
    
    //create a lightning file
    zData.fileId = zData.clientLightningFile(doc, sfID, zData, docTitle);
    //attach(doc, docTitle, sfID); //attach the zPaper file to SF record id (barcode)
    // create a received document for barcoded + non barcoded faxes
     
    var arrOfPairs = [];
    arrOfPairs.push("Name", docTitles);
    arrOfPairs.push("Source",zData.programName);
    arrOfPairs.push("Status","Draft");
    arrOfPairs.push("Direction","Incoming");
    arrOfPairs.push("isActive",false);
    arrOfPairs.push("DocumentNumber","z:"+doc.dbID);
    var recDocId = createAndAttach(doc, "ReceivedDocument", docTitle, arrOfPairs); // PV190530 added "" 
    
    //associate the lightning file with Received Document
    zData.connectFile(doc,recDocId);
    //associate the lightning file with Original Record
    zData.connectFile(doc,sfID);
    alert("Code executed here - 2");
    var cvId = getSFField(doc, "ContentVersion", "Id", "ContentDocumentId = '" + zData.fileId + "' and IsLatest = true", null);
    var cvArrOfPairs = ["Title", docTitle];
    if(docTitle.indexOf("Unrecognized") > -1) {
        alert("doctitile contians unrecognized so the value description is: " + desc); //PV20230119
        cvArrOfPairs.push("Description", desc);
    }
    //var desc = X(doc, "X_field0");
    //var cvArrOfPairs = ["Description", desc];
    updateSFRecord(doc, "ContentVersion", cvId, cvArrOfPairs);
};
//PV230118 - moving code to client library
alert("end copper client library"); //ERS190615 #58921
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
