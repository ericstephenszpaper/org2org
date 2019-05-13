<!--
// Name: Referral Page
// Committer: judson.bruno@zpaper.com
// Update: JPB180721 added diagnosis variable; JPB180721 added diagnosis
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2018-07-21 13:18:08","active":true,"button":"Referrals","name":"Referral Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Referrals","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBmb3IgUmVmZXJyYWxzIEBAQCMiKTsgLy9KUEIxODA3MjAgYWRkZWQgbmV3IHJlZmVycmFsIGJ1dHRvbiBydWxlCi8qIGRvdWJsZS1xdW90ZSwgbmV3bGluZSBjaGFyYWN0ZXJzICovCnZhciBkcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOwp2YXIgbmwgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDEwKTsKdmFyIGZvcm1hdE5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgbm90ZXMgPSBkb2Mua2JEYXRhLmNvbW1lbnRzICsgIiI7ICAgLy9DUk4xODA2MTkgQ2FzZSAjNDk0MzcgU2F2ZSBhbnkgY29tbWVudHMgKG5vdGVzKSBpbnRvIHRoZSBOb3Rlc19fYyBmaWVsZCBpbiB0aGUgelN0YWNrCmFsZXJ0KCJAQEAgTk9URVM6ICIgKyBub3Rlcyk7IC8vSlBCMTgwNzExIGFkZGVkIE5PVEVTCgovKiBkb3VibGUtcXVvdGUsIG5ld2xpbmUgY2hhcmFjdGVycyAqLwoKdmFyIGRxID0gU3RyaW5nLmZyb21DaGFyQ29kZSgzNCk7IC8vSlBCMTgwNjI2IGFkZGVkIG5vdGVzIHNlY3Rpb24gbGluZSA5IHRob3VyZ2ggMTUKdmFyIG5sID0gU3RyaW5nLmZyb21DaGFyQ29kZSgxMCk7CnZhciBmb3JtYXROb3c9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIG5vdGVzID0gZG9jLmtiRGF0YS5jb21tZW50cyArICIiOyAgIC8vQ1JOMTgwNjE5IENhc2UgIzQ5NDM3IFNhdmUgYW55IGNvbW1lbnRzIChub3RlcykgaW50byB0aGUgTm90ZXNfX2MgZmllbGQgaW4gdGhlIHpTdGFjawphbGVydCgiQEBAIE5PVEVTOiAiICsgbm90ZXMpOwp2YXIgenA9IlpQQVBFUl9fIjsgLy9FUlMxNzA2MjYgbm93IGluIHRoZSBwYWNrYWdlCnZhciB6U3RhY2s9enArInpTdGFja19fYyI7IC8vIlN0YWNrX19jIgoKdmFyIHBhcmVudEZvbGRlciA9IFgoZG9jLCJYX2N1ckZvbGRlciIpOyAvL0pQQjE4MDYyNiBhZGRlZCBwYXJlbnRGb2xkZXIKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsKdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCJYX3NmU3RhY2tJZCIpOwppZiAoc2ZTdGFja0lkID09PSIiKSB7IC8vRVJTMTcwNzMxICM0MDU5MwogICAgWChkb2MsIlhfYXR0YWNoZWRUbyIpOwogICAgaWYgKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpID49IDApIHsKCQlzZlN0YWNrSWQgPSBzZlN0YWNrSWQuc3Vic3RyaW5nKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpKzEpOwoJCWlmIChzZlN0YWNrSWQuaW5kZXhPZignLCcpID49IDApIHsgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZygwLCBzZlN0YWNrSWQuaW5kZXhPZignLCcpKTsgfQogICAgfQp9CnZhciBwYXJlbnRkYklEID0gZG9jLmRiSUQ7IC8vSlBCMTgwNjI2IGFkZGVkIGRvYy5kYklECmFsZXJ0KCJAQEBAIHBhcmVudCBzdGFjayBpZCA9ICIgKyBzZlN0YWNrSWQpOwp2YXIgcGFyZW50U3RhY2tOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgelN0YWNrLCAiTmFtZSIsIG51bGwsIHNmU3RhY2tJZCk7IC8vSlBCMTgwNjI2IGFkZGVkIHBhcmVudFN0YWNrTnVtYmVyCmFsZXJ0KCIjIyMjIE91ciBwYXJlbnQgc3RhY2sgbnVtYmVyIGlzICIgKyBwYXJlbnRTdGFja051bWJlcik7CnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwovL0VSUzE3MDkwOSB6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24oZG9jLCJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CglzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKCXN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwoJekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYyxzdGFja0ZvbGRlciwgY29tcGFueUNvZGUsIHN0YWNrSWQpOwp9CgovLyBEb2VzIHRoZSB1c2VyIHdhbnQgdG8gYXR0YWNoIGluZGV4ZWQgcGFnZXMgdG8gQ2FzZT8KCnZhciBjYXNlSWQgPSBYKGRvYywgIlhfWlBBUEVSX19DYXNlX19jIik7CnZhciBjb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7CnZhciBwYXRpZW50SWQ9Y29udGFjdElkOyAvL1RPRE8KdmFyIHByb3ZpZGVySWQgPSBYKGRvYywgIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOwp2YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwp2YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKdmFyIGRpYWdub3NpcyA9IFgoZG9jLCAiWF9aUEFQRVJfX0RpYWdub3Npc19fYyIpOyAvL0pQQjE4MDcyMSBhZGRlZCBkaWFnbm9zaXMgdmFyaWFibGUKCi8vQ1JOMTgwMjE0IEp1ZHNvbiB3YW50cyB0aGlzIHRvIGJlIHBhcnQgb2YgdGhlIGF0dGFjaG1lbnQgbGFiZWwKCnZhciBmYXhUeXBlID0gWChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOwoKLy8gR2V0IHRoZSBkb2N1bWVudCB0eXBlICh3aWxsIGJlIHVzZWQgdG8gcm91dGUgdG8gbmV4dCBmb2xkZXIpCgp2YXIgZG9jVHlwZSA9IFgoZG9jLCAiWF9Eb2N1bWVudF9UeXBlX19jIik7CnZhciBuZXh0Rm9sZGVyID0gIjIwNTAwVHJpYWdlLVMyIjsJCQkJLy8gT3RoZXIgZm9sZGVyIGlzIHRoZSBkZWZhdWx0CnZhciBwcmV2SW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pbmRleGVkUGFnZXMiKTsKdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKaWYgKHByZXZJbmRleFBhZ2VzICYmIHByZXZJbmRleFBhZ2VzLmxlbmd0aCA+IDAgJiYgY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKCXByZXZJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzID0gcHJldkluZGV4UGFnZXMgKyBjdXJJbmRleFBhZ2VzOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhlZFBhZ2VzIiwgY3VySW5kZXhQYWdlcyk7CmlmICgxPT09MSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKICAgIHZhciBiYT1kb2MuWCgiWF9idXR0b25BY3Rpb24iKSsiIjsKICAgIGJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgaWYgKCFiYS5lbmRzV2l0aCgiZWQiKSAmJiBiYSAhPT0gIiIpIHsgYmErPSJlZCI7IH0gLy9FUlMxODAxMDMgIzQxMTU1CiAgICBpZiAoYmEgIT09ICIiKSB7IC8vRVJTMTgwMTAzICM0MTE1NQogICAgICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwogICAgfQp9CnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCnZhciBzZlN0YWNrSWQgPSBYKGRvYywiWF9zZlN0YWNrSWQiKTsKaWYgKHNmU3RhY2tJZCA9PT0iIikgeyAvL0VSUzE3MDczMSAjNDA1OTMKICAgIFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsKICAgIGlmIChzZlN0YWNrSWQubGFzdEluZGV4T2YoJy8nKSA+PSAwKSB7CgkJYXJyT2ZQYWlycyA9IFtdOyAvL0pQQjE4MDYyNiBhZGRlZCBhcnJPZlBhaXJzCgkJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJJbmRleGVkIik7IC8vSlBCMTgwNjI2IGFkZGVkIGluZGV4ZWQgdG8gc3RhdHVzCgkJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YWdlX19jIiwgIkluZGV4ZWQiKTsgLy9KUEIxODA2MjYgYWRkZWQgaW5kZXhlZCB0byBzdGFnZQoJCWlmIChub3RlcykgewoJCQlhcnJPZlBhaXJzLnB1c2goIk5vdGVzX19jIiwgbm90ZXMpOyAvL0pQQjE4MDYyNiBhZGRlZCBub3RlcwoJCX0gIC8vSlBCMTgwNzExIGFkZGVkIGN1cmx5IGJyYWNlCgkJc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZyhzZlN0YWNrSWQubGFzdEluZGV4T2YoJy8nKSsxKTsKCQlpZiAoc2ZTdGFja0lkLmluZGV4T2YoJywnKSA+PSAwKSB7IHNmU3RhY2tJZCA9IHNmU3RhY2tJZC5zdWJzdHJpbmcoMCwgc2ZTdGFja0lkLmluZGV4T2YoJywnKSk7IH0KICAgIH0KCXVwZGF0ZVNGUmVjb3JkKGRvYywgIlpQQVBFUl9felN0YWNrX19jIiwgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsgLy9KUEIxODA2MjYgYWRkZWQgdXBkYXRlU0ZSZWNvcmQKfQp2YXIgYXR0YWNoUGF0aCA9IFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsKYWxlcnQoIkBAQEBAQCBDdXJyZW50bHkgYXR0YWNoZWQgdG8gWlBBUEVSX196U3RhY2tfX2Mgd2l0aCBJRDogIiArIHNmU3RhY2tJZCk7CnpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOwkvL0pQQjE4MDcxMiBNYWtlIHN1cmUgdGhlIHByb2dyYW0gbmFtZSBpcyBzZXQgY29ycmVjdGx5CgovKiBTUExJVCBPRkYgTkVXIFNOSVBQRVQgSEVSRSAqLwoKdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CnNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJpbmRleCIsIHBhZ2VSYW5nZSk7CmFsZXJ0KCJDYXNlICciK2Nhc2VJZCsiJyBhbmQgbGVuPSIrY2FzZUlkLmxlbmd0aCk7CgovLyoKLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgU1RBQ0sgU05JUFBFVCAqLwovLyoKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gYSBuZXcgQ2FzZSByZWNvcmQsIGlmIGl0IHdhc24ndCBwYXNzZWQgaW4gKi8KdmFyIHByaW9yaXR5PVgoZG9jLCJYX1pQQVBFUl9fUHJpb3JpdHlfX2MiKTsgLy9FUlMxNzA2MjYKdmFyIGxhYmVsMD0iIjsKdmFyIHRyaWFnZVR5cGU9ZG9jLmRvY1R5cGU7CnZhciBwYXRpZW50TmFtZTsKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gQ29udGFjdCByZWNvcmQgaWYgcmVxdWlyZWQgKi8KYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGEgQ29udGFjdD8gY29udGFjdElkID0gIiArIGNvbnRhY3RJZCk7CmlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKCQoJaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjb250YWN0SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2NvbnRhY3RJZDsKCXZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgY29udGFjdElkKTsKCXBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKCXBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBjb250YWN0Rmxkcyk7CglwYXRpZW50TmFtZSA9IHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWU7CglhdHRhY2goZG9jLCBsYWJlbDArIkluZGV4ZWQtIiArIHBhdGllbnROYW1lICsgIi0iICsgZmF4VHlwZSArICItIiArIHN0YWNrSWQsIGNvbnRhY3RJZCk7Cn0KZWxzZSBpZiAocGF0aWVudEZpcnN0TmFtZSAmJiBwYXRpZW50Rmlyc3ROYW1lLmxlbmd0aCA+IDAgJiYgcGF0aWVudExhc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZS5sZW5ndGggPiAwICYmIHBhdGllbnRET0IgJiYgcGF0aWVudERPQi5sZW5ndGggPiAwKSB7CglwYXRpZW50TmFtZSA9IHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWU7Cgl2YXIgY3RjQXJyT2ZQYWlycyA9IFtdOwoJY3RjQXJyT2ZQYWlycy5wdXNoKCJGaXJzdE5hbWUiLCBwYXRpZW50Rmlyc3ROYW1lKTsKCWN0Y0Fyck9mUGFpcnMucHVzaCgiTGFzdE5hbWUiLCBwYXRpZW50TGFzdE5hbWUpOwoJY3RjQXJyT2ZQYWlycy5wdXNoKCJCaXJ0aERhdGUiLCBwYXRpZW50RE9CKTsKCWN0Y0Fyck9mUGFpcnMucHVzaCgiRGlhZ25vc2lzIiwgZGlhZ25vc2lzKTsgLy9KUEIxODA3MjEgYWRkZWQgZGlhZ25vc2lzCgljb250YWN0SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ29udGFjdCIsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgY3RjQXJyT2ZQYWlycyk7CglpZiAoYXR0YWNoUGF0aC5pbmRleE9mKGNvbnRhY3RJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrY29udGFjdElkOwoJCglhbGVydCgiQEBAQEBAQCBORVcgQ09OVEFDVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyBjb250YWN0SWQpOwoJLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwoJCglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0ZpcnN0X05hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfTGFzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9Eb0JfX2NfcmVhZGFibGUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIk5PTkUiICsgZHEgKyAiKTsgIik7CgkvLyBzZXQgdGhlIFBhdGllbnQgbG9va3VwIGZpZWxkcwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgY29udGFjdElkICsgZHEgKyAiKTsgIik7CglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGF0aWVudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyBkcSArICIpOyAiKTsKfQovL0pQQjE4MDIxNSBub3cgYXR0YWNoIHRvIHN0YWNrIHJlY29yZAphdHRhY2goZG9jLCBsYWJlbDArIkluZGV4ZWQtIiArIHBhdGllbnROYW1lICsgIi0iICsgZmF4VHlwZSArICItIiArIHN0YWNrSWQsIHNmU3RhY2tJZCk7CgoKaWYgKCFjYXNlSWQgfHwgMCA9PT0gY2FzZUlkLmxlbmd0aCkgewoJYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IENhc2UiKTsKCWFyck9mUGFpcnMgPSBbXTsKCS8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwoJYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCBjb250YWN0SWQpOwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCBYKGRvYywiWF9TdGF0dXMiKSk7CglhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiTmV3IEZheCIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCgkKCWlmIChwcm92aWRlcklkICYmIHByb3ZpZGVySWQubGVuZ3RoID4gMCkgewoJICAgIC8vRVJTMTgwMjIzIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcm92aWRlcl9fYyIsIHByb3ZpZGVySWQpOwoJICAgIGFyck9mUGFpcnMucHVzaCgiQWNjb3VudElkIiwgcHJvdmlkZXJJZCk7IC8vRVJTMTgwMjIzICM0NjAzNiBQVVQgWU9VUiBJTklUSUFMUyEhIQoJfQoKCWlmICgxPT0xKSB7IC8vRVJTMTcwNTIzICMzNzE2MiBhZnRlciBkcnlydW4KCQkvL2Fyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwiMDEyUTAwMDAwMDA1QWhqIik7IC8vRVJTMTcwNTIzIFByaW9yIEF1dGgKCQlpZiAocHJpb3JpdHkgIT0gIk5vcm1hbCIpIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLHByaW9yaXR5KTsgIC8vRVJTMTcwNTI0ICMzNzE2MiBwcmlvcml0eSBvbiBDYXNlCgkJZWxzZSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5IiwiTWVkaXVtIik7CgkJYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCJGYXgiKTsKCX0KCS8vbmFtZT0iWF9aUEFQRVJfX1BhdGllbnRfX2MiCgkvL25hbWU9IlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiCgkvL25hbWU9IlhfWlBBUEVSX19MYXN0TmFtZV9fYyIKCWNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgbGFiZWwwKyJJbmRleGVkLSIgKyBwYXRpZW50TmFtZSArICItIiArIGZheFR5cGUgKyAiLSIgKyBzdGFja0lkLCBhcnJPZlBhaXJzKTsKCWFsZXJ0KCJDcmVhdGVkIENhc2Ugd2l0aCBJRDogIiArIGNhc2VJZCk7CglpZiAoY2FzZUlkID09ICJudWxsIiB8fCBjYXNlSWQgPT0gIk5FVyIpIGNhc2VJZD1udWxsOyAvL0VSUzE3MDYyMSBUT0RPIG5lZWQgYSBzdGFuZGFyZAp9CmVsc2UgewoJYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIENhc2U6ICIgKyBjYXNlSWQpOwoJYXR0YWNoKGRvYywgbGFiZWwwKyJJbmRleGVkLSIgKyBwYXRpZW50TmFtZSArICItIiArIGZheFR5cGUgKyAiLSIgKyBzdGFja0lkLCBjYXNlSWQpOwp9CgovL0FOMjAxODAyMjIgZ2V0IHRoZSBDYXNlIE51bWViZXIKdmFyIGNhc2VOdW1iZXIgPSBudWxsOwppZiAoY2FzZUlkKXsKICAgIHZhciBjYXNlTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNhc2VOdW1iZXIiLCBudWxsLCBjYXNlSWQpOwp9CgppZiAoYXR0YWNoUGF0aC5pbmRleE9mKGNhc2VJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrY2FzZUlkOwoKdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIHpUeXBlPSJGYXgiOyAvL0VSUzE4MDYxMgphbGVydCgiQEBAQHpUeXBlPSIrelR5cGUpOwphcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCB6VHlwZSk7CmFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIlNwbGl0IHpTdGFjayIpOyAvL0pQQjE4MDcxMSBhZGRlZCB6U3RhY2sKCmFsZXJ0KCJFUlMxODA1MDUgZG9jLmRlbGl2ZXJlZEZyb209Iitkb2MuZGVsaXZlcmVkRnJvbSk7CnZhciBjaGFubmVsPSJGYXgiOyAKaWYgKGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIkAiKT4tMSB8fCBkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHtjaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE4MDUwNSAjNDgxMDEKZWxzZSBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7Y2hhbm5lbD0iU2NhbiI7fSAvL0pQQjE4MDcxMSBhZGRlZCBpc05hTihkb2MuZGVsaXZlcmVkRnJvbQphcnJPZlBhaXJzLnB1c2goenArIkNoYW5uZWxfX2MiLGNoYW5uZWwpOwphcnJPZlBhaXJzLnB1c2goenArImxhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CmFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goenArIlBhZ2VzX19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwoKaWYgKHpEYXRhLmNhdGVnb3JpemVkUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5jYXRlZ29yaXplZFF1ZXVlSWQudHJpbSgpKTsgLy9FUlMxODA2MTUgdHJpbSgpIGluc3VyYW5jZSAKYWxlcnQoIiMjIyMgekRhdGEucHJvZ3JhbU5hbWU9KiIgK3pEYXRhLnByb2dyYW1OYW1lKyIqIHpEYXRhLlBST0dSQU1fWkNIQVJUQT0qIit6RGF0YS5QUk9HUkFNX1pDSEFSVEErIiogekRhdGEuUFJPR1JBTV9aUEFQWVJVUz0qIit6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKyIqIHpEYXRhLlBST0dSQU1fWkNBUlRBKyoiK3pEYXRhLlBST0dSQU1fWkNBUlRBKyIqIik7IC8vSlBCMTgwNzExIEFkZGluZyBjb21wYXJpbmcgb2YgcHJvZ3JhbSBuYW1lcwppZiAoekRhdGEucHJvZ3JhbU5hbWUgPT09IHpEYXRhLlBST0dSQU1fWkNIQVJUQSkgewoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsgLy9KUEIxODA3MTEgY2hhbmdlZCBQUk9HUkFNX1pDSEFSVEEKfQplbHNlIGlmICh6RGF0YS5wcm9ncmFtTmFtZSA9PT0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUykgewoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsgLy9KUEIxODA3MTEgY2hhbmdlZCBQUk9HUkFNX1pQQVBZUlVTCn0KZWxzZSBpZiAoekRhdGEucHJvZ3JhbU5hbWUgPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7CglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7IC8vSlBCMTgwNzExIGNoYW5nZWQgUFJPR1JBTV9aQ0FSVEEKfQplbHNlIHsKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiU3BlY2lhbCIpOwp9CmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOwphcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsZG9jLmRlbGl2ZXJlZFRvKTsgLy9FUlMxNzA2MjggY2FsbGVyIGlkCmFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsZG9jLmRlbGl2ZXJlZEZyb20pOwphcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlNwbGl0Iik7IC8vRVJTMTcwNzMxICM0MDU5MyAvL0VSUzE4MDYxMiAjNDYwNDAKYXJyT2ZQYWlycy5wdXNoKHpwKyJQYXJlbnRfX2MiLHNmU3RhY2tJZCk7IC8vLy9FUlMxODA2MTIgIzQ2MDQwIFpQQVBFUl9fUGFyZW50X19jCi8vYXJyT2ZQYWlycy5wdXNoKCJQcm92aWRlcl9GdWxsbmFtZV9fYyIsIFgoZG9jLCAiWF9Qcm92aWRlcl9GdWxsbmFtZV9fYyIpKTsgLy9KUEIxODA2MDggYWRkZWQgcHJvdmlkZXIgZnVsbG5hbWUKLy9hcnJPZlBhaXJzLnB1c2goIkZhY2lsaXR5X19jIiwgWChkb2MsICJYX0ZhY2lsaXR5X19jIikpOyAvL0pQQjE4MDYwOCBhZGRlZCBmYWNpbGl0eQovL2Fyck9mUGFpcnMucHVzaCgiQ2FzZV9OdW1iZXJfX2MiLCBYKGRvYywgIlhfQ2FzZV9OdW1iZXJfX2MiKSk7IC8vSlBCMTgwNjEzIGFkZGVkIGNhc2UgbnVtYmVyCmlmIChub3RlcykgewogICAgYXJyT2ZQYWlycy5wdXNoKCJOb3Rlc19fYyIsIG5vdGVzKTsKfQppZiAocHJvdmlkZXJJZCAmJiBwcm92aWRlcklkLmxlbmd0aCA+IDApIHsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcm92aWRlcl9fYyIsIHByb3ZpZGVySWQpOwoJaWYgKGF0dGFjaFBhdGguaW5kZXhPZihwcm92aWRlcklkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitwcm92aWRlcklkOwp9CmlmIChwYXRpZW50SWQgJiYgcGF0aWVudElkLmxlbmd0aCA+IDApIHsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50X19jIiwgcGF0aWVudElkKTsKCWlmIChhdHRhY2hQYXRoLmluZGV4T2YocGF0aWVudElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitwYXRpZW50SWQ7Cn0KaWYgKGNhc2VJZCAmJiBjYXNlSWQubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0Nhc2VfX2MiLCBjYXNlSWQpOwp9Cgp2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpTdGFjaywgInpTdGFjayBzcGxpdCBvbiAiICsgZm9ybWF0Tm93LCBhcnJPZlBhaXJzKSArICIiOyAvL0VSUzE4MDYxMiAjNDYwNDAgSlBCMTgwNjE2IGFkZGVkIHogdG8gU3RhY2sKYWxlcnQoIiMjIyMgU3RhY2sgUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CnZhciBjaGlsZFN0YWNrTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsIHpTdGFjaywgIk5hbWUiLCBudWxsLCBzZklkKTsgLy9KUEIxODA2MTMgYWRkZWQgY2hpbGRzdGFja251bWJlcgovL2F0dGFjaChkb2MsICJJbmRleGVkLSIrZm9ybWF0Tm93KyItIit0cmlhZ2VUeXBlLCBzZlN0YWNrSWQpOwphbGVydCgiQEBAQCB1cGRhdGVkIGFuZCBhdHRhY2hlZCB0byB6U3RhY2sgUmVjb3JkLCBpZCA9ICIgKyBzZlN0YWNrSWQpOwoKaWYgKDE9PT0wKSB7IC8vRVJTMTcwNjI3IFRPRE8gcmVmYWN0b3IKICAgIC8vQ1JOMTcwMjA4IElmIHdlIGhhdmUgYSBDb250YWN0IGFuZCB0aGUgdXNlciBzZW50IGEgUHJvdmlkZXIsIGFkZCB0aGUgcHJvdmlkZXIgdG8gdGhlIENvbnRhY3QuCiAgICB2YXIgcHJvdmlkZXIgPSBYKGRvYywgIlhfUHJpbWFyeV9DYXJlX1BoeXNpY2lhbl9fYyIpOwogICAgaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCAmJiBwcm92aWRlciAmJiBwcm92aWRlci5sZW5ndGggPiAwKSB7CiAgICAJYXJyT2ZQYWlycyA9IFtdOwogICAgCWFyck9mUGFpcnMucHVzaCgiUHJpbWFyeV9DYXJlX1BoeXNpY2lhbl9fYyIsIHByb3ZpZGVyKTsKICAgIAl1cGRhdGVTRlJlY29yZChkb2MsIkNvbnRhY3QiLGNvbnRhY3RJZCxhcnJPZlBhaXJzKTsKICAgIH0KfQovL0pQQjE4MDcxMiBUaGUgbmV3IGlkIG11c3QgYmUgZmlyc3QgaW4gdGhlIFhfYXR0YWNoZWRUbyBsaXN0ICMwMDA1MDEyMQphdHRhY2hQYXRoID0gYXR0YWNoUGF0aC5zdWJzdHJpbmcoMCwgYXR0YWNoUGF0aC5sYXN0SW5kZXhPZignLycpICsgMSkgKyBzZklkICsgIiwiICsgYXR0YWNoUGF0aC5zdWJzdHJpbmcoYXR0YWNoUGF0aC5sYXN0SW5kZXhPZignLycpICsgMSk7Cgp1bmxvY2tEb2N1bWVudChkb2MpOwptb3ZlRG9jdW1lbnQoZG9jLCBudWxsLCBwYXJlbnRGb2xkZXIpOwoKYXJyT2ZQYWlycyA9IFtdOwovL0VSUzE3MDkwOSBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiSW5kZXhlZCIpOwppZiAoMT09PTEgJiYgMT09PTApIHsgLy9FUlMxNzA5MDkgIzQwNTkyIGZvciB6RG9jU2V0IHN0YXR1c2VzIC8vRVJTMTgwMTAzICM0MTE1NSBzZXQgYWJvdmUKCi8vICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwoJYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwiSW5kZXhlZCIpOwovLyAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5MgogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwp9Ci8qIENSTjE2MDgyNSBTZXQgdGhlIHBhZ2UgY291bnQgc28gdGhhdCBpdCBkb2VzIG5vdCBoYXZlIHRoZSBwYXJlbnQgcGFnZSBjb3VudCAqLwp2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MscGFnZVJhbmdlKTsKYWxlcnQoIkBAQEAgcGFnZUNvdW50ID0gIiArIHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiWF9wYWdlcyIscGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1wYWdlcyIscGFnZUNvdW50KTsKaWYgKCFwYXRpZW50Rmlyc3ROYW1lIHx8IDAgPT0gcGF0aWVudEZpcnN0TmFtZS5sZW5ndGgpIHsgcGF0aWVudEZpcnN0TmFtZSA9ICJVbmtub3duIjsgfQppZiAoIXBhdGllbnRMYXN0TmFtZSB8fCAwID09IHBhdGllbnRMYXN0TmFtZS5sZW5ndGgpIHsgcGF0aWVudExhc3ROYW1lID0gIk5hbWUiOyB9CgphbGVydCAoIkBAQEBAIHpEYXRhLnByb2dyYW1OYW1lID0gIisgekRhdGEucHJvZ3JhbU5hbWUpOwoKYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIHpEYXRhLnByb2dyYW1OYW1lICsgIiAtIFNwbGl0IHpTdGFjayAiICsgY2hpbGRTdGFja051bWJlcik7IC8vSlBCMTgwNzExIHJlbW92ZWQgKyBjb21wYW55Q29kZSArICIgLSAiICsgc3RhY2tJZCBhZGRlZCBuZXcgU3BsaXQgelN0YWNrIGFuZCArIHpEYXRhLnByb2dyYW1OYW1lIC8vSlBCMTgwNzEyIGFkZGVkIHNwYWNlIGJldHdlZW4gbmFtZQphcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsZmF4VHlwZSk7IC8vSlBCMTgwMjE1IGNoYW5nZWQgZG9jdHlwZSBhbmQgZmF4dHlwZSBuYW1lCmFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLCBzZklkKTsJLy9KUEIxODA3MTIgTWFrZSBzdXJlIHdlIGhhdmUgdGhlIGNvcnJlY3Qgc3RhY2sgSWQgaW4gd2RkYXRhLCBub3QgdGhlIHBhcmVudCdzICMwMDA1MDEyMQphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsYXR0YWNoUGF0aCk7IC8vRVJTMTcwNjI4Cgp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp0cmFjayhkb2MsICJEb2MgSW5kZXhlZCAiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5yZWFkeX4pO3VwZGF0ZURFU3RhdHVzKH5pbmRleGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7CgovL0FOMjAxODAyMjIgZ3JhYiB0aGUgbmV3IENhc2UgbnVtYmVyCmlmIChjYXNlSWQgJiYgY2FzZU51bWJlcikgewogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7JCh+I1pQQVBFUl9fQ2FzZV9fY34pLnZhbCh+IiArIGNhc2VJZCArICJ+KTsgJCh+I1pQQVBFUl9fQ2FzZV9fY19DYXNlTnVtYmVyfikudmFsKH4iICsgY2FzZU51bWJlciArICJ+KTsgIik7Cn0KCi8vQU4xODAyMjIgZ3JhYiB0aGUgbmV3IENvbnRhY3QgSUQKaWYgKGNvbnRhY3RJZCAmJiBwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZSkgewogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7JCh+I1pQQVBFUl9fUGF0aWVudF9fY34pLnZhbCh+IiArIGNvbnRhY3RJZCArICJ+KTsgJCh+I1pQQVBFUl9fUGF0aWVudF9fY19OYW1lfikudmFsKH4iICsgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICJ+KTsgIik7Cn0KCi8qIGVuZCBvZiBydWxlICov"},"ordinal":5}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Index Rule Fired for Referrals @@@#"); //JPB180720 added new referral button rule
/* double-quote, newline characters */
var dq = String.fromCharCode(34);
var nl = String.fromCharCode(10);
var formatNow=getCurDateAndTime(doc);
var notes = doc.kbData.comments + "";   //CRN180619 Case #49437 Save any comments (notes) into the Notes__c field in the zStack
alert("@@@ NOTES: " + notes); //JPB180711 added NOTES

