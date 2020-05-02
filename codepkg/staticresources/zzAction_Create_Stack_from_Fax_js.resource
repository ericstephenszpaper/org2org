<!--
// Name: Create Stack from Fax
// Committer: andrew@zpaper.com
// Update: rh immunology
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-04-30 14:06:42","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gQ3JlYXRlIFN0YWNrIGZyb20gRmF4ICovCnZhciBjcmVhdGVDYXNlID0gZmFsc2U7IC8vQU4yMDE4MDcxMiBmbGFnIHRvIHRyYWNrIGlmIHdlIHdhbnQgdG8gY3JlYXRlIGEgQ2FzZSBvciBub3QKdmFyIHN0YWNrTnVtYmVyOy8vID0gIiI7IC8vQU4yMDE5MDMwNSBtb3ZpbmcgZGVjbGFyYXRpb24gdG8gdG9wIG9mIHJ1bGUKdmFyIGF0dGFjaExhYmVsID0gIiI7CnZhciB6VHlwZSA9IGRvYy5YKCJYX2RvY1R5cGUiKTsKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBjaGFubmVsID0gIkZheCI7CnZhciB6cEFyck9mUGFpcnMgPSBbXTsgLy9BTjIwMTgwNzEzIGRlY2xhcmluZyBhIHNlcGFyYXRlIGFycmF5IGZvciB1c2UgaW4gc2V0dGluZyB6UGFwZXIgZG9jIHNlY3VyaXR5CnZhciB6U3RhY2sgPSAiWlBBUEVSX196U3RhY2tfX2MiOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwoKdmFyIGZyb21GaWxlID0gWChkb2MsICJYX2Zyb21GaWxlIik7Ci8vQ1JOMTkwMzA4IEhhbmRsZSB1cGxvYWRlZCBmaWxlcyB2aWEgTGlnaHRuaW5nIENvbXBvbmVudAppZiAoZnJvbUZpbGUgJiYgZnJvbUZpbGUuaW5kZXhPZigibGlnaHRuaW5nVXBsb2FkIikgPj0gMCkgewogICAgZnJvbUZpbGUgPSBmcm9tRmlsZS5zdWJzdHJpbmcoZnJvbUZpbGUubGFzdEluZGV4T2YoJy8nKSArIDEpOwogICAgdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoIi0iKTsKICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gMykgewogICAgICAgIHZhciBhdHRhY2hUb0lkID0gcGFydHNbMl07CiAgICAgICAgYWxlcnQoIkBAQCBVUExPQUQ6IEFUVEFDSElORyBUTyBTQUxFU0ZPUkNFIFJFQ09SRCA9ICIgKyBhdHRhY2hUb0lkKTsKICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCBieSAiICsgcGFydHNbMF07CiAgICAgICAgYXR0YWNoKGRvYywgbGFiZWwsIGF0dGFjaFRvSWQsIHRydWUpOwogICAgICAgIHZhciBhcnJPZlBhaXJzTG9jYWwgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzTG9jYWwucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzTG9jYWwpOwogICAgICAgIHJldHVybjsKICAgIH0KfQoKLy9FUlMxNzAzMjggZG9jVHlwZSBieSBPQ1IKekRhdGEuZG9jVHlwZU9DUiA9IHpEYXRhLmRvY1R5cGVyKGRvYywgewogICAgIlBBUFAiOiAiUGF0aWVudH4gQXNzaXN0YW5jZX4iLAogICAgIlBBVVRIIjogIlByaW9yfiBBdXRob3JpemF0aW9ufiIsCiAgICAiRU5STCI6ICJFbnJvbGxtZW50fiIsCiAgICAiRkFYIjogIiIKfSk7CgphbGVydCgiZG9jVHlwZSB3YXMgIiArIGRvYy5kb2NUeXBlICsgIiBub3cgIiArIHpEYXRhLmRvY1R5cGVPQ1IpOwppZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgdmFyIGFyck9mUGFpcnMwID0gW107CiAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgelR5cGUgPSB6RGF0YS5kb2NUeXBlT0NSOyAvL0VSUzE3MDMzMCBzYXZlZCBiZWxvdyBpbnRvIFNGIGZheFR5cGVfX2MgZmllbGQKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyczApOwp9CgppZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7IC8vIE5vdCBhIE51bWJlciBpcyB0cnVlCiAgICBjaGFubmVsID0gIkVtYWlsIjsKfQoKenBBcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIHpUeXBlKTsKenBBcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7CnpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1N0YXR1c19fYyIsICJOZXcgU3RhY2siKTsKenBBcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2hhbm5lbF9fYyIsIGNoYW5uZWwpOwoKLy8gTVNIMTcxMTE2IHVzaW5nIHpTdGFja19SZWNlaXZlZF9fYyBpbnN0ZWFkIG9mIGxhdGVzdEZheF9fYyBiZWNhdXNlIGxhdGVzdEZheF9fYyBnZXRzIHVwZGF0ZWQgYnkgc2F2ZS5qc3AgZXZlcnkgdGltZSB0aGUgcmVjb3JkIGlzIHVwZGF0ZWQKenBBcnJPZlBhaXJzLnB1c2goInpTdGFja19SZWNlaXZlZF9fYyIsIGZvcm1hdE5vdyk7CnpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CnpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7CnpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhZ2VzX19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwp6cEFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Qcm9ncmFtX05hbWVfX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CnpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3NlbnRGYXhUb19fYyIsIGRvYy5kZWxpdmVyZWRUbyk7IC8vRVJTMTcwNjI4IGNhbGxlciBpZAp6cEFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19Gcm9tX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOwp6cEFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKenBBcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgLy9FUlMxNzA3MzEgIzQwNTkzCgphbGVydCgiQEBAIENsYXNzaWZpY2F0aW9uID0gIiArIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKCi8vQU4yMDE4MDcxMiBmb3IgY29kZSByZXZpZXc6IHdlIGhhdmUgbXVsdGlwbGUgSUYgaXRlcmF0aW9ucyBpbnZvbHZpbmcgekRhdGEuY2xhc3NpZmNhdGlvbi4gQ2FuIHdlIGNvbWJpbmUgdGhlbT8KaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJQQVAiKSB7IC8vQU4yMDE4MDYwNCBzZXQgUEFQIHF1ZXVlIGFuZCByZWNvcmQgdHlwZQogICAgYWxlcnQoIkBAQCBlbnRlcmluZyBQQVAgbG9naWMiKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgIlBBUCIpOyAvL0FOMjAxOTAzMTIgdGVjaCBkZWJ0LiBOZWVkIHRvIHJlbW92ZSBhbGwgcmVmZXJlbmNlIHRvIENvbXBsZXRlIEltbXVub2xvZ3kgYW5kIHJlcGxhY2Ugd2l0aCBDb21wbGV0ZSBJbnRha2UsIGluY2x1ZGluZyByZW5hbWluZyBvZiB2YXJpYWJsZXMgYW5kIHJlY29yZCB0eXBlcwogICAgaWYgKHpEYXRhLnBhcFF1ZXVlSWQpIHpwQXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEucGFwUXVldWVJZCk7IC8vRVJTMTkwOTExIGNoZWNrIHZhbHVlCiAgICB6cEFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEucGFwU3RhY2tSZWNvcmRUeXBlSWQpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIkRydWdfVHlwZV9fYyIsICJIdW1pcmEiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS5wYXBHcm91cElkICsgIjoiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsICI6IiArIHpEYXRhLnBhcEdyb3VwSWQgKyAiOiIpOwogICAgYXR0YWNoTGFiZWwgPSAiTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3c7CiAgICBjcmVhdGVDYXNlID0gZmFsc2U7Cn0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIlJILUltbXVub2xvZ3kiKSB7Ly9BTjIwMTgwNjA0IHNldCBSSC1JbW11bm9sb2d5IHF1ZXVlIGFuZCByZWNvcmQgdHlwZQogICAgYWxlcnQoIkBAQCBlbnRlcmluZyBSSC1JbW11bm9sb2d5IGxvZ2ljIik7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsICJSSC1JbW11bm9sb2d5Iik7IC8vQU4yMDE5MDMxMiB0ZWNoIGRlYnQuIE5lZWQgdG8gcmVtb3ZlIGFsbCByZWZlcmVuY2UgdG8gQ29tcGxldGUgSW1tdW5vbG9neSBhbmQgcmVwbGFjZSB3aXRoIENvbXBsZXRlIEludGFrZSwgaW5jbHVkaW5nIHJlbmFtaW5nIG9mIHZhcmlhYmxlcyBhbmQgcmVjb3JkIHR5cGVzCiAgICAvL2lmICh6RGF0YS52YWxldFF1ZXVlSWQpIHpwQXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEudmFsZXRRdWV1ZUlkKTsgLy9FUlMxOTA5MTEgY2hlY2sgdmFsdWUgLy9BTjIwMjAwNDAxIHJlbW92ZWQgYXMgcGFydCBvZiBNYXkgMjAyMCBzcHJpbnQKICAgIGlmICh6RGF0YS5FbnJvbGxtZW50UXVldWVJZCkgenBBcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5FbnJvbGxtZW50UXVldWVJZCk7IC8vQU4yMDIwMDQwMSBhZGRlZCBhcyBwYXJ0IG9mIE1heSAyMDIwIHNwcmludAogICAgenBBcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnZhbGV0U3RhY2tSZWNvcmRUeXBlSWQpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIkRydWdfVHlwZV9fYyIsICJIdW1pcmEiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS52YWxldEdyb3VwSWQgKyAiOiIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEudmFsZXRHcm91cElkICsgIjoiKTsKICAgIGF0dGFjaExhYmVsID0gIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93OwogICAgY3JlYXRlQ2FzZSA9IHRydWU7Cn0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkFSQ0MiKSB7Ly9BTjIwMTgwNjA0IHNldCBBUkNDIHF1ZXVlIGFuZCBJbW11bm9sb2d5IHJlY29yZCB0eXBlCiAgICBhbGVydCgiQEBAIGVudGVyaW5nIEFSQ0MgbG9naWMiKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgIlJILUltbXVub2xvZ3kiKTsgLy9BTjIwMTkwMzEyIHRlY2ggZGVidC4gTmVlZCB0byByZW1vdmUgYWxsIHJlZmVyZW5jZSB0byBDb21wbGV0ZSBJbW11bm9sb2d5IGFuZCByZXBsYWNlIHdpdGggQ29tcGxldGUgSW50YWtlLCBpbmNsdWRpbmcgcmVuYW1pbmcgb2YgdmFyaWFibGVzIGFuZCByZWNvcmQgdHlwZXMKICAgIC8venBBcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5BUkNDUXVldWVJZCk7IC8vQU4yMDIwMDQwMSByZW1vdmVkIGFzIHBhcnQgb2YgTWF5IDIwMjAgc3ByaW50CiAgICB6cEFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLkltbUF1dGhRdWV1ZUlkKTsgLy9BTjIwMjAwNDAxIGFkZGVkIGFzIHBhcnQgb2YgTWF5IDIwMjAgc3ByaW50CiAgICB6cEFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEudmFsZXRTdGFja1JlY29yZFR5cGVJZCk7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiRHJ1Z19UeXBlX19jIiwgIkh1bWlyYSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsICI6IiArIHpEYXRhLnZhbGV0R3JvdXBJZCArICI6Iik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS52YWxldEdyb3VwSWQgKyAiOiIpOwogICAgYXR0YWNoTGFiZWwgPSAiTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3c7CiAgICBjcmVhdGVDYXNlID0gdHJ1ZTsKfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiQVJDQyBPUklBSE5OIikgey8vQU4yMDIwMDQyNyBBUkNDIE9SSUFITk4gLyBXb21lbidzIEhlYWx0aAogICAgYWxlcnQoIkBAQCBlbnRlcmluZyBBUkNDIE9SSUFITk4gbG9naWMiKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgIlJILUltbXVub2xvZ3kiKTsgLy9BTjIwMTkwMzEyIHRlY2ggZGVidC4gTmVlZCB0byByZW1vdmUgYWxsIHJlZmVyZW5jZSB0byBDb21wbGV0ZSBJbW11bm9sb2d5IGFuZCByZXBsYWNlIHdpdGggQ29tcGxldGUgSW50YWtlLCBpbmNsdWRpbmcgcmVuYW1pbmcgb2YgdmFyaWFibGVzIGFuZCByZWNvcmQgdHlwZXMKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuV0hlYWx0aFF1ZXVlSWQpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnZhbGV0U3RhY2tSZWNvcmRUeXBlSWQpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIkRydWdfVHlwZV9fYyIsICJPUklBSE5OIik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEudmFsZXRHcm91cElkICsgIjoiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsICI6IiArIHpEYXRhLnZhbGV0R3JvdXBJZCArICI6Iik7CiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKICAgIGNyZWF0ZUNhc2UgPSB0cnVlOwp9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJDb21wbGV0ZSBJbW11bm9sb2d5Iikgey8vQU4yMDE4MDYwNCBzZXQgQ29tcGxldGUgSW1tdW5vbG9neSBxdWV1ZSBhbmQgQ29tcGxldGUgSW50YWtlIHJlY29yZCB0eXBlCiAgICBhbGVydCgiQEBAIGVudGVyaW5nIENvbXBsZXRlIEltbXVub2xvZ3kgbG9naWMiKTsKICAgIGFsZXJ0KCJAQEAgekRhdGEuY29tcEltbVN0YWNrUmVjb3JkVHlwZUlkID0gIiArIHpEYXRhLmNvbXBJbW1TdGFja1JlY29yZFR5cGVJZCk7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsICJDb21wbGV0ZSBJbnRha2UiKTsKICAgIGlmICh6RGF0YS5jb21wSW1tUXVldWVJZCkgenBBcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5jb21wSW1tUXVldWVJZCk7IC8vRVJTMTkwOTExCiAgICB6cEFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEucGhhcm1TdGFja1JlY29yZFR5cGVJZCk7IC8vQU4yMDE5MDMyNyBmaXJzdCBjcmVhdGVkIHN0YWNrIHNob3VsZCBiZSBmb3IgdGhlIFBoYXJtYWNpc3QKICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS5waGFybUdyb3VwSWQgKyAiOiIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEucGhhcm1Hcm91cElkICsgIjoiKTsKICAgIGF0dGFjaExhYmVsID0gIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93OwogICAgY3JlYXRlQ2FzZSA9IHRydWU7Cn0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkludGFrZSBPUklBSE5OIikgey8vQU4yMDIwMDQyNyBzZXQgT3JpYWhubiAvIE9yaVggLyBXb21lbidzIEhlYWx0aCBxdWV1ZSBhbmQgbG9naWMKICAgIGFsZXJ0KCJAQEAgZW50ZXJpbmcgSW50YWtlIE9SSUFITk4gbG9naWMiKTsKICAgIGFsZXJ0KCJAQEAgekRhdGEuY29tcEltbVN0YWNrUmVjb3JkVHlwZUlkID0gIiArIHpEYXRhLmNvbXBJbW1TdGFja1JlY29yZFR5cGVJZCk7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsICJDb21wbGV0ZSBJbnRha2UiKTsKICAgIGlmICh6RGF0YS5jb21wSW50UXVldWVJZCkgenBBcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5jb21wSW50UXVldWVJZCk7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEucGhhcm1TdGFja1JlY29yZFR5cGVJZCk7IC8vQU4yMDE5MDMyNyBmaXJzdCBjcmVhdGVkIHN0YWNrIHNob3VsZCBiZSBmb3IgdGhlIFBoYXJtYWNpc3QKICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS5waGFybUdyb3VwSWQgKyAiOiIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEucGhhcm1Hcm91cElkICsgIjoiKTsKICAgIGF0dGFjaExhYmVsID0gIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93OwogICAgY3JlYXRlQ2FzZSA9IHRydWU7Cn0KCnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCBhdHRhY2hMYWJlbCwgenBBcnJPZlBhaXJzKTsKdmFyIG9yaWdpbmFsU3RhY2tJZCA9IHNmSWQ7CnN0YWNrTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsIHpTdGFjaywgIk5hbWUiLCBudWxsLCBzZklkKTsKYWxlcnQoIiMjIyMgU3RhY2sgUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CgphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsIHNmSWQpOyAvL0VSUzE3MDcyNyAjNDA0NDcKYXJyT2ZQYWlycy5wdXNoKCJYX1N0YWNrX051bWJlciIsIHN0YWNrTnVtYmVyKTsKCi8vYXNzaWduIGRvYyBzZWN1cml0eS4gVmFyaWFibGVzIGFyZSBiYXNlZCBvbiB0aGUgaW5ib3VuZCBmYXggbGluZQphbGVydCgiQEBAIG1hc3RlciBJRCBpcyA9ICIgKyBkb2Mua2JEYXRhLmdyb3VwSUQpOwphbGVydCgiQEBAIFBBUCBncm91cCBJRCBpcyA9ICIgKyB6RGF0YS5wYXBHcm91cElkKTsKYWxlcnQoIkBAQCBSSC1JbW11bm9sb2d5IGdyb3VwIElEIGlzID0gIiArIHpEYXRhLnZhbGV0R3JvdXBJZCk7CmFsZXJ0KCJAQEAgQ29tcGxldGUgSW1tdW5vbG9neSBncm91cCBJRCBpcyA9ICIgKyB6RGF0YS5jb21wSW50R3JvdXBJZCk7CmFsZXJ0KCJAQEAgekRhdGEuY2xhc3NpZmljYXRpb24gaXMgIiArIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKCi8vQ1JOMTgwNzI2IENhc2UgIzUwNDY5IC0tIFNldCB0aGUgIlJlY2VpdmVkIiBjaGVja2JveAp2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwphbGVydCgiJCQkIG5vdzAgPSAiICsgbm93MCk7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJSZWNlaXZlZCIpOwphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJSZWNlaXZlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIvQ0FXIFVwZGF0ZQp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKYWxlcnQoIkBAQCB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CgovL0NSTjE5MDIyNiBDcmVhdGUgY29weSBvZiBvcmlnaW5hbCBzdGFjayAtIHdlIHVzZSB6cEFyck9mUGFpcnMgYXMgaXQgYWxyZWFkeSBjb250YWlucyBtb3N0IG9mIHRoZSBkYXRhIHRoYXQgd2UgbmVlZAppZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkNvbXBsZXRlIEltbXVub2xvZ3kiIHx8IHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJJbnRha2UgT1JJQUhOTiIpIHsKICAgIGFsZXJ0KCJAQEAgY3JlYXRpbmcgY29weSBvZiB6U3RhY2sgZm9yIENvbXBsZXRlIEltbXVub2xvZ3kgcHJvZ3JhbSIpOwoKICAgIHZhciBvcmcyb3JnQ1MgPSBkb2Mua2JEYXRhLmN1c3RvbVNldHRpbmdzOyAvL0VSUzE5MDQxMSAjNTc4ODEKICAgIGFsZXJ0KCJFUlMxOTA0MTEgQ1MgYSAiICsgKHR5cGVvZiBvcmcyb3JnQ1MpICsgIiBoYXMgIiArIG9yZzJvcmdDUyk7CiAgICBpZiAob3JnMm9yZ0NTKSB7CiAgICAgICAgekRhdGEud2F0ZXJtYXJrID0gIiIgKyBYQ3VzdG9tU2V0dGluZyhkb2MsICJ3YXRlcm1hcmtfX2MiKTsKICAgICAgICBhbGVydCgiRVJTMTkwNDExIHdtPSIgKyB6RGF0YS53YXRlcm1hcmsgKyAiIFpQQVBFUl9fc2VydmVyX19jPSIgKyBYQ3VzdG9tU2V0dGluZyhkb2MsICJaUEFQRVJfX3NlcnZlcl9fYyIpKTsKICAgICAgICBpZiAoIXpEYXRhLndhdGVybWFyayB8fCB6RGF0YS53YXRlcm1hcmsgPT0gInVuZGVmaW5lZCIpIHsKICAgICAgICAgICAgekRhdGEud2F0ZXJtYXJrID0gIiI7CiAgICAgICAgfQogICAgfQoKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciBwYWdlQ291bnQgPSBYKGRvYywgIlhfcGFnZXMiKTsKICAgIHZhciBwYWdlUmFuZ2UgPSAiMS0iICsgcGFnZUNvdW50OwogICAgYWxlcnQoIkBAQCBwYWdlUmFuZ2UgPT09ICIgKyBwYWdlUmFuZ2UpOwogICAgLy8gcHYwMjI1MTggbWFya3VwIG9uIG5vbiBwaGFybWFjaXN0IHBhZ2VzLgogICAgdmFyIHdhdGVybWFyayA9ICInYWRkVGV4dCcsMTAsMSw4NzUsMTQ4MCwnQ09QWScsJzI0cHgnJyI7IC8vRVJTMTkwNDExICM1Nzg4MS4KICAgIGlmICh6RGF0YS53YXRlcm1hcmsgJiYgekRhdGEud2F0ZXJtYXJrICE9ICIiKSB7IC8vRVJTMTkwNDExIGdldCBmcm9tIHRoZSBjdXN0b20gc2V0dGluZwogICAgICAgIHdhdGVybWFyayA9IHpEYXRhLndhdGVybWFyazsKICAgIH0KCiAgICB2YXIgYnVmZmVyID0gIiI7CiAgICBmb3IgKHZhciBpID0gMTsgaSA8PSBwYWdlQ291bnQ7IGkrKykgewogICAgICAgIHZhciBjdXJUaW1lID0gbmV3IERhdGUoKS5nZXRUaW1lKCk7CiAgICAgICAgLy9BTjIwMTkwMzExIHBsYWNlIHRoZSB3b3JkIENPUFkgb24gZWFjaCBwYWdlIG9mIHRoZSBjb3B5IGRvY3VtZW50CiAgICAgICAgYnVmZmVyICs9ICJrYm0oJ0lNRyIgKyBjdXJUaW1lICsgIicsJ1BBR0UiICsgaSArICJJTUciICsgY3VyVGltZSArICInLCIgKyB3YXRlcm1hcmsgKyAiKTsiOwogICAgfQogICAgYWxlcnQoIkBAQEAgb3JpZ2luYWwgZGJJRCA9ICIgKyBkb2MuZGJJRCk7CiAgICBhbGVydCgiQEBAQCBNQVJLVVAgPSAiICsgYnVmZmVyKTsKICAgIGFsZXJ0KCJAQEBAIE9yaWdpbmFsIFN0YWNrIElkOiAiICsgb3JpZ2luYWxTdGFja0lkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9tYXJrdXAiLCBidWZmZXIpOwoKICAgIC8vRVJTIDE5MDQxMSBpbnN0ZWFkIG9mIHNwbGl0IHRoZW4gd2F0ZXJtYXJrLCB3YXRlcm1hcmsgc2VuZCB0byBmbGF0dGVuLCBhbmQgcmVtb3ZlIHdhdGVybWFyayBmcm9tIG9yaWdpbmFsCiAgICAvL0VSUzE5MDQxMSAjNTc4ODEgZmxhdHRlbiB3aXRoIFNGX3NlbmRGYXguanNwIGFuZCB1c2UgdGhhdCBuZXcgZGJJRAogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgIHZhciBmbGF0VVJMID0gImh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9rYi9qc3AvU0Zfc2VuZEZheC5qc3A/ZmF4VG89UERGQCIgKyBzZklkICsgIiZTRmlkcz0iICsgc2ZJZCArICImbW9kZT1maWxlUERGIjsKICAgIGFsZXJ0KCJFUlMxOTA0MTEgVVJMPSIgKyBmbGF0VVJMKTsKICAgIHZhciBzZk9yZ0lEID0gZG9jLmtiRGF0YS5zZk9yZ2FuaXphdGlvbklEOyAvL1RPRE8gQ1JOIHRoZXJlIGlzIGEgU0ZTZXNzaW9uIGhlcmUgaW5zdGVhZAogICAgaWYgKCFzZk9yZ0lEIHx8IHNmT3JnSUQubGVuZ3RoID4gMTgpIHsgLy9FUlMxOTA5MTEgIzYzMDcxID4xOAogICAgICAgIHNmT3JnSUQgPSBkb2Mua2JEYXRhLnNmU2Vzc2lvbklELnN1YnN0cmluZygwLCBkb2Mua2JEYXRhLnNmU2Vzc2lvbklELmluZGV4T2YoIiEiKSk7IC8vRVJTMTkwOTExICM2MzA3MQogICAgfQogICAgZmxhdFVSTCArPSAiJlNGb3JnPSIgKyBzZk9yZ0lEICsgIiZTRnNlc3Npb249IiArIGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQ7CiAgICBmbGF0VVJMICs9ICImU0ZzZXJ2ZXI9IisgZG9jLmtiRGF0YS5zZlNlcnZlcjsgLy9FUlMxOTA5MTEgIzYzMDcxCiAgICBmbGF0VVJMICs9ICImY292ZXJJRDI9bm9CYXJjb2RlJmNvdmVySUQ9IiArIGRvYy5kYklEOyAvL25ld1NuaXBwZXRJZCBmb3IgYmFyY29kZSBpZiB3ZSB3YW50IHdlIGNhbiByZW1vdmUoY292ZXJJRDI9bm9CYXJjb2RlKQogICAgZmxhdFVSTCArPSAiJlNGdHlwZT1aUEFQRVJfX3pTdGFja19fYyI7ICAvL0VSUzE5MDQxMSBUT0RPIGJldHRlciBtaXNzaW5nIHBhcmFtZXRlcnMKICAgIGFsZXJ0KCJFUlMxOTA0MTEgZmxhdHRlbiB3aXRoICIgKyBmbGF0VVJMKTsKICAgIHZhciBmbGF0RGF0YTsKICAgIHZhciBmbGF0SWQ9IiI7CiAgICB2YXIgekhlYWRlcnM9WyJhdXRob3JpemF0aW9uIiwiWlBBUEVSIFdHRVQiXTsgLy9FUlMxOTA5MTEgVE9ETyBieSBTdGV2ZSBhIG5pY2UgbWVhbCBvdXQgLSBjYXNlIFJFQUxMWSBtYXR0ZXJzCiAgICBmb3IgKHZhciB4ID0gMDsgeCA8IDI7IHgrKykgeyAvL0VSUzE5MDkxMSBUT0RPIDIgRE9ORQogICAgICAgIHRyeSB7CiAgICAgICAgICAgIGZsYXREYXRhID0gIiIrd2dldChkb2MsIGZsYXRVUkwsIFtdLCB6SGVhZGVycyk7IC8vU0Zfc2VuZEZheC5qc3AgaXMgcmV0dXJuaW5nIGEgemlwcGkgaWQgLy9ubyAsIG51bGwsIG51bGwKICAgICAgICB9IGNhdGNoIChlKSB7CiAgICAgICAgICAgIGFsZXJ0KCIjNTg1MDQgd2dldCBmYWlsZWQgd2l0aCAiK2ZsYXRVUkwrIiBleGNlcHRpb246IitlKTsgLy9FUlMxOTA5MTAKICAgICAgICB9CiAgICAgICAgCiAgICAgICAgaWYgKGZsYXREYXRhICYmIGZsYXREYXRhLmxlbmd0aCA+IDApIHsKICAgICAgICAgICAgZmxhdElkID0gWChkb2MsICJ6aXBwaSIsIGZsYXREYXRhKTsKICAgICAgICB9CiAgICAgICAgYWxlcnQoIkVSUzE5MDQxMSB4PSIreCsiIGZsYXR0ZW5lZCB0byAiICsgZmxhdElkICsgIiBsZW49IiArIGZsYXRJZC5sZW5ndGgpOyAvLysgIiBmcm9tICIrZmxhdERhdGEpOwogICAgICAgIGFsZXJ0KCJFUlMxOTA0MTIsMDkxMUIgYSAiICsgKHR5cGVvZiBmbGF0SWQpKyIgZnJvbSB6aXBwaSBpbiAiKyBYKGRvYywgInppcHBpIiwgZmxhdERhdGEpICsiIHdnZXQgcmV0dXJuZWQgIitmbGF0RGF0YS5sZW5ndGgrIiB3aXRoICIrekhlYWRlcnMpOyAvL0VSUzE5MDkxMQogICAgICAgIGlmIChmbGF0SWQuaW5kZXhPZigieyIpID09IDApIHsKICAgICAgICAgICAgdmFyIGZsYXRJdGVtID0gSlNPTi5wYXJzZShmbGF0SWQpOwogICAgICAgICAgICBmbGF0SWQgPSBmbGF0SXRlbVsnSXRlbSddOwogICAgICAgIH0KICAgICAgICBhbGVydCgiRVJTMTkwOTExICM2MzA3MSBmbGF0SWQ9IitmbGF0SWQpOwogICAgICAgIGlmIChmbGF0SWQpIHticmVhazt9IC8vRVJTMTkwOTExCiAgICB9CgogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX21hcmt1cCIsICIiKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiMjI1Iik7CgogICAgaWYgKCFmbGF0SWQgfHwgKGZsYXRJZCsiIikubGVuZ3RoIDwgMTUpIHsKICAgICAgICBhbGVydCgiRVJTMTkwOTEwICM1ODUwNCBzdGlsbCBubyBmbGF0SWQhISAgQ2FzZSBjcmVhdGVkIGZyb20gZW1haWwuIik7CiAgICAgICAgcmV0dXJuOwogICAgfSBlbHNlIHsKICAgIHZhciBjb3B5TGFiZWwgPSAiQ29weSBvZiAiICsgZG9jLmxhYmVsOyAvL1RPRE8gdXBkYXRlIHRoZSBmbGF0dGVuIGRvYyBsYWJlbAogICAgYWxlcnQoIjIzMTogc2V0dGluZyBkb2N1bWVudCBjb250ZXh0IHRvIGRiSUQ6ICIgKyBmbGF0SWQpOwogICAgc2V0RG9jdW1lbnRDb250ZXh0KGRvYywgZmxhdElkKTsgLy9FUlMxOTA0MTIgV0FSTiBXQVJOIFdBUk4gZG9jIGlzIHRoZSBDT1BZIGRvYwogICAgYWxlcnQoIjIzMyIpOwogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGNvcHlMYWJlbCk7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgYWxlcnQoIjIzNyIpOwogICAgfQogICAgCiAgICBhbGVydCgiQEBAQCBhZnRlciBzcGxpdHRpbmcgU25pcHBldCwgZGJJRCA9ICIgKyBkb2MuZGJJRCk7CiAgICB2YXIgY29weVNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6U3RhY2ssICJDb3B5IG9mIE5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93LCB6cEFyck9mUGFpcnMpOwogICAgYWxlcnQoIlN0YWNrIElkIGZvciBjb3B5IHN0YWNrID0gIiArIGNvcHlTZklkKTsKCiAgICB2YXIgY29weVN0YWNrTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsIHpTdGFjaywgIk5hbWUiLCBudWxsLCBjb3B5U2ZJZCk7ICAvL0NSTjE5MDMyMSBNYWtlIHN1cmUgdGhhdCB0aGUgY29weSBpcyBpbmRleGVkIGNvcnJlY3RseQogICAgYWxlcnQoIkBAQCBjb3B5U3RhY2tOdW1iZXIgPSAiICsgY29weVN0YWNrTnVtYmVyKTsKICAgIC8vQ1JOMTkwMjI2IEZpeCB0aGUgcmVjZWl2ZWRJZF9fYyBmaWVsZCAod2FzIHNldCB3aXRoIG9yaWdpbmFsIGlkKQogICAgYXJyT2ZQYWlycyA9IFtdOwoKICAgIGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuY29tcEltbVN0YWNrUmVjb3JkVHlwZUlkKTsgLy9BTjIwMTkwMzA2IHRlY2ggZGVidC4gSSBhdHRlbXB0ZWQgdG8gc2V0IHRoaXMgcmVjb3JkIHR5cGUgd2hlbiBjcmVhdGluZyB0aGUgU3RhY2sgYnV0IGl0IHRoYXQgZGlkbid0IHdvcmsgYXMgZXhwZWN0ZWQuIENoYW5naW5nIHRoZSByZWNvcmQgdHlwZSBhZnRlciByZWNvcmQgY3JlYXRpb24gd29ya3MgYnV0IGlzIGNsdW5reSBhbmQgdGVjaC1kZWJ0eSBhbmQga2x1ZGdleQogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICB1cGRhdGVTRlJlY29yZChkb2MsIHpTdGFjaywgY29weVNmSWQsIGFyck9mUGFpcnMpOwogICAgLy9DUk4xOTAyMjYgYWxzbyBmaXggdGhlIFhfc2ZTdGFja0lkIGZpZWxkCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfc2ZTdGFja0lkIiwgY29weVNmSWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLCBjb3B5U2ZJZCk7IC8vRVJTMTkwNDEyICM1Nzg4MQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1N0YWNrX051bWJlciIsIGNvcHlTdGFja051bWJlcik7CgogICAgLy9BTjIwMTkwMzI3IHNldCB0aGUgZG9jIHNlY3VyaXR5IGZvciBDb21wbGV0ZSBJbnRha2UgZ3JvdXAKICAgIGFsZXJ0KCJAQEAgc2V0dGluZyBkb2N1bWVudCBzZWN1cml0eSBmb3IgQ29tcGxldGUgSW50YWtlIiArIHpEYXRhLnBoYXJtR3JvdXBJZCk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEuY29tcEludEdyb3VwSWQgKyAiOiIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEuY29tcEludEdyb3VwSWQgKyAiOiIpOwoKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAvL0NSTjE5MDIyNiBNYWtlIHN1cmUgaXQgaXMgYWxzbyBpbiB0aGUgY29ycmVjdCBpbmNvbWluZyBmb2xkZXIKICAgIHZhciBpbmNvbWluZ0ZvbGRlciA9IGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiSW4iOwogICAgYWxlcnQoIiMjIyBpbmNvbWluZ0ZvbGRlciA9ICIgKyBpbmNvbWluZ0ZvbGRlcik7CiAgICBtb3ZlRG9jdW1lbnQoZG9jLCBudWxsLCBpbmNvbWluZ0ZvbGRlcik7CgogICAgLy91cGRhdGUgdGhlIG9yaWdpbmFsIHpTdGFjayBhbmQgbWFrZSBpdCBhIGNoaWxkIG9mIHRoZSBjb3B5IHRoYXQgd2UganVzdCBjcmVhdGVkCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGFyZW50X19jIiwgb3JpZ2luYWxTdGFja0lkKTsvLyBQVjE5MDQxNiB1cGRhdGVkIGZvciBQaGFybWFjeSBTZXJ2aWNlcyBTdGFjayBzaG91bGQgdXBkYXRlIG9uIEludGFrZSBTdGFjawogICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCB6U3RhY2ssIGNvcHlTZklkLCBhcnJPZlBhaXJzKTsKfQoKYWxlcnQoIkBAQCBjcmVhdGUgY2FzZSA9ICIgKyBjcmVhdGVDYXNlKTsKaWYgKGNyZWF0ZUNhc2UgPT09IHRydWUpIHsgLy8gUFYxOTAzMjEgY3JlYXRlIGEgQ2FzZSBpZiB0aGlzIGlzIG5vdCBhIFBBUCBkb2N1bWVudAogICAgYWxlcnQoIkBAQCBlbnRlcmluZyBjcmVhdGVDYXNlIGxvZ2ljIik7CgogICAgYXJyT2ZQYWlycyA9IFtdOwoKICAgIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiUkgtSW1tdW5vbG9neSIpIHsKICAgICAgICAvL2Fyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLnZhbGV0UXVldWVJZCk7IC8vQU4yMDIwMDQwMSByZW1vdmVkIGFzIHBhcnQgb2YgTWF5IDIwMjAgc3ByaW50CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuRW5yb2xsbWVudFF1ZXVlSWQpOyAvL0FOMjAyMDA0MDEgYWRkZWQgYXMgcGFydCBvZiBNYXkgMjAyMCBzcHJpbnQKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnZhbGV0Q2FzZVJlY29yZFR5cGVJZCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DYXNlU3ViVHlwZV9fYyIsICJCViBGdWxsIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19SZWFzb25Db2RlX19jIiwgIk5vbmUiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0NsYXNzaWZpY2F0aW9uX19jIiwgIlJILUltbXVub2xvZ3kiKTsKICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkFSQ0MiKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5hdXRoU3VwcG9ydENhc2VSZWNvcmRUeXBlSWQpOyAvL0FOMjAyMDA0MDEgYWRkZWQgZHVyaW5nIE1heSAyMDIwIHNwcmludAogICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuQVJDQ1F1ZXVlSWQpOyAvL0FOMjAyMDA0MDEgcmVtb3ZlZCBkdXJpbmcgTWF5IDIwMjAgc3ByaW50CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuSW1tQXV0aFF1ZXVlSWQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQ2FzZVN1YlR5cGVfX2MiLCAiRGVuaWFsIik7IC8vQU4yMDE5MTIzMCBhZGRlZCBkdXJpbmcgRmVicnVhcnkgMjAyMCBzcHJpbnQsIHRoZW4gcmVtb3ZlZCBkdXJpbmcgTWF5IDIwMjAgc3ByaW50CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19SZWFzb25Db2RlX19jIiwgIk5vbmUiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0NsYXNzaWZpY2F0aW9uX19jIiwgIlJILUltbXVub2xvZ3kiKTsKICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkFSQ0MgT1JJQUhOTiIpIHsKICAgICAgICBhbGVydCgiQEBAIGVudGVyaW5nIEFSQ0MgT1JJQUhOTiBDcmVhdGUgQ2FzZSBsb2dpYyIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuYXV0aFN1cHBvcnRDYXNlUmVjb3JkVHlwZUlkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5XSGVhbHRoUXVldWVJZCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DYXNlU3ViVHlwZV9fYyIsICJEZW5pYWwiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX1JlYXNvbkNvZGVfX2MiLCAiTm9uZSIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQ2xhc3NpZmljYXRpb25fX2MiLCAiUkgtSW1tdW5vbG9neSIpOyAvL25vdCBDT21wbGV0ZSBJbW11bm9sb2d5CiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJDb21wbGV0ZSBJbW11bm9sb2d5IikgewogICAgICAgIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLmNvbXBJbnRRdWV1ZUlkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLmNvbXBJbnRDYXNlUmVjb3JkVHlwZUlkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0Nhc2VTdWJUeXBlX19jIiwgIkVucm9sbG1lbnQiKTsKICAgICAgICAvL0FOMjAxOTA0MTIgY2hhbmdlIHJlcXVlc3QgcGVyIFZlbmthdCBkdXJpbmcgdGhlIENvbXBsZXRlIEludGFrZSBwcm9qZWN0CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DbGFzc2lmaWNhdGlvbl9fYyIsICJDb21wbGV0ZSBJbW11bm9sb2d5Iik7CiAgICB9CiAgICBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiSW50YWtlIE9SSUFITk4iKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuV0hlYWx0aFF1ZXVlSWQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuYXV0aFN1cHBvcnRDYXNlUmVjb3JkVHlwZUlkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0Nhc2VTdWJUeXBlX19jIiwgIkRlbmlhbCIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQ2xhc3NpZmljYXRpb25fX2MiLCAiUkgtSW1tdW5vbG9neSIpOwogICAgfQoKICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgIk5ldyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCAiRmF4IC8gSENQIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5IiwgIlN0YW5kYXJkIik7CgogICAgLy9zZXQgelBhcGVyIHdvcmtmbG93IGZpZWxkcyBvbiB0aGUgY2FzZQogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCB6VHlwZSk7IC8vQU4yMDE4MDcxMiBkdXJpbmcgY29kZSByZXZpZXcsIHBheSBhdHRlbnRpb24gdG8gdGhpcwogICAgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL0FOMjAxODA3MTcgYWRkZWQgdGhpcwoKICAgIC8vQU4yMDA4MDcxNyBsaW5rIHRvIHBhcmVudCB6U3RhY2sKICAgIGlmIChjb3B5U2ZJZCkgewogICAgICAgIGFyck9mUGFpcnMucHVzaCgielN0YWNrX19jIiwgY29weVNmSWQpOwogICAgfSBlbHNlIHsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goInpTdGFja19fYyIsIHNmSWQpOyAvL0FOMjAwODA3MTcgbGluayB0byBwYXJlbnQgelN0YWNrCiAgICB9CgogICAgLy8gVFBNMTgwODEzIGNoYW5nZWQgdG8gbm90IGF0dGFjaCBkb2MgdG8gY2FzZSByZWNvcmQgaW4gemRvY3NldAogICAgY3JlYXRlU0ZSZWNvcmQoZG9jLCAiQ2FzZSIsICJOZXcgZmF4IHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOwp9Ci8qIEVORCBDcmVhdGUgU3RhY2sgZnJvbSBGYXggKi8="},"ordinal":21}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN Create Stack from Fax */
var createCase = false; //AN20180712 flag to track if we want to create a Case or not
var stackNumber;// = ""; //AN20190305 moving declaration to top of rule
var attachLabel = "";
var zType = doc.X("X_docType");
var formatNow = getCurDateAndTime(doc);
var channel = "Fax";
var zpArrOfPairs = []; //AN20180713 declaring a separate array for use in setting zPaper doc security
var zStack = "ZPAPER__zStack__c";
var arrOfPairs = [];

