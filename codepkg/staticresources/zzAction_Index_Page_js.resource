<!--
// Name: Index Page
// Committer: judson.bruno@zpaper.com
// Update: JPB190531 updated rule Sales Demo Org
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-05-31 14:24:39","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA1MzEgdXBkYXRlZCBydWxlIFNhbGVzIERlbW8gT3JnCmFsZXJ0KCJAQEBAIEluZGV4IFJ1bGUgRmlyZWQgQEBAIyIpOwovKiBkb3VibGUtcXVvdGUsIG5ld2xpbmUgY2hhcmFjdGVycyAqLwp2YXIgZHEgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDM0KTsKdmFyIG5sID0gU3RyaW5nLmZyb21DaGFyQ29kZSgxMCk7CnZhciBmb3JtYXROb3c9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIG5vdGVzID0gZG9jLmtiRGF0YS5jb21tZW50cyArICIiOyAgIAphbGVydCgiQEBAIE5PVEVTOiAiICsgbm90ZXMpOyAKCi8qIGRvdWJsZS1xdW90ZSwgbmV3bGluZSBjaGFyYWN0ZXJzICovCgp2YXIgZHEgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDM0KTsgCnZhciBubCA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMTApOwp2YXIgZm9ybWF0Tm93PWdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBub3RlcyA9IGRvYy5rYkRhdGEuY29tbWVudHMgKyAiIjsgICAKYWxlcnQoIkBAQCBOT1RFUzogIiArIG5vdGVzKTsKdmFyIHpwPSJaUEFQRVJfXyI7IAp2YXIgelN0YWNrPXpwKyJ6U3RhY2tfX2MiOyAKCnZhciBwYXJlbnRGb2xkZXIgPSBYKGRvYywiWF9jdXJGb2xkZXIiKTsgCnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CnZhciBzZlN0YWNrSWQgPSBYKGRvYywiWF9zZlN0YWNrSWQiKTsKaWYgKHNmU3RhY2tJZCA9PT0iIikgeyAKICAgIFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsKICAgIGlmIChzZlN0YWNrSWQubGFzdEluZGV4T2YoJy8nKSA+PSAwKSB7CiAgICAgICAgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZyhzZlN0YWNrSWQubGFzdEluZGV4T2YoJy8nKSsxKTsKICAgICAgICBpZiAoc2ZTdGFja0lkLmluZGV4T2YoJywnKSA+PSAwKSB7IHNmU3RhY2tJZCA9IHNmU3RhY2tJZC5zdWJzdHJpbmcoMCwgc2ZTdGFja0lkLmluZGV4T2YoJywnKSk7IH0KICAgIH0KfQp2YXIgcGFyZW50ZGJJRCA9IGRvYy5kYklEOyAKYWxlcnQoIkBAQEAgcGFyZW50IHN0YWNrIGlkID0gIiArIHNmU3RhY2tJZCk7CnZhciBwYXJlbnRTdGFja051bWJlciA9IGdldFNGRmllbGQoZG9jLCB6U3RhY2ssICJOYW1lLFpQQVBFUl9fUHJpb3JpdHlfX2MiLCBudWxsLCBzZlN0YWNrSWQpOyAKYWxlcnQoIiMjIyMgT3VyIHBhcmVudCBzdGFjayBudW1iZXIgaXMgIiArIHBhcmVudFN0YWNrTnVtYmVyKTsKdmFyIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwp2YXIgY29tcGFueUNvZGUgPSBkb2MuZGVsaXZlcmVkVG87Ci8vdmFyIHBhcmVudFByaW9yaXR5ID0gCgovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCgp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CiAgICBzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwogICAgekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYyxzdGFja0ZvbGRlciwgY29tcGFueUNvZGUsIHN0YWNrSWQpOwp9CgovLyBEb2VzIHRoZSB1c2VyIHdhbnQgdG8gYXR0YWNoIGluZGV4ZWQgcGFnZXMgdG8gQ2FzZT8KCnZhciBjYXNlSWQgPSBYKGRvYywgIlhfWlBBUEVSX19DYXNlX19jIik7CnZhciBjb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7CnZhciBwYXRpZW50SWQ9Y29udGFjdElkOyAvL1RPRE8KdmFyIHByb3ZpZGVySWQgPSBYKGRvYywgIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOwp2YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwp2YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKdmFyIGZheFR5cGUgPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7CmFsZXJ0KCJAQEBAIFBhcmVudCBYX1pQQVBFUl9fZmF4VHlwZV9fYyA9ICIgKyBmYXhUeXBlKTsKCi8vIEdldCB0aGUgZG9jdW1lbnQgdHlwZSAod2lsbCBiZSB1c2VkIHRvIHJvdXRlIHRvIG5leHQgZm9sZGVyKQp2YXIgY2hhbm5lbD0iRmF4IjsgLy9QdjE5MDQxNiB1cGRhdGVkIGZvciBjYXNlIHR5cGUKaWYgKGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIkAiKT4tMSB8fCBkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHtjaGFubmVsPSJFbWFpbCI7fSAKIGlmIChpc05hTihkb2MuZGVsaXZlcmVkVG8pKSB7CiAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewogICAgY2hhbm5lbCA9ICJjb21tdW5pdHkiOwogICAgfSAKICAgIGVsc2UgewogICAgY2hhbm5lbD0iU2NhbiI7CiAgICB9Cn0gIAoKdmFyIGRvY1R5cGUgPSBYKGRvYywgIlhfRG9jdW1lbnRfVHlwZV9fYyIpOwppZiAoZmF4VHlwZSAhPT0gIiIgJiYgZmF4VHlwZS50b0xvd2VyQ2FzZSgpICE9ICJmYXgiKSBkb2NUeXBlPWZheFR5cGU7IAp2YXIgbmV4dEZvbGRlciA9ICIyMDUwMFRyaWFnZS1TMiI7ICAgICAgICAgICAgICAKdmFyIHByZXZJbmRleFBhZ2VzID0gWChkb2MsICJYX2luZGV4ZWRQYWdlcyIpOwp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwppZiAocHJldkluZGV4UGFnZXMgJiYgcHJldkluZGV4UGFnZXMubGVuZ3RoID4gMCAmJiBjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewogICAgcHJldkluZGV4UGFnZXMgKz0gIiwiOwp9CmN1ckluZGV4UGFnZXMgPSBwcmV2SW5kZXhQYWdlcyArIGN1ckluZGV4UGFnZXM7CnZhciBhcnJPZlBhaXJzID0gW107CnZhciBjdXJYUmV2aWV3cyA9IFgoZG9jLCAiWF9yZXZpZXdzIik7CnZhciBwYXJlbnRJc1NpZ25lZCA9IGN1clhSZXZpZXdzICYmIGN1clhSZXZpZXdzLmluZGV4T2YoIlNpZ25lZCBieSBhZ2VudCIpID49IDA7CmFyck9mUGFpcnMucHVzaCgiWF9pbmRleGVkUGFnZXMiLCBjdXJJbmRleFBhZ2VzKTsKaWYgKDE9PT0xKSB7IAogICAgdmFyIGJhPWRvYy5YKCJYX2J1dHRvbkFjdGlvbiIpKyIiOwogICAgYmE9YmEuc3Vic3RyaW5nKDErYmEubGFzdEluZGV4T2YoIiAiKSk7CiAgICBpZiAoIWJhLmVuZHNXaXRoKCJlZCIpICYmIGJhICE9PSAiIikgeyBiYSs9ImVkIjsgfSAKICAgIGlmIChiYSAhPT0gIiIpIHsgCiAgICAgICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7Ci8vICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKICAgIH0KfQp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgc2ZTdGFja0lkID0gWChkb2MsIlhfc2ZTdGFja0lkIik7CmlmIChzZlN0YWNrSWQgPT09IiIpIHsgCiAgICBYKGRvYywiWF9hdHRhY2hlZFRvIik7CiAgICBpZiAoc2ZTdGFja0lkLmxhc3RJbmRleE9mKCcvJykgPj0gMCkgewogICAgICAgIGFyck9mUGFpcnMgPSBbXTsgCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJSZWNlaXZlZCIpOyAKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhZ2VfX2MiLCAiSW5kZXhlZCIpOyAKICAgICAgICBpZiAobm90ZXMpIHsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJOb3Rlc19fYyIsIG5vdGVzKTsgCiAgICAgICAgfSAgCiAgICAgICAgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZyhzZlN0YWNrSWQubGFzdEluZGV4T2YoJy8nKSsxKTsKICAgICAgICBpZiAoc2ZTdGFja0lkLmluZGV4T2YoJywnKSA+PSAwKSB7IHNmU3RhY2tJZCA9IHNmU3RhY2tJZC5zdWJzdHJpbmcoMCwgc2ZTdGFja0lkLmluZGV4T2YoJywnKSk7IH0KICAgIH0KICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgIlpQQVBFUl9felN0YWNrX19jIiwgc2ZTdGFja0lkLCBhcnJPZlBhaXJzKTsgCn0KdmFyIGF0dGFjaFBhdGggPSBYKGRvYywiWF9hdHRhY2hlZFRvIik7CmFsZXJ0KCJAQEBAQEAgQ3VycmVudGx5IGF0dGFjaGVkIHRvIFpQQVBFUl9felN0YWNrX19jIHdpdGggSUQ6ICIgKyBzZlN0YWNrSWQpOwp6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgCgovKiBTUExJVCBPRkYgTkVXIFNOSVBQRVQgSEVSRSAqLwoKdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CnRyeSB7CmFsZXJ0KCJAQEBAIFBhcmVudCBkYklEID0gIiArIGRvYy5kYklEKTsKICAgIHNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJpbmRleCIsIHBhZ2VSYW5nZSk7CiAgICBhbGVydCgiIyMjIyBDaGlsZCBkYklEID0gIiArIGRvYy5kYklEKTsKfQpjYXRjaChlcnIpIHsKICAgIGFsZXJ0KCJFcnJvciB3aGVuIHNwbGl0dGluZyBkb2N1bWVudDogIiArIGVyciArICIuIEFCT1JUSU5HLi4uIik7CiAgICByZXR1cm47Cn0KYWxlcnQoIkNhc2UgJyIrY2FzZUlkKyInIGFuZCBsZW49IitjYXNlSWQubGVuZ3RoKTsKCi8vKgovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCi8vKgoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBhIG5ldyBDYXNlIHJlY29yZCwgaWYgaXQgd2Fzbid0IHBhc3NlZCBpbiAqLwp2YXIgcHJpb3JpdHk9WChkb2MsIlhfWlBBUEVSX19Qcmlvcml0eV9fYyIpOyAKdmFyIGxhYmVsMD0iIjsKdmFyIHRyaWFnZVR5cGU9ZG9jLmRvY1R5cGU7CnZhciBwYXRpZW50TmFtZTsKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gQ29udGFjdCByZWNvcmQgaWYgcmVxdWlyZWQgKi8KYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGEgQ29udGFjdD8gY29udGFjdElkID0gIiArIGNvbnRhY3RJZCk7CmlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKICAgIAogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjb250YWN0SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2NvbnRhY3RJZDsKICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgY29udGFjdElkKTsgCiAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgcGF0aWVudE5hbWUgPSBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lOwogICAgYXR0YWNoKGRvYywgbGFiZWwwKyJJbmRleGVkLSIgKyBwYXRpZW50TmFtZSArICItIiArIGZheFR5cGUgKyAiLSIgKyBzdGFja0lkLCBjb250YWN0SWQpOwp9CmVsc2UgaWYgKHBhdGllbnRGaXJzdE5hbWUgJiYgcGF0aWVudEZpcnN0TmFtZS5sZW5ndGggPiAwICYmIHBhdGllbnRMYXN0TmFtZSAmJiBwYXRpZW50TGFzdE5hbWUubGVuZ3RoID4gMCAmJiBwYXRpZW50RE9CICYmIHBhdGllbnRET0IubGVuZ3RoID4gMCkgewogICAgcGF0aWVudE5hbWUgPSBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lOwogICAgdmFyIGN0Y0Fyck9mUGFpcnMgPSBbXTsKICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIiwgcGF0aWVudEZpcnN0TmFtZSk7CiAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgcGF0aWVudExhc3ROYW1lKTsKICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiQmlydGhEYXRlIiwgcGF0aWVudERPQik7CiAgICBjb250YWN0SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ29udGFjdCIsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgY3RjQXJyT2ZQYWlycyk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKGNvbnRhY3RJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrY29udGFjdElkOwogICAgCiAgICBhbGVydCgiQEBAQEBAQCBORVcgQ09OVEFDVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyBjb250YWN0SWQpOwogICAgLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwogICAgCiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0ZpcnN0X05hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfTGFzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0RvQl9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9Eb0JfX2NfcmVhZGFibGUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIk5PTkUiICsgZHEgKyAiKTsgIik7CiAgICAvLyBzZXQgdGhlIFBhdGllbnQgbG9va3VwIGZpZWxkcwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgY29udGFjdElkICsgZHEgKyAiKTsgIik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGF0aWVudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyBkcSArICIpOyAiKTsKfQoKYXR0YWNoKGRvYywgbGFiZWwwKyJJbmRleGVkLSIgKyBwYXRpZW50TmFtZSArICItIiArIGZheFR5cGUgKyAiLSIgKyBzdGFja0lkLCBzZlN0YWNrSWQpOwp2YXIgc2ZVc2VySUQgPSBkb2Mua2JEYXRhLnNmVXNlcklEOyAvLyBQVjE5MDQyMSB1cGRhdGVkIGZvciByZW1vdGUgdXNlcgppZighc2ZVc2VySUQpewogICAgc2ZVc2VySUQ9IGdldFNGRmllbGQoZG9jLCAiVXNlciIsIklkIiwidXNlcm5hbWU9JyIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyInIik7Cn0KYWxlcnQoIlBWMTkwNDE1IHNmVXNlcklEIDogIiArc2ZVc2VySUQpOwoKaWYgKCFjYXNlSWQgfHwgMCA9PT0gY2FzZUlkLmxlbmd0aCkgewogICAgYWxlcnQoIkBAQEAgY3JlYXRpbmcgbmV3IENhc2UiKTsKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIAogICAgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCBjb250YWN0SWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCBYKGRvYywiWF9TdGF0dXMiKSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlR5cGUiLCAiRW5yb2xsbWVudCIpOyAvL1B2MTkwNDE2IHVwZGF0ZWQgZm9yIGNhc2UgdHlwZQogICAgCiAgICBpZiAocHJvdmlkZXJJZCAmJiBwcm92aWRlcklkLmxlbmd0aCA+IDApIHsKICAgICAgICAKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIHByb3ZpZGVySWQpOyAKICAgIH0KCiAgICBpZiAoMT09MSkgeyAKICAgICAgICAvL2Fyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwiMDEyUTAwMDAwMDA1QWhqIik7IC8vRVJTMTcwNTIzIFByaW9yIEF1dGgKICAgICAgICBpZiAocHJpb3JpdHkgIT0gIk5vcm1hbCIpIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLHByaW9yaXR5KTsgIAogICAgICAgIGVsc2UgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiT3JpZ2luIixjaGFubmVsKTsgLy9QVjE5MDQxNiB1cGRhdGVkIGZvciBjYXNlIG9yaWdpbgogICAgfQogICAgCiAgICBhbGVydCgiUFYxOTA0MTUgIiArIGFyck9mUGFpcnMpOyAgICAKICAgIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsc2ZVc2VySUQpOy8vIFB2MTkwNDE1IHVwZGF0ZWQgZm9yIG93bmVyIGlkIGFzIGN1cnJlbnQgdXNlcgogICAgYWxlcnQoIlBWMTkwNDE1IHNmVXNlcklEIDogIiArIHNmVXNlcklEKTsKICAgIGFsZXJ0KCJQVjE5MDQxNSAiICsgYXJyT2ZQYWlycyk7CiAgICAvL25hbWU9IlhfWlBBUEVSX19QYXRpZW50X19jIgogICAgLy9uYW1lPSJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIgogICAgLy9uYW1lPSJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiCiAgICBjYXNlSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ2FzZSIsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiQ3JlYXRlZCBDYXNlIHdpdGggSUQ6ICIgKyBjYXNlSWQpOwogICAgaWYgKGNhc2VJZCA9PSAibnVsbCIgfHwgY2FzZUlkID09ICJORVciKSBjYXNlSWQ9bnVsbDsgCn0KZWxzZSB7CiAgICBhbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gZXhpc3RpbmcgQ2FzZTogIiArIGNhc2VJZCk7CiAgICBhdHRhY2goZG9jLCBsYWJlbDArIkluZGV4ZWQtIiArIHBhdGllbnROYW1lICsgIi0iICsgZmF4VHlwZSArICItIiArIHN0YWNrSWQsIGNhc2VJZCk7Cn0KCnZhciBjYXNlTnVtYmVyID0gbnVsbDsKaWYgKGNhc2VJZCl7CiAgICB2YXIgY2FzZU51bWJlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDYXNlTnVtYmVyIiwgbnVsbCwgY2FzZUlkKTsKfQoKaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjYXNlSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2Nhc2VJZDsKCnZhciBhcnJPZlBhaXJzID0gW107CnZhciB6VHlwZT0iRmF4IjsgCmlmIChmYXhUeXBlICE9PSAiIiAmJiBmYXhUeXBlLnRvTG93ZXJDYXNlKCkgIT0gImZheCIpIHpUeXBlPWZheFR5cGU7IAphbGVydCgiQEBAQHpUeXBlPSIrelR5cGUpOwphcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCB6VHlwZSk7CmFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIkluZGV4ZWQgRG9jdW1lbnRzIik7IAoKYWxlcnQoIkVSUzE4MDUwNSBkb2MuZGVsaXZlcmVkRnJvbT0iK2RvYy5kZWxpdmVyZWRGcm9tKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJDaGFubmVsX19jIixjaGFubmVsKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwphcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CmFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKCmlmICh6RGF0YS5jYXRlZ29yaXplZFF1ZXVlSWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEuY2F0ZWdvcml6ZWRRdWV1ZUlkLnRyaW0oKSk7ICAKYWxlcnQoIiMjIyMgekRhdGEucHJvZ3JhbU5hbWU9KiIgK3pEYXRhLnByb2dyYW1OYW1lKyIqIHpEYXRhLlBST0dSQU1fWkNIQVJUQT0qIit6RGF0YS5QUk9HUkFNX1pDSEFSVEErIiogekRhdGEuUFJPR1JBTV9aUEFQWVJVUz0qIit6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKyIqIHpEYXRhLlBST0dSQU1fWkNBUlRBKyoiK3pEYXRhLlBST0dSQU1fWkNBUlRBKyIqIHpEYXRhLlBST0dSQU1fVEVDSEZJREVSQT0qIit6RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQSsiKiB6RGF0YS5QUk9HUkFNX1RZU0FCUkk9KiIrekRhdGEuUFJPR1JBTV9UWVNBQlJJKTsgLy9KUEIxODA4MDggQWRkaW5nIDIgRFJVR1MgRk9SIHByb3NwZWN0IGRlbW8gcHJvZ3JhbU5hbWUKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCnZhciBjbGFzc2lmaWNhdGlvbiA9IFgoZG9jLCJYX1pQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiKTsgLy9QVjE5MDQyMyB1cGRhdGVkCiAKaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDSEFSVEEpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IAp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk1lZGl1bSIpOyAKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0FSVEEpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsgCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fUEFMVkVPKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlNwZWNpYWwiKTsgIAp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1ZJTkRJQ08pIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiU3RhbmRhcmQiKTsgIAp9CmVsc2UgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJOb3JtYWwiKTsKfQphbGVydCgiIyMjIyBaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jID0iKyB6RGF0YS5wcm9ncmFtTmFtZSk7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKCmFyck9mUGFpcnMucHVzaCh6cCsiQ2xhc3NpZmljYXRpb25fX2MiLCBjbGFzc2lmaWNhdGlvbiApOyAvL1B2MTkwNDIzIFVwZGF0ZWQKYXJyT2ZQYWlycy5wdXNoKHpwKyJQcm9ncmFtX05hbWVfX2MiLCB6RGF0YS5wcm9ncmFtTmFtZSk7IAphcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsZG9jLmRlbGl2ZXJlZFRvKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsZG9jLmRlbGl2ZXJlZEZyb20pOwphcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIkluZGV4ZWQiKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiUGFyZW50X19jIixzZlN0YWNrSWQpOyAKLy9hcnJPZlBhaXJzLnB1c2goIlByb3ZpZGVyX0Z1bGxuYW1lX19jIiwgWChkb2MsICJYX1Byb3ZpZGVyX0Z1bGxuYW1lX19jIikpOyAKLy9hcnJPZlBhaXJzLnB1c2goIkZhY2lsaXR5X19jIiwgWChkb2MsICJYX0ZhY2lsaXR5X19jIikpOyAKLy9hcnJPZlBhaXJzLnB1c2goIkNhc2VfTnVtYmVyX19jIiwgWChkb2MsICJYX0Nhc2VfTnVtYmVyX19jIikpOyAKaWYgKG5vdGVzKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIk5vdGVzX19jIiwgbm90ZXMpOwp9CmlmIChwcm92aWRlcklkICYmIHByb3ZpZGVySWQubGVuZ3RoID4gMCkgewogICAgdmFyIHByb3ZpZGVyRmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkFjY291bnQiLCAiRmFjaWxpdHlfX2MsRmF4LFBob25lIiwgbnVsbCwgcHJvdmlkZXJJZCk7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJGYWNpbGl0eV9fYyIsIFgoZG9jLCJGYWNpbGl0eV9fYyIscHJvdmlkZXJGbGRzKSk7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJGYXhfX2MiLCBYKGRvYywiRmF4Iixwcm92aWRlckZsZHMpKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGhvbmVfX2MiLCBYKGRvYywiUGhvbmUiLHByb3ZpZGVyRmxkcykpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcm92aWRlcl9fYyIsIHByb3ZpZGVySWQpOyAKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YocHJvdmlkZXJJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrcHJvdmlkZXJJZDsKfQppZiAocGF0aWVudElkICYmIHBhdGllbnRJZC5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudF9fYyIsIHBhdGllbnRJZCk7CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHBhdGllbnRJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrcGF0aWVudElkOwp9CmlmIChjYXNlSWQgJiYgY2FzZUlkLmxlbmd0aCA+IDApIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DYXNlX19jIiwgY2FzZUlkKTsKfQovL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcmlvcml0eV9fYyIsIHBhcmVudFByaW9yaXR5KTsgCmFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsc2ZVc2VySUQpOyAvLyBQdjE5MDQxNSB1cGRhdGVkIGZvciBvd25lciBhcyBjdXJyZW50IHVzZXIKdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6U3RhY2ssICJEb2N1bWVudHMgSW5kZXhlZCBvbiAiICsgZm9ybWF0Tm93LCBhcnJPZlBhaXJzKSArICIiOyAKYWxlcnQoIiMjIyMgelN0YWNrIFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOwp2YXIgY2hpbGRTdGFja051bWJlciA9IGdldFNGRmllbGQoZG9jLCB6U3RhY2ssICJOYW1lIiwgbnVsbCwgc2ZJZCk7IAovL2F0dGFjaChkb2MsICJJbmRleGVkLSIrZm9ybWF0Tm93KyItIit0cmlhZ2VUeXBlLCBzZlN0YWNrSWQpOwphbGVydCgiQEBAQCB1cGRhdGVkIGFuZCBhdHRhY2hlZCB0byB6U3RhY2sgUmVjb3JkLCBpZCA9ICIgKyBzZlN0YWNrSWQpOwoKaWYgKDE9PT0wKSB7IC8vRVJTMTcwNjI3IFRPRE8gcmVmYWN0b3IKICAgIAogICAgdmFyIHByb3ZpZGVyID0gWChkb2MsICJYX1ByaW1hcnlfQ2FyZV9QaHlzaWNpYW5fX2MiKTsKICAgIGlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDAgJiYgcHJvdmlkZXIgJiYgcHJvdmlkZXIubGVuZ3RoID4gMCkgewogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlByaW1hcnlfQ2FyZV9QaHlzaWNpYW5fX2MiLCBwcm92aWRlcik7CiAgICAgICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCJDb250YWN0Iixjb250YWN0SWQsYXJyT2ZQYWlycyk7CiAgICB9Cn0KCmF0dGFjaFBhdGggPSBhdHRhY2hQYXRoLnN1YnN0cmluZygwLCBhdHRhY2hQYXRoLmxhc3RJbmRleE9mKCcvJykgKyAxKSArIHNmSWQgKyAiLCIgKyBhdHRhY2hQYXRoLnN1YnN0cmluZyhhdHRhY2hQYXRoLmxhc3RJbmRleE9mKCcvJykgKyAxKTsKCnVubG9ja0RvY3VtZW50KGRvYyk7Cm1vdmVEb2N1bWVudChkb2MsIG51bGwsIHBhcmVudEZvbGRlcik7CgphcnJPZlBhaXJzID0gW107CgppZiAoMT09PTEgJiYgMT09PTApIHsgCgovLyAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsIkluZGV4ZWQiKTsKLy8gICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKfQovKiBDUk4xNjA4MjUgU2V0IHRoZSBwYWdlIGNvdW50IHNvIHRoYXQgaXQgZG9lcyBub3QgaGF2ZSB0aGUgcGFyZW50IHBhZ2UgY291bnQgKi8KdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLHBhZ2VSYW5nZSk7CmFsZXJ0KCJAQEBAIHBhZ2VDb3VudCA9ICIgKyBwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiZGItcGFnZXMiLHBhZ2VDb3VudCk7CmlmICghcGF0aWVudEZpcnN0TmFtZSB8fCAwID09IHBhdGllbnRGaXJzdE5hbWUubGVuZ3RoKSB7IHBhdGllbnRGaXJzdE5hbWUgPSAiVW5rbm93biI7IH0KaWYgKCFwYXRpZW50TGFzdE5hbWUgfHwgMCA9PSBwYXRpZW50TGFzdE5hbWUubGVuZ3RoKSB7IHBhdGllbnRMYXN0TmFtZSA9ICJOYW1lIjsgfQoKYWxlcnQgKCJAQEBAQCB6RGF0YS5wcm9ncmFtTmFtZSA9ICIrIHpEYXRhLnByb2dyYW1OYW1lKTsgCgphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICIgIC0gICIgKyBjbGFzc2lmaWNhdGlvbiArIiAgLSAgIisgIHpEYXRhLmRvY3VtZW50VHlwZU1hcFtkb2NUeXBlXSAgKyIgLSAgIiArIGNoaWxkU3RhY2tOdW1iZXIpOyAvL0pQQjE5MDQzMCB1cGRhdGVkIGxhYmVsCmFsZXJ0KCJAQEBAIFNldHRpbmcgWF9kb2NUeXBlIHRvOiAiICsgZmF4VHlwZSk7CmFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIixmYXhUeXBlKTsgCmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX2ZheFR5cGVfX2MiLGZheFR5cGUpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsIHNmSWQpOyAgIAphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsYXR0YWNoUGF0aCk7IAphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJJbmRleGVkIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp0cmFjayhkb2MsICJEb2MgSW5kZXhlZCAiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5yZWFkeX4pO3VwZGF0ZURFU3RhdHVzKH5pbmRleGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7CgppZiAoY2FzZUlkICYmIGNhc2VOdW1iZXIpIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyQofiNaUEFQRVJfX0Nhc2VfX2N+KS52YWwofiIgKyBjYXNlSWQgKyAifik7ICQofiNaUEFQRVJfX0Nhc2VfX2NfQ2FzZU51bWJlcn4pLnZhbCh+IiArIGNhc2VOdW1iZXIgKyAifik7ICIpOwp9CgoKaWYgKGNvbnRhY3RJZCAmJiBwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZSkgewogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7JCh+I1pQQVBFUl9fUGF0aWVudF9fY34pLnZhbCh+IiArIGNvbnRhY3RJZCArICJ+KTsgJCh+I1pQQVBFUl9fUGF0aWVudF9fY19OYW1lfikudmFsKH4iICsgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICJ+KTsgIik7Cn0KCi8qIGVuZCBvZiBydWxlICov"},"ordinal":7}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190531 updated rule Sales Demo Org
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
 if (isNaN(doc.deliveredTo)) {
    if (doc.deliveredTo.toLowerCase().indexOf("community") >= 0) {
    channel = "community";
    } 
    else {
    channel="Scan";
    }
}  

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
        arrOfPairs.push("ZPAPER__Status__c", "Received"); 
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

attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, sfStackId);
var sfUserID = doc.kbData.sfUserID; // PV190421 updated for remote user
if(!sfUserID){
    sfUserID= getSFField(doc, "User","Id","username='"+doc.kbData.remoteUser+"'");
}
alert("PV190415 sfUserID : " +sfUserID);

if (!caseId || 0 === caseId.length) {
    alert("@@@@ creating new Case");
    arrOfPairs = [];
    
    arrOfPairs.push("ContactId", contactId);
    arrOfPairs.push("ZPAPER__newFax__c", "true"); 
    arrOfPairs.push("ZPAPER__latestFax__c", formatNow); 
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); 
    arrOfPairs.push("Status", X(doc,"X_Status"));
    arrOfPairs.push("Type", "Enrollment"); //Pv190416 updated for case type
    
    if (providerId && providerId.length > 0) {
        
        arrOfPairs.push("AccountId", providerId); 
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
arrOfPairs.push(zp+"Status__c", "Indexed Documents"); 

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
else if (zData.classification === zData.PROGRAM_PALVEO) {
    arrOfPairs.push(zp+"Priority__c", "Special");  
}
else if (zData.classification === zData.PROGRAM_VINDICO) {
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
arrOfPairs.push(zp+"Stage__c", "Indexed"); 
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
var sfId = createAndAttach(doc, zStack, "Documents Indexed on " + formatNow, arrOfPairs) + ""; 
alert("#### zStack Received. Attached to: " + sfId);
var childStackNumber = getSFField(doc, zStack, "Name", null, sfId); 
//attach(doc, "Indexed-"+formatNow+"-"+triageType, sfStackId);
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId);

if (1===0) { //ERS170627 TODO refactor
    
    var provider = X(doc, "X_Primary_Care_Physician__c");
    if (contactId && contactId.length > 0 && provider && provider.length > 0) {
        arrOfPairs = [];
        arrOfPairs.push("Primary_Care_Physician__c", provider);
        updateSFRecord(doc,"Contact",contactId,arrOfPairs);
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
