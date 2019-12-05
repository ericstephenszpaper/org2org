<!--
// Name: Standard Barcode Received
// Committer: andrew@zpaper.com
// Update: code cleanup
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-30 20:30:36","active":true,"button":"","name":"Standard Barcode Received","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"[001|003|00Q|500|006].*","operation":"regex"}]},"consequence":{"doit":"Ly9NU0gxNzA4MzEgcmVmYWN0b3IgdG8gY3JlYXRlIHpTdGFjawp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMoZG9jKTsgLy93aG8gYW5kIHdoZXJlCnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgYXR0YWNoTGFiZWwgPSAiIjsKdmFyIGNhc2VJZCA9ICIiOwp2YXIgY2FzZU51bWJlciA9ICIiOwp2YXIgcGF0aWVudElkID0gIiI7CnZhciBmaXJzdE5hbWUgPSAiIjsKdmFyIGxhc3ROYW1lID0gIiI7Cgp2YXIgbm93VGltZVN0YW1wID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsgCnZhciBjb3ZlcklEID0gWChkb2MsICJjb3ZlcklEIik7CnZhciBkb2NUaXRsZSA9IFgoZG9jLCAiZG9jVGl0bGUiKTsKCmFsZXJ0KCJjb3ZlcklEOiAiICsgY292ZXJJRCk7CmFsZXJ0KCJkb2NUaXRsZTogIiArIGRvY1RpdGxlKTsKCnZhciBhcnJPZlBhaXJzID0gW107CnZhciBzZkNhc2VJZCA9ICIiOwp2YXIgcGF0aWVudEZpcnN0TmFtZSA9ICIiOwp2YXIgcGF0aWVudExhc3ROYW1lID0gIiI7CgovL2ZpbmQgc2ZJZAp2YXIgc2ZJZCA9IGdldEJhcmNvZGVPbmUoZG9jKTsKaWYgKCFzZklkIHx8IDAgPT09IHNmSWQubGVuZ3RoKSB7CiAgICBzZklkID0gZ2V0QWx0ZXJuYXRlQmFyY29kZU9uZShkb2MpICsgIiI7Cn0KYWxlcnQoIiMjIyBzZklkIGZyb20gYmFyY29kZTogIiArIHNmSWQpOwoKaWYgKHNmSWQgJiYgc2ZJZC5sZW5ndGggPiAwKSB7CiAgICAvL2ZpbmQgZG9jVHlwZSwgY2hlY2sgd2RkYXRhIGZpcnN0CiAgICB2YXIgZG9jVHlwZSA9IGRvYy5YKCJYX2RvY1R5cGUiKTsKICAgIGFsZXJ0KCJkb2NUeXBlID09ICIgKyBkb2NUeXBlKTsKICAgIGlmICghZG9jVHlwZSB8fCAwID09PSBkb2NUeXBlLmxlbmd0aCkgewogICAgICAgIHpEYXRhLmRvY1R5cGVPQ1IgPSB6RGF0YS5kb2NUeXBlcihkb2MsIHsiUEFQUCI6IlBhdGllbnR+IEFzc2lzdGFuY2V+IiwgIlBBVVRIIjoiUHJpb3J+IEF1dGhvcml6YXRpb25+IiwgIkVOUkwiOiJFbnJvbGxtZW50fiIsICJGQVgiOiIifSk7CiAgICAgICAgYWxlcnQoImRvY1R5cGUgd2FzICIgKyBkb2MuZG9jVHlwZSArICIgbm93ICIgKyB6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICB2YXIgelR5cGUgPSBkb2MuWCgiWF9kb2NUeXBlIik7CiAgICAgICAgaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgICAgICAgICAgdmFyIGFyck9mUGFpcnMwID0gW107CiAgICAgICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICAgICAgelR5cGUgPSB6RGF0YS5kb2NUeXBlT0NSOwogICAgICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgICAgICB9CiAgICB9CiAgICBjYXNlSWQgPSBzZklkOwoJdmFyIGF0dGFjaGVkVG8gPSBYKGRvYywgInNmU2VydmVyIik7CiAgICBhdHRhY2hlZFRvICs9ICIvIiArIHNmSWQ7CgkKICAgIC8vZmluZCBzZlR5cGUKICAgIHZhciBzZlR5cGUgPSAiIjsKICAgIGlmIChzZklkICYmIHNmSWQubGVuZ3RoID4gMCkgewogICAgICAgIHNmVHlwZSA9IGdldFNGVHlwZShkb2MsIHNmSWQpOwogICAgfQogICAgYWxlcnQoIioqKiBnb3Qgc2ZUeXBlIDo6ICIgKyBzZlR5cGUpCgogICAgaWYgKCJDYXNlIiA9PSBzZlR5cGUpIHsKICAgICAgICAKCSAgIHZhciBjYXNlRmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNhc2UiLCAiUmVjb3JkVHlwZUlkLENvbnRhY3RJZCxBY2NvdW50SWQiLCBudWxsLCBzZklkKTsgLy9BTjIwMTgwNzE4IGdldCB0aGUgZmllbGRzIGZyb20gdGhlIENhc2UgdGhhdCB3ZSB3aWxsIG5lZWQKICAgICAgIHZhciByZWNUeXBlSWQgPSBYKGRvYywgIlJlY29yZFR5cGVJZCIsIGNhc2VGbGRzKTsKICAgICAgIHZhciByZWNUeXBlTmFtZSA9IGdldFNGRmllbGQoZG9jLCAiUmVjb3JkVHlwZSIsICJOYW1lIiwgbnVsbCwgcmVjVHlwZUlkKTsgLy9BTjIwMTgwNzE4IGdldCB0aGUgbmFtZSBvZiB0aGUgY3VycmVudCBDYXNlIHJlY29yZCB0eXBlCiAgICAgICBhbGVydCgiQEBAIGN1cnJlbnQgQ2FzZSBSZWNvcmQgVHlwZSBOYW1lOiAiICsgcmVjVHlwZU5hbWUpOwkKCiAgICAgICB2YXIgY2FzZUNsYXNzaWZpY2F0aW9uID0gIFgoZG9jLCAiQ2xhc3NpZmljYXRpb25fX2MiLCBjYXNlRmxkcyk7IC8vZ2V0IHRoZSBDb250YWN0IElEIHNpbmNlIFBBUCB1c2VzIHRoZSBDb250YWN0IG9iamVjdCBmb3IgUGF0aWVudHMKCSAgIGFsZXJ0KCJAQEAgY2FzZUNsYXNzaWZpY2F0aW9uIGlzID0gIiArIGNhc2VDbGFzc2lmaWNhdGlvbik7CgkgICAKCSAgIGlmIChyZWNUeXBlTmFtZSA9PT0gIk5ldy9SZW5ld2FsL1lFQy9Pbi1nb2luZyBQcmVzY3JpcHRpb24iKXsgLy90aGlzIGlzIGEgUEFQIGNhc2UKCSAgICAgYWxlcnQoIkBAQCBnZXR0aW5nIFBBUCBDYXNlIGRldGFpbHMiKTsKICAgCSAgICAgcGF0aWVudElkID0gIFgoZG9jLCAiQ29udGFjdElkIiwgY2FzZUZsZHMpOyAvL2dldCB0aGUgQ29udGFjdCBJRCBzaW5jZSBQQVAgdXNlcyB0aGUgQ29udGFjdCBvYmplY3QgZm9yIFBhdGllbnRzCgkgICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgcGF0aWVudElkKTsgCgkgICAgIGFsZXJ0KCJAQEAgY2FsbGluZyBTRiBmb3IgY29udGFjdEZsZHMgOjogIiArIGNvbnRhY3RGbGRzKTsKCSAgICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwoJICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwoJICAgfQoKCSAgIGVsc2UgaWYgKHJlY1R5cGVOYW1lID09PSAiQmVuZWZpdCBWZXJpZmljYXRpb24iIHx8IHJlY1R5cGVOYW1lID09PSAiRGVuaWFsIFN1cHBvcnQiIHx8IHJlY1R5cGVOYW1lID09PSAiQ29tcGxldGUgSW50YWtlIil7IC8vdGhpcyBpcyBhbiBSSC1JbW11bm9sb2d5IG9yIGEgQ29tcGxldGUgSW50YWtlCgkgICAgIGFsZXJ0KCJAQEAgZ2V0dGluZyBSSCBDYXNlIGRldGFpbHMiKTsKCSAgICAgcGF0aWVudElkID0gWChkb2MsICJBY2NvdW50SWQiLCBjYXNlRmxkcyk7IC8vZ2V0IHRoZSBBY2NvdW50IElEIHNpbmNlIFJIIHVzZXMgdGhlIEFjY291bnQgb2JqZWN0IGZvciBQYXRpZW50cwoJICAgICB2YXIgYWNjb3VudEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJBY2NvdW50IiwgIlBTX1BhdGllbnRGaXJzdE5hbWVfX2MsUFNfUGF0aWVudExhc3ROYW1lX19jIiwgbnVsbCwgcGF0aWVudElkKTsgCgkgICAgIGFsZXJ0KCJAQEAgY2FsbGluZyBTRiBmb3IgYWNjb3VudEZsZHMgOjogIiArIGFjY291bnRGbGRzKTsKCSAgICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiUFNfUGF0aWVudEZpcnN0TmFtZV9fYyIsIGFjY291bnRGbGRzKTsKCSAgICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJQU19QYXRpZW50TGFzdE5hbWVfX2MiLCBhY2NvdW50Rmxkcyk7CgkgICB9CgogICAgICAgYWxlcnQoIkBAQCBwYXRpZW50SWQgOjogIiArIHBhdGllbnRJZCk7CiAgICAgICBhbGVydCgiQEBAIHBhdGllbnRGaXJzdE5hbWUgOjogIiArIHBhdGllbnRGaXJzdE5hbWUpOwogICAgICAgYWxlcnQoIkBAQCBwYXRpZW50TGFzdE5hbWUgOjogIiArIHBhdGllbnRMYXN0TmFtZSk7CiAgICAKICAgCSAgIGF0dGFjaExhYmVsID0gcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICIgLSAiICsgZG9jVHlwZSArICIgLSAiICsgekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgICAgYWxlcnQoIkBAQEAgYXR0YWNoTGFiZWw6ICIgKyBhdHRhY2hMYWJlbCk7CgkgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwkKCQkKCX0gZWxzZSB7CiAgICAgICAgYXR0YWNoTGFiZWwgPSBkb2NUeXBlICsgIiBSZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93OwogICAgfQoKCWFsZXJ0KCJAQEAgbWFzdGVyIElEIGlzID0gIiArIGRvYy5rYkRhdGEuZ3JvdXBJRCk7CiAgICBhbGVydCgiQEBAIFBBUCBncm91cCBJRCBpcyA9ICIgKyB6RGF0YS5wYXBHcm91cElkKTsKICAgIGFsZXJ0KCJAQEAgUkgtSW1tdW5vbG9neSBncm91cCBJRCBpcyA9ICIgKyB6RGF0YS52YWxldEdyb3VwSWQpOwogICAgYWxlcnQoIkBAQCBDb21wbGV0ZSBJbnRha2UgZ3JvdXAgSUQgaXMgPSAiICsgekRhdGEuY29tcEludEdyb3VwSWQpOwoJCgkvL3NldCB0aGUgR3JvdXAgc2VjdXJpdHkgdG8gUEFQLCBSSC1JbW11bm9sb2d5LCBvciBDb21wbGV0ZSBJbnRha2UKCWlmIChyZWNUeXBlTmFtZSA9PT0gIk5ldy9SZW5ld2FsL1lFQy9Pbi1nb2luZyBQcmVzY3JpcHRpb24iIHx8IGNhc2VDbGFzc2lmaWNhdGlvbiA9PT0gIlBBUCIpIHsgLy9BTjIwMTgwNjA0IHNldCBQQVAgc2VjdXJpdHkKCQlhbGVydCgiQEBAIHNldHRpbmcgZG9jdW1lbnQgc2VjdXJpdHkgZm9yIFBBUCBncm91cCIpOwoJCWFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS5wYXBHcm91cElkICsgIjoiKTsKCQlhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS5wYXBHcm91cElkICsgIjoiKTsKCX0KCWVsc2UgaWYgKHJlY1R5cGVOYW1lID09PSAiQmVuZWZpdCBWZXJpZmljYXRpb24iIHx8IGNhc2VDbGFzc2lmaWNhdGlvbiA9PT0gIlJILUltbXVub2xvZ3kiKSB7Ly9BTjIwMTgwNjA0IHNldCBSSC1JbW11bm9sb2d5IGdyb3VwIHNlY3VyaXR5CgkJYWxlcnQoIkBAQCBzZXR0aW5nIGRvY3VtZW50IHNlY3VyaXR5IGZvciBSSC1JbW11bm9sb2d5Iik7CgkJYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsICI6IiArIHpEYXRhLnZhbGV0R3JvdXBJZCArICI6Iik7CgkJYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEudmFsZXRHcm91cElkICsgIjoiKTsKCX0KCQoJZWxzZSBpZiAocmVjVHlwZU5hbWUgPT09ICJDb21wbGV0ZSBJbnRha2UiIHx8IGNhc2VDbGFzc2lmaWNhdGlvbiA9PT0gIkNvbXBsZXRlIEludGFrZSIpIHsvL0FOMjAxOTAzMDEgc2V0IENvbXBsZXRlIEludGFrZSBncm91cCBzZWN1cml0eQoJCWFsZXJ0KCJAQEAgc2V0dGluZyBkb2N1bWVudCBzZWN1cml0eSBmb3IgQ29tcGxldGUgSW50YWtlIik7CgkJYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsICI6IiArIHpEYXRhLmNvbXBJbnRHcm91cElkICsgIjoiKTsKCQlhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS5jb21wSW50R3JvdXBJZCArICI6Iik7Cgl9CgkKCXVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgkJCiAgICAvKiBhdHRhY2ggdGhlIGZheCB0byBpdHMgY29ycmVzcG9uZGluZyBTYWxlc2ZvcmNlIE9iamVjdCAqLwogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbjAiLCBYKGRvYywgIlhfYnV0dG9uQWN0aW9uIikpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsICIiKTsKICAgIAogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGF0dGFjaExhYmVsKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi0iICsgZG9jVHlwZSk7IC8qIEVSUzE3MDYyNSB0b2RvIGdldCBkb2NUeXBlIGZyb20gdGVtcGxhdGUgdXNlZCAqLwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLCBhdHRhY2hlZFRvKTsgLyogRVJTMTcwNjI4IGRvY1NldCBuZWVkcyB0aGlzICovCiAgICBpZiAoZG9jVHlwZSAhPT0gIiIpIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIixkb2NUeXBlKTsgLy9FUlMxODAzMjggIzQ2MzczCgogICAgLy9UUE0xODA4MDMgRm9yIHNldHRpbmcgY2hlY2tib3hlcyBvbiB0aGUgemRvY3NldAogICAgaWYgKDE9PT0xKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcwogICAgICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiUmVjZWl2ZWQiKTsKICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJSZWNlaXZlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIvQ0FXIFVwZGF0ZQogICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwoJICAgYWxlcnQoIkBAQCBzZXR0aW5nIFJlY2VpdmVkIGNoZWNrYm94Iik7CgkgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoJICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIkluZGV4ZWQiKTsKICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJBdXRvLWluZGV4ZWQgdmlhIGJhcmNvZGUgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyL0NBVyBVcGRhdGUKICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKCSAgIGFsZXJ0KCJAQEAgc2V0dGluZyBJbmRleGVkIGNoZWNrYm94Iik7CgkgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgfQoJCglhdHRhY2goZG9jLCBhdHRhY2hMYWJlbCwgc2ZJZCk7CgogICAgLyogc2F2ZSB0aGUgd29ya2Zsb3cgZmllbGRzICovCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIGRvY1R5cGUpOwogICAgLy9NU0gxNzA4MjkgdXBkYXRlIGNhc2Ugc3RhdHVzIHdoZW4gcmVjZWl2aW5nIG1pc3NpbmcgaW5mbwogICAgaWYgKHNmVHlwZSA9PSAiQ2FzZSIgJiYgKGRvY1R5cGUgJiYgZG9jVHlwZSA9PSAiTUlGIikpIHsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJJbmZvcm1hdGlvbiBSZWNlaXZlZCIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfTWlzc2luZ19JbmZvX3JlY2VpdmVkX19jIiwgZm9ybWF0Tm93KTsgLy9NU0gxNzA5MTIKICAgIH0KICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgc2ZUeXBlLCBzZklkLCBhcnJPZlBhaXJzKTsKCgl2YXIgbWFzdGVySUQgPSAoZG9jLmtiRGF0YS5ncm91cElEKS5zdWJzdHJpbmcoMSwoZG9jLmtiRGF0YS5ncm91cElEKS5sZW5ndGgoKSk7IC8vZ2V0IHRoZSB6UGFwZXIgTWFzdGVyIElECglhbGVydCgiQEBAIG1hc3RlcklEOiAiICsgbWFzdGVySUQpOwoJCiAgICBhbGVydCgiQEBAQEBAIE1vdmluZyBiYXJjb2RlZCBkb2N1bWVudCBpbnRvIGZvbGRlcjogIiArIG1hc3RlcklEICsgIlRyaWFnZS1TMyIpOwogICAgbW92ZURvY3VtZW50KGRvYywgbWFzdGVySUQgKyAiVHJpYWdlLVMxQSIsIG1hc3RlcklEICsgIlRyaWFnZS1TMyIpOwp9CgovL01TSDE3MDgzMSBjcmVhdGUgc3RhY2sKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciB6cCA9ICJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZQp2YXIgelN0YWNrID0genAgKyAielN0YWNrX19jIjsKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goenAgKyAiZmF4VHlwZV9fYyIsIGRvY1R5cGUpOwphcnJPZlBhaXJzLnB1c2goenAgKyAiUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7CmFyck9mUGFpcnMucHVzaCh6cCArICJTdGF0dXNfX2MiLCAiQ29tcGxldGUiKTsKYXJyT2ZQYWlycy5wdXNoKHpwICsgIkNoYW5uZWxfX2MiLCAiRmF4Iik7CmFyck9mUGFpcnMucHVzaCh6cCArICJsYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwphcnJPZlBhaXJzLnB1c2goenAgKyAicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKYXJyT2ZQYWlycy5wdXNoKHpwICsgIm5ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCh6cCArICJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKCmlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiUEFQIikgeyAvL0FOMjAxODA2MDQgc2V0IFBBUCBxdWV1ZSBhbmQgcmVjb3JkIHR5cGUKCWFsZXJ0KCJAQEAgc2V0dGluZyBxdWV1ZSBhbmQgcmVjb3JkIHR5cGUgZm9yIFBBUCBncm91cCIpOwoJYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEucGFwUXVldWVJZCk7CglhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnBhcFN0YWNrUmVjb3JkVHlwZUlkKTsKCWFyck9mUGFpcnMucHVzaCgiRHJ1Z19UeXBlX19jIiwgIkh1bWlyYSIpOwoKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiUkgtSW1tdW5vbG9neSIpIHsvL0FOMjAxODA2MDQgc2V0IFJILUltbXVub2xvZ3kgcXVldWUgYW5kIHJlY29yZCB0eXBlCiAgICBhbGVydCgiQEBAIHNldHRpbmcgcXVldWUgYW5kIHJlY29yZCB0eXBlIGZvciBSSC1JbW11bm9sb2d5IGdyb3VwIik7CglhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5pbW11blF1ZXVlSWQpOwoJYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS52YWxldFN0YWNrUmVjb3JkVHlwZUlkKTsKCWFyck9mUGFpcnMucHVzaCgiRHJ1Z19UeXBlX19jIiwgIkh1bWlyYSIpOwoKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiQ29tcGxldGUgSW50YWtlIikgey8vQU4yMDE5MDMwMSBzZXQgQ29tcGxldGUgSW50YWtlIHF1ZXVlIGFuZCByZWNvcmQgdHlwZQogICAgYWxlcnQoIkBAQCBzZXR0aW5nIHF1ZXVlIGFuZCByZWNvcmQgdHlwZSBmb3IgQ29tcGxldGUgSW50YWtlIGdyb3VwIik7CglhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5jb21wSW1tUXVldWVJZCApOwoJYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5jb21wSW1tU3RhY2tSZWNvcmRUeXBlSWQpOwoJYXJyT2ZQYWlycy5wdXNoKCJEcnVnX1R5cGVfX2MiLCAiU2t5cml6aSIpCgkKfQoKYXJyT2ZQYWlycy5wdXNoKHpwICsgIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKYXJyT2ZQYWlycy5wdXNoKHpwICsgInNlbnRGYXhUb19fYyIsIGRvYy5kZWxpdmVyZWRUbyk7IC8vRVJTMTcwNjI4IGNhbGxlciBpZAphcnJPZlBhaXJzLnB1c2goenAgKyAiRnJvbV9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsKYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAphcnJPZlBhaXJzLnB1c2goenAgKyAiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgLy9FUlMxNzA3MzEgIzQwNTkzCmFyck9mUGFpcnMucHVzaCh6cCArICJDbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKCmlmIChjYXNlSWQgJiYgY2FzZUlkLmxlbmd0aCA+IDApIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DYXNlX19jIiwgY2FzZUlkKTsKfQp2YXIgc2ZTdGFja0lkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCBhdHRhY2hMYWJlbCwgYXJyT2ZQYWlycyk7CmFsZXJ0KCIjIyMjIFN0YWNrIFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmU3RhY2tJZCk7CgphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CmFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZlN0YWNrSWQgKyAiLVNUQUNLIik7CmFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLCBzZlN0YWNrSWQpOyAvL0VSUzE3MDcyNyAjNDA0NDcKCmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX0Nhc2VfX2MiLCBjYXNlSWQpOyAvL01TSDE3MDgyOAphcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19DYXNlX19yLkNhc2VOdW1iZXIiLCBjYXNlTnVtYmVyKTsgLy9NU0gxNzA4MjgKYXJyT2ZQYWlycy5wdXNoKCJYX1pQQVBFUl9fUGF0aWVudF9fYyIsIHBhdGllbnRJZCk7IC8vTVNIMTcwODI4CmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZSIsIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUpOyAKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKLy9NU0gxNzA4MzEgZW5kIGNyZWF0ZSBzdGFjaw=="},"ordinal":19}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//MSH170831 refactor to create zStack
zData.setGlobalVariables(doc); //who and where
var formatNow = getCurDateAndTime(doc);
var arrOfPairs = [];
var attachLabel = "";
var caseId = "";
var caseNumber = "";
var patientId = "";
var firstName = "";
var lastName = "";

