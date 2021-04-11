<!--
// Name: Index Page
// Committer: eric.stephens@zpaper.com
// Update: ERS210410 ribbon Index can not create new items automatically upgrade to triage; ERS210410 ribbon Index can not create new Patient items automatically upgrade to triage.");; ERS210410 else full triage
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-10 20:35:39","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"},{"name":"doc.X(\"X_splitPages\")","value":"","operation":"ne"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7Ci8vRVJTMTkwNzMwICM2MTI3MiB1cGRhdGVkIGJ1dHRvbiB2YWxpZGF0aW9uIGluIHRoZSBBY3Rpb25zKiBEZXRhaWxzIGFyZWEKCnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CmlmICghc3RhY2tJZCB8fCBzdGFja0lkLmluZGV4T2YoImEiKSAhPT0gMCkgc3RhY2tJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7IC8vRVJTMTkwNjI0IEhBQ0s/CmlmIChzdGFja0lkKSB6RGF0YS5zdGFja0lkPXN0YWNrSWQ7IC8vRVJTMjAwMjA0ICM2ODgyNSBtdWNoIGJldHRlciBmb3IgY2xpZW50IGNhbGxzCnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwp6RGF0YS5zdGFnZT0iSW5kZXhlZCI7IC8vRVJTMTkwNjIwCgovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCi8vRVJTMTcwOTA5IHpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbihkb2MsIlhfYnV0dG9uQWN0aW9uIik7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwppZiAoIWluZGV4SW5pdGlhbGl6ZWQgfHwgMCA9PT0gaW5kZXhJbml0aWFsaXplZC5sZW5ndGgpIHsKICAgIHN0YWNrSWQgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CiAgICB6RGF0YS5pbml0aWFsaXplU3RhY2soZG9jLHN0YWNrRm9sZGVyLCBjb21wYW55Q29kZSwgc3RhY2tJZCk7Cn0KCnpEYXRhLmdldERhdGFFbnRyeUZpZWxkcyhkb2MpOwovLyBEb2VzIHRoZSB1c2VyIHdhbnQgdG8gYXR0YWNoIGluZGV4ZWQgcGFnZXMgdG8gQ2FzZT8KLy92YXIgY2FzZUlkID0gWChkb2MsICJYX1pQQVBFUl9fQ2FzZV9fYyIpOwovL3ZhciBjb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7Ci8vdmFyIHBhdGllbnRJZD1jb250YWN0SWQ7IC8vVE9ETwovL3ZhciBwcm92aWRlcklkID0gWChkb2MsICJYX1pQQVBFUl9fUHJvdmlkZXJfX2MiKTsKLy92YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwovL3ZhciBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwovL3ZhciBwYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7CgovL3pEYXRhLmNsaWVudENvcHlGcm9tRG9jKGRvYyk7IC8vRVJTMjAwMzA5IHNwbGl0cyBmcmFnbWVudCB6aXBwaSB6RGF0YQppZiAoIXpEYXRhLnBhdGllbnRJZCAmJiBYKGRvYywiWF9wYXRpZW50SWQiKSkgekRhdGEucGF0aWVudElkPVgoZG9jLCJYX3BhdGllbnRJZCIpOwppZiAoIXpEYXRhLnBhdGllbnRJZCAmJiBYKGRvYywiWF9aUEFQRVJfX1BhdGllbnRfX2MiKSkgekRhdGEucGF0aWVudElkPVgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudF9fYyIpOyAvL0VSUzIwMDIwNSBrZWVwIHRyYWNrIG9mIElEcyBiZXR0ZXIKaWYgKCF6RGF0YS5wYXRpZW50SWQgJiYgWChkb2MsIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIpKSB6RGF0YS5wYXRpZW50SWQ9WChkb2MsIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIpOyAvL0VSUzIwMDMwOCAjNzAyNzMKCmlmICghekRhdGEucHJvdmlkZXJJZCAmJiBYKGRvYywiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIikpIHpEYXRhLnByb3ZpZGVySWQ9WChkb2MsIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOyAvL0VSUzIwMDMwOCAjNzAyNzMKaWYgKCF6RGF0YS5wcm92aWRlcklkICYmIFgoZG9jLCJYX1Byb3ZpZGVyQ29udGFjdF9fYyIpKSB6RGF0YS5wcm92aWRlcklkPVgoZG9jLCJYX1Byb3ZpZGVyQ29udGFjdF9fYyIpOyAvL0VSUzIwMDMwOCAjNzAyNzMgVE9ETyB6cCsKaWYgKCF6RGF0YS5wcm92aWRlcklkICYmIFgoZG9jLCJYX1pQQVBFUl9fUHJvdmlkZXJDb250YWN0X19jIikpIHpEYXRhLnByb3ZpZGVySWQ9WChkb2MsIlhfWlBBUEVSX19Qcm92aWRlckNvbnRhY3RfX2MiKTsgLy9FUlMyMDAzMDggIzcwMjczIFRPRE8genArCmFsZXJ0KCJFUlMyMDAzMDkuMzggcHJvdmlkZXJJZD0iK3pEYXRhLnByb3ZpZGVySWQgKyIgZnJvbSAiK1goZG9jLCJYX1Byb3ZpZGVyQ29udGFjdF9fYyIpCiAgICsiIGFuZCBwYXRpZW50SWQ9Iit6RGF0YS5wYXRpZW50SWQrIiBmcm9tICIrWChkb2MsIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIpKTsgLy9FUlMyMDAzMDkgZ2V0IHRoZSBJZHMKCmlmICghekRhdGEuY2FzZUlkKSB6RGF0YS5jYXNlSWQ9WChkb2MsIlhfWlBBUEVSX19DYXNlX19jIik7IC8vLy9FUlMyMDAyMDUgemlwcGkgY2hhbmdlcwoKLy8gR2V0IHRoZSBkb2N1bWVudCB0eXBlICh3aWxsIGJlIHVzZWQgdG8gcm91dGUgdG8gbmV4dCBmb2xkZXIpCi8vdmFyIGRvY1R5cGUgPSBYKGRvYywgIlhfRG9jdW1lbnRfVHlwZV9fYyIpOwp2YXIgbmV4dEZvbGRlciA9ICIyMDUwMFRyaWFnZS1TMiI7ICAgICAgICAgICAgICAvLyBPdGhlciBmb2xkZXIgaXMgdGhlIGRlZmF1bHQKdmFyIHByZXZJbmRleFBhZ2VzID0gWChkb2MsICJYX2luZGV4ZWRQYWdlcyIpOwp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwppZiAocHJldkluZGV4UGFnZXMgJiYgcHJldkluZGV4UGFnZXMubGVuZ3RoID4gMCAmJiBjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewogICAgcHJldkluZGV4UGFnZXMgKz0gIiwiOwp9CmN1ckluZGV4UGFnZXMgPSBwcmV2SW5kZXhQYWdlcyArIGN1ckluZGV4UGFnZXM7Cgp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhlZFBhZ2VzIiwgY3VySW5kZXhQYWdlcyk7Ci8vbW92ZSB0byBhZnRlciB1cGRhdGVzIGFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsIkluZGV4ZWQiKTsKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdmFyIHNmU3RhY2tJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7CmFsZXJ0KCJAQEBAQEAgQ3VycmVudGx5IGF0dGFjaGVkIHRvIFpQQVBFUl9felN0YWNrX19jIHdpdGggSUQ6ICIgKyBzZlN0YWNrSWQpOwp6RGF0YS56UGFyZW50SWQ9ZG9jLmRiSUQ7IC8vRVJTMTkwODE0IHRvIG92ZXJzaWRlIHRoZSBzYXZlLmpzcCB3b3JrZmxvd3MKCmFsZXJ0KCJAQEAgQmVmb3JlIHNwbGl0IGZvciBpbmRleDogZGJJRCA9PiAiICsgZG9jLmRiSUQpOwovKiBTUExJVCBPRkYgTkVXIFNOSVBQRVQgSEVSRSAqLwp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKaWYgKCFwYWdlUmFuZ2UpIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX3NwbGl0UGFnZXMiKTsgLy9FUlMyMDExMjggVEVTVEVEISAjNzg4MDMKCnZhciBzZWxlY3RlZFJhbmdlID0gWChkb2MsIlhfc2VsZWN0ZWRSYW5nZSIpOyAvL0FIUzIxMDQwOSAtIElmIHBhZ2UgcmFuZ2UgaXMgbm90IGF2YWlsYWJsZSwgY2hlY2sgaWYgWF9zZWxlY3RlZFJhbmdlIGlzIGhhdmluZyBhbnkgdmFsdWUKaWYgKCFwYWdlUmFuZ2UpIHtwYWdlUmFuZ2U9c2VsZWN0ZWRSYW5nZTsgYWxlcnQoIkVSUzIxMDQwOSBSaWJib24gdGh1bWJuYWlscyAiK3NlbGVjdGVkUmFuZ2UpOyB9IC8vRVJTMjEwNDA5ICM4MTc2MQppZiAoIXBhZ2VSYW5nZSkgeyAvL0VSUzIxMDQwOSAjODE3NjEKICAgIHBhZ2VSYW5nZT0iMS0iK2RvYy5udW1QYWdlczsgCiAgICBhbGVydCgiRVJTMjEwNDA5IG92ZXJ3cml0aW5nIHRoZSBtaXNzaW5nIHBhZ2VSYW5nZSAoIitYKGRvYywiWF9zZWxlY3RlZFJhbmdlIikrIikgZGF0YSB3aXRoICIrcGFnZVJhbmdlKTsgCn0KCnZhciBuZXdJZD1zcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiaW5kZXgiLCBwYWdlUmFuZ2UpOwphbGVydCgiRVJTMTkwNjI0IG5ld0lkPSIrbmV3SWQpOwphbGVydCgiQEBAIEFGVEVSIHNwbGl0IGZvciBpbmRleDogZGJJRCA9PiAiICsgZG9jLmRiSUQpOwovLyoKLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgU1RBQ0sgU05JUFBFVCAqLwovLyoKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gYSBuZXcgQ2FzZSByZWNvcmQsIGlmIGl0IHdhc24ndCBwYXNzZWQgaW4gKi8KLy92YXIgcHJpb3JpdHk9WChkb2MsIlhfWlBBUEVSX19Qcmlvcml0eV9fYyIpOyAvL0VSUzE3MDYyNgp2YXIgbGFiZWwwPSIiOwphbGVydCgiRVJTMjAwMjA1LjY0IGRvYy5kb2NUeXBlPSIrZG9jLmRvY1R5cGUrIiB6RGF0YS5kb2NUeXBlPSIrekRhdGEuZG9jVHlwZSsiIFgoKT0iK1goZG9jLCJYX2RvY1R5cGUiKSsiIFgyPSIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikpOwp2YXIgdHJpYWdlVHlwZT1kb2MuZG9jVHlwZTsKaWYgKCF0cmlhZ2VUeXBlIHx8IHRyaWFnZVR5cGUgPT0gIkZBWCIpIHRyaWFnZVR5cGU9WChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IC8vRVJTMjAwMjA1IGRvYy5kb2NUeXBlOwp6RGF0YS5kb2NUeXBlPXRyaWFnZVR5cGU7IGFsZXJ0KCJVc2luZyBFUlMyMDAyMDUgZG9jVHlwZT0iK3pEYXRhLmRvY1R5cGUpOyAvL0VSUzIwMDIwNSBANjg4MjUKCnZhciBhdHRhY2hQYXRoID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOwp2YXIgYXR0YWNoTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsIkluZGV4ZWQiKTsgLy8iSW5kZXhlZCAiICsgZm9ybWF0Tm93OwphbGVydCgiRVJTMTkwNjI0IGF0dGFjaExhYmVsPSIrYXR0YWNoTGFiZWwpOwoKLy9FUlMxOTA2MjAgdXNlIGEgc2V0dGluZyB0byBkZXRlcm1pbmUgd2hpY2ggbG9va3VwcyB3ZSBhdHRhY2ggdG8KLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBDYXNlIHJlY29yZCBpZiByZXF1aXJlZCAqLyAvL0VSUzE5MDYxOQovL0VSUzIwMDMwOCB6RGF0YS5jaGFubmVsQWN0aW9uPSJjbGllbnRDYXNlRU5STCgpIjsgLy9FUlMyMDAzMDcgVE9ETyBnZXQgbW9yZSBjaGFubmVsIGNvbmZpZ3VyYWJsZSAjNzAyNzMKaWYgKDE9PT0xKSB7IC8vcXVpY2sgdGVzdAppZiAoekRhdGEuY2FzZUlkIHx8IHpEYXRhLnpjaGFubmVsLmFjdGlvbi5pbmRleE9mKCJjbGllbnRDYXNlIik+LTEpIHsgIC8vRVJTMjAwMzA3IHpEYXRhLnpjaGFubmVsICM3MDI3MwogICAgYWxlcnQoIkVSUzE5MDYyNCBuZWVkIENhc2UiKTsKICAgIGlmICh6RGF0YS5jYXNlSWQpIHsKICAgICAgICBhbGVydCgiRVJTMTkwNjI0LjY3Iik7CiAgICAgICAgaWYgKHpEYXRhLmF0dGFjaFJlY29yZHMuaW5kZXhPZigiQ2FzZSIpPi0xKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBDYXNlOiAiICsgekRhdGEuY2FzZUlkKTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIHpEYXRhLmNhc2VJZCk7CiAgICAgICAgfQogICAgfSBlbHNlIHsKICAgICAgICBhbGVydCgiQEBAQCBjcmVhdGluZyBuZXcgQ2FzZSIpOwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAvL0NSTjIwMTAyNiAjNzY3ODggU2V0IHRoZSBwcmlvcml0eSB0byB3aGF0ZXZlciB0aGUgelN0YWNrIHByaW9yaXR5IGlzLgogICAgICAgIHZhciBzdGFja1ByaW9yaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJaUEFQRVJfX3pTdGFja19fYyIsICJaUEFQRVJfX1ByaW9yaXR5X19jIiwgbnVsbCwgc2ZTdGFja0lkKTsKICAgICAgICBhbGVydCgiIyMjIHNldHRpbmcgQ2FzZSBwcmlvcml0eSA9PiAiICsgc3RhY2tQcmlvcml0eSk7CiAgICAgICAgekRhdGEucHJpb3JpdHkgPSBzdGFja1ByaW9yaXR5OwogICAgICAgIHpEYXRhLmNhc2VJZD16RGF0YS5jbGllbnRDYXNlKGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBDYXNlIHdpdGggSUQ6ICIgKyB6RGF0YS5jYXNlSWQpOwogICAgICAgIGlmICh6RGF0YS5jYXNlSWQgPT0gIm51bGwiIHx8IHpEYXRhLmNhc2VJZCA9PSAiTkVXIikgekRhdGEuY2FzZUlkPW51bGw7CiAgICAgICAgZWxzZSB7CiAgICAgICAgICAgIHZhciBkcSA9IHpEYXRhLmRxID0gU3RyaW5nLmZyb21DaGFyQ29kZSgzNCk7IC8vRVJTMjAwMzEzICM3MDAzNgogICAgICAgICAgICB6RGF0YS5jYXNlTnVtYmVyPWdldFNGRmllbGQoZG9jLCJDYXNlIiwiQ2FzZU51bWJlciIsbnVsbCx6RGF0YS5jYXNlSWQpOwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19DYXNlX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLmNhc2VJZCArIGRxICsgIik7ICIpOyAvL0VSUzIwMDMxMCBzaG93IHJlc3VsdHMKICAgICAgICAgICAgLy9FUlMyMDAzMTMgQ2FzZV9fY19OYW1lIG5vdyBaUEFQRVJfX0Nhc2VfX2NfQ2FzZU51bWJlcgogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19DYXNlX19jX0Nhc2VOdW1iZXIiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuY2FzZU51bWJlciArIGRxICsgIik7ICIpOyAvL0VSUzIwMDMxMCBUT0RPIENhc2UgbnVtYmVyCiAgICAgICAgfQogICAgfQogICAgYWxlcnQoIkVSUzE5MDYyNC43OCBoYXZlIGEgY2FzZT8iKTsKICAgIGlmICh6RGF0YS5jYXNlSWQgJiYgYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLmNhc2VJZCk9PS0xKSB7CiAgICAgICAgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmNhc2VJZDsKICAgIH0KfQp9CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIExlYWQgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5Ci8vIFRPRE8gRVJTMTkwNjI0IGZsaXAgdGhlIGlmIGxvZ2ljCmlmIChkb2Mud2RkYXRhLmluZGV4T2YoIlhfWlBBUEVSX19SZWZlcnJhbExlYWRfX2MiKT4tMSkgeyAvL0VSUzE5MDgwMyBUT0RPIHJldGhpbmsKICAgIGlmICghbGVhZElkIHx8IDAgPT09IGxlYWRJZC5sZW5ndGgpIHsKICAgICAgICBhbGVydCgiQEBAQCBjcmVhdGluZyBuZXcgTGVhZCIpOwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBsZWFkSWQ9ekRhdGEuY2xpZW50TGVhZChkb2MsYXJyT2ZQYWlycyk7CiAgICAgICAgYWxlcnQoIkNyZWF0ZWQgTGVhZCB3aXRoIElEOiAiICsgbGVhZElkKTsKICAgICAgICBpZiAobGVhZElkID09ICJudWxsIiB8fCBsZWFkSWQgPT0gIk5FVyIpIGxlYWRJZD1udWxsOwogICAgfSBlbHNlIHsKICAgICAgICBpZiAoekRhdGEuYXR0YWNoUmVjb3Jkcy5pbmRleE9mKCJMZWFkIik+LTEpIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIExlYWQ6ICIgKyBsZWFkSWQpOwogICAgICAgICAgICBhdHRhY2goZG9jLCBhdHRhY2hMYWJlbCwgbGVhZElkKTsKICAgICAgICB9CiAgICB9CiAgICBpZiAobGVhZElkICYmIGF0dGFjaFBhdGguaW5kZXhPZihsZWFkSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2xlYWRJZDsKfQoKekRhdGEucHJvdmlkZXJUeXBlPVhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19Qcm92aWRlclJlY29yZF9fYyIpOwppZiAoIXpEYXRhLnByb3ZpZGVyVHlwZSkgekRhdGEucHJvdmlkZXJUeXBlPVhDdXN0b21TZXR0aW5nKGRvYywiUHJvdmlkZXJSZWNvcmRfX2MiKTsgLy9FUlMyMDAzMDggIzcwMjczIFRPRE8gcGFja2FnZQoKCgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIExlYWQgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5CnpEYXRhLnBhdGllbnRUeXBlPVhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50UmVjb3JkX19jIik7IC8vRVJTMTkwODA2IFpQQVBFUl9fIG5vdyBpbiBNUAppZiAoIXpEYXRhLnBhdGllbnRUeXBlKSB6RGF0YS5wYXRpZW50VHlwZT0iQ29udGFjdCI7IC8vRVJTMTkwODAyICM2MTI3MgoKaWYgKFgoZG9jLCJYX3NlbGVjdGVkUmFuZ2UiKSkgeyAvL0VSUzIxMDQxMCByaWJib24gSW5kZXggY2FuIG5vdCBjcmVhdGUgbmV3IGl0ZW1zIGF1dG9tYXRpY2FsbHkgdXBncmFkZSB0byB0cmlhZ2UKICAgIGFsZXJ0KCIvL0VSUzIxMDQxMCByaWJib24gSW5kZXggY2FuIG5vdCBjcmVhdGUgbmV3IFBhdGllbnQgaXRlbXMgYXV0b21hdGljYWxseSB1cGdyYWRlIHRvIHRyaWFnZS4iKTsgCn0gZWxzZSB7CiAgaWYgKHpEYXRhLnBhdGllbnRJZCB8fCBYKGRvYywiWF9aUEFQRVJfX1BhdGllbnQiKSB8fCB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpIHsgLy9FUlMxOTA4MDMgVE9ETyByZXRoaW5rIHVzZSBYIC8vRVJTMjAwMjA1IHpEYXRhLnBhdGllbnRJZAogICAgdmFyIGRxID0gekRhdGEuZHEgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDM0KTsgLy9FUlMxOTA4MDIgVE9ETyBkZWZpbmUgYmV0dGVyIGluIHpEYXRhCiAgICBpZiAoIXpEYXRhLnBhdGllbnRJZCkgewogICAgICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyAiK3pEYXRhLnBhdGllbnRUeXBlKyIgUGF0aWVudCIpOwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAvL0VSUzE5MDczMCAjNjEyNzIgbWlzc2luZyB0aGUgYmFzaWNzCiAgICAgICAgdmFyIHA9IiI7IAogICAgICAgIGlmICgiQWNjb3VudCI9PT16RGF0YS5wYXRpZW50VHlwZSkgeyAvL0VSUzE5MDgwMwogICAgICAgICAgICBwPSJQZXJzb24iOwogICAgICAgICAgICAvL2Fyck9mUGFpcnMucHVzaCgiTmFtZSIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MrIiAiK3pEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7IAogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHArIkJpcnRoZGF0ZSIsIHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpOwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7IC8vWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyAvL0VSUzE5MDgwMyBUT0RPIGdldCBjbGVhbmVyICM2MTI3MgogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJCaXJ0aGRhdGUiLCB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsKICAgICAgICB9CiAgICAgICAgekRhdGEucGF0aWVudElkPXpEYXRhLmNsaWVudFBhdGllbnQoZG9jLGFyck9mUGFpcnMpOwogICAgICAgIGFsZXJ0KCJDcmVhdGVkIFBhdGllbnQgd2l0aCBJRDogIiArIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgaWYgKHpEYXRhLnBhdGllbnRJZCA9PSAibnVsbCIgfHwgekRhdGEucGF0aWVudElkID09ICJORVciKSB6RGF0YS5wYXRpZW50SWQ9bnVsbDsKICAgICAgICBlbHNlIHsgLy9FUlMxOTA3MzAgIzYxMjcyIGxldmVyYWdlIHRoZSBuZXcgcmVjb3JkCiAgICAgICAgICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucGF0aWVudElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5wYXRpZW50SWQ7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAQEBAIE5FVyBQQVRJRU5UIENSRUFURUQgV0lUSCBJRDogIiArIHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMTkwODAyIHpEYXRhLmNvbnRhY3RJZAogICAgICAgICAgICAvLyBjbGVhciBvdXQgdGhlICJOZXcgUGF0aWVudCIgZmllbGRzCiAgICAgICAgICAgIGlmICgxPT09MCkgeyAvL0VSUzE5MDgxMSAjNjE1NzAgY29tbWVudGVkIG91dCBzbyB0aGF0IHBhdGllbnQgaW5mbyBpcyBhdmFpbGFibGUgZm9yIERFIHZhcmlhYmxlcyBpbiB6aXBwaQogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0ZpcnN0TmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0xhc3ROYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIC8vYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQmlydGhkYXRlX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIC8vYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQmlydGhkYXRlX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwogICAgICAgICAgICB9CiAgICAgICAgICAgIC8vIHNldCB0aGUgUGF0aWVudCBsb29rdXAgZmllbGRzCiAgICAgICAgICAgIC8vRVJTMTkwODAzIFRPRE8gaGFuZGxlIFpQQVBFUl9fIHJlbGF0aW9uc2hpcHMgLy9FUlMxOTA4MTEgZG91YmxlIHVwIGZvciBzYWZldHkKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fUGF0aWVudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5wYXRpZW50SWQgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fUGF0aWVudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fUGF0aWVudEFjY291bnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEucGF0aWVudElkICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICIgIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIGRxICsgIik7ICIpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAgaWYgKHpEYXRhLmF0dGFjaFJlY29yZHMuaW5kZXhPZigiUGF0aWVudCIpPi0xKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBQYXRpZW50OiAiICsgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgIGlmICgxPT09MSB8fCB6RGF0YS5wYXRpZW50VHlwZSAhPSAiQWNjb3VudCIpIHsgLy9FUlMxOTA3MzAgbG9va3VwIHRoZSBkYXRhIFRPRE8gcGVyc29uIGFjY291bnQ/CiAgICAgICAgICAgICAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsIHpEYXRhLnBhdGllbnRUeXBlLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgICAgICAgICAgICAgIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgICAgIH0gZWxzZSBpZiAoekRhdGEucGF0aWVudFR5cGUgPT0gIkFjY291bnQiKSB7IC8vRVJTMTkwNzMwIGxvb2t1cCB0aGUgZGF0YSBUT0RPIHBlcnNvbiBhY2NvdW50PwogICAgICAgICAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgIk5hbWUiLCBudWxsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICAgICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiTmFtZSIsIGNvbnRhY3RGbGRzKS5zcGxpdCgiICIpWzBdOyAvL0VSUzE5MDgwMyBUT0RPIGZpbmQgYSBiZXR0ZXIgd2F5CiAgICAgICAgICAgICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIk5hbWUiLCBjb250YWN0Rmxkcykuc3BsaXQoIiAiKVsxXTsKICAgICAgICAgICAgfQogICAgICAgICAgICAvL0VSUzIwMDIwNSBUT0RPIHdoYXQgaWYgY3VzdG9tCiAgICAgICAgfQogICAgfQogICAgaWYgKHpEYXRhLnBhdGllbnRJZCAmJiBhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucGF0aWVudElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5wYXRpZW50SWQ7Cn0KfSAvL0VSUzIxMDQxMCBlbHNlIGZ1bGwgdHJpYWdlCgphcnJPZlBhaXJzID0gW107CmlmICh6RGF0YS5kb2NUeXBlKSB7IGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgekRhdGEuZG9jVHlwZSk7ICB9IC8vRVJTMTkwODEwIFBWMTkwODA4ICM1MTY3MAppZiAoekRhdGEucHJvdmlkZXJJZCkgewogICAgLy9hcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvdmlkZXJfX2MiLCB6RGF0YS5wcm92aWRlcklkKTsgLy9FUlMyMDAzMDggVE9ETyBjdXN0b20gc2V0dGluZwogICAgaWYgKHpEYXRhLnByb3ZpZGVySWQuaW5kZXhPZigiMDAzIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fIisiUHJvdmlkZXJDb250YWN0X19jIiwgekRhdGEucHJvdmlkZXJJZCk7IC8vRVJTMjAwMzA5IFRPRE8gcGFja2FnZSAvL0VSUzIwMTIwMyBaUEFQRVJfXwogICAgaWYgKHpEYXRhLnByb3ZpZGVySWQuaW5kZXhPZigiMDAxIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvdmlkZXJfX2MiLCB6RGF0YS5wcm92aWRlcklkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucHJvdmlkZXJJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucHJvdmlkZXJJZDsKfQphbGVydCgiRVJTMTkwODEyLjIwMCB6RGF0YS5wYXRpZW50SWQ9Iit6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzE5MDgxMiAjNjE1MTEKaWYgKHpEYXRhLnBhdGllbnRJZCkgewogICAgaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMDMiKT09PTApIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50X19jIiwgekRhdGEucGF0aWVudElkKTsKICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDAxIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudEFjY291bnRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOwogICAgaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMFEiKT09PTApIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19SZWZlcnJhbExlYWRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzE5MDgwMiBMZWFkCiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwogICAgaWYgKDE9PT0xKSB7IC8vRVJTMTkwODEwIFBWMTkwODA4IGRhdGEgZW50cnkgZm9yIG5leHQgc3BsaXQKICAgICAgICBpZiAoekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYykgeyBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fRmlyc3ROYW1lX19jIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7IH0KICAgICAgICBpZiAoekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKSB7IGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19MYXN0TmFtZV9fYyIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7IH0gIAogICAgICAgIGlmICh6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKSB7IGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19CaXJ0aGRhdGVfX2MiLCB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsgfQogICAgfQp9CmlmICh6RGF0YS5jYXNlSWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DYXNlX19jIiwgekRhdGEuY2FzZUlkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEuY2FzZUlkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5jYXNlSWQ7Cn0KaWYgKHpEYXRhLmxlYWRJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1JlZmVycmFsTGVhZF9fYyIsIHpEYXRhLmxlYWRJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLmxlYWRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEubGVhZElkOwp9CmlmICh6RGF0YS5yZWZlcnJhbElkKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUmVmZXJyYWxfX2MiLCB6RGF0YS5yZWZlcnJhbElkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucmVmZXJyYWxJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucmVmZXJyYWxJZDsKfQovL0NSTjIwMTAyNiAjNzY3ODggU2V0IHRoZSBzdGF0dXMgdG8gSW5kZXggc28gdGhhdCB0aGUgY2FsbCB0byBjbGllbnRDaGlsZFN0YWNrIHdpbGwgc2V0IHRoZSBTdGFnZV9fYyBmaWVsZCBjb3JyZWN0bHkuIENyYXp5Lgp6RGF0YS5yZXZpZXdlZFN0YXR1cyA9ICJJbmRleGVkIjsKCi8vZG8gbm90IGhhdmUgWF8gaW4gdGhlbSEgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzIwMDIwNSBzYXZlIGV2ZXJ0aGluZyBvbiB0aGUgcGFyZW50IHN0YWNrIFRPRE8gRElTQ1VTUyBhbmQgUkVWSUVXIGZsb3cKCi8vRVJTMTkwODE0IGp1c3QgdGhlIGNoaWxkICM2MTUxMSB1cGRhdGVTRlJlY29yZChkb2MsIHpEYXRhLnpwcywgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKLy9sZXQgdGhlIGRvY1NldCBkbyB0aGUgd29yayBhdHRhY2goZG9jLGF0dGFjaExhYmVsLCBzZlN0YWNrSWQpOwovL3ZhciByPXVwZGF0ZVNGUmVjb3JkKGRvYywiWlBBUEVSX196U3RhY2tfX2MiLHNmU3RhY2tJZCxbIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsekRhdGEuelBhcmVudElkXSk7IC8vRVJTMTkwODE0ICM2MTUxMSBvdmVycmlkZSB0aGUgc2F2ZS5qc3Agd29ya2Zsb3dzCmFsZXJ0KCJAQEBAIHVwZGF0ZWQgYW5kIGF0dGFjaGVkIHRvIHpTdGFjayBSZWNvcmQsIGlkID0gIiArIHNmU3RhY2tJZCArICI/PSIrekRhdGEuZ2V0U3RhY2tJZChkb2MpKyIgZGF0YT0iK2Fyck9mUGFpcnMpOwoKdmFyIGNoaWxkU3RhY2tJZD16RGF0YS5jbGllbnRDaGlsZFN0YWNrKGRvYyxhcnJPZlBhaXJzLHNmU3RhY2tJZCk7IC8vRVJTMTkwODEwIGNyZWF0ZSBjaGlsZCBzdGFjayBmb3Igc3BsaXQgRVJTMTkwODExIGNsaWVudENoaWxkU3RhY2sKdmFyIGNoaWxkU3RhY2tOdW1iZXIgPSBudWxsOwppZiAoY2hpbGRTdGFja0lkKSB7CiAgICBjaGlsZFN0YWNrTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsICJaUEFQRVJfX3pTdGFja19fYyIsICJOYW1lIiwgbnVsbCwgY2hpbGRTdGFja0lkKTsgIC8vQ1JOMjAxMDI2ICM3Njc4OCBGaXh1cCB0aGUgY2hpbGQgc25pcHBldCBsYWJlbAogICAgYXR0YWNoUGF0aCs9IiwiK3NmU3RhY2tJZCsiLCIrY2hpbGRTdGFja0lkOyBhdHRhY2hQYXRoPWF0dGFjaFBhdGgucmVwbGFjZSgiLyw/IiwiLyIpOyAvL0VSUzE5MDgxMSAjNjE1NzAgY2xlYW4gdXAgLy9wYXJlbnQgc3RhY2sgdG9vCn0KCi8qIE1vdmUgdGhlIHNwbGl0IGRvY3VtZW50IHRvIGl0cyBwcm9jZXNzaW5nIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgaW5kZXhlZCBwYWdlcyBkb2N1bWVudCBpbnRvIG5leHQgcHJvY2Vzc2luZyBmb2xkZXI6ICIgKyBuZXh0Rm9sZGVyKTsKLy9FUlMxOTA3MzEgIzYxMjcyIG1vdmVEb2N1bWVudChkb2MsIiIsbmV4dEZvbGRlcik7Ci8vRVJTMTkwNzMxICM2MTI3MiByZWxvYWRCeUJBVEVTKGRvYywgbmV4dEZvbGRlcik7IC8vRVJTMTcwNDEzICMzNTI5MQovKiBQbGFjZSB0aGUgc3BsaXQgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyICovCmlmICgxPT0xKSB7IC8vRVJTMjAwMjIyIEJBVEVTIG9rIC8vRVJTMjAwMjA1ICM2ODgyNSBUT0RPIENSTiB0byByZXZpZXcgbW92ZURvY3VtZW50IGFuZCBpZiB3ZSBuZWVkIGl0IHRoZW4gZml4IHRoZSB4X3N0YWNrIHByb2JsZW0gd2l0aCBpdAogICAgYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGluZGV4ZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwogICAgbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7Cn0KdW5sb2NrRG9jdW1lbnQoZG9jKTsKCmFsZXJ0KCJAQEAgVXBkYXRpbmcgY2hpbGQgc25pcHBldCBhZnRlciBzcGxpdCBkYklEID0+ICIgKyBkb2MuZGJJRCk7CgphcnJPZlBhaXJzID0gW107CmlmIChjaGlsZFN0YWNrTnVtYmVyKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsICsgIiAtICIgKyBjaGlsZFN0YWNrTnVtYmVyKTsgICAgICAvL0NSTjIwMTAyNiAjNzY3ODggRml4dXAgdGhlIGNoaWxkIHNuaXBwZXQgbGFiZWwKfQp6RGF0YS5yZXZpZXdzID0gIiI7ICAgICAvL0NSTjIwMTAyNSAjNzY3ODggTWFrZSBzdXJlIHRoYXQgdGhlIGNoaWxkIHN0YWNrIGRvZXNuJ3QgaW5oZXJpdCBhbnkgWF9yZXZpZXdzIGZyb20gaXRzIHBhcmVudAphcnJPZlBhaXJzPXpEYXRhLmFkZFN0YWdlKGRvYyxhcnJPZlBhaXJzLHpEYXRhLnN0YWdlKTsgLy9FUlMyMDA0MDYgZm9yZ290IHRvIGZpbmlzaCB0aGUgY2FsbCBTWU5UQVgKYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLHpEYXRhLmRvY1R5cGUpOyAvL0VSUzIwMDMxNCAjNzAzMzYKdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLHBhZ2VSYW5nZSk7CmFsZXJ0KCJAQEBAIHBhZ2VDb3VudCA9ICIgKyBwYWdlQ291bnQgKyIgd2VyZSAiKyB6RGF0YS5zdGFnZSk7CmFyck9mUGFpcnMucHVzaCgiWF9wYWdlcyIscGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1wYWdlcyIscGFnZUNvdW50KTsKLy9FUlMxOTA2MjAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHBhdGllbnRGaXJzdE5hbWUgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIGNvbXBhbnlDb2RlICsgIiAtICIgKyBzdGFja0lkKTsKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLGF0dGFjaFBhdGgpOyAvL0VSUzE3MDYyOAphcnJPZlBhaXJzLnB1c2goImRiLWNvbW1lbnRzIixYKGRvYywiZGItY29tbWVudHMiKSk7IC8vRVJTMjAwMjI2ICM2NjY4NiBUT0RPIG5ld2xpbmVzIGVzY2FwZWQgaW4gcGFja0RhdGEgQ1JOCmlmIChjaGlsZFN0YWNrSWQpIHsgYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsY2hpbGRTdGFja0lkKTsgfSAvL0VSUzIxMDEwOSAjODAwNTEgZml4ZXMgY2hpbGQgc3RhY2sgZGF0YSBlbnRyeQp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp0cmFjayhkb2MsICJEb2MgSW5kZXhlZCIsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHBhZ2VDb3VudCk7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibmV4dFBhZ2UofnJlYWR5fik7dXBkYXRlREVTdGF0dXMofmluZGV4ZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKCi8qIGVuZCBvZiBydWxlICov"},"ordinal":15}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Index Rule Fired @@@#");
//ERS190730 #61272 updated button validation in the Actions* Details area

