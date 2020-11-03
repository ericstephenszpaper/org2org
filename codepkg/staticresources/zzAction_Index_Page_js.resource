<!--
// Name: Index Page
// Committer: cory.newey@zpaper.com
// Update: CRN201026 #76788 Set the priority to whatever the zStack priority is.; CRN201026 #76788 Set the status to Index so that the call to clientChildStack will set the Stage__c field correctly. Crazy.; CRN201026 #76788 Fixup the child snippet label; CRN201026 #76788 Fixup the child snippet label
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-10-26 14:37:07","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7Ci8vRVJTMTkwNzMwICM2MTI3MiB1cGRhdGVkIGJ1dHRvbiB2YWxpZGF0aW9uIGluIHRoZSBBY3Rpb25zKiBEZXRhaWxzIGFyZWEKCnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CmlmICghc3RhY2tJZCB8fCBzdGFja0lkLmluZGV4T2YoImEiKSAhPT0gMCkgc3RhY2tJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7IC8vRVJTMTkwNjI0IEhBQ0s/CmlmIChzdGFja0lkKSB6RGF0YS5zdGFja0lkPXN0YWNrSWQ7IC8vRVJTMjAwMjA0ICM2ODgyNSBtdWNoIGJldHRlciBmb3IgY2xpZW50IGNhbGxzCnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwp6RGF0YS5zdGFnZT0iSW5kZXhlZCI7IC8vRVJTMTkwNjIwCgovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCi8vRVJTMTcwOTA5IHpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbihkb2MsIlhfYnV0dG9uQWN0aW9uIik7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwppZiAoIWluZGV4SW5pdGlhbGl6ZWQgfHwgMCA9PT0gaW5kZXhJbml0aWFsaXplZC5sZW5ndGgpIHsKICAgIHN0YWNrSWQgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CiAgICB6RGF0YS5pbml0aWFsaXplU3RhY2soZG9jLHN0YWNrRm9sZGVyLCBjb21wYW55Q29kZSwgc3RhY2tJZCk7Cn0KCnpEYXRhLmdldERhdGFFbnRyeUZpZWxkcyhkb2MpOwovLyBEb2VzIHRoZSB1c2VyIHdhbnQgdG8gYXR0YWNoIGluZGV4ZWQgcGFnZXMgdG8gQ2FzZT8KLy92YXIgY2FzZUlkID0gWChkb2MsICJYX1pQQVBFUl9fQ2FzZV9fYyIpOwovL3ZhciBjb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7Ci8vdmFyIHBhdGllbnRJZD1jb250YWN0SWQ7IC8vVE9ETwovL3ZhciBwcm92aWRlcklkID0gWChkb2MsICJYX1pQQVBFUl9fUHJvdmlkZXJfX2MiKTsKLy92YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwovL3ZhciBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwovL3ZhciBwYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7CgovL3pEYXRhLmNsaWVudENvcHlGcm9tRG9jKGRvYyk7IC8vRVJTMjAwMzA5IHNwbGl0cyBmcmFnbWVudCB6aXBwaSB6RGF0YQppZiAoIXpEYXRhLnBhdGllbnRJZCAmJiBYKGRvYywiWF9wYXRpZW50SWQiKSkgekRhdGEucGF0aWVudElkPVgoZG9jLCJYX3BhdGllbnRJZCIpOwppZiAoIXpEYXRhLnBhdGllbnRJZCAmJiBYKGRvYywiWF9aUEFQRVJfX1BhdGllbnRfX2MiKSkgekRhdGEucGF0aWVudElkPVgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudF9fYyIpOyAvL0VSUzIwMDIwNSBrZWVwIHRyYWNrIG9mIElEcyBiZXR0ZXIKaWYgKCF6RGF0YS5wYXRpZW50SWQgJiYgWChkb2MsIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIpKSB6RGF0YS5wYXRpZW50SWQ9WChkb2MsIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIpOyAvL0VSUzIwMDMwOCAjNzAyNzMKCmlmICghekRhdGEucHJvdmlkZXJJZCAmJiBYKGRvYywiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIikpIHpEYXRhLnByb3ZpZGVySWQ9WChkb2MsIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOyAvL0VSUzIwMDMwOCAjNzAyNzMKaWYgKCF6RGF0YS5wcm92aWRlcklkICYmIFgoZG9jLCJYX1Byb3ZpZGVyQ29udGFjdF9fYyIpKSB6RGF0YS5wcm92aWRlcklkPVgoZG9jLCJYX1Byb3ZpZGVyQ29udGFjdF9fYyIpOyAvL0VSUzIwMDMwOCAjNzAyNzMgVE9ETyB6cCsKaWYgKCF6RGF0YS5wcm92aWRlcklkICYmIFgoZG9jLCJYX1pQQVBFUl9fUHJvdmlkZXJDb250YWN0X19jIikpIHpEYXRhLnByb3ZpZGVySWQ9WChkb2MsIlhfWlBBUEVSX19Qcm92aWRlckNvbnRhY3RfX2MiKTsgLy9FUlMyMDAzMDggIzcwMjczIFRPRE8genArCmFsZXJ0KCJFUlMyMDAzMDkuMzggcHJvdmlkZXJJZD0iK3pEYXRhLnByb3ZpZGVySWQgKyIgZnJvbSAiK1goZG9jLCJYX1Byb3ZpZGVyQ29udGFjdF9fYyIpCiAgICsiIGFuZCBwYXRpZW50SWQ9Iit6RGF0YS5wYXRpZW50SWQrIiBmcm9tICIrWChkb2MsIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIpKTsgLy9FUlMyMDAzMDkgZ2V0IHRoZSBJZHMKCmlmICghekRhdGEuY2FzZUlkKSB6RGF0YS5jYXNlSWQ9WChkb2MsIlhfWlBBUEVSX19DYXNlX19jIik7IC8vLy9FUlMyMDAyMDUgemlwcGkgY2hhbmdlcwoKLy8gR2V0IHRoZSBkb2N1bWVudCB0eXBlICh3aWxsIGJlIHVzZWQgdG8gcm91dGUgdG8gbmV4dCBmb2xkZXIpCi8vdmFyIGRvY1R5cGUgPSBYKGRvYywgIlhfRG9jdW1lbnRfVHlwZV9fYyIpOwp2YXIgbmV4dEZvbGRlciA9ICIyMDUwMFRyaWFnZS1TMiI7ICAgICAgICAgICAgICAvLyBPdGhlciBmb2xkZXIgaXMgdGhlIGRlZmF1bHQKdmFyIHByZXZJbmRleFBhZ2VzID0gWChkb2MsICJYX2luZGV4ZWRQYWdlcyIpOwp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwppZiAocHJldkluZGV4UGFnZXMgJiYgcHJldkluZGV4UGFnZXMubGVuZ3RoID4gMCAmJiBjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewogICAgcHJldkluZGV4UGFnZXMgKz0gIiwiOwp9CmN1ckluZGV4UGFnZXMgPSBwcmV2SW5kZXhQYWdlcyArIGN1ckluZGV4UGFnZXM7CnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9pbmRleGVkUGFnZXMiLCBjdXJJbmRleFBhZ2VzKTsKLy9tb3ZlIHRvIGFmdGVyIHVwZGF0ZXMgYXJyT2ZQYWlycz16RGF0YS5hZGRTdGFnZShkb2MsYXJyT2ZQYWlycywiSW5kZXhlZCIpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgc2ZTdGFja0lkPXpEYXRhLmdldFN0YWNrSWQoZG9jKTsKYWxlcnQoIkBAQEBAQCBDdXJyZW50bHkgYXR0YWNoZWQgdG8gWlBBUEVSX196U3RhY2tfX2Mgd2l0aCBJRDogIiArIHNmU3RhY2tJZCk7CnpEYXRhLnpQYXJlbnRJZD1kb2MuZGJJRDsgLy9FUlMxOTA4MTQgdG8gb3ZlcnNpZGUgdGhlIHNhdmUuanNwIHdvcmtmbG93cwoKYWxlcnQoIkBAQCBCZWZvcmUgc3BsaXQgZm9yIGluZGV4OiBkYklEID0+ICIgKyBkb2MuZGJJRCk7Ci8qIFNQTElUIE9GRiBORVcgU05JUFBFVCBIRVJFICovCnZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwp2YXIgbmV3SWQ9c3BsaXREb2N1bWVudEZvckluZGV4KGRvYywgImluZGV4IiwgcGFnZVJhbmdlKTsKYWxlcnQoIkVSUzE5MDYyNCBuZXdJZD0iK25ld0lkKTsKYWxlcnQoIkBAQCBBRlRFUiBzcGxpdCBmb3IgaW5kZXg6IGRiSUQgPT4gIiArIGRvYy5kYklEKTsKLy8qCi8qIEFGVEVSIFRISVMgUE9JTlQsIFRIRSBET0MgV0lMTCBIT0xEIERBVEEgRk9SIE5FVyBTTklQUEVULCBOT1QgVEhFIFNUQUNLIFNOSVBQRVQgKi8KLy8qCgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIGEgbmV3IENhc2UgcmVjb3JkLCBpZiBpdCB3YXNuJ3QgcGFzc2VkIGluICovCi8vdmFyIHByaW9yaXR5PVgoZG9jLCJYX1pQQVBFUl9fUHJpb3JpdHlfX2MiKTsgLy9FUlMxNzA2MjYKdmFyIGxhYmVsMD0iIjsKYWxlcnQoIkVSUzIwMDIwNS42NCBkb2MuZG9jVHlwZT0iK2RvYy5kb2NUeXBlKyIgekRhdGEuZG9jVHlwZT0iK3pEYXRhLmRvY1R5cGUrIiBYKCk9IitYKGRvYywiWF9kb2NUeXBlIikrIiBYMj0iK1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKTsKdmFyIHRyaWFnZVR5cGU9ZG9jLmRvY1R5cGU7CmlmICghdHJpYWdlVHlwZSB8fCB0cmlhZ2VUeXBlID09ICJGQVgiKSB0cmlhZ2VUeXBlPVgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOyAvL0VSUzIwMDIwNSBkb2MuZG9jVHlwZTsKekRhdGEuZG9jVHlwZT10cmlhZ2VUeXBlOyBhbGVydCgiVXNpbmcgRVJTMjAwMjA1IGRvY1R5cGU9Iit6RGF0YS5kb2NUeXBlKTsgLy9FUlMyMDAyMDUgQDY4ODI1Cgp2YXIgYXR0YWNoUGF0aCA9IFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsKdmFyIGF0dGFjaExhYmVsPXpEYXRhLmNsaWVudEZpbGUoZG9jLCJJbmRleGVkIik7IC8vIkluZGV4ZWQgIiArIGZvcm1hdE5vdzsKYWxlcnQoIkVSUzE5MDYyNCBhdHRhY2hMYWJlbD0iK2F0dGFjaExhYmVsKTsKCi8vRVJTMTkwNjIwIHVzZSBhIHNldHRpbmcgdG8gZGV0ZXJtaW5lIHdoaWNoIGxvb2t1cHMgd2UgYXR0YWNoIHRvCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gQ2FzZSByZWNvcmQgaWYgcmVxdWlyZWQgKi8gLy9FUlMxOTA2MTkKLy9FUlMyMDAzMDggekRhdGEuY2hhbm5lbEFjdGlvbj0iY2xpZW50Q2FzZUVOUkwoKSI7IC8vRVJTMjAwMzA3IFRPRE8gZ2V0IG1vcmUgY2hhbm5lbCBjb25maWd1cmFibGUgIzcwMjczCmlmICgxPT09MSkgeyAvL3F1aWNrIHRlc3QKaWYgKHpEYXRhLmNhc2VJZCB8fCB6RGF0YS56Y2hhbm5lbC5hY3Rpb24uaW5kZXhPZigiY2xpZW50Q2FzZSIpPi0xKSB7ICAvL0VSUzIwMDMwNyB6RGF0YS56Y2hhbm5lbCAjNzAyNzMKICAgIGFsZXJ0KCJFUlMxOTA2MjQgbmVlZCBDYXNlIik7CiAgICBpZiAoekRhdGEuY2FzZUlkKSB7CiAgICAgICAgYWxlcnQoIkVSUzE5MDYyNC42NyIpOwogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIkNhc2UiKT4tMSkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgQ2FzZTogIiArIHpEYXRhLmNhc2VJZCk7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCB6RGF0YS5jYXNlSWQpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IENhc2UiKTsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgLy9DUk4yMDEwMjYgIzc2Nzg4IFNldCB0aGUgcHJpb3JpdHkgdG8gd2hhdGV2ZXIgdGhlIHpTdGFjayBwcmlvcml0eSBpcy4KICAgICAgICB2YXIgc3RhY2tQcmlvcml0eSA9IGdldFNGRmllbGQoZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCAiWlBBUEVSX19Qcmlvcml0eV9fYyIsIG51bGwsIHNmU3RhY2tJZCk7CiAgICAgICAgYWxlcnQoIiMjIyBzZXR0aW5nIENhc2UgcHJpb3JpdHkgPT4gIiArIHN0YWNrUHJpb3JpdHkpOwogICAgICAgIHpEYXRhLnByaW9yaXR5ID0gc3RhY2tQcmlvcml0eTsKICAgICAgICB6RGF0YS5jYXNlSWQ9ekRhdGEuY2xpZW50Q2FzZShkb2MsYXJyT2ZQYWlycyk7CiAgICAgICAgYWxlcnQoIkNyZWF0ZWQgQ2FzZSB3aXRoIElEOiAiICsgekRhdGEuY2FzZUlkKTsKICAgICAgICBpZiAoekRhdGEuY2FzZUlkID09ICJudWxsIiB8fCB6RGF0YS5jYXNlSWQgPT0gIk5FVyIpIHpEYXRhLmNhc2VJZD1udWxsOwogICAgICAgIGVsc2UgewogICAgICAgICAgICB2YXIgZHEgPSB6RGF0YS5kcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOyAvL0VSUzIwMDMxMyAjNzAwMzYKICAgICAgICAgICAgekRhdGEuY2FzZU51bWJlcj1nZXRTRkZpZWxkKGRvYywiQ2FzZSIsIkNhc2VOdW1iZXIiLG51bGwsekRhdGEuY2FzZUlkKTsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQ2FzZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5jYXNlSWQgKyBkcSArICIpOyAiKTsgLy9FUlMyMDAzMTAgc2hvdyByZXN1bHRzCiAgICAgICAgICAgIC8vRVJTMjAwMzEzIENhc2VfX2NfTmFtZSBub3cgWlBBUEVSX19DYXNlX19jX0Nhc2VOdW1iZXIKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQ2FzZV9fY19DYXNlTnVtYmVyIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLmNhc2VOdW1iZXIgKyBkcSArICIpOyAiKTsgLy9FUlMyMDAzMTAgVE9ETyBDYXNlIG51bWJlcgogICAgICAgIH0KICAgIH0KICAgIGFsZXJ0KCJFUlMxOTA2MjQuNzggaGF2ZSBhIGNhc2U/Iik7CiAgICBpZiAoekRhdGEuY2FzZUlkICYmIGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5jYXNlSWQpPT0tMSkgewogICAgICAgIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5jYXNlSWQ7CiAgICB9Cn0KfQoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBMZWFkIHJlY29yZCBpZiByZXF1aXJlZCAqLyAvL0VSUzE5MDYxOQovLyBUT0RPIEVSUzE5MDYyNCBmbGlwIHRoZSBpZiBsb2dpYwppZiAoZG9jLndkZGF0YS5pbmRleE9mKCJYX1pQQVBFUl9fUmVmZXJyYWxMZWFkX19jIik+LTEpIHsgLy9FUlMxOTA4MDMgVE9ETyByZXRoaW5rCiAgICBpZiAoIWxlYWRJZCB8fCAwID09PSBsZWFkSWQubGVuZ3RoKSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IExlYWQiKTsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgbGVhZElkPXpEYXRhLmNsaWVudExlYWQoZG9jLGFyck9mUGFpcnMpOwogICAgICAgIGFsZXJ0KCJDcmVhdGVkIExlYWQgd2l0aCBJRDogIiArIGxlYWRJZCk7CiAgICAgICAgaWYgKGxlYWRJZCA9PSAibnVsbCIgfHwgbGVhZElkID09ICJORVciKSBsZWFkSWQ9bnVsbDsKICAgIH0gZWxzZSB7CiAgICAgICAgaWYgKHpEYXRhLmF0dGFjaFJlY29yZHMuaW5kZXhPZigiTGVhZCIpPi0xKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBMZWFkOiAiICsgbGVhZElkKTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIGxlYWRJZCk7CiAgICAgICAgfQogICAgfQogICAgaWYgKGxlYWRJZCAmJiBhdHRhY2hQYXRoLmluZGV4T2YobGVhZElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitsZWFkSWQ7Cn0KCnpEYXRhLnByb3ZpZGVyVHlwZT1YQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUHJvdmlkZXJSZWNvcmRfX2MiKTsKaWYgKCF6RGF0YS5wcm92aWRlclR5cGUpIHpEYXRhLnByb3ZpZGVyVHlwZT1YQ3VzdG9tU2V0dGluZyhkb2MsIlByb3ZpZGVyUmVjb3JkX19jIik7IC8vRVJTMjAwMzA4ICM3MDI3MyBUT0RPIHBhY2thZ2UKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gTGVhZCByZWNvcmQgaWYgcmVxdWlyZWQgKi8gLy9FUlMxOTA2MTkKekRhdGEucGF0aWVudFR5cGU9WEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX1BhdGllbnRSZWNvcmRfX2MiKTsgLy9FUlMxOTA4MDYgWlBBUEVSX18gbm93IGluIE1QCmlmICghekRhdGEucGF0aWVudFR5cGUpIHpEYXRhLnBhdGllbnRUeXBlPSJDb250YWN0IjsgLy9FUlMxOTA4MDIgIzYxMjcyCmlmICh6RGF0YS5wYXRpZW50SWQgfHwgWChkb2MsIlhfWlBBUEVSX19QYXRpZW50IikgfHwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKSB7IC8vRVJTMTkwODAzIFRPRE8gcmV0aGluayB1c2UgWCAvL0VSUzIwMDIwNSB6RGF0YS5wYXRpZW50SWQKICAgIHZhciBkcSA9IHpEYXRhLmRxID0gU3RyaW5nLmZyb21DaGFyQ29kZSgzNCk7IC8vRVJTMTkwODAyIFRPRE8gZGVmaW5lIGJldHRlciBpbiB6RGF0YQogICAgaWYgKCF6RGF0YS5wYXRpZW50SWQpIHsKICAgICAgICBhbGVydCgiQEBAQCBjcmVhdGluZyBuZXcgIit6RGF0YS5wYXRpZW50VHlwZSsiIFBhdGllbnQiKTsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgLy9FUlMxOTA3MzAgIzYxMjcyIG1pc3NpbmcgdGhlIGJhc2ljcwogICAgICAgIHZhciBwPSIiOyAKICAgICAgICBpZiAoIkFjY291bnQiPT09ekRhdGEucGF0aWVudFR5cGUpIHsgLy9FUlMxOTA4MDMKICAgICAgICAgICAgcD0iUGVyc29uIjsKICAgICAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIk5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKyIgIit6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOyAKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaChwKyJCaXJ0aGRhdGUiLCB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOyAvL1hfWlBBUEVSX19GaXJzdE5hbWVfX2MgLy9FUlMxOTA4MDMgVE9ETyBnZXQgY2xlYW5lciAjNjEyNzIKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiQmlydGhkYXRlIiwgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyk7CiAgICAgICAgfQogICAgICAgIHpEYXRhLnBhdGllbnRJZD16RGF0YS5jbGllbnRQYXRpZW50KGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBQYXRpZW50IHdpdGggSUQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgIGlmICh6RGF0YS5wYXRpZW50SWQgPT0gIm51bGwiIHx8IHpEYXRhLnBhdGllbnRJZCA9PSAiTkVXIikgekRhdGEucGF0aWVudElkPW51bGw7CiAgICAgICAgZWxzZSB7IC8vRVJTMTkwNzMwICM2MTI3MiBsZXZlcmFnZSB0aGUgbmV3IHJlY29yZAogICAgICAgICAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwogICAgICAgICAgICBhbGVydCgiQEBAQEBAQCBORVcgUEFUSUVOVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzE5MDgwMiB6RGF0YS5jb250YWN0SWQKICAgICAgICAgICAgLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwogICAgICAgICAgICBpZiAoMT09PTApIHsgLy9FUlMxOTA4MTEgIzYxNTcwIGNvbW1lbnRlZCBvdXQgc28gdGhhdCBwYXRpZW50IGluZm8gaXMgYXZhaWxhYmxlIGZvciBERSB2YXJpYWJsZXMgaW4gemlwcGkKICAgICAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19GaXJzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19MYXN0TmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgfQogICAgICAgICAgICAvLyBzZXQgdGhlIFBhdGllbnQgbG9va3VwIGZpZWxkcwogICAgICAgICAgICAvL0VSUzE5MDgwMyBUT0RPIGhhbmRsZSBaUEFQRVJfXyByZWxhdGlvbnNoaXBzIC8vRVJTMTkwODExIGRvdWJsZSB1cCBmb3Igc2FmZXR5CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEucGF0aWVudElkICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jICsgIiAiICsgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLnBhdGllbnRJZCArIGRxICsgIik7ICIpOwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50QWNjb3VudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKICAgICAgICB9CiAgICB9IGVsc2UgewogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIlBhdGllbnQiKT4tMSkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgUGF0aWVudDogIiArIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICBpZiAoMT09PTEgfHwgekRhdGEucGF0aWVudFR5cGUgIT0gIkFjY291bnQiKSB7IC8vRVJTMTkwNzMwIGxvb2t1cCB0aGUgZGF0YSBUT0RPIHBlcnNvbiBhY2NvdW50PwogICAgICAgICAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgICAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgICAgICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgICAgICAgICB9IGVsc2UgaWYgKHpEYXRhLnBhdGllbnRUeXBlID09ICJBY2NvdW50IikgeyAvL0VSUzE5MDczMCBsb29rdXAgdGhlIGRhdGEgVE9ETyBwZXJzb24gYWNjb3VudD8KICAgICAgICAgICAgICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgekRhdGEucGF0aWVudFR5cGUsICJOYW1lIiwgbnVsbCwgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIk5hbWUiLCBjb250YWN0Rmxkcykuc3BsaXQoIiAiKVswXTsgLy9FUlMxOTA4MDMgVE9ETyBmaW5kIGEgYmV0dGVyIHdheQogICAgICAgICAgICAgICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJOYW1lIiwgY29udGFjdEZsZHMpLnNwbGl0KCIgIilbMV07CiAgICAgICAgICAgIH0KICAgICAgICAgICAgLy9FUlMyMDAyMDUgVE9ETyB3aGF0IGlmIGN1c3RvbQogICAgICAgIH0KICAgIH0KICAgIGlmICh6RGF0YS5wYXRpZW50SWQgJiYgYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwp9CgovL2NsaWVudFBhdGllbnQgaGFzIHRvIGRvIHRoaXMKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBDb250YWN0IHJlY29yZCBpZiByZXF1aXJlZCAKaWYgKGRvYy53ZGRhdGEuaW5kZXhPZigiWF9aUEFQRVJfX1BhdGllbnRfX2MiKT4tMSkgeyAgLy9UT0RPIGRlYWwgd2l0aCBwZXJzb25BY2NvdW50cwogICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGEgQ29udGFjdD8gY29udGFjdElkID0gIiArIGNvbnRhY3RJZCk7CiAgICBpZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CiAgICAgICAgYXR0YWNoKGRvYywgIkluZGV4ZWQtIiArIGRvY1R5cGUgKyAiLSIgKyBzdGFja0lkLCBjb250YWN0SWQpOwogICAgICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7CiAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCBjb250YWN0SWQpOwogICAgICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgfQogICAgZWxzZSBpZiAocGF0aWVudEZpcnN0TmFtZSAmJiBwYXRpZW50Rmlyc3ROYW1lLmxlbmd0aCA+IDAgCiAgICAgICAgJiYgcGF0aWVudExhc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZS5sZW5ndGggPiAwIAogICAgICAgICYmIHBhdGllbnRET0IgJiYgcGF0aWVudERPQi5sZW5ndGggPiAwKSB7CiAgICAgICAgdmFyIGN0Y0Fyck9mUGFpcnMgPSBbXTsKICAgICAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHBhdGllbnRGaXJzdE5hbWUpOwogICAgICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiTGFzdE5hbWUiLCBwYXRpZW50TGFzdE5hbWUpOwogICAgICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiQmlydGhEYXRlIiwgcGF0aWVudERPQik7CiAgICAgICAgY29udGFjdElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCAiSW5kZXhlZC0iICsgZG9jVHlwZSArICItIiArIHN0YWNrSWQsIGN0Y0Fyck9mUGFpcnMpOwogICAgICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7CiAgICAgICAgYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgY29udGFjdElkKTsKICAgICAgICAvLyBjbGVhciBvdXQgdGhlICJOZXcgUGF0aWVudCIgZmllbGRzCiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9GaXJzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9MYXN0X05hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwogICAgICAgIC8vIHNldCB0aGUgUGF0aWVudCBsb29rdXAgZmllbGRzCiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgY29udGFjdElkICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lICsgZHEgKyAiKTsgIik7CiAgICB9Cn0KKi8KCmFyck9mUGFpcnMgPSBbXTsKaWYgKHpEYXRhLmRvY1R5cGUpIHsgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCB6RGF0YS5kb2NUeXBlKTsgIH0gLy9FUlMxOTA4MTAgUFYxOTA4MDggIzUxNjcwCmlmICh6RGF0YS5wcm92aWRlcklkKSB7CiAgICAvL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcm92aWRlcl9fYyIsIHpEYXRhLnByb3ZpZGVySWQpOyAvL0VSUzIwMDMwOCBUT0RPIGN1c3RvbSBzZXR0aW5nCiAgICBpZiAoekRhdGEucHJvdmlkZXJJZC5pbmRleE9mKCIwMDMiKT09PTApIGFyck9mUGFpcnMucHVzaCgiIisiUHJvdmlkZXJDb250YWN0X19jIiwgekRhdGEucHJvdmlkZXJJZCk7IC8vRVJTMjAwMzA5IFRPRE8gcGFja2FnZQogICAgaWYgKHpEYXRhLnByb3ZpZGVySWQuaW5kZXhPZigiMDAxIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvdmlkZXJfX2MiLCB6RGF0YS5wcm92aWRlcklkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucHJvdmlkZXJJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucHJvdmlkZXJJZDsKfQphbGVydCgiRVJTMTkwODEyLjIwMCB6RGF0YS5wYXRpZW50SWQ9Iit6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzE5MDgxMiAjNjE1MTEKaWYgKHpEYXRhLnBhdGllbnRJZCkgewogICAgaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMDMiKT09PTApIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50X19jIiwgekRhdGEucGF0aWVudElkKTsKICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDAxIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudEFjY291bnRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOwogICAgaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMFEiKT09PTApIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19SZWZlcnJhbExlYWRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzE5MDgwMiBMZWFkCiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwogICAgaWYgKDE9PT0xKSB7IC8vRVJTMTkwODEwIFBWMTkwODA4IGRhdGEgZW50cnkgZm9yIG5leHQgc3BsaXQKICAgICAgICBpZiAoekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYykgeyBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fRmlyc3ROYW1lX19jIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7IH0KICAgICAgICBpZiAoekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKSB7IGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19MYXN0TmFtZV9fYyIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7IH0gIAogICAgICAgIGlmICh6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKSB7IGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19CaXJ0aGRhdGVfX2MiLCB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsgfQogICAgfQp9CmlmICh6RGF0YS5jYXNlSWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DYXNlX19jIiwgekRhdGEuY2FzZUlkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEuY2FzZUlkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5jYXNlSWQ7Cn0KaWYgKHpEYXRhLmxlYWRJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1JlZmVycmFsTGVhZF9fYyIsIHpEYXRhLmxlYWRJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLmxlYWRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEubGVhZElkOwp9CmlmICh6RGF0YS5yZWZlcnJhbElkKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUmVmZXJyYWxfX2MiLCB6RGF0YS5yZWZlcnJhbElkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucmVmZXJyYWxJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucmVmZXJyYWxJZDsKfQovL0NSTjIwMTAyNiAjNzY3ODggU2V0IHRoZSBzdGF0dXMgdG8gSW5kZXggc28gdGhhdCB0aGUgY2FsbCB0byBjbGllbnRDaGlsZFN0YWNrIHdpbGwgc2V0IHRoZSBTdGFnZV9fYyBmaWVsZCBjb3JyZWN0bHkuIENyYXp5Lgp6RGF0YS5yZXZpZXdlZFN0YXR1cyA9ICJJbmRleGVkIjsKCi8vZG8gbm90IGhhdmUgWF8gaW4gdGhlbSEgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzIwMDIwNSBzYXZlIGV2ZXJ0aGluZyBvbiB0aGUgcGFyZW50IHN0YWNrIFRPRE8gRElTQ1VTUyBhbmQgUkVWSUVXIGZsb3cKCi8vRVJTMTkwODE0IGp1c3QgdGhlIGNoaWxkICM2MTUxMSB1cGRhdGVTRlJlY29yZChkb2MsIHpEYXRhLnpwcywgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKLy9sZXQgdGhlIGRvY1NldCBkbyB0aGUgd29yayBhdHRhY2goZG9jLGF0dGFjaExhYmVsLCBzZlN0YWNrSWQpOwovL3ZhciByPXVwZGF0ZVNGUmVjb3JkKGRvYywiWlBBUEVSX196U3RhY2tfX2MiLHNmU3RhY2tJZCxbIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsekRhdGEuelBhcmVudElkXSk7IC8vRVJTMTkwODE0ICM2MTUxMSBvdmVycmlkZSB0aGUgc2F2ZS5qc3Agd29ya2Zsb3dzCmFsZXJ0KCJAQEBAIHVwZGF0ZWQgYW5kIGF0dGFjaGVkIHRvIHpTdGFjayBSZWNvcmQsIGlkID0gIiArIHNmU3RhY2tJZCArICI/PSIrekRhdGEuZ2V0U3RhY2tJZChkb2MpKyIgZGF0YT0iK2Fyck9mUGFpcnMpOwoKdmFyIGNoaWxkU3RhY2tJZD16RGF0YS5jbGllbnRDaGlsZFN0YWNrKGRvYyxhcnJPZlBhaXJzLHNmU3RhY2tJZCk7IC8vRVJTMTkwODEwIGNyZWF0ZSBjaGlsZCBzdGFjayBmb3Igc3BsaXQgRVJTMTkwODExIGNsaWVudENoaWxkU3RhY2sKdmFyIGNoaWxkU3RhY2tOdW1iZXIgPSBudWxsOwppZiAoY2hpbGRTdGFja0lkKSB7CiAgICBjaGlsZFN0YWNrTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsICJaUEFQRVJfX3pTdGFja19fYyIsICJOYW1lIiwgbnVsbCwgY2hpbGRTdGFja0lkKTsgIC8vQ1JOMjAxMDI2ICM3Njc4OCBGaXh1cCB0aGUgY2hpbGQgc25pcHBldCBsYWJlbAogICAgYXR0YWNoUGF0aCs9IiwiK3NmU3RhY2tJZCsiLCIrY2hpbGRTdGFja0lkOyBhdHRhY2hQYXRoPWF0dGFjaFBhdGgucmVwbGFjZSgiLyw/IiwiLyIpOyAvL0VSUzE5MDgxMSAjNjE1NzAgY2xlYW4gdXAgLy9wYXJlbnQgc3RhY2sgdG9vCn0KCi8qIE1vdmUgdGhlIHNwbGl0IGRvY3VtZW50IHRvIGl0cyBwcm9jZXNzaW5nIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgaW5kZXhlZCBwYWdlcyBkb2N1bWVudCBpbnRvIG5leHQgcHJvY2Vzc2luZyBmb2xkZXI6ICIgKyBuZXh0Rm9sZGVyKTsKLy9FUlMxOTA3MzEgIzYxMjcyIG1vdmVEb2N1bWVudChkb2MsIiIsbmV4dEZvbGRlcik7Ci8vRVJTMTkwNzMxICM2MTI3MiByZWxvYWRCeUJBVEVTKGRvYywgbmV4dEZvbGRlcik7IC8vRVJTMTcwNDEzICMzNTI5MQovKiBQbGFjZSB0aGUgc3BsaXQgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyICovCmlmICgxPT0xKSB7IC8vRVJTMjAwMjIyIEJBVEVTIG9rIC8vRVJTMjAwMjA1ICM2ODgyNSBUT0RPIENSTiB0byByZXZpZXcgbW92ZURvY3VtZW50IGFuZCBpZiB3ZSBuZWVkIGl0IHRoZW4gZml4IHRoZSB4X3N0YWNrIHByb2JsZW0gd2l0aCBpdAogICAgYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGluZGV4ZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwogICAgbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7Cn0KdW5sb2NrRG9jdW1lbnQoZG9jKTsKCmFsZXJ0KCJAQEAgVXBkYXRpbmcgY2hpbGQgc25pcHBldCBhZnRlciBzcGxpdCBkYklEID0+ICIgKyBkb2MuZGJJRCk7CgphcnJPZlBhaXJzID0gW107CmlmIChjaGlsZFN0YWNrTnVtYmVyKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsICsgIiAtICIgKyBjaGlsZFN0YWNrTnVtYmVyKTsgICAgICAvL0NSTjIwMTAyNiAjNzY3ODggRml4dXAgdGhlIGNoaWxkIHNuaXBwZXQgbGFiZWwKfQp6RGF0YS5yZXZpZXdzID0gIiI7ICAgICAvL0NSTjIwMTAyNSAjNzY3ODggTWFrZSBzdXJlIHRoYXQgdGhlIGNoaWxkIHN0YWNrIGRvZXNuJ3QgaW5oZXJpdCBhbnkgWF9yZXZpZXdzIGZyb20gaXRzIHBhcmVudAphcnJPZlBhaXJzPXpEYXRhLmFkZFN0YWdlKGRvYyxhcnJPZlBhaXJzLHpEYXRhLnN0YWdlKTsgLy9FUlMyMDA0MDYgZm9yZ290IHRvIGZpbmlzaCB0aGUgY2FsbCBTWU5UQVgKYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLHpEYXRhLmRvY1R5cGUpOyAvL0VSUzIwMDMxNCAjNzAzMzYKdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLHBhZ2VSYW5nZSk7CmFsZXJ0KCJAQEBAIHBhZ2VDb3VudCA9ICIgKyBwYWdlQ291bnQgKyIgd2VyZSAiKyB6RGF0YS5zdGFnZSk7CmFyck9mUGFpcnMucHVzaCgiWF9wYWdlcyIscGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1wYWdlcyIscGFnZUNvdW50KTsKLy9FUlMxOTA2MjAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHBhdGllbnRGaXJzdE5hbWUgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIGNvbXBhbnlDb2RlICsgIiAtICIgKyBzdGFja0lkKTsKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLGF0dGFjaFBhdGgpOyAvL0VSUzE3MDYyOAphcnJPZlBhaXJzLnB1c2goImRiLWNvbW1lbnRzIixYKGRvYywiZGItY29tbWVudHMiKSk7IC8vRVJTMjAwMjI2ICM2NjY4NiBUT0RPIG5ld2xpbmVzIGVzY2FwZWQgaW4gcGFja0RhdGEgQ1JOPwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp0cmFjayhkb2MsICJEb2MgSW5kZXhlZCIsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHBhZ2VDb3VudCk7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibmV4dFBhZ2UofnJlYWR5fik7dXBkYXRlREVTdGF0dXMofmluZGV4ZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKCi8qIGVuZCBvZiBydWxlICov"},"ordinal":14}

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

