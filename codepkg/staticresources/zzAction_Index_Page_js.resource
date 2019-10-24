<!--
// Name: Index Page
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: PV191023 Everytime child will attach to that particular zStack
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-23 22:52:27","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAovL0VSUzE5MDczMCAjNjEyNzIgdXBkYXRlZCBidXR0b24gdmFsaWRhdGlvbiBpbiB0aGUgQWN0aW9ucyogRGV0YWlscyBhcmVhCgp2YXIgc3RhY2tJZCA9IFgoZG9jLCAiWF9zdGFjayIpOwppZiAoIXN0YWNrSWQpIHN0YWNrSWQ9ekRhdGEuZ2V0U3RhY2tJZChkb2MpOyAvL0VSUzE5MDYyNCBIQUNLPwp2YXIgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CnZhciBjb21wYW55Q29kZSA9IGRvYy5kZWxpdmVyZWRUbzsKekRhdGEuc3RhZ2U9IkluZGV4ZWQiOyAvL0VSUzE5MDYyMAoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwovL0VSUzE3MDkwOSB6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24oZG9jLCJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CiAgICBzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwogICAgekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYyxzdGFja0ZvbGRlciwgY29tcGFueUNvZGUsIHN0YWNrSWQpOwp9Cgp6RGF0YS5nZXREYXRhRW50cnlGaWVsZHMoZG9jKTsKLy8gRG9lcyB0aGUgdXNlciB3YW50IHRvIGF0dGFjaCBpbmRleGVkIHBhZ2VzIHRvIENhc2U/Ci8vdmFyIGNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsKLy92YXIgY29udGFjdElkID0gWChkb2MsICJYX1pQQVBFUl9fUGF0aWVudF9fYyIpOwovL3ZhciBwYXRpZW50SWQ9Y29udGFjdElkOyAvL1RPRE8KLy92YXIgcHJvdmlkZXJJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIik7Ci8vdmFyIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKLy92YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKLy92YXIgcGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwoKLy8gR2V0IHRoZSBkb2N1bWVudCB0eXBlICh3aWxsIGJlIHVzZWQgdG8gcm91dGUgdG8gbmV4dCBmb2xkZXIpCi8vdmFyIGRvY1R5cGUgPSBYKGRvYywgIlhfRG9jdW1lbnRfVHlwZV9fYyIpOwp2YXIgbmV4dEZvbGRlciA9ICIyMDUwMFRyaWFnZS1TMiI7ICAgICAgICAgICAgICAvLyBPdGhlciBmb2xkZXIgaXMgdGhlIGRlZmF1bHQKdmFyIHByZXZJbmRleFBhZ2VzID0gWChkb2MsICJYX2luZGV4ZWRQYWdlcyIpOwp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwppZiAocHJldkluZGV4UGFnZXMgJiYgcHJldkluZGV4UGFnZXMubGVuZ3RoID4gMCAmJiBjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewogICAgcHJldkluZGV4UGFnZXMgKz0gIiwiOwp9CmN1ckluZGV4UGFnZXMgPSBwcmV2SW5kZXhQYWdlcyArIGN1ckluZGV4UGFnZXM7CnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9pbmRleGVkUGFnZXMiLCBjdXJJbmRleFBhZ2VzKTsKLy9tb3ZlIHRvIGFmdGVyIHVwZGF0ZXMgYXJyT2ZQYWlycz16RGF0YS5hZGRTdGFnZShkb2MsYXJyT2ZQYWlycywiSW5kZXhlZCIpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgc2ZTdGFja0lkPVgoZG9jLCdYX3NmU3RhY2tJZCcpOwppZighc2ZTdGFja0lkKXsKICBzZlN0YWNrSWQ9ekRhdGEuZ2V0U3RhY2tJZChkb2MpOyAgCn0KCmFsZXJ0KCJAQEBAQEAgQ3VycmVudGx5IGF0dGFjaGVkIHRvIFpQQVBFUl9felN0YWNrX19jIHdpdGggSUQ6ICIgKyBzZlN0YWNrSWQpOwoKLyogU1BMSVQgT0ZGIE5FVyBTTklQUEVUIEhFUkUgKi8KdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CnZhciBuZXdJZD1zcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiaW5kZXgiLCBwYWdlUmFuZ2UpOwphbGVydCgiRVJTMTkwNjI0IG5ld0lkPSIrbmV3SWQpOwovLyoKLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgU1RBQ0sgU05JUFBFVCAqLwovLyoKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gYSBuZXcgQ2FzZSByZWNvcmQsIGlmIGl0IHdhc24ndCBwYXNzZWQgaW4gKi8KLy92YXIgcHJpb3JpdHk9WChkb2MsIlhfWlBBUEVSX19Qcmlvcml0eV9fYyIpOyAvL0VSUzE3MDYyNgp2YXIgbGFiZWwwPSIiOwp2YXIgdHJpYWdlVHlwZT1kb2MuZG9jVHlwZTsKCnZhciBhdHRhY2hQYXRoID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOwp2YXIgYXR0YWNoTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsIkluZGV4ZWQiKTsgLy8iSW5kZXhlZCAiICsgZm9ybWF0Tm93OwphbGVydCgiRVJTMTkwNjI0IGF0dGFjaExhYmVsPSIrYXR0YWNoTGFiZWwpOwoKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gTGVhZCByZWNvcmQgaWYgcmVxdWlyZWQgKi8gLy9FUlMxOTA2MTkKLy8gVE9ETyBFUlMxOTA2MjQgZmxpcCB0aGUgaWYgbG9naWMKaWYgKGRvYy53ZGRhdGEuaW5kZXhPZigiWF9aUEFQRVJfX1JlZmVycmFsTGVhZF9fYyIpPi0xKSB7IC8vRVJTMTkwODAzIFRPRE8gcmV0aGluawogICAgaWYgKCFsZWFkSWQgfHwgMCA9PT0gbGVhZElkLmxlbmd0aCkgewogICAgICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyBMZWFkIik7CiAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIGxlYWRJZD16RGF0YS5jbGllbnRMZWFkKGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBMZWFkIHdpdGggSUQ6ICIgKyBsZWFkSWQpOwogICAgICAgIGlmIChsZWFkSWQgPT0gIm51bGwiIHx8IGxlYWRJZCA9PSAiTkVXIikgbGVhZElkPW51bGw7CiAgICB9IGVsc2UgewogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIkxlYWQiKT4tMSkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgTGVhZDogIiArIGxlYWRJZCk7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCBsZWFkSWQpOwogICAgICAgIH0KICAgIH0KICAgIGlmIChsZWFkSWQgJiYgYXR0YWNoUGF0aC5pbmRleE9mKGxlYWRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrbGVhZElkOwp9CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIExlYWQgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5CnpEYXRhLnBhdGllbnRUeXBlPVhDdXN0b21TZXR0aW5nKGRvYywiUGF0aWVudFJlY29yZF9fYyIpOyAvLytYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudFJlY29yZFR5cGVfX2MiKTsKaWYgKCF6RGF0YS5wYXRpZW50VHlwZSkgekRhdGEucGF0aWVudFR5cGU9IkNvbnRhY3QiOyAvL0VSUzE5MDgwMiAjNjEyNzIKaWYgKFgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudF9fYyIpIHx8IHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYykgeyAvL0VSUzE5MDgwMyBUT0RPIHJldGhpbmsgdXNlIFgKICAgIHZhciBkcSA9IHpEYXRhLmRxID0gU3RyaW5nLmZyb21DaGFyQ29kZSgzNCk7IC8vRVJTMTkwODAyIFRPRE8gZGVmaW5lIGJldHRlciBpbiB6RGF0YQogICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3ICIrekRhdGEucGF0aWVudElkKTsKICAgIGlmICghekRhdGEucGF0aWVudElkKSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3ICIrekRhdGEucGF0aWVudFR5cGUrIiBQYXRpZW50Iik7CiAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIC8vRVJTMTkwNzMwICM2MTI3MiBtaXNzaW5nIHRoZSBiYXNpY3MKICAgICAgICB2YXIgcD0iIjsKICAgICAgICBpZiAoIkFjY291bnQiPT09ekRhdGEucGF0aWVudFR5cGUpIHsgLy9FUlMxOTA4MDMKICAgICAgICAgICAgcD0iUGVyc29uIjsKICAgICAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIk5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKyIgIit6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHArIkJpcnRoZGF0ZSIsIHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpOwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyk7IC8vWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyAvL0VSUzE5MDgwMyBUT0RPIGdldCBjbGVhbmVyICM2MTI3MgogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgaWYoekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYykgYXJyT2ZQYWlycy5wdXNoKCJCaXJ0aGRhdGUiLCB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCAiMDEyMmgwMDAwMDAxbFRyQUFJIik7IC8vWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyAvL0VSUzE5MDgwMyBUT0RPIGdldCBjbGVhbmVyICM2MTI3MgogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RfVHlwZV9fYyIsICJQYXRpZW50Iik7Ly8gUFYxOTA5MjYgaGFyZGNvZGVkIHRvIGNyZWF0ZSBjb250YWN0CiAgICAgICAgfQogICAgICAgIHpEYXRhLnBhdGllbnRJZD16RGF0YS5jbGllbnRQYXRpZW50KGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBQYXRpZW50IHdpdGggSUQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgIGlmICh6RGF0YS5wYXRpZW50SWQgPT0gIm51bGwiIHx8IHpEYXRhLnBhdGllbnRJZCA9PSAiTkVXIikgekRhdGEucGF0aWVudElkPW51bGw7CiAgICAgICAgZWxzZSB7IC8vRVJTMTkwNzMwICM2MTI3MiBsZXZlcmFnZSB0aGUgbmV3IHJlY29yZAogICAgICAgICAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwogICAgICAgICAgICBhbGVydCgiQEBAQEBAQCBORVcgQ09OVEFDVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyB6RGF0YS5jb250YWN0SWQpOyAvL0VSUzE5MDgwMiB6RGF0YS5jb250YWN0SWQKICAgICAgICAgICAgLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19GaXJzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fTGFzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQmlydGhkYXRlX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKICAgICAgICAgICAgLy9FUlMxOTA4MDMgVE9ETyBoYW5kbGUgWlBBUEVSX18gcmVsYXRpb25zaGlwcwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLnBhdGllbnRJZCArIGRxICsgIik7ICIpOwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICIgIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIGRxICsgIik7ICIpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIFBhdGllbnQgekRhdGEuYXR0YWNoUmVjb3JkczogIiArIHpEYXRhLmF0dGFjaFJlY29yZHMpOy8vIFBWMTkwOTI2IGNoYW5nZWQgdG8gY3JlYXRlIGEgcGF0aWVudAogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIlBhdGllbnQiKTw9LTEpIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIFBhdGllbnQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgIAogICAgICAgICAgICBpZiAoMT09PTEgfHwgekRhdGEucGF0aWVudFR5cGUgIT0gIkFjY291bnQiKSB7IC8vRVJTMTkwNzMwIGxvb2t1cCB0aGUgZGF0YSBUT0RPIHBlcnNvbiBhY2NvdW50PwogICAgICAgICAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgICAgICB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jID0gcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOyAvL1BWMTkwOTI2IHVwZGF0ZSB0aGUgY2hpbGQgc3RhY2sKICAgICAgICAgICAgICAgIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyA9IHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgICAgIH0gZWxzZSBpZiAoekRhdGEucGF0aWVudFR5cGUgPT0gIkFjY291bnQiKSB7IC8vRVJTMTkwNzMwIGxvb2t1cCB0aGUgZGF0YSBUT0RPIHBlcnNvbiBhY2NvdW50PwogICAgICAgICAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgIk5hbWUiLCBudWxsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICAgICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiTmFtZSIsIGNvbnRhY3RGbGRzKS5zcGxpdCgiICIpWzBdOyAvL0VSUzE5MDgwMyBUT0RPIGZpbmQgYSBiZXR0ZXIgd2F5CiAgICAgICAgICAgICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIk5hbWUiLCBjb250YWN0Rmxkcykuc3BsaXQoIiAiKVsxXTsKICAgICAgICAgICAgfQogICAgICAgICAgICBhdHRhY2hMYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYywiSW5kZXhlZCIpOyAvL1BWMTkwOTI5IGF0dGFjaCBsYWJlbCBmaXgKICAgICAgICAgICAgaWYoekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MgIT0iUEUiKXsKICAgICAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICB9CiAgICAgICAgICAgIAogICAgICAgIH0KICAgIH0KICAgIGlmICh6RGF0YS5wYXRpZW50SWQgJiYgYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwp9CgovL0VSUzE5MDYyMCB1c2UgYSBzZXR0aW5nIHRvIGRldGVybWluZSB3aGljaCBsb29rdXBzIHdlIGF0dGFjaCB0bwovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENhc2UgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5CmFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyBDYXNlIGRvYy53ZGRhdGEgKioqKiIrZG9jLndkZGF0YSk7IC8vUFYxOTA5MjYgbW92ZWQgZG93biBiZWNhdXNlIHBhdGllbnQgbmVlZHMgdG8gY3JlYXRlIGZpcnN0CmlmIChkb2Mud2RkYXRhLmluZGV4T2YoIlhfWlBBUEVSX19DYXNlX19jIik+LTEgJiYgekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MgIT0iUEUiKSB7IC8vRVJTMTkwODAzIFRPRE8gZGV0ZWN0IENhc2UgbG9va3VwIC8vIFBWMTkwOTI1IGluIFdERGF0YSBjaGVja2luZyBmb3IgWF9aUEFQRVJfX0Nhc2VfX2MgaWYgdGhhdCBpcyB0aGVyZSB0aGVuIHdpbGwgY3JlYXRlIGEgY2FzZS4gQnV0IG5vdyBpbiB0aGUgd2QgZGF0YSB3aGF0IHdlIGFyZSBnZXR0aW5nIHdlIGFyZSBub3QgZ2V0dGluZyBYX1pQQVBFUl9fQ2FzZV9fYyB0aGlzIHZhbHVlIHRoYXQncyB0aGUgcmVhc29uIGkgYW0gbWFraW5nIHRoaXMgY29uZGl0aW9uIGZhbHNlCiAgICBhbGVydCgiRVJTMTkwNjI0IG5lZWQgQ2FzZSIpOwogICAgaWYgKHpEYXRhLmNhc2VJZCkgewogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQuNjciKTsKICAgICAgICBpZiAoekRhdGEuYXR0YWNoUmVjb3Jkcy5pbmRleE9mKCJDYXNlIik+LTEpIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIENhc2U6ICIgKyB6RGF0YS5jYXNlSWQpOwogICAgICAgICAgICBhdHRhY2hMYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYywiSW5kZXhlZCIpOyAvL1BWMTkwOTI5IGF0dGFjaCBsYWJlbCBmaXgKICAgICAgICAgICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIHpEYXRhLmNhc2VJZCk7CiAgICAgICAgfQogICAgfSBlbHNlIHsKICAgICAgICBhbGVydCgiQEBAQCBjcmVhdGluZyBuZXcgQ2FzZSIpOwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsekRhdGEucGF0aWVudElkKTsgICAgICAKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsekRhdGEuWF9DYXNlX1JlY29yZF9UeXBlX19jKTsKICAgICAgICBhbGVydCgiQEBAQCBjcmVhdGluZyBuZXcgQ2FzZSBhcnJPZlBhaXJzICoqKiIrIGFyck9mUGFpcnMpOwogICAgICAgIHpEYXRhLmNhc2VJZD16RGF0YS5jbGllbnRDYXNlKGRvYyxhcnJPZlBhaXJzLCJEYXRhRW50cnkiKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBDYXNlIHdpdGggSUQ6ICIgKyB6RGF0YS5jYXNlSWQpOwogICAgICAgIGlmICh6RGF0YS5jYXNlSWQgPT0gIm51bGwiIHx8IHpEYXRhLmNhc2VJZCA9PSAiTkVXIikgekRhdGEuY2FzZUlkPW51bGw7CiAgICB9CiAgICBhbGVydCgiRVJTMTkwNjI0Ljc4IGhhdmUgYSBjYXNlPyIpOwogICAgaWYgKHpEYXRhLmNhc2VJZCAmJiBhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEuY2FzZUlkKT09LTEpewogICAgICAgIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5jYXNlSWQ7CiAgICAgICAgekRhdGEuY2FzZU51bWJlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDYXNlTnVtYmVyIiwgbnVsbCwgekRhdGEuY2FzZUlkKTsgLy9QVjkyOTIwMTkKICAgIH0KfQoKCi8vY2xpZW50UGF0aWVudCBoYXMgdG8gZG8gdGhpcwovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENvbnRhY3QgcmVjb3JkIGlmIHJlcXVpcmVkCmlmIChkb2Mud2RkYXRhLmluZGV4T2YoIlhfWlBBUEVSX19QYXRpZW50X19jIik+LTEpIHsgIC8vVE9ETyBkZWFsIHdpdGggcGVyc29uQWNjb3VudHMKICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBhIENvbnRhY3Q/IGNvbnRhY3RJZCA9ICIgKyBjb250YWN0SWQpOwogICAgaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewogICAgICAgIGF0dGFjaChkb2MsICJJbmRleGVkLSIgKyBkb2NUeXBlICsgIi0iICsgc3RhY2tJZCwgY29udGFjdElkKTsKICAgICAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKGNvbnRhY3RJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrY29udGFjdElkOwogICAgICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgY29udGFjdElkKTsKICAgICAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgIH0KICAgIGVsc2UgaWYgKHBhdGllbnRGaXJzdE5hbWUgJiYgcGF0aWVudEZpcnN0TmFtZS5sZW5ndGggPiAwCiAgICAgICAgJiYgcGF0aWVudExhc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZS5sZW5ndGggPiAwCiAgICAgICAgJiYgcGF0aWVudERPQiAmJiBwYXRpZW50RE9CLmxlbmd0aCA+IDApIHsKICAgICAgICB2YXIgY3RjQXJyT2ZQYWlycyA9IFtdOwogICAgICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIiwgcGF0aWVudEZpcnN0TmFtZSk7CiAgICAgICAgY3RjQXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHBhdGllbnRMYXN0TmFtZSk7CiAgICAgICAgY3RjQXJyT2ZQYWlycy5wdXNoKCJCaXJ0aERhdGUiLCBwYXRpZW50RE9CKTsKICAgICAgICBjb250YWN0SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ29udGFjdCIsICJJbmRleGVkLSIgKyBkb2NUeXBlICsgIi0iICsgc3RhY2tJZCwgY3RjQXJyT2ZQYWlycyk7CiAgICAgICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjb250YWN0SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2NvbnRhY3RJZDsKICAgICAgICBhbGVydCgiQEBAQEBAQCBORVcgQ09OVEFDVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyBjb250YWN0SWQpOwogICAgICAgIC8vIGNsZWFyIG91dCB0aGUgIk5ldyBQYXRpZW50IiBmaWVsZHMKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0ZpcnN0X05hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0xhc3RfTmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9Eb0JfX2NfcmVhZGFibGUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIk5PTkUiICsgZHEgKyAiKTsgIik7CiAgICAgICAgLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGF0aWVudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBjb250YWN0SWQgKyBkcSArICIpOyAiKTsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGF0aWVudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyBkcSArICIpOyAiKTsKICAgIH0KfQoqLwoKYXJyT2ZQYWlycyA9IFtdOwppZiAoekRhdGEucHJvdmlkZXJJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1Byb3ZpZGVyX19jIiwgekRhdGEucHJvdmlkZXJJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnByb3ZpZGVySWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnByb3ZpZGVySWQ7Cn0KaWYgKHpEYXRhLnBhdGllbnRJZCkgewogICAgLy9pZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwMyIpPT09MCkgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOwogICAgaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMDEiKT09PTApIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIsIHpEYXRhLnBhdGllbnRJZCk7CiAgICBpZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwUSIpPT09MCkgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1JlZmVycmFsTGVhZF9fYyIsIHpEYXRhLnBhdGllbnRJZCk7IC8vRVJTMTkwODAyIExlYWQKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucGF0aWVudElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5wYXRpZW50SWQ7Cn0KCmlmICh6RGF0YS5sZWFkSWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19SZWZlcnJhbExlYWRfX2MiLCB6RGF0YS5sZWFkSWQpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5sZWFkSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmxlYWRJZDsKfQppZiAoekRhdGEucmVmZXJyYWxJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1JlZmVycmFsX19jIiwgekRhdGEucmVmZXJyYWxJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnJlZmVycmFsSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnJlZmVycmFsSWQ7Cn0KCnVwZGF0ZVNGUmVjb3JkKGRvYywgekRhdGEuenBzLCBzZlN0YWNrSWQsIGFyck9mUGFpcnMpOwphdHRhY2hMYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYywiSW5kZXhlZCIpOyAvL1BWMTkwOTI5IGF0dGFjaG1lbnQgbGFiZWwgZml4CmF0dGFjaChkb2MsYXR0YWNoTGFiZWwsIHNmU3RhY2tJZCk7CmFsZXJ0KCJAQEBAIHVwZGF0ZWQgYW5kIGF0dGFjaGVkIHRvIHpTdGFjayBSZWNvcmQsIGlkID0gIiArIHNmU3RhY2tJZCk7CgovKiBNb3ZlIHRoZSBzcGxpdCBkb2N1bWVudCB0byBpdHMgcHJvY2Vzc2luZyBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGluZGV4ZWQgcGFnZXMgZG9jdW1lbnQgaW50byBuZXh0IHByb2Nlc3NpbmcgZm9sZGVyOiAiICsgbmV4dEZvbGRlcik7Ci8vUFYxOTA5MjYgdXBkYXRlZCBmb3IgY2hpbGQgc3RhY2tzCmFsZXJ0KCJAQEBAIHVwZGF0ZWQgYW5kIGF0dGFjaGVkIHRvIHpTdGFjayBSZWNvcmQsIGlkID0gIiArIHNmU3RhY2tJZCArICI/PSIrekRhdGEuZ2V0U3RhY2tJZChkb2MpKyIgZGF0YT0iK2Fyck9mUGFpcnMpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIkNvbXBsZXRlZCIpOyAvL1BWMTkwOTExIHRvIHVwZGF0ZSBjaGlsZCBzdGFjayBzdGF0dXMgdG8gY29tcGxldGUKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsekRhdGEuY2FzZUlkKTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0ZpcnN0TmFtZV9fYyIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fTGFzdE5hbWVfX2MiLCB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MpOwoKdmFyIGNoaWxkU3RhY2tJZD16RGF0YS5jbGllbnRDaGlsZFN0YWNrKGRvYyxhcnJPZlBhaXJzLHNmU3RhY2tJZCk7IC8vRVJTMTkwODEwIGNyZWF0ZSBjaGlsZCBzdGFjayBmb3Igc3BsaXQgRVJTMTkwODExIGNsaWVudENoaWxkU3RhY2sKaWYgKGNoaWxkU3RhY2tJZCkge2F0dGFjaFBhdGgrPSIsIitzZlN0YWNrSWQrIiwiK2NoaWxkU3RhY2tJZDsgYXR0YWNoUGF0aD1hdHRhY2hQYXRoLnJlcGxhY2UoIi8sPyIsIi8iKTsgfSAvL0VSUzE5MDgxMSAjNjE1NzAgY2xlYW4gdXAgLy9wYXJlbnQgc3RhY2sgdG9vCmFyck9mUGFpcnM9W107Ly9QVjE5MTAyMyBFdmVyeXRpbWUgY2hpbGQgd2lsbCBhdHRhY2ggdG8gdGhhdCBwYXJ0aWN1bGFyIHpTdGFjawphcnJPZlBhaXJzLnB1c2goIlhfc2ZTdGFja0lkIixjaGlsZFN0YWNrSWQpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Ci8qIE1vdmUgdGhlIHNwbGl0IGRvY3VtZW50IHRvIGl0cyBwcm9jZXNzaW5nIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgaW5kZXhlZCBwYWdlcyBkb2N1bWVudCBpbnRvIG5leHQgcHJvY2Vzc2luZyBmb2xkZXI6ICIgKyBuZXh0Rm9sZGVyKTsKLy9FUlMxOTA3MzEgIzYxMjcyIG1vdmVEb2N1bWVudChkb2MsIiIsbmV4dEZvbGRlcik7Ci8vRVJTMTkwNzMxICM2MTI3MiByZWxvYWRCeUJBVEVTKGRvYywgbmV4dEZvbGRlcik7IC8vRVJTMTcwNDEzICMzNTI5MQovKiBQbGFjZSB0aGUgc3BsaXQgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyICovCmFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSBpbmRleGVkIHBhZ2VzIGRvY3VtZW50IGludG8gdGhlIGZpbmFsIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CnVubG9ja0RvY3VtZW50KGRvYyk7CgovL0VSUzE5MDczMSAjNjEyNzIgbW92ZURvY3VtZW50KGRvYywiIixuZXh0Rm9sZGVyKTsKLy9FUlMxOTA3MzEgIzYxMjcyIHJlbG9hZEJ5QkFURVMoZG9jLCBuZXh0Rm9sZGVyKTsgLy9FUlMxNzA0MTMgIzM1MjkxCi8qIFBsYWNlIHRoZSBzcGxpdCBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGluZGV4ZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwptb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCmlmKCJSWDpQcmVzY3JpcHRpb24iID09IHpEYXRhLlhfWlBBUEVSX19mYXhUeXBlX19jKXsgLy9QVjE5MTAwMiBDcmVhdGluZyBSeCBSZWNvcmQKICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIFJ4IFJlY29yZCBAQEAiKTsKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiQ2FzZV9fYyIsekRhdGEuY2FzZUlkKTsgICAgICAKICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJOYW1lIiwidGVzdCBuYW1lIik7CiAgICB6RGF0YS5yeFJlY29yZElkPXpEYXRhLmNsaWVudFJlY29yZChkb2MsIlByZXNjcmlwdGlvbl9JbmZvX19jIixhcnJPZlBhaXJzLCJJbmRleCIpOwogICAgYWxlcnQoIkBAQEAgY3JlYXRlZCBSeCBSZWNvcmQgQEBAICIrIHJ4UmVjb3JkSWQpOwogICAKICAgIC8vUFYxOTEwMDMgYXR0YWNoIFBERgogICAgekRhdGEuZXhwb3NlUERGKGRvYyx6RGF0YS5yeFJlY29yZElkLHBhZ2VSYW5nZSk7CiAgIAp9CmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycz16RGF0YS5hZGRTdGFnZShkb2MsYXJyT2ZQYWlycyx6RGF0YS5zdGFnZSk7CnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50ICsiIHdlcmUgIisgekRhdGEuc3RhZ2UpOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiZGItcGFnZXMiLHBhZ2VDb3VudCk7Ci8vRVJTMTkwNjIwIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBwYXRpZW50Rmlyc3ROYW1lICsgcGF0aWVudExhc3ROYW1lICsgIiAtICIgKyBjb21wYW55Q29kZSArICIgLSAiICsgc3RhY2tJZCk7CmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixhdHRhY2hQYXRoKTsgLy9FUlMxNzA2MjgKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdHJhY2soZG9jLCAiRG9jIEluZGV4ZWQiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLmNvbnRhY3RJZCArIGRxICsgIik7ICIpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICIgIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIGRxICsgIik7ICIpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19DYXNlX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLmNhc2VJZCArIGRxICsgIik7ICIpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19DYXNlX19jX0Nhc2VOdW1iZXIiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuY2FzZU51bWJlciArIGRxICsgIik7ICIpOyAvL1BWMTkwOTI5IHVwZGF0ZWQgY2FzZSBudW1iZXIgaW4gbG9va3VwCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibmV4dFBhZ2UofnJlYWR5fik7dXBkYXRlREVTdGF0dXMofmluZGV4ZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKCi8qIGVuZCBvZiBydWxlICov"},"ordinal":7}

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