var stackId = X(doc, "X_stack");
if (!stackId || stackId.indexOf("a") !== 0) stackId=zData.getStackId(doc); //ERS190624 HACK?
if (stackId) zData.stackId=stackId; //ERS200204 #68825 much better for client calls
var stackFolder = stackId + "-STACK";
var companyCode = doc.deliveredTo;
zData.stage="Indexed"; //ERS190620

/* Clear the trigger that invoked this rule */
//ERS170909 zData.clearTriggerCondition(doc,"X_buttonAction");
var indexInitialized = X(doc,"X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
    stackId = new Date().getTime() + "";
    stackFolder = stackId + "-STACK";
    zData.initializeStack(doc,stackFolder, companyCode, stackId);
}

zData.getDataEntryFields(doc);
// Does the user want to attach indexed pages to Case?
//var caseId = X(doc, "X_ZPAPER__Case__c");
//var contactId = X(doc, "X_ZPAPER__Patient__c");
//var patientId=contactId; //TODO
//var providerId = X(doc, "X_ZPAPER__Provider__c");
//var patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
//var patientLastName = X(doc, "X_ZPAPER__LastName__c");
//var patientDOB = X(doc, "X_ZPAPER__Birthdate__c");

//zData.clientCopyFromDoc(doc); //ERS200309 splits fragment zippi zData
if (!zData.patientId && X(doc,"X_patientId")) zData.patientId=X(doc,"X_patientId");
if (!zData.patientId && X(doc,"X_ZPAPER__Patient__c")) zData.patientId=X(doc,"X_ZPAPER__Patient__c"); //ERS200205 keep track of IDs better
if (!zData.patientId && X(doc,"X_ZPAPER__PatientAccount__c")) zData.patientId=X(doc,"X_ZPAPER__PatientAccount__c"); //ERS200308 #70273