/* double-quote, newline characters */

var dq = String.fromCharCode(34); //JPB180626 added notes section line 9 thourgh 15
var nl = String.fromCharCode(10);
var formatNow=getCurDateAndTime(doc);
var notes = doc.kbData.comments + "";   //CRN180619 Case #49437 Save any comments (notes) into the Notes__c field in the zStack
alert("@@@ NOTES: " + notes);
var zp="ZPAPER__"; //ERS170626 now in the package
var zStack=zp+"zStack__c"; //"Stack__c"

var parentFolder = X(doc,"X_curFolder"); //JPB180626 added parentFolder
var stackId = X(doc, "X_stack");
var sfStackId = X(doc,"X_sfStackId");
if (sfStackId ==="") { //ERS170731 #40593
    X(doc,"X_attachedTo");
    if (sfStackId.lastIndexOf('/') >= 0) {
		sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/')+1);
		if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
}
var parentdbID = doc.dbID; //JPB180626 added doc.dbID
alert("@@@@ parent stack id = " + sfStackId);
var parentStackNumber = getSFField(doc, zStack, "Name", null, sfStackId); //JPB180626 added parentStackNumber
alert("#### Our parent stack number is " + parentStackNumber);
var stackFolder = stackId + "-STACK";
var companyCode = doc.deliveredTo;

/* Clear the trigger that invoked this rule */
//ERS170909 zData.clearTriggerCondition(doc,"X_buttonAction");
var indexInitialized = X(doc,"X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
	stackId = new Date().getTime() + "";
	stackFolder = stackId + "-STACK";
	zData.initializeStack(doc,stackFolder, companyCode, stackId);
}

// Does the user want to attach indexed pages to Case?

var caseId = X(doc, "X_ZPAPER__Case__c");
var contactId = X(doc, "X_ZPAPER__Patient__c");
var patientId=contactId; //TODO
var providerId = X(doc, "X_ZPAPER__Provider__c");
var patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
var patientLastName = X(doc, "X_ZPAPER__LastName__c");
var patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
var diagnosis = X(doc, "X_ZPAPER__Diagnosis__c"); //JPB180721 added diagnosis variable

//CRN180214 Judson wants this to be part of the attachment label

var faxType = X(doc, "X_ZPAPER__faxType__c");

// Get the document type (will be used to route to next folder)

var docType = X(doc, "X_Document_Type__c");
var nextFolder = "20500Triage-S2";				// Other folder is the default
var prevIndexPages = X(doc, "X_indexedPages");
var curIndexPages = X(doc, "X_idxPages");
if (prevIndexPages && prevIndexPages.length > 0 && curIndexPages && curIndexPages.length > 0) {
	prevIndexPages += ",";
}
curIndexPages = prevIndexPages + curIndexPages;
var arrOfPairs = [];
arrOfPairs.push("X_indexedPages", curIndexPages);
if (1===1) { //ERS170909 #40592 for zDocSet statuses
    var ba=doc.X("X_buttonAction")+"";
    ba=ba.substring(1+ba.lastIndexOf(" "));
    if (!ba.endsWith("ed") && ba !== "") { ba+="ed"; } //ERS180103 #41155
    if (ba !== "") { //ERS180103 #41155
        var now0 = getCurDateAndTime(doc,false,true);
        arrOfPairs.push("X_reviewedStatus",ba);
        arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
        arrOfPairs.push("X_buttonAction","");
    }
}
updateDB(doc,arrOfPairs);

var sfStackId = X(doc,"X_sfStackId");
if (sfStackId ==="") { //ERS170731 #40593
    X(doc,"X_attachedTo");
    if (sfStackId.lastIndexOf('/') >= 0) {
		arrOfPairs = []; //JPB180626 added arrOfPairs
		arrOfPairs.push("ZPAPER__Status__c", "Indexed"); //JPB180626 added indexed to status
		arrOfPairs.push("ZPAPER__Stage__c", "Indexed"); //JPB180626 added indexed to stage
		if (notes) {
			arrOfPairs.push("Notes__c", notes); //JPB180626 added notes
		}  //JPB180711 added curly brace
		sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/')+1);
		if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
	updateSFRecord(doc, "ZPAPER__zStack__c", sfStackId, arrOfPairs); //JPB180626 added updateSFRecord
}
var attachPath = X(doc,"X_attachedTo");
alert("@@@@@@ Currently attached to ZPAPER__zStack__c with ID: " + sfStackId);
zData.setbrandprogram(doc);	//JPB180712 Make sure the program name is set correctly

/* SPLIT OFF NEW SNIPPET HERE */

var pageRange = X(doc,"X_idxPages");
splitDocumentForIndex(doc, "index", pageRange);
alert("Case '"+caseId+"' and len="+caseId.length);

//*
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
//*

/* Attach the split document to a new Case record, if it wasn't passed in */
var priority=X(doc,"X_ZPAPER__Priority__c"); //ERS170626
var label0="";
var triageType=doc.docType;
var patientName;

/* Attach the split document to Contact record if required */
alert("@@@@ attaching to a Contact? contactId = " + contactId);
if (contactId && contactId.length > 0) {
	
	if (attachPath.indexOf(contactId)==-1) attachPath+=","+contactId;
	var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, contactId);
	patientFirstName = X(doc, "FirstName", contactFlds);
	patientLastName = X(doc, "LastName", contactFlds);
	patientName = patientFirstName + " " + patientLastName;
	attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, contactId);
}
else if (patientFirstName && patientFirstName.length > 0 && patientLastName && patientLastName.length > 0 && patientDOB && patientDOB.length > 0) {
	patientName = patientFirstName + " " + patientLastName;
	var ctcArrOfPairs = [];
	ctcArrOfPairs.push("FirstName", patientFirstName);
	ctcArrOfPairs.push("LastName", patientLastName);
	ctcArrOfPairs.push("BirthDate", patientDOB);
	ctcArrOfPairs.push("Diagnosis", diagnosis); //JPB180721 added diagnosis
	contactId = createAndAttach(doc, "Contact", label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, ctcArrOfPairs);
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
//JPB180215 now attach to stack record
attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, sfStackId);


