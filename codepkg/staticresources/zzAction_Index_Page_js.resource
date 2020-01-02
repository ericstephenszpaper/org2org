<!--
// Name: Index Page
// Committer: andrew@zpaper.com
// Update: updating static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-01-02 16:09:02","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAovL0VSUzE5MDczMCAjNjEyNzIgdXBkYXRlZCBidXR0b24gdmFsaWRhdGlvbiBpbiB0aGUgQWN0aW9ucyogRGV0YWlscyBhcmVhCgp2YXIgc3RhY2tJZCA9IFgoZG9jLCAiWF9zdGFjayIpOwppZiAoIXN0YWNrSWQpIHN0YWNrSWQ9ekRhdGEuZ2V0U3RhY2tJZChkb2MpOyAvL0VSUzE5MDYyNCBIQUNLPwp2YXIgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CnZhciBjb21wYW55Q29kZSA9IGRvYy5kZWxpdmVyZWRUbzsKekRhdGEuc3RhZ2U9IkluZGV4ZWQiOyAvL0VSUzE5MDYyMAoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwovL0VSUzE3MDkwOSB6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24oZG9jLCJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CiAgICBzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIHpEYXRhLmluaXRpYWxpemVTdGFjayhkb2Msc3RhY2tGb2xkZXIsIGNvbXBhbnlDb2RlLCBzdGFja0lkKTsKfQoKekRhdGEuZ2V0RGF0YUVudHJ5RmllbGRzKGRvYyk7CgovLyBHZXQgdGhlIGRvY3VtZW50IHR5cGUgKHdpbGwgYmUgdXNlZCB0byByb3V0ZSB0byBuZXh0IGZvbGRlcikKLy92YXIgZG9jVHlwZSA9IFgoZG9jLCAiWF9Eb2N1bWVudF9UeXBlX19jIik7CnZhciBuZXh0Rm9sZGVyID0gIjIwNTAwVHJpYWdlLVMyIjsgICAgICAgICAgICAgIC8vIE90aGVyIGZvbGRlciBpcyB0aGUgZGVmYXVsdAp2YXIgcHJldkluZGV4UGFnZXMgPSBYKGRvYywgIlhfaW5kZXhlZFBhZ2VzIik7CnZhciBjdXJJbmRleFBhZ2VzID0gWChkb2MsICJYX2lkeFBhZ2VzIik7CmlmIChwcmV2SW5kZXhQYWdlcyAmJiBwcmV2SW5kZXhQYWdlcy5sZW5ndGggPiAwICYmIGN1ckluZGV4UGFnZXMgJiYgY3VySW5kZXhQYWdlcy5sZW5ndGggPiAwKSB7CiAgICBwcmV2SW5kZXhQYWdlcyArPSAiLCI7Cn0KY3VySW5kZXhQYWdlcyA9IHByZXZJbmRleFBhZ2VzICsgY3VySW5kZXhQYWdlczsKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4ZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwovL21vdmUgdG8gYWZ0ZXIgdXBkYXRlcyBhcnJPZlBhaXJzPXpEYXRhLmFkZFN0YWdlKGRvYyxhcnJPZlBhaXJzLCJJbmRleGVkIik7CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBzZlN0YWNrSWQ9WChkb2MsJ1hfc2ZTdGFja0lkJyk7CmlmKCFzZlN0YWNrSWQpewogIHNmU3RhY2tJZD16RGF0YS5nZXRTdGFja0lkKGRvYyk7ICAKfQp6RGF0YS56UGFyZW50SWQ9ZG9jLmRiSUQ7IC8vUFYxOTExMDUKYWxlcnQoIkBAQEBAQCBDdXJyZW50bHkgYXR0YWNoZWQgdG8gWlBBUEVSX196U3RhY2tfX2Mgd2l0aCBJRDogIiArIHNmU3RhY2tJZCk7Ci8qIFNQTElUIE9GRiBORVcgU05JUFBFVCBIRVJFICovCnZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwp2YXIgbmV3SWQ9c3BsaXREb2N1bWVudEZvckluZGV4KGRvYywgImluZGV4IiwgcGFnZVJhbmdlKTsKYWxlcnQoIkVSUzE5MDYyNCBuZXdJZD0iK25ld0lkKTsKLy8qCi8qIEFGVEVSIFRISVMgUE9JTlQsIFRIRSBET0MgV0lMTCBIT0xEIERBVEEgRk9SIE5FVyBTTklQUEVULCBOT1QgVEhFIFNUQUNLIFNOSVBQRVQgKi8KLy8qCgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIGEgbmV3IENhc2UgcmVjb3JkLCBpZiBpdCB3YXNuJ3QgcGFzc2VkIGluICovCi8vdmFyIHByaW9yaXR5PVgoZG9jLCJYX1pQQVBFUl9fUHJpb3JpdHlfX2MiKTsgLy9FUlMxNzA2MjYKdmFyIGxhYmVsMD0iIjsKdmFyIHRyaWFnZVR5cGU9ZG9jLmRvY1R5cGU7Cgp2YXIgYXR0YWNoUGF0aCA9IFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsKdmFyIGF0dGFjaExhYmVsPXpEYXRhLmNsaWVudEZpbGUoZG9jLCJJbmRleGVkIik7IC8vIkluZGV4ZWQgIiArIGZvcm1hdE5vdzsKYWxlcnQoIkVSUzE5MDYyNCBhdHRhY2hMYWJlbD0iK2F0dGFjaExhYmVsKTsKCgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIExlYWQgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5Ci8vIFRPRE8gRVJTMTkwNjI0IGZsaXAgdGhlIGlmIGxvZ2ljCmlmIChkb2Mud2RkYXRhLmluZGV4T2YoIlhfWlBBUEVSX19SZWZlcnJhbExlYWRfX2MiKT4tMSkgeyAvL0VSUzE5MDgwMyBUT0RPIHJldGhpbmsKICAgIGlmICghbGVhZElkIHx8IDAgPT09IGxlYWRJZC5sZW5ndGgpIHsKICAgICAgICBhbGVydCgiQEBAQCBjcmVhdGluZyBuZXcgTGVhZCIpOwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBsZWFkSWQ9ekRhdGEuY2xpZW50TGVhZChkb2MsYXJyT2ZQYWlycyk7CiAgICAgICAgYWxlcnQoIkNyZWF0ZWQgTGVhZCB3aXRoIElEOiAiICsgbGVhZElkKTsKICAgICAgICBpZiAobGVhZElkID09ICJudWxsIiB8fCBsZWFkSWQgPT0gIk5FVyIpIGxlYWRJZD1udWxsOwogICAgfSBlbHNlIHsKICAgICAgICBpZiAoekRhdGEuYXR0YWNoUmVjb3Jkcy5pbmRleE9mKCJMZWFkIik+LTEpIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIExlYWQ6ICIgKyBsZWFkSWQpOwogICAgICAgICAgICBhdHRhY2goZG9jLCBhdHRhY2hMYWJlbCwgbGVhZElkKTsKICAgICAgICB9CiAgICB9CiAgICBpZiAobGVhZElkICYmIGF0dGFjaFBhdGguaW5kZXhPZihsZWFkSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2xlYWRJZDsKfQoKYWxlcnQoIkBAQEAgUGFzc2VkIGluIHBhdGllbnQgSWQgPSAiICsgWChkb2MsIlhfWlBBUEVSX19QYXRpZW50X19jIikpOwovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIExlYWQgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5CnpEYXRhLnBhdGllbnRUeXBlPVhDdXN0b21TZXR0aW5nKGRvYywiUGF0aWVudFJlY29yZF9fYyIpOyAvLytYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudFJlY29yZFR5cGVfX2MiKTsKaWYgKCF6RGF0YS5wYXRpZW50VHlwZSkgekRhdGEucGF0aWVudFR5cGU9IkNvbnRhY3QiOyAvL0VSUzE5MDgwMiAjNjEyNzIKLy9BTjE5MTEwMSBNYWtlIHN1cmUgd2UgYXJlIGluaXRpYWxpemluZyB6RGF0YSBwYXRpZW50IGZpZWxkcyB0aGF0IHdlJ3JlIGdvaW5nIHRvIG5lZWQgbGF0ZXIKaWYgKFgoZG9jLCJYX1pQQVBFUl9fUGF0aWVudF9fYyIpIHx8IHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYykgeyAvL0VSUzE5MDgwMyBUT0RPIHJldGhpbmsgdXNlIFgKICAgIHpEYXRhLnBhdGllbnRJZCA9IHpEYXRhLmNvbnRhY0lkID0gWChkb2MsIlhfWlBBUEVSX19QYXRpZW50X19jIik7CiAgICBhbGVydCgiQEAgcGF0aWVudCB0eXBlID0gIiArIHpEYXRhLnBhdGllbnRUeXBlICsgIiwgcGF0aWVudElEID0gIiArIHpEYXRhLnBhdGllbnRJZCk7CiAgICB2YXIgZHEgPSB6RGF0YS5kcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOyAvL0VSUzE5MDgwMiBUT0RPIGRlZmluZSBiZXR0ZXIgaW4gekRhdGEKICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyAiK3pEYXRhLnBhdGllbnRJZCk7CiAgICBpZiAoIXpEYXRhLnBhdGllbnRJZCkgewogICAgICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyAiK3pEYXRhLnBhdGllbnRUeXBlKyIgUGF0aWVudCIpOwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAvL0VSUzE5MDczMCAjNjEyNzIgbWlzc2luZyB0aGUgYmFzaWNzCiAgICAgICAgdmFyIHA9IiI7CiAgICAgICAgaWYgKCJBY2NvdW50Ij09PXpEYXRhLnBhdGllbnRUeXBlKSB7IC8vRVJTMTkwODAzCiAgICAgICAgICAgIHA9IlBlcnNvbiI7CiAgICAgICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJOYW1lIiwgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYysiICIrekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJGaXJzdE5hbWUiLCB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaChwKyJCaXJ0aGRhdGUiLCB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOyAvL1hfWlBBUEVSX19GaXJzdE5hbWVfX2MgLy9FUlMxOTA4MDMgVE9ETyBnZXQgY2xlYW5lciAjNjEyNzIKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyk7CiAgICAgICAgICAgIGlmKHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MpIGFyck9mUGFpcnMucHVzaCgiQmlydGhkYXRlIiwgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyk7CiAgICAgICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCAiMDEyMkUwMDAwMDEyZUhYIik7IC8vWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyAvL0VSUzE5MDgwMyBUT0RPIGdldCBjbGVhbmVyICM2MTI3MiBQVjE5MTEwNyBBZGRlZCBpZCAwMTIyRTAwMDAwMTJlSFgKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0X1R5cGVfX2MiLCAiUGF0aWVudCIpOy8vIFBWMTkwOTI2IGhhcmRjb2RlZCB0byBjcmVhdGUgY29udGFjdAogICAgICAgIH0KICAgICAgICB6RGF0YS5jb250YWN0SWQgPSB6RGF0YS5wYXRpZW50SWQ9ekRhdGEuY2xpZW50UGF0aWVudChkb2MsYXJyT2ZQYWlycyk7CiAgICAgICAgYWxlcnQoIkNyZWF0ZWQgUGF0aWVudCB3aXRoIElEOiAiICsgekRhdGEucGF0aWVudElkKTsKICAgICAgICBpZiAoekRhdGEucGF0aWVudElkID09ICJudWxsIiB8fCB6RGF0YS5wYXRpZW50SWQgPT0gIk5FVyIpIHpEYXRhLnBhdGllbnRJZD1udWxsOwogICAgICAgIGVsc2UgeyAvL0VSUzE5MDczMCAjNjEyNzIgbGV2ZXJhZ2UgdGhlIG5ldyByZWNvcmQKICAgICAgICAgICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnBhdGllbnRJZDsKICAgICAgICAgICAgYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgekRhdGEuY29udGFjdElkKTsgLy9FUlMxOTA4MDIgekRhdGEuY29udGFjdElkCiAgICAgICAgICAgIC8vIGNsZWFyIG91dCB0aGUgIk5ldyBQYXRpZW50IiBmaWVsZHMKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fRmlyc3ROYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0xhc3ROYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19CaXJ0aGRhdGVfX2NfcmVhZGFibGUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIk5PTkUiICsgZHEgKyAiKTsgIik7CiAgICAgICAgICAgIC8vIHNldCB0aGUgUGF0aWVudCBsb29rdXAgZmllbGRzCiAgICAgICAgICAgIC8vRVJTMTkwODAzIFRPRE8gaGFuZGxlIFpQQVBFUl9fIHJlbGF0aW9uc2hpcHMKICAgICAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGF0aWVudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5wYXRpZW50SWQgKyBkcSArICIpOyAiKTsKICAgICAgICAgICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGF0aWVudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgKyAiICIgKyB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgKyBkcSArICIpOyAiKTsKICAgICAgICB9CiAgICB9IGVsc2UgewogICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBQYXRpZW50IHpEYXRhLmF0dGFjaFJlY29yZHM6ICIgKyB6RGF0YS5hdHRhY2hSZWNvcmRzKTsvLyBQVjE5MDkyNiBjaGFuZ2VkIHRvIGNyZWF0ZSBhIHBhdGllbnQKICAgICAgICBpZiAoekRhdGEuYXR0YWNoUmVjb3Jkcy5pbmRleE9mKCJQYXRpZW50Iik8PS0xKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBQYXRpZW50OiAiICsgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAKICAgICAgICAgICAgaWYgKDE9PT0xIHx8IHpEYXRhLnBhdGllbnRUeXBlICE9ICJBY2NvdW50IikgeyAvL0VSUzE5MDczMCBsb29rdXAgdGhlIGRhdGEgVE9ETyBwZXJzb24gYWNjb3VudD8KICAgICAgICAgICAgICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgekRhdGEucGF0aWVudFR5cGUsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICAgICAgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyA9IHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsgLy9QVjE5MDkyNiB1cGRhdGUgdGhlIGNoaWxkIHN0YWNrCiAgICAgICAgICAgICAgICB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MgPSBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgICAgICAgICB9IGVsc2UgaWYgKHpEYXRhLnBhdGllbnRUeXBlID09ICJBY2NvdW50IikgeyAvL0VSUzE5MDczMCBsb29rdXAgdGhlIGRhdGEgVE9ETyBwZXJzb24gYWNjb3VudD8KICAgICAgICAgICAgICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgekRhdGEucGF0aWVudFR5cGUsICJOYW1lIiwgbnVsbCwgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgICAgIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MgPSBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJOYW1lIiwgY29udGFjdEZsZHMpLnNwbGl0KCIgIilbMF07IC8vRVJTMTkwODAzIFRPRE8gZmluZCBhIGJldHRlciB3YXkKICAgICAgICAgICAgICAgIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyA9IHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTmFtZSIsIGNvbnRhY3RGbGRzKS5zcGxpdCgiICIpWzFdOwogICAgICAgICAgICB9CiAgICAgICAgICAgIGF0dGFjaExhYmVsPXpEYXRhLmNsaWVudEZpbGUoZG9jLCJJbmRleGVkIik7IC8vUFYxOTA5MjkgYXR0YWNoIGxhYmVsIGZpeAogICAgICAgICAgICAvL2lmKHpEYXRhLlhfWlBBUEVSX19mYXhUeXBlX19jICE9IlBFIil7CiAgICAgICAgICAgICAgICBhdHRhY2goZG9jLCBhdHRhY2hMYWJlbCwgekRhdGEucGF0aWVudElkKTsKICAgICAgICAgICAgLy99CiAgICAgICAgICAgCiAgICAgICAgfQogICAgfQogICAgaWYgKHpEYXRhLnBhdGllbnRJZCAmJiBhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucGF0aWVudElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIit6RGF0YS5wYXRpZW50SWQ7Cn0KLy9QVjE5MTAyNSB0byBjcmVhdGUgUHJlc2NyaXB0aW9uIHJlY29yZAp2YXIgc3RhY2tGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCAiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBudWxsLCBzZlN0YWNrSWQpOwp6RGF0YS5YX1pQQVBFUl9fbGF0ZXN0RmF4X19jID0gIFgoZG9jLCAiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBzdGFja0ZsZHMpOyAvL1BWMTkwOTI2IHVwZGF0ZSB0aGUgY2hpbGQgc3RhY2sKCgovL0VSUzE5MDYyMCB1c2UgYSBzZXR0aW5nIHRvIGRldGVybWluZSB3aGljaCBsb29rdXBzIHdlIGF0dGFjaCB0bwovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENhc2UgcmVjb3JkIGlmIHJlcXVpcmVkICovIC8vRVJTMTkwNjE5CmFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyBDYXNlIGRvYy53ZGRhdGEgKioqKiIrZG9jLndkZGF0YSk7IC8vUFYxOTA5MjYgbW92ZWQgZG93biBiZWNhdXNlIHBhdGllbnQgbmVlZHMgdG8gY3JlYXRlIGZpcnN0CgovL2lmIChkb2Mud2RkYXRhLmluZGV4T2YoIlhfWlBBUEVSX19DYXNlX19jIik+LTEgJiYgekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MgIT0iUEUiKSB7IC8vRVJTMTkwODAzIFRPRE8gZGV0ZWN0IENhc2UgbG9va3VwIC8vIFBWMTkwOTI1IGluIFdERGF0YSBjaGVja2luZyBmb3IgWF9aUEFQRVJfX0Nhc2VfX2MgaWYgdGhhdCBpcyB0aGVyZSB0aGVuIHdpbGwgY3JlYXRlIGEgY2FzZS4gQnV0IG5vdyBpbiB0aGUgd2QgZGF0YSB3aGF0IHdlIGFyZSBnZXR0aW5nIHdlIGFyZSBub3QgZ2V0dGluZyBYX1pQQVBFUl9fQ2FzZV9fYyB0aGlzIHZhbHVlIHRoYXQncyB0aGUgcmVhc29uIGkgYW0gbWFraW5nIHRoaXMgY29uZGl0aW9uIGZhbHNlCi8vaWYgKHpEYXRhLlhfWlBBUEVSX19mYXhUeXBlX19jICE9IlBFIikgewogICAgYWxlcnQoIkVSUzE5MDYyNCBuZWVkIENhc2UiKTsKICAgIGFsZXJ0KCJAQEBAQCB6RGF0YS5jYXNlSWQ6ICIgKyB6RGF0YS5jYXNlSWQpOwogICAgYWxlcnQoIkBAQEBAIHpEYXRhLmNhc2VOdW1iZXI6ICIgKyB6RGF0YS5jYXNlTnVtYmVyKTsKICAgIGlmICh6RGF0YS5jYXNlSWQpIHsKICAgICAgICBhbGVydCgiRVJTMTkwNjI0LjY3Iik7CiAgICAgICAgaWYgKHpEYXRhLmF0dGFjaFJlY29yZHMuaW5kZXhPZigiQ2FzZSIpPi0xKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBDYXNlOiAiICsgekRhdGEuY2FzZUlkKTsKICAgICAgICAgICAgYXR0YWNoTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsIkluZGV4ZWQiKTsgLy9QVjE5MDkyOSBhdHRhY2ggbGFiZWwgZml4CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGF0dGFjaExhYmVsLCB6RGF0YS5jYXNlSWQpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAgaWYoekRhdGEuWF9DYXNlX1JlY29yZF9UeXBlX19jKXsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IENhc2UiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsekRhdGEucGF0aWVudElkKTsgICAgICAKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLHpEYXRhLlhfQ2FzZV9SZWNvcmRfVHlwZV9fYyk7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyBDYXNlIGFyck9mUGFpcnMgKioqIisgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIHpEYXRhLmNhc2VJZD16RGF0YS5jbGllbnRDYXNlKGRvYyxhcnJPZlBhaXJzLCJEYXRhRW50cnkiKTsKICAgICAgICAgICAgYWxlcnQoIkNyZWF0ZWQgQ2FzZSB3aXRoIElEOiAiICsgekRhdGEuY2FzZUlkKTsKICAgICAgICAgICAgaWYgKHpEYXRhLmNhc2VJZCA9PSAibnVsbCIgfHwgekRhdGEuY2FzZUlkID09ICJORVciKSB6RGF0YS5jYXNlSWQ9bnVsbDsKICAgICAgICB9CiAgICAgICAKICAgIH0KICAgIGFsZXJ0KCJFUlMxOTA2MjQuNzggaGF2ZSBhIGNhc2U/Iik7CiAgICBpZiAoekRhdGEuY2FzZUlkICYmIGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5jYXNlSWQpPT0tMSl7CiAgICAgICAgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLmNhc2VJZDsKICAgICAgICB6RGF0YS5jYXNlTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNhc2VOdW1iZXIiLCBudWxsLCB6RGF0YS5jYXNlSWQpOyAvL1BWOTI5MjAxOQogICAgfQovL30KCgovL2NsaWVudFBhdGllbnQgaGFzIHRvIGRvIHRoaXMKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBDb250YWN0IHJlY29yZCBpZiByZXF1aXJlZAppZiAoZG9jLndkZGF0YS5pbmRleE9mKCJYX1pQQVBFUl9fUGF0aWVudF9fYyIpPi0xKSB7ICAvL1RPRE8gZGVhbCB3aXRoIHBlcnNvbkFjY291bnRzCiAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gYSBDb250YWN0PyBjb250YWN0SWQgPSAiICsgY29udGFjdElkKTsKICAgIGlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKICAgICAgICBhdHRhY2goZG9jLCAiSW5kZXhlZC0iICsgZG9jVHlwZSArICItIiArIHN0YWNrSWQsIGNvbnRhY3RJZCk7CiAgICAgICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjb250YWN0SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2NvbnRhY3RJZDsKICAgICAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIGNvbnRhY3RJZCk7CiAgICAgICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgICAgIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICB9CiAgICBlbHNlIGlmIChwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRGaXJzdE5hbWUubGVuZ3RoID4gMAogICAgICAgICYmIHBhdGllbnRMYXN0TmFtZSAmJiBwYXRpZW50TGFzdE5hbWUubGVuZ3RoID4gMAogICAgICAgICYmIHBhdGllbnRET0IgJiYgcGF0aWVudERPQi5sZW5ndGggPiAwKSB7CiAgICAgICAgdmFyIGN0Y0Fyck9mUGFpcnMgPSBbXTsKICAgICAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHBhdGllbnRGaXJzdE5hbWUpOwogICAgICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiTGFzdE5hbWUiLCBwYXRpZW50TGFzdE5hbWUpOwogICAgICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiQmlydGhEYXRlIiwgcGF0aWVudERPQik7CiAgICAgICAgY29udGFjdElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCAiSW5kZXhlZC0iICsgZG9jVHlwZSArICItIiArIHN0YWNrSWQsIGN0Y0Fyck9mUGFpcnMpOwogICAgICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7CiAgICAgICAgYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgY29udGFjdElkKTsKICAgICAgICAvLyBjbGVhciBvdXQgdGhlICJOZXcgUGF0aWVudCIgZmllbGRzCiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9GaXJzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9MYXN0X05hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwogICAgICAgIC8vIHNldCB0aGUgUGF0aWVudCBsb29rdXAgZmllbGRzCiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgY29udGFjdElkICsgZHEgKyAiKTsgIik7CiAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lICsgZHEgKyAiKTsgIik7CiAgICB9Cn0KKi8KaWYoIlJYIiA9PT0gekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MpeyAvL1BWMTkxMDAyIENyZWF0aW5nIFJ4IFJlY29yZAogICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgUnggUmVjb3JkIEBAQCIpOwogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgaWYoekRhdGEuY2FzZUlkKXsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkNhc2VfX2MiLHpEYXRhLmNhc2VJZCk7CiAgICB9CiAgICAgICAgIAogICAgekRhdGEucnhSZWNvcmRJZD16RGF0YS5jbGllbnRSZWNvcmQoZG9jLCJQcmVzY3JpcHRpb25fSW5mb19fYyIsYXJyT2ZQYWlycywiSW5kZXgiKSsiIjsKICAgIGFyck9mUGFpcnMucHVzaCgicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFsZXJ0KCJAQEBAIGNyZWF0ZWQgUnggUmVjb3JkIEBAQCAiKyB6RGF0YS5yeFJlY29yZElkKTsKICAgIGF0dGFjaFBhdGggPSAoYXR0YWNoUGF0aCA/IGF0dGFjaFBhdGggKyAiLCIgKyB6RGF0YS5yeFJlY29yZElkIDogekRhdGEucnhSZWNvcmRJZCk7IC8vUFYxOTEwMzEgYXR0YWNoIGRvY3VtZW50IHRvIHJ4IHJlY29yZAogICAKICAgIC8vUFYxOTEyMTIgYXR0YWNoIFBERgogICAgekRhdGEuZXhwb3NlUERGKGRvYyx6RGF0YS5yeFJlY29yZElkLCBudWxsKTsKICAgYXR0YWNoTGFiZWw9ekRhdGEuY2xpZW50RmlsZShkb2MsIkluZGV4ZWQiKTsgLy9QVjE5MTAzMCBhdHRhY2htZW50IGxhYmVsIGZpeAogICBhdHRhY2goZG9jLGF0dGFjaExhYmVsLCB6RGF0YS5yeFJlY29yZElkKTsKfQoKCgphcnJPZlBhaXJzID0gW107CmlmICh6RGF0YS5wcm92aWRlcklkKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvdmlkZXJfX2MiLCB6RGF0YS5wcm92aWRlcklkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucHJvdmlkZXJJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucHJvdmlkZXJJZDsKfQppZiAoekRhdGEucGF0aWVudElkKSB7CiAgICAvL2lmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDAzIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudF9fYyIsIHpEYXRhLnBhdGllbnRJZCk7CiAgICBpZiAoekRhdGEucGF0aWVudElkLmluZGV4T2YoIjAwMSIpPT09MCkgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIiwgekRhdGEucGF0aWVudElkKTsKICAgIGlmICh6RGF0YS5wYXRpZW50SWQuaW5kZXhPZigiMDBRIik9PT0wKSBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUmVmZXJyYWxMZWFkX19jIiwgekRhdGEucGF0aWVudElkKTsgLy9FUlMxOTA4MDIgTGVhZAogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZih6RGF0YS5wYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3pEYXRhLnBhdGllbnRJZDsKfQoKaWYgKHpEYXRhLmxlYWRJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1JlZmVycmFsTGVhZF9fYyIsIHpEYXRhLmxlYWRJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHpEYXRhLmxlYWRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEubGVhZElkOwp9CmlmICh6RGF0YS5yZWZlcnJhbElkKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUmVmZXJyYWxfX2MiLCB6RGF0YS5yZWZlcnJhbElkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoekRhdGEucmVmZXJyYWxJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrekRhdGEucmVmZXJyYWxJZDsKfQoKdXBkYXRlU0ZSZWNvcmQoZG9jLCB6RGF0YS56cHMsIHNmU3RhY2tJZCwgYXJyT2ZQYWlycyk7CmF0dGFjaExhYmVsPXpEYXRhLmNsaWVudEZpbGUoZG9jLCJJbmRleGVkIik7IC8vUFYxOTA5MjkgYXR0YWNobWVudCBsYWJlbCBmaXgKYXR0YWNoKGRvYyxhdHRhY2hMYWJlbCwgc2ZTdGFja0lkKTsKYWxlcnQoIkBAQEAgdXBkYXRlZCBhbmQgYXR0YWNoZWQgdG8gelN0YWNrIFJlY29yZCwgaWQgPSAiICsgc2ZTdGFja0lkKTsKCi8qIE1vdmUgdGhlIHNwbGl0IGRvY3VtZW50IHRvIGl0cyBwcm9jZXNzaW5nIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgaW5kZXhlZCBwYWdlcyBkb2N1bWVudCBpbnRvIG5leHQgcHJvY2Vzc2luZyBmb2xkZXI6ICIgKyBuZXh0Rm9sZGVyKTsKCmFsZXJ0KCJAQEAgcGF0aWVudElkIGlzIiArIHpEYXRhLnBhdGllbnRJZCkKCi8vUFYxOTA5MjYgdXBkYXRlZCBmb3IgY2hpbGQgc3RhY2tzCmFsZXJ0KCJAQEBAIHVwZGF0ZWQgYW5kIGF0dGFjaGVkIHRvIHpTdGFjayBSZWNvcmQsIGlkID0gIiArIHNmU3RhY2tJZCArICI/PSIrekRhdGEuZ2V0U3RhY2tJZChkb2MpKyIgZGF0YT0iK2Fyck9mUGFpcnMpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIkNvbXBsZXRlZCIpOyAvL1BWMTkwOTExIHRvIHVwZGF0ZSBjaGlsZCBzdGFjayBzdGF0dXMgdG8gY29tcGxldGUKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRfX2MiLCB6RGF0YS5wYXRpZW50SWQpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsekRhdGEuY2FzZUlkKTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0ZpcnN0TmFtZV9fYyIsIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fTGFzdE5hbWVfX2MiLCB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2MpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MpOwoKaWYgKHpEYXRhLnJ4UmVjb3JkSWQpIHsgLy9QVjE5MTIxNwogICAgYXJyT2ZQYWlycy5wdXNoKCJSWF9JbWFnZV9JRF9fYyIsIHpEYXRhLnJ4UmVjb3JkSWQpOwp9CgovLyAgYXJyT2ZQYWlycy5wdXNoKCJDYXNlX1JlY29yZF9UeXBlX19jIix6RGF0YS5YX0Nhc2VfUmVjb3JkX1R5cGVfX2MpOy8vUFYxOTEwMjQKaWYoekRhdGEuWF9DYXNlX1JlY29yZF9UeXBlX19jICYmIHpEYXRhLlhfQ2FzZV9SZWNvcmRfVHlwZV9fYyAhPSAiRE9OT1RfU0FWRSIgKWFyck9mUGFpcnMucHVzaCgiQ2FzZV9SZWNvcmRfVHlwZV9fYyIsekRhdGEuWF9DYXNlX1JlY29yZF9UeXBlX19jKTsvL1BWMTkxMDMwIHVwZGF0ZSB0aGUgY2FzZSByZWNvcmQgdHlwZQovL2Fyck9mUGFpcnMucHVzaCgiQ2FzZV9SZWNvcmRfVHlwZV9fYyIsekRhdGEuWF9DYXNlX1JlY29yZF9UeXBlX19jKTsvL1BWMTkxMDI0IHVwZGF0ZSB0aGUgY2FzZSByZWNvcmQgdHlwZQphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwppZiggekRhdGEuWF9QcmVzY3JpcHRpb25fX2MgKSAgYXJyT2ZQYWlycy5wdXNoKCJQcmVzY3JpcHRpb25fX2MiLHpEYXRhLlhfUHJlc2NyaXB0aW9uX19jKTsgLy9QVjE5MTAyNSB0byB1cGRhdGUgUHJlc2NyaXB0aW9uCnZhciBjaGlsZFN0YWNrSWQ9ekRhdGEuY2xpZW50Q2hpbGRTdGFjayhkb2MsYXJyT2ZQYWlycyxzZlN0YWNrSWQpOyAvL0VSUzE5MDgxMCBjcmVhdGUgY2hpbGQgc3RhY2sgZm9yIHNwbGl0IEVSUzE5MDgxMSBjbGllbnRDaGlsZFN0YWNrCmlmIChjaGlsZFN0YWNrSWQpIHthdHRhY2hQYXRoKz0iLCIrc2ZTdGFja0lkKyIsIitjaGlsZFN0YWNrSWQ7IGF0dGFjaFBhdGg9YXR0YWNoUGF0aC5yZXBsYWNlKCIvLD8iLCIvIik7IH0gLy9FUlMxOTA4MTEgIzYxNTcwIGNsZWFuIHVwIC8vcGFyZW50IHN0YWNrIHRvbwphcnJPZlBhaXJzPVtdOy8vUFYxOTEwMjMgRXZlcnl0aW1lIGNoaWxkIHdpbGwgYXR0YWNoIHRvIHRoYXQgcGFydGljdWxhciB6U3RhY2sKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsY2hpbGRTdGFja0lkKTsKYXJyT2ZQYWlycy5wdXNoKCJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOy8vUFYxOTExMDUgVXBkYXRlIHJlY2VpdmVkIGlkCnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCi8qIE1vdmUgdGhlIHNwbGl0IGRvY3VtZW50IHRvIGl0cyBwcm9jZXNzaW5nIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgaW5kZXhlZCBwYWdlcyBkb2N1bWVudCBpbnRvIG5leHQgcHJvY2Vzc2luZyBmb2xkZXI6ICIgKyBuZXh0Rm9sZGVyKTsKLy9FUlMxOTA3MzEgIzYxMjcyIG1vdmVEb2N1bWVudChkb2MsIiIsbmV4dEZvbGRlcik7Ci8vRVJTMTkwNzMxICM2MTI3MiByZWxvYWRCeUJBVEVTKGRvYywgbmV4dEZvbGRlcik7IC8vRVJTMTcwNDEzICMzNTI5MQovKiBQbGFjZSB0aGUgc3BsaXQgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyICovCmFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSBpbmRleGVkIHBhZ2VzIGRvY3VtZW50IGludG8gdGhlIGZpbmFsIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CnVubG9ja0RvY3VtZW50KGRvYyk7CgovL0VSUzE5MDczMSAjNjEyNzIgbW92ZURvY3VtZW50KGRvYywiIixuZXh0Rm9sZGVyKTsKLy9FUlMxOTA3MzEgIzYxMjcyIHJlbG9hZEJ5QkFURVMoZG9jLCBuZXh0Rm9sZGVyKTsgLy9FUlMxNzA0MTMgIzM1MjkxCi8qIFBsYWNlIHRoZSBzcGxpdCBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIGluZGV4ZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwptb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCgphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsekRhdGEuc3RhZ2UpOwp2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MscGFnZVJhbmdlKTsKYWxlcnQoIkBAQEAgcGFnZUNvdW50ID0gIiArIHBhZ2VDb3VudCArIiB3ZXJlICIrIHpEYXRhLnN0YWdlKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goIlhfY291bnQiLHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiZGItcGFnZXMiLHBhZ2VDb3VudCk7Ci8vRVJTMTkwNjIwIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBwYXRpZW50Rmlyc3ROYW1lICsgcGF0aWVudExhc3ROYW1lICsgIiAtICIgKyBjb21wYW55Q29kZSArICIgLSAiICsgc3RhY2tJZCk7CmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIixhdHRhY2hQYXRoKTsgLy9FUlMxNzA2MjgKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdHJhY2soZG9jLCAiRG9jIEluZGV4ZWQiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwp2YXIgZHEgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDM0KTsgLy9QVjE5MTAyNSB1cGRhdGVkCmFsZXJ0KCJTZXR0aW5nIFBhdGllbnQgSWQgdG86ICIgKyB6RGF0YS5jb250YWN0SWQpOwphbGVydCgiU2V0dGluZyBQYXRpZW50IG5hbWUgdG86ICIgKyB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jICsgIiAiICsgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jKTsKYWxlcnQoIlNldHRpbmcgY2FzZSBJZCB0bzogIiArIHpEYXRhLmNhc2VJZCk7CmFsZXJ0KCJTZXR0aW5nIENhc2UgbnVtYmVyIHRvOiAiICsgekRhdGEuY2FzZU51bWJlcik7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuY29udGFjdElkICsgZHEgKyAiKTsgIik7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jICsgIiAiICsgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jICsgZHEgKyAiKTsgIik7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0Nhc2VfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuY2FzZUlkICsgZHEgKyAiKTsgIik7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0Nhc2VfX2NfQ2FzZU51bWJlciIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5jYXNlTnVtYmVyICsgZHEgKyAiKTsgIik7IC8vUFYxOTA5MjkgdXBkYXRlZCBjYXNlIG51bWJlciBpbiBsb29rdXAKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJuZXh0UGFnZSh+cmVhZHl+KTt1cGRhdGVERVN0YXR1cyh+aW5kZXhlZDoiICsgcGFnZVJhbmdlICsgIn4pOyIpOwoKLyogZW5kIG9mIHJ1bGUgKi8K"},"ordinal":5}

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
            //arrOfPairs.push("RecordTypeId", "0122E0000012eHX"); //X_ZPAPER__FirstName__c //ERS190803 TODO get cleaner #61272 PV191107 Added id 0122E0000012eHX
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
if("RX" === zData.X_ZPAPER__faxType__c){ //PV191002 Creating Rx Record
    alert("@@@@ creating Rx Record @@@");
    arrOfPairs = [];
    if(zData.caseId){
        arrOfPairs.push("Case__c",zData.caseId);
    }
         
    zData.rxRecordId=zData.clientRecord(doc,"Prescription_Info__c",arrOfPairs,"Index")+"";
    arrOfPairs.push("receivedId__c", doc.dbID);
    alert("@@@@ created Rx Record @@@ "+ zData.rxRecordId);
    attachPath = (attachPath ? attachPath + "," + zData.rxRecordId : zData.rxRecordId); //PV191031 attach document to rx record
   
    //PV191212 attach PDF
    zData.exposePDF(doc,zData.rxRecordId, null);
   attachLabel=zData.clientFile(doc,"Indexed"); //PV191030 attachment label fix
   attach(doc,attachLabel, zData.rxRecordId);
}



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