if (!zData.providerId && X(doc,"X_ZPAPER__Provider__c")) zData.providerId=X(doc,"X_ZPAPER__Provider__c"); //ERS200308 #70273
if (!zData.providerId && X(doc,"X_ProviderContact__c")) zData.providerId=X(doc,"X_ProviderContact__c"); //ERS200308 #70273 TODO zp+
if (!zData.providerId && X(doc,"X_ZPAPER__ProviderContact__c")) zData.providerId=X(doc,"X_ZPAPER__ProviderContact__c"); //ERS200308 #70273 TODO zp+
alert("ERS200309.38 providerId="+zData.providerId +" from "+X(doc,"X_ProviderContact__c")
   +" and patientId="+zData.patientId+" from "+X(doc,"X_ZPAPER__PatientAccount__c")); //ERS200309 get the Ids

if (!zData.caseId) zData.caseId=X(doc,"X_ZPAPER__Case__c"); ////ERS200205 zippi changes

// Get the document type (will be used to route to next folder)
//var docType = X(doc, "X_Document_Type__c");
var nextFolder = "20500Triage-S2";              // Other folder is the default
var prevIndexPages = X(doc, "X_indexedPages");
var curIndexPages = X(doc, "X_idxPages");
if (prevIndexPages && prevIndexPages.length > 0 && curIndexPages && curIndexPages.length > 0) {
    prevIndexPages += ",";
}
curIndexPages = prevIndexPages + curIndexPages;