if (!caseId || 0 === caseId.length) {
	alert("@@@@ creating new Case");
	arrOfPairs = [];
	//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
	arrOfPairs.push("ContactId", contactId);
	arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__latestFax__c", formatNow); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //JPB 170512 added these workflow fields
	arrOfPairs.push("Status", X(doc,"X_Status"));
	arrOfPairs.push("Type", "New Fax"); //JPB 170512 added these workflow fields
	
	if (providerId && providerId.length > 0) {
	    //ERS180223 arrOfPairs.push("ZPAPER__Provider__c", providerId);
	    arrOfPairs.push("AccountId", providerId); //ERS180223 #46036 PUT YOUR INITIALS!!!
	}

	if (1==1) { //ERS170523 #37162 after dryrun
		//arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
		if (priority != "Normal") arrOfPairs.push("Priority",priority);  //ERS170524 #37162 priority on Case
		else arrOfPairs.push("Priority","Medium");
		arrOfPairs.push("Origin","Fax");
	}
	//name="X_ZPAPER__Patient__c"
	//name="X_ZPAPER__FirstName__c"
	//name="X_ZPAPER__LastName__c"
	caseId = createAndAttach(doc, "Case", label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, arrOfPairs);
	alert("Created Case with ID: " + caseId);
	if (caseId == "null" || caseId == "NEW") caseId=null; //ERS170621 TODO need a standard
}
else {
	alert("@@@@ attaching to existing Case: " + caseId);
	attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, caseId);
}

