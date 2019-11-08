<!--
// Name: Index Page Encrypted
// Committer: andrew@zpaper.com
// Update: code cleanup
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-30 20:30:15","active":true,"button":"Index","name":"Index Page Encrypted","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"Ly90aGlzIGlzIGEgY29weSBhbmQgdXBkYXRlIG9mIHRoZSBleGlzdGluZyBJbmRleCBQYWdlIHJ1bGUuIFRlbXAgdXNlIGZvciBTaGllbGQgRW5jcnlwdGlvbiB0ZXN0aW5nCgp2YXIgZHEgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDM0KTsKdmFyIG5sID0gU3RyaW5nLmZyb21DaGFyQ29kZSgxMCk7CnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwovKiBNU0gxNzExMzAgIzQzNjQ5IGNyZWF0ZWQgZGF0ZSBmb3Igb3JpZ2luYWwgZG9jICovCnZhciBkb2NDcmVhdGVkRGF0ZSA9IGdtdEZvcm1hdHRlZChkb2MsICJjcmVhdGVkIik7CnZhciBhdHRhY2hQYXRoID0gWChkb2MsICJYX2F0dGFjaGVkVG8iKTsKdmFyIHBhdGllbnRGaXJzdE5hbWUgPSAiIjsKdmFyIHBhdGllbnRMYXN0TmFtZSA9ICIiOwp2YXIgcGF0aWVudERPQiA9ICIiOwp2YXIgcGF0aWVudElkID0gIiI7CnZhciB0aWZmU2ZJZD0iIjsKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsgLy96UGFwZXIgZGJJRAp2YXIgc2ZTdGFja0lkID0gWChkb2MsICJYX3NmU3RhY2tJZCIpOwp2YXIgb3JnRG9jSWQgPSBkb2MuZGJJRDsgIC8vUFYwMjI2MTgKaWYgKHNmU3RhY2tJZCA9PT0gIiIpIHsgLy9FUlMxNzA3MzEgIzQwNTkzCgogICAgLyogTVNIMTcxMTI5IHdlIGFscmVhZHkgZ290IGF0dGFjaFBhdGgsIHVzZSBpdCBzZlN0YWNrSWQgPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOyAqLwogICAgc2ZTdGFja0lkID0gYXR0YWNoUGF0aDsKICAgIGlmIChzZlN0YWNrSWQubGFzdEluZGV4T2YoJy8nKSA+PSAwKSB7CiAgICAgICAgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZyhzZlN0YWNrSWQubGFzdEluZGV4T2YoJy8nKSArIDEpOwogICAgICAgIGlmIChzZlN0YWNrSWQuaW5kZXhPZignLCcpID49IDApIHsgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZygwLCBzZlN0YWNrSWQuaW5kZXhPZignLCcpKTsgfQogICAgfQp9CmFsZXJ0KCJAQEAgQ3VycmVudGx5IGF0dGFjaGVkIHRvIFpQQVBFUl9felN0YWNrX19jIHdpdGggc2ZTdGFja0lkOiAiICsgc2ZTdGFja0lkKTsKCi8vQU4yMDE4MDcxNiBmb3IgY29kZSByZXZpZXcgLSBhcmUgdGhlc2UgdmFyaWFibGVzIGFuZCBJRiBzdGF0ZW1lbnQgc3RpbGwgbmVlZGVkLCBzaW5jZSB3ZSBhcmUgbm8gbG9uZ2VyIHVzZXIgZm9sZGVycz8KYWxlcnQoIkBAQCBzZlN0YWNrSWQgPSAiICsgc2ZTdGFja0lkKTsKdmFyIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbihkb2MsICJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCAiWF9pbmRleEluaXRpYWxpemVkIik7CmlmICghaW5kZXhJbml0aWFsaXplZCB8fCAwID09PSBpbmRleEluaXRpYWxpemVkLmxlbmd0aCkgewogICAgc3RhY2tJZCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgICBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKICAgIC8qIE1TSDE3MDgxNCBtaXNtYXRjaGVkIHBhcmFtIGxpc3QgKi8KICAgIHpEYXRhLmluaXRpYWxpemVTdGFjayhkb2MsIHN0YWNrRm9sZGVyLCBzdGFja0lkKTsKfQoKdmFyIGNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsKYWxlcnQoIkBAQCBjYXNlSWQgPSAiICsgY2FzZUlkKTsKCnZhciBjYXNlRmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNhc2UiLCAiUmVjb3JkVHlwZUlkLENvbnRhY3RJZCxBY2NvdW50SWQiLCBudWxsLCBjYXNlSWQpOyAvL0FOMjAxODA3MTggZ2V0IHRoZSBmaWVsZHMgZnJvbSB0aGUgQ2FzZSB0aGF0IHdlIHdpbGwgbmVlZAoKdmFyIHJlY1R5cGVJZCA9IFgoZG9jLCAiUmVjb3JkVHlwZUlkIiwgY2FzZUZsZHMpOwp2YXIgcmVjVHlwZU5hbWUgPSBnZXRTRkZpZWxkKGRvYywgIlJlY29yZFR5cGUiLCAiTmFtZSIsIG51bGwsIHJlY1R5cGVJZCk7IC8vQU4yMDE4MDcxOCBnZXQgdGhlIG5hbWUgb2YgdGhlIGN1cnJlbnQgQ2FzZSByZWNvcmQgdHlwZQoKYWxlcnQoIkBAQCBjdXJyZW50IENhc2UgUmVjb3JkIFR5cGUgTmFtZTogIiArIHJlY1R5cGVOYW1lKTsKCi8vQU4yMDE4MDcxOCBhZGRlZCB0aGlzIGxvZ2ljIHRvIGRpZmZlcmVudGlhdGUgYmV0d2VlbiBQQVAgYW5kIFJIIGNhc2VzCmlmIChyZWNUeXBlTmFtZSA9PT0gIk5ldy9SZW5ld2FsL1lFQy9Pbi1nb2luZyBQcmVzY3JpcHRpb24iKXsgLy90aGlzIGlzIGEgUEFQIGNhc2UKICAgIGFsZXJ0KCJAQEAgZ2V0dGluZyBQQVAgQ2FzZSBkZXRhaWxzIik7CiAgICBwYXRpZW50SWQgPSAgWChkb2MsICJDb250YWN0SWQiLCBjYXNlRmxkcyk7IC8vZ2V0IHRoZSBDb250YWN0IElEIHNpbmNlIFBBUCB1c2VzIHRoZSBDb250YWN0IG9iamVjdCBmb3IgUGF0aWVudHMKICAgIAogICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJGaXJzdE5hbWUsTGFzdE5hbWUsQmlydGhkYXRlIiwgbnVsbCwgcGF0aWVudElkKTsgLy9NU0gxNzA4MTggYWRkZWQgQmlydGhkYXRlCiAgICBhbGVydCgiQEBAIGNhbGxpbmcgU0YgZm9yIGNvbnRhY3RGbGRzIDo6ICIgKyBjb250YWN0Rmxkcyk7CiAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgcGF0aWVudERPQiA9IFgoZG9jLCAiQmlydGhkYXRlIiwgY29udGFjdEZsZHMpOwoKfQplbHNlIGlmIChyZWNUeXBlTmFtZSA9PT0gIkJlbmVmaXQgVmVyaWZpY2F0aW9uIiB8fCByZWNUeXBlTmFtZSA9PT0gIkRlbmlhbCBTdXBwb3J0IiB8fCByZWNUeXBlTmFtZSA9PT0gIkNvbXBsZXRlIEludGFrZSIpeyAvL0FOMjAxOTAzMDUgdGhpcyBpcyBhbiBSSC1JbW11bm9sb2d5IGNhc2Ugb3IgYSBDb21wbGV0ZSBJbW11bm9sb2d5IGNhc2UKICAgIGFsZXJ0KCJAQEAgZ2V0dGluZyBSSCBvciBDb21wbGV0ZSBJbW11bm9sb2d5IENhc2UgZGV0YWlscyIpOwogICAgCiAgICBwYXRpZW50SWQgPSBYKGRvYywgIkFjY291bnRJZCIsIGNhc2VGbGRzKTsgLy9nZXQgdGhlIEFjY291bnQgSUQgc2luY2UgUkggdXNlcyB0aGUgQWNjb3VudCBvYmplY3QgZm9yIFBhdGllbnRzCiAgICAKICAgIHZhciBhY2NvdW50RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkFjY291bnQiLCAiUFNfUGF0aWVudEZpcnN0TmFtZV9fYyxQU19QYXRpZW50TGFzdE5hbWVfX2MsUFNfRE9CX19jIiwgbnVsbCwgcGF0aWVudElkKTsgCiAgICBhbGVydCgiQEBAIGNhbGxpbmcgU0YgZm9yIGFjY291bnRGbGRzIDo6ICIgKyBhY2NvdW50Rmxkcyk7CiAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJQU19QYXRpZW50Rmlyc3ROYW1lX19jIiwgYWNjb3VudEZsZHMpOwogICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJQU19QYXRpZW50TGFzdE5hbWVfX2MiLCBhY2NvdW50Rmxkcyk7CiAgICBwYXRpZW50RE9CID0gWChkb2MsICJQU19ET0JfX2MiLCBhY2NvdW50Rmxkcyk7Cn0KCmFsZXJ0KCJAQEAgcGF0aWVudElkIDo6ICIgKyBwYXRpZW50SWQpOwphbGVydCgiQEBAIHBhdGllbnRGaXJzdE5hbWUgOjogIiArIHBhdGllbnRGaXJzdE5hbWUpOwphbGVydCgiQEBAIHBhdGllbnRMYXN0TmFtZSA6OiAiICsgcGF0aWVudExhc3ROYW1lKTsKYWxlcnQoIkBAQCBwYXRpZW50RE9CIDo6ICIgKyBwYXRpZW50RE9CKTsKCnZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKCmF0dGFjaExhYmVsID0gcGF0aWVudEZpcnN0TmFtZSArIHBhdGllbnRMYXN0TmFtZSArICIgLSAiICsgZG9jVHlwZSArICIgLSAiICsgTU1kZFlZWVk7CgovKiBHZXQgdGhlIGRvY3VtZW50IHR5cGUgKHdpbGwgYmUgdXNlZCB0byByb3V0ZSB0byBuZXh0IGZvbGRlcikgKi8KdmFyIGRvY1R5cGUgPSBYKGRvYywgIlhfZG9jVHlwZSIpOwp2YXIgYXR0YWNoTGFiZWwgPSAiIjsgLyogTVNIMTcwODE4IGZvcm1hdCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIgKi8KdmFyIG1hc3RlcklEID0gKGRvYy5rYkRhdGEuZ3JvdXBJRCkuc3Vic3RyaW5nKDEsKGRvYy5rYkRhdGEuZ3JvdXBJRCkubGVuZ3RoKCkpOyAvL2dldCB0aGUgelBhcGVyIE1hc3RlciBJRAp2YXIgbmV4dEZvbGRlciA9IG1hc3RlcklEICsgIlRyaWFnZS1TMiI7ICAgICAgICAgICAgICAvKiBPdGhlciBmb2xkZXIgaXMgdGhlIGRlZmF1bHQgKi8KdmFyIHByZXZJbmRleFBhZ2VzID0gWChkb2MsICJYX2luZGV4ZWRQYWdlcyIpOwp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwppZiAocHJldkluZGV4UGFnZXMgJiYgcHJldkluZGV4UGFnZXMubGVuZ3RoID4gMCAmJiBjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewogICAgcHJldkluZGV4UGFnZXMgKz0gIiwiOwp9CmN1ckluZGV4UGFnZXMgPSBwcmV2SW5kZXhQYWdlcyArIGN1ckluZGV4UGFnZXM7CnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9pbmRleGVkUGFnZXMiLCBjdXJJbmRleFBhZ2VzKTsKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCi8qIFNQTElUIE9GRiBORVcgU05JUFBFVCBIRVJFICovCnZhciBwYWdlUmFuZ2UgPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKYWxlcnQoIkBAQCBwYWdlUmFuZ2UgPSAiICsgcGFnZVJhbmdlKTsKdmFyIGFyck9mUGFpcnMxID0gW107IC8vUFYyODAzMTkgdXBkYXRlZCBmb3IgY29weSBvbiBzcGxpdAp2YXIgcGFnZUNvdW50ID16RGF0YS5jb3VudFBhZ2VzKGRvYywgcGFnZVJhbmdlKTsKCmFsZXJ0KCJAQEAgcGFnZVJhbmdlID09PSAiICsgcGFnZVJhbmdlKTsKaWYocmVjVHlwZU5hbWUgPT09ICJDb21wbGV0ZSBJbnRha2UiKXsKICAgIHZhciBidWZmZXIgPSAiIjsKZm9yICh2YXIgaT0xOyBpPD1wYWdlQ291bnQ7IGkrKykgewogICAgdmFyIGN1clRpbWUgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKTsKICAgIGJ1ZmZlciArPSAia2JtKCdJTUciICsgY3VyVGltZSArICInLCdQQUdFIiArIGkgKyAiSU1HIiArIGN1clRpbWUgKyAiJywnYWRkVGV4dCcsMTAsMSw4NzUsMTQ4MCwnQ09QWScsJzI0cHgnKTsiOwp9CgphbGVydCgiQEBAQCBNQVJLVVAgPSAiICsgYnVmZmVyKTsgICAKfQogICAgCnZhciBuZXdEYklkID0gc3BsaXREb2N1bWVudEZvckluZGV4KGRvYywgImluZGV4IiwgcGFnZVJhbmdlLGFyck9mUGFpcnMxKTsKYWxlcnQoIkBAQCBhZnRlciBzcGxpdERvY3VtZW50Rm9ySW5kZXgiKTsKCmRvY1R5cGUgPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7CnpEYXRhLmRvY1R5cGUgPSBkb2NUeXBlOwphdHRhY2hMYWJlbCA9IHpEYXRhLm5hbWVGaWxlKGRvYyk7IC8vRVJTMTcwODI5ICM0MTI5OAphbGVydCgiQEBAIHBhdGllbnRJZCBmcm9tIFhfWlBBUEVSX19QYXRpZW50X19jID0gIiArIHBhdGllbnRJZCk7CgphbGVydCgiQEBAIFhfWlBBUEVSX19QYXRpZW50X19yLk5hbWUgOjogIiArIFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZSIpKTsKCi8qTVNIMTcxMTI5IHdlIGFscmVhZHkgZ290IGRvY1R5cGUsIHVzZSBpdCBhdHRhY2hMYWJlbCA9IHBhdGllbnRGaXJzdE5hbWUgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIFgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpICsgIiAtICIgKyBNTWRkWVlZWTsqLwphdHRhY2hMYWJlbCA9IHBhdGllbnRGaXJzdE5hbWUgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIGRvY1R5cGUgKyAiIC0gIiArIE1NZGRZWVlZOwoKLy9NU0gxNzA4MjkgY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19GaXJzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgcGF0aWVudEZpcnN0TmFtZSArIGRxICsgIik7ICIpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19MYXN0TmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50TGFzdE5hbWUgKyBkcSArICIpOyAiKTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQmlydGhkYXRlX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArIHBhdGllbnRET0IgKyBkcSArICIpOyAiKTsKCi8vQU4yMDE4MDcxOCBhZGRlZCB0aGlzIGxvZ2ljIHRvIGRpZmZlcmVudGlhdGUgYmV0d2VlbiBQQVAgYW5kIFJIIGNhc2VzCmlmIChyZWNUeXBlTmFtZSA9PT0gIk5ldy9SZW5ld2FsL1lFQy9Pbi1nb2luZyBQcmVzY3JpcHRpb24iKXsgLy90aGlzIGlzIGEgUEFQIGNhc2UsIHNvIHdlIHVwZGF0ZSB0aGUgQ29udGFjdCBsb29rdXAgUGF0aWVudF9fYyBvbiB6U3RhY2sKICAgIGFsZXJ0KCJAQEAgc2V0dGluZyBERSBwYW5lbCBmaWVsZHMgZm9yIGZvciBQQVAgY2FzZSIpOwogICAgLy9NU0gxNzA4Mjkgc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgcGF0aWVudElkICsgZHEgKyAiKTsgIik7Cgp9CmVsc2UgaWYgKHJlY1R5cGVOYW1lID09PSAiQmVuZWZpdCBWZXJpZmljYXRpb24iIHx8IHJlY1R5cGVOYW1lID09PSAiRGVuaWFsIFN1cHBvcnQiIHx8IHJlY1R5cGVOYW1lID09PSAiQ29tcGxldGUgSW50YWtlIil7IC8vQU4yMDE5MDMwNSB0aGlzIGlzIGFuIFJILUltbXVub2xvZ3kgY2FzZSBvciBhIENvbXBsZXRlIEltbXVub2xvZ3ksIHNvIHdlIHVwZGF0ZSB0aGUgQWNjb3VudCBsb29rdXAgUGF0aWVudFJIX19jIG9uIHpTdGFjawogICAgYWxlcnQoIkBAQCBzZXR0aW5nIERFIHBhbmVsIGZpZWxkcyBmb3IgUkggY2FzZSBvciBDb21wbGV0ZSBJbW11bm9sb2d5IGNhc2UiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50UkhfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgcGF0aWVudElkICsgZHEgKyAiKTsgIik7Cn0KCi8vTVNIMTcwODI5IHNldCB0aGUgUGF0aWVudCBsb29rdXAgZmllbGRzCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lICsgZHEgKyAiKTsgIik7CgovLyB1cGRhdGUgc3RhY2sKYWxlcnQoIkBAQCByZWFkeSB0byB1cGRhdGUgU3RhY2tJRCA9ICIgKyBzdGFja0lkKTsgLy9NU0gxNzA5MjYKYWxlcnQoIkBAQCBzZXR0aW5nIHBhdGllbnQgZmllbGQgb24gU3RhY2tJRCA9ICIgKyBzdGFja0lkICsgIiwgUGF0aWVudCA9ICIgKyBwYXRpZW50SWQpOwphcnJPZlBhaXJzID0gW107CgphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fRmlyc3ROYW1lX19jIiwgcGF0aWVudEZpcnN0TmFtZSk7CmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19MYXN0TmFtZV9fYyIsIHBhdGllbnRMYXN0TmFtZSk7CmlmIChwYXRpZW50RE9CICYmIHBhdGllbnRET0IubGVuZ3RoID4gMCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0JpcnRoZGF0ZV9fYyIsIHBhdGllbnRET0IpOwp9CgphcnJPZlBhaXJzLnB1c2goIkRydWdfVHlwZV9fYyIsIFgoZG9jLCAiWF9EcnVnX1R5cGVfX2MiKSk7CmFyck9mUGFpcnMucHVzaCgiTWlzc2luZ19JbmZvcm1hdGlvbl9fYyIsIFgoZG9jLCAiWF9NaXNzaW5nX0luZm9ybWF0aW9uX19jIikpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIGRvY1R5cGUpOwphcnJPZlBhaXJzLnB1c2goIkF0dHJpYnV0ZXNfTGFzdF9Nb2RpZmllZF9fYyIsIGZvcm1hdE5vdyk7CmFyck9mUGFpcnMucHVzaCgiQXR0cmlidXRlc19Nb2RpZmllZF9CeV9fYyIsIGRvYy5rYkRhdGEucmVtb3RlVXNlcik7CmFsZXJ0KCJAQEAgdXBkYXRpbmcgbmV3IHN0YWNrIHdpdGggOjogIiArIGFyck9mUGFpcnMpOwp1cGRhdGVTRlJlY29yZChkb2MsICJaUEFQRVJfX3pTdGFja19fYyIsIHNmU3RhY2tJZCwgYXJyT2ZQYWlycyk7CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIGEgbmV3IENhc2UgcmVjb3JkLCBpZiBpdCB3YXNuJ3QgcGFzc2VkIGluICovCnZhciBwcmlvcml0eSA9IFgoZG9jLCAiWF9aUEFQRVJfX1ByaW9yaXR5X19jIik7IC8vRVJTMTcwNjI2CnZhciBjYXNlTnVtYmVyID0gIiI7CgovKiBNU0gxNzExMjkgIzQzNjQ5ICovCi8qIHRoaXMgaXMgdXNlZCBmb3IgYWxsIGNhc2VzLCBlaXRoZXIgY3JlYXRlZCBvciBleGlzdGluZyAqLwphcnJPZlBhaXJzID0gW107CmlmICgiQVBOOkFwcGxpY2F0aW9uIiA9PSBkb2NUeXBlKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0FwcGxpY2F0aW9uX1JlY2VpdmVkX0RhdGVfX2MiLCBkb2NDcmVhdGVkRGF0ZSArICIiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQXBwbGljYXRpb25fVHJpYWdlX0RhdGVfX2MiLCBmb3JtYXROb3cpOwp9IGVsc2UgaWYgKCJQUk46UHJlc2NyaXB0aW9uIiA9PSBkb2NUeXBlKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlBTX1ByZXNjcmlwdGlvbl9SZWNlaXZlZF9EYXRlX19jIiwgZG9jQ3JlYXRlZERhdGUgKyAiIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlBTX1ByZXNjcmlwdGlvbl9UcmlhZ2VfRGF0ZV9fYyIsIGZvcm1hdE5vdyk7Cn0KCmFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBDYXNlOiAiICsgY2FzZUlkKTsKdmFyIG1pc3NpbmdJbmZvID0gWChkb2MsICJYX01pc3NpbmdfSW5mb3JtYXRpb25fX2MiKTsKaWYgKG1pc3NpbmdJbmZvICYmIG1pc3NpbmdJbmZvID09ICJ0cnVlIikgewogICAgLy9NU0gxNzA4MjggaWYgbWlzc2luZ0luZm8gPT0gdHJ1ZSwgc2V0IHN0YXR1cyB0byBJbmZvcm1hdGlvbiBSZWNlaXZlZAogICAgYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCAiSW5mb3JtYXRpb24gUmVjZWl2ZWQiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiUFNfTWlzc2luZ19JbmZvX3JlY2VpdmVkX19jIiwgZm9ybWF0Tm93KTsgLy9NU0gxNzA5MTIKfQoKLypBTjIwMTkwNzAyIEF1ZyAyMDE5IHNwcmludCByZXF1aXJlbWVudCAtIHNhdmUgelN0YWNrIElEIHdoZW4gZG9jIGlzIGluZGV4ZWQgdG8gQ2FzZQp0aGlzIGlzIHRlY2ggZGVidC4gTmVlZCB0byByZW1vdmUgdGhlIFNoaWVsZCB3b3JrYXJvdW5kIGFuZCBnbyBiYWNrIHRvIGNyZWF0aW5nIFBhdGllbnQKcmVjb3JkcyBkaXJlY3RseSBmcm9tIHRoZSBERSBwYW5lbAoqLwphcnJPZlBhaXJzLnB1c2goInpTdGFja19fYyIsIHNmU3RhY2tJZCk7IAoKaWYgKHJlY1R5cGVOYW1lID09PSAiQ29tcGxldGUgSW50YWtlIil7IC8vQU4yMDE5MDMwNSB0aGlzIGlzIGEgQ29tcGxldGUgSW1tdW5vbG9neSBjYXNlCiAgICBhbGVydCgiQEBAIGVudGVyaW5nIENvbXBsZXRlIEltbXVub2xvZ3kgbG9naWMiKTsKICAgIGFsZXJ0KCJAQEAgZHJ1ZyB0eXBlIGlzICIgKyBYKGRvYywgIlhfRHJ1Z19UeXBlX19jIikpOwogICAgYWxlcnQoIkBAQCBlbnJvbGxtZW50IGZvcm0gaXMgIiArIFgoZG9jLCAiWF9QU19FbnJvbGxtZW50Rm9ybVZlcnNpb25fX2MiKSk7CiAgICAKICAgIGFyck9mUGFpcnMucHVzaCgiUFNfUHJvZHVjdE5hbWVfX2MiLCBYKGRvYywgIlhfRHJ1Z19UeXBlX19jIikpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJQU19FbnJvbGxtZW50Rm9ybVZlcnNpb25fX2MiLCBYKGRvYywgIlhfUFNfRW5yb2xsbWVudEZvcm1WZXJzaW9uX19jIikpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJQU19FbnJvbGxtZW50Rm9ybVZlcnNpb25fX2MiLCBYKGRvYywgIlhfUFNfRW5yb2xsbWVudEZvcm1WZXJzaW9uX19jIikpOyAvL0FOMjAxOTAzMDUgY29weSB0aGUgdmFsdWUgb2YgdGhlIHBhcmVudCBzdGFjaywgaWYgdGhlcmUgaXMgb25lCgp9Cgp1cGRhdGVTRlJlY29yZChkb2MsICJDYXNlIiwgY2FzZUlkLCBhcnJPZlBhaXJzKTsKCmFyck9mUGFpcnMgPSBbXTsKaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjYXNlSWQpID09IC0xKSB7CiAgICBhdHRhY2hQYXRoICs9ICIsIiArIGNhc2VJZDsKfQoKaWYgKHBhdGllbnRJZCAmJiBwYXRpZW50SWQubGVuZ3RoID4gMCkgewoJLy9BTjIwMTkwNzAyIERldGVybWluZSBpZiB0aGUgcGF0aWVudElkIGlzIGEgQ29udGFjdCBvciBhIFBlcnNvbiBBY2NvdW50LiBUaGlzIGlzIHRlY2huaWNhbCBkZWJ0IGFuZCB3aWxsIG5lZWQgdG8gYmUgcmV3b3JrZWQKCWlmIChwYXRpZW50SWQuc3RhcnRzV2l0aCgiMDAxIikpIHsKCQlhcnJPZlBhaXJzLnB1c2goIlBhdGllbnRSSF9fYyIsIHBhdGllbnRJZCk7Cgl9CgllbHNlIHsKCQlhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudF9fYyIsIHBhdGllbnRJZCk7Cgl9CiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHBhdGllbnRJZCkgPT0gLTEpIHsgYXR0YWNoUGF0aCArPSAiLCIgKyBwYXRpZW50SWQ7IH0KfQppZiAoY2FzZUlkICYmIGNhc2VJZC5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsIGNhc2VJZCk7Cn0KdXBkYXRlU0ZSZWNvcmQoZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCBzZlN0YWNrSWQsIGFyck9mUGFpcnMpOwphdHRhY2goZG9jLCBhdHRhY2hMYWJlbCwgc2ZTdGFja0lkKTsKYWxlcnQoIkBAQCB1cGRhdGVkIGFuZCBhdHRhY2hlZCB0byB6U3RhY2sgUmVjb3JkLCBpZCA9ICIgKyBzZlN0YWNrSWQpOwoKLy8gbGV0cyBjcmVhdGUgdGlmZiBpbWFnZSBmb3IgcGRmIGhlcmUKYWxlcnQoIkBAQCB0aWZmIGZsYWcgIyMjID0gIiArIHpEYXRhLmdlbmVyYXRlVGlmZik7CmFsZXJ0KCJAQEAgcGFnZVJhbmdlICMjIyA9ICIgKyBwYWdlUmFuZ2UpOwp0aWZmU2ZJZCA9IGNhc2VJZDsKaWYgKHpEYXRhLmdlbmVyYXRlVGlmZikgeyAvL0FOMjAxOTA3MDMgdGhpcyBhcHBlYXJzIHRvIGFsd2F5cyBldmFsdWF0ZSB0byBUUlVFLiB0ZWNoIGRlYnQuCiAgICB2YXIgYXR0YWNobWVudE5hbWUgPSBhdHRhY2hMYWJlbDsgLy9QVjAyMjYxOAogICAgdmFyIGNoaWxkRG9jSWQgPSBkb2MuZGJJRDsgLy9QVjAyMjYxOAogICAgc2V0RG9jdW1lbnRDb250ZXh0KGRvYywgb3JnRG9jSWQpOwogICAgLyogIGNyZWF0ZSBhbmQgYXR0YWNoIHRpZiAqLwogICAgLyogQXR0YWNoIGZpbGUgaW4gYWRkaXRpb24gdG8gZW52ZWxvcGUgKi8KICAgIHZhciBub3dUaW1lU3RhbXAgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgLy9mb3VuZCBpbiAvenBkYXRhL2NvbmYvd29ya2Zsb3cucHJvcHMKICAgIC8vYSBkaXJlY3RvcnkgaW4gd2hpY2ggdG8gZG8gdGhlIHdvcmsKICAgIC8vaW50ZWdyYXRpb25EaXI9L3pwZGF0YS9hZ2VudHMvbWNrL2ludGVncmF0aW9uLwogICAgY3JlYXRlRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAKICAgIC8vUGFnZSBSYW5nZSBjYW4gY29udGFpbiBub24tbnVtZXJpYyBjaGFyYWN0ZXJzIGZyb20gUGFnZSBSb3RhdGlvbiBlZzojIyMgcGFnZVJhbmdlICMjIzF1LDIsOCw3LDYsNSw0LDMKICAgIC8vbWFrZSBzdXJlIHBhZ2UgcmFuZ2UgYXJyYXkgaXMgY2xlYXJlZCBvZiBhbGwgbm9uLW51bWVyaWMgY2hhcnMKICAgIC8vTVNIMTgwOTI0IGRvbid0IG5lZWQgbWluICYgbWF4LCBqdXN0IHN0cmlwIG91dCBhbHBoYSBjaGFycy4KICAgIC8vICAgICAgcGFyc2luZyBpcyBoYW5kbGVkIGRvd25zdHJlYW0gaW4gY29tLmtub3dsZWRnZWJpbi5VdGlscyBwdWJsaWMgc3RhdGljIENvbGxlY3Rpb248SW50ZWdlcj4gcGFyc2VQYWdlcyhTdHJpbmcgcGFnZXMpCiAgCiAgICAvL3JlZ2V4OiBmaW5kIGFsbCBhbHBoYSBjaGFycyAoW2Etel0pLCBnbG9iYWxseSAoZyksIGFuZCBjYXNlLWluc2Vuc2l0aXZlIChpKQogICAgdmFyIG5vQWxwaGFQYWdlcyA9IHBhZ2VSYW5nZS5yZXBsYWNlKC9bYS16XS9naSwgIiIpOwogICAgYWxlcnQoIkBAQEBAIENhbGxpbmcgc3BsaXQsIHBhZ2VzID0gIiArIG5vQWxwaGFQYWdlcyArICIsIG5vd1RpbWVTdGFtcCA9ICIgKyBub3dUaW1lU3RhbXApOwoKICAgIC8vTVNIMTgwOTI0ICM1MjQ0MCB2YXIgcmVzcG9uc2UgPSBzcGxpdFBERihkb2MsIG1pblBhZ2UgKyAiLSIgKyBtYXhQYWdlLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCwgZG9jLmRiSUQpOwogICAgdmFyIHJlc3BvbnNlID0gc3BsaXRQREYoZG9jLCBub0FscGhhUGFnZXMsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wLCBkb2MuZGJJRCk7CiAgICBhbGVydCgiQEBAQCByZXNwb25zZSBmcm9tIHNwbGl0UERGID0gIiArIHJlc3BvbnNlKTsKICAgIHZhciBuZXdQREZOYW1lID0gWChkb2MsICJuZXdQREYiLCByZXNwb25zZSk7CiAgICBhbGVydCgiQEBAQCBzcGxpdCBQREYgRmlsZU5hbWUgPSAiICsgbmV3UERGTmFtZSk7CiAgICB2YXIgbmV3VElGRk5hbWUgPSBwZGYydGlmZihkb2MsIG5ld1BERk5hbWUpOwogICAgYWxlcnQoIkBAQEAgcGRmMnRpZmYgRmlsZU5hbWUgPSAiICsgbmV3VElGRk5hbWUpOwogICAgdmFyIGxhYmVsID0gYXR0YWNobWVudE5hbWUgKyAiLnRpZiI7CiAgICBpZiAobmV3VElGRk5hbWUuaW5kZXhPZigiRVJST1IiKSAhPT0gMCkgewogICAgICAgIHZhciB1cGxvYWRVUkwgPSAiaHR0cDovL2xvY2FsaG9zdDo4MDgwL215ZmlsZWZvcmNlL3VwbG9hZFRvQ2xvdWQuanNwP1NGaWQ9TkVXJlNGcGlkPSIgKyB0aWZmU2ZJZCArICImU0Zvcmc9IiArIGRvYy5zZk9yZyArICImbGFiZWw9IiArIGxhYmVsICsgIiZzZXJ2ZXJGaWxlPSIgKyBuZXdUSUZGTmFtZSArICImRGVzY3JpcHRpb249RmlsZSBhdHRhY2hlZCBieSB6UGFwZXIuIjsKICAgICAgICBhbGVydCgiQEBAIyBVcGxvYWQgbmF0aXZlIFBERiB3aXRoICIgKyB1cGxvYWRVUkwpOwogICAgICAgIHZhciByID0gd2dldChkb2MsIHVwbG9hZFVSTCk7CiAgICAgICAgYWxlcnQoIkBAQCMgdGlmZiBjcmVhdGVkIGFuZCBhdHRhY2hlZCB0bzogIiArIGNhc2VJZCk7CiAgICAgICAgY2xlYW51cERpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgICAgICAvKiBGaW5hbGx5LCBkZWxldGUgdGhlIHdvcmsgZm9sZGVyIGFuZCBhbGwgY29udGVudHMuICovCiAgICAgICAgLy9NU0gxNzAyMjIgRVJTIHdhbnRzIHRvIGtlZXAgY2xlYW51cERpcmVjdG9yeShkb2MsICJpbnRlZ3JhdGlvbkRpciIsIG5vd1RpbWVTdGFtcCk7CiAgICB9CiAgICAvL01TSDE4MTAwOCBzaW5jZSB3ZSBjaGFuZ2VkIHRoZSBkb2MgY29udGV4dCwgY2hhbmdlIGl0IGJhY2sKICAgIHNldERvY3VtZW50Q29udGV4dChkb2MsIGNoaWxkRG9jSWQpOwp9CgphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJJbmRleGVkIik7Ci8qIENSTjE2MDgyNSBTZXQgdGhlIHBhZ2UgY291bnQgc28gdGhhdCBpdCBkb2VzIG5vdCBoYXZlIHRoZSBwYXJlbnQgcGFnZSBjb3VudCAqLwogcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MsIHBhZ2VSYW5nZSk7CmFsZXJ0KCJAQEBAIHBhZ2VDb3VudCA9ICIgKyBwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLCBwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsIGRvY1R5cGUpOyAvKiBNU0gxNzA5MjcgZ2V0IGFsbCB0aGUgZG9jVHlwZXMgYWxpZ25lZCAqLwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIiwgcGFnZUNvdW50KTsKaWYgKCFwYXRpZW50Rmlyc3ROYW1lIHx8IDAgPT09IHBhdGllbnRGaXJzdE5hbWUubGVuZ3RoKSB7IHBhdGllbnRGaXJzdE5hbWUgPSAiVW5rbm93biI7IH0KaWYgKCFwYXRpZW50TGFzdE5hbWUgfHwgMCA9PT0gcGF0aWVudExhc3ROYW1lLmxlbmd0aCkgeyBwYXRpZW50TGFzdE5hbWUgPSAiTmFtZSI7IH0KCmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgYXR0YWNoUGF0aCk7IC8vRVJTMTcwNjI4CmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX0Nhc2VfX2MiLCBjYXNlSWQpOyAvL01TSDE3MDgyOAphcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19DYXNlX19yLkNhc2VOdW1iZXIiLCBjYXNlTnVtYmVyKTsgLy9NU0gxNzA4MjgKYXJyT2ZQYWlycy5wdXNoKCJYX1pQQVBFUl9fUGF0aWVudF9fYyIsIHBhdGllbnRJZCk7IC8vTVNIMTcwODI4CmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZSIsIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUpOyAvL01TSDE3MDgyOAphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOyAvL0NSTjE3MTEwMgoKLy9DUk4xODA3MjYgQ2FzZSAjNTA0NjkgLS0gU2V0IHRoZSAiSW5kZXhlZCIgY2hlY2tib3gKdmFyIGJhID0gIkluZGV4ZWQiOyAvL0pQQjE4MDYwNSBiZWNhdXNlIHdlIGNoYW5nZWQgdGhlIG5hbWUgb2YgdGhlIGJ1dHRvbiBmcm9tIEluZGV4ZWQgdG8gU2F2ZQp2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7Ci8vYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCJSZWNlaXZlZCBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vUFYxOTA0MjAgdXBkYXRlZCBmb3IgZG9jIHNldCBjb21wb25lbnRzIHRvIGNoZWNrCnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7Cgp0cmFjayhkb2MsICJEb2MgSW5kZXhlZCAiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5yZWFkeX4pO3VwZGF0ZURFU3RhdHVzKH5pbmRleGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7Ci8qIGVuZCBvZiBydWxlICov"},"ordinal":13}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//this is a copy and update of the existing Index Page rule. Temp use for Shield Encryption testing

