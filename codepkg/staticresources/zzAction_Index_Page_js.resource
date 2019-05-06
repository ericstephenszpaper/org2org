<!--
// Name: Index Page
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: updated for account and contact
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-05-04 17:58:19","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIFNhbGVzIERlbW8gT3JnCmFsZXJ0KCJAQEBAIEluZGV4IFJ1bGUgRmlyZWQgQEBAIyIpOwovKiBkb3VibGUtcXVvdGUsIG5ld2xpbmUgY2hhcmFjdGVycyAqLwp2YXIgZHEgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDM0KTsKdmFyIG5sID0gU3RyaW5nLmZyb21DaGFyQ29kZSgxMCk7CnZhciBmb3JtYXROb3c9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIG5vdGVzID0gZG9jLmtiRGF0YS5jb21tZW50cyArICIiOyAgIAphbGVydCgiQEBAIE5PVEVTOiAiICsgbm90ZXMpOyAKCi8qIGRvdWJsZS1xdW90ZSwgbmV3bGluZSBjaGFyYWN0ZXJzICovCgp2YXIgZHEgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDM0KTsgCnZhciBubCA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMTApOwp2YXIgZm9ybWF0Tm93PWdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBub3RlcyA9IGRvYy5rYkRhdGEuY29tbWVudHMgKyAiIjsgICAKYWxlcnQoIkBAQCBOT1RFUzogIiArIG5vdGVzKTsKdmFyIHpwPSJaUEFQRVJfXyI7IAp2YXIgelN0YWNrPXpwKyJ6U3RhY2tfX2MiOyAKCnZhciBwYXJlbnRGb2xkZXIgPSBYKGRvYywiWF9jdXJGb2xkZXIiKTsgCnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CnZhciBzZlN0YWNrSWQgPSBYKGRvYywiWF9zZlN0YWNrSWQiKTsKaWYgKHNmU3RhY2tJZCA9PT0iIikgeyAKICAgIFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsKICAgIGlmIChzZlN0YWNrSWQubGFzdEluZGV4T2YoJy8nKSA+PSAwKSB7CiAgICAgICAgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZyhzZlN0YWNrSWQubGFzdEluZGV4T2YoJy8nKSsxKTsKICAgICAgICBpZiAoc2ZTdGFja0lkLmluZGV4T2YoJywnKSA+PSAwKSB7IHNmU3RhY2tJZCA9IHNmU3RhY2tJZC5zdWJzdHJpbmcoMCwgc2ZTdGFja0lkLmluZGV4T2YoJywnKSk7IH0KICAgIH0KfQp2YXIgcGFyZW50ZGJJRCA9IGRvYy5kYklEOyAKYWxlcnQoIkBAQEAgcGFyZW50IHN0YWNrIGlkID0gIiArIHNmU3RhY2tJZCk7CnZhciBwYXJlbnRTdGFja051bWJlciA9IGdldFNGRmllbGQoZG9jLCB6U3RhY2ssICJOYW1lLFpQQVBFUl9fUHJpb3JpdHlfX2MiLCBudWxsLCBzZlN0YWNrSWQpOyAKYWxlcnQoIiMjIyMgT3VyIHBhcmVudCBzdGFjayBudW1iZXIgaXMgIiArIHBhcmVudFN0YWNrTnVtYmVyKTsKdmFyIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwp2YXIgY29tcGFueUNvZGUgPSBkb2MuZGVsaXZlcmVkVG87Ci8vdmFyIHBhcmVudFByaW9yaXR5ID0gCgovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCgp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CiAgICBzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwogICAgekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYyxzdGFja0ZvbGRlciwgY29tcGFueUNvZGUsIHN0YWNrSWQpOwp9CgovLyBEb2VzIHRoZSB1c2VyIHdhbnQgdG8gYXR0YWNoIGluZGV4ZWQgcGFnZXMgdG8gQ2FzZT8KCnZhciBjYXNlSWQgPSBYKGRvYywgIlhfWlBBUEVSX19DYXNlX19jIik7CnZhciBjb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7CnZhciBwYXRpZW50SWQ9Y29udGFjdElkOyAvL1RPRE8KdmFyIHByb3ZpZGVySWQgPSBYKGRvYywgIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOwp2YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwp2YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKdmFyIGZheFR5cGUgPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7CmFsZXJ0KCJAQEBAIFBhcmVudCBYX1pQQVBFUl9fZmF4VHlwZV9fYyA9ICIgKyBmYXhUeXBlKTsKCi8vIEdldCB0aGUgZG9jdW1lbnQgdHlwZSAod2lsbCBiZSB1c2VkIHRvIHJvdXRlIHRvIG5leHQgZm9sZGVyKQp2YXIgY2hhbm5lbD0iRmF4IjsgLy9QdjE5MDQxNiB1cGRhdGVkIGZvciBjYXNlIHR5cGUKaWYgKGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIkAiKT4tMSB8fCBkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHtjaGFubmVsPSJFbWFpbCI7fSAKZWxzZSBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7Y2hhbm5lbD0iU2NhbiI7fSAKCnZhciBkb2NUeXBlID0gWChkb2MsICJYX0RvY3VtZW50X1R5cGVfX2MiKTsKaWYgKGZheFR5cGUgIT09ICIiICYmIGZheFR5cGUudG9Mb3dlckNhc2UoKSAhPSAiZmF4IikgZG9jVHlwZT1mYXhUeXBlOyAKdmFyIG5leHRGb2xkZXIgPSAiMjA1MDBUcmlhZ2UtUzIiOyAgICAgICAgICAgICAgCnZhciBwcmV2SW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pbmRleGVkUGFnZXMiKTsKdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKaWYgKHByZXZJbmRleFBhZ2VzICYmIHByZXZJbmRleFBhZ2VzLmxlbmd0aCA+IDAgJiYgY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICAgIHByZXZJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzID0gcHJldkluZGV4UGFnZXMgKyBjdXJJbmRleFBhZ2VzOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgY3VyWFJldmlld3MgPSBYKGRvYywgIlhfcmV2aWV3cyIpOwp2YXIgcGFyZW50SXNTaWduZWQgPSBjdXJYUmV2aWV3cyAmJiBjdXJYUmV2aWV3cy5pbmRleE9mKCJTaWduZWQgYnkgYWdlbnQiKSA+PSAwOwphcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhlZFBhZ2VzIiwgY3VySW5kZXhQYWdlcyk7CmlmICgxPT09MSkgeyAKICAgIHZhciBiYT1kb2MuWCgiWF9idXR0b25BY3Rpb24iKSsiIjsKICAgIGJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgaWYgKCFiYS5lbmRzV2l0aCgiZWQiKSAmJiBiYSAhPT0gIiIpIHsgYmErPSJlZCI7IH0gCiAgICBpZiAoYmEgIT09ICIiKSB7IAogICAgICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwovLyAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICB9Cn0KdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCJYX3NmU3RhY2tJZCIpOwppZiAoc2ZTdGFja0lkID09PSIiKSB7IAogICAgWChkb2MsIlhfYXR0YWNoZWRUbyIpOwogICAgaWYgKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpID49IDApIHsKICAgICAgICBhcnJPZlBhaXJzID0gW107IAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19TdGF0dXNfX2MiLCAiUmVjZWl2ZWQiKTsgLy9QVjE5MDQxOCBVcGRhdGVkIGZvciBpbmNvbWluZyBzdGF0dXMgdG8gYmUgUmVjZWl2ZWQKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhZ2VfX2MiLCAiSW5kZXhlZCIpOyAKICAgICAgICBpZiAobm90ZXMpIHsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJOb3Rlc19fYyIsIG5vdGVzKTsgCiAgICAgICAgfSAgCiAgICAgICAgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZyhzZlN0YWNrSWQubGFzdEluZGV4T2YoJy8nKSsxKTsKICAgICAgICBpZiAoc2ZTdGFja0lkLmluZGV4T2YoJywnKSA+PSAwKSB7IHNmU3RhY2tJZCA9IHNmU3RhY2tJZC5zdWJzdHJpbmcoMCwgc2ZTdGFja0lkLmluZGV4T2YoJywnKSk7IH0KICAgIH0KICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgIlpQQVBFUl9felN0YWNrX19jIiwgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsgCn0KdmFyIGF0dGFjaFBhdGggPSBYKGRvYywiWF9hdHRhY2hlZFRvIik7CmFsZXJ0KCJAQEBAQEAgQ3VycmVudGx5IGF0dGFjaGVkIHRvIFpQQVBFUl9felN0YWNrX19jIHdpdGggSUQ6ICIgKyBzZlN0YWNrSWQpOwp6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgCgovKiBTUExJVCBPRkYgTkVXIFNOSVBQRVQgSEVSRSAqLwoKdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CnRyeSB7CmFsZXJ0KCJAQEBAIFBhcmVudCBkYklEID0gIiArIGRvYy5kYklEKTsKICAgIHNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJpbmRleCIsIHBhZ2VSYW5nZSk7CiAgICBhbGVydCgiIyMjIyBDaGlsZCBkYklEID0gIiArIGRvYy5kYklEKTsKfQpjYXRjaChlcnIpIHsKICAgIGFsZXJ0KCJFcnJvciB3aGVuIHNwbGl0dGluZyBkb2N1bWVudDogIiArIGVyciArICIuIEFCT1JUSU5HLi4uIik7CiAgICByZXR1cm47Cn0KYWxlcnQoIkNhc2UgJyIrY2FzZUlkKyInIGFuZCBsZW49IitjYXNlSWQubGVuZ3RoKTsKCi8vKgovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCi8vKgoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBhIG5ldyBDYXNlIHJlY29yZCwgaWYgaXQgd2Fzbid0IHBhc3NlZCBpbiAqLwp2YXIgcHJpb3JpdHk9WChkb2MsIlhfWlBBUEVSX19Qcmlvcml0eV9fYyIpOyAKdmFyIGxhYmVsMD0iIjsKdmFyIHRyaWFnZVR5cGU9ZG9jLmRvY1R5cGU7CnZhciBwYXRpZW50TmFtZTsKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gQ29udGFjdCByZWNvcmQgaWYgcmVxdWlyZWQgKi8KYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGEgQ29udGFjdD8gY29udGFjdElkID0gIiArIGNvbnRhY3RJZCk7CmlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKICAgIAogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjb250YWN0SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2NvbnRhY3RJZDsKICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkFjY291bnQiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgY29udGFjdElkKTsgCiAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgcGF0aWVudE5hbWUgPSBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lOwogICAgYXR0YWNoKGRvYywgbGFiZWwwKyJJbmRleGVkLSIgKyBwYXRpZW50TmFtZSArICItIiArIGZheFR5cGUgKyAiLSIgKyBzdGFja0lkLCBjb250YWN0SWQpOwp9CmVsc2UgaWYgKHBhdGllbnRGaXJzdE5hbWUgJiYgcGF0aWVudEZpcnN0TmFtZS5sZW5ndGggPiAwICYmIHBhdGllbnRMYXN0TmFtZSAmJiBwYXRpZW50TGFzdE5hbWUubGVuZ3RoID4gMCAmJiBwYXRpZW50RE9CICYmIHBhdGllbnRET0IubGVuZ3RoID4gMCkgewogICAgcGF0aWVudE5hbWUgPSBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lOwogICAgdmFyIGN0Y0Fyck9mUGFpcnMgPSBbXTsKICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIiwgcGF0aWVudEZpcnN0TmFtZSk7CiAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgcGF0aWVudExhc3ROYW1lKTsKICAgIC8vY3RjQXJyT2ZQYWlycy5wdXNoKCJCaXJ0aERhdGUiLCBwYXRpZW50RE9CKTsKICAgIGNvbnRhY3RJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJBY2NvdW50IiwgbGFiZWwwKyJJbmRleGVkLSIgKyBwYXRpZW50TmFtZSArICItIiArIGZheFR5cGUgKyAiLSIgKyBzdGFja0lkLCBjdGNBcnJPZlBhaXJzKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7CiAgICAKICAgIGFsZXJ0KCJAQEBAQEBAIE5FVyBDT05UQUNUIENSRUFURUQgV0lUSCBJRDogIiArIGNvbnRhY3RJZCk7CiAgICAvLyBjbGVhciBvdXQgdGhlICJOZXcgUGF0aWVudCIgZmllbGRzCiAgICAKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRmlyc3RfTmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9MYXN0X05hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKICAgIC8vIHNldCB0aGUgUGF0aWVudCBsb29rdXAgZmllbGRzCiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGF0aWVudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBjb250YWN0SWQgKyBkcSArICIpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArIGRxICsgIik7ICIpOwp9CgphdHRhY2goZG9jLCBsYWJlbDArIkluZGV4ZWQtIiArIHBhdGllbnROYW1lICsgIi0iICsgZmF4VHlwZSArICItIiArIHN0YWNrSWQsIHNmU3RhY2tJZCk7CnZhciBzZlVzZXJJRCA9IGRvYy5rYkRhdGEuc2ZVc2VySUQ7IC8vIFBWMTkwNDIxIHVwZGF0ZWQgZm9yIHJlbW90ZSB1c2VyCmlmKCFzZlVzZXJJRCl7CiAgICBzZlVzZXJJRD0gZ2V0U0ZGaWVsZChkb2MsICJVc2VyIiwiSWQiLCJ1c2VybmFtZT0nIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiciKTsKfQphbGVydCgiUFYxOTA0MTUgc2ZVc2VySUQgOiAiICtzZlVzZXJJRCk7CgppZiAoIWNhc2VJZCB8fCAwID09PSBjYXNlSWQubGVuZ3RoKSB7CiAgICBhbGVydCgiQEBAQCBjcmVhdGluZyBuZXcgQ2FzZSIpOwogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgCiAgIC8vYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCBjb250YWN0SWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCBYKGRvYywiWF9TdGF0dXMiKSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCBjaGFubmVsKTsgLy9QdjE5MDQxNiB1cGRhdGVkIGZvciBjYXNlIHR5cGUKICAgIAogICAgaWYgKHByb3ZpZGVySWQgJiYgcHJvdmlkZXJJZC5sZW5ndGggPiAwKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCBwcm92aWRlcklkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsY29udGFjdElkICk7IAogICAgfQoKICAgIGlmICgxPT0xKSB7IAogICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCIwMTJRMDAwMDAwMDVBaGoiKTsgLy9FUlMxNzA1MjMgUHJpb3IgQXV0aAogICAgICAgIGlmIChwcmlvcml0eSAhPSAiTm9ybWFsIikgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIscHJpb3JpdHkpOyAgCiAgICAgICAgZWxzZSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5IiwiTWVkaXVtIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLGNoYW5uZWwpOyAvL1BWMTkwNDE2IHVwZGF0ZWQgZm9yIGNhc2Ugb3JpZ2luCiAgICB9CiAgICAKICAgIGFsZXJ0KCJQVjE5MDQxNSAiICsgYXJyT2ZQYWlycyk7ICAgIAogICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIixzZlVzZXJJRCk7Ly8gUHYxOTA0MTUgdXBkYXRlZCBmb3Igb3duZXIgaWQgYXMgY3VycmVudCB1c2VyCiAgICBhbGVydCgiUFYxOTA0MTUgc2ZVc2VySUQgOiAiICsgc2ZVc2VySUQpOwogICAgYWxlcnQoIlBWMTkwNDE1ICIgKyBhcnJPZlBhaXJzKTsKICAgIC8vbmFtZT0iWF9aUEFQRVJfX1BhdGllbnRfX2MiCiAgICAvL25hbWU9IlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiCiAgICAvL25hbWU9IlhfWlBBUEVSX19MYXN0TmFtZV9fYyIKICAgIGNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgbGFiZWwwKyJJbmRleGVkLSIgKyBwYXRpZW50TmFtZSArICItIiArIGZheFR5cGUgKyAiLSIgKyBzdGFja0lkLCBhcnJPZlBhaXJzKTsKICAgIGFsZXJ0KCJDcmVhdGVkIENhc2Ugd2l0aCBJRDogIiArIGNhc2VJZCk7CiAgICBpZiAoY2FzZUlkID09ICJudWxsIiB8fCBjYXNlSWQgPT0gIk5FVyIpIGNhc2VJZD1udWxsOyAKfQplbHNlIHsKICAgIGFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBDYXNlOiAiICsgY2FzZUlkKTsKICAgIGF0dGFjaChkb2MsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgY2FzZUlkKTsKfQoKdmFyIGNhc2VOdW1iZXIgPSBudWxsOwppZiAoY2FzZUlkKXsKICAgIHZhciBjYXNlTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNhc2VOdW1iZXIiLCBudWxsLCBjYXNlSWQpOwp9CgppZiAoYXR0YWNoUGF0aC5pbmRleE9mKGNhc2VJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrY2FzZUlkOwoKdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIHpUeXBlPSJGYXgiOyAKaWYgKGZheFR5cGUgIT09ICIiICYmIGZheFR5cGUudG9Mb3dlckNhc2UoKSAhPSAiZmF4IikgelR5cGU9ZmF4VHlwZTsgCmFsZXJ0KCJAQEBAelR5cGU9Iit6VHlwZSk7CmFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsIHpUeXBlKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGF0dXNfX2MiLCAiSW5kZXhlZCBEb2N1bWVudHMiKTsgLy9KUEIxOTA0MjcgdXBkYXRlZCBsYWJlbAoKYWxlcnQoIkVSUzE4MDUwNSBkb2MuZGVsaXZlcmVkRnJvbT0iK2RvYy5kZWxpdmVyZWRGcm9tKTsKCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCmFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsY2hhbm5lbCk7CmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwphcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CgppZiAoekRhdGEuY2F0ZWdvcml6ZWRRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLmNhdGVnb3JpemVkUXVldWVJZC50cmltKCkpOyAgCmFsZXJ0KCIjIyMjIHpEYXRhLnByb2dyYW1OYW1lPSoiICt6RGF0YS5wcm9ncmFtTmFtZSsiKiB6RGF0YS5QUk9HUkFNX1pDSEFSVEE9KiIrekRhdGEuUFJPR1JBTV9aQ0hBUlRBKyIqIHpEYXRhLlBST0dSQU1fWlBBUFlSVVM9KiIrekRhdGEuUFJPR1JBTV9aUEFQWVJVUysiKiB6RGF0YS5QUk9HUkFNX1pDQVJUQSsqIit6RGF0YS5QUk9HUkFNX1pDQVJUQSsiKiB6RGF0YS5QUk9HUkFNX1RFQ0hGSURFUkE9KiIrekRhdGEuUFJPR1JBTV9URUNGSURFUkErIiogekRhdGEuUFJPR1JBTV9UWVNBQlJJPSoiK3pEYXRhLlBST0dSQU1fVFlTQUJSSSk7IC8vSlBCMTgwODA4IEFkZGluZyAyIERSVUdTIEZPUiBwcm9zcGVjdCBkZW1vIHByb2dyYW1OYW1lCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAp2YXIgY2xhc3NpZmljYXRpb24gPSBYKGRvYywiWF9aUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIik7IC8vUFYxOTA0MjMgdXBkYXRlZAogCmlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVyZ2VudCIpOyAKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUykgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsgCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7IAp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQSkgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJTcGVjaWFsIik7ICAKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9UWVNBQlJJKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlN0YW5kYXJkIik7ICAKfQplbHNlIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7Cn0KYWxlcnQoIiMjIyMgWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyA9IisgekRhdGEucHJvZ3JhbU5hbWUpOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCgphcnJPZlBhaXJzLnB1c2goenArIkNsYXNzaWZpY2F0aW9uX19jIiwgY2xhc3NpZmljYXRpb24gKTsgLy9QdjE5MDQyMyBVcGRhdGVkCmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLGRvYy5kZWxpdmVyZWRUbyk7IAphcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLGRvYy5kZWxpdmVyZWRGcm9tKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJJbmRleGVkIik7IC8vSlBCMTkwNDI3IHVwZGF0ZWQgbGFiZWwKYXJyT2ZQYWlycy5wdXNoKHpwKyJQYXJlbnRfX2MiLHNmU3RhY2tJZCk7IAovL2Fyck9mUGFpcnMucHVzaCgiUHJvdmlkZXJfRnVsbG5hbWVfX2MiLCBYKGRvYywgIlhfUHJvdmlkZXJfRnVsbG5hbWVfX2MiKSk7IAovL2Fyck9mUGFpcnMucHVzaCgiRmFjaWxpdHlfX2MiLCBYKGRvYywgIlhfRmFjaWxpdHlfX2MiKSk7IAovL2Fyck9mUGFpcnMucHVzaCgiQ2FzZV9OdW1iZXJfX2MiLCBYKGRvYywgIlhfQ2FzZV9OdW1iZXJfX2MiKSk7IAppZiAobm90ZXMpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiTm90ZXNfX2MiLCBub3Rlcyk7Cn0KaWYgKHByb3ZpZGVySWQgJiYgcHJvdmlkZXJJZC5sZW5ndGggPiAwKSB7CiAgICB2YXIgcHJvdmlkZXJGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQWNjb3VudCIsICJGYWNpbGl0eV9fYyxGYXgsUGhvbmUiLCBudWxsLCBwcm92aWRlcklkKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIkZhY2lsaXR5X19jIiwgWChkb2MsIkZhY2lsaXR5X19jIixwcm92aWRlckZsZHMpKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIkZheF9fYyIsIFgoZG9jLCJGYXgiLHByb3ZpZGVyRmxkcykpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QaG9uZV9fYyIsIFgoZG9jLCJQaG9uZSIscHJvdmlkZXJGbGRzKSk7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1Byb3ZpZGVyX19jIiwgcHJvdmlkZXJJZCk7IAogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZihwcm92aWRlcklkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitwcm92aWRlcklkOwp9CmlmIChwYXRpZW50SWQgJiYgcGF0aWVudElkLmxlbmd0aCA+IDApIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50X19jIiwgcGF0aWVudElkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YocGF0aWVudElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitwYXRpZW50SWQ7Cn0KaWYgKGNhc2VJZCAmJiBjYXNlSWQubGVuZ3RoID4gMCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0Nhc2VfX2MiLCBjYXNlSWQpOwp9CgovL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcmlvcml0eV9fYyIsIHBhcmVudFByaW9yaXR5KTsgCmFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsc2ZVc2VySUQpOyAvLyBQdjE5MDQxNSB1cGRhdGVkIGZvciBvd25lciBhcyBjdXJyZW50IHVzZXIKdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6U3RhY2ssICJEb2N1bWVudHMgSW5kZXhlZCBvbiAiICsgZm9ybWF0Tm93LCBhcnJPZlBhaXJzKSArICIiOyAvL0pQQjE5MDQyNyB1cGRhdGVkIGxhYmVsCmFsZXJ0KCIjIyMjIHpTdGFjayBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKdmFyIGNoaWxkU3RhY2tOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgelN0YWNrLCAiTmFtZSIsIG51bGwsIHNmSWQpOyAKLy9hdHRhY2goZG9jLCAiSW5kZXhlZC0iK2Zvcm1hdE5vdysiLSIrdHJpYWdlVHlwZSwgc2ZTdGFja0lkKTsKYWxlcnQoIkBAQEAgdXBkYXRlZCBhbmQgYXR0YWNoZWQgdG8gelN0YWNrIFJlY29yZCwgaWQgPSAiICsgc2ZTdGFja0lkKTsKCmlmICgxPT09MCkgeyAvL0VSUzE3MDYyNyBUT0RPIHJlZmFjdG9yCiAgICAKICAgIHZhciBwcm92aWRlciA9IFgoZG9jLCAiWF9QcmltYXJ5X0NhcmVfUGh5c2ljaWFuX19jIik7CiAgICBpZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwICYmIHByb3ZpZGVyICYmIHByb3ZpZGVyLmxlbmd0aCA+IDApIHsKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQcmltYXJ5X0NhcmVfUGh5c2ljaWFuX19jIiwgcHJvdmlkZXIpOwogICAgICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywiQWNjb3VudCIsY29udGFjdElkLGFyck9mUGFpcnMpOwogICAgfQp9CgphdHRhY2hQYXRoID0gYXR0YWNoUGF0aC5zdWJzdHJpbmcoMCwgYXR0YWNoUGF0aC5sYXN0SW5kZXhPZignLycpICsgMSkgKyBzZklkICsgIiwiICsgYXR0YWNoUGF0aC5zdWJzdHJpbmcoYXR0YWNoUGF0aC5sYXN0SW5kZXhPZignLycpICsgMSk7Cgp1bmxvY2tEb2N1bWVudChkb2MpOwptb3ZlRG9jdW1lbnQoZG9jLCBudWxsLCBwYXJlbnRGb2xkZXIpOwoKYXJyT2ZQYWlycyA9IFtdOwoKaWYgKDE9PT0xICYmIDE9PT0wKSB7IAoKLy8gICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCJJbmRleGVkIik7Ci8vICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7Cn0KLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwppZiAoIXBhdGllbnRGaXJzdE5hbWUgfHwgMCA9PSBwYXRpZW50Rmlyc3ROYW1lLmxlbmd0aCkgeyBwYXRpZW50Rmlyc3ROYW1lID0gIlVua25vd24iOyB9CmlmICghcGF0aWVudExhc3ROYW1lIHx8IDAgPT0gcGF0aWVudExhc3ROYW1lLmxlbmd0aCkgeyBwYXRpZW50TGFzdE5hbWUgPSAiTmFtZSI7IH0KCmFsZXJ0ICgiQEBAQEAgekRhdGEucHJvZ3JhbU5hbWUgPSAiKyB6RGF0YS5wcm9ncmFtTmFtZSk7CgphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICIgIC0gICIgKyBjbGFzc2lmaWNhdGlvbiArIiAgLSAgIisgIHpEYXRhLmRvY3VtZW50VHlwZU1hcFtkb2NUeXBlXSAgKyIgLSAgIiArIGNoaWxkU3RhY2tOdW1iZXIpOyAvL0pQQjE5MDQzMCB1cGRhdGVkIGxhYmVsCmFsZXJ0KCJAQEBAIFNldHRpbmcgWF9kb2NUeXBlIHRvOiAiICsgZmF4VHlwZSk7CmFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIixmYXhUeXBlKTsgCmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX2ZheFR5cGVfX2MiLGZheFR5cGUpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsIHNmSWQpOyAgIAphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsYXR0YWNoUGF0aCk7IAphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJJbmRleGVkIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp0cmFjayhkb2MsICJEb2MgSW5kZXhlZCAiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5yZWFkeX4pO3VwZGF0ZURFU3RhdHVzKH5pbmRleGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7CgppZiAoY2FzZUlkICYmIGNhc2VOdW1iZXIpIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyQofiNaUEFQRVJfX0Nhc2VfX2N+KS52YWwofiIgKyBjYXNlSWQgKyAifik7ICQofiNaUEFQRVJfX0Nhc2VfX2NfQ2FzZU51bWJlcn4pLnZhbCh+IiArIGNhc2VOdW1iZXIgKyAifik7ICIpOwp9CgoKaWYgKGNvbnRhY3RJZCAmJiBwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZSkgewogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7JCh+I1pQQVBFUl9fUGF0aWVudF9fY34pLnZhbCh+IiArIGNvbnRhY3RJZCArICJ+KTsgJCh+I1pQQVBFUl9fUGF0aWVudF9fY19OYW1lfikudmFsKH4iICsgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICJ+KTsgIik7Cn0KCi8qIGVuZCBvZiBydWxlICov"},"ordinal":7}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated rule Sales Demo Org
alert("@@@@ Index Rule Fired @@@#");
/* double-quote, newline characters */
var dq = String.fromCharCode(34);
var nl = String.fromCharCode(10);
var formatNow=getCurDateAndTime(doc);
var notes = doc.kbData.comments + "";   
alert("@@@ NOTES: " + notes); 

