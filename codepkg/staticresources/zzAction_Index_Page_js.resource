<!--
// Name: Index Page
// Committer: eric.stephens@zpaper.com
// Update: ERS200309 Document_MNV situtaion requires carefull use
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-03-09 17:23:38","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7Ci8vRVJTMTkwNzMwICM2MTI3MiB1cGRhdGVkIGJ1dHRvbiB2YWxpZGF0aW9uIGluIHRoZSBBY3Rpb25zKiBEZXRhaWxzIGFyZWEKCnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CmlmICghc3RhY2tJZCB8fCBzdGFja0lkLmluZGV4T2YoImEiKSAhPT0gMCkgc3RhY2tJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7IC8vRVJTMTkwNjI0IEhBQ0s/CmlmIChzdGFja0lkKSB6RGF0YS5zdGFja0lkPXN0YWNrSWQ7IC8vRVJTMjAwMjA0ICM2ODgyNSBtdWNoIGJldHRlciBmb3IgY2xpZW50IGNhbGxzCnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwp6RGF0YS5zdGFnZT0iSW5kZXhlZCI7IC8vRVJTMTkwNjIwCgppZiAoIXpEYXRhLnBhdGllbnRJZCAmJiBYKGRvYywiWF9wYXRpZW50SWQiKSkgekRhdGEucGF0aWVudElkPVgoZG9jLCJYX3BhdGllbnRJZCIpOwppZiAoIXpEYXRhLnBhdGllbnRJZCAmJiBYKGRvYywiWF9aUEFQRVJfX1BhdGllbnRfX2MiKSkgekRhdGEucGF0aWVudElkPVgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudF9fYyIpOyAvL0VSUzIwMDIwNSBrZWVwIHRyYWNrIG9mIElEcyBiZXR0ZXIKLy9hbGVydCgiRVJTMjAwMzA1LjEyIHBhdGllbnRJZD0iK3pEYXRhLnBhdGllbnRJZCsgIiBmcm9tICIrWChkb2MsIlhfUHJvZ3JhbV9NZW1iZXJfTVZOX19jIikpOwoKaWYgKCF6RGF0YS5jYXNlSWQpIHpEYXRhLmNhc2VJZD1YKGRvYywiWF9aUEFQRVJfX0Nhc2VfX2MiKTsgLy8vL0VSUzIwMDIwNSB6aXBwaSBjaGFuZ2VzCgoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwovL0VSUzE3MDkwOSB6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24oZG9jLCJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CiAgICBzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwogICAgekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYyxzdGFja0ZvbGRlciwgY29tcGFueUNvZGUsIHN0YWNrSWQpOwp9Cgp6RGF0YS5nZXREYXRhRW50cnlGaWVsZHMoZG9jKTsKLy9hbGVydCgiRVJTMjAwMzA1LjI4IHBhdGllbnRJZD0iK3pEYXRhLnBhdGllbnRJZCsgIiBmcm9tICIrWChkb2MsIlhfUHJvZ3JhbV9NZW1iZXJfTVZOX19jIikpOwoKLy8gRG9lcyB0aGUgdXNlciB3YW50IHRvIGF0dGFjaCBpbmRleGVkIHBhZ2VzIHRvIENhc2U/Ci8vdmFyIGNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsKLy92YXIgY29udGFjdElkID0gWChkb2MsICJYX1pQQVBFUl9fUGF0aWVudF9fYyIpOwovL3ZhciBwYXRpZW50SWQ9Y29udGFjdElkOyAvL1RPRE8KLy92YXIgcHJvdmlkZXJJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIik7Ci8vdmFyIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKLy92YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKLy92YXIgcGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwoKLy8gR2V0IHRoZSBkb2N1bWVudCB0eXBlICh3aWxsIGJlIHVzZWQgdG8gcm91dGUgdG8gbmV4dCBmb2xkZXIpCi8vdmFyIGRvY1R5cGUgPSBYKGRvYywgIlhfRG9jdW1lbnRfVHlwZV9fYyIpOwp2YXIgbmV4dEZvbGRlciA9ICIyMDUwMFRyaWFnZS1TMiI7ICAgICAgICAgICAgICAvLyBPdGhlciBmb2xkZXIgaXMgdGhlIGRlZmF1bHQKdmFyIHByZXZJbmRleFBhZ2VzID0gWChkb2MsICJYX2luZGV4ZWRQYWdlcyIpOwp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwppZiAocHJldkluZGV4UGFnZXMgJiYgcHJldkluZGV4UGFnZXMubGVuZ3RoID4gMCAmJiBjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewogICAgcHJldkluZGV4UGFnZXMgKz0gIiwiOwp9CmN1ckluZGV4UGFnZXMgPSBwcmV2SW5kZXhQYWdlcyArIGN1ckluZGV4UGFnZXM7CnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9pbmRleGVkUGFnZXMiLCBjdXJJbmRleFBhZ2VzKTsKLy9tb3ZlIHRvIGFmdGVyIHVwZGF0ZXMgYXJyT2ZQYWlycz16RGF0YS5hZGRTdGFnZShkb2MsYXJyT2ZQYWlycywiSW5kZXhlZCIpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgc2ZTdGFja0lkPXpEYXRhLmdldFN0YWNrSWQoZG9jKTsKYWxlcnQoIkBAQEBAQCBDdXJyZW50bHkgYXR0YWNoZWQgdG8gWlBBUEVSX196U3RhY2tfX2Mgd2l0aCBJRDogIiArIHNmU3RhY2tJZCk7CnpEYXRhLnpQYXJlbnRJZD1kb2MuZGJJRDsgLy9FUlMxOTA4MTQgdG8gb3ZlcnNpZGUgdGhlIHNhdmUuanNwIHdvcmtmbG93cwoKLyogU1BMSVQgT0ZGIE5FVyBTTklQUEVUIEhFUkUgKi8KdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CnZhciBuZXdJZD1zcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiaW5kZXgiLCBwYWdlUmFuZ2UpOwphbGVydCgiRVJTMTkwNjI0IG5ld0lkPSIrbmV3SWQpOwovLyoKLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgU1RBQ0sgU05JUFBFVCAqLwovLyoKLy9hbGVydCgiRVJTMjAwMzA1LjY0IHBhdGllbnRJZD0iK3pEYXRhLnBhdGllbnRJZCsgIiBmcm9tICIrWChkb2MsIlhfUHJvZ3JhbV9NZW1iZXJfTVZOX19jIikpOwoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBhIG5ldyBDYXNlIHJlY29yZCwgaWYgaXQgd2Fzbid0IHBhc3NlZCBpbiAqLwovL3ZhciBwcmlvcml0eT1YKGRvYywiWF9aUEFQRVJfX1ByaW9yaXR5X19jIik7IC8vRVJTMTcwNjI2CnZhciBsYWJlbDA9IiI7CmFsZXJ0KCJFUlMyMDAyMDUuNjQgZG9jLmRvY1R5cGU9Iitkb2MuZG9jVHlwZSsiIHpEYXRhLmRvY1R5cGU9Iit6RGF0YS5kb2NUeXBlKyIgWCgpPSIrWChkb2MsIlhfZG9jVHlwZSIpKyIgWDI9IitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSk7CnZhciB0cmlhZ2VUeXBlPWRvYy5kb2NUeXBlOwppZiAoIXRyaWFnZVR5cGUgfHwgdHJpYWdlVHlwZSA9PSAiRkFYIikgdHJpYWdlVHlwZT1YKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsgLy9FUlMyMDAyMDUgZG9jLmRvY1R5cGU7CnpEYXRhLmRvY1R5cGU9dHJpYWdlVHlwZTsgYWxlcnQoIlVzaW5nIEVSUzIwMDIwNSBkb2NUeXBlPSIrekRhdGEuZG9jVHlwZSk7IC8vRVJTMjAwMjA1IEA2ODgyNQoKdmFyIGF0dGFjaFBhdGggPSBYKGRvYywiWF9hdHRhY2hlZFRvIik7CnZhciBhdHRhY2hMYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYywiSW5kZXhlZCIpOyAvLyJJbmRleGVkICIgKyBmb3JtYXROb3c7CmFsZXJ0KCJFUlMxOTA2MjQgYXR0YWNoTGFiZWw9IithdHRhY2hMYWJlbCk7Ci8vYWxlcnQoIkVSUzIwMDMwNS43NyBwYXRpZW50SWQ9Iit6RGF0YS5wYXRpZW50SWQrICIgZnJvbSAiK1goZG9jLCJYX1Byb2dyYW1fTWVtYmVyX01WTl9fYyIpKTsKCi8vRVJTMTkwNjIwIHVzZSBhIHNldHRpbmcgdG8gZGV0ZXJtaW5lIHdoaWNoIGxvb2t1cHMgd2UgYXR0YWNoIHRvCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gQ2FzZSByZWNvcmQgaWYgcmVxdWlyZWQgKi8gLy9FUlMxOTA2MTkKaWYgKDE9PT0xKSB7IC8vcXVpY2sgdGVzdAppZiAoekRhdGEuY2FzZUlkKSB7ICAvL0VSUzIwMDIwNSB6aXBwaSBjaGFuZ2VzIGRvYy53ZGRhdGEuaW5kZXhPZigiWF9aUEFQRVJfX0Nhc2VfX2MiKT4tMSB8fCAKICAgIGFsZXJ0KCJFUlMxOTA2MjQgbmVlZCBDYXNlIik7CiAgICBpZiAoekRhdGEuY2FzZUlkKSB7CiAgICAgICAgYWxlcnQoIkVSUzE5MDYyNC42NyIpOwogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIkNhc2UiKT4tMSkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgQ2FzZTogIiArIHpEYXRhLmNhc2VJZCk7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCB6RGF0YS5jYXNlSWQpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IENhc2UiKTsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgekRhdGEuY2FzZUlkPXpEYXRhLmNsaWVudENhc2UoZG9jLGFyck9mUGFpcnMpOwogICAgICAgIGFsZXJ0KCJDcmVhdGVkIENhc2Ugd2l0aCBJRDogIiArIHpEYXRhLmNhc2VJZCk7CiAgICAgICAgaWYgKHpEYXRhLmNhc2VJZCA9PSAibnVsbCIgfHwgekRhdGEuY2FzZUlkID09ICJORVciKSB6RGF0YS5jYXNlSWQ9bnVsbDsKICAgIH0KICAgIGFsZXJ0KCJFUlMxOTA2MjQuNzggaGF2ZSBhIGNhc2U/Iik7CiAgICBpZiAoekRhdGEuY2FzZUlkICYmIGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5jYXNlSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmNhc2VJZDsKfQp9CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIExlYWQgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5Ci8vIFRPRE8gRVJTMTkwNjI0IGZsaXAgdGhlIGlmIGxvZ2ljCmlmIChkb2Mud2RkYXRhLmluZGV4T2YoIlhfWlBBUEVSX19SZWZlcnJhbExlYWRfX2MiKT4tMSkgeyAvL0VSUzE5MDgwMyBUT0RPIHJldGhpbmsKICAgIGlmICghbGVhZElkIHx8IDAgPT09IGxlYWRJZC5sZW5ndGgpIHsKICAgICAgICBhbGVydCgiQEBAQCBjcmVhdGluZyBuZXcgTGVhZCIpOwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBsZWFkSWQ9ekRhdGEuY2xpZW50TGVhZChkb2MsYXJyT2ZQYWlycyk7CiAgICAgICAgYWxlcnQoIkNyZWF0ZWQgTGVhZCB3aXRoIElEOiAiICsgbGVhZElkKTsKICAgICAgICBpZiAobGVhZElkID09ICJudWxsIiB8fCBsZWFkSWQgPT0gIk5FVyIpIGxlYWRJZD1udWxsOwogICAgfSBlbHNlIHsKICAgICAgICBpZiAoekRhdGEuYXR0YWNoUmVjb3Jkcy5pbmRleE9mKCJMZWFkIik+LTEpIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIExlYWQ6ICIgKyBsZWFkSWQpOwogICAgICAgICAgICBhdHRhY2goZG9jLCBhdHRhY2hMYWJlbCwgbGVhZElkKTsKICAgICAgICB9CiAgICB9CiAgICBpZiAobGVhZElkICYmIGF0dGFjaFBhdGguaW5kZXhPZihsZWFkSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2xlYWRJZDsKfQoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBMZWFkIHJlY29yZCBpZiByZXF1aXJlZCAqLyAvL0VSUzE5MDYxOQp6RGF0YS5wYXRpZW50VHlwZT1YQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudFJlY29yZF9fYyIpOyAvL0VSUzE5MDgwNiBaUEFQRVJfXyBub3cgaW4gTVAKaWYgKCF6RGF0YS5wYXRpZW50VHlwZSkgekRhdGEucGF0aWVudFR5cGU9IkNvbnRhY3QiOyAvL0VSUzE5MDgwMiAjNjEyNzIKLy9hbGVydCgiRVJTMjAwMzA1LjExOSB6RGF0YS5wYXRpZW50SWQ9Iit6RGF0YS5wYXRpZW50SWQpOwppZiAoekRhdGEucGF0aWVudElkIHx8IFgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudCIpIHx8IHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYykgeyAvL0VSUzE5MDgwMyBUT0RPIHJldGhpbmsgdXNlIFggLy9FUlMyMDAyMDUgekRhdGEucGF0aWVudElkCiAgICB2YXIgZHEgPSB6RGF0YS5kcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOyAvL0VSUzE5MDgwMiBUT0RPIGRlZmluZSBiZXR0ZXIgaW4gekRhdGEKICAgIGlmICghekRhdGEucGF0aWVudElkKSB7CiAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3ICIrekRhdGEucGF0aWVudFR5cGUrIiBQYXRpZW50Iik7CiAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIC8vRVJTMTkwNzMwICM2MTI3MiBtaXNzaW5nIHRoZSBiYXNpY3MKICAgICAgICB2YXIgcD0iIjsgCiAgICAgICAgaWYgKCJBY2NvdW50Ij09PXpEYXRhLnBhdGllbnRUeXBlKSB7IC8vRVJTMTkwODAzCiAgICAgICAgICAgIHA9IlBlcnNvbiI7CiAgICAgICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJOYW1lIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYysiICIrekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJGaXJzdE5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKTsgCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiTGFzdE5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2gocCsiQmlydGhkYXRlIiwgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyk7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJGaXJzdE5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKTsgLy9YX1pQQVBFUl9fRmlyc3ROYW1lX19jIC8vRVJTMTkwODAzIFRPRE8gZ2V0IGNsZWFuZXIgIzYxMjcyCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiTGFzdE5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkJpcnRoZGF0ZSIsIHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpOwogICAgICAgIH0KICAgICAgICB6RGF0YS5wYXRpZW50SWQ9ekRhdGEuY2xpZW50UGF0aWVudChkb2MsYXJyT2ZQYWlycyk7CiAgICAgICAgYWxlcnQoIkNyZWF0ZWQgUGF0aWVudCB3aXRoIElEOiAiICsgekRhdGEucGF0aWVudElkKTsKICAgICAgICBpZiAoekRhdGEucGF0aWVudElkID09ICJudWxsIiB8fCB6RGF0YS5wYXRpZW50SWQgPT0gIk5FVyIpIHpEYXRhLnBhdGllbnRJZD1udWxsOwogICAgICAgIGVsc2UgeyAvL0VSUzE5MDczMCAjNjEyNzIgbGV2ZXJhZ2UgdGhlIG5ldyByZWNvcmQKICAgICAgICAgICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnBhdGllbnRJZDsKICAgICAgICAgICAgYWxlcnQoIkBAQEBAQEAgTkVXIFBBVElFTlQgQ1JFQVRFRCBXSVRIIElEOiAiICsgekRhdGEucGF0aWVudElkKTsgLy9FUlMxOTA4MDIgekRhdGEuY29udGFjdElkCiAgICAgICAgICAgIC8vIGNsZWFyIG91dCB0aGUgIk5ldyBQYXRpZW50IiBmaWVsZHMKICAgICAgICAgICAgaWYgKDE9PT0wKSB7IC8vRVJTMTkwODExICM2MTU3MCBjb21tZW50ZWQgb3V0IHNvIHRoYXQgcGF0aWVudCBpbmZvIGlzIGF2YWlsYWJsZSBmb3IgREUgdmFyaWFibGVzIGluIHppcHBpCiAgICAgICAgICAgIC8vYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fRmlyc3ROYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIC8vYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fTGFzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19CaXJ0aGRhdGVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19CaXJ0aGRhdGVfX2NfcmVhZGFibGUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIk5PTkUiICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKICAgICAgICAgICAgLy9FUlMxOTA4MDMgVE9ETyBoYW5kbGUgWlBBUEVSX18gcmVsYXRpb25zaGlwcyAvL0VSUzE5MDgxMSBkb3VibGUgdXAgZm9yIHNhZmV0eQogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLnBhdGllbnRJZCArIGRxICsgIik7ICIpOwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICIgIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIGRxICsgIik7ICIpOwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5wYXRpZW50SWQgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fUGF0aWVudEFjY291bnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jICsgIiAiICsgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jICsgZHEgKyAiKTsgIik7CiAgICAgICAgfQogICAgfSBlbHNlIHsKICAgICAgICAvL2FsZXJ0KCJFUlMyMDAzMDUuMTU5IGF0dGFjaCB0byBleGlzdGluZyBwYXRpZW50ICIrekRhdGEucGF0aWVudElkKTsKICAgICAgICAvL0VSUzIwMDMwOSBEb2N1bWVudF9NTlYgc2l0dXRhaW9uIHJlcXVpcmVzIGNhcmVmdWxsIHVzZQogICAgICAgIC8vaWYgKHpEYXRhLmF0dGFjaFJlY29yZHMuaW5kZXhPZigiUGF0aWVudCIpPT0tMSkgeyAvL0VSUzIwMDMwNSBDdXN0b20gU2V0dGluZ3MhISEhIFRPRE8gZG9jdW1lbnQgc2V0dGluZ3MgYmV0dGVyCiAgICAgICAgLy8gICAgekRhdGEuYXR0YWNoUmVjb3Jkcys9IixQYXRpZW50IjsKICAgICAgICAvLyAgICBhbGVydCgiRVJTMjAwMzA1IGFkZGluZyBQYXRpZW50Iik7CiAgICAgICAgLy99CiAgICAgICAgaWYgKHpEYXRhLmF0dGFjaFJlY29yZHMuaW5kZXhPZigiUGF0aWVudCIpPi0xKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBQYXRpZW50OiAiICsgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgIGlmICh6RGF0YS5wYXRpZW50VHlwZSA9PSAiQ29udGFjdCIpIHsgLy9FUlMxOTA3MzAgbG9va3VwIHRoZSBkYXRhIFRPRE8gcGVyc29uIGFjY291bnQ/IC8vRVJTMjAwMzA1IENvbnRhY3Qgd2FzICE9IEFjY291bnQKICAgICAgICAgICAgICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgekRhdGEucGF0aWVudFR5cGUsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICAgICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgICAgICAgICAgICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgICAgICAgICAgfSBlbHNlIGlmICh6RGF0YS5wYXRpZW50VHlwZSA9PSAiQWNjb3VudCIpIHsgLy9FUlMxOTA3MzAgbG9va3VwIHRoZSBkYXRhIFRPRE8gcGVyc29uIGFjY291bnQ/CiAgICAgICAgICAgICAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsIHpEYXRhLnBhdGllbnRUeXBlLCAiTmFtZSIsIG51bGwsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgICAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJOYW1lIiwgY29udGFjdEZsZHMpLnNwbGl0KCIgIilbMF07IC8vRVJTMTkwODAzIFRPRE8gZmluZCBhIGJldHRlciB3YXkKICAgICAgICAgICAgICAgIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTmFtZSIsIGNvbnRhY3RGbGRzKS5zcGxpdCgiICIpWzFdOwogICAgICAgICAgICB9CiAgICAgICAgICAgIC8vRVJTMjAwMjA1IFRPRE8gd2hhdCBpZiBjdXN0b20KICAgICAgICB9CiAgICB9CiAgICBpZiAoekRhdGEucGF0aWVudElkICYmIGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnBhdGllbnRJZDsKfQoKLy9jbGllbnRQYXRpZW50IGhhcyB0byBkbyB0aGlzCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gQ29udGFjdCByZWNvcmQgaWYgcmVxdWlyZWQgCmlmIChkb2Mud2RkYXRhLmluZGV4T2YoIlhfWlBBUEVSX19QYXRpZW50X19jIik+LTEpIHsgIC8vVE9ETyBkZWFsIHdpdGggcGVyc29uQWNjb3VudHMKICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBhIENvbnRhY3Q/IGNvbnRhY3RJZCA9ICIgKyBjb250YWN0SWQpOwogICAgaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewogICAgICAgIGF0dGFjaChkb2MsICJJbmRleGVkLSIgKyBkb2NUeXBlICsgIi0iICsgc3RhY2tJZCwgY29udGFjdElkKTsKICAgICAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKGNvbnRhY3RJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrY29udGFjdElkOwogICAgICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgY29udGFjdElkKTsKICAgICAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgIH0KICAgIGVsc2UgaWYgKHBhdGllbnRGaXJzdE5hbWUgJiYgcGF0aWVudEZpcnN0TmFtZS5sZW5ndGggPiAwIAogICAgICAgICYmIHBhdGllbnRMYXN0TmFtZSAmJiBwYXRpZW50TGFzdE5hbWUubGVuZ3RoID4gMCAKICAgICAgICAmJiBwYXRpZW50RE9CICYmIHBhdGllbnRET0IubGVuZ3RoID4gMCkgewogICAgICAgIHZhciBjdGNBcnJPZlBhaXJzID0gW107CiAgICAgICAgY3RjQXJyT2ZQYWlycy5wdXNoKCJGaXJzdE5hbWUiLCBwYXRpZW50Rmlyc3ROYW1lKTsKICAgICAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgcGF0aWVudExhc3ROYW1lKTsKICAgICAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkJpcnRoRGF0ZSIsIHBhdGllbnRET0IpOwogICAgICAgIGNvbnRhY3RJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDb250YWN0IiwgIkluZGV4ZWQtIiArIGRvY1R5cGUgKyAiLSIgKyBzdGFja0lkLCBjdGNBcnJPZlBhaXJzKTsKICAgICAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKGNvbnRhY3RJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrY29udGFjdElkOwogICAgICAgIGFsZXJ0KCJAQEBAQEBAIE5FVyBDT05UQUNUIENSRUFURUQgV0lUSCBJRDogIiArIGNvbnRhY3RJZCk7CiAgICAgICAgLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRmlyc3RfTmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfTGFzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9Eb0JfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKICAgICAgICAvLyBzZXQgdGhlIFBhdGllbnQgbG9va3VwIGZpZWxkcwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIGNvbnRhY3RJZCArIGRxICsgIik7ICIpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArIGRxICsgIik7ICIpOwogICAgfQp9CiovCgphcnJPZlBhaXJzID0gW107CmlmICh6RGF0YS5kb2NUeXBlKSB7IGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgekRhdGEuZG9jVHlwZSk7ICB9IC8vRVJTMTkwODEwIFBWMTkwODA4ICM1MTY3MAppZiAoekRhdGEucHJvdmlkZXJJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1Byb3ZpZGVyX19jIiwgekRhdGEucHJvdmlkZXJJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnByb3ZpZGVySWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnByb3ZpZGVySWQ7Cn0KYWxlcnQoIkVSUzE5MDgxMi4yMDAgekRhdGEucGF0aWVudElkPSIrekRhdGEucGF0aWVudElkKTsgLy9FUlMxOTA4MTIgIzYxNTExCmlmICh6RGF0YS5wYXRpZW50SWQpIHsKICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDAzIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudF9fYyIsIHpEYXRhLnBhdGllbnRJZCk7CiAgICBpZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwMSIpPT09MCkgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIiwgekRhdGEucGF0aWVudElkKTsKICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDBRIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUmVmZXJyYWxMZWFkX19jIiwgekRhdGEucGF0aWVudElkKTsgLy9FUlMxOTA4MDIgTGVhZAogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnBhdGllbnRJZDsKICAgIGlmICgxPT09MSkgeyAvL0VSUzE5MDgxMCBQVjE5MDgwOCBkYXRhIGVudHJ5IGZvciBuZXh0IHNwbGl0CiAgICAgICAgaWYgKHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpIHsgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0ZpcnN0TmFtZV9fYyIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOyB9CiAgICAgICAgaWYgKHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYykgeyBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fTGFzdE5hbWVfX2MiLCB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOyB9ICAKICAgICAgICBpZiAoekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYykgeyBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQmlydGhkYXRlX19jIiwgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyk7IH0KICAgIH0KfQppZiAoekRhdGEuY2FzZUlkKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsIHpEYXRhLmNhc2VJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLmNhc2VJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEuY2FzZUlkOwp9CmlmICh6RGF0YS5sZWFkSWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19SZWZlcnJhbExlYWRfX2MiLCB6RGF0YS5sZWFkSWQpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5sZWFkSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmxlYWRJZDsKfQppZiAoekRhdGEucmVmZXJyYWxJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1JlZmVycmFsX19jIiwgekRhdGEucmVmZXJyYWxJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnJlZmVycmFsSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnJlZmVycmFsSWQ7Cn0KCi8vZG8gbm90IGhhdmUgWF8gaW4gdGhlbSEgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzIwMDIwNSBzYXZlIGV2ZXJ0aGluZyBvbiB0aGUgcGFyZW50IHN0YWNrIFRPRE8gRElTQ1VTUyBhbmQgUkVWSUVXIGZsb3cKCi8vRVJTMTkwODE0IGp1c3QgdGhlIGNoaWxkICM2MTUxMSB1cGRhdGVTRlJlY29yZChkb2MsIHpEYXRhLnpwcywgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKLy9sZXQgdGhlIGRvY1NldCBkbyB0aGUgd29yayBhdHRhY2goZG9jLGF0dGFjaExhYmVsLCBzZlN0YWNrSWQpOwovL3ZhciByPXVwZGF0ZVNGUmVjb3JkKGRvYywiWlBBUEVSX196U3RhY2tfX2MiLHNmU3RhY2tJZCxbIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsekRhdGEuelBhcmVudElkXSk7IC8vRVJTMTkwODE0ICM2MTUxMSBvdmVycmlkZSB0aGUgc2F2ZS5qc3Agd29ya2Zsb3dzCmFsZXJ0KCJAQEBAIHVwZGF0ZWQgYW5kIGF0dGFjaGVkIHRvIHpTdGFjayBSZWNvcmQsIGlkID0gIiArIHNmU3RhY2tJZCArICI/PSIrekRhdGEuZ2V0U3RhY2tJZChkb2MpKyIgZGF0YT0iK2Fyck9mUGFpcnMpOwoKdmFyIGNoaWxkU3RhY2tJZD16RGF0YS5jbGllbnRDaGlsZFN0YWNrKGRvYyxhcnJPZlBhaXJzLHNmU3RhY2tJZCk7IC8vRVJTMTkwODEwIGNyZWF0ZSBjaGlsZCBzdGFjayBmb3Igc3BsaXQgRVJTMTkwODExIGNsaWVudENoaWxkU3RhY2sKaWYgKGNoaWxkU3RhY2tJZCkge2F0dGFjaFBhdGgrPSIsIitzZlN0YWNrSWQrIiwiK2NoaWxkU3RhY2tJZDsgYXR0YWNoUGF0aD1hdHRhY2hQYXRoLnJlcGxhY2UoIi8sPyIsIi8iKTsgfSAvL0VSUzE5MDgxMSAjNjE1NzAgY2xlYW4gdXAgLy9wYXJlbnQgc3RhY2sgdG9vCgovKiBNb3ZlIHRoZSBzcGxpdCBkb2N1bWVudCB0byBpdHMgcHJvY2Vzc2luZyBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGluZGV4ZWQgcGFnZXMgZG9jdW1lbnQgaW50byBuZXh0IHByb2Nlc3NpbmcgZm9sZGVyOiAiICsgbmV4dEZvbGRlcik7Ci8vRVJTMTkwNzMxICM2MTI3MiBtb3ZlRG9jdW1lbnQoZG9jLCIiLG5leHRGb2xkZXIpOwovL0VSUzE5MDczMSAjNjEyNzIgcmVsb2FkQnlCQVRFUyhkb2MsIG5leHRGb2xkZXIpOyAvL0VSUzE3MDQxMyAjMzUyOTEKLyogUGxhY2UgdGhlIHNwbGl0IGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlciAqLwppZiAoMT09MSkgeyAvL0VSUzIwMDIyMiBCQVRFUyBvayAvL0VSUzIwMDIwNSAjNjg4MjUgVE9ETyBDUk4gdG8gcmV2aWV3IG1vdmVEb2N1bWVudCBhbmQgaWYgd2UgbmVlZCBpdCB0aGVuIGZpeCB0aGUgeF9zdGFjayBwcm9ibGVtIHdpdGggaXQKICAgIGFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSBpbmRleGVkIHBhZ2VzIGRvY3VtZW50IGludG8gdGhlIGZpbmFsIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKICAgIG1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwp9CnVubG9ja0RvY3VtZW50KGRvYyk7CgphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsekRhdGEuc3RhZ2UpOwp2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MscGFnZVJhbmdlKTsKYWxlcnQoIkBAQEAgcGFnZUNvdW50ID0gIiArIHBhZ2VDb3VudCArIiB3ZXJlICIrIHpEYXRhLnN0YWdlKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwovL0VSUzE5MDYyMCBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgcGF0aWVudEZpcnN0TmFtZSArIHBhdGllbnRMYXN0TmFtZSArICIgLSAiICsgY29tcGFueUNvZGUgKyAiIC0gIiArIHN0YWNrSWQpOwphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsYXR0YWNoUGF0aCk7IC8vRVJTMTcwNjI4CmFyck9mUGFpcnMucHVzaCgiZGItY29tbWVudHMiLFgoZG9jLCJkYi1jb21tZW50cyIpKTsgLy9FUlMyMDAyMjYgIzY2Njg2IFRPRE8gbmV3bGluZXMgZXNjYXBlZCBpbiBwYWNrRGF0YSBDUk4/CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnRyYWNrKGRvYywgIkRvYyBJbmRleGVkIiwgIkRvY3VtZW50IHdpdGggSWQ6ICIgKyBkb2MuZGJJRCwgcGFnZUNvdW50KTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJuZXh0UGFnZSh+cmVhZHl+KTt1cGRhdGVERVN0YXR1cyh+aW5kZXhlZDoiICsgcGFnZVJhbmdlICsgIn4pOyIpOwoKLyogZW5kIG9mIHJ1bGUgKi8="},"ordinal":17}

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

