<!--
// Name: Index Page
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV191019 updated phone on contact; PV191019 updated program name; PV191019 updated Status; PV191019
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-19 16:22:07","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7Ci8vRVJTMTkwNzMwICM2MTI3MiB1cGRhdGVkIGJ1dHRvbiB2YWxpZGF0aW9uIGluIHRoZSBBY3Rpb25zKiBEZXRhaWxzIGFyZWEKdmFyIHpwID0gIlpQQVBFUl9fIjsKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsKaWYgKCFzdGFja0lkKSBzdGFja0lkPXpEYXRhLmdldFN0YWNrSWQoZG9jKTsgLy9FUlMxOTA2MjQgSEFDSz8KdmFyIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwp2YXIgY29tcGFueUNvZGUgPSBkb2MuZGVsaXZlcmVkVG87CnpEYXRhLnN0YWdlPSJJbmRleGVkIjsgLy9FUlMxOTA2MjAKCi8qIENsZWFyIHRoZSB0cmlnZ2VyIHRoYXQgaW52b2tlZCB0aGlzIHJ1bGUgKi8KLy9FUlMxNzA5MDkgekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uKGRvYywiWF9idXR0b25BY3Rpb24iKTsKdmFyIGluZGV4SW5pdGlhbGl6ZWQgPSBYKGRvYywiWF9pbmRleEluaXRpYWxpemVkIik7CmlmICghaW5kZXhJbml0aWFsaXplZCB8fCAwID09PSBpbmRleEluaXRpYWxpemVkLmxlbmd0aCkgewogICAgc3RhY2tJZCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgICBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKICAgIHpEYXRhLmluaXRpYWxpemVTdGFjayhkb2Msc3RhY2tGb2xkZXIsIGNvbXBhbnlDb2RlLCBzdGFja0lkKTsKfQoKekRhdGEuZ2V0RGF0YUVudHJ5RmllbGRzKGRvYyk7Ci8vIERvZXMgdGhlIHVzZXIgd2FudCB0byBhdHRhY2ggaW5kZXhlZCBwYWdlcyB0byBDYXNlPwovL3ZhciBjYXNlSWQgPSBYKGRvYywgIlhfWlBBUEVSX19DYXNlX19jIik7Ci8vdmFyIGNvbnRhY3RJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRfX2MiKTsKLy92YXIgcGF0aWVudElkPWNvbnRhY3RJZDsgLy9UT0RPCi8vdmFyIHByb3ZpZGVySWQgPSBYKGRvYywgIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOwovL3ZhciBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7Ci8vdmFyIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0xhc3ROYW1lX19jIik7Ci8vdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKCi8vIEdldCB0aGUgZG9jdW1lbnQgdHlwZSAod2lsbCBiZSB1c2VkIHRvIHJvdXRlIHRvIG5leHQgZm9sZGVyKQovL3ZhciBkb2NUeXBlID0gWChkb2MsICJYX0RvY3VtZW50X1R5cGVfX2MiKTsKdmFyIG5leHRGb2xkZXIgPSAiMjA1MDBUcmlhZ2UtUzIiOyAgICAgICAgICAgICAgLy8gT3RoZXIgZm9sZGVyIGlzIHRoZSBkZWZhdWx0CnZhciBwcmV2SW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pbmRleGVkUGFnZXMiKTsKdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKaWYgKHByZXZJbmRleFBhZ2VzICYmIHByZXZJbmRleFBhZ2VzLmxlbmd0aCA+IDAgJiYgY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICAgIHByZXZJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzID0gcHJldkluZGV4UGFnZXMgKyBjdXJJbmRleFBhZ2VzOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhlZFBhZ2VzIiwgY3VySW5kZXhQYWdlcyk7Ci8vbW92ZSB0byBhZnRlciB1cGRhdGVzIGFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsIkluZGV4ZWQiKTsKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdmFyIHNmU3RhY2tJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7CgphbGVydCgiQEBAQEBAIEN1cnJlbnRseSBhdHRhY2hlZCB0byBaUEFQRVJfX3pTdGFja19fYyB3aXRoIElEOiAiICsgc2ZTdGFja0lkKTsKekRhdGEuelBhcmVudElkPWRvYy5kYklEOyAvL0VSUzE5MDgxNCB0byBvdmVyc2lkZSB0aGUgc2F2ZS5qc3Agd29ya2Zsb3dzCgovKiBTUExJVCBPRkYgTkVXIFNOSVBQRVQgSEVSRSAqLwp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKdmFyIG5ld0lkPXNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJpbmRleCIsIHBhZ2VSYW5nZSk7CmFsZXJ0KCJFUlMxOTA2MjQgbmV3SWQ9IituZXdJZCk7Ci8vKgovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCi8vKgoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBhIG5ldyBDYXNlIHJlY29yZCwgaWYgaXQgd2Fzbid0IHBhc3NlZCBpbiAqLwovL3ZhciBwcmlvcml0eT1YKGRvYywiWF9aUEFQRVJfX1ByaW9yaXR5X19jIik7IC8vRVJTMTcwNjI2CnZhciBsYWJlbDA9IiI7CnZhciB0cmlhZ2VUeXBlPWRvYy5kb2NUeXBlOwoKdmFyIGF0dGFjaFBhdGggPSBYKGRvYywiWF9hdHRhY2hlZFRvIik7CnZhciBhdHRhY2hMYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYywiSW5kZXhlZCIpOyAvLyJJbmRleGVkICIgKyBmb3JtYXROb3c7CmFsZXJ0KCJFUlMxOTA2MjQgYXR0YWNoTGFiZWw9IithdHRhY2hMYWJlbCk7CgovL0VSUzE5MDYyMCB1c2UgYSBzZXR0aW5nIHRvIGRldGVybWluZSB3aGljaCBsb29rdXBzIHdlIGF0dGFjaCB0bwovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENhc2UgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5CmlmIChkb2Mud2RkYXRhLmluZGV4T2YoIlhfWlBBUEVSX19DYXNlX19jIik+LTEpIHsKICAgIGFsZXJ0KCJFUlMxOTA2MjQgbmVlZCBDYXNlIik7CiAgICBpZiAoekRhdGEuY2FzZUlkKSB7CiAgICAgICAgYWxlcnQoIkVSUzE5MDYyNC42NyIpOwogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIkNhc2UiKT4tMSkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgQ2FzZTogIiArIHpEYXRhLmNhc2VJZCk7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCB6RGF0YS5jYXNlSWQpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IENhc2UiKTsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgekRhdGEuY2FzZUlkPXpEYXRhLmNsaWVudENhc2UoZG9jLGFyck9mUGFpcnMpOwogICAgICAgIGFsZXJ0KCJDcmVhdGVkIENhc2Ugd2l0aCBJRDogIiArIHpEYXRhLmNhc2VJZCk7CiAgICAgICAgaWYgKHpEYXRhLmNhc2VJZCA9PSAibnVsbCIgfHwgekRhdGEuY2FzZUlkID09ICJORVciKSB6RGF0YS5jYXNlSWQ9bnVsbDsKICAgIH0KICAgIGFsZXJ0KCJFUlMxOTA2MjQuNzggaGF2ZSBhIGNhc2U/Iik7CiAgICBpZiAoekRhdGEuY2FzZUlkICYmIGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5jYXNlSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmNhc2VJZDsKfQoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBMZWFkIHJlY29yZCBpZiByZXF1aXJlZCAqLyAvL0VSUzE5MDYxOQovLyBUT0RPIEVSUzE5MDYyNCBmbGlwIHRoZSBpZiBsb2dpYwppZiAoZG9jLndkZGF0YS5pbmRleE9mKCJYX1pQQVBFUl9fUmVmZXJyYWxMZWFkX19jIik+LTEpIHsgLy9FUlMxOTA4MDMgVE9ETyByZXRoaW5rCiAgICBpZiAoIWxlYWRJZCB8fCAwID09PSBsZWFkSWQubGVuZ3RoKSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IExlYWQiKTsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgbGVhZElkPXpEYXRhLmNsaWVudExlYWQoZG9jLGFyck9mUGFpcnMpOwogICAgICAgIGFsZXJ0KCJDcmVhdGVkIExlYWQgd2l0aCBJRDogIiArIGxlYWRJZCk7CiAgICAgICAgaWYgKGxlYWRJZCA9PSAibnVsbCIgfHwgbGVhZElkID09ICJORVciKSBsZWFkSWQ9bnVsbDsKICAgIH0gZWxzZSB7CiAgICAgICAgaWYgKHpEYXRhLmF0dGFjaFJlY29yZHMuaW5kZXhPZigiTGVhZCIpPi0xKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBMZWFkOiAiICsgbGVhZElkKTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIGxlYWRJZCk7CiAgICAgICAgfQogICAgfQogICAgaWYgKGxlYWRJZCAmJiBhdHRhY2hQYXRoLmluZGV4T2YobGVhZElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitsZWFkSWQ7Cn0KCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gTGVhZCByZWNvcmQgaWYgcmVxdWlyZWQgKi8gLy9FUlMxOTA2MTkKekRhdGEucGF0aWVudFR5cGU9WEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX1BhdGllbnRSZWNvcmRfX2MiKTsgLy9FUlMxOTA4MDYgWlBBUEVSX18gbm93IGluIE1QCmFsZXJ0KCJAQEBAIHpEYXRhLnBhdGllbnRUeXBlICoqKioqICIrekRhdGEucGF0aWVudFR5cGUrIiBQYXRpZW50Iik7CmlmICghekRhdGEucGF0aWVudFR5cGUpIHpEYXRhLnBhdGllbnRUeXBlPSJDb250YWN0IjsgLy9FUlMxOTA4MDIgIzYxMjcyCmlmIChYKGRvYywiWF9aUEFQRVJfX1BhdGllbnRfX2MiKSB8fCB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpIHsgLy9FUlMxOTA4MDMgVE9ETyByZXRoaW5rIHVzZSBYCiAgICB2YXIgZHEgPSB6RGF0YS5kcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOyAvL0VSUzE5MDgwMiBUT0RPIGRlZmluZSBiZXR0ZXIgaW4gekRhdGEKICAgIGlmICghekRhdGEucGF0aWVudElkKSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3ICIrekRhdGEucGF0aWVudFR5cGUrIiBQYXRpZW50Iik7CiAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIC8vRVJTMTkwNzMwICM2MTI3MiBtaXNzaW5nIHRoZSBiYXNpY3MKICAgICAgICB2YXIgcD0iIjsKICAgICAgICBpZiAoIkFjY291bnQiPT09ekRhdGEucGF0aWVudFR5cGUpIHsgLy9FUlMxOTA4MDMKICAgICAgICAgICAgcD0iUGVyc29uIjsKICAgICAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIk5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKyIgIit6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHArIkJpcnRoZGF0ZSIsIHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpOwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7IC8vWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyAvL0VSUzE5MDgwMyBUT0RPIGdldCBjbGVhbmVyICM2MTI3MgogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJCaXJ0aGRhdGUiLCB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQaG9uZSIsIHpEYXRhLlhfWlBBUEVSX19QaG9uZV9fYyk7IC8vUFYxOTEwMTkgdXBkYXRlZCBwaG9uZSBvbiBjb250YWN0CiAgICAgICAgfQogICAgICAgIHpEYXRhLnBhdGllbnRJZD16RGF0YS5jbGllbnRQYXRpZW50KGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBQYXRpZW50IHdpdGggSUQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgIGlmICh6RGF0YS5wYXRpZW50SWQgPT0gIm51bGwiIHx8IHpEYXRhLnBhdGllbnRJZCA9PSAiTkVXIikgekRhdGEucGF0aWVudElkPW51bGw7CiAgICAgICAgZWxzZSB7IC8vRVJTMTkwNzMwICM2MTI3MiBsZXZlcmFnZSB0aGUgbmV3IHJlY29yZAogICAgICAgICAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwogICAgICAgICAgICBhbGVydCgiQEBAQEBAQCBORVcgUEFUSUVOVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzE5MDgwMiB6RGF0YS5jb250YWN0SWQKICAgICAgICAgICAgLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwogICAgICAgICAgICBpZiAoMT09PTApIHsgLy9FUlMxOTA4MTEgIzYxNTcwIGNvbW1lbnRlZCBvdXQgc28gdGhhdCBwYXRpZW50IGluZm8gaXMgYXZhaWxhYmxlIGZvciBERSB2YXJpYWJsZXMgaW4gemlwcGkKICAgICAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19GaXJzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19MYXN0TmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgfQogICAgICAgICAgICAvLyBzZXQgdGhlIFBhdGllbnQgbG9va3VwIGZpZWxkcwogICAgICAgICAgICAvL0VSUzE5MDgwMyBUT0RPIGhhbmRsZSBaUEFQRVJfXyByZWxhdGlvbnNoaXBzIC8vRVJTMTkwODExIGRvdWJsZSB1cCBmb3Igc2FmZXR5CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEucGF0aWVudElkICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jICsgIiAiICsgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLnBhdGllbnRJZCArIGRxICsgIik7ICIpOwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50QWNjb3VudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKICAgICAgICB9CiAgICB9IGVsc2UgewogICAgICAgIGlmICgxPT09MSkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgUGF0aWVudDogIiArIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgIGlmICgxPT09MSB8fCB6RGF0YS5wYXRpZW50VHlwZSAhPSAiQWNjb3VudCIpIHsgLy9FUlMxOTA3MzAgbG9va3VwIHRoZSBkYXRhIFRPRE8gcGVyc29uIGFjY291bnQ/CiAgICAgICAgICAgICAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsIHpEYXRhLnBhdGllbnRUeXBlLCAiRmlyc3ROYW1lLExhc3ROYW1lLEJpcnRoZGF0ZSxQaG9uZSIsIG51bGwsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgICAgICB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jID0gcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOyAvL1BWMTkxMDA2IHVwZGF0ZSB0aGUgY2hpbGQgc3RhY2sKICAgICAgICAgICAgICAgIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyA9IHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgICAgICAgICB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jPXBhdGllbnRET0IgPSBYKGRvYywgIkJpcnRoZGF0ZSIsIGNvbnRhY3RGbGRzKTsKICAgICAgICAgICAgICAgIHpEYXRhLlhfWlBBUEVSX19QaG9uZV9fYyA9IHBhdGllbnRQaG9uZSA9IFgoZG9jLCAiUGhvbmUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgICAgIH0gZWxzZSBpZiAoekRhdGEucGF0aWVudFR5cGUgPT0gIkFjY291bnQiKSB7IC8vRVJTMTkwNzMwIGxvb2t1cCB0aGUgZGF0YSBUT0RPIHBlcnNvbiBhY2NvdW50PwogICAgICAgICAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgIk5hbWUiLCBudWxsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICAgICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiTmFtZSIsIGNvbnRhY3RGbGRzKS5zcGxpdCgiICIpWzBdOyAvL0VSUzE5MDgwMyBUT0RPIGZpbmQgYSBiZXR0ZXIgd2F5CiAgICAgICAgICAgICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIk5hbWUiLCBjb250YWN0Rmxkcykuc3BsaXQoIiAiKVsxXTsKICAgICAgICAgICAgfQogICAgICAgICAgICAvL1BWMTkxMDA4IHVwZGF0ZWQgYXR0YWNoTGFiZWwgb24gY2hpbGQgc3RhY2sKICAgICAgICAgICAgYXR0YWNoTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsIkluZGV4ZWQiKTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgfQogICAgfQogICAgaWYgKHpEYXRhLnBhdGllbnRJZCAmJiBhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucGF0aWVudElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5wYXRpZW50SWQ7Cn0KCgoKYXJyT2ZQYWlycyA9IFtdOwppZiAoekRhdGEuZG9jVHlwZSkgeyBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIHpEYXRhLmRvY1R5cGUpOyAgfSAvL0VSUzE5MDgxMCBQVjE5MDgwOCAjNTE2NzAKaWYgKHpEYXRhLnByb3ZpZGVySWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcm92aWRlcl9fYyIsIHpEYXRhLnByb3ZpZGVySWQpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wcm92aWRlcklkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5wcm92aWRlcklkOwp9CmFsZXJ0KCJFUlMxOTA4MTIuMjAwIHpEYXRhLnBhdGllbnRJZD0iK3pEYXRhLnBhdGllbnRJZCk7IC8vRVJTMTkwODEyICM2MTUxMQppZiAoekRhdGEucGF0aWVudElkKSB7CiAgICBpZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwMyIpPT09MCkgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOwogICAgaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMDEiKT09PTApIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIsIHpEYXRhLnBhdGllbnRJZCk7CiAgICBpZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwUSIpPT09MCkgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1JlZmVycmFsTGVhZF9fYyIsIHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMTkwODAyIExlYWQKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucGF0aWVudElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5wYXRpZW50SWQ7CiAgICBpZiAoMT09PTEpIHsgLy9FUlMxOTA4MTAgUFYxOTA4MDggZGF0YSBlbnRyeSBmb3IgbmV4dCBzcGxpdAogICAgICAgIGlmICh6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKSB7IGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19GaXJzdE5hbWVfX2MiLCB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKTsgfQogICAgICAgIGlmICh6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpIHsgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0xhc3ROYW1lX19jIiwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsgfSAgCiAgICAgICAgaWYgKHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpIHsgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0JpcnRoZGF0ZV9fYyIsIHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpOyB9CiAgICB9Cn0KaWYgKHpEYXRhLmNhc2VJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0Nhc2VfX2MiLCB6RGF0YS5jYXNlSWQpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5jYXNlSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmNhc2VJZDsKfQppZiAoekRhdGEuY29udGFjdElkKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudF9fYyIsIHpEYXRhLmNvbnRhY3RJZCk7Cn0KaWYgKHpEYXRhLmxlYWRJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1JlZmVycmFsTGVhZF9fYyIsIHpEYXRhLmxlYWRJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLmxlYWRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEubGVhZElkOwp9CmlmICh6RGF0YS5yZWZlcnJhbElkKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUmVmZXJyYWxfX2MiLCB6RGF0YS5yZWZlcnJhbElkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucmVmZXJyYWxJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucmVmZXJyYWxJZDsKfQppZiAoekRhdGEuWF9aUEFQRVJfX1Bob25lX19jKSB7IC8vUFYxOTEwMDYgVVBEQVRFRCBGT1IgUEhPTkUKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QaG9uZV9fYyIsIHpEYXRhLlhfWlBBUEVSX19QaG9uZV9fYyk7CiAgIAp9CgoKLy9QVjE5MTAwOCB1cGRhdGVkIG5ldyBmaWVsZHMKaWYoekRhdGEuWF9aUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiLHpEYXRhLlhfWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyk7CmlmKCB6RGF0YS5YX1pQQVBFUl9fUHJpb3JpdHlfX2MpIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcmlvcml0eV9fYyIsekRhdGEuWF9aUEFQRVJfX1ByaW9yaXR5X19jKTsKaWYoIHpEYXRhLlhfU3ViX0NhdGVnb3J5X19jICkgIGFyck9mUGFpcnMucHVzaCgiU3ViX0NhdGVnb3J5X19jIix6RGF0YS5YX1N1Yl9DYXRlZ29yeV9fYyk7CmlmKCB6RGF0YS5YX1pQQVBFUl9fZmF4VHlwZV9fYykgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIix6RGF0YS5YX1pQQVBFUl9fZmF4VHlwZV9fYyk7CmlmKCB6RGF0YS5YX1ByZXNjcmlwdGlvbl9fYyApICBhcnJPZlBhaXJzLnB1c2goIlByZXNjcmlwdGlvbl9fYyIsekRhdGEuWF9QcmVzY3JpcHRpb25fX2MpOwppZiggekRhdGEuWF9NZW1iZXJfUGxhbl9fYyApICBhcnJPZlBhaXJzLnB1c2goIk1lbWJlcl9QbGFuX19jIix6RGF0YS5YX01lbWJlcl9QbGFuX19jKTsKaWYoIHpEYXRhLlhfQ292ZXJhZ2VfQmVuZWZpdF9fYyApICBhcnJPZlBhaXJzLnB1c2goIkNvdmVyYWdlX0JlbmVmaXRfX2MiLHpEYXRhLlhfQ292ZXJhZ2VfQmVuZWZpdF9fYyk7CmlmKCB6RGF0YS5YX0NsaW5pY2FsX1NlcnZpY2VzX19jICkgIGFyck9mUGFpcnMucHVzaCgiQ2xpbmljYWxfU2VydmljZXNfX2MiLHpEYXRhLlhfQ2xpbmljYWxfU2VydmljZXNfX2MpOwppZiggekRhdGEuWF9TZXJ2aWNlX1JlcXVlc3RlZF9EYXRlX19jICkgIGFyck9mUGFpcnMucHVzaCgiU2VydmljZV9SZXF1ZXN0ZWRfRGF0ZV9fYyIsekRhdGEuWF9TZXJ2aWNlX1JlcXVlc3RlZF9EYXRlX19jKTsKaWYoIHpEYXRhLlhfUmVwb3J0ZWRfT3V0Y29tZV9fYyApICBhcnJPZlBhaXJzLnB1c2goIlJlcG9ydGVkX091dGNvbWVfX2MiLHpEYXRhLlhfUmVwb3J0ZWRfT3V0Y29tZV9fYyk7CmlmKCB6RGF0YS5YX0Fzc2Vzc21lbnRfVHlwZV9fYyApICBhcnJPZlBhaXJzLnB1c2goIkFzc2Vzc21lbnRfVHlwZV9fYyIsekRhdGEuWF9Bc3Nlc3NtZW50X1R5cGVfX2MpOwppZiggekRhdGEuWF9PdXRjb21lX1R5cGVfX2MgKSAgYXJyT2ZQYWlycy5wdXNoKCJPdXRjb21lX1R5cGVfX2MiLHpEYXRhLlhfT3V0Y29tZV9UeXBlX19jKTsKaWYoIHpEYXRhLlhfWlBBUEVSX19Qcmlvcml0eV9fYykgIGFyck9mUGFpcnMucHVzaCh6cCArICJQcmlvcml0eV9fYyIsIHpEYXRhLlhfWlBBUEVSX19Qcmlvcml0eV9fYyk7CmlmKCB6RGF0YS5YX1pQQVBFUl9fZmF4VHlwZV9fYyApIGFyck9mUGFpcnMucHVzaCh6cCArICJmYXhUeXBlX19jIiwgekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MpOwoKYXJyT2ZQYWlycy5wdXNoKHpwICsgIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsgLy9QVjE5MTAxOSB1cGRhdGVkIHByb2dyYW0gbmFtZQphcnJPZlBhaXJzLnB1c2goenAgKyAiU3RhdHVzX19jIiwgIkNoaWxkIik7IC8vUFYxOTEwMTkgdXBkYXRlZCBTdGF0dXMKCi8vRVJTMTkwODE0IGp1c3QgdGhlIGNoaWxkICM2MTUxMSB1cGRhdGVTRlJlY29yZChkb2MsIHpEYXRhLnpwcywgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKLy9sZXQgdGhlIGRvY1NldCBkbyB0aGUgd29yayBhdHRhY2goZG9jLGF0dGFjaExhYmVsLCBzZlN0YWNrSWQpOwovL3ZhciByPXVwZGF0ZVNGUmVjb3JkKGRvYywiWlBBUEVSX196U3RhY2tfX2MiLHNmU3RhY2tJZCxbIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsekRhdGEuelBhcmVudElkXSk7IC8vRVJTMTkwODE0ICM2MTUxMSBvdmVycmlkZSB0aGUgc2F2ZS5qc3Agd29ya2Zsb3dzCmFsZXJ0KCJAQEBAIHVwZGF0ZWQgYW5kIGF0dGFjaGVkIHRvIHpTdGFjayBSZWNvcmQsIGlkID0gIiArIHNmU3RhY2tJZCArICI/PSIrekRhdGEuZ2V0U3RhY2tJZChkb2MpKyIgZGF0YT0iK2Fyck9mUGFpcnMpOwoKdmFyIGNoaWxkU3RhY2tJZD16RGF0YS5jbGllbnRDaGlsZFN0YWNrKGRvYyxhcnJPZlBhaXJzLHNmU3RhY2tJZCk7IC8vRVJTMTkwODEwIGNyZWF0ZSBjaGlsZCBzdGFjayBmb3Igc3BsaXQgRVJTMTkwODExIGNsaWVudENoaWxkU3RhY2sKaWYgKGNoaWxkU3RhY2tJZCkge2F0dGFjaFBhdGgrPSIsIitzZlN0YWNrSWQrIiwiK2NoaWxkU3RhY2tJZDsgYXR0YWNoUGF0aD1hdHRhY2hQYXRoLnJlcGxhY2UoIi8sPyIsIi8iKTsgfSAvL0VSUzE5MDgxMSAjNjE1NzAgY2xlYW4gdXAgLy9wYXJlbnQgc3RhY2sgdG9vCgoKLyogTW92ZSB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gaXRzIHByb2Nlc3NpbmcgZm9sZGVyICovCmFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSBpbmRleGVkIHBhZ2VzIGRvY3VtZW50IGludG8gbmV4dCBwcm9jZXNzaW5nIGZvbGRlcjogIiArIG5leHRGb2xkZXIpOwovL0VSUzE5MDczMSAjNjEyNzIgbW92ZURvY3VtZW50KGRvYywiIixuZXh0Rm9sZGVyKTsKLy9FUlMxOTA3MzEgIzYxMjcyIHJlbG9hZEJ5QkFURVMoZG9jLCBuZXh0Rm9sZGVyKTsgLy9FUlMxNzA0MTMgIzM1MjkxCi8qIFBsYWNlIHRoZSBzcGxpdCBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGluZGV4ZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwptb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycz16RGF0YS5hZGRTdGFnZShkb2MsYXJyT2ZQYWlycyx6RGF0YS5zdGFnZSk7CnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50ICsiIHdlcmUgIisgekRhdGEuc3RhZ2UpOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiZGItcGFnZXMiLHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJJbmRleGVkIik7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJJbmRleGVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOyAvL1BWMTkxMDE5CmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixhdHRhY2hQYXRoKTsgLy9FUlMxNzA2MjgKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdHJhY2soZG9jLCAiRG9jIEluZGV4ZWQiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5yZWFkeX4pO3VwZGF0ZURFU3RhdHVzKH5pbmRleGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7CgovKiBlbmQgb2YgcnVsZSAqLw=="},"ordinal":11}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Index Rule Fired @@@#");
//ERS190730 #61272 updated button validation in the Actions* Details area
var zp = "ZPAPER__";
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
zData.zParentId=doc.dbID; //ERS190814 to overside the save.jsp workflows

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
if (doc.wddata.indexOf("X_ZPAPER__Case__c")>-1) {
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
        zData.caseId=zData.clientCase(doc,arrOfPairs);
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
zData.patientType=XCustomSetting(doc,"ZPAPER__PatientRecord__c"); //ERS190806 ZPAPER__ now in MP
alert("@@@@ zData.patientType ***** "+zData.patientType+" Patient");
if (!zData.patientType) zData.patientType="Contact"; //ERS190802 #61272
if (X(doc,"X_ZPAPER__Patient__c") || zData.X_ZPAPER__LastName__c) { //ERS190803 TODO rethink use X
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
            arrOfPairs.push("Phone", zData.X_ZPAPER__Phone__c); //PV191019 updated phone on contact
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
        if (1===1) {
            alert("@@@@ attaching to existing Patient: " + zData.patientId);
            if (1===1 || zData.patientType != "Account") { //ERS190730 lookup the data TODO person account?
                var contactFlds = getSFFields(doc, zData.patientType, "FirstName,LastName,Birthdate,Phone", null, zData.patientId);
                zData.X_ZPAPER__FirstName__c = patientFirstName = X(doc, "FirstName", contactFlds); //PV191006 update the child stack
                zData.X_ZPAPER__LastName__c = patientLastName = X(doc, "LastName", contactFlds);
                zData.X_ZPAPER__Birthdate__c=patientDOB = X(doc, "Birthdate", contactFlds);
                zData.X_ZPAPER__Phone__c = patientPhone = X(doc, "Phone", contactFlds);
            } else if (zData.patientType == "Account") { //ERS190730 lookup the data TODO person account?
                var contactFlds = getSFFields(doc, zData.patientType, "Name", null, zData.patientId);
                patientFirstName = X(doc, "Name", contactFlds).split(" ")[0]; //ERS190803 TODO find a better way
                patientLastName = X(doc, "Name", contactFlds).split(" ")[1];
            }
            //PV191008 updated attachLabel on child stack
            attachLabel=zData.clientFile(doc,"Indexed");
            attach(doc, attachLabel, zData.patientId);
        }
    }
    if (zData.patientId && attachPath.indexOf(zData.patientId)==-1) attachPath+=","+zData.patientId;
}



