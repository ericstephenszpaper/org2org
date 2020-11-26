<!--
// Name: Index Page
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV201125 updated static resources
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-11-25 17:17:31","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7Ci8vRVJTMTkwNzMwICM2MTI3MiB1cGRhdGVkIGJ1dHRvbiB2YWxpZGF0aW9uIGluIHRoZSBBY3Rpb25zKiBEZXRhaWxzIGFyZWEKCnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CmlmICghc3RhY2tJZCkgc3RhY2tJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7IC8vRVJTMTkwNjI0IEhBQ0s/CnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwp6RGF0YS5zdGFnZT0iSW5kZXhlZCI7IC8vRVJTMTkwNjIwCgovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCi8vRVJTMTcwOTA5IHpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbihkb2MsIlhfYnV0dG9uQWN0aW9uIik7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwppZiAoIWluZGV4SW5pdGlhbGl6ZWQgfHwgMCA9PT0gaW5kZXhJbml0aWFsaXplZC5sZW5ndGgpIHsKICAgIHN0YWNrSWQgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CiAgICB6RGF0YS5pbml0aWFsaXplU3RhY2soZG9jLHN0YWNrRm9sZGVyLCBjb21wYW55Q29kZSwgc3RhY2tJZCk7Cn0KCnpEYXRhLmdldERhdGFFbnRyeUZpZWxkcyhkb2MpOwovLyBEb2VzIHRoZSB1c2VyIHdhbnQgdG8gYXR0YWNoIGluZGV4ZWQgcGFnZXMgdG8gQ2FzZT8KLy92YXIgY2FzZUlkID0gWChkb2MsICJYX1pQQVBFUl9fQ2FzZV9fYyIpOwovL3ZhciBjb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7Ci8vdmFyIHBhdGllbnRJZD1jb250YWN0SWQ7IC8vVE9ETwovL3ZhciBwcm92aWRlcklkID0gWChkb2MsICJYX1pQQVBFUl9fUHJvdmlkZXJfX2MiKTsKLy92YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwovL3ZhciBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwovL3ZhciBwYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7CgovLyBHZXQgdGhlIGRvY3VtZW50IHR5cGUgKHdpbGwgYmUgdXNlZCB0byByb3V0ZSB0byBuZXh0IGZvbGRlcikKLy92YXIgZG9jVHlwZSA9IFgoZG9jLCAiWF9Eb2N1bWVudF9UeXBlX19jIik7CnZhciBuZXh0Rm9sZGVyID0gIjIwNTAwVHJpYWdlLVMyIjsgICAgICAgICAgICAgIC8vIE90aGVyIGZvbGRlciBpcyB0aGUgZGVmYXVsdAp2YXIgcHJldkluZGV4UGFnZXMgPSBYKGRvYywgIlhfaW5kZXhlZFBhZ2VzIik7CnZhciBjdXJJbmRleFBhZ2VzID0gWChkb2MsICJYX2lkeFBhZ2VzIik7CmlmIChwcmV2SW5kZXhQYWdlcyAmJiBwcmV2SW5kZXhQYWdlcy5sZW5ndGggPiAwICYmIGN1ckluZGV4UGFnZXMgJiYgY3VySW5kZXhQYWdlcy5sZW5ndGggPiAwKSB7CiAgICBwcmV2SW5kZXhQYWdlcyArPSAiLCI7Cn0KY3VySW5kZXhQYWdlcyA9IHByZXZJbmRleFBhZ2VzICsgY3VySW5kZXhQYWdlczsKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4ZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwovL21vdmUgdG8gYWZ0ZXIgdXBkYXRlcyBhcnJPZlBhaXJzPXpEYXRhLmFkZFN0YWdlKGRvYyxhcnJPZlBhaXJzLCJJbmRleGVkIik7CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBzZlN0YWNrSWQ9ekRhdGEuZ2V0U3RhY2tJZChkb2MpOwphbGVydCgiQEBAQEBAIEN1cnJlbnRseSBhdHRhY2hlZCB0byBaUEFQRVJfX3pTdGFja19fYyB3aXRoIElEOiAiICsgc2ZTdGFja0lkKTsKekRhdGEuelBhcmVudElkPWRvYy5kYklEOyAvL0VSUzE5MDgxNCB0byBvdmVyc2lkZSB0aGUgc2F2ZS5qc3Agd29ya2Zsb3dzCgovKiBTUExJVCBPRkYgTkVXIFNOSVBQRVQgSEVSRSAqLwp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKdmFyIG5ld0lkPXNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJpbmRleCIsIHBhZ2VSYW5nZSk7CmFsZXJ0KCJFUlMxOTA2MjQgbmV3SWQ9IituZXdJZCk7Ci8vKgovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCi8vKgoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBhIG5ldyBDYXNlIHJlY29yZCwgaWYgaXQgd2Fzbid0IHBhc3NlZCBpbiAqLwovL3ZhciBwcmlvcml0eT1YKGRvYywiWF9aUEFQRVJfX1ByaW9yaXR5X19jIik7IC8vRVJTMTcwNjI2CnZhciBsYWJlbDA9IiI7CnZhciB0cmlhZ2VUeXBlPWRvYy5kb2NUeXBlOwoKdmFyIGF0dGFjaFBhdGggPSBYKGRvYywiWF9hdHRhY2hlZFRvIik7CnZhciBhdHRhY2hMYWJlbD16RGF0YS5jbGllbnRGaWxlKGRvYywiSW5kZXhlZCIpOyAvLyJJbmRleGVkICIgKyBmb3JtYXROb3c7CmFsZXJ0KCJFUlMxOTA2MjQgYXR0YWNoTGFiZWw9IithdHRhY2hMYWJlbCk7CgovL0VSUzE5MDYyMCB1c2UgYSBzZXR0aW5nIHRvIGRldGVybWluZSB3aGljaCBsb29rdXBzIHdlIGF0dGFjaCB0bwovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENhc2UgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5CmFsZXJ0KCJAQEBAQFBWMjAxMTE2IFhfWlBBUEVSX19DYXNlX19jIiArIFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKSk7CmFsZXJ0KCJAQEBAQFBWMjAxMTE2IHpEYXRhLmNhc2VJZCIgKyB6RGF0YS5jYXNlSWQpOwphbGVydCgiQEBAQEBQVjIwMTExNiBkb2Mud2RkYXRhIiArIGRvYy53ZGRhdGEpOwovL2lmIChkb2Mud2RkYXRhLmluZGV4T2YoIlhfWlBBUEVSX19DYXNlX19jIik+LTEpICBQVjIwMTExNSBpdCBkb2Vzbid0IHdvcmsgaW4gemlwcGkKIGlmKFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKSl7CiAgICBhbGVydCgiRVJTMTkwNjI0IG5lZWQgQ2FzZSIpOwogICAgaWYgKHpEYXRhLmNhc2VJZCkgewogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQuNjciKTsKICAgICAgICBpZiAoekRhdGEuYXR0YWNoUmVjb3Jkcy5pbmRleE9mKCJDYXNlIik+LTEpIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIENhc2U6ICIgKyB6RGF0YS5jYXNlSWQpOwogICAgICAgICAgICBhdHRhY2goZG9jLCBhdHRhY2hMYWJlbCwgekRhdGEuY2FzZUlkKTsKICAgICAgICB9CiAgICB9IGVsc2UgewogICAgICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyBDYXNlIik7CiAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIHpEYXRhLmNhc2VJZD16RGF0YS5jbGllbnRDYXNlKGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBDYXNlIHdpdGggSUQ6ICIgKyB6RGF0YS5jYXNlSWQpOwogICAgICAgIGlmICh6RGF0YS5jYXNlSWQgPT0gIm51bGwiIHx8IHpEYXRhLmNhc2VJZCA9PSAiTkVXIikgekRhdGEuY2FzZUlkPW51bGw7CiAgICB9CiAgICBhbGVydCgiRVJTMTkwNjI0Ljc4IGhhdmUgYSBjYXNlPyIpOwogICAgaWYgKHpEYXRhLmNhc2VJZCAmJiBhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEuY2FzZUlkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5jYXNlSWQ7Cn0KCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gTGVhZCByZWNvcmQgaWYgcmVxdWlyZWQgKi8gLy9FUlMxOTA2MTkKLy8gVE9ETyBFUlMxOTA2MjQgZmxpcCB0aGUgaWYgbG9naWMKaWYgKGRvYy53ZGRhdGEuaW5kZXhPZigiWF9aUEFQRVJfX1JlZmVycmFsTGVhZF9fYyIpPi0xKSB7IC8vRVJTMTkwODAzIFRPRE8gcmV0aGluawogICAgaWYgKCFsZWFkSWQgfHwgMCA9PT0gbGVhZElkLmxlbmd0aCkgewogICAgICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyBMZWFkIik7CiAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIGxlYWRJZD16RGF0YS5jbGllbnRMZWFkKGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBMZWFkIHdpdGggSUQ6ICIgKyBsZWFkSWQpOwogICAgICAgIGlmIChsZWFkSWQgPT0gIm51bGwiIHx8IGxlYWRJZCA9PSAiTkVXIikgbGVhZElkPW51bGw7CiAgICB9IGVsc2UgewogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIkxlYWQiKT4tMSkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgTGVhZDogIiArIGxlYWRJZCk7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCBsZWFkSWQpOwogICAgICAgIH0KICAgIH0KICAgIGlmIChsZWFkSWQgJiYgYXR0YWNoUGF0aC5pbmRleE9mKGxlYWRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrbGVhZElkOwp9CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIExlYWQgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5CnpEYXRhLnBhdGllbnRUeXBlPVhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50UmVjb3JkX19jIik7IC8vRVJTMTkwODA2IFpQQVBFUl9fIG5vdyBpbiBNUAppZiAoIXpEYXRhLnBhdGllbnRUeXBlKSB6RGF0YS5wYXRpZW50VHlwZT0iQ29udGFjdCI7IC8vRVJTMTkwODAyICM2MTI3MgppZiAoWChkb2MsIlhfWlBBUEVSX19QYXRpZW50IikgfHwgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKSB7IC8vRVJTMTkwODAzIFRPRE8gcmV0aGluayB1c2UgWAogICAgdmFyIGRxID0gekRhdGEuZHEgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDM0KTsgLy9FUlMxOTA4MDIgVE9ETyBkZWZpbmUgYmV0dGVyIGluIHpEYXRhCiAgICBpZiAoIXpEYXRhLnBhdGllbnRJZCkgewogICAgICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyAiK3pEYXRhLnBhdGllbnRUeXBlKyIgUGF0aWVudCIpOwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAvL0VSUzE5MDczMCAjNjEyNzIgbWlzc2luZyB0aGUgYmFzaWNzCiAgICAgICAgdmFyIHA9IiI7CiAgICAgICAgaWYgKCJBY2NvdW50Ij09PXpEYXRhLnBhdGllbnRUeXBlKSB7IC8vRVJTMTkwODAzCiAgICAgICAgICAgIHA9IlBlcnNvbiI7CiAgICAgICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJOYW1lIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYysiICIrekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJGaXJzdE5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaChwKyJCaXJ0aGRhdGUiLCB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOyAvL1hfWlBBUEVSX19GaXJzdE5hbWVfX2MgLy9FUlMxOTA4MDMgVE9ETyBnZXQgY2xlYW5lciAjNjEyNzIKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiQmlydGhkYXRlIiwgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyk7CiAgICAgICAgfQogICAgICAgIHpEYXRhLnBhdGllbnRJZD16RGF0YS5jbGllbnRQYXRpZW50KGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ3JlYXRlZCBQYXRpZW50IHdpdGggSUQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgIGlmICh6RGF0YS5wYXRpZW50SWQgPT0gIm51bGwiIHx8IHpEYXRhLnBhdGllbnRJZCA9PSAiTkVXIikgekRhdGEucGF0aWVudElkPW51bGw7CiAgICAgICAgZWxzZSB7IC8vRVJTMTkwNzMwICM2MTI3MiBsZXZlcmFnZSB0aGUgbmV3IHJlY29yZAogICAgICAgICAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucGF0aWVudElkOwogICAgICAgICAgICBhbGVydCgiQEBAQEBAQCBORVcgUEFUSUVOVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOyAvL0VSUzE5MDgwMiB6RGF0YS5jb250YWN0SWQKICAgICAgICAgICAgLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwogICAgICAgICAgICBpZiAoMT09PTApIHsgLy9FUlMxOTA4MTEgIzYxNTcwIGNvbW1lbnRlZCBvdXQgc28gdGhhdCBwYXRpZW50IGluZm8gaXMgYXZhaWxhYmxlIGZvciBERSB2YXJpYWJsZXMgaW4gemlwcGkKICAgICAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19GaXJzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19MYXN0TmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgICAgICAvL2FkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgfQogICAgICAgICAgICAvLyBzZXQgdGhlIFBhdGllbnQgbG9va3VwIGZpZWxkcwogICAgICAgICAgICAvL0VSUzE5MDgwMyBUT0RPIGhhbmRsZSBaUEFQRVJfXyByZWxhdGlvbnNoaXBzIC8vRVJTMTkwODExIGRvdWJsZSB1cCBmb3Igc2FmZXR5CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEucGF0aWVudElkICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jICsgIiAiICsgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLnBhdGllbnRJZCArIGRxICsgIik7ICIpOwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50QWNjb3VudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKICAgICAgICB9CiAgICB9IGVsc2UgewogICAgICAgIGlmICh6RGF0YS5hdHRhY2hSZWNvcmRzLmluZGV4T2YoIlBhdGllbnQiKT4tMSkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgUGF0aWVudDogIiArIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICBpZiAoMT09PTEgfHwgekRhdGEucGF0aWVudFR5cGUgIT0gIkFjY291bnQiKSB7IC8vRVJTMTkwNzMwIGxvb2t1cCB0aGUgZGF0YSBUT0RPIHBlcnNvbiBhY2NvdW50PwogICAgICAgICAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgICAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgICAgICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgICAgICAgICB9IGVsc2UgaWYgKHpEYXRhLnBhdGllbnRUeXBlID09ICJBY2NvdW50IikgeyAvL0VSUzE5MDczMCBsb29rdXAgdGhlIGRhdGEgVE9ETyBwZXJzb24gYWNjb3VudD8KICAgICAgICAgICAgICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgekRhdGEucGF0aWVudFR5cGUsICJOYW1lIiwgbnVsbCwgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIk5hbWUiLCBjb250YWN0Rmxkcykuc3BsaXQoIiAiKVswXTsgLy9FUlMxOTA4MDMgVE9ETyBmaW5kIGEgYmV0dGVyIHdheQogICAgICAgICAgICAgICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJOYW1lIiwgY29udGFjdEZsZHMpLnNwbGl0KCIgIilbMV07CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICBpZiAoekRhdGEucGF0aWVudElkICYmIGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnBhdGllbnRJZDsKfQogICAgaWYoekRhdGEucGF0aWVudElkKXsgLy9QVjIwMTExNiB0byBhdHRhY2ggdG8gcGF0aWVudAogICAgYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIHpEYXRhLnBhdGllbnRJZCk7Cn0KLy9jbGllbnRQYXRpZW50IGhhcyB0byBkbyB0aGlzCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gQ29udGFjdCByZWNvcmQgaWYgcmVxdWlyZWQKaWYgKGRvYy53ZGRhdGEuaW5kZXhPZigiWF9aUEFQRVJfX1BhdGllbnRfX2MiKT4tMSkgeyAgLy9UT0RPIGRlYWwgd2l0aCBwZXJzb25BY2NvdW50cwogICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGEgQ29udGFjdD8gY29udGFjdElkID0gIiArIGNvbnRhY3RJZCk7CiAgICBpZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CiAgICAgICAgYXR0YWNoKGRvYywgIkluZGV4ZWQtIiArIGRvY1R5cGUgKyAiLSIgKyBzdGFja0lkLCBjb250YWN0SWQpOwogICAgICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7CiAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCBjb250YWN0SWQpOwogICAgICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgfQogICAgZWxzZSBpZiAocGF0aWVudEZpcnN0TmFtZSAmJiBwYXRpZW50Rmlyc3ROYW1lLmxlbmd0aCA+IDAKICAgICAgICAmJiBwYXRpZW50TGFzdE5hbWUgJiYgcGF0aWVudExhc3ROYW1lLmxlbmd0aCA+IDAKICAgICAgICAmJiBwYXRpZW50RE9CICYmIHBhdGllbnRET0IubGVuZ3RoID4gMCkgewogICAgICAgIHZhciBjdGNBcnJPZlBhaXJzID0gW107CiAgICAgICAgY3RjQXJyT2ZQYWlycy5wdXNoKCJGaXJzdE5hbWUiLCBwYXRpZW50Rmlyc3ROYW1lKTsKICAgICAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgcGF0aWVudExhc3ROYW1lKTsKICAgICAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkJpcnRoRGF0ZSIsIHBhdGllbnRET0IpOwogICAgICAgIGNvbnRhY3RJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDb250YWN0IiwgIkluZGV4ZWQtIiArIGRvY1R5cGUgKyAiLSIgKyBzdGFja0lkLCBjdGNBcnJPZlBhaXJzKTsKICAgICAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKGNvbnRhY3RJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrY29udGFjdElkOwogICAgICAgIGFsZXJ0KCJAQEBAQEBAIE5FVyBDT05UQUNUIENSRUFURUQgV0lUSCBJRDogIiArIGNvbnRhY3RJZCk7CiAgICAgICAgLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRmlyc3RfTmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfTGFzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9Eb0JfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKICAgICAgICAvLyBzZXQgdGhlIFBhdGllbnQgbG9va3VwIGZpZWxkcwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIGNvbnRhY3RJZCArIGRxICsgIik7ICIpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArIGRxICsgIik7ICIpOwogICAgfQp9CiovCgphcnJPZlBhaXJzID0gW107CmlmICh6RGF0YS5kb2NUeXBlKSB7IGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgekRhdGEuZG9jVHlwZSk7ICB9IC8vRVJTMTkwODEwIFBWMTkwODA4ICM1MTY3MAppZiAoekRhdGEucHJvdmlkZXJJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1Byb3ZpZGVyX19jIiwgekRhdGEucHJvdmlkZXJJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnByb3ZpZGVySWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnByb3ZpZGVySWQ7Cn0KYWxlcnQoIkVSUzE5MDgxMi4yMDAgekRhdGEucGF0aWVudElkPSIrekRhdGEucGF0aWVudElkKTsgLy9FUlMxOTA4MTIgIzYxNTExCmlmICh6RGF0YS5wYXRpZW50SWQpIHsKICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDAzIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudF9fYyIsIHpEYXRhLnBhdGllbnRJZCk7CiAgICBpZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwMSIpPT09MCkgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIiwgekRhdGEucGF0aWVudElkKTsKICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDBRIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUmVmZXJyYWxMZWFkX19jIiwgekRhdGEucGF0aWVudElkKTsgLy9FUlMxOTA4MDIgTGVhZAogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnBhdGllbnRJZDsKICAgIGlmICgxPT09MSkgeyAvL0VSUzE5MDgxMCBQVjE5MDgwOCBkYXRhIGVudHJ5IGZvciBuZXh0IHNwbGl0CiAgICAgICAgaWYgKHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpIHsgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0ZpcnN0TmFtZV9fYyIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOyB9CiAgICAgICAgaWYgKHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYykgeyBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fTGFzdE5hbWVfX2MiLCB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOyB9ICAKICAgICAgICBpZiAoekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYykgeyBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQmlydGhkYXRlX19jIiwgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyk7IH0KICAgIH0KfQppZiAoekRhdGEuY2FzZUlkKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsIHpEYXRhLmNhc2VJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLmNhc2VJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEuY2FzZUlkOwp9CmlmICh6RGF0YS5sZWFkSWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19SZWZlcnJhbExlYWRfX2MiLCB6RGF0YS5sZWFkSWQpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5sZWFkSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmxlYWRJZDsKfQppZiAoekRhdGEucmVmZXJyYWxJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1JlZmVycmFsX19jIiwgekRhdGEucmVmZXJyYWxJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLnJlZmVycmFsSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnJlZmVycmFsSWQ7Cn0KCi8vRVJTMTkwODE0IGp1c3QgdGhlIGNoaWxkICM2MTUxMSB1cGRhdGVTRlJlY29yZChkb2MsIHpEYXRhLnpwcywgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsKLy9sZXQgdGhlIGRvY1NldCBkbyB0aGUgd29yayBhdHRhY2goZG9jLGF0dGFjaExhYmVsLCBzZlN0YWNrSWQpOwovL3ZhciByPXVwZGF0ZVNGUmVjb3JkKGRvYywiWlBBUEVSX196U3RhY2tfX2MiLHNmU3RhY2tJZCxbIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsekRhdGEuelBhcmVudElkXSk7IC8vRVJTMTkwODE0ICM2MTUxMSBvdmVycmlkZSB0aGUgc2F2ZS5qc3Agd29ya2Zsb3dzCmFsZXJ0KCJAQEBAIHVwZGF0ZWQgYW5kIGF0dGFjaGVkIHRvIHpTdGFjayBSZWNvcmQsIGlkID0gIiArIHNmU3RhY2tJZCArICI/PSIrekRhdGEuZ2V0U3RhY2tJZChkb2MpKyIgZGF0YT0iK2Fyck9mUGFpcnMpOwoKdmFyIGNoaWxkU3RhY2tJZD16RGF0YS5jbGllbnRDaGlsZFN0YWNrKGRvYyxhcnJPZlBhaXJzLHNmU3RhY2tJZCk7IC8vRVJTMTkwODEwIGNyZWF0ZSBjaGlsZCBzdGFjayBmb3Igc3BsaXQgRVJTMTkwODExIGNsaWVudENoaWxkU3RhY2sKaWYgKGNoaWxkU3RhY2tJZCkge2F0dGFjaFBhdGgrPSIsIitzZlN0YWNrSWQrIiwiK2NoaWxkU3RhY2tJZDsgYXR0YWNoUGF0aD1hdHRhY2hQYXRoLnJlcGxhY2UoIi8sPyIsIi8iKTsgfSAvL0VSUzE5MDgxMSAjNjE1NzAgY2xlYW4gdXAgLy9wYXJlbnQgc3RhY2sgdG9vCgovKiBNb3ZlIHRoZSBzcGxpdCBkb2N1bWVudCB0byBpdHMgcHJvY2Vzc2luZyBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGluZGV4ZWQgcGFnZXMgZG9jdW1lbnQgaW50byBuZXh0IHByb2Nlc3NpbmcgZm9sZGVyOiAiICsgbmV4dEZvbGRlcik7Ci8vRVJTMTkwNzMxICM2MTI3MiBtb3ZlRG9jdW1lbnQoZG9jLCIiLG5leHRGb2xkZXIpOwovL0VSUzE5MDczMSAjNjEyNzIgcmVsb2FkQnlCQVRFUyhkb2MsIG5leHRGb2xkZXIpOyAvL0VSUzE3MDQxMyAjMzUyOTEKLyogUGxhY2UgdGhlIHNwbGl0IGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgaW5kZXhlZCBwYWdlcyBkb2N1bWVudCBpbnRvIHRoZSBmaW5hbCBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7Cm1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwp1bmxvY2tEb2N1bWVudChkb2MpOwoKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzPXpEYXRhLmFkZFN0YWdlKGRvYyxhcnJPZlBhaXJzLHpEYXRhLnN0YWdlKTsKdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLHBhZ2VSYW5nZSk7CmFsZXJ0KCJAQEBAIHBhZ2VDb3VudCA9ICIgKyBwYWdlQ291bnQgKyIgd2VyZSAiKyB6RGF0YS5zdGFnZSk7CmFyck9mUGFpcnMucHVzaCgiWF9wYWdlcyIscGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1wYWdlcyIscGFnZUNvdW50KTsKLy9FUlMxOTA2MjAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHBhdGllbnRGaXJzdE5hbWUgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIGNvbXBhbnlDb2RlICsgIiAtICIgKyBzdGFja0lkKTsKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLGF0dGFjaFBhdGgpOyAvL0VSUzE3MDYyOAp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp0cmFjayhkb2MsICJEb2MgSW5kZXhlZCIsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHBhZ2VDb3VudCk7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibmV4dFBhZ2UofnJlYWR5fik7dXBkYXRlREVTdGF0dXMofmluZGV4ZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKCi8qIGVuZCBvZiBydWxlICovCgo="},"ordinal":8}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Index Rule Fired @@@#");
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
alert("@@@@@PV201116 X_ZPAPER__Case__c" + X(doc, "X_ZPAPER__Case__c"));
alert("@@@@@PV201116 zData.caseId" + zData.caseId);
alert("@@@@@PV201116 doc.wddata" + doc.wddata);
//if (doc.wddata.indexOf("X_ZPAPER__Case__c")>-1)  PV201115 it doesn't work in zippi
 if(X(doc, "X_ZPAPER__Case__c")){
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
        }
    }
    if (zData.patientId && attachPath.indexOf(zData.patientId)==-1) attachPath+=","+zData.patientId;
}
    if(zData.patientId){ //PV201116 to attach to patient
    attach(doc, attachLabel, zData.patientId);
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