if (!zData.patientId && X(doc,"X_patientId")) zData.patientId=X(doc,"X_patientId");
if (!zData.patientId && X(doc,"X_ZPAPER__Patient__c")) zData.patientId=X(doc,"X_ZPAPER__Patient__c"); //ERS200205 keep track of IDs better
//alert("ERS200305.12 patientId="+zData.patientId+ " from "+X(doc,"X_Program_Member_MVN__c"));

if (!zData.caseId) zData.caseId=X(doc,"X_ZPAPER__Case__c"); ////ERS200205 zippi changes


/* Clear the trigger that invoked this rule */
//ERS170909 zData.clearTriggerCondition(doc,"X_buttonAction");
var indexInitialized = X(doc,"X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
    stackId = new Date().getTime() + "";
    stackFolder = stackId + "-STACK";
    zData.initializeStack(doc,stackFolder, companyCode, stackId);
}

zData.getDataEntryFields(doc);
//alert("ERS200305.28 patientId="+zData.patientId+ " from "+X(doc,"X_Program_Member_MVN__c"));

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
//alert("ERS200305.64 patientId="+zData.patientId+ " from "+X(doc,"X_Program_Member_MVN__c"));

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
//alert("ERS200305.77 patientId="+zData.patientId+ " from "+X(doc,"X_Program_Member_MVN__c"));