var sfStackId=X(doc,'X_sfStackId');
if(!sfStackId){
  sfStackId=zData.getStackId(doc);  
}

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

/* Attach the split document to Lead record if required */ //ERS190619
zData.patientType=XCustomSetting(doc,"PatientRecord__c"); //+XCustomSetting(doc,"ZPAPER__PatientRecordType__c");
if (!zData.patientType) zData.patientType="Contact"; //ERS190802 #61272
if (X(doc,"X_ZPAPER__Patient__c") || zData.X_ZPAPER__LastName__c) { //ERS190803 TODO rethink use X
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
        alert("@@@@ attaching to existing Patient zData.attachRecords: " + zData.attachRecords);// PV190926 changed to create a patient
        if (zData.attachRecords.indexOf("Patient")<=-1) {
            alert("@@@@ attaching to existing Patient: " + zData.patientId);
           
            if (1===1 || zData.patientType != "Account") { //ERS190730 lookup the data TODO person account?
                var contactFlds = getSFFields(doc, zData.patientType, "FirstName,LastName", null, zData.patientId);
                zData.X_ZPAPER__FirstName__c = patientFirstName = X(doc, "FirstName", contactFlds); //PV190926 update the child stack
                zData.X_ZPAPER__LastName__c = patientLastName = X(doc, "LastName", contactFlds);
            } else if (zData.patientType == "Account") { //ERS190730 lookup the data TODO person account?
                var contactFlds = getSFFields(doc, zData.patientType, "Name", null, zData.patientId);
                patientFirstName = X(doc, "Name", contactFlds).split(" ")[0]; //ERS190803 TODO find a better way
                patientLastName = X(doc, "Name", contactFlds).split(" ")[1];
            }
            attachLabel=zData.clientFile(doc,"Indexed"); //PV190929 attach label fix
            if(zData.X_ZPAPER__faxType__c !="PE"){
                attach(doc, attachLabel, zData.patientId);
            }
            
        }
    }
    if (zData.patientId && attachPath.indexOf(zData.patientId)==-1) attachPath+=","+zData.patientId;
}