var dq = String.fromCharCode(34);
var nl = String.fromCharCode(10);
var formatNow = getCurDateAndTime(doc);
/* MSH171130 #43649 created date for original doc */
var docCreatedDate = gmtFormatted(doc, "created");
var attachPath = X(doc, "X_attachedTo");
var patientFirstName = "";
var patientLastName = "";
var patientDOB = "";
var patientId = "";
var tiffSfId="";
var stackId = X(doc, "X_stack"); //zPaper dbID
var sfStackId = X(doc, "X_sfStackId");
var orgDocId = doc.dbID;  //PV022618
if (sfStackId === "") { //ERS170731 #40593

    /* MSH171129 we already got attachPath, use it sfStackId = X(doc, "X_attachedTo"); */
    sfStackId = attachPath;
    if (sfStackId.lastIndexOf('/') >= 0) {
        sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/') + 1);
        if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
}
alert("@@@ Currently attached to ZPAPER__zStack__c with sfStackId: " + sfStackId);

//AN20180716 for code review - are these variables and IF statement still needed, since we are no longer user folders?
alert("@@@ sfStackId = " + sfStackId);
var stackFolder = stackId + "-STACK";
/* Clear the trigger that invoked this rule */
zData.clearTriggerCondition(doc, "X_buttonAction");
var indexInitialized = X(doc, "X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
    stackId = new Date().getTime() + "";
    stackFolder = stackId + "-STACK";
    /* MSH170814 mismatched param list */
    zData.initializeStack(doc, stackFolder, stackId);
}

var caseId = X(doc, "X_ZPAPER__Case__c");
alert("@@@ caseId = " + caseId);

var caseFlds = getSFFields(doc, "Case", "RecordTypeId,ContactId,AccountId", null, caseId); //AN20180718 get the fields from the Case that we will need

var recTypeId = X(doc, "RecordTypeId", caseFlds);
var recTypeName = getSFField(doc, "RecordType", "Name", null, recTypeId); //AN20180718 get the name of the current Case record type

alert("@@@ current Case Record Type Name: " + recTypeName);

//AN20180718 added this logic to differentiate between PAP and RH cases
if (recTypeName === "New/Renewal/YEC/On-going Prescription"){ //this is a PAP case
    alert("@@@ getting PAP Case details");
    patientId =  X(doc, "ContactId", caseFlds); //get the Contact ID since PAP uses the Contact object for Patients
    
    var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName,Birthdate", null, patientId); //MSH170818 added Birthdate
    alert("@@@ calling SF for contactFlds :: " + contactFlds);
    patientFirstName = X(doc, "FirstName", contactFlds);
    patientLastName = X(doc, "LastName", contactFlds);
    patientDOB = X(doc, "Birthdate", contactFlds);

}
else if (recTypeName === "Benefit Verification" || recTypeName === "Denial Support" || recTypeName === "Complete Intake"){ //AN20190305 this is an RH-Immunology case or a Complete Immunology case
    alert("@@@ getting RH or Complete Immunology Case details");
    
    patientId = X(doc, "AccountId", caseFlds); //get the Account ID since RH uses the Account object for Patients
    
    var accountFlds = getSFFields(doc, "Account", "PS_PatientFirstName__c,PS_PatientLastName__c,PS_DOB__c", null, patientId); 
    alert("@@@ calling SF for accountFlds :: " + accountFlds);
    patientFirstName = X(doc, "PS_PatientFirstName__c", accountFlds);
    patientLastName = X(doc, "PS_PatientLastName__c", accountFlds);
    patientDOB = X(doc, "PS_DOB__c", accountFlds);
}

alert("@@@ patientId :: " + patientId);
alert("@@@ patientFirstName :: " + patientFirstName);
alert("@@@ patientLastName :: " + patientLastName);
alert("@@@ patientDOB :: " + patientDOB);

var MMddYYYY = zData.formatTodayMMddYYYY();

attachLabel = patientFirstName + patientLastName + " - " + docType + " - " + MMddYYYY;

/* Get the document type (will be used to route to next folder) */
var docType = X(doc, "X_docType");
var attachLabel = ""; /* MSH170818 format should be "Patient Name - Doc Type - Date" */
var masterID = (doc.kbData.groupID).substring(1,(doc.kbData.groupID).length()); //get the zPaper Master ID
var nextFolder = masterID + "Triage-S2";              /* Other folder is the default */
var prevIndexPages = X(doc, "X_indexedPages");
var curIndexPages = X(doc, "X_idxPages");
if (prevIndexPages && prevIndexPages.length > 0 && curIndexPages && curIndexPages.length > 0) {
    prevIndexPages += ",";
}
curIndexPages = prevIndexPages + curIndexPages;
var arrOfPairs = [];
arrOfPairs.push("X_indexedPages", curIndexPages);
updateDB(doc, arrOfPairs);

/* SPLIT OFF NEW SNIPPET HERE */
var pageRange = X(doc, "X_idxPages");
alert("@@@ pageRange = " + pageRange);
var arrOfPairs1 = []; //PV280319 updated for copy on split
var pageCount =zData.countPages(doc, pageRange);

alert("@@@ pageRange === " + pageRange);
if(recTypeName === "Complete Intake"){
    var buffer = "";
for (var i=1; i<=pageCount; i++) {
    var curTime = new Date().getTime();
    buffer += "kbm('IMG" + curTime + "','PAGE" + i + "IMG" + curTime + "','addText',10,1,875,1480,'COPY','24px');";
}

alert("@@@@ MARKUP = " + buffer);   
}
    
var newDbId = splitDocumentForIndex(doc, "index", pageRange,arrOfPairs1);
alert("@@@ after splitDocumentForIndex");

docType = X(doc, "X_ZPAPER__faxType__c");
zData.docType = docType;
attachLabel = zData.nameFile(doc); //ERS170829 #41298
alert("@@@ patientId from X_ZPAPER__Patient__c = " + patientId);

alert("@@@ X_ZPAPER__Patient__r.Name :: " + X(doc, "X_ZPAPER__Patient__r.Name"));

/*MSH171129 we already got docType, use it attachLabel = patientFirstName + patientLastName + " - " + X(doc,"X_ZPAPER__faxType__c") + " - " + MMddYYYY;*/
attachLabel = patientFirstName + patientLastName + " - " + docType + " - " + MMddYYYY;

//MSH170829 clear out the "New Patient" fields
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__FirstName__c" + dq + ").val(" + dq + patientFirstName + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__LastName__c" + dq + ").val(" + dq + patientLastName + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Birthdate__c_readable" + dq + ").val(" + dq + patientDOB + dq + "); ");