var nowTimeStamp = new Date().getTime() + ""; 
var coverID = X(doc, "coverID");
var docTitle = X(doc, "docTitle");

alert("coverID: " + coverID);
alert("docTitle: " + docTitle);

var arrOfPairs = [];
var sfCaseId = "";
var patientFirstName = "";
var patientLastName = "";

//find sfId
var sfId = getBarcodeOne(doc);
if (!sfId || 0 === sfId.length) {
    sfId = getAlternateBarcodeOne(doc) + "";
}
alert("### sfId from barcode: " + sfId);

if (sfId && sfId.length > 0) {
    //find docType, check wddata first
    var docType = doc.X("X_docType");
    alert("docType == " + docType);
    if (!docType || 0 === docType.length) {
        zData.docTypeOCR = zData.docTyper(doc, {"PAPP":"Patient~ Assistance~", "PAUTH":"Prior~ Authorization~", "ENRL":"Enrollment~", "FAX":""});
        alert("docType was " + doc.docType + " now " + zData.docTypeOCR);
        var zType = doc.X("X_docType");
        if (doc.docType != zData.docTypeOCR) {
            var arrOfPairs0 = [];
            arrOfPairs0.push("X_docTypeOCR", zData.docTypeOCR);
            arrOfPairs0.push("X_docType", zData.docTypeOCR);
            zType = zData.docTypeOCR;
            updateDB(doc, arrOfPairs0);
        }
    }
    caseId = sfId;
	var attachedTo = X(doc, "sfServer");
    attachedTo += "/" + sfId;
	
    //find sfType
    var sfType = "";
    if (sfId && sfId.length > 0) {
        sfType = getSFType(doc, sfId);
    }
    alert("*** got sfType :: " + sfType)

    if ("Case" == sfType) {
        
	   var caseFlds = getSFFields(doc, "Case", "RecordTypeId,ContactId,AccountId", null, sfId); //AN20180718 get the fields from the Case that we will need
       var recTypeId = X(doc, "RecordTypeId", caseFlds);
       var recTypeName = getSFField(doc, "RecordType", "Name", null, recTypeId); //AN20180718 get the name of the current Case record type
       alert("@@@ current Case Record Type Name: " + recTypeName);	

       var caseClassification =  X(doc, "Classification__c", caseFlds); //get the Contact ID since PAP uses the Contact object for Patients
	   alert("@@@ caseClassification is = " + caseClassification);
	   
	   if (recTypeName === "New/Renewal/YEC/On-going Prescription"){ //this is a PAP case
	     alert("@@@ getting PAP Case details");
   	     patientId =  X(doc, "ContactId", caseFlds); //get the Contact ID since PAP uses the Contact object for Patients
	     var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, patientId); 
	     alert("@@@ calling SF for contactFlds :: " + contactFlds);
	     patientFirstName = X(doc, "FirstName", contactFlds);
	     patientLastName = X(doc, "LastName", contactFlds);
	   }

	   else if (recTypeName === "Benefit Verification" || recTypeName === "Denial Support" || recTypeName === "Complete Intake"){ //this is an RH-Immunology or a Complete Intake
	     alert("@@@ getting RH Case details");
	     patientId = X(doc, "AccountId", caseFlds); //get the Account ID since RH uses the Account object for Patients
	     var accountFlds = getSFFields(doc, "Account", "PS_PatientFirstName__c,PS_PatientLastName__c", null, patientId); 
	     alert("@@@ calling SF for accountFlds :: " + accountFlds);
	     patientFirstName = X(doc, "PS_PatientFirstName__c", accountFlds);
	     patientLastName = X(doc, "PS_PatientLastName__c", accountFlds);
	   }

       alert("@@@ patientId :: " + patientId);
       alert("@@@ patientFirstName :: " + patientFirstName);
       alert("@@@ patientLastName :: " + patientLastName);
    
   	   attachLabel = patientFirstName + " " + patientLastName + " - " + docType + " - " + zData.formatTodayMMddYYYY();
       alert("@@@@ attachLabel: " + attachLabel);
	   arrOfPairs.push("db-label", attachLabel);	
		
	} else {
        attachLabel = docType + " Received on " + formatNow;
    }

	alert("@@@ master ID is = " + doc.kbData.groupID);
    alert("@@@ PAP group ID is = " + zData.papGroupId);
    alert("@@@ RH-Immunology group ID is = " + zData.valetGroupId);
    alert("@@@ Complete Intake group ID is = " + zData.compIntGroupId);
	
	//set the Group security to PAP, RH-Immunology, or Complete Intake
	if (recTypeName === "New/Renewal/YEC/On-going Prescription" || caseClassification === "PAP") { //AN20180604 set PAP security
		alert("@@@ setting document security for PAP group");
		arrOfPairs.push("db-users", ":" + zData.papGroupId + ":");
		arrOfPairs.push("db-readers", ":" + zData.papGroupId + ":");
	}
	else if (recTypeName === "Benefit Verification" || caseClassification === "RH-Immunology") {//AN20180604 set RH-Immunology group security
		alert("@@@ setting document security for RH-Immunology");
		arrOfPairs.push("db-users", ":" + zData.valetGroupId + ":");
		arrOfPairs.push("db-readers", ":" + zData.valetGroupId + ":");
	}
	
	else if (recTypeName === "Complete Intake" || caseClassification === "Complete Intake") {//AN20190301 set Complete Intake group security
		alert("@@@ setting document security for Complete Intake");
		arrOfPairs.push("db-users", ":" + zData.compIntGroupId + ":");
		arrOfPairs.push("db-readers", ":" + zData.compIntGroupId + ":");
	}
	
	updateDB(doc, arrOfPairs);
		
    /* attach the fax to its corresponding Salesforce Object */
    arrOfPairs = [];
    arrOfPairs.push("X_buttonAction0", X(doc, "X_buttonAction"));
    arrOfPairs.push("X_buttonAction", "");
    
    arrOfPairs.push("db-label", attachLabel);
    arrOfPairs.push("db-BATES", sfId + "-" + docType); /* ERS170625 todo get docType from template used */
    arrOfPairs.push("X_attachedTo", attachedTo); /* ERS170628 docSet needs this */
    if (docType !== "") arrOfPairs.push("X_docType",docType); //ERS180328 #46373

    //TPM180803 For setting checkboxes on the zdocset
    if (1===1) { //ERS170909 #40592 for zDocSet statuses
       var now0 = getCurDateAndTime(doc,false,true);
       arrOfPairs.push("X_reviewedStatus", "Received");
       arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"); //ERS170909 #40592/CAW Update
       arrOfPairs.push("X_buttonAction","");
	   alert("@@@ setting Received checkbox");
	   updateDB(doc, arrOfPairs);
	   arrOfPairs.push("X_reviewedStatus", "Indexed");
       arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Auto-indexed via barcode by agent at " + now0 + "<br/>"); //ERS170909 #40592/CAW Update
       arrOfPairs.push("X_buttonAction","");
	   alert("@@@ setting Indexed checkbox");
	   updateDB(doc, arrOfPairs);
    }
	
	attach(doc, attachLabel, sfId);

    /* save the workflow fields */
    arrOfPairs = [];
    arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
    arrOfPairs.push("ZPAPER__newFax__c", "true");
    arrOfPairs.push("ZPAPER__faxType__c", docType);
    //MSH170829 update case status when receiving missing info
    if (sfType == "Case" && (docType && docType == "MIF")) {
        arrOfPairs.push("Status", "Information Received");
        arrOfPairs.push("PS_Missing_Info_received__c", formatNow); //MSH170912
    }
    updateSFRecord(doc, sfType, sfId, arrOfPairs);

	var masterID = (doc.kbData.groupID).substring(1,(doc.kbData.groupID).length()); //get the zPaper Master ID
	alert("@@@ masterID: " + masterID);
	
    alert("@@@@@@ Moving barcoded document into folder: " + masterID + "Triage-S3");
    moveDocument(doc, masterID + "Triage-S1A", masterID + "Triage-S3");
}

