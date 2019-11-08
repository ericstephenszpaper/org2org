<!--
// Name: Index Page
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-07 21:12:26","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAovL0VSUzE5MDczMCAjNjEyNzIgdXBkYXRlZCBidXR0b24gdmFsaWRhdGlvbiBpbiB0aGUgQWN0aW9ucyogRGV0YWlscyBhcmVhCgp2YXIgc3RhY2tJZCA9IFgoZG9jLCAiWF9zdGFjayIpOwppZiAoIXN0YWNrSWQpIHN0YWNrSWQ9ekRhdGEuZ2V0U3RhY2tJZChkb2MpOyAvL0VSUzE5MDYyNCBIQUNLPwp2YXIgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CnZhciBjb21wYW55Q29kZSA9IGRvYy5kZWxpdmVyZWRUbzsKekRhdGEuc3RhZ2U9IkluZGV4ZWQiOyAvL0VSUzE5MDYyMAoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwovL0VSUzE3MDkwOSB6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24oZG9jLCJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CiAgICBzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwogICAgekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYyxzdGFja0ZvbGRlciwgY29tcGFueUNvZGUsIHN0YWNrSWQpOwp9Cgp6RGF0YS5nZXREYXRhRW50cnlGaWVsZHMoZG9jKTsKCi8vIEdldCB0aGUgZG9jdW1lbnQgdHlwZSAod2lsbCBiZSB1c2VkIHRvIHJvdXRlIHRvIG5leHQgZm9sZGVyKQovL3ZhciBkb2NUeXBlID0gWChkb2MsICJYX0RvY3VtZW50X1R5cGVfX2MiKTsKdmFyIG5leHRGb2xkZXIgPSAiMjA1MDBUcmlhZ2UtUzIiOyAgICAgICAgICAgICAgLy8gT3RoZXIgZm9sZGVyIGlzIHRoZSBkZWZhdWx0CnZhciBwcmV2SW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pbmRleGVkUGFnZXMiKTsKdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKaWYgKHByZXZJbmRleFBhZ2VzICYmIHByZXZJbmRleFBhZ2VzLmxlbmd0aCA+IDAgJiYgY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICAgIHByZXZJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzID0gcHJldkluZGV4UGFnZXMgKyBjdXJJbmRleFBhZ2VzOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhlZFBhZ2VzIiwgY3VySW5kZXhQYWdlcyk7Ci8vbW92ZSB0byBhZnRlciB1cGRhdGVzIGFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsIkluZGV4ZWQiKTsKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdmFyIHNmU3RhY2tJZD1YKGRvYywnWF9zZlN0YWNrSWQnKTsKaWYoIXNmU3RhY2tJZCl7CiAgc2ZTdGFja0lkPXpEYXRhLmdldFN0YWNrSWQoZG9jKTsgIAp9CnpEYXRhLnpQYXJlbnRJZD1kb2MuZGJJRDsgLy9QVjE5MTEwNQphbGVydCgiQEBAQEBAIEN1cnJlbnRseSBhdHRhY2hlZCB0byBaUEFQRVJfX3pTdGFja19fYyB3aXRoIElEOiAiICsgc2ZTdGFja0lkKTsKLyogU1BMSVQgT0ZGIE5FVyBTTklQUEVUIEhFUkUgKi8KdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CnZhciBuZXdJZD1zcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiaW5kZXgiLCBwYWdlUmFuZ2UpOwphbGVydCgiRVJTMTkwNjI0IG5ld0lkPSIrbmV3SWQpOwovLyoKLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgU1RBQ0sgU05JUFBFVCAqLwovLyoKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gYSBuZXcgQ2FzZSByZWNvcmQsIGlmIGl0IHdhc24ndCBwYXNzZWQgaW4gKi8KLy92YXIgcHJpb3JpdHk9WChkb2MsIlhfWlBBUEVSX19Qcmlvcml0eV9fYyIpOyAvL0VSUzE3MDYyNgp2YXIgbGFiZWwwPSIiOwp2YXIgdHJpYWdlVHlwZT1kb2MuZG9jVHlwZTsKCnZhciBhdHRhY2hQYXRoID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOwp2YXIgYXR0YWNoTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsIkluZGV4ZWQiKTsgLy8iSW5kZXhlZCAiICsgZm9ybWF0Tm93OwphbGVydCgiRVJTMTkwNjI0IGF0dGFjaExhYmVsPSIrYXR0YWNoTGFiZWwpOwoKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gTGVhZCByZWNvcmQgaWYgcmVxdWlyZWQgKi8gLy9FUlMxOTA2MTkKLy8gVE9ETyBFUlMxOTA2MjQgZmxpcCB0aGUgaWYgbG9naWMKaWYgKGRvYy53ZGRhdGEuaW5kZXhPZigiWF9aUEFQRVJfX1JlZmVycmFsTGVhZF9fYyIpPi0xKSB7IC8vRVJTMTkwODAzIFRPRE8gcmV0aGluawogICAgaWYgKCFsZWFkSWQgfHwgMCA9PT0gbGVhZElkLmxlbmd0aCkgewogICAgICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyBMZWFkIik7CiAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIGxlYWRJZD16RGF0YS5jbGllbnRMZWFkKGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBMZWFkIHdpdGggSUQ6ICIgKyBsZWFkSWQpOwogICAgICAgIGlmIChsZWFkSWQgPT0gIm51bGwiIHx8IGxlYWRJZCA9PSAiTkVXIikgbGVhZElkPW51bGw7CiAgICB9IGVsc2UgewogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIkxlYWQiKT4tMSkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgTGVhZDogIiArIGxlYWRJZCk7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCBsZWFkSWQpOwogICAgICAgIH0KICAgIH0KICAgIGlmIChsZWFkSWQgJiYgYXR0YWNoUGF0aC5pbmRleE9mKGxlYWRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrbGVhZElkOwp9CgphbGVydCgiQEBAQCBQYXNzZWQgaW4gcGF0aWVudCBJZCA9ICIgKyBYKGRvYywiWF9aUEFQRVJfX1BhdGllbnRfX2MiKSk7Ci8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gTGVhZCByZWNvcmQgaWYgcmVxdWlyZWQgKi8gLy9FUlMxOTA2MTkKekRhdGEucGF0aWVudFR5cGU9WEN1c3RvbVNldHRpbmcoZG9jLCJQYXRpZW50UmVjb3JkX19jIik7IC8vK1hDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50UmVjb3JkVHlwZV9fYyIpOwppZiAoIXpEYXRhLnBhdGllbnRUeXBlKSB6RGF0YS5wYXRpZW50VHlwZT0iQ29udGFjdCI7IC8vRVJTMTkwODAyICM2MTI3MgovL0FOMTkxMTAxIE1ha2Ugc3VyZSB3ZSBhcmUgaW5pdGlhbGl6aW5nIHpEYXRhIHBhdGllbnQgZmllbGRzIHRoYXQgd2UncmUgZ29pbmcgdG8gbmVlZCBsYXRlcgppZiAoWChkb2MsIlhfWlBBUEVSX19QYXRpZW50X19jIikgfHwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKSB7IC8vRVJTMTkwODAzIFRPRE8gcmV0aGluayB1c2UgWAogICAgekRhdGEucGF0aWVudElkID0gekRhdGEuY29udGFjSWQgPSBYKGRvYywiWF9aUEFQRVJfX1BhdGllbnRfX2MiKTsKICAgIGFsZXJ0KCJAQCBwYXRpZW50IHR5cGUgPSAiICsgekRhdGEucGF0aWVudFR5cGUgKyAiLCBwYXRpZW50SUQgPSAiICsgekRhdGEucGF0aWVudElkKTsKICAgIHZhciBkcSA9IHpEYXRhLmRxID0gU3RyaW5nLmZyb21DaGFyQ29kZSgzNCk7IC8vRVJTMTkwODAyIFRPRE8gZGVmaW5lIGJldHRlciBpbiB6RGF0YQogICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3ICIrekRhdGEucGF0aWVudElkKTsKICAgIGlmICghekRhdGEucGF0aWVudElkKSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3ICIrekRhdGEucGF0aWVudFR5cGUrIiBQYXRpZW50Iik7CiAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIC8vRVJTMTkwNzMwICM2MTI3MiBtaXNzaW5nIHRoZSBiYXNpY3MKICAgICAgICB2YXIgcD0iIjsKICAgICAgICBpZiAoIkFjY291bnQiPT09ekRhdGEucGF0aWVudFR5cGUpIHsgLy9FUlMxOTA4MDMKICAgICAgICAgICAgcD0iUGVyc29uIjsKICAgICAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIk5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKyIgIit6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHArIkJpcnRoZGF0ZSIsIHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpOwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7IC8vWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyAvL0VSUzE5MDgwMyBUT0RPIGdldCBjbGVhbmVyICM2MTI3MgogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgaWYoekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYykgYXJyT2ZQYWlycy5wdXNoKCJCaXJ0aGRhdGUiLCB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCAiMDEyMmgwMDAwMDAxbFRyQUFJIik7IC8vWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyAvL0VSUzE5MDgwMyBUT0RPIGdldCBjbGVhbmVyICM2MTI3MgogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RfVHlwZV9fYyIsICJQYXRpZW50Iik7Ly8gUFYxOTA5MjYgaGFyZGNvZGVkIHRvIGNyZWF0ZSBjb250YWN0CiAgICAgICAgfQogICAgICAgIHpEYXRhLmNvbnRhY3RJZCA9IHpEYXRhLnBhdGllbnRJZD16RGF0YS5jbGllbnRQYXRpZW50KGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBQYXRpZW50IHdpdGggSUQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgIGlmICh6RGF0YS5wYXRpZW50SWQgPT0gIm51bGwiIHx8IHpEYXRhLnBhdGllbnRJZCA9PSAiTkVXIikgekRhdGEucGF0aWVudElkPW51bGw7CiAgICAgICAgZWxzZSB7IC8vRVJTMTkwNzMwICM2MTI3MiBsZXZlcmFnZSB0aGUgbmV3IHJlY29yZAogICAgICAgICAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwogICAgICAgICAgICBhbGVydCgiQEBAQEBAQCBORVcgQ09OVEFDVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyB6RGF0YS5jb250YWN0SWQpOyAvL0VSUzE5MDgwMiB6RGF0YS5jb250YWN0SWQKICAgICAgICAgICAgLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19GaXJzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fTGFzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQmlydGhkYXRlX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKICAgICAgICAgICAgLy9FUlMxOTA4MDMgVE9ETyBoYW5kbGUgWlBBUEVSX18gcmVsYXRpb25zaGlwcwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLnBhdGllbnRJZCArIGRxICsgIik7ICIpOwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICIgIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIGRxICsgIik7ICIpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIFBhdGllbnQgekRhdGEuYXR0YWNoUmVjb3JkczogIiArIHpEYXRhLmF0dGFjaFJlY29yZHMpOy8vIFBWMTkwOTI2IGNoYW5nZWQgdG8gY3JlYXRlIGEgcGF0aWVudAogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIlBhdGllbnQiKTw9LTEpIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIFBhdGllbnQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgIAogICAgICAgICAgICBpZiAoMT09PTEgfHwgekRhdGEucGF0aWVudFR5cGUgIT0gIkFjY291bnQiKSB7IC8vRVJTMTkwNzMwIGxvb2t1cCB0aGUgZGF0YSBUT0RPIHBlcnNvbiBhY2NvdW50PwogICAgICAgICAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgICAgICB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jID0gcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOyAvL1BWMTkwOTI2IHVwZGF0ZSB0aGUgY2hpbGQgc3RhY2sKICAgICAgICAgICAgICAgIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyA9IHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgICAgIH0gZWxzZSBpZiAoekRhdGEucGF0aWVudFR5cGUgPT0gIkFjY291bnQiKSB7IC8vRVJTMTkwNzMwIGxvb2t1cCB0aGUgZGF0YSBUT0RPIHBlcnNvbiBhY2NvdW50PwogICAgICAgICAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgIk5hbWUiLCBudWxsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICAgICAgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyA9IHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIk5hbWUiLCBjb250YWN0Rmxkcykuc3BsaXQoIiAiKVswXTsgLy9FUlMxOTA4MDMgVE9ETyBmaW5kIGEgYmV0dGVyIHdheQogICAgICAgICAgICAgICAgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jID0gcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJOYW1lIiwgY29udGFjdEZsZHMpLnNwbGl0KCIgIilbMV07CiAgICAgICAgICAgIH0KICAgICAgICAgICAgYXR0YWNoTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsIkluZGV4ZWQiKTsgLy9QVjE5MDkyOSBhdHRhY2ggbGFiZWwgZml4CiAgICAgICAgICAgIC8vaWYoekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MgIT0iUEUiKXsKICAgICAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICAvL30KICAgICAgICAgICAKICAgICAgICB9CiAgICB9CiAgICBpZiAoekRhdGEucGF0aWVudElkICYmIGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnBhdGllbnRJZDsKfQovL1BWMTkxMDI1IHRvIGNyZWF0ZSBQcmVzY3JpcHRpb24gcmVjb3JkCnZhciBzdGFja0ZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJaUEFQRVJfX3pTdGFja19fYyIsICJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIG51bGwsIHNmU3RhY2tJZCk7CnpEYXRhLlhfWlBBUEVSX19sYXRlc3RGYXhfX2MgPSAgWChkb2MsICJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHN0YWNrRmxkcyk7IC8vUFYxOTA5MjYgdXBkYXRlIHRoZSBjaGlsZCBzdGFjawoKCi8vRVJTMTkwNjIwIHVzZSBhIHNldHRpbmcgdG8gZGV0ZXJtaW5lIHdoaWNoIGxvb2t1cHMgd2UgYXR0YWNoIHRvCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gQ2FzZSByZWNvcmQgaWYgcmVxdWlyZWQgKi8gLy9FUlMxOTA2MTkKYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IENhc2UgZG9jLndkZGF0YSAqKioqIitkb2Mud2RkYXRhKTsgLy9QVjE5MDkyNiBtb3ZlZCBkb3duIGJlY2F1c2UgcGF0aWVudCBuZWVkcyB0byBjcmVhdGUgZmlyc3QKCi8vaWYgKGRvYy53ZGRhdGEuaW5kZXhPZigiWF9aUEFQRVJfX0Nhc2VfX2MiKT4tMSAmJiB6RGF0YS5YX1pQQVBFUl9fZmF4VHlwZV9fYyAhPSJQRSIpIHsgLy9FUlMxOTA4MDMgVE9ETyBkZXRlY3QgQ2FzZSBsb29rdXAgLy8gUFYxOTA5MjUgaW4gV0REYXRhIGNoZWNraW5nIGZvciBYX1pQQVBFUl9fQ2FzZV9fYyBpZiB0aGF0IGlzIHRoZXJlIHRoZW4gd2lsbCBjcmVhdGUgYSBjYXNlLiBCdXQgbm93IGluIHRoZSB3ZCBkYXRhIHdoYXQgd2UgYXJlIGdldHRpbmcgd2UgYXJlIG5vdCBnZXR0aW5nIFhfWlBBUEVSX19DYXNlX19jIHRoaXMgdmFsdWUgdGhhdCdzIHRoZSByZWFzb24gaSBhbSBtYWtpbmcgdGhpcyBjb25kaXRpb24gZmFsc2UKLy9pZiAoekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MgIT0iUEUiKSB7CiAgICBhbGVydCgiRVJTMTkwNjI0IG5lZWQgQ2FzZSIpOwogICAgYWxlcnQoIkBAQEBAIHpEYXRhLmNhc2VJZDogIiArIHpEYXRhLmNhc2VJZCk7CiAgICBhbGVydCgiQEBAQEAgekRhdGEuY2FzZU51bWJlcjogIiArIHpEYXRhLmNhc2VOdW1iZXIpOwogICAgaWYgKHpEYXRhLmNhc2VJZCkgewogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQuNjciKTsKICAgICAgICBpZiAoekRhdGEuYXR0YWNoUmVjb3Jkcy5pbmRleE9mKCJDYXNlIik+LTEpIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIENhc2U6ICIgKyB6RGF0YS5jYXNlSWQpOwogICAgICAgICAgICBhdHRhY2hMYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYywiSW5kZXhlZCIpOyAvL1BWMTkwOTI5IGF0dGFjaCBsYWJlbCBmaXgKICAgICAgICAgICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIHpEYXRhLmNhc2VJZCk7CiAgICAgICAgfQogICAgfSBlbHNlIHsKICAgICAgICBpZih6RGF0YS5YX0Nhc2VfUmVjb3JkX1R5cGVfX2MpewogICAgICAgICAgICBhbGVydCgiQEBAQCBjcmVhdGluZyBuZXcgQ2FzZSIpOwogICAgICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIix6RGF0YS5wYXRpZW50SWQpOyAgICAgIAogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsekRhdGEuWF9DYXNlX1JlY29yZF9UeXBlX19jKTsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IENhc2UgYXJyT2ZQYWlycyAqKioiKyBhcnJPZlBhaXJzKTsKICAgICAgICAgICAgekRhdGEuY2FzZUlkPXpEYXRhLmNsaWVudENhc2UoZG9jLGFyck9mUGFpcnMsIkRhdGFFbnRyeSIpOwogICAgICAgICAgICBhbGVydCgiQ3JlYXRlZCBDYXNlIHdpdGggSUQ6ICIgKyB6RGF0YS5jYXNlSWQpOwogICAgICAgICAgICBpZiAoekRhdGEuY2FzZUlkID09ICJudWxsIiB8fCB6RGF0YS5jYXNlSWQgPT0gIk5FVyIpIHpEYXRhLmNhc2VJZD1udWxsOwogICAgICAgIH0KICAgICAgICAKICAgIH0KICAgIGFsZXJ0KCJFUlMxOTA2MjQuNzggaGF2ZSBhIGNhc2U/Iik7CiAgICBpZiAoekRhdGEuY2FzZUlkICYmIGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5jYXNlSWQpPT0tMSl7CiAgICAgICAgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmNhc2VJZDsKICAgICAgICB6RGF0YS5jYXNlTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNhc2VOdW1iZXIiLCBudWxsLCB6RGF0YS5jYXNlSWQpOyAvL1BWOTI5MjAxOQogICAgfQovL30KCgovL2NsaWVudFBhdGllbnQgaGFzIHRvIGRvIHRoaXMKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBDb250YWN0IHJlY29yZCBpZiByZXF1aXJlZAppZiAoZG9jLndkZGF0YS5pbmRleE9mKCJYX1pQQVBFUl9fUGF0aWVudF9fYyIpPi0xKSB7ICAvL1RPRE8gZGVhbCB3aXRoIHBlcnNvbkFjY291bnRzCiAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gYSBDb250YWN0PyBjb250YWN0SWQgPSAiICsgY29udGFjdElkKTsKICAgIGlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKICAgICAgICBhdHRhY2goZG9jLCAiSW5kZXhlZC0iICsgZG9jVHlwZSArICItIiArIHN0YWNrSWQsIGNvbnRhY3RJZCk7CiAgICAgICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjb250YWN0SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2NvbnRhY3RJZDsKICAgICAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIGNvbnRhY3RJZCk7CiAgICAgICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgICAgIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICB9CiAgICBlbHNlIGlmIChwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRGaXJzdE5hbWUubGVuZ3RoID4gMAogICAgICAgICYmIHBhdGllbnRMYXN0TmFtZSAmJiBwYXRpZW50TGFzdE5hbWUubGVuZ3RoID4gMAogICAgICAgICYmIHBhdGllbnRET0IgJiYgcGF0aWVudERPQi5sZW5ndGggPiAwKSB7CiAgICAgICAgdmFyIGN0Y0Fyck9mUGFpcnMgPSBbXTsKICAgICAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHBhdGllbnRGaXJzdE5hbWUpOwogICAgICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiTGFzdE5hbWUiLCBwYXRpZW50TGFzdE5hbWUpOwogICAgICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiQmlydGhEYXRlIiwgcGF0aWVudERPQik7CiAgICAgICAgY29udGFjdElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCAiSW5kZXhlZC0iICsgZG9jVHlwZSArICItIiArIHN0YWNrSWQsIGN0Y0Fyck9mUGFpcnMpOwogICAgICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7CiAgICAgICAgYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgY29udGFjdElkKTsKICAgICAgICAvLyBjbGVhciBvdXQgdGhlICJOZXcgUGF0aWVudCIgZmllbGRzCiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9GaXJzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9MYXN0X05hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwogICAgICAgIC8vIHNldCB0aGUgUGF0aWVudCBsb29rdXAgZmllbGRzCiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgY29udGFjdElkICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lICsgZHEgKyAiKTsgIik7CiAgICB9Cn0KKi8KCmFyck9mUGFpcnMgPSBbXTsKaWYgKHpEYXRhLnByb3ZpZGVySWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcm92aWRlcl9fYyIsIHpEYXRhLnByb3ZpZGVySWQpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wcm92aWRlcklkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5wcm92aWRlcklkOwp9CmlmICh6RGF0YS5wYXRpZW50SWQpIHsKICAgIC8vaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMDMiKT09PTApIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50X19jIiwgekRhdGEucGF0aWVudElkKTsKICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDAxIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudEFjY291bnRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOwogICAgaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMFEiKT09PTApIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19SZWZlcnJhbExlYWRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzE5MDgwMiBMZWFkCiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwp9CgppZiAoekRhdGEubGVhZElkKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUmVmZXJyYWxMZWFkX19jIiwgekRhdGEubGVhZElkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEubGVhZElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5sZWFkSWQ7Cn0KaWYgKHpEYXRhLnJlZmVycmFsSWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19SZWZlcnJhbF9fYyIsIHpEYXRhLnJlZmVycmFsSWQpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5yZWZlcnJhbElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5yZWZlcnJhbElkOwp9Cgp1cGRhdGVTRlJlY29yZChkb2MsIHpEYXRhLnpwcywgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKYXR0YWNoTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsIkluZGV4ZWQiKTsgLy9QVjE5MDkyOSBhdHRhY2htZW50IGxhYmVsIGZpeAphdHRhY2goZG9jLGF0dGFjaExhYmVsLCBzZlN0YWNrSWQpOwphbGVydCgiQEBAQCB1cGRhdGVkIGFuZCBhdHRhY2hlZCB0byB6U3RhY2sgUmVjb3JkLCBpZCA9ICIgKyBzZlN0YWNrSWQpOwoKLyogTW92ZSB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gaXRzIHByb2Nlc3NpbmcgZm9sZGVyICovCmFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSBpbmRleGVkIHBhZ2VzIGRvY3VtZW50IGludG8gbmV4dCBwcm9jZXNzaW5nIGZvbGRlcjogIiArIG5leHRGb2xkZXIpOwoKYWxlcnQoIkBAQCBwYXRpZW50SWQgaXMiICsgekRhdGEucGF0aWVudElkKQoKLy9QVjE5MDkyNiB1cGRhdGVkIGZvciBjaGlsZCBzdGFja3MKYWxlcnQoIkBAQEAgdXBkYXRlZCBhbmQgYXR0YWNoZWQgdG8gelN0YWNrIFJlY29yZCwgaWQgPSAiICsgc2ZTdGFja0lkICsgIj89Iit6RGF0YS5nZXRTdGFja0lkKGRvYykrIiBkYXRhPSIrYXJyT2ZQYWlycyk7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19TdGF0dXNfX2MiLCAiQ29tcGxldGVkIik7IC8vUFYxOTA5MTEgdG8gdXBkYXRlIGNoaWxkIHN0YWNrIHN0YXR1cyB0byBjb21wbGV0ZQphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudF9fYyIsIHpEYXRhLnBhdGllbnRJZCk7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DYXNlX19jIix6RGF0YS5jYXNlSWQpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fRmlyc3ROYW1lX19jIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19MYXN0TmFtZV9fYyIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCB6RGF0YS5YX1pQQVBFUl9fZmF4VHlwZV9fYyk7Ci8vICBhcnJPZlBhaXJzLnB1c2goIkNhc2VfUmVjb3JkX1R5cGVfX2MiLHpEYXRhLlhfQ2FzZV9SZWNvcmRfVHlwZV9fYyk7Ly9QVjE5MTAyNAppZih6RGF0YS5YX0Nhc2VfUmVjb3JkX1R5cGVfX2MgJiYgekRhdGEuWF9DYXNlX1JlY29yZF9UeXBlX19jICE9ICJET05PVF9TQVZFIiApYXJyT2ZQYWlycy5wdXNoKCJDYXNlX1JlY29yZF9UeXBlX19jIix6RGF0YS5YX0Nhc2VfUmVjb3JkX1R5cGVfX2MpOy8vUFYxOTEwMzAgdXBkYXRlIHRoZSBjYXNlIHJlY29yZCB0eXBlCi8vYXJyT2ZQYWlycy5wdXNoKCJDYXNlX1JlY29yZF9UeXBlX19jIix6RGF0YS5YX0Nhc2VfUmVjb3JkX1R5cGVfX2MpOy8vUFYxOTEwMjQgdXBkYXRlIHRoZSBjYXNlIHJlY29yZCB0eXBlCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcm9ncmFtX05hbWVfX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CmlmKCB6RGF0YS5YX1ByZXNjcmlwdGlvbl9fYyApICBhcnJPZlBhaXJzLnB1c2goIlByZXNjcmlwdGlvbl9fYyIsekRhdGEuWF9QcmVzY3JpcHRpb25fX2MpOyAvL1BWMTkxMDI1IHRvIHVwZGF0ZSBQcmVzY3JpcHRpb24KdmFyIGNoaWxkU3RhY2tJZD16RGF0YS5jbGllbnRDaGlsZFN0YWNrKGRvYyxhcnJPZlBhaXJzLHNmU3RhY2tJZCk7IC8vRVJTMTkwODEwIGNyZWF0ZSBjaGlsZCBzdGFjayBmb3Igc3BsaXQgRVJTMTkwODExIGNsaWVudENoaWxkU3RhY2sKaWYgKGNoaWxkU3RhY2tJZCkge2F0dGFjaFBhdGgrPSIsIitzZlN0YWNrSWQrIiwiK2NoaWxkU3RhY2tJZDsgYXR0YWNoUGF0aD1hdHRhY2hQYXRoLnJlcGxhY2UoIi8sPyIsIi8iKTsgfSAvL0VSUzE5MDgxMSAjNjE1NzAgY2xlYW4gdXAgLy9wYXJlbnQgc3RhY2sgdG9vCmFyck9mUGFpcnM9W107Ly9QVjE5MTAyMyBFdmVyeXRpbWUgY2hpbGQgd2lsbCBhdHRhY2ggdG8gdGhhdCBwYXJ0aWN1bGFyIHpTdGFjawphcnJPZlBhaXJzLnB1c2goIlhfc2ZTdGFja0lkIixjaGlsZFN0YWNrSWQpOwphcnJPZlBhaXJzLnB1c2goInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7Ly9QVjE5MTEwNSBVcGRhdGUgcmVjZWl2ZWQgaWQKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKLyogTW92ZSB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gaXRzIHByb2Nlc3NpbmcgZm9sZGVyICovCmFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSBpbmRleGVkIHBhZ2VzIGRvY3VtZW50IGludG8gbmV4dCBwcm9jZXNzaW5nIGZvbGRlcjogIiArIG5leHRGb2xkZXIpOwovL0VSUzE5MDczMSAjNjEyNzIgbW92ZURvY3VtZW50KGRvYywiIixuZXh0Rm9sZGVyKTsKLy9FUlMxOTA3MzEgIzYxMjcyIHJlbG9hZEJ5QkFURVMoZG9jLCBuZXh0Rm9sZGVyKTsgLy9FUlMxNzA0MTMgIzM1MjkxCi8qIFBsYWNlIHRoZSBzcGxpdCBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGluZGV4ZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwptb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCi8vRVJTMTkwNzMxICM2MTI3MiBtb3ZlRG9jdW1lbnQoZG9jLCIiLG5leHRGb2xkZXIpOwovL0VSUzE5MDczMSAjNjEyNzIgcmVsb2FkQnlCQVRFUyhkb2MsIG5leHRGb2xkZXIpOyAvL0VSUzE3MDQxMyAjMzUyOTEKLyogUGxhY2UgdGhlIHNwbGl0IGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgaW5kZXhlZCBwYWdlcyBkb2N1bWVudCBpbnRvIHRoZSBmaW5hbCBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7Cm1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwp1bmxvY2tEb2N1bWVudChkb2MpOwoKaWYoIlJYIiA9PT0gekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MpeyAvL1BWMTkxMDAyIENyZWF0aW5nIFJ4IFJlY29yZAogICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgUnggUmVjb3JkIEBAQCIpOwogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgaWYoekRhdGEuY2FzZUlkKXsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkNhc2VfX2MiLHpEYXRhLmNhc2VJZCk7CiAgICB9CiAgICAgICAgIAogICAgekRhdGEucnhSZWNvcmRJZD16RGF0YS5jbGllbnRSZWNvcmQoZG9jLCJQcmVzY3JpcHRpb25fSW5mb19fYyIsYXJyT2ZQYWlycywiSW5kZXgiKTsKICAgIGFyck9mUGFpcnMucHVzaCgicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFsZXJ0KCJAQEBAIGNyZWF0ZWQgUnggUmVjb3JkIEBAQCAiKyB6RGF0YS5yeFJlY29yZElkKTsKICAgIGF0dGFjaFBhdGggPSAoYXR0YWNoUGF0aCA/IGF0dGFjaFBhdGggKyAiLCIgKyB6RGF0YS5yeFJlY29yZElkIDogekRhdGEucnhSZWNvcmRJZCk7IC8vUFYxOTEwMzEgYXR0YWNoIGRvY3VtZW50IHRvIHJ4IHJlY29yZAogICAKICAgIC8vUFYxOTEwMDMgYXR0YWNoIFBERgogICAgLy96RGF0YS5leHBvc2VQREYoZG9jLHpEYXRhLnJ4UmVjb3JkSWQscGFnZVJhbmdlKTsKICAgLy9hdHRhY2hMYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYywiSW5kZXhlZCIpOyAvL1BWMTkxMDMwIGF0dGFjaG1lbnQgbGFiZWwgZml4CiAgICAvL2F0dGFjaChkb2MsYXR0YWNoTGFiZWwsIHpEYXRhLnJ4UmVjb3JkSWQpOwp9CmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycz16RGF0YS5hZGRTdGFnZShkb2MsYXJyT2ZQYWlycyx6RGF0YS5zdGFnZSk7CnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50ICsiIHdlcmUgIisgekRhdGEuc3RhZ2UpOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiWF9jb3VudCIscGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1wYWdlcyIscGFnZUNvdW50KTsKLy9FUlMxOTA2MjAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHBhdGllbnRGaXJzdE5hbWUgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIGNvbXBhbnlDb2RlICsgIiAtICIgKyBzdGFja0lkKTsKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLGF0dGFjaFBhdGgpOyAvL0VSUzE3MDYyOAp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp0cmFjayhkb2MsICJEb2MgSW5kZXhlZCIsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHBhZ2VDb3VudCk7CnZhciBkcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOyAvL1BWMTkxMDI1IHVwZGF0ZWQKYWxlcnQoIlNldHRpbmcgUGF0aWVudCBJZCB0bzogIiArIHpEYXRhLmNvbnRhY3RJZCk7CmFsZXJ0KCJTZXR0aW5nIFBhdGllbnQgbmFtZSB0bzogIiArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwphbGVydCgiU2V0dGluZyBjYXNlIElkIHRvOiAiICsgekRhdGEuY2FzZUlkKTsKYWxlcnQoIlNldHRpbmcgQ2FzZSBudW1iZXIgdG86ICIgKyB6RGF0YS5jYXNlTnVtYmVyKTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fUGF0aWVudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5jb250YWN0SWQgKyBkcSArICIpOyAiKTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fUGF0aWVudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQ2FzZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5jYXNlSWQgKyBkcSArICIpOyAiKTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQ2FzZV9fY19DYXNlTnVtYmVyIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLmNhc2VOdW1iZXIgKyBkcSArICIpOyAiKTsgLy9QVjE5MDkyOSB1cGRhdGVkIGNhc2UgbnVtYmVyIGluIGxvb2t1cAphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5yZWFkeX4pO3VwZGF0ZURFU3RhdHVzKH5pbmRleGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7CgovKiBlbmQgb2YgcnVsZSAqLw=="},"ordinal":4}

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