//AN20180718 added this logic to differentiate between PAP and RH cases
if (recTypeName === "New/Renewal/YEC/On-going Prescription"){ //this is a PAP case, so we update the Contact lookup Patient__c on zStack
    alert("@@@ setting DE panel fields for for PAP case");
    //MSH170829 set the Patient lookup fields
    addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c" + dq + ").val(" + dq + patientId + dq + "); ");

}
else if (recTypeName === "Benefit Verification" || recTypeName === "Denial Support" || recTypeName === "Complete Intake"){ //AN20190305 this is an RH-Immunology case or a Complete Immunology, so we update the Account lookup PatientRH__c on zStack
    alert("@@@ setting DE panel fields for RH case or Complete Immunology case");
    addPostExecutionScript(doc, " $(" + dq + "#PatientRH__c" + dq + ").val(" + dq + patientId + dq + "); ");
}

//MSH170829 set the Patient lookup fields
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c_Name" + dq + ").val(" + dq + patientFirstName + " " + patientLastName + dq + "); ");

// update stack
alert("@@@ ready to update StackID = " + stackId); //MSH170926
alert("@@@ setting patient field on StackID = " + stackId + ", Patient = " + patientId);
arrOfPairs = [];

arrOfPairs.push("ZPAPER__FirstName__c", patientFirstName);
arrOfPairs.push("ZPAPER__LastName__c", patientLastName);
if (patientDOB && patientDOB.length > 0) {
    arrOfPairs.push("ZPAPER__Birthdate__c", patientDOB);
}