//MSH170831 create stack
var formatNow = getCurDateAndTime(doc);
var zp = "ZPAPER__"; //ERS170626 now in the package
var zStack = zp + "zStack__c";
arrOfPairs = [];
arrOfPairs.push(zp + "faxType__c", docType);
arrOfPairs.push(zp + "Priority__c", "Medium");
arrOfPairs.push(zp + "Status__c", "Complete");
arrOfPairs.push(zp + "Channel__c", "Fax");
arrOfPairs.push(zp + "latestFax__c", formatNow);
arrOfPairs.push(zp + "receivedId__c", doc.dbID);
arrOfPairs.push(zp + "newFax__c", "true");
arrOfPairs.push(zp + "Pages__c", X(doc, "X_pages"));

if (zData.classification == "PAP") { //AN20180604 set PAP queue and record type
	alert("@@@ setting queue and record type for PAP group");
	arrOfPairs.push("OwnerId", zData.papQueueId);
	arrOfPairs.push("RecordTypeId", zData.papStackRecordTypeId);
	arrOfPairs.push("Drug_Type__c", "Humira");

}
else if (zData.classification == "RH-Immunology") {//AN20180604 set RH-Immunology queue and record type
    alert("@@@ setting queue and record type for RH-Immunology group");
	arrOfPairs.push("OwnerId", zData.immunQueueId);
	arrOfPairs.push("RecordTypeId", zData.valetStackRecordTypeId);
	arrOfPairs.push("Drug_Type__c", "Humira");

}
else if (zData.classification == "Complete Intake") {//AN20190301 set Complete Intake queue and record type
    alert("@@@ setting queue and record type for Complete Intake group");
	arrOfPairs.push("OwnerId", zData.compImmQueueId );
	arrOfPairs.push("RecordTypeId", zData.compImmStackRecordTypeId);
	arrOfPairs.push("Drug_Type__c", "Skyrizi")
	
}