var arrOfPairs = [];
arrOfPairs.push("X_indexedPages", curIndexPages);
//move to after updates arrOfPairs=zData.addStage(doc,arrOfPairs,"Indexed");
updateDB(doc,arrOfPairs);

var sfStackId=zData.getStackId(doc);
alert("@@@@@@ Currently attached to ZPAPER__zStack__c with ID: " + sfStackId);
zData.zParentId=doc.dbID; //ERS190814 to overside the save.jsp workflows

alert("@@@ Before split for index: dbID => " + doc.dbID);
/* SPLIT OFF NEW SNIPPET HERE */
var pageRange = X(doc,"X_idxPages");
if (!pageRange) pageRange = X(doc,"X_splitPages"); //ERS201128 TESTED! #78803

var selectedRange = X(doc,"X_selectedRange"); //AHS210409 - If page range is not available, check if X_selectedRange is having any value
if (!pageRange) {pageRange=selectedRange; alert("ERS210409 Ribbon thumbnails "+selectedRange); } //ERS210409 #81761
if (!pageRange) { //ERS210409 #81761
    pageRange="1-"+doc.numPages; 
    alert("ERS210409 overwriting the missing pageRange ("+X(doc,"X_selectedRange")+") data with "+pageRange); 
}

var newId=splitDocumentForIndex(doc, "index", pageRange);
alert("ERS190624 newId="+newId);
alert("@@@ AFTER split for index: dbID => " + doc.dbID);
//*
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
//*