var fromFile = X(doc, "X_fromFile");
//CRN190308 Handle uploaded files via Lightning Component
if (fromFile && fromFile.indexOf("lightningUpload") >= 0) {
    fromFile = fromFile.substring(fromFile.lastIndexOf('/') + 1);
    var parts = fromFile.split("-");
    if (parts.length >= 3) {
        var attachToId = parts[2];
        alert("@@@ UPLOAD: ATTACHING TO SALESFORCE RECORD = " + attachToId);
        var label = "File uploaded by " + parts[0];
        attach(doc, label, attachToId, true);
        var arrOfPairsLocal = [];
        arrOfPairsLocal.push("db-label", label);
        updateDB(doc, arrOfPairsLocal);
        return;
    }
}

//ERS170328 docType by OCR
zData.docTypeOCR = zData.docTyper(doc, {
    "PAPP": "Patient~ Assistance~",
    "PAUTH": "Prior~ Authorization~",
    "ENRL": "Enrollment~",
    "FAX": ""
});

alert("docType was " + doc.docType + " now " + zData.docTypeOCR);
if (doc.docType != zData.docTypeOCR) {
    var arrOfPairs0 = [];
    arrOfPairs0.push("X_docTypeOCR", zData.docTypeOCR);
    arrOfPairs0.push("X_docType", zData.docTypeOCR);
    zType = zData.docTypeOCR; //ERS170330 saved below into SF faxType__c field
    updateDB(doc, arrOfPairs0);
}