//AN20180222 get the Case Numeber
var caseNumber = null;
if (caseId){
    var caseNumber = getSFField(doc, "Case", "CaseNumber", null, caseId);
}

if (attachPath.indexOf(caseId)==-1) attachPath+=","+caseId;

var arrOfPairs = [];
var zType="Fax"; //ERS180612
alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", zType);
arrOfPairs.push(zp+"Status__c", "Split zStack"); //JPB180711 added zStack

alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);
var channel="Fax"; 
if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {channel="Email";} //ERS180505 #48101
else if (isNaN(doc.deliveredFrom)) {channel="Scan";} //JPB180711 added isNaN(doc.deliveredFrom
arrOfPairs.push(zp+"Channel__c",channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));

if (zData.categorizedQueueId) arrOfPairs.push("OwnerId",zData.categorizedQueueId.trim()); //ERS180615 trim() insurance 
alert("#### zData.programName=*" +zData.programName+"* zData.PROGRAM_ZCHARTA=*"+zData.PROGRAM_ZCHARTA+"* zData.PROGRAM_ZPAPYRUS=*"+zData.PROGRAM_ZPAPYRUS+"* zData.PROGRAM_ZCARTA+*"+zData.PROGRAM_ZCARTA+"*"); //JPB180711 Adding comparing of program names
if (zData.programName === zData.PROGRAM_ZCHARTA) {
	arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB180711 changed PROGRAM_ZCHARTA
}
else if (zData.programName === zData.PROGRAM_ZPAPYRUS) {
	arrOfPairs.push(zp+"Priority__c", "Medium"); //JPB180711 changed PROGRAM_ZPAPYRUS
}
else if (zData.programName === zData.PROGRAM_ZCARTA) {
	arrOfPairs.push(zp+"Priority__c", "Critical"); //JPB180711 changed PROGRAM_ZCARTA
}
else {
	arrOfPairs.push(zp+"Priority__c", "Special");
}
arrOfPairs.push(zp+"Program_Name__c", zData.programName);
arrOfPairs.push(zp+"sentFaxTo__c",doc.deliveredTo); //ERS170628 caller id
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
arrOfPairs.push(zp+"Stage__c", "Split"); //ERS170731 #40593 //ERS180612 #46040
arrOfPairs.push(zp+"Parent__c",sfStackId); ////ERS180612 #46040 ZPAPER__Parent__c
//arrOfPairs.push("Provider_Fullname__c", X(doc, "X_Provider_Fullname__c")); //JPB180608 added provider fullname
//arrOfPairs.push("Facility__c", X(doc, "X_Facility__c")); //JPB180608 added facility
//arrOfPairs.push("Case_Number__c", X(doc, "X_Case_Number__c")); //JPB180613 added case number
if (notes) {
    arrOfPairs.push("Notes__c", notes);
}
if (providerId && providerId.length > 0) {
	arrOfPairs.push("ZPAPER__Provider__c", providerId);
	if (attachPath.indexOf(providerId)==-1) attachPath+=","+providerId;
}
if (patientId && patientId.length > 0) {
	arrOfPairs.push("ZPAPER__Patient__c", patientId);
	if (attachPath.indexOf(patientId)==-1) attachPath+=","+patientId;
}
if (caseId && caseId.length > 0) {
	arrOfPairs.push("ZPAPER__Case__c", caseId);
}