/* double-quote, newline characters */

var dq = String.fromCharCode(34); 
var nl = String.fromCharCode(10);
var formatNow=getCurDateAndTime(doc);
var notes = doc.kbData.comments + "";   
alert("@@@ NOTES: " + notes);
var zp="ZPAPER__"; 
var zStack=zp+"zStack__c"; 

var parentFolder = X(doc,"X_curFolder"); 
var stackId = X(doc, "X_stack");
var sfStackId = X(doc,"X_sfStackId");
if (sfStackId ==="") { 
    X(doc,"X_attachedTo");
    if (sfStackId.lastIndexOf('/') >= 0) {
        sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/')+1);
        if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
}
var parentdbID = doc.dbID; 
alert("@@@@ parent stack id = " + sfStackId);
var parentStackNumber = getSFField(doc, zStack, "Name,ZPAPER__Priority__c", null, sfStackId); 
alert("#### Our parent stack number is " + parentStackNumber);
var stackFolder = stackId + "-STACK";
var companyCode = doc.deliveredTo;
//var parentPriority = 

/* Clear the trigger that invoked this rule */

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
var faxType = X(doc, "X_ZPAPER__faxType__c");
alert("@@@@ Parent X_ZPAPER__faxType__c = " + faxType);

// Get the document type (will be used to route to next folder)
var channel="Fax"; //Pv190416 updated for case type
if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {channel="Email";} 
else if (isNaN(doc.deliveredFrom)) {channel="Scan";} 

var docType = X(doc, "X_Document_Type__c");
if (faxType !== "" && faxType.toLowerCase() != "fax") docType=faxType; 
var nextFolder = "20500Triage-S2";              
var prevIndexPages = X(doc, "X_indexedPages");
var curIndexPages = X(doc, "X_idxPages");
if (prevIndexPages && prevIndexPages.length > 0 && curIndexPages && curIndexPages.length > 0) {
    prevIndexPages += ",";
}
curIndexPages = prevIndexPages + curIndexPages;
var arrOfPairs = [];
var curXReviews = X(doc, "X_reviews");
var parentIsSigned = curXReviews && curXReviews.indexOf("Signed by agent") >= 0;
arrOfPairs.push("X_indexedPages", curIndexPages);
if (1===1) { 
    var ba=doc.X("X_buttonAction")+"";
    ba=ba.substring(1+ba.lastIndexOf(" "));
    if (!ba.endsWith("ed") && ba !== "") { ba+="ed"; } 
    if (ba !== "") { 
        var now0 = getCurDateAndTime(doc,false,true);
        arrOfPairs.push("X_reviewedStatus",ba);
//        arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); 
        arrOfPairs.push("X_buttonAction","");
    }
}
updateDB(doc,arrOfPairs);

var sfStackId = X(doc,"X_sfStackId");
if (sfStackId ==="") { 
    X(doc,"X_attachedTo");
    if (sfStackId.lastIndexOf('/') >= 0) {
        arrOfPairs = []; 
        arrOfPairs.push("ZPAPER__Status__c", "Received"); //PV190418 Updated for incoming status to be Received
        arrOfPairs.push("ZPAPER__Stage__c", "Indexed"); 
        if (notes) {
            arrOfPairs.push("Notes__c", notes); 
        }  
        sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/')+1);
        if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
    updateSFRecord(doc, "ZPAPER__zStack__c", sfStackId, arrOfPairs); 
}
var attachPath = X(doc,"X_attachedTo");
alert("@@@@@@ Currently attached to ZPAPER__zStack__c with ID: " + sfStackId);
zData.setbrandprogram(doc); 

/* SPLIT OFF NEW SNIPPET HERE */

var pageRange = X(doc,"X_idxPages");
try {
alert("@@@@ Parent dbID = " + doc.dbID);
    splitDocumentForIndex(doc, "index", pageRange);
    alert("#### Child dbID = " + doc.dbID);
}
catch(err) {
    alert("Error when splitting document: " + err + ". ABORTING...");
    return;
}
alert("Case '"+caseId+"' and len="+caseId.length);

//*
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
//*

/* Attach the split document to a new Case record, if it wasn't passed in */
var priority=X(doc,"X_ZPAPER__Priority__c"); 
var label0="";
var triageType=doc.docType;
var patientName;

/* Attach the split document to Contact record if required */
alert("@@@@ attaching to a Contact? contactId = " + contactId);
if (contactId && contactId.length > 0) {
    
    if (attachPath.indexOf(contactId)==-1) attachPath+=","+contactId;
    var contactFlds = getSFFields(doc, "Account", "FirstName,LastName", null, contactId); 
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
    //ctcArrOfPairs.push("BirthDate", patientDOB);
    contactId = createAndAttach(doc, "Account", label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, ctcArrOfPairs);
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

attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, sfStackId);
var sfUserID = doc.kbData.sfUserID; // PV190421 updated for remote user
if(!sfUserID){
    sfUserID= getSFField(doc, "User","Id","username='"+doc.kbData.remoteUser+"'");
}
alert("PV190415 sfUserID : " +sfUserID);

if (!caseId || 0 === caseId.length) {
    alert("@@@@ creating new Case");
    arrOfPairs = [];
    
   //arrOfPairs.push("ContactId", contactId);
    arrOfPairs.push("ZPAPER__newFax__c", "true"); 
    arrOfPairs.push("ZPAPER__latestFax__c", formatNow); 
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); 
    arrOfPairs.push("Status", X(doc,"X_Status"));
    arrOfPairs.push("Type", channel); //Pv190416 updated for case type
    
    if (providerId && providerId.length > 0) {
        arrOfPairs.push("ContactId", providerId);
        arrOfPairs.push("AccountId",contactId ); 
    }

    if (1==1) { 
        //arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
        if (priority != "Normal") arrOfPairs.push("Priority",priority);  
        else arrOfPairs.push("Priority","Medium");
        arrOfPairs.push("Origin",channel); //PV190416 updated for case origin
    }
    
    alert("PV190415 " + arrOfPairs);    
    arrOfPairs.push("OwnerId",sfUserID);// Pv190415 updated for owner id as current user
    alert("PV190415 sfUserID : " + sfUserID);
    alert("PV190415 " + arrOfPairs);
    //name="X_ZPAPER__Patient__c"
    //name="X_ZPAPER__FirstName__c"
    //name="X_ZPAPER__LastName__c"
    caseId = createAndAttach(doc, "Case", label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, arrOfPairs);
    alert("Created Case with ID: " + caseId);
    if (caseId == "null" || caseId == "NEW") caseId=null; 
}
else {
    alert("@@@@ attaching to existing Case: " + caseId);
    attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, caseId);
}