//ERS190620 use a setting to determine which lookups we attach to
/* Attach the split document to Case record if required */ //ERS190619
alert("@@@@ creating new Case doc.wddata ****"+doc.wddata); //PV190926 moved down because patient needs to create first
if (doc.wddata.indexOf("X_ZPAPER__Case__c")>-1 && zData.X_ZPAPER__faxType__c !="PE") { //ERS190803 TODO detect Case lookup // PV190925 in WDData checking for X_ZPAPER__Case__c if that is there then will create a case. But now in the wd data what we are getting we are not getting X_ZPAPER__Case__c this value that's the reason i am making this condition false
    alert("ERS190624 need Case");
    if (zData.caseId) {
        alert("ERS190624.67");
        if (zData.attachRecords.indexOf("Case")>-1) {
            alert("@@@@ attaching to existing Case: " + zData.caseId);
            attachLabel=zData.clientFile(doc,"Indexed"); //PV190929 attach label fix
            attach(doc, attachLabel, zData.caseId);
        }
    } else {
        alert("@@@@ creating new Case");
        arrOfPairs = [];
        arrOfPairs.push("ContactId",zData.patientId);      
        arrOfPairs.push("RecordTypeId",zData.X_Case_Record_Type__c);
        alert("@@@@ creating new Case arrOfPairs ***"+ arrOfPairs);
        zData.caseId=zData.clientCase(doc,arrOfPairs,"DataEntry");
        alert("Created Case with ID: " + zData.caseId);
        if (zData.caseId == "null" || zData.caseId == "NEW") zData.caseId=null;
    }
    alert("ERS190624.78 have a case?");
    if (zData.caseId && attachPath.indexOf(zData.caseId)==-1){
        attachPath+=","+zData.caseId;
        zData.caseNumber = getSFField(doc, "Case", "CaseNumber", null, zData.caseId); //PV9292019
    }
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
//PV190926 updated for child stacks
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId + "?="+zData.getStackId(doc)+" data="+arrOfPairs);
arrOfPairs.push("ZPAPER__Status__c", "Completed"); //PV190911 to update child stack status to complete
arrOfPairs.push("ZPAPER__Patient__c", zData.patientId);
arrOfPairs.push("ZPAPER__Case__c",zData.caseId);
arrOfPairs.push("ZPAPER__FirstName__c", zData.X_ZPAPER__FirstName__c);
arrOfPairs.push("ZPAPER__LastName__c", zData.X_ZPAPER__LastName__c);
arrOfPairs.push("ZPAPER__Classification__c", zData.classification);
arrOfPairs.push("ZPAPER__faxType__c", zData.X_ZPAPER__faxType__c);