arrOfPairs.push("Drug_Type__c", X(doc, "X_Drug_Type__c"));
arrOfPairs.push("Missing_Information__c", X(doc, "X_Missing_Information__c"));
arrOfPairs.push("ZPAPER__faxType__c", docType);
arrOfPairs.push("Attributes_Last_Modified__c", formatNow);
arrOfPairs.push("Attributes_Modified_By__c", doc.kbData.remoteUser);
alert("@@@ updating new stack with :: " + arrOfPairs);
updateSFRecord(doc, "ZPAPER__zStack__c", sfStackId, arrOfPairs);

/* Attach the split document to a new Case record, if it wasn't passed in */
var priority = X(doc, "X_ZPAPER__Priority__c"); //ERS170626
var caseNumber = "";

/* MSH171129 #43649 */
/* this is used for all cases, either created or existing */
arrOfPairs = [];
if ("APN:Application" == docType) {
    arrOfPairs.push("PS_Application_Received_Date__c", docCreatedDate + "");
    arrOfPairs.push("PS_Application_Triage_Date__c", formatNow);
} else if ("PRN:Prescription" == docType) {
    arrOfPairs.push("PS_Prescription_Received_Date__c", docCreatedDate + "");
    arrOfPairs.push("PS_Prescription_Triage_Date__c", formatNow);
}