var sfStackId=X(doc,'X_sfStackId');
if(!sfStackId){
  sfStackId=zData.getStackId(doc);  
}
zData.zParentId=doc.dbID; //PV191105
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

alert("@@@@ Passed in patient Id = " + X(doc,"X_ZPAPER__Patient__c"));
/* Attach the split document to Lead record if required */ //ERS190619
zData.patientType=XCustomSetting(doc,"PatientRecord__c"); //+XCustomSetting(doc,"ZPAPER__PatientRecordType__c");
if (!zData.patientType) zData.patientType="Contact"; //ERS190802 #61272
//AN191101 Make sure we are initializing zData patient fields that we're going to need later
if (X(doc,"X_ZPAPER__Patient__c") || zData.X_ZPAPER__LastName__c) { //ERS190803 TODO rethink use X
    zData.patientId = zData.contacId = X(doc,"X_ZPAPER__Patient__c");
    alert("@@ patient type = " + zData.patientType + ", patientID = " + zData.patientId);
    var dq = zData.dq = String.fromCharCode(34); //ERS190802 TODO define better in zData
    alert("@@@@ creating new "+zData.patientId);
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
            if(zData.X_ZPAPER__Birthdate__c) arrOfPairs.push("Birthdate", zData.X_ZPAPER__Birthdate__c);
            arrOfPairs.push("RecordTypeId", "0122h0000001lTrAAI"); //X_ZPAPER__FirstName__c //ERS190803 TODO get cleaner #61272
            arrOfPairs.push("Contact_Type__c", "Patient");// PV190926 hardcoded to create contact
        }
        zData.contactId = zData.patientId=zData.clientPatient(doc,arrOfPairs);
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
        alert("@@@@ attaching to existing Patient zData.attachRecords: " + zData.attachRecords);// PV190926 changed to create a patient
        if (zData.attachRecords.indexOf("Patient")<=-1) {
            alert("@@@@ attaching to existing Patient: " + zData.patientId);
           
            if (1===1 || zData.patientType != "Account") { //ERS190730 lookup the data TODO person account?
                var contactFlds = getSFFields(doc, zData.patientType, "FirstName,LastName", null, zData.patientId);
                zData.X_ZPAPER__FirstName__c = patientFirstName = X(doc, "FirstName", contactFlds); //PV190926 update the child stack
                zData.X_ZPAPER__LastName__c = patientLastName = X(doc, "LastName", contactFlds);
            } else if (zData.patientType == "Account") { //ERS190730 lookup the data TODO person account?
                var contactFlds = getSFFields(doc, zData.patientType, "Name", null, zData.patientId);
                zData.X_ZPAPER__FirstName__c = patientFirstName = X(doc, "Name", contactFlds).split(" ")[0]; //ERS190803 TODO find a better way
                zData.X_ZPAPER__LastName__c = patientLastName = X(doc, "Name", contactFlds).split(" ")[1];
            }
            attachLabel=zData.clientFile(doc,"Indexed"); //PV190929 attach label fix
            //if(zData.X_ZPAPER__faxType__c !="PE"){
                attach(doc, attachLabel, zData.patientId);
            //}
           
        }
    }
    if (zData.patientId && attachPath.indexOf(zData.patientId)==-1) attachPath+=","+zData.patientId;
}
//PV191025 to create Prescription record
var stackFlds = getSFFields(doc, "ZPAPER__zStack__c", "ZPAPER__latestFax__c", null, sfStackId);
zData.X_ZPAPER__latestFax__c =  X(doc, "ZPAPER__latestFax__c", stackFlds); //PV190926 update the child stack