/* Attach the split document to a new Case record, if it wasn't passed in */
//var priority=X(doc,"X_ZPAPER__Priority__c"); //ERS170626
var label0="";
alert("ERS200205.64 doc.docType="+doc.docType+" zData.docType="+zData.docType+" X()="+X(doc,"X_docType")+" X2="+X(doc,"X_ZPAPER__faxType__c"));
var triageType=doc.docType;
if (!triageType || triageType == "FAX") triageType=X(doc,"X_ZPAPER__faxType__c"); //ERS200205 doc.docType;
zData.docType=triageType; alert("Using ERS200205 docType="+zData.docType); //ERS200205 @68825

var attachPath = X(doc,"X_attachedTo");
var attachLabel=zData.clientFile(doc,"Indexed"); //"Indexed " + formatNow;
alert("ERS190624 attachLabel="+attachLabel);

//ERS190620 use a setting to determine which lookups we attach to
/* Attach the split document to Case record if required */ //ERS190619
//ERS200308 zData.channelAction="clientCaseENRL()"; //ERS200307 TODO get more channel configurable #70273
if (1===1) { //quick test
if (zData.caseId || zData.zchannel.action.indexOf("clientCase")>-1) {  //ERS200307 zData.zchannel #70273
    alert("ERS190624 need Case");
    if (zData.caseId) {
        alert("ERS190624.67");
        if (zData.attachRecords.indexOf("Case")>-1) {
            alert("@@@@ attaching to existing Case: " + zData.caseId);
            attach(doc, attachLabel, zData.caseId);
        }
    } else {
        alert("@@@@ creating new Case");
        arrOfPairs = [];
        //CRN201026 #76788 Set the priority to whatever the zStack priority is.
        var stackPriority = getSFField(doc, "ZPAPER__zStack__c", "ZPAPER__Priority__c", null, sfStackId);
        alert("### setting Case priority => " + stackPriority);
        zData.priority = stackPriority;
        zData.caseId=zData.clientCase(doc,arrOfPairs);
        alert("Created Case with ID: " + zData.caseId);
        if (zData.caseId == "null" || zData.caseId == "NEW") zData.caseId=null;
        else {
            var dq = zData.dq = String.fromCharCode(34); //ERS200313 #70036
            zData.caseNumber=getSFField(doc,"Case","CaseNumber",null,zData.caseId);
            addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Case__c" + dq + ").val(" + dq + zData.caseId + dq + "); "); //ERS200310 show results
            //ERS200313 Case__c_Name now ZPAPER__Case__c_CaseNumber
            addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Case__c_CaseNumber" + dq + ").val(" + dq + zData.caseNumber + dq + "); "); //ERS200310 TODO Case number
        }
    }
    alert("ERS190624.78 have a case?");
    if (zData.caseId && attachPath.indexOf(zData.caseId)==-1) {
        attachPath+=","+zData.caseId;
    }
}
}