if (isNaN(doc.deliveredFrom)) { // Not a Number is true
    channel = "Email";
}

zpArrOfPairs.push("ZPAPER__faxType__c", zType);
zpArrOfPairs.push("ZPAPER__Priority__c", "Medium");
zpArrOfPairs.push("ZPAPER__Status__c", "New Stack");
zpArrOfPairs.push("ZPAPER__Channel__c", channel);

// MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
zpArrOfPairs.push("zStack_Received__c", formatNow);
zpArrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
zpArrOfPairs.push("ZPAPER__newFax__c", "true");
zpArrOfPairs.push("ZPAPER__Pages__c", X(doc, "X_pages"));
zpArrOfPairs.push("ZPAPER__Program_Name__c", zData.classification);
zpArrOfPairs.push("ZPAPER__sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
zpArrOfPairs.push("ZPAPER__From__c", doc.deliveredFrom);
zpArrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
zpArrOfPairs.push("ZPAPER__Stage__c", "Received"); //ERS170731 #40593

alert("@@@ Classification = " + zData.classification);

//AN20180712 for code review: we have multiple IF iterations involving zData.classifcation. Can we combine them?
if (zData.classification == "PAP") { //AN20180604 set PAP queue and record type
    alert("@@@ entering PAP logic");
    zpArrOfPairs.push("ZPAPER__Classification__c", "PAP"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types
    if (zData.papQueueId) zpArrOfPairs.push("OwnerId", zData.papQueueId); //ERS190911 check value
    zpArrOfPairs.push("RecordTypeId", zData.papStackRecordTypeId);
    zpArrOfPairs.push("Drug_Type__c", "Humira");
    arrOfPairs.push("db-users", ":" + zData.papGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.papGroupId + ":");
    attachLabel = "New Stack received on " + formatNow;
    createCase = false;
} else if (zData.classification == "RH-Immunology") {//AN20180604 set RH-Immunology queue and record type
    alert("@@@ entering RH-Immunology logic");
    zpArrOfPairs.push("ZPAPER__Classification__c", "RH-Immunology"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types
    //if (zData.valetQueueId) zpArrOfPairs.push("OwnerId", zData.valetQueueId); //ERS190911 check value //AN20200401 removed as part of May 2020 sprint
    if (zData.EnrollmentQueueId) zpArrOfPairs.push("OwnerId", zData.EnrollmentQueueId); //AN20200401 added as part of May 2020 sprint
    zpArrOfPairs.push("RecordTypeId", zData.valetStackRecordTypeId);
    zpArrOfPairs.push("Drug_Type__c", "Humira");
    arrOfPairs.push("db-users", ":" + zData.valetGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.valetGroupId + ":");
    attachLabel = "New Stack received on " + formatNow;
    createCase = true;
} else if (zData.classification == "ARCC") {//AN20180604 set ARCC queue and Immunology record type
    alert("@@@ entering ARCC logic");
    zpArrOfPairs.push("ZPAPER__Classification__c", "RH-Immunology"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types
    //zpArrOfPairs.push("OwnerId", zData.ARCCQueueId); //AN20200401 removed as part of May 2020 sprint
    zpArrOfPairs.push("OwnerId", zData.ImmAuthQueueId); //AN20200401 added as part of May 2020 sprint
    zpArrOfPairs.push("RecordTypeId", zData.valetStackRecordTypeId);
    zpArrOfPairs.push("Drug_Type__c", "Humira");
    arrOfPairs.push("db-users", ":" + zData.valetGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.valetGroupId + ":");
    attachLabel = "New Stack received on " + formatNow;
    createCase = true;
} else if (zData.classification == "ARCC ORIAHNN") {//AN20200427 ARCC ORIAHNN / Women's Health
    alert("@@@ entering ARCC ORIAHNN logic");
    zpArrOfPairs.push("ZPAPER__Classification__c", "RH-Immunology"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types
    zpArrOfPairs.push("OwnerId", zData.WHealthQueueId);
    zpArrOfPairs.push("RecordTypeId", zData.valetStackRecordTypeId);
    zpArrOfPairs.push("Drug_Type__c", "ORIAHNN");
    arrOfPairs.push("db-users", ":" + zData.valetGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.valetGroupId + ":");
    attachLabel = "New Stack received on " + formatNow;
    createCase = true;
} else if (zData.classification == "Complete Immunology") {//AN20180604 set Complete Immunology queue and Complete Intake record type
    alert("@@@ entering Complete Immunology logic");
    alert("@@@ zData.compImmStackRecordTypeId = " + zData.compImmStackRecordTypeId);
    zpArrOfPairs.push("ZPAPER__Classification__c", "Complete Intake");
    if (zData.compImmQueueId) zpArrOfPairs.push("OwnerId", zData.compImmQueueId); //ERS190911
    zpArrOfPairs.push("RecordTypeId", zData.pharmStackRecordTypeId); //AN20190327 first created stack should be for the Pharmacist
    arrOfPairs.push("db-users", ":" + zData.pharmGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.pharmGroupId + ":");
    attachLabel = "New Stack received on " + formatNow;
    createCase = true;
} else if (zData.classification == "Intake ORIAHNN") {//AN20200427 set Oriahnn / OriX / Women's Health queue and logic
    alert("@@@ entering Intake ORIAHNN logic");
    alert("@@@ zData.compImmStackRecordTypeId = " + zData.compImmStackRecordTypeId);
    zpArrOfPairs.push("ZPAPER__Classification__c", "Complete Intake");
    if (zData.compIntQueueId) zpArrOfPairs.push("OwnerId", zData.compIntQueueId);
    zpArrOfPairs.push("RecordTypeId", zData.pharmStackRecordTypeId); //AN20190327 first created stack should be for the Pharmacist
    arrOfPairs.push("db-users", ":" + zData.pharmGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.pharmGroupId + ":");
    attachLabel = "New Stack received on " + formatNow;
    createCase = true;
}

var sfId = createAndAttach(doc, zStack, attachLabel, zpArrOfPairs);
var originalStackId = sfId;
stackNumber = getSFField(doc, zStack, "Name", null, sfId);
alert("#### Stack Received. Attached to: " + sfId);

arrOfPairs.push("db-label", attachLabel);
arrOfPairs.push("db-BATES", sfId + "-STACK");
arrOfPairs.push("X_sfStackId", sfId); //ERS170727 #40447
arrOfPairs.push("X_Stack_Number", stackNumber);

//assign doc security. Variables are based on the inbound fax line
alert("@@@ master ID is = " + doc.kbData.groupID);
alert("@@@ PAP group ID is = " + zData.papGroupId);
alert("@@@ RH-Immunology group ID is = " + zData.valetGroupId);
alert("@@@ Complete Immunology group ID is = " + zData.compIntGroupId);
alert("@@@ zData.classification is " + zData.classification);

//CRN180726 Case #50469 -- Set the "Received" checkbox
var now0 = getCurDateAndTime(doc, false, true);
alert("$$$ now0 = " + now0);
arrOfPairs.push("X_reviewedStatus", "Received");
arrOfPairs.push("X_reviews", "Received by agent at " + now0 + "<br/>"); //ERS170909 #40592/CAW Update
updateDB(doc, arrOfPairs);

alert("@@@ zData.classification = " + zData.classification);

//CRN190226 Create copy of original stack - we use zpArrOfPairs as it already contains most of the data that we need
if (zData.classification == "Complete Immunology" || zData.classification == "Intake ORIAHNN") {
    alert("@@@ creating copy of zStack for Complete Immunology program");

    var org2orgCS = doc.kbData.customSettings; //ERS190411 #57881
    alert("ERS190411 CS a " + (typeof org2orgCS) + " has " + org2orgCS);
    if (org2orgCS) {
        zData.watermark = "" + XCustomSetting(doc, "watermark__c");
        alert("ERS190411 wm=" + zData.watermark + " ZPAPER__server__c=" + XCustomSetting(doc, "ZPAPER__server__c"));
        if (!zData.watermark || zData.watermark == "undefined") {
            zData.watermark = "";
        }
    }

    arrOfPairs = [];
    var pageCount = X(doc, "X_pages");
    var pageRange = "1-" + pageCount;
    alert("@@@ pageRange === " + pageRange);
    // pv022518 markup on non pharmacist pages.
    var watermark = "'addText',10,1,875,1480,'COPY','24px''"; //ERS190411 #57881.
    if (zData.watermark && zData.watermark != "") { //ERS190411 get from the custom setting
        watermark = zData.watermark;
    }

    var buffer = "";
    for (var i = 1; i <= pageCount; i++) {
        var curTime = new Date().getTime();
        //AN20190311 place the word COPY on each page of the copy document
        buffer += "kbm('IMG" + curTime + "','PAGE" + i + "IMG" + curTime + "'," + watermark + ");";
    }
    alert("@@@@ original dbID = " + doc.dbID);
    alert("@@@@ MARKUP = " + buffer);
    alert("@@@@ Original Stack Id: " + originalStackId);
    arrOfPairs.push("X_markup", buffer);

    //ERS 190411 instead of split then watermark, watermark send to flatten, and remove watermark from original
    //ERS190411 #57881 flatten with SF_sendFax.jsp and use that new dbID
    updateDB(doc, arrOfPairs);
    var flatURL = "http://localhost:8080/kb/jsp/SF_sendFax.jsp?faxTo=PDF@" + sfId + "&SFids=" + sfId + "&mode=filePDF";
    alert("ERS190411 URL=" + flatURL);
    var sfOrgID = doc.kbData.sfOrganizationID; //TODO CRN there is a SFSession here instead
    if (!sfOrgID || sfOrgID.length > 18) { //ERS190911 #63071 >18
        sfOrgID = doc.kbData.sfSessionID.substring(0, doc.kbData.sfSessionID.indexOf("!")); //ERS190911 #63071
    }
    flatURL += "&SForg=" + sfOrgID + "&SFsession=" + doc.kbData.sfSessionID;
    flatURL += "&SFserver="+ doc.kbData.sfServer; //ERS190911 #63071
    flatURL += "&coverID2=noBarcode&coverID=" + doc.dbID; //newSnippetId for barcode if we want we can remove(coverID2=noBarcode)
    flatURL += "&SFtype=ZPAPER__zStack__c";  //ERS190411 TODO better missing parameters
    alert("ERS190411 flatten with " + flatURL);
    var flatData;
    var flatId="";
    var zHeaders=["authorization","ZPAPER WGET"]; //ERS190911 TODO by Steve a nice meal out - case REALLY matters
    for (var x = 0; x < 2; x++) { //ERS190911 TODO 2 DONE
        try {
            flatData = ""+wget(doc, flatURL, [], zHeaders); //SF_sendFax.jsp is returning a zippi id //no , null, null
        } catch (e) {
            alert("#58504 wget failed with "+flatURL+" exception:"+e); //ERS190910
        }
        
        if (flatData && flatData.length > 0) {
            flatId = X(doc, "zippi", flatData);
        }
        alert("ERS190411 x="+x+" flattened to " + flatId + " len=" + flatId.length); //+ " from "+flatData);
        alert("ERS190412,0911B a " + (typeof flatId)+" from zippi in "+ X(doc, "zippi", flatData) +" wget returned "+flatData.length+" with "+zHeaders); //ERS190911
        if (flatId.indexOf("{") == 0) {
            var flatItem = JSON.parse(flatId);
            flatId = flatItem['Item'];
        }
        alert("ERS190911 #63071 flatId="+flatId);
        if (flatId) {break;} //ERS190911
    }

    arrOfPairs = [];
    arrOfPairs.push("X_markup", "");
    updateDB(doc, arrOfPairs);
    alert("225");

    if (!flatId || (flatId+"").length < 15) {
        alert("ERS190910 #58504 still no flatId!!  Case created from email.");
        return;
    } else {
    var copyLabel = "Copy of " + doc.label; //TODO update the flatten doc label
    alert("231: setting document context to dbID: " + flatId);
    setDocumentContext(doc, flatId); //ERS190412 WARN WARN WARN doc is the COPY doc
    alert("233");
    arrOfPairs = [];
    arrOfPairs.push("db-label", copyLabel);
    updateDB(doc, arrOfPairs);
    alert("237");
    }
    
    alert("@@@@ after splitting Snippet, dbID = " + doc.dbID);
    var copySfId = createAndAttach(doc, zStack, "Copy of New Stack received on " + formatNow, zpArrOfPairs);
    alert("Stack Id for copy stack = " + copySfId);

    var copyStackNumber = getSFField(doc, zStack, "Name", null, copySfId);  //CRN190321 Make sure that the copy is indexed correctly
    alert("@@@ copyStackNumber = " + copyStackNumber);
    //CRN190226 Fix the receivedId__c field (was set with original id)
    arrOfPairs = [];

    arrOfPairs.push("RecordTypeId", zData.compImmStackRecordTypeId); //AN20190306 tech debt. I attempted to set this record type when creating the Stack but it that didn't work as expected. Changing the record type after record creation works but is clunky and tech-debty and kludgey
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
    updateSFRecord(doc, zStack, copySfId, arrOfPairs);
    //CRN190226 also fix the X_sfStackId field
    arrOfPairs = [];
    arrOfPairs.push("X_sfStackId", copySfId);
    arrOfPairs.push("X_attachedTo", copySfId); //ERS190412 #57881
    arrOfPairs.push("X_Stack_Number", copyStackNumber);

    //AN20190327 set the doc security for Complete Intake group
    alert("@@@ setting document security for Complete Intake" + zData.pharmGroupId);
    arrOfPairs.push("db-users", ":" + zData.compIntGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.compIntGroupId + ":");

    updateDB(doc, arrOfPairs);
    //CRN190226 Make sure it is also in the correct incoming folder
    var incomingFolder = doc.kbData.groupID.substring(1) + "In";
    alert("### incomingFolder = " + incomingFolder);
    moveDocument(doc, null, incomingFolder);

    //update the original zStack and make it a child of the copy that we just created
    arrOfPairs = [];
    arrOfPairs.push("ZPAPER__Parent__c", originalStackId);// PV190416 updated for Pharmacy Services Stack should update on Intake Stack
    updateSFRecord(doc, zStack, copySfId, arrOfPairs);
}

alert("@@@ create case = " + createCase);
if (createCase === true) { // PV190321 create a Case if this is not a PAP document
    alert("@@@ entering createCase logic");

    arrOfPairs = [];

    if (zData.classification == "RH-Immunology") {
        //arrOfPairs.push("OwnerId", zData.valetQueueId); //AN20200401 removed as part of May 2020 sprint
        arrOfPairs.push("OwnerId", zData.EnrollmentQueueId); //AN20200401 added as part of May 2020 sprint
        arrOfPairs.push("RecordTypeId", zData.valetCaseRecordTypeId);
        arrOfPairs.push("PS_CaseSubType__c", "BV Full");
        arrOfPairs.push("PS_ReasonCode__c", "None");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology");
    } else if (zData.classification == "ARCC") {
        arrOfPairs.push("RecordTypeId", zData.authSupportCaseRecordTypeId); //AN20200401 added during May 2020 sprint
        //arrOfPairs.push("OwnerId", zData.ARCCQueueId); //AN20200401 removed during May 2020 sprint
        arrOfPairs.push("OwnerId", zData.ImmAuthQueueId);
        arrOfPairs.push("PS_CaseSubType__c", "Denial"); //AN20191230 added during February 2020 sprint, then removed during May 2020 sprint
        arrOfPairs.push("PS_ReasonCode__c", "None");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology");
    } else if (zData.classification == "ARCC ORIAHNN") {
        alert("@@@ entering ARCC ORIAHNN Create Case logic");
        arrOfPairs.push("RecordTypeId", zData.authSupportCaseRecordTypeId);
        arrOfPairs.push("OwnerId", zData.WHealthQueueId);
        arrOfPairs.push("PS_CaseSubType__c", "Denial");
        arrOfPairs.push("PS_ReasonCode__c", "None");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology"); //not COmplete Immunology
    } else if (zData.classification == "Complete Immunology") {
        arrOfPairs.push("OwnerId", zData.compIntQueueId);
        arrOfPairs.push("RecordTypeId", zData.compIntCaseRecordTypeId);
        arrOfPairs.push("PS_CaseSubType__c", "Enrollment");
        //AN20190412 change request per Venkat during the Complete Intake project
        arrOfPairs.push("PS_Classification__c", "Complete Immunology");
    }
    else if (zData.classification == "Intake ORIAHNN") {
        arrOfPairs.push("OwnerId", zData.WHealthQueueId);
        arrOfPairs.push("RecordTypeId", zData.authSupportCaseRecordTypeId);
        arrOfPairs.push("PS_CaseSubType__c", "Denial");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology");
    }

    arrOfPairs.push("Status", "New");
    arrOfPairs.push("Origin", "Fax / HCP");
    arrOfPairs.push("Priority", "Standard");

    //set zPaper workflow fields on the case
    arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
    arrOfPairs.push("ZPAPER__newFax__c", "true");
    arrOfPairs.push("ZPAPER__faxType__c", zType); //AN20180712 during code review, pay attention to this
    arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //AN20180717 added this

    //AN20080717 link to parent zStack
    if (copySfId) {
        arrOfPairs.push("zStack__c", copySfId);
    } else {
        arrOfPairs.push("zStack__c", sfId); //AN20080717 link to parent zStack
    }

    // TPM180813 changed to not attach doc to case record in zdocset
    createSFRecord(doc, "Case", "New fax received on " + formatNow, arrOfPairs);
}
/* END Create Stack from Fax */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