var caseNumber = null;
if (caseId){
    var caseNumber = getSFField(doc, "Case", "CaseNumber", null, caseId);
}

if (attachPath.indexOf(caseId)==-1) attachPath+=","+caseId;

var arrOfPairs = [];
var zType="Fax"; 
if (faxType !== "" && faxType.toLowerCase() != "fax") zType=faxType; 
alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", zType);
arrOfPairs.push(zp+"Status__c", "Indexed Documents"); //JPB190427 updated label

alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);

                                                                                                                       
arrOfPairs.push(zp+"Channel__c",channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));

if (zData.categorizedQueueId) arrOfPairs.push("OwnerId",zData.categorizedQueueId.trim());  
alert("#### zData.programName=*" +zData.programName+"* zData.PROGRAM_ZCHARTA=*"+zData.PROGRAM_ZCHARTA+"* zData.PROGRAM_ZPAPYRUS=*"+zData.PROGRAM_ZPAPYRUS+"* zData.PROGRAM_ZCARTA+*"+zData.PROGRAM_ZCARTA+"* zData.PROGRAM_TECHFIDERA=*"+zData.PROGRAM_TECFIDERA+"* zData.PROGRAM_TYSABRI=*"+zData.PROGRAM_TYSABRI); //JPB180808 Adding 2 DRUGS FOR prospect demo programName
                                                      