//ERS190620 use a setting to determine which lookups we attach to
/* Attach the split document to Case record if required */ //ERS190619
alert("@@@@ creating new Case doc.wddata ****"+doc.wddata); //PV190926 moved down because patient needs to create first

//if (doc.wddata.indexOf("X_ZPAPER__Case__c")>-1 && zData.X_ZPAPER__faxType__c !="PE") { //ERS190803 TODO detect Case lookup // PV190925 in WDData checking for X_ZPAPER__Case__c if that is there then will create a case. But now in the wd data what we are getting we are not getting X_ZPAPER__Case__c this value that's the reason i am making this condition false
//if (zData.X_ZPAPER__faxType__c !="PE") {
    alert("ERS190624 need Case");
    alert("@@@@@ zData.caseId: " + zData.caseId);
    alert("@@@@@ zData.caseNumber: " + zData.caseNumber);
    if (zData.caseId) {
        alert("ERS190624.67");
        if (zData.attachRecords.indexOf("Case")>-1) {
            alert("@@@@ attaching to existing Case: " + zData.caseId);
            attachLabel=zData.clientFile(doc,"Indexed"); //PV190929 attach label fix
            attach(doc, attachLabel, zData.caseId);
        }
    } else {
        if(zData.X_Case_Record_Type__c){
            alert("@@@@ creating new Case");
            arrOfPairs = [];
            arrOfPairs.push("ContactId",zData.patientId);      
            arrOfPairs.push("RecordTypeId",zData.X_Case_Record_Type__c);
            alert("@@@@ creating new Case arrOfPairs ***"+ arrOfPairs);
            zData.caseId=zData.clientCase(doc,arrOfPairs,"DataEntry");
            alert("Created Case with ID: " + zData.caseId);
            if (zData.caseId == "null" || zData.caseId == "NEW") zData.caseId=null;
        }
        
    }
    alert("ERS190624.78 have a case?");
    if (zData.caseId && attachPath.indexOf(zData.caseId)==-1){
        attachPath+=","+zData.caseId;
        zData.caseNumber = getSFField(doc, "Case", "CaseNumber", null, zData.caseId); //PV9292019
    }
