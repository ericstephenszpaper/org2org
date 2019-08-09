<!--
// Name: Index Page
// Committer: eric.stephens@zpaper.com
// Update: ERS190803 TODO detect Case Lookup
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-08-04 00:03:36","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAovL0VSUzE5MDczMCAjNjEyNzIgdXBkYXRlZCBidXR0b24gdmFsaWRhdGlvbiBpbiB0aGUgQWN0aW9ucyogRGV0YWlscyBhcmVhCgp2YXIgc3RhY2tJZCA9IFgoZG9jLCAiWF9zdGFjayIpOwppZiAoIXN0YWNrSWQpIHN0YWNrSWQ9ekRhdGEuZ2V0U3RhY2tJZChkb2MpOyAvL0VSUzE5MDYyNCBIQUNLPwp2YXIgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CnZhciBjb21wYW55Q29kZSA9IGRvYy5kZWxpdmVyZWRUbzsKekRhdGEuc3RhZ2U9IkluZGV4ZWQiOyAvL0VSUzE5MDYyMAoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwovL0VSUzE3MDkwOSB6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24oZG9jLCJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CiAgICBzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwogICAgekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYyxzdGFja0ZvbGRlciwgY29tcGFueUNvZGUsIHN0YWNrSWQpOwp9Cgp6RGF0YS5nZXREYXRhRW50cnlGaWVsZHMoZG9jKTsKLy8gRG9lcyB0aGUgdXNlciB3YW50IHRvIGF0dGFjaCBpbmRleGVkIHBhZ2VzIHRvIENhc2U/Ci8vdmFyIGNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsKLy92YXIgY29udGFjdElkID0gWChkb2MsICJYX1pQQVBFUl9fUGF0aWVudF9fYyIpOwovL3ZhciBwYXRpZW50SWQ9Y29udGFjdElkOyAvL1RPRE8KLy92YXIgcHJvdmlkZXJJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIik7Ci8vdmFyIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKLy92YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKLy92YXIgcGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwoKLy8gR2V0IHRoZSBkb2N1bWVudCB0eXBlICh3aWxsIGJlIHVzZWQgdG8gcm91dGUgdG8gbmV4dCBmb2xkZXIpCi8vdmFyIGRvY1R5cGUgPSBYKGRvYywgIlhfRG9jdW1lbnRfVHlwZV9fYyIpOwp2YXIgbmV4dEZvbGRlciA9ICIyMDUwMFRyaWFnZS1TMiI7ICAgICAgICAgICAgICAvLyBPdGhlciBmb2xkZXIgaXMgdGhlIGRlZmF1bHQKdmFyIHByZXZJbmRleFBhZ2VzID0gWChkb2MsICJYX2luZGV4ZWRQYWdlcyIpOwp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwppZiAocHJldkluZGV4UGFnZXMgJiYgcHJldkluZGV4UGFnZXMubGVuZ3RoID4gMCAmJiBjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewogICAgcHJldkluZGV4UGFnZXMgKz0gIiwiOwp9CmN1ckluZGV4UGFnZXMgPSBwcmV2SW5kZXhQYWdlcyArIGN1ckluZGV4UGFnZXM7CnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9pbmRleGVkUGFnZXMiLCBjdXJJbmRleFBhZ2VzKTsKLy9tb3ZlIHRvIGFmdGVyIHVwZGF0ZXMgYXJyT2ZQYWlycz16RGF0YS5hZGRTdGFnZShkb2MsYXJyT2ZQYWlycywiSW5kZXhlZCIpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgc2ZTdGFja0lkPXpEYXRhLmdldFN0YWNrSWQoZG9jKTsKYWxlcnQoIkBAQEBAQCBDdXJyZW50bHkgYXR0YWNoZWQgdG8gWlBBUEVSX196U3RhY2tfX2Mgd2l0aCBJRDogIiArIHNmU3RhY2tJZCk7CgovKiBTUExJVCBPRkYgTkVXIFNOSVBQRVQgSEVSRSAqLwp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKdmFyIG5ld0lkPXNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJpbmRleCIsIHBhZ2VSYW5nZSk7CmFsZXJ0KCJFUlMxOTA2MjQgbmV3SWQ9IituZXdJZCk7Ci8vKgovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCi8vKgoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBhIG5ldyBDYXNlIHJlY29yZCwgaWYgaXQgd2Fzbid0IHBhc3NlZCBpbiAqLwovL3ZhciBwcmlvcml0eT1YKGRvYywiWF9aUEFQRVJfX1ByaW9yaXR5X19jIik7IC8vRVJTMTcwNjI2CnZhciBsYWJlbDA9IiI7CnZhciB0cmlhZ2VUeXBlPWRvYy5kb2NUeXBlOwoKdmFyIGF0dGFjaFBhdGggPSBYKGRvYywiWF9hdHRhY2hlZFRvIik7CnZhciBhdHRhY2hMYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYywiSW5kZXhlZCIpOyAvLyJJbmRleGVkICIgKyBmb3JtYXROb3c7CmFsZXJ0KCJFUlMxOTA2MjQgYXR0YWNoTGFiZWw9IithdHRhY2hMYWJlbCk7CgovL0VSUzE5MDYyMCB1c2UgYSBzZXR0aW5nIHRvIGRldGVybWluZSB3aGljaCBsb29rdXBzIHdlIGF0dGFjaCB0bwovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENhc2UgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5CmlmIChkb2Mud2RkYXRhLmluZGV4T2YoIlhfWlBBUEVSX19DYXNlX19jIik+LTEpIHsgLy9FUlMxOTA4MDMgVE9ETyBkZXRlY3QgQ2FzZSBsb29rdXAKICAgIGFsZXJ0KCJFUlMxOTA2MjQgbmVlZCBDYXNlIik7CiAgICBpZiAoekRhdGEuY2FzZUlkKSB7CiAgICAgICAgYWxlcnQoIkVSUzE5MDYyNC42NyIpOwogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIkNhc2UiKT4tMSkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgQ2FzZTogIiArIHpEYXRhLmNhc2VJZCk7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCB6RGF0YS5jYXNlSWQpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IENhc2UiKTsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgekRhdGEuY2FzZUlkPXpEYXRhLmNsaWVudENhc2UoZG9jLGFyck9mUGFpcnMsIkRhdGFFbnRyeSIpOwogICAgICAgIGFsZXJ0KCJDcmVhdGVkIENhc2Ugd2l0aCBJRDogIiArIHpEYXRhLmNhc2VJZCk7CiAgICAgICAgaWYgKHpEYXRhLmNhc2VJZCA9PSAibnVsbCIgfHwgekRhdGEuY2FzZUlkID09ICJORVciKSB6RGF0YS5jYXNlSWQ9bnVsbDsKICAgIH0KICAgIGFsZXJ0KCJFUlMxOTA2MjQuNzggaGF2ZSBhIGNhc2U/Iik7CiAgICBpZiAoekRhdGEuY2FzZUlkICYmIGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5jYXNlSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmNhc2VJZDsKfQoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBMZWFkIHJlY29yZCBpZiByZXF1aXJlZCAqLyAvL0VSUzE5MDYxOQovLyBUT0RPIEVSUzE5MDYyNCBmbGlwIHRoZSBpZiBsb2dpYwppZiAoZG9jLndkZGF0YS5pbmRleE9mKCJYX1pQQVBFUl9fUmVmZXJyYWxMZWFkX19jIik+LTEpIHsgLy9FUlMxOTA4MDMgVE9ETyByZXRoaW5rCiAgICBpZiAoIWxlYWRJZCB8fCAwID09PSBsZWFkSWQubGVuZ3RoKSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IExlYWQiKTsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgbGVhZElkPXpEYXRhLmNsaWVudExlYWQoZG9jLGFyck9mUGFpcnMpOwogICAgICAgIGFsZXJ0KCJDcmVhdGVkIExlYWQgd2l0aCBJRDogIiArIGxlYWRJZCk7CiAgICAgICAgaWYgKGxlYWRJZCA9PSAibnVsbCIgfHwgbGVhZElkID09ICJORVciKSBsZWFkSWQ9bnVsbDsKICAgIH0gZWxzZSB7CiAgICAgICAgaWYgKHpEYXRhLmF0dGFjaFJlY29yZHMuaW5kZXhPZigiTGVhZCIpPi0xKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBMZWFkOiAiICsgbGVhZElkKTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIGxlYWRJZCk7CiAgICAgICAgfQogICAgfQogICAgaWYgKGxlYWRJZCAmJiBhdHRhY2hQYXRoLmluZGV4T2YobGVhZElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitsZWFkSWQ7Cn0KCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gTGVhZCByZWNvcmQgaWYgcmVxdWlyZWQgKi8gLy9FUlMxOTA2MTkKekRhdGEucGF0aWVudFR5cGU9WEN1c3RvbVNldHRpbmcoZG9jLCJQYXRpZW50UmVjb3JkX19jIik7IC8vK1hDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50UmVjb3JkVHlwZV9fYyIpOyAKaWYgKCF6RGF0YS5wYXRpZW50VHlwZSkgekRhdGEucGF0aWVudFR5cGU9IkNvbnRhY3QiOyAvL0VSUzE5MDgwMiAjNjEyNzIKaWYgKFgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudCIpIHx8IHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYykgeyAvL0VSUzE5MDgwMyBUT0RPIHJldGhpbmsgdXNlIFgKICAgIHZhciBkcSA9IHpEYXRhLmRxID0gU3RyaW5nLmZyb21DaGFyQ29kZSgzNCk7IC8vRVJTMTkwODAyIFRPRE8gZGVmaW5lIGJldHRlciBpbiB6RGF0YQogICAgaWYgKCF6RGF0YS5wYXRpZW50SWQpIHsKICAgICAgICBhbGVydCgiQEBAQCBjcmVhdGluZyBuZXcgIit6RGF0YS5wYXRpZW50VHlwZSsiIFBhdGllbnQiKTsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgLy9FUlMxOTA3MzAgIzYxMjcyIG1pc3NpbmcgdGhlIGJhc2ljcwogICAgICAgIHZhciBwPSIiOyAKICAgICAgICBpZiAoIkFjY291bnQiPT09ekRhdGEucGF0aWVudFR5cGUpIHsgLy9FUlMxOTA4MDMKICAgICAgICAgICAgcD0iUGVyc29uIjsKICAgICAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIk5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKyIgIit6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOyAKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaChwKyJCaXJ0aGRhdGUiLCB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOyAvL1hfWlBBUEVSX19GaXJzdE5hbWVfX2MgLy9FUlMxOTA4MDMgVE9ETyBnZXQgY2xlYW5lciAjNjEyNzIKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiQmlydGhkYXRlIiwgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyk7CiAgICAgICAgfQogICAgICAgIHpEYXRhLnBhdGllbnRJZD16RGF0YS5jbGllbnRQYXRpZW50KGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBQYXRpZW50IHdpdGggSUQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgIGlmICh6RGF0YS5wYXRpZW50SWQgPT0gIm51bGwiIHx8IHpEYXRhLnBhdGllbnRJZCA9PSAiTkVXIikgekRhdGEucGF0aWVudElkPW51bGw7CiAgICAgICAgZWxzZSB7IC8vRVJTMTkwNzMwICM2MTI3MiBsZXZlcmFnZSB0aGUgbmV3IHJlY29yZAogICAgICAgICAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwogICAgICAgICAgICBhbGVydCgiQEBAQEBAQCBORVcgQ09OVEFDVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyB6RGF0YS5jb250YWN0SWQpOyAvL0VSUzE5MDgwMiB6RGF0YS5jb250YWN0SWQKICAgICAgICAgICAgLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19GaXJzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fTGFzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQmlydGhkYXRlX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKICAgICAgICAgICAgLy9FUlMxOTA4MDMgVE9ETyBoYW5kbGUgWlBBUEVSX18gcmVsYXRpb25zaGlwcwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLnBhdGllbnRJZCArIGRxICsgIik7ICIpOwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICIgIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIGRxICsgIik7ICIpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAgaWYgKHpEYXRhLmF0dGFjaFJlY29yZHMuaW5kZXhPZigiUGF0aWVudCIpPi0xKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBQYXRpZW50OiAiICsgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgIGlmICgxPT09MSB8fCB6RGF0YS5wYXRpZW50VHlwZSAhPSAiQWNjb3VudCIpIHsgLy9FUlMxOTA3MzAgbG9va3VwIHRoZSBkYXRhIFRPRE8gcGVyc29uIGFjY291bnQ/CiAgICAgICAgICAgICAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsIHpEYXRhLnBhdGllbnRUeXBlLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgICAgICAgICAgICAgIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgICAgIH0gZWxzZSBpZiAoekRhdGEucGF0aWVudFR5cGUgPT0gIkFjY291bnQiKSB7IC8vRVJTMTkwNzMwIGxvb2t1cCB0aGUgZGF0YSBUT0RPIHBlcnNvbiBhY2NvdW50PwogICAgICAgICAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgIk5hbWUiLCBudWxsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICAgICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiTmFtZSIsIGNvbnRhY3RGbGRzKS5zcGxpdCgiICIpWzBdOyAvL0VSUzE5MDgwMyBUT0RPIGZpbmQgYSBiZXR0ZXIgd2F5CiAgICAgICAgICAgICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIk5hbWUiLCBjb250YWN0Rmxkcykuc3BsaXQoIiAiKVsxXTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KICAgIGlmICh6RGF0YS5wYXRpZW50SWQgJiYgYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwp9CgovL2NsaWVudFBhdGllbnQgaGFzIHRvIGRvIHRoaXMKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBDb250YWN0IHJlY29yZCBpZiByZXF1aXJlZCAKaWYgKGRvYy53ZGRhdGEuaW5kZXhPZigiWF9aUEFQRVJfX1BhdGllbnRfX2MiKT4tMSkgeyAgLy9UT0RPIGRlYWwgd2l0aCBwZXJzb25BY2NvdW50cwogICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGEgQ29udGFjdD8gY29udGFjdElkID0gIiArIGNvbnRhY3RJZCk7CiAgICBpZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CiAgICAgICAgYXR0YWNoKGRvYywgIkluZGV4ZWQtIiArIGRvY1R5cGUgKyAiLSIgKyBzdGFja0lkLCBjb250YWN0SWQpOwogICAgICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7CiAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCBjb250YWN0SWQpOwogICAgICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgfQogICAgZWxzZSBpZiAocGF0aWVudEZpcnN0TmFtZSAmJiBwYXRpZW50Rmlyc3ROYW1lLmxlbmd0aCA+IDAgCiAgICAgICAgJiYgcGF0aWVudExhc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZS5sZW5ndGggPiAwIAogICAgICAgICYmIHBhdGllbnRET0IgJiYgcGF0aWVudERPQi5sZW5ndGggPiAwKSB7CiAgICAgICAgdmFyIGN0Y0Fyck9mUGFpcnMgPSBbXTsKICAgICAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHBhdGllbnRGaXJzdE5hbWUpOwogICAgICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiTGFzdE5hbWUiLCBwYXRpZW50TGFzdE5hbWUpOwogICAgICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiQmlydGhEYXRlIiwgcGF0aWVudERPQik7CiAgICAgICAgY29udGFjdElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCAiSW5kZXhlZC0iICsgZG9jVHlwZSArICItIiArIHN0YWNrSWQsIGN0Y0Fyck9mUGFpcnMpOwogICAgICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7CiAgICAgICAgYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgY29udGFjdElkKTsKICAgICAgICAvLyBjbGVhciBvdXQgdGhlICJOZXcgUGF0aWVudCIgZmllbGRzCiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9GaXJzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9MYXN0X05hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwogICAgICAgIC8vIHNldCB0aGUgUGF0aWVudCBsb29rdXAgZmllbGRzCiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgY29udGFjdElkICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lICsgZHEgKyAiKTsgIik7CiAgICB9Cn0KKi8KCmFyck9mUGFpcnMgPSBbXTsKaWYgKHpEYXRhLnByb3ZpZGVySWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcm92aWRlcl9fYyIsIHpEYXRhLnByb3ZpZGVySWQpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wcm92aWRlcklkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5wcm92aWRlcklkOwp9CmlmICh6RGF0YS5wYXRpZW50SWQpIHsKICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDAzIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudF9fYyIsIHpEYXRhLnBhdGllbnRJZCk7CiAgICBpZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwMSIpPT09MCkgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIiwgekRhdGEucGF0aWVudElkKTsKICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDBRIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUmVmZXJyYWxMZWFkX19jIiwgekRhdGEucGF0aWVudElkKTsgLy9FUlMxOTA4MDIgTGVhZAogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnBhdGllbnRJZDsKfQovL2lmIChwYXRpZW50QWNjb3VudElkICYmIHBhdGllbnRBY2NvdW50SWQubGVuZ3RoID4gMCkgewovLyAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIiwgcGF0aWVudEFjY291bnRJZCk7Ci8vICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHBhdGllbnRBY2NvdW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3BhdGllbnRBY2NvdW50SWQ7Ci8vfQppZiAoekRhdGEuY2FzZUlkKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsIHpEYXRhLmNhc2VJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLmNhc2VJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEuY2FzZUlkOwp9CmlmICh6RGF0YS5sZWFkSWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19SZWZlcnJhbExlYWRfX2MiLCB6RGF0YS5sZWFkSWQpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5sZWFkSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmxlYWRJZDsKfQppZiAoekRhdGEucmVmZXJyYWxJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1JlZmVycmFsX19jIiwgekRhdGEucmVmZXJyYWxJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnJlZmVycmFsSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnJlZmVycmFsSWQ7Cn0KCnVwZGF0ZVNGUmVjb3JkKGRvYywgekRhdGEuenBzLCBzZlN0YWNrSWQsIGFyck9mUGFpcnMpOwphdHRhY2goZG9jLGF0dGFjaExhYmVsLCBzZlN0YWNrSWQpOwphbGVydCgiQEBAQCB1cGRhdGVkIGFuZCBhdHRhY2hlZCB0byB6U3RhY2sgUmVjb3JkLCBpZCA9ICIgKyBzZlN0YWNrSWQpOwoKLyogTW92ZSB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gaXRzIHByb2Nlc3NpbmcgZm9sZGVyICovCmFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSBpbmRleGVkIHBhZ2VzIGRvY3VtZW50IGludG8gbmV4dCBwcm9jZXNzaW5nIGZvbGRlcjogIiArIG5leHRGb2xkZXIpOwovL0VSUzE5MDczMSAjNjEyNzIgbW92ZURvY3VtZW50KGRvYywiIixuZXh0Rm9sZGVyKTsKLy9FUlMxOTA3MzEgIzYxMjcyIHJlbG9hZEJ5QkFURVMoZG9jLCBuZXh0Rm9sZGVyKTsgLy9FUlMxNzA0MTMgIzM1MjkxCi8qIFBsYWNlIHRoZSBzcGxpdCBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGluZGV4ZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwptb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycz16RGF0YS5hZGRTdGFnZShkb2MsYXJyT2ZQYWlycyx6RGF0YS5zdGFnZSk7CnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50ICsiIHdlcmUgIisgekRhdGEuc3RhZ2UpOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiZGItcGFnZXMiLHBhZ2VDb3VudCk7Ci8vRVJTMTkwNjIwIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBwYXRpZW50Rmlyc3ROYW1lICsgcGF0aWVudExhc3ROYW1lICsgIiAtICIgKyBjb21wYW55Q29kZSArICIgLSAiICsgc3RhY2tJZCk7CmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixhdHRhY2hQYXRoKTsgLy9FUlMxNzA2MjgKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdHJhY2soZG9jLCAiRG9jIEluZGV4ZWQiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5yZWFkeX4pO3VwZGF0ZURFU3RhdHVzKH5pbmRleGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7CgovKiBlbmQgb2YgcnVsZSAqLw=="},"ordinal":10}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Index Rule Fired @@@#"); //ERS190803 #52661 from OccFit
//ERS190730 #61272 updated button validation in the Actions* Details area

