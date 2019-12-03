<!--
// Name: Create Stack from Fax
// Committer: andrew@zpaper.com
// Update: removing drug type
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-06 19:47:29","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gQ3JlYXRlIFN0YWNrIGZyb20gRmF4ICovCnZhciBjcmVhdGVDYXNlID0gZmFsc2U7IC8vQU4yMDE4MDcxMiBmbGFnIHRvIHRyYWNrIGlmIHdlIHdhbnQgdG8gY3JlYXRlIGEgQ2FzZSBvciBub3QKdmFyIHN0YWNrTnVtYmVyOy8vID0gIiI7IC8vQU4yMDE5MDMwNSBtb3ZpbmcgZGVjbGFyYXRpb24gdG8gdG9wIG9mIHJ1bGUKdmFyIGF0dGFjaExhYmVsID0gIiI7CnZhciB6VHlwZSA9IGRvYy5YKCJYX2RvY1R5cGUiKTsKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBjaGFubmVsID0gIkZheCI7CnZhciB6cEFyck9mUGFpcnMgPSBbXTsgLy9BTjIwMTgwNzEzIGRlY2xhcmluZyBhIHNlcGFyYXRlIGFycmF5IGZvciB1c2UgaW4gc2V0dGluZyB6UGFwZXIgZG9jIHNlY3VyaXR5CnZhciB6cCA9ICJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZQp2YXIgelN0YWNrID0genAgKyAielN0YWNrX19jIjsKdmFyIGFyck9mUGFpcnMgPSBbXTsKCnZhciBmcm9tRmlsZSA9IFgoZG9jLCAiWF9mcm9tRmlsZSIpOwovL0NSTjE5MDMwOCBIYW5kbGUgdXBsb2FkZWQgZmlsZXMgdmlhIExpZ2h0bmluZyBDb21wb25lbnQKaWYgKGZyb21GaWxlICYmIGZyb21GaWxlLmluZGV4T2YoImxpZ2h0bmluZ1VwbG9hZCIpID49IDApIHsKICAgIGZyb21GaWxlID0gZnJvbUZpbGUuc3Vic3RyaW5nKGZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsKICAgIHZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCItIik7CiAgICBpZiAocGFydHMubGVuZ3RoID49IDMpIHsKICAgICAgICB2YXIgYXR0YWNoVG9JZCA9IHBhcnRzWzJdOwogICAgICAgIGFsZXJ0KCJAQEAgVVBMT0FEOiBBVFRBQ0hJTkcgVE8gU0FMRVNGT1JDRSBSRUNPUkQgPSAiICsgYXR0YWNoVG9JZCk7CiAgICAgICAgdmFyIGxhYmVsID0gIkZpbGUgdXBsb2FkZWQgYnkgIiArIHBhcnRzWzBdOwogICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICB2YXIgYXJyT2ZQYWlyc0xvY2FsID0gW107CiAgICAgICAgYXJyT2ZQYWlyc0xvY2FsLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyc0xvY2FsKTsKICAgICAgICByZXR1cm47CiAgICB9Cn0KCi8vRVJTMTcwMzI4IGRvY1R5cGUgYnkgT0NSCnpEYXRhLmRvY1R5cGVPQ1IgPSB6RGF0YS5kb2NUeXBlcihkb2MsIHsKICAgICJQQVBQIjogIlBhdGllbnR+IEFzc2lzdGFuY2V+IiwKICAgICJQQVVUSCI6ICJQcmlvcn4gQXV0aG9yaXphdGlvbn4iLAogICAgIkVOUkwiOiAiRW5yb2xsbWVudH4iLAogICAgIkZBWCI6ICIiCn0pOwoKYWxlcnQoImRvY1R5cGUgd2FzICIgKyBkb2MuZG9jVHlwZSArICIgbm93ICIgKyB6RGF0YS5kb2NUeXBlT0NSKTsKaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlT0NSIiwgekRhdGEuZG9jVHlwZU9DUik7CiAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgIHpUeXBlID0gekRhdGEuZG9jVHlwZU9DUjsgLy9FUlMxNzAzMzAgc2F2ZWQgYmVsb3cgaW50byBTRiBmYXhUeXBlX19jIGZpZWxkCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKfQoKaWYgKGlzTmFOKGRvYy5kZWxpdmVyZWRGcm9tKSkgeyAvLyBOb3QgYSBOdW1iZXIgaXMgdHJ1ZQogICAgY2hhbm5lbCA9ICJFbWFpbCI7Cn0KCi8vQU4yMDE4MDcxMSB0aGlzIFpQIGJ1c2luc3MgY2FuIHByb2JhYmx5IGJlIHJlbW92ZWQgYW5kIHJlcGxhY2VkIHdpdGggdGhlIGNvcnJlY3QgbmFtZXNwYWNlCnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgImZheFR5cGVfX2MiLCB6VHlwZSk7CnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgIlByaW9yaXR5X19jIiwgIk1lZGl1bSIpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJTdGF0dXNfX2MiLCAiTmV3IFN0YWNrIik7CnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgIkNoYW5uZWxfX2MiLCBjaGFubmVsKTsKCi8vIE1TSDE3MTExNiB1c2luZyB6U3RhY2tfUmVjZWl2ZWRfX2MgaW5zdGVhZCBvZiBsYXRlc3RGYXhfX2MgYmVjYXVzZSBsYXRlc3RGYXhfX2MgZ2V0cyB1cGRhdGVkIGJ5IHNhdmUuanNwIGV2ZXJ5IHRpbWUgdGhlIHJlY29yZCBpcyB1cGRhdGVkCnpwQXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCBmb3JtYXROb3cpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJuZXdGYXhfX2MiLCAidHJ1ZSIpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKenBBcnJPZlBhaXJzLnB1c2goenAgKyAiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJzZW50RmF4VG9fX2MiLCBkb2MuZGVsaXZlcmVkVG8pOyAvL0VSUzE3MDYyOCBjYWxsZXIgaWQKenBBcnJPZlBhaXJzLnB1c2goenAgKyAiRnJvbV9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsKenBBcnJPZlBhaXJzLnB1c2goInpDYWxsZXJfSURfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7IC8vTVNIMTcwODE3IGFkZGVkCnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IC8vRVJTMTcwNzMxICM0MDU5MwoKYWxlcnQoIkBAQCBDbGFzc2lmaWNhdGlvbiA9ICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CgovL0FOMjAxODA3MTIgZm9yIGNvZGUgcmV2aWV3OiB3ZSBoYXZlIG11bHRpcGxlIElGIGl0ZXJhdGlvbnMgaW52b2x2aW5nIHpEYXRhLmNsYXNzaWZjYXRpb24uIENhbiB3ZSBjb21iaW5lIHRoZW0/CmlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiUEFQIikgeyAvL0FOMjAxODA2MDQgc2V0IFBBUCBxdWV1ZSBhbmQgcmVjb3JkIHR5cGUKICAgIGFsZXJ0KCJAQEAgZW50ZXJpbmcgUEFQIGxvZ2ljIik7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsICJQQVAiKTsgLy9BTjIwMTkwMzEyIHRlY2ggZGVidC4gTmVlZCB0byByZW1vdmUgYWxsIHJlZmVyZW5jZSB0byBDb21wbGV0ZSBJbW11bm9sb2d5IGFuZCByZXBsYWNlIHdpdGggQ29tcGxldGUgSW50YWtlLCBpbmNsdWRpbmcgcmVuYW1pbmcgb2YgdmFyaWFibGVzIGFuZCByZWNvcmQgdHlwZXMKICAgIGlmICh6RGF0YS5wYXBRdWV1ZUlkKSB6cEFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLnBhcFF1ZXVlSWQpOyAvL0VSUzE5MDkxMSBjaGVjayB2YWx1ZQogICAgenBBcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnBhcFN0YWNrUmVjb3JkVHlwZUlkKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJEcnVnX1R5cGVfX2MiLCAiSHVtaXJhIik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEucGFwR3JvdXBJZCArICI6Iik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS5wYXBHcm91cElkICsgIjoiKTsKICAgIGF0dGFjaExhYmVsID0gIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93OwogICAgY3JlYXRlQ2FzZSA9IGZhbHNlOwp9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJSSC1JbW11bm9sb2d5Iikgey8vQU4yMDE4MDYwNCBzZXQgUkgtSW1tdW5vbG9neSBxdWV1ZSBhbmQgcmVjb3JkIHR5cGUKICAgIGFsZXJ0KCJAQEAgZW50ZXJpbmcgUkgtSW1tdW5vbG9neSBsb2dpYyIpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiLCAiUkgtSW1tdW5vbG9neSIpOyAvL0FOMjAxOTAzMTIgdGVjaCBkZWJ0LiBOZWVkIHRvIHJlbW92ZSBhbGwgcmVmZXJlbmNlIHRvIENvbXBsZXRlIEltbXVub2xvZ3kgYW5kIHJlcGxhY2Ugd2l0aCBDb21wbGV0ZSBJbnRha2UsIGluY2x1ZGluZyByZW5hbWluZyBvZiB2YXJpYWJsZXMgYW5kIHJlY29yZCB0eXBlcwogICAgaWYgKHpEYXRhLnZhbGV0UXVldWVJZCkgenBBcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS52YWxldFF1ZXVlSWQpOyAvL0VSUzE5MDkxMSBjaGVjayB2YWx1ZQogICAgenBBcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnZhbGV0U3RhY2tSZWNvcmRUeXBlSWQpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIkRydWdfVHlwZV9fYyIsICJIdW1pcmEiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS52YWxldEdyb3VwSWQgKyAiOiIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEudmFsZXRHcm91cElkICsgIjoiKTsKICAgIGF0dGFjaExhYmVsID0gIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93OwogICAgY3JlYXRlQ2FzZSA9IHRydWU7Cn0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkFSQ0MiKSB7Ly9BTjIwMTgwNjA0IHNldCBBUkNDIHF1ZXVlIGFuZCBJbW11bm9sb2d5IHJlY29yZCB0eXBlCiAgICBhbGVydCgiQEBAIGVudGVyaW5nIEFSQ0MgbG9naWMiKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgIlJILUltbXVub2xvZ3kiKTsgLy9BTjIwMTkwMzEyIHRlY2ggZGVidC4gTmVlZCB0byByZW1vdmUgYWxsIHJlZmVyZW5jZSB0byBDb21wbGV0ZSBJbW11bm9sb2d5IGFuZCByZXBsYWNlIHdpdGggQ29tcGxldGUgSW50YWtlLCBpbmNsdWRpbmcgcmVuYW1pbmcgb2YgdmFyaWFibGVzIGFuZCByZWNvcmQgdHlwZXMKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuQVJDQ1F1ZXVlSWQpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnZhbGV0U3RhY2tSZWNvcmRUeXBlSWQpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIkRydWdfVHlwZV9fYyIsICJIdW1pcmEiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS52YWxldEdyb3VwSWQgKyAiOiIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEudmFsZXRHcm91cElkICsgIjoiKTsKICAgIGF0dGFjaExhYmVsID0gIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93OwogICAgY3JlYXRlQ2FzZSA9IHRydWU7Cn0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkNvbXBsZXRlIEltbXVub2xvZ3kiKSB7Ly9BTjIwMTgwNjA0IHNldCBDb21wbGV0ZSBJbW11bm9sb2d5IHF1ZXVlIGFuZCBDb21wbGV0ZSBJbnRha2UgcmVjb3JkIHR5cGUKICAgIGFsZXJ0KCJAQEAgZW50ZXJpbmcgQ29tcGxldGUgSW1tdW5vbG9neSBsb2dpYyIpOwogICAgYWxlcnQoIkBAQCB6RGF0YS5jb21wSW1tU3RhY2tSZWNvcmRUeXBlSWQgPSAiICsgekRhdGEuY29tcEltbVN0YWNrUmVjb3JkVHlwZUlkKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgIkNvbXBsZXRlIEludGFrZSIpOyAvL0FOMjAxOTAzMTIgdGVjaCBkZWJ0LiBOZWVkIHRvIHJlbW92ZSBhbGwgcmVmZXJlbmNlIHRvIENvbXBsZXRlIEltbXVub2xvZ3kgYW5kIHJlcGxhY2Ugd2l0aCBDb21wbGV0ZSBJbnRha2UsIGluY2x1ZGluZyByZW5hbWluZyBvZiB2YXJpYWJsZXMgYW5kIHJlY29yZCB0eXBlcwogICAgaWYgKHpEYXRhLmNvbXBJbW1RdWV1ZUlkKSB6cEFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLmNvbXBJbW1RdWV1ZUlkKTsgLy9FUlMxOTA5MTEKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5waGFybVN0YWNrUmVjb3JkVHlwZUlkKTsgLy9BTjIwMTkwMzI3IGZpcnN0IGNyZWF0ZWQgc3RhY2sgc2hvdWxkIGJlIGZvciB0aGUgUGhhcm1hY2lzdAogICAgLy96cEFyck9mUGFpcnMucHVzaCgiRHJ1Z19UeXBlX19jIiwgIlNreXJpemkiKTsgLy9BTjIwMTkxMTA2IHdlIG5vdyBoYXZlIG11bHRpcGxlIENvbXBsZXRlIEludGFrZSBwcm9ncmFtcywgc28gRHJ1ZyBUeXBlIHdpbGwgYmUgZW50ZXJlZCBieSB0aGUgdXNlcgogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsICI6IiArIHpEYXRhLnBoYXJtR3JvdXBJZCArICI6Iik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS5waGFybUdyb3VwSWQgKyAiOiIpOwogICAgYXR0YWNoTGFiZWwgPSAiTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3c7CiAgICBjcmVhdGVDYXNlID0gdHJ1ZTsKfQoKdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6U3RhY2ssIGF0dGFjaExhYmVsLCB6cEFyck9mUGFpcnMpOwp2YXIgb3JpZ2luYWxTdGFja0lkID0gc2ZJZDsKc3RhY2tOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgelN0YWNrLCAiTmFtZSIsIG51bGwsIHNmSWQpOwphbGVydCgiIyMjIyBTdGFjayBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKCmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CmFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwphcnJPZlBhaXJzLnB1c2goIlhfc2ZTdGFja0lkIiwgc2ZJZCk7IC8vRVJTMTcwNzI3ICM0MDQ0NwphcnJPZlBhaXJzLnB1c2goIlhfU3RhY2tfTnVtYmVyIiwgc3RhY2tOdW1iZXIpOwoKLy9hc3NpZ24gZG9jIHNlY3VyaXR5LiBWYXJpYWJsZXMgYXJlIGJhc2VkIG9uIHRoZSBpbmJvdW5kIGZheCBsaW5lCmFsZXJ0KCJAQEAgbWFzdGVyIElEIGlzID0gIiArIGRvYy5rYkRhdGEuZ3JvdXBJRCk7CmFsZXJ0KCJAQEAgUEFQIGdyb3VwIElEIGlzID0gIiArIHpEYXRhLnBhcEdyb3VwSWQpOwphbGVydCgiQEBAIFJILUltbXVub2xvZ3kgZ3JvdXAgSUQgaXMgPSAiICsgekRhdGEudmFsZXRHcm91cElkKTsKYWxlcnQoIkBAQCBDb21wbGV0ZSBJbW11bm9sb2d5IGdyb3VwIElEIGlzID0gIiArIHpEYXRhLmNvbXBJbnRHcm91cElkKTsKYWxlcnQoInpEYXRhLmNsYXNzaWZpY2F0aW9uIGlzICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CgovL0NSTjE4MDcyNiBDYXNlICM1MDQ2OSAtLSBTZXQgdGhlICJSZWNlaXZlZCIgY2hlY2tib3gKdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKYWxlcnQoIiQkJCBub3cwID0gIiArIG5vdzApOwphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiUmVjZWl2ZWQiKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCAiUmVjZWl2ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyL0NBVyBVcGRhdGUKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKCmFsZXJ0KCJAQEAgekRhdGEuY2xhc3NpZmljYXRpb24xMjMgOiIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CgovL0NSTjE5MDIyNiBDcmVhdGUgY29weSBvZiBvcmlnaW5hbCBzdGFjayAtIHdlIHVzZSB6cEFyck9mUGFpcnMgYXMgaXQgYWxyZWFkeSBjb250YWlucyBtb3N0IG9mIHRoZSBkYXRhIHRoYXQgd2UgbmVlZAovL0FOIDIwMTkwMjI4IG9ubHkgc2hvdWxkIGRvIHRoaXMgZm9yIHRoZSBDb21wbGV0ZSBJbW11bm9sb2d5IHByb2dyYW0KaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJDb21wbGV0ZSBJbW11bm9sb2d5IikgewogICAgYWxlcnQoIkBAQCBjcmVhdGluZyBjb3B5IG9mIHpTdGFjayBmb3IgQ29tcGxldGUgSW1tdW5vbG9neSBwcm9ncmFtIik7CgogICAgdmFyIG9yZzJvcmdDUyA9IGRvYy5rYkRhdGEuY3VzdG9tU2V0dGluZ3M7IC8vRVJTMTkwNDExICM1Nzg4MQogICAgYWxlcnQoIkVSUzE5MDQxMSBDUyBhICIgKyAodHlwZW9mIG9yZzJvcmdDUykgKyAiIGhhcyAiICsgb3JnMm9yZ0NTKTsKICAgIGlmIChvcmcyb3JnQ1MpIHsKICAgICAgICB6RGF0YS53YXRlcm1hcmsgPSAiIiArIFhDdXN0b21TZXR0aW5nKGRvYywgIndhdGVybWFya19fYyIpOwogICAgICAgIGFsZXJ0KCJFUlMxOTA0MTEgd209IiArIHpEYXRhLndhdGVybWFyayArICIgWlBBUEVSX19zZXJ2ZXJfX2M9IiArIFhDdXN0b21TZXR0aW5nKGRvYywgIlpQQVBFUl9fc2VydmVyX19jIikpOwogICAgICAgIGlmICghekRhdGEud2F0ZXJtYXJrIHx8IHpEYXRhLndhdGVybWFyayA9PSAidW5kZWZpbmVkIikgewogICAgICAgICAgICB6RGF0YS53YXRlcm1hcmsgPSAiIjsKICAgICAgICB9CiAgICB9CgogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIHBhZ2VDb3VudCA9IFgoZG9jLCAiWF9wYWdlcyIpOwogICAgdmFyIHBhZ2VSYW5nZSA9ICIxLSIgKyBwYWdlQ291bnQ7CiAgICBhbGVydCgiQEBAIHBhZ2VSYW5nZSA9PT0gIiArIHBhZ2VSYW5nZSk7CiAgICAvLyBwdjAyMjUxOCBtYXJrdXAgb24gbm9uIHBoYXJtYWNpc3QgcGFnZXMuCiAgICB2YXIgd2F0ZXJtYXJrID0gIidhZGRUZXh0JywxMCwxLDg3NSwxNDgwLCdDT1BZJywnMjRweCcnIjsgLy9FUlMxOTA0MTEgIzU3ODgxLgogICAgaWYgKHpEYXRhLndhdGVybWFyayAmJiB6RGF0YS53YXRlcm1hcmsgIT0gIiIpIHsgLy9FUlMxOTA0MTEgZ2V0IGZyb20gdGhlIGN1c3RvbSBzZXR0aW5nCiAgICAgICAgd2F0ZXJtYXJrID0gekRhdGEud2F0ZXJtYXJrOwogICAgfQoKICAgIHZhciBidWZmZXIgPSAiIjsKICAgIGZvciAodmFyIGkgPSAxOyBpIDw9IHBhZ2VDb3VudDsgaSsrKSB7CiAgICAgICAgdmFyIGN1clRpbWUgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKTsKICAgICAgICAvL0FOMjAxOTAzMTEgcGxhY2UgdGhlIHdvcmQgQ09QWSBvbiBlYWNoIHBhZ2Ugb2YgdGhlIGNvcHkgZG9jdW1lbnQKICAgICAgICBidWZmZXIgKz0gImtibSgnSU1HIiArIGN1clRpbWUgKyAiJywnUEFHRSIgKyBpICsgIklNRyIgKyBjdXJUaW1lICsgIicsIiArIHdhdGVybWFyayArICIpOyI7CiAgICB9CiAgICBhbGVydCgiQEBAQCBvcmlnaW5hbCBkYklEID0gIiArIGRvYy5kYklEKTsKICAgIGFsZXJ0KCJAQEBAIE1BUktVUCA9ICIgKyBidWZmZXIpOwogICAgYWxlcnQoIkBAQEAgT3JpZ2luYWwgU3RhY2sgSWQ6ICIgKyBvcmlnaW5hbFN0YWNrSWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX21hcmt1cCIsIGJ1ZmZlcik7CgogICAgLy9FUlMgMTkwNDExIGluc3RlYWQgb2Ygc3BsaXQgdGhlbiB3YXRlcm1hcmssIHdhdGVybWFyayBzZW5kIHRvIGZsYXR0ZW4sIGFuZCByZW1vdmUgd2F0ZXJtYXJrIGZyb20gb3JpZ2luYWwKICAgIC8vRVJTMTkwNDExICM1Nzg4MSBmbGF0dGVuIHdpdGggU0Zfc2VuZEZheC5qc3AgYW5kIHVzZSB0aGF0IG5ldyBkYklECiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgdmFyIGZsYXRVUkwgPSAiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2tiL2pzcC9TRl9zZW5kRmF4LmpzcD9mYXhUbz1QREZAIiArIHNmSWQgKyAiJlNGaWRzPSIgKyBzZklkICsgIiZtb2RlPWZpbGVQREYiOwogICAgYWxlcnQoIkVSUzE5MDQxMSBVUkw9IiArIGZsYXRVUkwpOwogICAgdmFyIHNmT3JnSUQgPSBkb2Mua2JEYXRhLnNmT3JnYW5pemF0aW9uSUQ7IC8vVE9ETyBDUk4gdGhlcmUgaXMgYSBTRlNlc3Npb24gaGVyZSBpbnN0ZWFkCiAgICBpZiAoIXNmT3JnSUQgfHwgc2ZPcmdJRC5sZW5ndGggPiAxOCkgeyAvL0VSUzE5MDkxMSAjNjMwNzEgPjE4CiAgICAgICAgc2ZPcmdJRCA9IGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQuc3Vic3RyaW5nKDAsIGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQuaW5kZXhPZigiISIpKTsgLy9FUlMxOTA5MTEgIzYzMDcxCiAgICB9CiAgICBmbGF0VVJMICs9ICImU0Zvcmc9IiArIHNmT3JnSUQgKyAiJlNGc2Vzc2lvbj0iICsgZG9jLmtiRGF0YS5zZlNlc3Npb25JRDsKICAgIGZsYXRVUkwgKz0gIiZTRnNlcnZlcj0iKyBkb2Mua2JEYXRhLnNmU2VydmVyOyAvL0VSUzE5MDkxMSAjNjMwNzEKICAgIGZsYXRVUkwgKz0gIiZjb3ZlcklEMj1ub0JhcmNvZGUmY292ZXJJRD0iICsgZG9jLmRiSUQ7IC8vbmV3U25pcHBldElkIGZvciBiYXJjb2RlIGlmIHdlIHdhbnQgd2UgY2FuIHJlbW92ZShjb3ZlcklEMj1ub0JhcmNvZGUpCiAgICBmbGF0VVJMICs9ICImU0Z0eXBlPVpQQVBFUl9felN0YWNrX19jIjsgIC8vRVJTMTkwNDExIFRPRE8gYmV0dGVyIG1pc3NpbmcgcGFyYW1ldGVycwogICAgYWxlcnQoIkVSUzE5MDQxMSBmbGF0dGVuIHdpdGggIiArIGZsYXRVUkwpOwogICAgdmFyIGZsYXREYXRhOwogICAgdmFyIGZsYXRJZD0iIjsKICAgIHZhciB6SGVhZGVycz1bImF1dGhvcml6YXRpb24iLCJaUEFQRVIgV0dFVCJdOyAvL0VSUzE5MDkxMSBUT0RPIGJ5IFN0ZXZlIGEgbmljZSBtZWFsIG91dCAtIGNhc2UgUkVBTExZIG1hdHRlcnMKICAgIGZvciAodmFyIHggPSAwOyB4IDwgMjsgeCsrKSB7IC8vRVJTMTkwOTExIFRPRE8gMiBET05FCiAgICAgICAgdHJ5IHsKICAgICAgICAgICAgZmxhdERhdGEgPSAiIit3Z2V0KGRvYywgZmxhdFVSTCwgW10sIHpIZWFkZXJzKTsgLy9TRl9zZW5kRmF4LmpzcCBpcyByZXR1cm5pbmcgYSB6aXBwaSBpZCAvL25vICwgbnVsbCwgbnVsbAogICAgICAgIH0gY2F0Y2ggKGUpIHsKICAgICAgICAgICAgYWxlcnQoIiM1ODUwNCB3Z2V0IGZhaWxlZCB3aXRoICIrZmxhdFVSTCsiIGV4Y2VwdGlvbjoiK2UpOyAvL0VSUzE5MDkxMAogICAgICAgIH0JCiAgICAgICAgCiAgICAgICAgaWYgKGZsYXREYXRhICYmIGZsYXREYXRhLmxlbmd0aCA+IDApIHsKICAgICAgICAgICAgZmxhdElkID0gWChkb2MsICJ6aXBwaSIsIGZsYXREYXRhKTsKICAgICAgICB9CiAgICAgICAgYWxlcnQoIkVSUzE5MDQxMSB4PSIreCsiIGZsYXR0ZW5lZCB0byAiICsgZmxhdElkICsgIiBsZW49IiArIGZsYXRJZC5sZW5ndGgpOyAvLysgIiBmcm9tICIrZmxhdERhdGEpOwogICAgICAgIGFsZXJ0KCJFUlMxOTA0MTIsMDkxMUIgYSAiICsgKHR5cGVvZiBmbGF0SWQpKyIgZnJvbSB6aXBwaSBpbiAiKyBYKGRvYywgInppcHBpIiwgZmxhdERhdGEpICsiIHdnZXQgcmV0dXJuZWQgIitmbGF0RGF0YS5sZW5ndGgrIiB3aXRoICIrekhlYWRlcnMpOyAvL0VSUzE5MDkxMQogICAgICAgIGlmIChmbGF0SWQuaW5kZXhPZigieyIpID09IDApIHsKICAgICAgICAgICAgdmFyIGZsYXRJdGVtID0gSlNPTi5wYXJzZShmbGF0SWQpOwogICAgICAgICAgICBmbGF0SWQgPSBmbGF0SXRlbVsnSXRlbSddOwogICAgICAgIH0KICAgICAgICBhbGVydCgiRVJTMTkwOTExICM2MzA3MSBmbGF0SWQ9IitmbGF0SWQpOwogICAgICAgIGlmIChmbGF0SWQpIHticmVhazt9IC8vRVJTMTkwOTExCiAgICB9CgogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX21hcmt1cCIsICIiKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiMjI1Iik7CgogICAgaWYgKCFmbGF0SWQgfHwgKGZsYXRJZCsiIikubGVuZ3RoIDwgMTUpIHsKICAgICAgICBhbGVydCgiRVJTMTkwOTEwICM1ODUwNCBzdGlsbCBubyBmbGF0SWQhISAgQ2FzZSBjcmVhdGVkIGZyb20gZW1haWwuIik7CiAgICAgICAgcmV0dXJuOwogICAgfSBlbHNlIHsKICAgIHZhciBjb3B5TGFiZWwgPSAiQ29weSBvZiAiICsgZG9jLmxhYmVsOyAvL1RPRE8gdXBkYXRlIHRoZSBmbGF0dGVuIGRvYyBsYWJlbAogICAgYWxlcnQoIjIzMTogc2V0dGluZyBkb2N1bWVudCBjb250ZXh0IHRvIGRiSUQ6ICIgKyBmbGF0SWQpOwogICAgc2V0RG9jdW1lbnRDb250ZXh0KGRvYywgZmxhdElkKTsgLy9FUlMxOTA0MTIgV0FSTiBXQVJOIFdBUk4gZG9jIGlzIHRoZSBDT1BZIGRvYwogICAgYWxlcnQoIjIzMyIpOwogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGNvcHlMYWJlbCk7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgYWxlcnQoIjIzNyIpOwogICAgfQogICAgCiAgICBhbGVydCgiQEBAQCBhZnRlciBzcGxpdHRpbmcgU25pcHBldCwgZGJJRCA9ICIgKyBkb2MuZGJJRCk7CiAgICB2YXIgY29weVNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6U3RhY2ssICJDb3B5IG9mIE5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93LCB6cEFyck9mUGFpcnMpOwogICAgYWxlcnQoIlN0YWNrIElkIGZvciBjb3B5IHN0YWNrID0gIiArIGNvcHlTZklkKTsKCiAgICB2YXIgY29weVN0YWNrTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsIHpTdGFjaywgIk5hbWUiLCBudWxsLCBjb3B5U2ZJZCk7ICAvL0NSTjE5MDMyMSBNYWtlIHN1cmUgdGhhdCB0aGUgY29weSBpcyBpbmRleGVkIGNvcnJlY3RseQogICAgYWxlcnQoIkBAQCBjb3B5U3RhY2tOdW1iZXIgPSAiICsgY29weVN0YWNrTnVtYmVyKTsKICAgIC8vQ1JOMTkwMjI2IEZpeCB0aGUgcmVjZWl2ZWRJZF9fYyBmaWVsZCAod2FzIHNldCB3aXRoIG9yaWdpbmFsIGlkKQogICAgYXJyT2ZQYWlycyA9IFtdOwoKICAgIGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuY29tcEltbVN0YWNrUmVjb3JkVHlwZUlkKTsgLy9BTjIwMTkwMzA2IHRlY2ggZGVidC4gSSBhdHRlbXB0ZWQgdG8gc2V0IHRoaXMgcmVjb3JkIHR5cGUgd2hlbiBjcmVhdGluZyB0aGUgU3RhY2sgYnV0IGl0IHRoYXQgZGlkbid0IHdvcmsgYXMgZXhwZWN0ZWQuIENoYW5naW5nIHRoZSByZWNvcmQgdHlwZSBhZnRlciByZWNvcmQgY3JlYXRpb24gd29ya3MgYnV0IGlzIGNsdW5reSBhbmQgdGVjaC1kZWJ0eSBhbmQga2x1ZGdleQogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICB1cGRhdGVTRlJlY29yZChkb2MsIHpTdGFjaywgY29weVNmSWQsIGFyck9mUGFpcnMpOwogICAgLy9DUk4xOTAyMjYgYWxzbyBmaXggdGhlIFhfc2ZTdGFja0lkIGZpZWxkCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfc2ZTdGFja0lkIiwgY29weVNmSWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLCBjb3B5U2ZJZCk7IC8vRVJTMTkwNDEyICM1Nzg4MQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1N0YWNrX051bWJlciIsIGNvcHlTdGFja051bWJlcik7CgogICAgLy9BTjIwMTkwMzI3IHNldCB0aGUgZG9jIHNlY3VyaXR5IGZvciBDb21wbGV0ZSBJbnRha2UgZ3JvdXAKICAgIGFsZXJ0KCJAQEAgc2V0dGluZyBkb2N1bWVudCBzZWN1cml0eSBmb3IgQ29tcGxldGUgSW50YWtlIiArIHpEYXRhLnBoYXJtR3JvdXBJZCk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEuY29tcEludEdyb3VwSWQgKyAiOiIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEuY29tcEludEdyb3VwSWQgKyAiOiIpOwoKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAvL0NSTjE5MDIyNiBNYWtlIHN1cmUgaXQgaXMgYWxzbyBpbiB0aGUgY29ycmVjdCBpbmNvbWluZyBmb2xkZXIKICAgIHZhciBpbmNvbWluZ0ZvbGRlciA9IGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiSW4iOwogICAgYWxlcnQoIiMjIyBpbmNvbWluZ0ZvbGRlciA9ICIgKyBpbmNvbWluZ0ZvbGRlcik7CiAgICBtb3ZlRG9jdW1lbnQoZG9jLCBudWxsLCBpbmNvbWluZ0ZvbGRlcik7CgogICAgLy91cGRhdGUgdGhlIG9yaWdpbmFsIHpTdGFjayBhbmQgbWFrZSBpdCBhIGNoaWxkIG9mIHRoZSBjb3B5IHRoYXQgd2UganVzdCBjcmVhdGVkCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGFyZW50X19jIiwgb3JpZ2luYWxTdGFja0lkKTsvLyBQVjE5MDQxNiB1cGRhdGVkIGZvciBQaGFybWFjeSBTZXJ2aWNlcyBTdGFjayBzaG91bGQgdXBkYXRlIG9uIEludGFrZSBTdGFjawogICAgLy9hcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9PcmdpbmFsX1N0YWNrX2xvb2t1cF9fYyIsIHNmSWQpOwogICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCB6U3RhY2ssIGNvcHlTZklkLCBhcnJPZlBhaXJzKTsKfQoKYWxlcnQoIkBAQCBjcmVhdGUgY2FzZTEyMyIgKyBjcmVhdGVDYXNlKTsKaWYgKGNyZWF0ZUNhc2UgPT09IHRydWUpIHsgLy8gUFYxOTAzMjEgY3JlYXRlIGEgQ2FzZSBpZiB0aGlzIGlzIG5vdCBhIFBBUCBkb2N1bWVudAogICAgYWxlcnQoIkBAQCBlbnRlcmluZyBjcmVhdGVDYXNlIGxvZ2ljIik7CiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJOZXciKTsKICAgIGFyck9mUGFpcnMucHVzaCgiT3JpZ2luIiwgIkZheCAvIEhDUCIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsICJTdGFuZGFyZCIpOwogICAgLy9BTjIwMDgwNzE3IGxpbmsgdG8gcGFyZW50IHpTdGFjawogICAgaWYgKGNvcHlTZklkKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfX2MiLCBjb3B5U2ZJZCk7CiAgICB9IGVsc2UgewogICAgICAgIGFyck9mUGFpcnMucHVzaCgielN0YWNrX19jIiwgc2ZJZCk7IC8vQU4yMDA4MDcxNyBsaW5rIHRvIHBhcmVudCB6U3RhY2sKICAgIH0KCiAgICBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIlJILUltbXVub2xvZ3kiKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEudmFsZXRRdWV1ZUlkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnZhbGV0Q2FzZVJlY29yZFR5cGVJZCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DYXNlU3ViVHlwZV9fYyIsICJCViBGdWxsIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19SZWFzb25Db2RlX19jIiwgIk5vbmUiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0NsYXNzaWZpY2F0aW9uX19jIiwgIlJILUltbXVub2xvZ3kiKTsKICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkFSQ0MiKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS52YWxldENhc2VSZWNvcmRUeXBlSWQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLkFSQ0NRdWV1ZUlkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0Nhc2VTdWJUeXBlX19jIiwgIkJWIEZ1bGwiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX1JlYXNvbkNvZGVfX2MiLCAiTm9uZSIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQ2xhc3NpZmljYXRpb25fX2MiLCAiUkgtSW1tdW5vbG9neSIpOwogICAgfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiQ29tcGxldGUgSW1tdW5vbG9neSIpIHsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5jb21wSW50UXVldWVJZCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5jb21wSW50Q2FzZVJlY29yZFR5cGVJZCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DYXNlU3ViVHlwZV9fYyIsICJFbnJvbGxtZW50Iik7CiAgICAgICAgLy9BTjIwMTkwNDEyIGNoYW5nZSByZXF1ZXN0IHBlciBWZW5rYXQgZHVyaW5nIHRoZSBDb21wbGV0ZSBJbnRha2UgcHJvamVjdAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQ2xhc3NpZmljYXRpb25fX2MiLCAiQ29tcGxldGUgSW1tdW5vbG9neSIpOwogICAgfQoKICAgIC8vc2V0IHpQYXBlciB3b3JrZmxvdyBmaWVsZHMgb24gdGhlIGNhc2UKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgelR5cGUpOyAvL0FOMjAxODA3MTIgZHVyaW5nIGNvZGUgcmV2aWV3LCBwYXkgYXR0ZW50aW9uIHRvIHRoaXMKICAgIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9BTjIwMTgwNzE3IGFkZGVkIHRoaXMKCiAgICAvLyBUUE0xODA4MTMgY2hhbmdlZCB0byBub3QgYXR0YWNoIGRvYyB0byBjYXNlIHJlY29yZCBpbiB6ZG9jc2V0CiAgICBjcmVhdGVTRlJlY29yZChkb2MsICJDYXNlIiwgIk5ldyBmYXggcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdywgYXJyT2ZQYWlycyk7Cn0KLyogRU5EIENyZWF0ZSBTdGFjayBmcm9tIEZheCAqLw=="},"ordinal":18}

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
var zp = "ZPAPER__"; //ERS170626 now in the package
var zStack = zp + "zStack__c";
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