/* Attach the split document to Lead record if required */ //ERS190619
// TODO ERS190624 flip the if logic
if (doc.wddata.indexOf("X_ZPAPER__ReferralLead__c")>-1) { //ERS190803 TODO rethink
    if (!leadId || 0 === leadId.length) {
        alert("@@@@ creating new Lead");
        arrOfPairs = [];
        leadId=zData.clientLead(doc,arrOfPairs);
        alert("Created Lead with ID: " + leadId);
        if (leadId == "null" || leadId == "NEW") leadId=null;
    } else {
        if (zData.attachRecords.indexOf("Lead")>-1) {
            alert("@@@@ attaching to existing Lead: " + leadId);
            attach(doc, attachLabel, leadId);
        }
    }
    if (leadId && attachPath.indexOf(leadId)==-1) attachPath+=","+leadId;
}

zData.providerType=XCustomSetting(doc,"ZPAPER__ProviderRecord__c");
if (!zData.providerType) zData.providerType=XCustomSetting(doc,"ProviderRecord__c"); //ERS200308 #70273 TODO package



/* Attach the split document to Lead record if required */ //ERS190619
zData.patientType=XCustomSetting(doc,"ZPAPER__PatientRecord__c"); //ERS190806 ZPAPER__ now in MP
if (!zData.patientType) zData.patientType="Contact"; //ERS190802 #61272