//clientPatient has to do this
/* Attach the split document to Contact record if required 
if (doc.wddata.indexOf("X_ZPAPER__Patient__c")>-1) {  //TODO deal with personAccounts
    alert("@@@@ attaching to a Contact? contactId = " + contactId);
    if (contactId && contactId.length > 0) {
        attach(doc, "Indexed-" + docType + "-" + stackId, contactId);
        if (attachPath.indexOf(contactId)==-1) attachPath+=","+contactId;
        var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, contactId);
        patientFirstName = X(doc, "FirstName", contactFlds);
        patientLastName = X(doc, "LastName", contactFlds);
    }
    else if (patientFirstName && patientFirstName.length > 0 
        && patientLastName && patientLastName.length > 0 
        && patientDOB && patientDOB.length > 0) {
        var ctcArrOfPairs = [];
        ctcArrOfPairs.push("FirstName", patientFirstName);
        ctcArrOfPairs.push("LastName", patientLastName);
        ctcArrOfPairs.push("BirthDate", patientDOB);
        contactId = createAndAttach(doc, "Contact", "Indexed-" + docType + "-" + stackId, ctcArrOfPairs);
        if (attachPath.indexOf(contactId)==-1) attachPath+=","+contactId;
        alert("@@@@@@@ NEW CONTACT CREATED WITH ID: " + contactId);
        // clear out the "New Patient" fields
        addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_First_Name__c" + dq + ").val(" + dq + "" + dq + "); ");
        addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_Last_Name__c" + dq + ").val(" + dq + "" + dq + "); ");
        addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_DoB__c" + dq + ").val(" + dq + "" + dq + "); ");
        addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_DoB__c_readable" + dq + ").val(" + dq + "NONE" + dq + "); ");
        // set the Patient lookup fields
        addPostExecutionScript(doc, " $(" + dq + "#Patient__c" + dq + ").val(" + dq + contactId + dq + "); ");
        addPostExecutionScript(doc, " $(" + dq + "#Patient__c_Name" + dq + ").val(" + dq + patientFirstName + " " + patientLastName + dq + "); ");
    }
}
*/