var classification = X(doc,"X_ZPAPER__Classification__c"); //PV190423 updated
 
if (zData.classification === zData.PROGRAM_ZCHARTA) {
    arrOfPairs.push(zp+"Priority__c", "Urgent"); 
}
else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {
    arrOfPairs.push(zp+"Priority__c", "Medium"); 
}
else if (zData.classification === zData.PROGRAM_ZCARTA) {
    arrOfPairs.push(zp+"Priority__c", "Critical"); 
}
else if (zData.classification === zData.PROGRAM_TECFIDERA) {
    arrOfPairs.push(zp+"Priority__c", "Special");  
}
else if (zData.classification === zData.PROGRAM_TYSABRI) {
    arrOfPairs.push(zp+"Priority__c", "Standard");  
}
else {
    arrOfPairs.push(zp+"Priority__c", "Normal");
}
alert("#### ZPAPER__Classification__c ="+ zData.programName);
                                                                                     

arrOfPairs.push(zp+"Classification__c", classification ); //Pv190423 Updated
arrOfPairs.push(zp+"Program_Name__c", zData.programName); 
arrOfPairs.push(zp+"sentFaxTo__c",doc.deliveredTo); 
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
arrOfPairs.push(zp+"Stage__c", "Indexed"); //JPB190427 updated label
arrOfPairs.push(zp+"Parent__c",sfStackId); 
//arrOfPairs.push("Provider_Fullname__c", X(doc, "X_Provider_Fullname__c")); 
//arrOfPairs.push("Facility__c", X(doc, "X_Facility__c")); 
//arrOfPairs.push("Case_Number__c", X(doc, "X_Case_Number__c")); 
if (notes) {
    arrOfPairs.push("Notes__c", notes);
}
if (providerId && providerId.length > 0) {
    var providerFlds = getSFFields(doc, "Account", "Facility__c,Fax,Phone", null, providerId); 
    arrOfPairs.push("Facility__c", X(doc,"Facility__c",providerFlds)); 
    arrOfPairs.push("Fax__c", X(doc,"Fax",providerFlds)); 
    arrOfPairs.push("ZPAPER__Phone__c", X(doc,"Phone",providerFlds)); 
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

//arrOfPairs.push("ZPAPER__Priority__c", parentPriority); 
arrOfPairs.push("OwnerId",sfUserID); // Pv190415 updated for owner as current user
var sfId = createAndAttach(doc, zStack, "Documents Indexed on " + formatNow, arrOfPairs) + ""; //JPB190427 updated label
alert("#### zStack Received. Attached to: " + sfId);
var childStackNumber = getSFField(doc, zStack, "Name", null, sfId); 
//attach(doc, "Indexed-"+formatNow+"-"+triageType, sfStackId);
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId);