if (X(doc,"X_selectedRange")) { //ERS210410 ribbon Index can not create new items automatically upgrade to triage
    alert("//ERS210410 ribbon Index can not create new Patient items automatically upgrade to triage."); 
} else {
  if (zData.patientId || X(doc,"X_ZPAPER__Patient") || zData.X_ZPAPER__LastName__c) { //ERS190803 TODO rethink use X //ERS200205 zData.patientId
    var dq = zData.dq = String.fromCharCode(34); //ERS190802 TODO define better in zData
    if (!zData.patientId) {
        alert("@@@@ creating new "+zData.patientType+" Patient");
        arrOfPairs = [];
        //ERS190730 #61272 missing the basics
        var p=""; 
        if ("Account"===zData.patientType) { //ERS190803
            p="Person";
            //arrOfPairs.push("Name", zData.X_ZPAPER__FirstName__c+" "+zData.X_ZPAPER__LastName__c);
            arrOfPairs.push("FirstName", zData.X_ZPAPER__FirstName__c); 
            arrOfPairs.push("LastName", zData.X_ZPAPER__LastName__c);
            arrOfPairs.push(p+"Birthdate", zData.X_ZPAPER__Birthdate__c);
        } else {
            arrOfPairs.push("FirstName", zData.X_ZPAPER__FirstName__c); //X_ZPAPER__FirstName__c //ERS190803 TODO get cleaner #61272
            arrOfPairs.push("LastName", zData.X_ZPAPER__LastName__c);
            arrOfPairs.push("Birthdate", zData.X_ZPAPER__Birthdate__c);
        }
        zData.patientId=zData.clientPatient(doc,arrOfPairs);
        alert("Created Patient with ID: " + zData.patientId);
        if (zData.patientId == "null" || zData.patientId == "NEW") zData.patientId=null;
        else { //ERS190730 #61272 leverage the new record
            if (attachPath.indexOf(zData.patientId)==-1) attachPath+=","+zData.patientId;
            alert("@@@@@@@ NEW PATIENT CREATED WITH ID: " + zData.patientId); //ERS190802 zData.contactId
            // clear out the "New Patient" fields
            if (1===0) { //ERS190811 #61570 commented out so that patient info is available for DE variables in zippi
            //addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__FirstName__c" + dq + ").val(" + dq + "" + dq + "); ");
            //addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__LastName__c" + dq + ").val(" + dq + "" + dq + "); ");
            //addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Birthdate__c" + dq + ").val(" + dq + "" + dq + "); ");
            //addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Birthdate__c_readable" + dq + ").val(" + dq + "NONE" + dq + "); ");
            }
            // set the Patient lookup fields
            //ERS190803 TODO handle ZPAPER__ relationships //ERS190811 double up for safety
            addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c" + dq + ").val(" + dq + zData.patientId + dq + "); ");
            addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c_Name" + dq + ").val(" + dq + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c + dq + "); ");
            addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__PatientAccount__c" + dq + ").val(" + dq + zData.patientId + dq + "); ");
            addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__PatientAccount__c_Name" + dq + ").val(" + dq + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c + dq + "); ");
        }
    } else {
        if (zData.attachRecords.indexOf("Patient")>-1) {
            alert("@@@@ attaching to existing Patient: " + zData.patientId);
            attach(doc, attachLabel, zData.patientId);
            if (1===1 || zData.patientType != "Account") { //ERS190730 lookup the data TODO person account?
                var contactFlds = getSFFields(doc, zData.patientType, "FirstName,LastName", null, zData.patientId);
                patientFirstName = X(doc, "FirstName", contactFlds);
                patientLastName = X(doc, "LastName", contactFlds);
            } else if (zData.patientType == "Account") { //ERS190730 lookup the data TODO person account?
                var contactFlds = getSFFields(doc, zData.patientType, "Name", null, zData.patientId);
                patientFirstName = X(doc, "Name", contactFlds).split(" ")[0]; //ERS190803 TODO find a better way
                patientLastName = X(doc, "Name", contactFlds).split(" ")[1];
            }
            //ERS200205 TODO what if custom
        }
    }
    if (zData.patientId && attachPath.indexOf(zData.patientId)==-1) attachPath+=","+zData.patientId;
}
} //ERS210410 else full triage

arrOfPairs = [];
if (zData.docType) { arrOfPairs.push("ZPAPER__faxType__c", zData.docType);  } //ERS190810 PV190808 #51670
if (zData.providerId) {
    //arrOfPairs.push("ZPAPER__Provider__c", zData.providerId); //ERS200308 TODO custom setting
    if (zData.providerId.indexOf("003")===0) arrOfPairs.push("ZPAPER__"+"ProviderContact__c", zData.providerId); //ERS200309 TODO package //ERS201203 ZPAPER__
    if (zData.providerId.indexOf("001")===0) arrOfPairs.push("ZPAPER__Provider__c", zData.providerId);
    if (attachPath.indexOf(zData.providerId)==-1) attachPath+=","+zData.providerId;
}
alert("ERS190812.200 zData.patientId="+zData.patientId); //ERS190812 #61511
if (zData.patientId) {
    if (zData.patientId.indexOf("003")===0) arrOfPairs.push("ZPAPER__Patient__c", zData.patientId);
    if (zData.patientId.indexOf("001")===0) arrOfPairs.push("ZPAPER__PatientAccount__c", zData.patientId);
    if (zData.patientId.indexOf("00Q")===0) arrOfPairs.push("ZPAPER__ReferralLead__c", zData.patientId); //ERS190802 Lead
    if (attachPath.indexOf(zData.patientId)==-1) attachPath+=","+zData.patientId;
    if (1===1) { //ERS190810 PV190808 data entry for next split
        if (zData.X_ZPAPER__FirstName__c) { arrOfPairs.push("ZPAPER__FirstName__c", zData.X_ZPAPER__FirstName__c); }
        if (zData.X_ZPAPER__LastName__c) { arrOfPairs.push("ZPAPER__LastName__c", zData.X_ZPAPER__LastName__c); }  
        if (zData.X_ZPAPER__Birthdate__c) { arrOfPairs.push("ZPAPER__Birthdate__c", zData.X_ZPAPER__Birthdate__c); }
    }
}
if (zData.caseId) {
    arrOfPairs.push("ZPAPER__Case__c", zData.caseId);
    if (attachPath.indexOf(zData.caseId)==-1) attachPath+=","+zData.caseId;
}
if (zData.leadId) {
    arrOfPairs.push("ZPAPER__ReferralLead__c", zData.leadId);
    if (attachPath.indexOf(zData.leadId)==-1) attachPath+=","+zData.leadId;
}
if (zData.referralId) {
    arrOfPairs.push("ZPAPER__Referral__c", zData.referralId);
    if (attachPath.indexOf(zData.referralId)==-1) attachPath+=","+zData.referralId;
}
//CRN201026 #76788 Set the status to Index so that the call to clientChildStack will set the Stage__c field correctly. Crazy.
zData.reviewedStatus = "Indexed";