arrOfPairs = [];
if (zData.docType) { arrOfPairs.push("ZPAPER__faxType__c", zData.docType);  } //ERS190810 PV190808 #51670
if (zData.providerId) {
    arrOfPairs.push("ZPAPER__Provider__c", zData.providerId);
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
if (zData.contactId) {
    arrOfPairs.push("ZPAPER__Patient__c", zData.contactId);
}
if (zData.leadId) {
    arrOfPairs.push("ZPAPER__ReferralLead__c", zData.leadId);
    if (attachPath.indexOf(zData.leadId)==-1) attachPath+=","+zData.leadId;
}
if (zData.referralId) {
    arrOfPairs.push("ZPAPER__Referral__c", zData.referralId);
    if (attachPath.indexOf(zData.referralId)==-1) attachPath+=","+zData.referralId;
}
if (zData.X_ZPAPER__Phone__c) { //PV191006 UPDATED FOR PHONE
    arrOfPairs.push("ZPAPER__Phone__c", zData.X_ZPAPER__Phone__c);
   
}


//PV191008 updated new fields
if(zData.X_ZPAPER__Classification__c) arrOfPairs.push("ZPAPER__Classification__c",zData.X_ZPAPER__Classification__c);
if( zData.X_ZPAPER__Priority__c) arrOfPairs.push("ZPAPER__Priority__c",zData.X_ZPAPER__Priority__c);
if( zData.X_Sub_Category__c )  arrOfPairs.push("Sub_Category__c",zData.X_Sub_Category__c);
if( zData.X_ZPAPER__faxType__c)  arrOfPairs.push("ZPAPER__faxType__c",zData.X_ZPAPER__faxType__c);
if( zData.X_Prescription__c )  arrOfPairs.push("Prescription__c",zData.X_Prescription__c);
if( zData.X_Member_Plan__c )  arrOfPairs.push("Member_Plan__c",zData.X_Member_Plan__c);
if( zData.X_Coverage_Benefit__c )  arrOfPairs.push("Coverage_Benefit__c",zData.X_Coverage_Benefit__c);
if( zData.X_Clinical_Services__c )  arrOfPairs.push("Clinical_Services__c",zData.X_Clinical_Services__c);
if( zData.X_Service_Requested_Date__c )  arrOfPairs.push("Service_Requested_Date__c",zData.X_Service_Requested_Date__c);
if( zData.X_Reported_Outcome__c )  arrOfPairs.push("Reported_Outcome__c",zData.X_Reported_Outcome__c);
if( zData.X_Assessment_Type__c )  arrOfPairs.push("Assessment_Type__c",zData.X_Assessment_Type__c);
if( zData.X_Outcome_Type__c )  arrOfPairs.push("Outcome_Type__c",zData.X_Outcome_Type__c);
if( zData.X_ZPAPER__Priority__c)  arrOfPairs.push(zp + "Priority__c", zData.X_ZPAPER__Priority__c);
if( zData.X_ZPAPER__faxType__c ) arrOfPairs.push(zp + "faxType__c", zData.X_ZPAPER__faxType__c);

arrOfPairs.push(zp + "Program_Name__c", zData.programName); //PV191019 updated program name
arrOfPairs.push(zp + "Status__c", "Child"); //PV191019 updated Status

//ERS190814 just the child #61511 updateSFRecord(doc, zData.zps, sfStackId, arrOfPairs);
//let the docSet do the work attach(doc,attachLabel, sfStackId);
//var r=updateSFRecord(doc,"ZPAPER__zStack__c",sfStackId,["ZPAPER__receivedId__c",zData.zParentId]); //ERS190814 #61511 override the save.jsp workflows
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId + "?="+zData.getStackId(doc)+" data="+arrOfPairs);