if (1===0) { //ERS170627 TODO refactor
    
    var provider = X(doc, "X_Primary_Care_Physician__c");
    if (contactId && contactId.length > 0 && provider && provider.length > 0) {
        arrOfPairs = [];
        arrOfPairs.push("Primary_Care_Physician__c", provider);
        updateSFRecord(doc,"Account",contactId,arrOfPairs);
    }
}

attachPath = attachPath.substring(0, attachPath.lastIndexOf('/') + 1) + sfId + "," + attachPath.substring(attachPath.lastIndexOf('/') + 1);

unlockDocument(doc);
moveDocument(doc, null, parentFolder);

arrOfPairs = [];

if (1===1 && 1===0) { 

//    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus","Indexed");
//    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); 
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

arrOfPairs.push("db-label", patientFirstName + " " + patientLastName + "  -  " + classification +"  -  "+  zData.documentTypeMap[docType]  +" -  " + childStackNumber); //JPB190430 updated label
alert("@@@@ Setting X_docType to: " + faxType);
arrOfPairs.push("X_docType",faxType); 
arrOfPairs.push("X_ZPAPER__faxType__c",faxType); 
arrOfPairs.push("X_sfStackId", sfId);   
arrOfPairs.push("X_attachedTo",attachPath); 
arrOfPairs.push("X_reviews", "Indexed by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); 
                                  
updateDB(doc,arrOfPairs);

track(doc, "Doc Indexed ", "Document with Id: " + doc.dbID, pageCount);
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");

if (caseId && caseNumber) {
    addPostExecutionScript(doc, ";$(~#ZPAPER__Case__c~).val(~" + caseId + "~); $(~#ZPAPER__Case__c_CaseNumber~).val(~" + caseNumber + "~); ");
}


if (contactId && patientFirstName && patientLastName) {
    addPostExecutionScript(doc, ";$(~#ZPAPER__Patient__c~).val(~" + contactId + "~); $(~#ZPAPER__Patient__c_Name~).val(~" + patientFirstName + " " + patientLastName + "~); ");
}

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gekluc3RhbGwoKSB7IC8vRVJTMTcwNzIyIHNldCBvbiB0aGUgaW1wb3J0CiAgICAkKCJbbmFtZT0nZGItQkFURVMnXSIpLnZhbCgiIik7CiAgICAkKCIjWF9idXR0b25BY3Rpb25zIikudmFsKCJJbmRleCxJZ25vcmUsUmVqZWN0LFN0YWNrIENvbXBsZXRlIik7CiAgICAkKCIjWF9mb2xkZXJGb3JtcyIpLnZhbCgiMjAyMDAyMDE3MTEyNTA5MTExNV9EYXRhMl9XZWJfRm9ybSIpOwp9IC8vRVJTMTcwNzIyIGVuZCBvZiBmdW5jdGlvbgoKZnVuY3Rpb24gZG9WYWxpZGF0aW9uKCkgewogICAgLy9DUk4xNzA3MTkgRHJ1ZyBuYW1lIGlzIHJlcXVpcmVkCiAgICAvL0VSUzE3MDcxOSBtb3JlIGZpZWxkcyBmcm9tIEtlbgogICAgdmFyIGNhc2VJZCA9ICQoJ1tuYW1lPSJYX0Nhc2VfX2MiXScpLnZhbCgpOwogICAgLy9FUlMxNzA3MjcgZGVidWcgb25seSBhbGVydCgiQ2FzZSAiK2Nhc2VJZCk7CiAgICAKICAgIHZhciByZXFCdWZmZXIgPSAiIjsKICAgIAogICAgbj0iWF9aUEFQRVJfX2ZheFR5cGVfX2MiOyBsPSJEb2N1bWVudCBUeXBlIjsKICAgIGU9JCgnW25hbWU9IicrbisnIl0nKTsKICAgIGlmICghZS52YWwoKSB8fCAwID09PSBlLnZhbCgpLmxlbmd0aCB8fCAiRE9OT1RfU0FWRSIgPT09IGUudmFsKCkpIHsKICAgICAgICBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgIGlmIChyZXFCdWZmZXIubGVuZ3RoID4gMCkgeyByZXFCdWZmZXIgKz0gIiwgIjsgfQogICAgICAgIHJlcUJ1ZmZlciArPSBsOwogICAgfSBlbHNlIGUuY3NzKCdib3JkZXInLCczcHggc29saWQgZ3JlZW4nKTsKICAgIAogICAgbj0iWF9aUEFQRVJfX1ByaW9yaXR5X19jIjsgbD0iUHJpb3JpdHkiOwogICAgZT0kKCdbbmFtZT0iJytuKyciXScpOwogICAgaWYgKCFlLnZhbCgpIHx8IDAgPT09IGUudmFsKCkubGVuZ3RoIHx8ICJET05PVF9TQVZFIiA9PT0gZS52YWwoKSkgewogICAgICAgIGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgaWYgKHJlcUJ1ZmZlci5sZW5ndGggPiAwKSB7IHJlcUJ1ZmZlciArPSAiLCAiOyB9CiAgICAgICAgcmVxQnVmZmVyICs9IGw7CiAgICB9IGVsc2UgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwogICAgCiAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsKICAgICAgICBhbGVydCgiRVJST1I6IFRoZSBmb2xsb3dpbmcgZmllbGRzIGFyZSByZXF1aXJlZDogIiArIHJlcUJ1ZmZlcik7CiAgICAgICAgcmV0dXJuIGZhbHNlOyAgIC8vQ1JOMTcwNzE5IG9uZSBvciBtb3JlIGZpZWxkIGlzIG1pc3NpbmcsIGRvbid0IHNlbmQgdG8gdGhlIHJ1bGVzIGVuZ2luZQogICAgfQogICAgcmV0dXJuIHRydWU7ICAgICAgICAvL0NSTjE3MDcxOSBBbGwgcmVxdWlyZWQgZmllbGRzIGhhdmUgYmVlbiBzdXBwbGllZCwgbGV0IHRoZSBydWxlcyBlbmdpbmUgYmUgbm90aWZpZWQKfQoKcmV0dXJuIGRvVmFsaWRhdGlvbigpOw==
//--- RULE VALIDATION CODE - END ---

</script>