var stackId = X(doc, "X_stack");
if (!stackId) stackId=zData.getStackId(doc); //ERS190624 HACK?
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

/* SPLIT OFF NEW SNIPPET HERE */
var pageRange = X(doc,"X_idxPages");
var newId=splitDocumentForIndex(doc, "index", pageRange);
alert("ERS190624 newId="+newId);
//*
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
//*

/* Attach the split document to a new Case record, if it wasn't passed in */
//var priority=X(doc,"X_ZPAPER__Priority__c"); //ERS170626
var label0="";
var triageType=doc.docType;

var attachPath = X(doc,"X_attachedTo");
var attachLabel=zData.clientFile(doc,"Indexed"); //"Indexed " + formatNow;
alert("ERS190624 attachLabel="+attachLabel);

//ERS190620 use a setting to determine which lookups we attach to
/* Attach the split document to Case record if required */ //ERS190619
if (doc.wddata.indexOf("X_ZPAPER__Case__c")>-1) { //ERS190803 TODO detect Case lookup
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
        zData.caseId=zData.clientCase(doc,arrOfPairs,"DataEntry");
        alert("Created Case with ID: " + zData.caseId);
        if (zData.caseId == "null" || zData.caseId == "NEW") zData.caseId=null;
    }
    alert("ERS190624.78 have a case?");
    if (zData.caseId && attachPath.indexOf(zData.caseId)==-1) attachPath+=","+zData.caseId;
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