alert("@@@@ attaching to existing Case: " + caseId);
var missingInfo = X(doc, "X_Missing_Information__c");
if (missingInfo && missingInfo == "true") {
    //MSH170828 if missingInfo == true, set status to Information Received
    arrOfPairs.push("Status", "Information Received");
    arrOfPairs.push("PS_Missing_Info_received__c", formatNow); //MSH170912
}

/*AN20190702 Aug 2019 sprint requirement - save zStack ID when doc is indexed to Case
this is tech debt. Need to remove the Shield workaround and go back to creating Patient
records directly from the DE panel
*/
arrOfPairs.push("zStack__c", sfStackId); 

if (recTypeName === "Complete Intake"){ //AN20190305 this is a Complete Immunology case
    alert("@@@ entering Complete Immunology logic");
    alert("@@@ drug type is " + X(doc, "X_Drug_Type__c"));
    alert("@@@ enrollment form is " + X(doc, "X_PS_EnrollmentFormVersion__c"));
    
    arrOfPairs.push("PS_ProductName__c", X(doc, "X_Drug_Type__c"));
    arrOfPairs.push("PS_EnrollmentFormVersion__c", X(doc, "X_PS_EnrollmentFormVersion__c"));
    arrOfPairs.push("PS_EnrollmentFormVersion__c", X(doc, "X_PS_EnrollmentFormVersion__c")); //AN20190305 copy the value of the parent stack, if there is one

}