var sfId = createAndAttach(doc, zStack, "zStack split on " + formatNow, arrOfPairs) + ""; //ERS180612 #46040 JPB180616 added z to Stack
alert("#### Stack Received. Attached to: " + sfId);
var childStackNumber = getSFField(doc, zStack, "Name", null, sfId); //JPB180613 added childstacknumber
//attach(doc, "Indexed-"+formatNow+"-"+triageType, sfStackId);
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId);

if (1===0) { //ERS170627 TODO refactor
    //CRN170208 If we have a Contact and the user sent a Provider, add the provider to the Contact.
    var provider = X(doc, "X_Primary_Care_Physician__c");
    if (contactId && contactId.length > 0 && provider && provider.length > 0) {
    	arrOfPairs = [];
    	arrOfPairs.push("Primary_Care_Physician__c", provider);
    	updateSFRecord(doc,"Contact",contactId,arrOfPairs);
    }
}
//JPB180712 The new id must be first in the X_attachedTo list #00050121
attachPath = attachPath.substring(0, attachPath.lastIndexOf('/') + 1) + sfId + "," + attachPath.substring(attachPath.lastIndexOf('/') + 1);

unlockDocument(doc);
moveDocument(doc, null, parentFolder);

arrOfPairs = [];
//ERS170909 arrOfPairs.push("X_reviewedStatus", "Indexed");
if (1===1 && 1===0) { //ERS170909 #40592 for zDocSet statuses //ERS180103 #41155 set above

//    var now0 = getCurDateAndTime(doc,false,true);
	arrOfPairs.push("X_reviewedStatus","Indexed");
//    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
    arrOfPairs.push("X_buttonAction","");
}
/* CRN160825 Set the page count so that it does not have the parent page count */
var pageCount = zData.countPages(doc,pageRange);
alert("@@@@ pageCount = " + pageCount);
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
if (!patientFirstName || 0 == patientFirstName.length) { patientFirstName = "Unknown"; }
if (!patientLastName || 0 == patientLastName.length) { patientLastName = "Name"; }