/* Attach the split document to Lead record if required */ //ERS190619
zData.patientType=XCustomSetting(doc,"PatientRecord__c"); //+XCustomSetting(doc,"ZPAPER__PatientRecordType__c"); 
if (!zData.patientType) zData.patientType="Contact"; //ERS190802 #61272
if (X(doc,"X_ZPAPER__Patient") || zData.X_ZPAPER__LastName__c) { //ERS190803 TODO rethink use X
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
            alert("@@@@@@@ NEW CONTACT CREATED WITH ID: " + zData.contactId); //ERS190802 zData.contactId
            // clear out the "New Patient" fields
            addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__FirstName__c" + dq + ").val(" + dq + "" + dq + "); ");
            addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__LastName__c" + dq + ").val(" + dq + "" + dq + "); ");
            addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Birthdate__c" + dq + ").val(" + dq + "" + dq + "); ");
            addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Birthdate__c_readable" + dq + ").val(" + dq + "NONE" + dq + "); ");
            // set the Patient lookup fields
            //ERS190803 TODO handle ZPAPER__ relationships
            //addPostExecutionScript(doc, " $(" + dq + "#Patient__c" + dq + ").val(" + dq + zData.patientId + dq + "); ");
            //addPostExecutionScript(doc, " $(" + dq + "#Patient__c_Name" + dq + ").val(" + dq + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c + dq + "); ");
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
if (zData.providerId) {
    arrOfPairs.push("ZPAPER__Provider__c", zData.providerId);
    if (attachPath.indexOf(zData.providerId)==-1) attachPath+=","+zData.providerId;
}
if (zData.patientId) {
    if (zData.patientId.indexOf("003")===0) arrOfPairs.push("ZPAPER__Patient__c", zData.patientId);
    if (zData.patientId.indexOf("001")===0) arrOfPairs.push("ZPAPER__PatientAccount__c", zData.patientId);
    if (zData.patientId.indexOf("00Q")===0) arrOfPairs.push("ZPAPER__ReferralLead__c", zData.patientId); //ERS190802 Lead
    if (attachPath.indexOf(zData.patientId)==-1) attachPath+=","+zData.patientId;
}
//if (patientAccountId && patientAccountId.length > 0) {
//  arrOfPairs.push("ZPAPER__PatientAccount__c", patientAccountId);
//  if (attachPath.indexOf(patientAccountId)==-1) attachPath+=","+patientAccountId;
//}
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