arrOfPairs = [];
if (zData.docType) { arrOfPairs.push("ZPAPER__faxType__c", zData.docType);  } //ERS190810 PV190808 #51670
if (zData.providerId) {
    //arrOfPairs.push("ZPAPER__Provider__c", zData.providerId); //ERS200308 TODO custom setting
    if (zData.providerId.indexOf("003")===0) arrOfPairs.push(""+"ProviderContact__c", zData.providerId); //ERS200309 TODO package
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
arrOfPairs.push("db-comments",X(doc,"db-comments")); //ERS200226 #66686 TODO newlines escaped in packData CRN?
updateDB(doc,arrOfPairs);

track(doc, "Doc Indexed", "Document with Id: " + doc.dbID, pageCount);
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gekluc3RhbGwoKSB7IC8vRVJTMTcwNzIyIHNldCBvbiB0aGUgaW1wb3J0CiAgICAkKCJbbmFtZT0nZGItQkFURVMnXSIpLnZhbCgiIik7CiAgICBpZiAoJCgiI1hfYnV0dG9uQWN0aW9ucyIpLnZhbCgpID09PSAiIikgeyAkKCIjWF9idXR0b25BY3Rpb25zIikudmFsKCJJbmRleCxJZ25vcmUsUmVqZWN0LFN0YWNrIENvbXBsZXRlIik7IH0gLy9FUlMxOTA3MjkgIzYxMjcyIGRvIG5vdCBvdmVyaWRlCiAgICBpZiAoJCgiI1hfZm9sZGVyRm9ybXMiKS52YWwoKSA9PT0gIiIpIHsgJCgiI1hfZm9sZGVyRm9ybXMiKS52YWwoIjIwMjAwMjAxNzExMjUwOTExMTVfRGF0YTJfV2ViX0Zvcm0iKTsgfSAvL0VSUzE5MDcyOSAjNjEyNzIgZG8gbm90IG92ZXJpZGUKfSAvL0VSUzE3MDcyMiBlbmQgb2YgZnVuY3Rpb24KCmZ1bmN0aW9uIGRvVmFsaWRhdGlvbigpIHsKICAgIC8vQ1JOMTcwNzE5IERydWcgbmFtZSBpcyByZXF1aXJlZAogICAgLy9FUlMxNzA3MTkgbW9yZSBmaWVsZHMgZnJvbSBLZW4KICAgIHZhciBjYXNlSWQgPSAkKCdbbmFtZT0iWF9DYXNlX19jIl0nKS52YWwoKTsKICAgIC8vRVJTMTcwNzI3IGRlYnVnIG9ubHkgYWxlcnQoIkNhc2UgIitjYXNlSWQpOwogICAgCiAgICB2YXIgcmVxQnVmZmVyID0gIiI7CiAgICAKICAgIG49IlhfWlBBUEVSX19mYXhUeXBlX19jIjsgbD0iRG9jdW1lbnQgVHlwZSI7CiAgICBlPSQoJ1tuYW1lPSInK24rJyJdJyk7CiAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCByZWQnKTsKICAgICAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsgcmVxQnVmZmVyICs9ICIsICI7IH0KICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgIH0gZWxzZSBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICAKICAgIG49IlhfWlBBUEVSX19Qcmlvcml0eV9fYyI7IGw9IlByaW9yaXR5IjsKICAgIGU9JCgnW25hbWU9IicrbisnIl0nKTsKICAgIGlmIChlLmxlbmd0aCkgeyAvL0VSUzE5MDcyOSAjNjEyNzIKICAgICAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgICAgIGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgIGlmIChyZXFCdWZmZXIubGVuZ3RoID4gMCkgeyByZXFCdWZmZXIgKz0gIiwgIjsgfQogICAgICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgICAgICB9IGVsc2UgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwogICAgfSAvL2Vsc2UgYWxlcnQoIk5vdCB1c2luZyBQcmlvcml0eSIpOwogICAgCiAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsKICAgICAgICBhbGVydCgiRVJST1I6IFRoZSBmb2xsb3dpbmcgZmllbGRzIGFyZSByZXF1aXJlZDogIiArIHJlcUJ1ZmZlcik7CiAgICAgICAgcmV0dXJuIGZhbHNlOyAgIC8vQ1JOMTcwNzE5IG9uZSBvciBtb3JlIGZpZWxkIGlzIG1pc3NpbmcsIGRvbid0IHNlbmQgdG8gdGhlIHJ1bGVzIGVuZ2luZQogICAgfQogICAgcmV0dXJuIHRydWU7ICAgICAgICAvL0NSTjE3MDcxOSBBbGwgcmVxdWlyZWQgZmllbGRzIGhhdmUgYmVlbiBzdXBwbGllZCwgbGV0IHRoZSBydWxlcyBlbmdpbmUgYmUgbm90aWZpZWQKfQoKcmV0dXJuIGRvVmFsaWRhdGlvbigpOw==
//--- RULE VALIDATION CODE - END ---

</script>