if (zData.rxRecordId) { //PV191217
    arrOfPairs.push("RX_Image_ID__c", zData.rxRecordId);
}

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
ZnVuY3Rpb24gekluc3RhbGwoKSB7CiAgICAkKCJbbmFtZT0nZGItQkFURVMnXSIpLnZhbCgiIik7CiAgICAkKCIjWF9idXR0b25BY3Rpb25zIikudmFsKCJJbmRleCxJZ25vcmUsUmVqZWN0LFN0YWNrIENvbXBsZXRlIik7CiAgICAkKCIjWF9mb2xkZXJGb3JtcyIpLnZhbCgiMjAyMDAyMDE3MTEyNTA5MTExNV9EYXRhMl9XZWJfRm9ybSIpOwp9CgpmdW5jdGlvbiBkb1ZhbGlkYXRpb24oKSB7CiAgICB2YXIgZmF4VHlwZSA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fZmF4VHlwZV9fYyJdJyk7CiAgIGlmKCJQRSIgIT1mYXhUeXBlLnZhbCgpKXsKCiAKICAgIHZhciBjYXNlSWQgPSAkKCdbbmFtZT0iWF9DYXNlX19jIl0nKS52YWwoKTsKICAgCiAgIAogICAgdmFyIHJlcUJ1ZmZlciA9ICIiOwogICAgdmFyIHBhdHRlcm5TdHJpbmcgPSAvXlthLXpBLVogXSskLzsKICAgIG49IlhfWlBBUEVSX19mYXhUeXBlX19jIjsgbD0iRG9jdW1lbnQgVHlwZSI7CiAgICBlPSQoJ1tuYW1lPSInK24rJyJdJyk7CiAgICB2YXIgZG9jVHlwZSA9IGUudmFsKCk7CiAKCiAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCByZWQnKTsKICAgICAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsgcmVxQnVmZmVyICs9ICIsICI7IH0KICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgIH0gZWxzZXsKICAgICAgICBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICAgICAgdmFyIGRvY1R5cGVMYWJlbD0gJChlKS5maW5kKCJvcHRpb246c2VsZWN0ZWQiKS50ZXh0KCk7CiAgICAgICAgdmFyIGRvY1R5cGVMYWJlbERvbSA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fZmF4VHlwZUxhYmVsIl0nKTsKICAgICAgIAogICAgICAgIGlmKCFkb2NUeXBlTGFiZWxEb20udmFsKCkgfHwgMCA9PT0gZG9jVHlwZUxhYmVsRG9tLnZhbCgpLmxlbmd0aCl7CiAgICAgICAgICAgCiAgICAgICAgICAgICQoJ2Zvcm0jZGF0YUVudHJ5Rm9ybScpLmFwcGVuZCgnPGlucHV0IHR5cGU9ImhpZGRlbiIgbmFtZT0iWF9aUEFQRVJfX2ZheFR5cGVMYWJlbCIgaWQ9IlhfWlBBUEVSX19mYXhUeXBlTGFiZWwiIHZhbHVlPSInK2RvY1R5cGVMYWJlbCsnIi8+Jyk7CgogICAgICAgIH1lbHNlewogICAgICAgICAgIAogICAgICAgICAgICAkKGRvY1R5cGVMYWJlbERvbSkudmFsKGRvY1R5cGVMYWJlbCk7CiAgICAgICAgfQogICAgICAgCiAgICB9CiAgIAogICAgIAogICAgdmFyIHBhdGllbnRJZD0kKCdbbmFtZT0iWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZSJdJykudmFsKCk7CiAgICBpZighcGF0aWVudElkIHx8IDAgPT09IHBhdGllbnRJZC5sZW5ndGgpewogICAgICAgIHZhciBwYWl0ZW50RGUgPSAkKCdbbmFtZT0iWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyJdJyk7CiAgICAgICAKICAgICAgICAgaWYoIXBhaXRlbnREZS52YWwoKSB8fCAwID09PSBwYWl0ZW50RGUudmFsKCkubGVuZ3RoKXsKICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICByZXFCdWZmZXIgKz0gIixGaXJzdE5hbWUiOwogICAgICAgIH1lbHNlewogICAgICAgICAgICBpZighKHBhaXRlbnREZS52YWwoKS5tYXRjaChwYXR0ZXJuU3RyaW5nKSkpewogICAgICAgICAgICAgICAgIGFsZXJ0KCJFUlJPUjogICdGaXJzdE5hbWUnIE11c3QgYmUgU3RyaW5nLiIpOwogICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwogICAgICAgICAgICB9CiAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICAgICAgfQoKICAgICAgICAgcGFpdGVudERlICA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiXScpOwogICAgICAgICBpZighcGFpdGVudERlLnZhbCgpIHx8IDAgPT09IHBhaXRlbnREZS52YWwoKS5sZW5ndGgpewogICAgICAgICAgICBwYWl0ZW50RGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgICAgIHJlcUJ1ZmZlciArPSAiLExhc3ROYW1lIjsKICAgICAgICB9ZWxzZXsKICAgICAgICAgICAgaWYoIShwYWl0ZW50RGUudmFsKCkubWF0Y2gocGF0dGVyblN0cmluZykpKXsKICAgICAgICAgICAgICAgIGFsZXJ0KCJFUlJPUjogICdMYXN0TmFtZScgTXVzdCBiZSBTdHJpbmcuIik7CiAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgcGFpdGVudERlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICAgICAgfSAgICAgICAgCgogICAgfWVsc2V7CiAgICAgICAgdmFyIGxhc3ROYW1lID0gJCgnW25hbWU9IlhfWlBBUEVSX19MYXN0TmFtZV9fYyJdJyk7CiAgICAgICAgdmFyIGZpcnN0TmFtZSA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIl0nKTsKICAgICAgIAogICAgICAgIGlmKGxhc3ROYW1lLnZhbCgpIHx8IGZpcnN0TmFtZS52YWwoKSl7CiAgICAgICAgICAgIGFsZXJ0KCJFUlJPUjogIEVpdGhlciAnRmlyc3ROYW1lJyAgJ0xhc3RuYW1lJyBvciAnUGF0aWVudCcgb25seSBvbmUgc2hvdWxkIGJlIHNlbGVjdGVkLiIpOwogICAgICAgICAgICByZXR1cm4gZmFsc2U7CgogICAgICAgIH0KICAgIH0KCiAgICBjYXNlSWQ9JCgnW25hbWU9IlhfWlBBUEVSX19DYXNlX19yLkNhc2VOdW1iZXIiXScpLnZhbCgpOwogICAgaWYoIWNhc2VJZCB8fCAwID09PSBjYXNlSWQubGVuZ3RoKXsKICAgICAgICB2YXIgY2FzZVJlY29yZFR5cGUgPSAkKCdbbmFtZT0iWF9DYXNlX1JlY29yZF9UeXBlX19jIl0nKTsKICAgIGlmKCJQT0EiICE9IGRvY1R5cGUgJiYgIlJYIiAhPSBkb2NUeXBlICAmJiAoIWNhc2VSZWNvcmRUeXBlLnZhbCgpIHx8IDAgPT09IGNhc2VSZWNvcmRUeXBlLnZhbCgpLmxlbmd0aCB8fCAiRE9OT1RfU0FWRSIgPT09IGNhc2VSZWNvcmRUeXBlLnZhbCgpKSl7CiAgICAgICAgICAgIGNhc2VSZWNvcmRUeXBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgICAgICByZXFCdWZmZXIgKz0gIixDYXNlIFJlY29yZCBUeXBlIjsKICAgICAgICB9ZWxzZSBjYXNlUmVjb3JkVHlwZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwoKICAgIH1lbHNlewogICAgICAgIHZhciBjYXNlUmVjb3JkVHlwZSA9ICQoJ1tuYW1lPSJYX0Nhc2VfUmVjb3JkX1R5cGVfX2MiXScpOwogICAgICAgCiAgICAgICAgaWYoY2FzZVJlY29yZFR5cGUudmFsKCkgJiYgIkRPTk9UX1NBVkUiICE9IGNhc2VSZWNvcmRUeXBlLnZhbCgpKXsKICAgICAgICAgICAgLy9hbGVydCgiRVJST1I6ICBFaXRoZXIgY2FzZVJlY29yZFR5cGUgb3IgJ0Nhc2UnIG9ubHkgb25lIHNob3VsZCBiZSBzZWxlY3RlZC4iKTsKICAgICAgICAgICAgLy9yZXR1cm4gZmFsc2U7CgogICAgICAgIH0KICAgIH0KCiAgICB2YXIgcGF0dGVybk51bSA9IC9eWzAtOV0rJC87CiAgIAogICAKICAgIGlmIChyZXFCdWZmZXIubGVuZ3RoID4gMCkgewogICAgICAgIGFsZXJ0KCJFUlJPUjogVGhlIGZvbGxvd2luZyBmaWVsZHMgYXJlIHJlcXVpcmVkOiAiICsgcmVxQnVmZmVyKTsKICAgICAgICByZXR1cm4gZmFsc2U7ICAgLy9QVjE5MTAwNCBvbmUgb3IgbW9yZSBmaWVsZCBpcyBtaXNzaW5nLCBkb24ndCBzZW5kIHRvIHRoZSBydWxlcyBlbmdpbmUKICAgIH0KfSAgCiAgICByZXR1cm4gdHJ1ZTsgICAgICAgIC8vUFYxOTEwMDQgQWxsIHJlcXVpcmVkIGZpZWxkcyBoYXZlIGJlZW4gc3VwcGxpZWQsIGxldCB0aGUgcnVsZXMgZW5naW5lIGJlIG5vdGlmaWVkCn0KCgpmdW5jdGlvbiB2YWxpZGF0ZUVsZW1lbnQobmFtZSxsYWJlbCAscGF0dGVybikgewogICAKICAgICAKfQpyZXR1cm4gZG9WYWxpZGF0aW9uKCk7Cg==
//--- RULE VALIDATION CODE - END ---

</script>