var childStackId=zData.clientChildStack(doc,arrOfPairs,sfStackId); //ERS190810 create child stack for split ERS190811 clientChildStack
if (childStackId) {attachPath+=","+sfStackId+","+childStackId; attachPath=attachPath.replace("/,?","/"); } //ERS190811 #61570 clean up //parent stack too
arrOfPairs=[];//PV191023 Everytime child will attach to that particular zStack
arrOfPairs.push("X_sfStackId",childStackId);
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

if("RX:Prescription" == zData.X_ZPAPER__faxType__c){ //PV191002 Creating Rx Record
    alert("@@@@ creating Rx Record @@@");
    arrOfPairs = [];
    arrOfPairs.push("Case__c",zData.caseId);      
    //arrOfPairs.push("Name","test name");
    zData.rxRecordId=zData.clientRecord(doc,"Prescription_Info__c",arrOfPairs,"Index");
    alert("@@@@ created Rx Record @@@ "+ rxRecordId);
   
    //PV191003 attach PDF
    zData.exposePDF(doc,zData.rxRecordId,pageRange);
   
}
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
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c" + dq + ").val(" + dq + zData.contactId + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c_Name" + dq + ").val(" + dq + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Case__c" + dq + ").val(" + dq + zData.caseId + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Case__c_CaseNumber" + dq + ").val(" + dq + zData.caseNumber + dq + "); "); //PV190929 updated case number in lookup
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gekluc3RhbGwoKSB7CiAgICAkKCJbbmFtZT0nZGItQkFURVMnXSIpLnZhbCgiIik7CiAgICAkKCIjWF9idXR0b25BY3Rpb25zIikudmFsKCJJbmRleCxJZ25vcmUsUmVqZWN0LFN0YWNrIENvbXBsZXRlIik7CiAgICAkKCIjWF9mb2xkZXJGb3JtcyIpLnZhbCgiMjAyMDAyMDE3MTEyNTA5MTExNV9EYXRhMl9XZWJfRm9ybSIpOwp9CgpmdW5jdGlvbiBkb1ZhbGlkYXRpb24oKSB7CiAgICB2YXIgZmF4VHlwZSA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fZmF4VHlwZV9fYyJdJyk7CiAgIGlmKCJQRSIgIT1mYXhUeXBlLnZhbCgpKXsKCiAgCiAgICB2YXIgY2FzZUlkID0gJCgnW25hbWU9IlhfQ2FzZV9fYyJdJykudmFsKCk7CiAgIAogICAKICAgIHZhciByZXFCdWZmZXIgPSAiIjsKICAgIHZhciBwYXR0ZXJuU3RyaW5nID0gL15bYS16QS1aIF0rJC87CiAgICBuPSJYX1pQQVBFUl9fZmF4VHlwZV9fYyI7IGw9IkRvY3VtZW50IFR5cGUiOwogICAgZT0kKCdbbmFtZT0iJytuKyciXScpOwogICAgdmFyIGRvY1R5cGUgPSBlLnZhbCgpOwogCgogICAgaWYgKCFlLnZhbCgpIHx8IDAgPT09IGUudmFsKCkubGVuZ3RoIHx8ICJET05PVF9TQVZFIiA9PT0gZS52YWwoKSkgewogICAgICAgIGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgaWYgKHJlcUJ1ZmZlci5sZW5ndGggPiAwKSB7IHJlcUJ1ZmZlciArPSAiLCAiOyB9CiAgICAgICAgcmVxQnVmZmVyICs9IGw7CiAgICB9IGVsc2V7CiAgICAgICAgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwogICAgICAgIHZhciBkb2NUeXBlTGFiZWw9ICQoZSkuZmluZCgib3B0aW9uOnNlbGVjdGVkIikudGV4dCgpOwogICAgICAgIHZhciBkb2NUeXBlTGFiZWxEb20gPSAkKCdbbmFtZT0iWF9aUEFQRVJfX2ZheFR5cGVMYWJlbCJdJyk7CiAgICAgICAKICAgICAgICBpZighZG9jVHlwZUxhYmVsRG9tLnZhbCgpIHx8IDAgPT09IGRvY1R5cGVMYWJlbERvbS52YWwoKS5sZW5ndGgpewogICAgICAgICAgIAogICAgICAgICAgICAkKCdmb3JtI2RhdGFFbnRyeUZvcm0nKS5hcHBlbmQoJzxpbnB1dCB0eXBlPSJoaWRkZW4iIG5hbWU9IlhfWlBBUEVSX19mYXhUeXBlTGFiZWwiIGlkPSJYX1pQQVBFUl9fZmF4VHlwZUxhYmVsIiB2YWx1ZT0iJytkb2NUeXBlTGFiZWwrJyIvPicpOwoKICAgICAgICB9ZWxzZXsKICAgICAgICAgICAKICAgICAgICAgICAgJChkb2NUeXBlTGFiZWxEb20pLnZhbChkb2NUeXBlTGFiZWwpOwogICAgICAgIH0KICAgICAgIAogICAgfQogICAKICAgICAKICAgIHZhciBwYXRpZW50SWQ9JCgnW25hbWU9IlhfWlBBUEVSX19QYXRpZW50X19yLk5hbWUiXScpLnZhbCgpOwogICAgaWYoIXBhdGllbnRJZCB8fCAwID09PSBwYXRpZW50SWQubGVuZ3RoKXsKICAgICAgICB2YXIgcGFpdGVudERlID0gJCgnW25hbWU9IlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiXScpOwogICAgICAgCiAgICAgICAgIGlmKCFwYWl0ZW50RGUudmFsKCkgfHwgMCA9PT0gcGFpdGVudERlLnZhbCgpLmxlbmd0aCl7CiAgICAgICAgICAgIHBhaXRlbnREZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCByZWQnKTsKICAgICAgICAgICAgcmVxQnVmZmVyICs9ICIsRmlyc3ROYW1lIjsKICAgICAgICB9ZWxzZXsKICAgICAgICAgICAgaWYoIShwYWl0ZW50RGUudmFsKCkubWF0Y2gocGF0dGVyblN0cmluZykpKXsKICAgICAgICAgICAgICAgICBhbGVydCgiRVJST1I6ICAnRmlyc3ROYW1lJyBNdXN0IGJlIFN0cmluZy4iKTsKICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKICAgICAgICAgICAgfQogICAgICAgICAgIHBhaXRlbnREZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwogICAgICAgIH0KCiAgICAgICAgIHBhaXRlbnREZSAgPSAkKCdbbmFtZT0iWF9aUEFQRVJfX0xhc3ROYW1lX19jIl0nKTsKICAgICAgICAgaWYoIXBhaXRlbnREZS52YWwoKSB8fCAwID09PSBwYWl0ZW50RGUudmFsKCkubGVuZ3RoKXsKICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICByZXFCdWZmZXIgKz0gIixMYXN0TmFtZSI7CiAgICAgICAgfWVsc2V7CiAgICAgICAgICAgIGlmKCEocGFpdGVudERlLnZhbCgpLm1hdGNoKHBhdHRlcm5TdHJpbmcpKSl7CiAgICAgICAgICAgICAgICBhbGVydCgiRVJST1I6ICAnTGFzdE5hbWUnIE11c3QgYmUgU3RyaW5nLiIpOwogICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwogICAgICAgICAgICB9CiAgICAgICAgICAgIHBhaXRlbnREZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwogICAgICAgIH0gICAgICAgIAoKICAgIH1lbHNlewogICAgICAgIHZhciBsYXN0TmFtZSA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiXScpOwogICAgICAgIHZhciBmaXJzdE5hbWUgPSAkKCdbbmFtZT0iWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyJdJyk7CiAgICAgICAKICAgICAgICBpZihsYXN0TmFtZS52YWwoKSB8fCBmaXJzdE5hbWUudmFsKCkpewogICAgICAgICAgICBhbGVydCgiRVJST1I6ICBFaXRoZXIgJ0ZpcnN0TmFtZScgICdMYXN0bmFtZScgb3IgJ1BhdGllbnQnIG9ubHkgb25lIHNob3VsZCBiZSBzZWxlY3RlZC4iKTsKICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwoKICAgICAgICB9CiAgICB9CgogICAgY2FzZUlkPSQoJ1tuYW1lPSJYX1pQQVBFUl9fQ2FzZV9fci5DYXNlTnVtYmVyIl0nKS52YWwoKTsKICAgIGlmKCFjYXNlSWQgfHwgMCA9PT0gY2FzZUlkLmxlbmd0aCl7CiAgICAgICAgdmFyIGNhc2VSZWNvcmRUeXBlID0gJCgnW25hbWU9IlhfQ2FzZV9SZWNvcmRfVHlwZV9fYyJdJyk7CiAgICBpZigiUE9BIiAhPSBkb2NUeXBlICYmICghY2FzZVJlY29yZFR5cGUudmFsKCkgfHwgMCA9PT0gY2FzZVJlY29yZFR5cGUudmFsKCkubGVuZ3RoIHx8ICJET05PVF9TQVZFIiA9PT0gY2FzZVJlY29yZFR5cGUudmFsKCkpKXsKICAgICAgICAgICAgY2FzZVJlY29yZFR5cGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgIHJlcUJ1ZmZlciArPSAiLENhc2UgUmVjb3JkIFR5cGUiOwogICAgICAgIH1lbHNlIGNhc2VSZWNvcmRUeXBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CgogICAgfWVsc2V7CiAgICAgICAgdmFyIGNhc2VSZWNvcmRUeXBlID0gJCgnW25hbWU9IlhfQ2FzZV9SZWNvcmRfVHlwZV9fYyJdJyk7CiAgICAgICAKICAgICAgICBpZihjYXNlUmVjb3JkVHlwZS52YWwoKSAmJiAiRE9OT1RfU0FWRSIgIT0gY2FzZVJlY29yZFR5cGUudmFsKCkpewogICAgICAgICAgICBhbGVydCgiRVJST1I6ICBFaXRoZXIgY2FzZVJlY29yZFR5cGUgb3IgJ0Nhc2UnIG9ubHkgb25lIHNob3VsZCBiZSBzZWxlY3RlZC4iKTsKICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwoKICAgICAgICB9CiAgICB9CgogICAgdmFyIHBhdHRlcm5OdW0gPSAvXlswLTldKyQvOwogICAKICAgCiAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsKICAgICAgICBhbGVydCgiRVJST1I6IFRoZSBmb2xsb3dpbmcgZmllbGRzIGFyZSByZXF1aXJlZDogIiArIHJlcUJ1ZmZlcik7CiAgICAgICAgcmV0dXJuIGZhbHNlOyAgIC8vUFYxOTEwMDQgb25lIG9yIG1vcmUgZmllbGQgaXMgbWlzc2luZywgZG9uJ3Qgc2VuZCB0byB0aGUgcnVsZXMgZW5naW5lCiAgICB9Cn0gIAogICAgcmV0dXJuIHRydWU7ICAgICAgICAvL1BWMTkxMDA0IEFsbCByZXF1aXJlZCBmaWVsZHMgaGF2ZSBiZWVuIHN1cHBsaWVkLCBsZXQgdGhlIHJ1bGVzIGVuZ2luZSBiZSBub3RpZmllZAp9CgoKZnVuY3Rpb24gdmFsaWRhdGVFbGVtZW50KG5hbWUsbGFiZWwgLHBhdHRlcm4pIHsKICAgCiAgICAgCn0KcmV0dXJuIGRvVmFsaWRhdGlvbigpOwoK
//--- RULE VALIDATION CODE - END ---

</script>