//}


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
    //if (zData.patientId.indexOf("003")===0) arrOfPairs.push("ZPAPER__Patient__c", zData.patientId);
    if (zData.patientId.indexOf("001")===0) arrOfPairs.push("ZPAPER__PatientAccount__c", zData.patientId);
    if (zData.patientId.indexOf("00Q")===0) arrOfPairs.push("ZPAPER__ReferralLead__c", zData.patientId); //ERS190802 Lead
    if (attachPath.indexOf(zData.patientId)==-1) attachPath+=","+zData.patientId;
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
attachLabel=zData.clientFile(doc,"Indexed"); //PV190929 attachment label fix
attach(doc,attachLabel, sfStackId);
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId);

/* Move the split document to its processing folder */
alert("@@@@@@ Moving the indexed pages document into next processing folder: " + nextFolder);

alert("@@@ patientId is" + zData.patientId)

//PV190926 updated for child stacks
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId + "?="+zData.getStackId(doc)+" data="+arrOfPairs);
arrOfPairs.push("ZPAPER__Status__c", "Completed"); //PV190911 to update child stack status to complete
arrOfPairs.push("ZPAPER__Patient__c", zData.patientId);
arrOfPairs.push("ZPAPER__Case__c",zData.caseId);
arrOfPairs.push("ZPAPER__FirstName__c", zData.X_ZPAPER__FirstName__c);
arrOfPairs.push("ZPAPER__LastName__c", zData.X_ZPAPER__LastName__c);
arrOfPairs.push("ZPAPER__Classification__c", zData.classification);
arrOfPairs.push("ZPAPER__faxType__c", zData.X_ZPAPER__faxType__c);
//  arrOfPairs.push("Case_Record_Type__c",zData.X_Case_Record_Type__c);//PV191024
if(zData.X_Case_Record_Type__c && zData.X_Case_Record_Type__c != "DONOT_SAVE" )arrOfPairs.push("Case_Record_Type__c",zData.X_Case_Record_Type__c);//PV191030 update the case record type
//arrOfPairs.push("Case_Record_Type__c",zData.X_Case_Record_Type__c);//PV191024 update the case record type
arrOfPairs.push("ZPAPER__Program_Name__c", zData.classification);
if( zData.X_Prescription__c )  arrOfPairs.push("Prescription__c",zData.X_Prescription__c); //PV191025 to update Prescription
var childStackId=zData.clientChildStack(doc,arrOfPairs,sfStackId); //ERS190810 create child stack for split ERS190811 clientChildStack
if (childStackId) {attachPath+=","+sfStackId+","+childStackId; attachPath=attachPath.replace("/,?","/"); } //ERS190811 #61570 clean up //parent stack too
arrOfPairs=[];//PV191023 Everytime child will attach to that particular zStack
arrOfPairs.push("X_sfStackId",childStackId);
arrOfPairs.push("receivedId__c", doc.dbID);//PV191105 Update received id
updateDB(doc,arrOfPairs);