updateSFRecord(doc, "Case", caseId, arrOfPairs);

arrOfPairs = [];
if (attachPath.indexOf(caseId) == -1) {
    attachPath += "," + caseId;
}

if (patientId && patientId.length > 0) {
	//AN20190702 Determine if the patientId is a Contact or a Person Account. This is technical debt and will need to be reworked
	if (patientId.startsWith("001")) {
		arrOfPairs.push("PatientRH__c", patientId);
	}
	else {
		arrOfPairs.push("ZPAPER__Patient__c", patientId);
	}
    if (attachPath.indexOf(patientId) == -1) { attachPath += "," + patientId; }
}
if (caseId && caseId.length > 0) {
    arrOfPairs.push("ZPAPER__Case__c", caseId);
}
updateSFRecord(doc, "ZPAPER__zStack__c", sfStackId, arrOfPairs);
attach(doc, attachLabel, sfStackId);
alert("@@@ updated and attached to zStack Record, id = " + sfStackId);

// lets create tiff image for pdf here
alert("@@@ tiff flag ### = " + zData.generateTiff);
alert("@@@ pageRange ### = " + pageRange);
tiffSfId = caseId;
if (zData.generateTiff) { //AN20190703 this appears to always evaluate to TRUE. tech debt.
    var attachmentName = attachLabel; //PV022618
    var childDocId = doc.dbID; //PV022618
    setDocumentContext(doc, orgDocId);
    /*  create and attach tif */
    /* Attach file in addition to envelope */
    var nowTimeStamp = new Date().getTime() + "";
    //found in /zpdata/conf/workflow.props
    //a directory in which to do the work
    //integrationDir=/zpdata/agents/mck/integration/
    createDirectory(doc, zData.uploadDir, nowTimeStamp);
   
    //Page Range can contain non-numeric characters from Page Rotation eg:### pageRange ###1u,2,8,7,6,5,4,3
    //make sure page range array is cleared of all non-numeric chars
    //MSH180924 don't need min & max, just strip out alpha chars.
    //      parsing is handled downstream in com.knowledgebin.Utils public static Collection<Integer> parsePages(String pages)
  
    //regex: find all alpha chars ([a-z]), globally (g), and case-insensitive (i)
    var noAlphaPages = pageRange.replace(/[a-z]/gi, "");
    alert("@@@@@ Calling split, pages = " + noAlphaPages + ", nowTimeStamp = " + nowTimeStamp);

    //MSH180924 #52440 var response = splitPDF(doc, minPage + "-" + maxPage, zData.uploadDir, nowTimeStamp, doc.dbID);
    var response = splitPDF(doc, noAlphaPages, zData.uploadDir, nowTimeStamp, doc.dbID);
    alert("@@@@ response from splitPDF = " + response);
    var newPDFName = X(doc, "newPDF", response);
    alert("@@@@ split PDF FileName = " + newPDFName);
    var newTIFFName = pdf2tiff(doc, newPDFName);
    alert("@@@@ pdf2tiff FileName = " + newTIFFName);
    var label = attachmentName + ".tif";
    if (newTIFFName.indexOf("ERROR") !== 0) {
        var uploadURL = "http://localhost:8080/myfileforce/uploadToCloud.jsp?SFid=NEW&SFpid=" + tiffSfId + "&SForg=" + doc.sfOrg + "&label=" + label + "&serverFile=" + newTIFFName + "&Description=File attached by zPaper.";
        alert("@@@# Upload native PDF with " + uploadURL);
        var r = wget(doc, uploadURL);
        alert("@@@# tiff created and attached to: " + caseId);
        cleanupDirectory(doc, zData.uploadDir, nowTimeStamp);
        /* Finally, delete the work folder and all contents. */
        //MSH170222 ERS wants to keep cleanupDirectory(doc, "integrationDir", nowTimeStamp);
    }
    //MSH181008 since we changed the doc context, change it back
    setDocumentContext(doc, childDocId);
}