//do not have X_ in them! updateDB(doc,arrOfPairs); //ERS200205 save everthing on the parent stack TODO DISCUSS and REVIEW flow

//ERS190814 just the child #61511 updateSFRecord(doc, zData.zps, sfStackId, arrOfPairs);
//let the docSet do the work attach(doc,attachLabel, sfStackId);
//var r=updateSFRecord(doc,"ZPAPER__zStack__c",sfStackId,["ZPAPER__receivedId__c",zData.zParentId]); //ERS190814 #61511 override the save.jsp workflows
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId + "?="+zData.getStackId(doc)+" data="+arrOfPairs);

var childStackId=zData.clientChildStack(doc,arrOfPairs,sfStackId); //ERS190810 create child stack for split ERS190811 clientChildStack
var childStackNumber = null;
if (childStackId) {
    childStackNumber = getSFField(doc, "ZPAPER__zStack__c", "Name", null, childStackId);  //CRN201026 #76788 Fixup the child snippet label
    attachPath+=","+sfStackId+","+childStackId; attachPath=attachPath.replace("/,?","/"); //ERS190811 #61570 clean up //parent stack too
}

/* Move the split document to its processing folder */
alert("@@@@@@ Moving the indexed pages document into next processing folder: " + nextFolder);
//ERS190731 #61272 moveDocument(doc,"",nextFolder);
//ERS190731 #61272 reloadByBATES(doc, nextFolder); //ERS170413 #35291
/* Place the split document into the stack folder */
if (1==1) { //ERS200222 BATES ok //ERS200205 #68825 TODO CRN to review moveDocument and if we need it then fix the x_stack problem with it
    alert("@@@@@@ Moving the indexed pages document into the final stack folder: " + stackFolder);
    moveDocument(doc,"",stackFolder);
}
unlockDocument(doc);

alert("@@@ Updating child snippet after split dbID => " + doc.dbID);

arrOfPairs = [];
if (childStackNumber) {
    arrOfPairs.push("db-label", doc.label + " - " + childStackNumber);      //CRN201026 #76788 Fixup the child snippet label
}
zData.reviews = "";     //CRN201025 #76788 Make sure that the child stack doesn't inherit any X_reviews from its parent
arrOfPairs=zData.addStage(doc,arrOfPairs,zData.stage); //ERS200406 forgot to finish the call SYNTAX
arrOfPairs.push("X_docType",zData.docType); //ERS200314 #70336
var pageCount = zData.countPages(doc,pageRange);
alert("@@@@ pageCount = " + pageCount +" were "+ zData.stage);
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
//ERS190620 arrOfPairs.push("db-label", patientFirstName + patientLastName + " - " + companyCode + " - " + stackId);
arrOfPairs.push("X_attachedTo",attachPath); //ERS170628
arrOfPairs.push("db-comments",X(doc,"db-comments")); //ERS200226 #66686 TODO newlines escaped in packData CRN
if (childStackId) { arrOfPairs.push("X_sfStackId",childStackId); } //ERS210109 #80051 fixes child stack data entry
updateDB(doc,arrOfPairs);

track(doc, "Doc Indexed", "Document with Id: " + doc.dbID, pageCount);
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gekluc3RhbGwoKSB7IC8vRVJTMTcwNzIyIHNldCBvbiB0aGUgaW1wb3J0CiAgICAkKCJbbmFtZT0nZGItQkFURVMnXSIpLnZhbCgiIik7CiAgICBpZiAoJCgiI1hfYnV0dG9uQWN0aW9ucyIpLnZhbCgpID09PSAiIikgeyAkKCIjWF9idXR0b25BY3Rpb25zIikudmFsKCJJbmRleCxJZ25vcmUsUmVqZWN0LFN0YWNrIENvbXBsZXRlIik7IH0gLy9FUlMxOTA3MjkgIzYxMjcyIGRvIG5vdCBvdmVyaWRlCiAgICBpZiAoJCgiI1hfZm9sZGVyRm9ybXMiKS52YWwoKSA9PT0gIiIpIHsgJCgiI1hfZm9sZGVyRm9ybXMiKS52YWwoIjIwMjAwMjAxNzExMjUwOTExMTVfRGF0YTJfV2ViX0Zvcm0iKTsgfSAvL0VSUzE5MDcyOSAjNjEyNzIgZG8gbm90IG92ZXJpZGUKfSAvL0VSUzE3MDcyMiBlbmQgb2YgZnVuY3Rpb24KCmZ1bmN0aW9uIGRvVmFsaWRhdGlvbigpIHsKICAgIC8vQ1JOMTcwNzE5IERydWcgbmFtZSBpcyByZXF1aXJlZAogICAgLy9FUlMxNzA3MTkgbW9yZSBmaWVsZHMgZnJvbSBLZW4KICAgIHZhciBjYXNlSWQgPSAkKCdbbmFtZT0iWF9DYXNlX19jIl0nKS52YWwoKTsKICAgIC8vRVJTMTcwNzI3IGRlYnVnIG9ubHkgYWxlcnQoIkNhc2UgIitjYXNlSWQpOwogICAgCiAgICB2YXIgcmVxQnVmZmVyID0gIiI7CiAgICAKICAgIG49IlhfWlBBUEVSX19mYXhUeXBlX19jIjsgbD0iRG9jdW1lbnQgVHlwZSI7CiAgICBlPSQoJ1tuYW1lPSInK24rJyJdJyk7CiAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCByZWQnKTsKICAgICAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsgcmVxQnVmZmVyICs9ICIsICI7IH0KICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgIH0gZWxzZSBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICAKICAgIG49IlhfWlBBUEVSX19Qcmlvcml0eV9fYyI7IGw9IlByaW9yaXR5IjsKICAgIGU9JCgnW25hbWU9IicrbisnIl0nKTsKICAgIGlmIChlLmxlbmd0aCkgeyAvL0VSUzE5MDcyOSAjNjEyNzIKICAgICAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgICAgIGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgIGlmIChyZXFCdWZmZXIubGVuZ3RoID4gMCkgeyByZXFCdWZmZXIgKz0gIiwgIjsgfQogICAgICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgICAgICB9IGVsc2UgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwogICAgfSAvL2Vsc2UgYWxlcnQoIk5vdCB1c2luZyBQcmlvcml0eSIpOwogICAgCiAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsKICAgICAgICBhbGVydCgiRVJST1I6IFRoZSBmb2xsb3dpbmcgZmllbGRzIGFyZSByZXF1aXJlZDogIiArIHJlcUJ1ZmZlcik7CiAgICAgICAgcmV0dXJuIGZhbHNlOyAgIC8vQ1JOMTcwNzE5IG9uZSBvciBtb3JlIGZpZWxkIGlzIG1pc3NpbmcsIGRvbid0IHNlbmQgdG8gdGhlIHJ1bGVzIGVuZ2luZQogICAgfQogICAgcmV0dXJuIHRydWU7ICAgICAgICAvL0NSTjE3MDcxOSBBbGwgcmVxdWlyZWQgZmllbGRzIGhhdmUgYmVlbiBzdXBwbGllZCwgbGV0IHRoZSBydWxlcyBlbmdpbmUgYmUgbm90aWZpZWQKfQoKcmV0dXJuIGRvVmFsaWRhdGlvbigpOw==
//--- RULE VALIDATION CODE - END ---

</script>