/* Move the split document to its processing folder */
alert("@@@@@@ Moving the indexed pages document into next processing folder: " + nextFolder);
//ERS190731 #61272 moveDocument(doc,"",nextFolder);
//ERS190731 #61272 reloadByBATES(doc, nextFolder); //ERS170413 #35291
/* Place the split document into the stack folder */
alert("@@@@@@ Moving the indexed pages document into the final stack folder: " + stackFolder);
moveDocument(doc,"",stackFolder);
unlockDocument(doc);

//ERS190731 #61272 moveDocument(doc,"",nextFolder);
//ERS190731 #61272 reloadByBATES(doc, nextFolder); //ERS170413 #35291
/* Place the split document into the stack folder */
alert("@@@@@@ Moving the indexed pages document into the final stack folder: " + stackFolder);
moveDocument(doc,"",stackFolder);
unlockDocument(doc);

if("RX" === zData.X_ZPAPER__faxType__c){ //PV191002 Creating Rx Record
    alert("@@@@ creating Rx Record @@@");
    arrOfPairs = [];
    if(zData.caseId){
        arrOfPairs.push("Case__c",zData.caseId);
    }
         
    zData.rxRecordId=zData.clientRecord(doc,"Prescription_Info__c",arrOfPairs,"Index");
    arrOfPairs.push("receivedId__c", doc.dbID);
    alert("@@@@ created Rx Record @@@ "+ zData.rxRecordId);
    attachPath = (attachPath ? attachPath + "," + zData.rxRecordId : zData.rxRecordId); //PV191031 attach document to rx record
   
    //PV191003 attach PDF
    //zData.exposePDF(doc,zData.rxRecordId,pageRange);
   //attachLabel=zData.clientFile(doc,"Indexed"); //PV191030 attachment label fix
    //attach(doc,attachLabel, zData.rxRecordId);
}
arrOfPairs = [];
arrOfPairs=zData.addStage(doc,arrOfPairs,zData.stage);
var pageCount = zData.countPages(doc,pageRange);
alert("@@@@ pageCount = " + pageCount +" were "+ zData.stage);
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("X_count",pageCount);
arrOfPairs.push("db-pages",pageCount);
//ERS190620 arrOfPairs.push("db-label", patientFirstName + patientLastName + " - " + companyCode + " - " + stackId);
arrOfPairs.push("X_attachedTo",attachPath); //ERS170628
updateDB(doc,arrOfPairs);