var childStackId=zData.clientChildStack(doc,arrOfPairs,sfStackId); //ERS190810 create child stack for split ERS190811 clientChildStack
if (childStackId) {attachPath+=","+sfStackId+","+childStackId; attachPath=attachPath.replace("/,?","/"); } //ERS190811 #61570 clean up //parent stack too


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
arrOfPairs.push("X_reviewedStatus", "Indexed");
arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Indexed by agent at " + now0 + "<br/>"+zData.signedStatus); //PV191019
arrOfPairs.push("X_attachedTo",attachPath); //ERS170628
updateDB(doc,arrOfPairs);

track(doc, "Doc Indexed", "Document with Id: " + doc.dbID, pageCount);
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gekluc3RhbGwoKSB7IC8vUFYxOTEwMTUgYWRkZWQgZm9yIHZhbGlkYXRpbmcgaW5kZXggcnVsZQogICAgJCgiW25hbWU9J2RiLUJBVEVTJ10iKS52YWwoIiIpOwogICAgJCgiI1hfYnV0dG9uQWN0aW9ucyIpLnZhbCgiSW5kZXgsSWdub3JlLFJlamVjdCxTdGFjayBDb21wbGV0ZSIpOwogICAgJCgiI1hfZm9sZGVyRm9ybXMiKS52YWwoIjIwMjAwMjAxNzExMjUwOTExMTVfRGF0YTJfV2ViX0Zvcm0iKTsKfQoKCmZ1bmN0aW9uIGRvVmFsaWRhdGlvbigpIHsKICAgIHZhciBmb3JtTmFtZSA9ICQoJ1tuYW1lPSJCQVRFUyJdJykudmFsKCk7CiAgICAvL1BWMTkxMDE1IDJBIFZhbGlkYXRpb24KICAgIGlmKGZvcm1OYW1lLnNlYXJjaCgiMkEiKT4gLTEpewogICAgICAgCiAgICAgICAgdmFyIHJlcUJ1ZmZlciA9ICIiOwogICAgICAgIHZhciBwYXR0ZXJuU3RyaW5nID0gL15bYS16QS1aIF0rJC87CiAgICAgICAgICAgCiAgICAgICAKICAgICAgICB2YXIgcGF0aWVudElkPSQoJ1tuYW1lPSJYX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lIl0nKS52YWwoKTsKICAgICAgICBpZighcGF0aWVudElkIHx8IDAgPT09IHBhdGllbnRJZC5sZW5ndGgpeyAgCiAgICAgICAgICAgIHZhciBwYWl0ZW50RGUgPSAkKCdbbmFtZT0iWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyJdJyk7CiAgICAgICAgICAgCiAgICAgICAgICAgIGlmKCFwYWl0ZW50RGUudmFsKCkgfHwgMCA9PT0gcGFpdGVudERlLnZhbCgpLmxlbmd0aCl7CiAgICAgICAgICAgICAgICBwYWl0ZW50RGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgICAgICByZXFCdWZmZXIgKz0gIixGaXJzdE5hbWUiOwogICAgICAgICAgICB9ZWxzZXsKICAgICAgICAgICAgICAgIGlmKCEocGFpdGVudERlLnZhbCgpLm1hdGNoKHBhdHRlcm5TdHJpbmcpKSl7CiAgICAgICAgICAgICAgICAgICAgYWxlcnQoIkVSUk9SOiAgJ0ZpcnN0TmFtZScgTXVzdCBiZSBTdHJpbmcuIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICBwYWl0ZW50RGUuY3NzKCdib3JkZXInLCczcHggc29saWQgZ3JlZW4nKTsKICAgICAgICAgICAgfQoKICAgICAgICAgICAgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiXScpOwogICAgICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGgpewogICAgICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsTGFzdE5hbWUiOwogICAgICAgICAgICB9ZWxzZXsKICAgICAgICAgICAgICAgIGlmKCEocGFpdGVudERlLnZhbCgpLm1hdGNoKHBhdHRlcm5TdHJpbmcpKSl7CiAgICAgICAgICAgICAgICAgICAgYWxlcnQoIkVSUk9SOiAgJ0xhc3ROYW1lJyBNdXN0IGJlIFN0cmluZy4iKTsKICAgICAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICBwYWl0ZW50RGUuY3NzKCdib3JkZXInLCczcHggc29saWQgZ3JlZW4nKTsKICAgICAgICAgICAgfQogICAgICAgICAgIAogICAgICAgICAgICBwYWl0ZW50RGUgID0gJCgnW25hbWU9IlhfWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyJdJyk7CiAgICAgICAgICAgCiAgICAgICAgICAgIGlmKCFwYWl0ZW50RGUudmFsKCkgfHwgMCA9PT0gcGFpdGVudERlLnZhbCgpLmxlbmd0aCB8fCAiRE9OT1RfU0FWRSIgPT09IHBhaXRlbnREZS52YWwoKSl7CiAgICAgICAgICAgICAgICBwYWl0ZW50RGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgICAgICByZXFCdWZmZXIgKz0gIixjbGFzc2lmaWNhdGlvbiI7CiAgICAgICAgICAgIH0KICAgICAgICAgICAKICAgICAgICAgICAgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fUHJpb3JpdHlfX2MiXScpOwogICAgICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBwYWl0ZW50RGUudmFsKCkpewogICAgICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsUHJpb3JpdHkiOwogICAgICAgICAgICB9CgogICAgICAgICAgICBwYWl0ZW50RGUgID0gJCgnW25hbWU9IlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiXScpOwogICAgICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGgpewogICAgICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsQmlydGhEYXRlIjsKICAgICAgICAgICAgfQoKICAgICAgICAgICAgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fUGhvbmVfX2MiXScpOwogICAgICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGgpewogICAgICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsUGhvbmUiOwogICAgICAgICAgICB9CiAgICAgICAKICAgICAgICAgICAKICAgICAgICB9ZWxzZXsKICAgICAgICB2YXIgbGFzdE5hbWUgPSAkKCdbbmFtZT0iWF9aUEFQRVJfX0xhc3ROYW1lX19jIl0nKTsKICAgICAgICB2YXIgZmlyc3ROYW1lID0gJCgnW25hbWU9IlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiXScpOwogICAgICAgIHZhciBwaG9uZT0gJCgnW25hbWU9IlhfWlBBUEVSX19QaG9uZV9fYyJdJykudmFsKCk7CiAgICAgICAgdmFyIGJpcnRoRGF0ZSA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fQmlydGhkYXRlX19jIl0nKS52YWwoKTsKICAgICAgIAogICAgICAgICAgICBpZihsYXN0TmFtZS52YWwoKSB8fCBmaXJzdE5hbWUudmFsKCkgfHwgcGhvbmUKICAgICAgICAgICAgICAgIHx8IGJpcnRoRGF0ZSApewogICAgICAgICAgICAgICAgYWxlcnQoIkVSUk9SOiAgWW91IGhhdmUgc2VsZWN0ZWQgYW4gZXhpc3RpbmcgUGF0aWVudCwgdGhlIHZhbHVlcyBmb3IgRmlyc3QgTmFtZSwgTGFzdCBOYW1lLCBCaXJ0aGRhdGUgYW5kIFBob25lIG11c3QgYmUgZGVsZXRlZC4iKTsKICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKCiAgICAgICAgICAgIH0KICAgICAgICB9CgogICAgICAgdmFyIHByaW9yaXR5RGUgID0gJCgnW25hbWU9IlhfWlBBUEVSX19Qcmlvcml0eV9fYyJdJyk7CiAgICAgICAgaWYocHJpb3JpdHlEZS52YWwoKSAmJiAiVW5hc3NpZ25lZCIgPT09IHByaW9yaXR5RGUudmFsKCkpewogICAgICAgICAgICBhbGVydCgiRVJST1I6IFlvdSBtdXN0IGFzc2lnbiBhIFByaW9yaXR5IG9mIEhpZ2gsIE1lZGl1bSwgb3IgTG93IGJlZm9yZSBzYXZpbmcuIik7CiAgICAgICAgICAgIHJldHVybiBmYWxzZTsKICAgICAgICB9CgogICAgICAgIHZhciBwYXR0ZXJuTnVtID0gL15bMC05XSskLzsKICAgICAgIAogICAgICAgCiAgICAgICAgaWYgKHJlcUJ1ZmZlci5sZW5ndGggPiAwKSB7CiAgICAgICAgICAgIGFsZXJ0KCJFcnJvcjogWW91IGhhdmUgbm90IGNob3NlbiBhbiBleGlzdGluZyBQYXRpZW50LiAgVGhlcmVmb3JlIHlvdSBtdXN0IGNvbXBsZXRlIHRoZSBmb2xsb3dpbmcgZmllbGRzOyBGaXJzdCBOYW1lLCBMYXN0IE5hbWUsIEJpcnRoZGF0ZSwgYW5kIFBob25lIik7ICAgICAgCiAgICAgICAgICAgIC8vYWxlcnQoIkVSUk9SOiBUaGUgZm9sbG93aW5nIGZpZWxkcyBhcmUgcmVxdWlyZWQ6ICIgKyByZXFCdWZmZXIpOwogICAgICAgICAgICByZXR1cm4gZmFsc2U7ICAgLy9QVjE5MTAwNCBvbmUgb3IgbW9yZSBmaWVsZCBpcyBtaXNzaW5nLCBkb24ndCBzZW5kIHRvIHRoZSBydWxlcyBlbmdpbmUKICAgICAgICB9CiAgfS8vZW5kIG9mIDJBIHZhbGlkYXRpb24KICAgLy8gUFYxOTEwMTUgMkIgdmFsaWRhdGlvbgogICBpZihmb3JtTmFtZS5zZWFyY2goIjJCIik+IC0xKXsKICAgICAgICB2YXIgcmVxQnVmZmVyID0gIiI7CiAgICAgICAgdmFyIHBhdHRlcm5TdHJpbmcgPSAvXlthLXpBLVogXSskLzsKICAgICAgIAogICAgICAgIHZhciBwYXRpZW50SWQ9JCgnW25hbWU9IlhfWlBBUEVSX19QYXRpZW50X19yLk5hbWUiXScpLnZhbCgpOwogICAgICAgIGlmKCFwYXRpZW50SWQgfHwgMCA9PT0gcGF0aWVudElkLmxlbmd0aCl7ICAKICAgICAgICAgICAgIAogICAgICAgICAgICB2YXIgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiXScpOwogICAgICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBwYWl0ZW50RGUudmFsKCkpewogICAgICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsY2xhc3NpZmljYXRpb24iOwogICAgICAgICAgICB9CiAgICAgICAgICAgCiAgICAgICAgICAgIHBhaXRlbnREZSAgPSAkKCdbbmFtZT0iWF9aUEFQRVJfX1ByaW9yaXR5X19jIl0nKTsKICAgICAgICAgICAgaWYoIXBhaXRlbnREZS52YWwoKSB8fCAwID09PSBwYWl0ZW50RGUudmFsKCkubGVuZ3RoIHx8ICJET05PVF9TQVZFIiA9PT0gcGFpdGVudERlLnZhbCgpKXsKICAgICAgICAgICAgICAgIHBhaXRlbnREZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCByZWQnKTsKICAgICAgICAgICAgICAgIHJlcUJ1ZmZlciArPSAiLFByaW9yaXR5IjsKICAgICAgICAgICAgfQoKICAgICAgICAgICAKICAgICAgICAgICAKICAgICAgICAgICAgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX1N1Yl9DYXRlZ29yeV9fYyJdJyk7CiAgICAgICAgICAgIGlmKCFwYWl0ZW50RGUudmFsKCkgfHwgMCA9PT0gcGFpdGVudERlLnZhbCgpLmxlbmd0aCl7CiAgICAgICAgICAgICAgICBwYWl0ZW50RGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgICAgICByZXFCdWZmZXIgKz0gIixTdWIgQ2F0ZWdvcnkiOwogICAgICAgICAgICB9CgogICAgICAgIHBhaXRlbnREZSAgPSAkKCdbbmFtZT0iWF9QcmVzY3JpcHRpb25fX2MiXScpOwogICAgICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGgpewogICAgICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsUHJlc2NyaXB0aW9uIjsKICAgICAgICAgICAgfQogICAgICAgICAgICBwYWl0ZW50RGUgID0gJCgnW25hbWU9IlhfUHJvZHVjdF9EZXNjcmliZWRfX2MiXScpOwogICAgICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGgpewogICAgICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsUHJvZHVjdCBEZXNjcmliZWQiOwogICAgICAgICAgICB9CiAgICAgICAgICAgIHBhaXRlbnREZSAgPSAkKCdbbmFtZT0iWF9NZW1iZXJfUGxhbl9fYyJdJyk7CiAgICAgICAgICAgIGlmKCFwYWl0ZW50RGUudmFsKCkgfHwgMCA9PT0gcGFpdGVudERlLnZhbCgpLmxlbmd0aCl7CiAgICAgICAgICAgICAgICBwYWl0ZW50RGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgICAgICByZXFCdWZmZXIgKz0gIixNZW1iZXIgUGxhbiI7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX0NvdmVyYWdlX0JlbmVmaXRfX2MiXScpOwogICAgICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGgpewogICAgICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsQ292ZXJhZ2UgQmVuZWZpdCI7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX0NsaW5pY2FsX1NlcnZpY2VzX19jIl0nKTsKICAgICAgICAgICAgaWYoIXBhaXRlbnREZS52YWwoKSB8fCAwID09PSBwYWl0ZW50RGUudmFsKCkubGVuZ3RoKXsKICAgICAgICAgICAgICAgIHBhaXRlbnREZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCByZWQnKTsKICAgICAgICAgICAgICAgIHJlcUJ1ZmZlciArPSAiLENsaW5pY2FsIFNlcnZpY2VzIjsKICAgICAgICAgICAgfQogICAgICAgICAgIAogICAgICAgICAgICBwYWl0ZW50RGUgID0gJCgnW25hbWU9IlhfU2VydmljZV9SZXF1ZXN0ZWRfRGF0ZV9fYyJdJyk7CiAgICAgICAgICAgIGlmKCFwYWl0ZW50RGUudmFsKCkgfHwgMCA9PT0gcGFpdGVudERlLnZhbCgpLmxlbmd0aCl7CiAgICAgICAgICAgICAgICBwYWl0ZW50RGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgICAgICByZXFCdWZmZXIgKz0gIixTZXJ2aWNlUmVxdWVzdGVkRGF0ZSI7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX1JlcG9ydGVkX091dGNvbWVfX2MiXScpOwogICAgICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGgpewogICAgICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsUmVwb3J0ZWQgT3V0Y29tZSI7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX0Fzc2Vzc21lbnRfVHlwZV9fYyJdJyk7CiAgICAgICAgICAgIGlmKCFwYWl0ZW50RGUudmFsKCkgfHwgMCA9PT0gcGFpdGVudERlLnZhbCgpLmxlbmd0aCl7CiAgICAgICAgICAgICAgICBwYWl0ZW50RGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgICAgICByZXFCdWZmZXIgKz0gIixBc3Nlc3NtZW50IFR5cGUiOwogICAgICAgICAgICB9CiAgICAgICAgICAgIHBhaXRlbnREZSAgPSAkKCdbbmFtZT0iWF9PdXRjb21lX1R5cGVfX2MiXScpOwogICAgICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGgpewogICAgICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsT3V0Y29tZSBUeXBlIjsKICAgICAgICAgICAgfQoKICAgICAgICB9ZWxzZXsKICAgICAgIAogICAgICAgIHZhciBwcmlvcml0eSA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fUHJpb3JpdHlfX2MiXScpLnZhbCgpOwogICAgICAgIHZhciBjbGFzc2lmaWNhdGlvbiA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiXScpLnZhbCgpOwogICAgICAgIHZhciBmYXhUeXBlID0gJCgnW25hbWU9IlhfWlBBUEVSX19mYXhUeXBlX19jIl0nKS52YWwoKTsKICAgICAgICB2YXIgc3ViQ2F0ID0gJCgnW25hbWU9IlhfU3ViX0NhdGVnb3J5X19jIl0nKS52YWwoKTsKICAgICAgICB2YXIgcHJlc2NyaXB0aW9uID0gJCgnW25hbWU9IlhfUHJlc2NyaXB0aW9uX19jIl0nKS52YWwoKTsKICAgICAgICB2YXIgcHJvZHVjdERlcyA9ICQoJ1tuYW1lPSJYX1Byb2R1Y3RfRGVzY3JpYmVkX19jIl0nKS52YWwoKTsKICAgICAgICB2YXIgbWVtYmVyUGxhbiA9ICQoJ1tuYW1lPSJYX01lbWJlcl9QbGFuX19jIl0nKS52YWwoKTsKICAgICAgICB2YXIgY292ZXJhZ2VCZW5maXQgPSAkKCdbbmFtZT0iWF9Db3ZlcmFnZV9CZW5lZml0X19jIl0nKS52YWwoKTsKICAgICAgICB2YXIgY2xpbmljYWxTZXJ2aWNlID0gJCgnW25hbWU9IlhfQ2xpbmljYWxfU2VydmljZXNfX2MiXScpLnZhbCgpOwogICAgICAgIHZhciBzZXJ2aWNlUmVxdWVzdGVkRGF0ZSA9ICQoJ1tuYW1lPSJYX1NlcnZpY2VfUmVxdWVzdGVkX0RhdGVfX2MiXScpLnZhbCgpOwogICAgICAgIHZhciByZXBvcnRlZF9PdXRjb21lX19jID0gJCgnW25hbWU9IlhfUmVwb3J0ZWRfT3V0Y29tZV9fYyJdJykudmFsKCk7CiAgICAgICAgdmFyIGFzc2Vzc21lbnRfVHlwZV9fYyA9ICQoJ1tuYW1lPSJYX0Fzc2Vzc21lbnRfVHlwZV9fYyJdJykudmFsKCk7CiAgICAgICAgdmFyIG91dGNvbWVUeXBlID0gJCgnW25hbWU9IlhfT3V0Y29tZV9UeXBlX19jIl0nKS52YWwoKTsKICAgICAgICAvL2FsZXJ0KCJwcmlvcml0eT09Iitwcmlvcml0eSsiICxjbGFzc2lmaWNhdGlvbj09PSIrY2xhc3NpZmljYXRpb24rIiAsZmF4VHlwZSIrZmF4VHlwZSk7CiAgICAgICAgLy9hbGVydCgic3ViQ2F0PT0iK3N1YkNhdCsiICxwcmVzY3JpcHRpb249PT0iK3ByZXNjcmlwdGlvbisiICxwcm9kdWN0RGVzIitwcm9kdWN0RGVzKyIgLG91dGNvbWVUeXBlPT09PSIrb3V0Y29tZVR5cGUpOwogICAgICAgIC8vYWxlcnQoIm1lbWJlclBsYW49PSIrbWVtYmVyUGxhbisiICxjb3ZlcmFnZUJlbmZpdD09PSIrY292ZXJhZ2VCZW5maXQrIiAsY2xpbmljYWxTZXJ2aWNlIitjbGluaWNhbFNlcnZpY2UpOwogICAgICAgIC8vYWxlcnQoInNlcnZpY2VSZXF1ZXN0ZWREYXRlPT0iK3NlcnZpY2VSZXF1ZXN0ZWREYXRlKyIgLHJlcG9ydGVkX091dGNvbWVfX2M9PT0iK3JlcG9ydGVkX091dGNvbWVfX2MrIiAsYXNzZXNzbWVudF9UeXBlX19jPT09PSIrYXNzZXNzbWVudF9UeXBlX19jKTsKICAgICAgICAgICAgaWYoIChjbGFzc2lmaWNhdGlvbiAmJiAiRE9OT1RfU0FWRSIgIT0gY2xhc3NpZmljYXRpb24pICB8fCAocHJpb3JpdHkgJiYgIkRPTk9UX1NBVkUiICE9cHJpb3JpdHkpICB8fCAoZmF4VHlwZSAmJiAiRE9OT1RfU0FWRSIgIT0gZmF4VHlwZSkgfHwgc3ViQ2F0CiAgICAgICAgICAgICAgICB8fCBwcmVzY3JpcHRpb24gfHwgcHJvZHVjdERlcyB8fCBtZW1iZXJQbGFuIHx8IGNvdmVyYWdlQmVuZml0CiAgICAgICAgICAgICAgICB8fCBjbGluaWNhbFNlcnZpY2UgfHwgc2VydmljZVJlcXVlc3RlZERhdGUgfHwgcmVwb3J0ZWRfT3V0Y29tZV9fYwogICAgICAgICAgICAgICAgfHwgYXNzZXNzbWVudF9UeXBlX19jIHx8IG91dGNvbWVUeXBlICl7CiAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIGFsZXJ0KCJFUlJPUjogIEVpdGhlciAnUHJpb3JpdHknICdDbGFzc2lmaWNhdGlvbicgJ2ZheFR5cGUnICdzdWJDYXQnICdwcmVzY3JpcHRpb24nICdwcm9kdWN0RGVzJyAnbWVtYmVyUGxhbicgb3IgJ1BhdGllbnQnIG9ubHkgb25lIHNob3VsZCBiZSBzZWxlY3RlZC4iKTsKICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKCiAgICAgICAgICAgIH0KICAgICAgICB9CgogICAgICAgCiAgICAgICAgdmFyIHBhdHRlcm5OdW0gPSAvXlswLTldKyQvOwogICAgICAgCiAgICAgICAKICAgICAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsKICAgICAgICAgICAgYWxlcnQoIkVSUk9SOiBUaGUgZm9sbG93aW5nIGZpZWxkcyBhcmUgcmVxdWlyZWQ6ICIgKyByZXFCdWZmZXIpOwogICAgICAgICAgICByZXR1cm4gZmFsc2U7ICAgLy9QVjE5MTAwNCBvbmUgb3IgbW9yZSBmaWVsZCBpcyBtaXNzaW5nLCBkb24ndCBzZW5kIHRvIHRoZSBydWxlcyBlbmdpbmUKICAgICAgICB9CiAgIH0vL2VuZCBvZiAyQiB2YWxpZGF0aW9uICAgIAogICAKICAgIHJldHVybiB0cnVlOyAgICAgICAgLy9QVjE5MTAwNCBBbGwgcmVxdWlyZWQgZmllbGRzIGhhdmUgYmVlbiBzdXBwbGllZCwgbGV0IHRoZSBydWxlcyBlbmdpbmUgYmUgbm90aWZpZWQKfQoKCmZ1bmN0aW9uIHZhbGlkYXRlRWxlbWVudChuYW1lLGxhYmVsICxwYXR0ZXJuKSB7CiAgIAogICAgIAp9CnJldHVybiBkb1ZhbGlkYXRpb24oKTs=
//--- RULE VALIDATION CODE - END ---

</script>