arrOfPairs.push(zp + "Program_Name__c", zData.classification);
arrOfPairs.push(zp + "sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
arrOfPairs.push(zp + "From__c", doc.deliveredFrom);
arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
arrOfPairs.push(zp + "Stage__c", "Received"); //ERS170731 #40593
arrOfPairs.push(zp + "Classification__c", zData.classification);

if (caseId && caseId.length > 0) {
    arrOfPairs.push("ZPAPER__Case__c", caseId);
}
var sfStackId = createAndAttach(doc, zStack, attachLabel, arrOfPairs);
alert("#### Stack Received. Attached to: " + sfStackId);

arrOfPairs = [];
arrOfPairs.push("db-label", attachLabel);
arrOfPairs.push("db-BATES", sfStackId + "-STACK");
arrOfPairs.push("X_sfStackId", sfStackId); //ERS170727 #40447

arrOfPairs.push("X_ZPAPER__Case__c", caseId); //MSH170828
arrOfPairs.push("X_ZPAPER__Case__r.CaseNumber", caseNumber); //MSH170828
arrOfPairs.push("X_ZPAPER__Patient__c", patientId); //MSH170828
arrOfPairs.push("X_ZPAPER__Patient__r.Name", patientFirstName + " " + patientLastName); 
updateDB(doc, arrOfPairs);
//MSH170831 end create stack
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