track(doc, "Doc Indexed", "Document with Id: " + doc.dbID, pageCount);
var dq = String.fromCharCode(34); //PV191025 updated
alert("Setting Patient Id to: " + zData.contactId);
alert("Setting Patient name to: " + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c);
alert("Setting case Id to: " + zData.caseId);
alert("Setting Case number to: " + zData.caseNumber);
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c" + dq + ").val(" + dq + zData.contactId + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c_Name" + dq + ").val(" + dq + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Case__c" + dq + ").val(" + dq + zData.caseId + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Case__c_CaseNumber" + dq + ").val(" + dq + zData.caseNumber + dq + "); "); //PV190929 updated case number in lookup
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gekluc3RhbGwoKSB7CiAgICAkKCJbbmFtZT0nZGItQkFURVMnXSIpLnZhbCgiIik7CiAgICAkKCIjWF9idXR0b25BY3Rpb25zIikudmFsKCJJbmRleCxJZ25vcmUsUmVqZWN0LFN0YWNrIENvbXBsZXRlIik7CiAgICAkKCIjWF9mb2xkZXJGb3JtcyIpLnZhbCgiMjAyMDAyMDE3MTEyNTA5MTExNV9EYXRhMl9XZWJfRm9ybSIpOwp9CgpmdW5jdGlvbiBkb1ZhbGlkYXRpb24oKSB7CiAgICB2YXIgZmF4VHlwZSA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fZmF4VHlwZV9fYyJdJyk7CiAgIGlmKCJQRSIgIT1mYXhUeXBlLnZhbCgpKXsKCiAKICAgIHZhciBjYXNlSWQgPSAkKCdbbmFtZT0iWF9DYXNlX19jIl0nKS52YWwoKTsKICAgCiAgIAogICAgdmFyIHJlcUJ1ZmZlciA9ICIiOwogICAgdmFyIHBhdHRlcm5TdHJpbmcgPSAvXlthLXpBLVogXSskLzsKICAgIG49IlhfWlBBUEVSX19mYXhUeXBlX19jIjsgbD0iRG9jdW1lbnQgVHlwZSI7CiAgICBlPSQoJ1tuYW1lPSInK24rJyJdJyk7CiAgICB2YXIgZG9jVHlwZSA9IGUudmFsKCk7CiAKCiAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCByZWQnKTsKICAgICAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsgcmVxQnVmZmVyICs9ICIsICI7IH0KICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgIH0gZWxzZXsKICAgICAgICBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICAgICAgdmFyIGRvY1R5cGVMYWJlbD0gJChlKS5maW5kKCJvcHRpb246c2VsZWN0ZWQiKS50ZXh0KCk7CiAgICAgICAgdmFyIGRvY1R5cGVMYWJlbERvbSA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fZmF4VHlwZUxhYmVsIl0nKTsKICAgICAgIAogICAgICAgIGlmKCFkb2NUeXBlTGFiZWxEb20udmFsKCkgfHwgMCA9PT0gZG9jVHlwZUxhYmVsRG9tLnZhbCgpLmxlbmd0aCl7CiAgICAgICAgICAgCiAgICAgICAgICAgICQoJ2Zvcm0jZGF0YUVudHJ5Rm9ybScpLmFwcGVuZCgnPGlucHV0IHR5cGU9ImhpZGRlbiIgbmFtZT0iWF9aUEFQRVJfX2ZheFR5cGVMYWJlbCIgaWQ9IlhfWlBBUEVSX19mYXhUeXBlTGFiZWwiIHZhbHVlPSInK2RvY1R5cGVMYWJlbCsnIi8+Jyk7CgogICAgICAgIH1lbHNlewogICAgICAgICAgIAogICAgICAgICAgICAkKGRvY1R5cGVMYWJlbERvbSkudmFsKGRvY1R5cGVMYWJlbCk7CiAgICAgICAgfQogICAgICAgCiAgICB9CiAgIAogICAgIAogICAgdmFyIHBhdGllbnRJZD0kKCdbbmFtZT0iWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZSJdJykudmFsKCk7CiAgICBpZighcGF0aWVudElkIHx8IDAgPT09IHBhdGllbnRJZC5sZW5ndGgpewogICAgICAgIHZhciBwYWl0ZW50RGUgPSAkKCdbbmFtZT0iWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyJdJyk7CiAgICAgICAKICAgICAgICAgaWYoIXBhaXRlbnREZS52YWwoKSB8fCAwID09PSBwYWl0ZW50RGUudmFsKCkubGVuZ3RoKXsKICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICByZXFCdWZmZXIgKz0gIixGaXJzdE5hbWUiOwogICAgICAgIH1lbHNlewogICAgICAgICAgICBpZighKHBhaXRlbnREZS52YWwoKS5tYXRjaChwYXR0ZXJuU3RyaW5nKSkpewogICAgICAgICAgICAgICAgIGFsZXJ0KCJFUlJPUjogICdGaXJzdE5hbWUnIE11c3QgYmUgU3RyaW5nLiIpOwogICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwogICAgICAgICAgICB9CiAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICAgICAgfQoKICAgICAgICAgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiXScpOwogICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGgpewogICAgICAgICAgICBwYWl0ZW50RGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgIHJlcUJ1ZmZlciArPSAiLExhc3ROYW1lIjsKICAgICAgICB9ZWxzZXsKICAgICAgICAgICAgaWYoIShwYWl0ZW50RGUudmFsKCkubWF0Y2gocGF0dGVyblN0cmluZykpKXsKICAgICAgICAgICAgICAgIGFsZXJ0KCJFUlJPUjogICdMYXN0TmFtZScgTXVzdCBiZSBTdHJpbmcuIik7CiAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICAgICAgfSAgICAgICAgCgogICAgfWVsc2V7CiAgICAgICAgdmFyIGxhc3ROYW1lID0gJCgnW25hbWU9IlhfWlBBUEVSX19MYXN0TmFtZV9fYyJdJyk7CiAgICAgICAgdmFyIGZpcnN0TmFtZSA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIl0nKTsKICAgICAgIAogICAgICAgIGlmKGxhc3ROYW1lLnZhbCgpIHx8IGZpcnN0TmFtZS52YWwoKSl7CiAgICAgICAgICAgIGFsZXJ0KCJFUlJPUjogIEVpdGhlciAnRmlyc3ROYW1lJyAgJ0xhc3RuYW1lJyBvciAnUGF0aWVudCcgb25seSBvbmUgc2hvdWxkIGJlIHNlbGVjdGVkLiIpOwogICAgICAgICAgICByZXR1cm4gZmFsc2U7CgogICAgICAgIH0KICAgIH0KCiAgICBjYXNlSWQ9JCgnW25hbWU9IlhfWlBBUEVSX19DYXNlX19yLkNhc2VOdW1iZXIiXScpLnZhbCgpOwogICAgaWYoIWNhc2VJZCB8fCAwID09PSBjYXNlSWQubGVuZ3RoKXsKICAgICAgICB2YXIgY2FzZVJlY29yZFR5cGUgPSAkKCdbbmFtZT0iWF9DYXNlX1JlY29yZF9UeXBlX19jIl0nKTsKICAgIGlmKCJQT0EiICE9IGRvY1R5cGUgJiYgIlJYIiAhPSBkb2NUeXBlICAmJiAoIWNhc2VSZWNvcmRUeXBlLnZhbCgpIHx8IDAgPT09IGNhc2VSZWNvcmRUeXBlLnZhbCgpLmxlbmd0aCB8fCAiRE9OT1RfU0FWRSIgPT09IGNhc2VSZWNvcmRUeXBlLnZhbCgpKSl7CiAgICAgICAgICAgIGNhc2VSZWNvcmRUeXBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICByZXFCdWZmZXIgKz0gIixDYXNlIFJlY29yZCBUeXBlIjsKICAgICAgICB9ZWxzZSBjYXNlUmVjb3JkVHlwZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwoKICAgIH1lbHNlewogICAgICAgIHZhciBjYXNlUmVjb3JkVHlwZSA9ICQoJ1tuYW1lPSJYX0Nhc2VfUmVjb3JkX1R5cGVfX2MiXScpOwogICAgICAgCiAgICAgICAgaWYoY2FzZVJlY29yZFR5cGUudmFsKCkgJiYgIkRPTk9UX1NBVkUiICE9IGNhc2VSZWNvcmRUeXBlLnZhbCgpKXsKICAgICAgICAgICAgYWxlcnQoIkVSUk9SOiAgRWl0aGVyIGNhc2VSZWNvcmRUeXBlIG9yICdDYXNlJyBvbmx5IG9uZSBzaG91bGQgYmUgc2VsZWN0ZWQuIik7CiAgICAgICAgICAgIHJldHVybiBmYWxzZTsKCiAgICAgICAgfQogICAgfQoKICAgIHZhciBwYXR0ZXJuTnVtID0gL15bMC05XSskLzsKICAgCiAgIAogICAgaWYgKHJlcUJ1ZmZlci5sZW5ndGggPiAwKSB7CiAgICAgICAgYWxlcnQoIkVSUk9SOiBUaGUgZm9sbG93aW5nIGZpZWxkcyBhcmUgcmVxdWlyZWQ6ICIgKyByZXFCdWZmZXIpOwogICAgICAgIHJldHVybiBmYWxzZTsgICAvL1BWMTkxMDA0IG9uZSBvciBtb3JlIGZpZWxkIGlzIG1pc3NpbmcsIGRvbid0IHNlbmQgdG8gdGhlIHJ1bGVzIGVuZ2luZQogICAgfQp9ICAKICAgIHJldHVybiB0cnVlOyAgICAgICAgLy9QVjE5MTAwNCBBbGwgcmVxdWlyZWQgZmllbGRzIGhhdmUgYmVlbiBzdXBwbGllZCwgbGV0IHRoZSBydWxlcyBlbmdpbmUgYmUgbm90aWZpZWQKfQoKCmZ1bmN0aW9uIHZhbGlkYXRlRWxlbWVudChuYW1lLGxhYmVsICxwYXR0ZXJuKSB7CiAgIAogICAgIAp9CnJldHVybiBkb1ZhbGlkYXRpb24oKTsK
//--- RULE VALIDATION CODE - END ---

</script>