alert ("@@@@@ zData.programName = "+ zData.programName);

arrOfPairs.push("db-label", patientFirstName + " " + patientLastName + " - " + zData.programName + " - Split zStack " + childStackNumber); //JPB180711 removed + companyCode + " - " + stackId added new Split zStack and + zData.programName //JPB180712 added space between name
arrOfPairs.push("X_docType",faxType); //JPB180215 changed doctype and faxtype name
arrOfPairs.push("X_sfStackId", sfId);	//JPB180712 Make sure we have the correct stack Id in wddata, not the parent's #00050121
arrOfPairs.push("X_attachedTo",attachPath); //ERS170628

updateDB(doc,arrOfPairs);

track(doc, "Doc Indexed ", "Document with Id: " + doc.dbID, pageCount);
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");

//AN20180222 grab the new Case number
if (caseId && caseNumber) {
    addPostExecutionScript(doc, ";$(~#ZPAPER__Case__c~).val(~" + caseId + "~); $(~#ZPAPER__Case__c_CaseNumber~).val(~" + caseNumber + "~); ");
}

//AN180222 grab the new Contact ID
if (contactId && patientFirstName && patientLastName) {
    addPostExecutionScript(doc, ";$(~#ZPAPER__Patient__c~).val(~" + contactId + "~); $(~#ZPAPER__Patient__c_Name~).val(~" + patientFirstName + " " + patientLastName + "~); ");
}

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