//AN20180711 this ZP businss can probably be removed and replaced with the correct namespace
zpArrOfPairs.push(zp + "faxType__c", zType);
zpArrOfPairs.push(zp + "Priority__c", "Medium");
zpArrOfPairs.push(zp + "Status__c", "New Stack");
zpArrOfPairs.push(zp + "Channel__c", channel);

// MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
zpArrOfPairs.push("zStack_Received__c", formatNow);
zpArrOfPairs.push(zp + "receivedId__c", doc.dbID);
zpArrOfPairs.push(zp + "newFax__c", "true");
zpArrOfPairs.push(zp + "Pages__c", X(doc, "X_pages"));
zpArrOfPairs.push(zp + "Program_Name__c", zData.classification);
zpArrOfPairs.push(zp + "sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
zpArrOfPairs.push(zp + "From__c", doc.deliveredFrom);
zpArrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
zpArrOfPairs.push(zp + "Stage__c", "Received"); //ERS170731 #40593

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
    if (zData.valetQueueId) zpArrOfPairs.push("OwnerId", zData.valetQueueId); //ERS190911 check value
    zpArrOfPairs.push("RecordTypeId", zData.valetStackRecordTypeId);
    zpArrOfPairs.push("Drug_Type__c", "Humira");
    arrOfPairs.push("db-users", ":" + zData.valetGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.valetGroupId + ":");
    attachLabel = "New Stack received on " + formatNow;
    createCase = true;
} else if (zData.classification == "ARCC") {//AN20180604 set ARCC queue and Immunology record type
    alert("@@@ entering ARCC logic");
    zpArrOfPairs.push("ZPAPER__Classification__c", "RH-Immunology"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types
    zpArrOfPairs.push("OwnerId", zData.ARCCQueueId);
    zpArrOfPairs.push("RecordTypeId", zData.valetStackRecordTypeId);
    zpArrOfPairs.push("Drug_Type__c", "Humira");
    arrOfPairs.push("db-users", ":" + zData.valetGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.valetGroupId + ":");
    attachLabel = "New Stack received on " + formatNow;
    createCase = true;
} else if (zData.classification == "Complete Immunology") {//AN20180604 set Complete Immunology queue and Complete Intake record type
    alert("@@@ entering Complete Immunology logic");
    alert("@@@ zData.compImmStackRecordTypeId = " + zData.compImmStackRecordTypeId);
    zpArrOfPairs.push("ZPAPER__Classification__c", "Complete Intake"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types
    if (zData.compImmQueueId) zpArrOfPairs.push("OwnerId", zData.compImmQueueId); //ERS190911
    zpArrOfPairs.push("RecordTypeId", zData.pharmStackRecordTypeId); //AN20190327 first created stack should be for the Pharmacist
    //zpArrOfPairs.push("Drug_Type__c", "Skyrizi"); //AN20191106 we now have multiple Complete Intake programs, so Drug Type will be entered by the user
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
alert("zData.classification is " + zData.classification);

//CRN180726 Case #50469 -- Set the "Received" checkbox
var now0 = getCurDateAndTime(doc, false, true);
alert("$$$ now0 = " + now0);
arrOfPairs.push("X_reviewedStatus", "Received");
arrOfPairs.push("X_reviews", "Received by agent at " + now0 + "<br/>"); //ERS170909 #40592/CAW Update
updateDB(doc, arrOfPairs);

alert("@@@ zData.classification123 :" + zData.classification);

//CRN190226 Create copy of original stack - we use zpArrOfPairs as it already contains most of the data that we need
//AN 20190228 only should do this for the Complete Immunology program
if (zData.classification == "Complete Immunology") {
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
    arrOfPairs.push(zp + "receivedId__c", doc.dbID);
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
    //arrOfPairs.push("ZPAPER_Orginal_Stack_lookup__c", sfId);
    updateSFRecord(doc, zStack, copySfId, arrOfPairs);
}

alert("@@@ create case123" + createCase);
if (createCase === true) { // PV190321 create a Case if this is not a PAP document
    alert("@@@ entering createCase logic");
    arrOfPairs = [];
    arrOfPairs.push("Status", "New");
    arrOfPairs.push("Origin", "Fax / HCP");
    arrOfPairs.push("Priority", "Standard");
    //AN20080717 link to parent zStack
    if (copySfId) {
        arrOfPairs.push("zStack__c", copySfId);
    } else {
        arrOfPairs.push("zStack__c", sfId); //AN20080717 link to parent zStack
    }

    if (zData.classification == "RH-Immunology") {
        arrOfPairs.push("OwnerId", zData.valetQueueId);
        arrOfPairs.push("RecordTypeId", zData.valetCaseRecordTypeId);
        arrOfPairs.push("PS_CaseSubType__c", "BV Full");
        arrOfPairs.push("PS_ReasonCode__c", "None");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology");
    } else if (zData.classification == "ARCC") {
        arrOfPairs.push("RecordTypeId", zData.valetCaseRecordTypeId);
        arrOfPairs.push("OwnerId", zData.ARCCQueueId);
        arrOfPairs.push("PS_CaseSubType__c", "BV Full");
        arrOfPairs.push("PS_ReasonCode__c", "None");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology");
    } else if (zData.classification == "Complete Immunology") {
        arrOfPairs.push("OwnerId", zData.compIntQueueId);
        arrOfPairs.push("RecordTypeId", zData.compIntCaseRecordTypeId);
        arrOfPairs.push("PS_CaseSubType__c", "Enrollment");
        //AN20190412 change request per Venkat during the Complete Intake project
        arrOfPairs.push("PS_Classification__c", "Complete Immunology");
    }

    //set zPaper workflow fields on the case
    arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
    arrOfPairs.push("ZPAPER__newFax__c", "true");
    arrOfPairs.push("ZPAPER__faxType__c", zType); //AN20180712 during code review, pay attention to this
    arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //AN20180717 added this

    // TPM180813 changed to not attach doc to case record in zdocset
    createSFRecord(doc, "Case", "New fax received on " + formatNow, arrOfPairs);
}
/* END Create Stack from Fax */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