//ERS190620 use a setting to determine which lookups we attach to
/* Attach the split document to Case record if required */ //ERS190619
if (1===1) { //quick test
if (zData.caseId) {  //ERS200205 zippi changes doc.wddata.indexOf("X_ZPAPER__Case__c")>-1 || 
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
if (!zData.patientType) zData.patientType="Contact"; //ERS190802 #61272
//alert("ERS200305.119 zData.patientId="+zData.patientId);
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
        //alert("ERS200305.159 attach to existing patient "+zData.patientId);
        //ERS200309 Document_MNV situtaion requires carefull use
        //if (zData.attachRecords.indexOf("Patient")==-1) { //ERS200305 Custom Settings!!!! TODO document settings better
        //    zData.attachRecords+=",Patient";
        //    alert("ERS200305 adding Patient");
        //}
        if (zData.attachRecords.indexOf("Patient")>-1) {
            alert("@@@@ attaching to existing Patient: " + zData.patientId);
            attach(doc, attachLabel, zData.patientId);
            if (zData.patientType == "Contact") { //ERS190730 lookup the data TODO person account? //ERS200305 Contact was != Account
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
if (zData.leadId) {
    arrOfPairs.push("ZPAPER__ReferralLead__c", zData.leadId);
    if (attachPath.indexOf(zData.leadId)==-1) attachPath+=","+zData.leadId;
}
if (zData.referralId) {
    arrOfPairs.push("ZPAPER__Referral__c", zData.referralId);
    if (attachPath.indexOf(zData.referralId)==-1) attachPath+=","+zData.referralId;
}

//do not have X_ in them! updateDB(doc,arrOfPairs); //ERS200205 save everthing on the parent stack TODO DISCUSS and REVIEW flow

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
if (1==1) { //ERS200222 BATES ok //ERS200205 #68825 TODO CRN to review moveDocument and if we need it then fix the x_stack problem with it
    alert("@@@@@@ Moving the indexed pages document into the final stack folder: " + stackFolder);
    moveDocument(doc,"",stackFolder);
}
unlockDocument(doc);

arrOfPairs = [];
arrOfPairs=zData.addStage(doc,arrOfPairs,zData.stage);
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