updateSFRecord(doc, zData.zps, sfStackId, arrOfPairs);
attach(doc,attachLabel, sfStackId);
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId);

/* Move the split document to its processing folder */
alert("@@@@@@ Moving the indexed pages document into next processing folder: " + nextFolder);
//ERS190731 #61272 moveDocument(doc,"",nextFolder);
//ERS190731 #61272 reloadByBATES(doc, nextFolder); //ERS170413 #35291
/* Place the split document into the stack folder */
alert("@@@@@@ Moving the indexed pages document into the final stack folder: " + stackFolder);
moveDocument(doc,"",stackFolder);
unlockDocument(doc);

arrOfPairs = [];
arrOfPairs=zData.addStage(doc,arrOfPairs,zData.stage);
var pageCount = zData.countPages(doc,pageRange);
alert("@@@@ pageCount = " + pageCount +" were "+ zData.stage);
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
//ERS190620 arrOfPairs.push("db-label", patientFirstName + patientLastName + " - " + companyCode + " - " + stackId);
arrOfPairs.push("X_attachedTo",attachPath); //ERS170628
updateDB(doc,arrOfPairs);

track(doc, "Doc Indexed", "Document with Id: " + doc.dbID, pageCount);
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gekluc3RhbGwoKSB7IC8vRVJTMTcwNzIyIHNldCBvbiB0aGUgaW1wb3J0CiAgICAkKCJbbmFtZT0nZGItQkFURVMnXSIpLnZhbCgiIik7CiAgICBpZiAoJCgiI1hfYnV0dG9uQWN0aW9ucyIpLnZhbCgpID09PSAiIikgeyAkKCIjWF9idXR0b25BY3Rpb25zIikudmFsKCJJbmRleCxJZ25vcmUsUmVqZWN0LFN0YWNrIENvbXBsZXRlIik7IH0gLy9FUlMxOTA3MjkgIzYxMjcyIGRvIG5vdCBvdmVyaWRlCiAgICBpZiAoJCgiI1hfZm9sZGVyRm9ybXMiKS52YWwoKSA9PT0gIiIpIHsgJCgiI1hfZm9sZGVyRm9ybXMiKS52YWwoIjIwMjAwMjAxNzExMjUwOTExMTVfRGF0YTJfV2ViX0Zvcm0iKTsgfSAvL0VSUzE5MDcyOSAjNjEyNzIgZG8gbm90IG92ZXJpZGUKfSAvL0VSUzE3MDcyMiBlbmQgb2YgZnVuY3Rpb24KCmZ1bmN0aW9uIGRvVmFsaWRhdGlvbigpIHsKICAgIC8vQ1JOMTcwNzE5IERydWcgbmFtZSBpcyByZXF1aXJlZAogICAgLy9FUlMxNzA3MTkgbW9yZSBmaWVsZHMgZnJvbSBLZW4KICAgIHZhciBjYXNlSWQgPSAkKCdbbmFtZT0iWF9DYXNlX19jIl0nKS52YWwoKTsKICAgIC8vRVJTMTcwNzI3IGRlYnVnIG9ubHkgYWxlcnQoIkNhc2UgIitjYXNlSWQpOwogICAgCiAgICB2YXIgcmVxQnVmZmVyID0gIiI7CiAgICAKICAgIG49IlhfWlBBUEVSX19mYXhUeXBlX19jIjsgbD0iRG9jdW1lbnQgVHlwZSI7CiAgICBlPSQoJ1tuYW1lPSInK24rJyJdJyk7CiAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCByZWQnKTsKICAgICAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsgcmVxQnVmZmVyICs9ICIsICI7IH0KICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgIH0gZWxzZSBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICAKICAgIG49IlhfWlBBUEVSX19Qcmlvcml0eV9fYyI7IGw9IlByaW9yaXR5IjsKICAgIGU9JCgnW25hbWU9IicrbisnIl0nKTsKICAgIGlmIChlLmxlbmd0aCkgeyAvL0VSUzE5MDcyOSAjNjEyNzIKICAgICAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgICAgIGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgIGlmIChyZXFCdWZmZXIubGVuZ3RoID4gMCkgeyByZXFCdWZmZXIgKz0gIiwgIjsgfQogICAgICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgICAgICB9IGVsc2UgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwogICAgfSAvL2Vsc2UgYWxlcnQoIk5vdCB1c2luZyBQcmlvcml0eSIpOwogICAgCiAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsKICAgICAgICBhbGVydCgiRVJST1I6IFRoZSBmb2xsb3dpbmcgZmllbGRzIGFyZSByZXF1aXJlZDogIiArIHJlcUJ1ZmZlcik7CiAgICAgICAgcmV0dXJuIGZhbHNlOyAgIC8vQ1JOMTcwNzE5IG9uZSBvciBtb3JlIGZpZWxkIGlzIG1pc3NpbmcsIGRvbid0IHNlbmQgdG8gdGhlIHJ1bGVzIGVuZ2luZQogICAgfQogICAgcmV0dXJuIHRydWU7ICAgICAgICAvL0NSTjE3MDcxOSBBbGwgcmVxdWlyZWQgZmllbGRzIGhhdmUgYmVlbiBzdXBwbGllZCwgbGV0IHRoZSBydWxlcyBlbmdpbmUgYmUgbm90aWZpZWQKfQoKcmV0dXJuIGRvVmFsaWRhdGlvbigpOw==
//--- RULE VALIDATION CODE - END ---

</script>