arrOfPairs = [];
arrOfPairs.push("X_reviewedStatus", "Indexed");
/* CRN160825 Set the page count so that it does not have the parent page count */
 pageCount = zData.countPages(doc, pageRange);
alert("@@@@ pageCount = " + pageCount);
arrOfPairs.push("X_pages", pageCount);
arrOfPairs.push("X_docType", docType); /* MSH170927 get all the docTypes aligned */
arrOfPairs.push("db-pages", pageCount);
if (!patientFirstName || 0 === patientFirstName.length) { patientFirstName = "Unknown"; }
if (!patientLastName || 0 === patientLastName.length) { patientLastName = "Name"; }

arrOfPairs.push("X_attachedTo", attachPath); //ERS170628
arrOfPairs.push("X_ZPAPER__Case__c", caseId); //MSH170828
arrOfPairs.push("X_ZPAPER__Case__r.CaseNumber", caseNumber); //MSH170828
arrOfPairs.push("X_ZPAPER__Patient__c", patientId); //MSH170828
arrOfPairs.push("X_ZPAPER__Patient__r.Name", patientFirstName + " " + patientLastName); //MSH170828
arrOfPairs.push("db-label", attachLabel); //CRN171102

//CRN180726 Case #50469 -- Set the "Indexed" checkbox
var ba = "Indexed"; //JPB180605 because we changed the name of the button from Indexed to Save
var now0 = getCurDateAndTime(doc,false,true);
arrOfPairs.push("X_reviewedStatus",ba);
//arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
arrOfPairs.push("X_reviews","Received by "+doc.kbData.remoteUser+" at "+now0+"<br/>"+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //PV190420 updated for doc set components to check
updateDB(doc, arrOfPairs);

track(doc, "Doc Indexed ", "Document with Id: " + doc.dbID, pageCount);
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");
/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gekluc3RhbGwoKSB7IC8vRVJTMTcwNzIyIHNldCBvbiB0aGUgaW1wb3J0CiAgICAkKCJbbmFtZT0nZGItQkFURVMnXSIpLnZhbCgiIik7CiAgICAkKCIjWF9idXR0b25BY3Rpb25zIikudmFsKCJJbmRleCBFbmNyeXB0ZWQsSW5kZXgsSWdub3JlLFJlamVjdCxTdGFjayBDb21wbGV0ZSIpOwogICAgJCgiI1hfZm9sZGVyRm9ybXMiKS52YWwoIjIwMjAwMjAxNzQ0MTIwNzQ0MDNfRGF0YTJfV2ViX0Zvcm0iKTsgLy9FUlMxNzA4MjIKfSAvL0VSUzE3MDcyMiBlbmQgb2YgZnVuY3Rpb24KCmZ1bmN0aW9uIGRvVmFsaWRhdGlvbigpIHsKICAgIHZhciByZXFCdWZmZXIgPSAiIjsKCiAgICB2YXIgbj0iWF9aUEFQRVJfX2ZheFR5cGVfX2MiOwogICAgdmFyIGw9IkRvY3VtZW50IFR5cGUiOwogICAgdmFyIGU9JCgnW25hbWU9IicrbisnIl0nKTsKICAgIGlmICghZS52YWwoKSB8fCAwID09PSBlLnZhbCgpLmxlbmd0aCB8fCAiRE9OT1RfU0FWRSIgPT09IGUudmFsKCkpIHsKICAgICAgICBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgIGlmIChyZXFCdWZmZXIubGVuZ3RoID4gMCkgeyByZXFCdWZmZXIgKz0gIiwgIjsgfQogICAgICAgIHJlcUJ1ZmZlciArPSBsOwogICAgfSBlbHNlIHsKICAgICAgICBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIGdyZWVuJyk7CiAgICB9CgogICAgbj0iWF9aUEFQRVJfX0Nhc2VfX2MiOwogICAgbD0iQ2FzZSI7CiAgICBlPSQoJ1tuYW1lPSInK24rJyJdJyk7CiAgICBpZiAoIWUudmFsKCkgfHwgMCA9PT0gZS52YWwoKS5sZW5ndGggfHwgIkRPTk9UX1NBVkUiID09PSBlLnZhbCgpKSB7CiAgICAgICAgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCByZWQnKTsKICAgICAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsgcmVxQnVmZmVyICs9ICIsICI7IH0KICAgICAgICByZXFCdWZmZXIgKz0gbDsKICAgIH0gZWxzZSB7CiAgICAgICAgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwogICAgfQoKICAgIC8vdmFyIGNhc2VJZCA9ICQoJ1tuYW1lPSJYX1pQQVBFUl9fQ2FzZV9fYyJdJykudmFsKCk7CiAgICAvL0VSUzE3MDcyNyBkZWJ1ZyBvbmx5IGFsZXJ0KCJDYXNlICIrY2FzZUlkKTsKCiAgICB2YXIgcGF0aWVudE5hbWUgPSAkKCdbbmFtZT0iWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZSJdJykudmFsKCk7CiAgICB2YXIgZm49JCgnW25hbWU9IlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiXScpOwogICAgdmFyIGxuPSQoJ1tuYW1lPSJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiXScpOwogICAgaWYgKHBhdGllbnROYW1lKSB7CiAgICAgICAgZm4udmFsKHBhdGllbnROYW1lLnNwbGl0KCIgIilbMF0pOwogICAgICAgIGxuLnZhbChwYXRpZW50TmFtZS5zcGxpdCgiICIpWzFdKTsKICAgIH0KCiAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsKICAgICAgICBhbGVydCgiRVJST1I6IFRoZSBmb2xsb3dpbmcgZmllbGRzIGFyZSByZXF1aXJlZDogIiArIHJlcUJ1ZmZlcik7CiAgICAgICAgcmV0dXJuIGZhbHNlOyAgIC8vQ1JOMTcwNzE5IG9uZSBvciBtb3JlIGZpZWxkIGlzIG1pc3NpbmcsIGRvbid0IHNlbmQgdG8gdGhlIHJ1bGVzIGVuZ2luZQogICAgfQogICAgcmV0dXJuIHRydWU7ICAgICAgICAvL0NSTjE3MDcxOSBBbGwgcmVxdWlyZWQgZmllbGRzIGhhdmUgYmVlbiBzdXBwbGllZCwgbGV0IHRoZSBydWxlcyBlbmdpbmUgYmUgbm90aWZpZWQKfQoKcmV0dXJuIGRvVmFsaWRhdGlvbigpOwo=
//--- RULE VALIDATION CODE - END ---

</script>
