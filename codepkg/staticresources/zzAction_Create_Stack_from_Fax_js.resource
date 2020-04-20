<!--
// Name: Create Stack from Fax
// Committer: andrew@zpaper.com
// Update: uypdate static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-04-08 20:49:01","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gQ3JlYXRlIFN0YWNrIGZyb20gRmF4ICovCnZhciBjcmVhdGVDYXNlID0gZmFsc2U7IC8vQU4yMDE4MDcxMiBmbGFnIHRvIHRyYWNrIGlmIHdlIHdhbnQgdG8gY3JlYXRlIGEgQ2FzZSBvciBub3QKdmFyIHN0YWNrTnVtYmVyOy8vID0gIiI7IC8vQU4yMDE5MDMwNSBtb3ZpbmcgZGVjbGFyYXRpb24gdG8gdG9wIG9mIHJ1bGUKdmFyIGF0dGFjaExhYmVsID0gIiI7CnZhciB6VHlwZSA9IGRvYy5YKCJYX2RvY1R5cGUiKTsKdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBjaGFubmVsID0gIkZheCI7CnZhciB6cEFyck9mUGFpcnMgPSBbXTsgLy9BTjIwMTgwNzEzIGRlY2xhcmluZyBhIHNlcGFyYXRlIGFycmF5IGZvciB1c2UgaW4gc2V0dGluZyB6UGFwZXIgZG9jIHNlY3VyaXR5CnZhciB6cCA9ICJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZQp2YXIgelN0YWNrID0genAgKyAielN0YWNrX19jIjsKdmFyIGFyck9mUGFpcnMgPSBbXTsKCnZhciBmcm9tRmlsZSA9IFgoZG9jLCAiWF9mcm9tRmlsZSIpOwovL0NSTjE5MDMwOCBIYW5kbGUgdXBsb2FkZWQgZmlsZXMgdmlhIExpZ2h0bmluZyBDb21wb25lbnQKaWYgKGZyb21GaWxlICYmIGZyb21GaWxlLmluZGV4T2YoImxpZ2h0bmluZ1VwbG9hZCIpID49IDApIHsKICAgIGZyb21GaWxlID0gZnJvbUZpbGUuc3Vic3RyaW5nKGZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsKICAgIHZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCItIik7CiAgICBpZiAocGFydHMubGVuZ3RoID49IDMpIHsKICAgICAgICB2YXIgYXR0YWNoVG9JZCA9IHBhcnRzWzJdOwogICAgICAgIGFsZXJ0KCJAQEAgVVBMT0FEOiBBVFRBQ0hJTkcgVE8gU0FMRVNGT1JDRSBSRUNPUkQgPSAiICsgYXR0YWNoVG9JZCk7CiAgICAgICAgdmFyIGxhYmVsID0gIkZpbGUgdXBsb2FkZWQgYnkgIiArIHBhcnRzWzBdOwogICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICB2YXIgYXJyT2ZQYWlyc0xvY2FsID0gW107CiAgICAgICAgYXJyT2ZQYWlyc0xvY2FsLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyc0xvY2FsKTsKICAgICAgICByZXR1cm47CiAgICB9Cn0KCi8vRVJTMTcwMzI4IGRvY1R5cGUgYnkgT0NSCnpEYXRhLmRvY1R5cGVPQ1IgPSB6RGF0YS5kb2NUeXBlcihkb2MsIHsKICAgICJQQVBQIjogIlBhdGllbnR+IEFzc2lzdGFuY2V+IiwKICAgICJQQVVUSCI6ICJQcmlvcn4gQXV0aG9yaXphdGlvbn4iLAogICAgIkVOUkwiOiAiRW5yb2xsbWVudH4iLAogICAgIkZBWCI6ICIiCn0pOwoKYWxlcnQoImRvY1R5cGUgd2FzICIgKyBkb2MuZG9jVHlwZSArICIgbm93ICIgKyB6RGF0YS5kb2NUeXBlT0NSKTsKaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlT0NSIiwgekRhdGEuZG9jVHlwZU9DUik7CiAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgIHpUeXBlID0gekRhdGEuZG9jVHlwZU9DUjsgLy9FUlMxNzAzMzAgc2F2ZWQgYmVsb3cgaW50byBTRiBmYXhUeXBlX19jIGZpZWxkCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKfQoKaWYgKGlzTmFOKGRvYy5kZWxpdmVyZWRGcm9tKSkgeyAvLyBOb3QgYSBOdW1iZXIgaXMgdHJ1ZQogICAgY2hhbm5lbCA9ICJFbWFpbCI7Cn0KCi8vQU4yMDE4MDcxMSB0aGlzIFpQIGJ1c2luc3MgY2FuIHByb2JhYmx5IGJlIHJlbW92ZWQgYW5kIHJlcGxhY2VkIHdpdGggdGhlIGNvcnJlY3QgbmFtZXNwYWNlCnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgImZheFR5cGVfX2MiLCB6VHlwZSk7CnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgIlByaW9yaXR5X19jIiwgIk1lZGl1bSIpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJTdGF0dXNfX2MiLCAiTmV3IFN0YWNrIik7CnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgIkNoYW5uZWxfX2MiLCBjaGFubmVsKTsKCi8vIE1TSDE3MTExNiB1c2luZyB6U3RhY2tfUmVjZWl2ZWRfX2MgaW5zdGVhZCBvZiBsYXRlc3RGYXhfX2MgYmVjYXVzZSBsYXRlc3RGYXhfX2MgZ2V0cyB1cGRhdGVkIGJ5IHNhdmUuanNwIGV2ZXJ5IHRpbWUgdGhlIHJlY29yZCBpcyB1cGRhdGVkCnpwQXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCBmb3JtYXROb3cpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJuZXdGYXhfX2MiLCAidHJ1ZSIpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKenBBcnJPZlBhaXJzLnB1c2goenAgKyAiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJzZW50RmF4VG9fX2MiLCBkb2MuZGVsaXZlcmVkVG8pOyAvL0VSUzE3MDYyOCBjYWxsZXIgaWQKenBBcnJPZlBhaXJzLnB1c2goenAgKyAiRnJvbV9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsKenBBcnJPZlBhaXJzLnB1c2goInpDYWxsZXJfSURfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7IC8vTVNIMTcwODE3IGFkZGVkCnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IC8vRVJTMTcwNzMxICM0MDU5MwoKYWxlcnQoIkBAQCBDbGFzc2lmaWNhdGlvbiA9ICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CgovL0FOMjAxODA3MTIgZm9yIGNvZGUgcmV2aWV3OiB3ZSBoYXZlIG11bHRpcGxlIElGIGl0ZXJhdGlvbnMgaW52b2x2aW5nIHpEYXRhLmNsYXNzaWZjYXRpb24uIENhbiB3ZSBjb21iaW5lIHRoZW0/CmlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiUEFQIikgeyAvL0FOMjAxODA2MDQgc2V0IFBBUCBxdWV1ZSBhbmQgcmVjb3JkIHR5cGUKICAgIGFsZXJ0KCJAQEAgZW50ZXJpbmcgUEFQIGxvZ2ljIik7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsICJQQVAiKTsgLy9BTjIwMTkwMzEyIHRlY2ggZGVidC4gTmVlZCB0byByZW1vdmUgYWxsIHJlZmVyZW5jZSB0byBDb21wbGV0ZSBJbW11bm9sb2d5IGFuZCByZXBsYWNlIHdpdGggQ29tcGxldGUgSW50YWtlLCBpbmNsdWRpbmcgcmVuYW1pbmcgb2YgdmFyaWFibGVzIGFuZCByZWNvcmQgdHlwZXMKICAgIGlmICh6RGF0YS5wYXBRdWV1ZUlkKSB6cEFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLnBhcFF1ZXVlSWQpOyAvL0VSUzE5MDkxMSBjaGVjayB2YWx1ZQogICAgenBBcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnBhcFN0YWNrUmVjb3JkVHlwZUlkKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJEcnVnX1R5cGVfX2MiLCAiSHVtaXJhIik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEucGFwR3JvdXBJZCArICI6Iik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS5wYXBHcm91cElkICsgIjoiKTsKICAgIGF0dGFjaExhYmVsID0gIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93OwogICAgY3JlYXRlQ2FzZSA9IGZhbHNlOwp9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJSSC1JbW11bm9sb2d5Iikgey8vQU4yMDE4MDYwNCBzZXQgUkgtSW1tdW5vbG9neSBxdWV1ZSBhbmQgcmVjb3JkIHR5cGUKICAgIGFsZXJ0KCJAQEAgZW50ZXJpbmcgUkgtSW1tdW5vbG9neSBsb2dpYyIpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiLCAiUkgtSW1tdW5vbG9neSIpOyAvL0FOMjAxOTAzMTIgdGVjaCBkZWJ0LiBOZWVkIHRvIHJlbW92ZSBhbGwgcmVmZXJlbmNlIHRvIENvbXBsZXRlIEltbXVub2xvZ3kgYW5kIHJlcGxhY2Ugd2l0aCBDb21wbGV0ZSBJbnRha2UsIGluY2x1ZGluZyByZW5hbWluZyBvZiB2YXJpYWJsZXMgYW5kIHJlY29yZCB0eXBlcwogICAgLy9pZiAoekRhdGEudmFsZXRRdWV1ZUlkKSB6cEFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLnZhbGV0UXVldWVJZCk7IC8vRVJTMTkwOTExIGNoZWNrIHZhbHVlIC8vQU4yMDIwMDQwMSByZW1vdmVkIGFzIHBhcnQgb2YgTWF5IDIwMjAgc3ByaW50CiAgICBpZiAoekRhdGEuRW5yb2xsbWVudFF1ZXVlSWQpIHpwQXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuRW5yb2xsbWVudFF1ZXVlSWQpOyAvL0FOMjAyMDA0MDEgYWRkZWQgYXMgcGFydCBvZiBNYXkgMjAyMCBzcHJpbnQKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS52YWxldFN0YWNrUmVjb3JkVHlwZUlkKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJEcnVnX1R5cGVfX2MiLCAiSHVtaXJhIik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEudmFsZXRHcm91cElkICsgIjoiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsICI6IiArIHpEYXRhLnZhbGV0R3JvdXBJZCArICI6Iik7CiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKICAgIGNyZWF0ZUNhc2UgPSB0cnVlOwp9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJBUkNDIikgey8vQU4yMDE4MDYwNCBzZXQgQVJDQyBxdWV1ZSBhbmQgSW1tdW5vbG9neSByZWNvcmQgdHlwZQogICAgYWxlcnQoIkBAQCBlbnRlcmluZyBBUkNDIGxvZ2ljIik7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsICJSSC1JbW11bm9sb2d5Iik7IC8vQU4yMDE5MDMxMiB0ZWNoIGRlYnQuIE5lZWQgdG8gcmVtb3ZlIGFsbCByZWZlcmVuY2UgdG8gQ29tcGxldGUgSW1tdW5vbG9neSBhbmQgcmVwbGFjZSB3aXRoIENvbXBsZXRlIEludGFrZSwgaW5jbHVkaW5nIHJlbmFtaW5nIG9mIHZhcmlhYmxlcyBhbmQgcmVjb3JkIHR5cGVzCiAgICAvL3pwQXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuQVJDQ1F1ZXVlSWQpOyAvL0FOMjAyMDA0MDEgcmVtb3ZlZCBhcyBwYXJ0IG9mIE1heSAyMDIwIHNwcmludAogICAgenBBcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5JbW1BdXRoUXVldWVJZCk7IC8vQU4yMDIwMDQwMSBhZGRlZCBhcyBwYXJ0IG9mIE1heSAyMDIwIHNwcmludAogICAgenBBcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnZhbGV0U3RhY2tSZWNvcmRUeXBlSWQpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIkRydWdfVHlwZV9fYyIsICJIdW1pcmEiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS52YWxldEdyb3VwSWQgKyAiOiIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEudmFsZXRHcm91cElkICsgIjoiKTsKICAgIGF0dGFjaExhYmVsID0gIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93OwogICAgY3JlYXRlQ2FzZSA9IHRydWU7Cn0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkNvbXBsZXRlIEltbXVub2xvZ3kiKSB7Ly9BTjIwMTgwNjA0IHNldCBDb21wbGV0ZSBJbW11bm9sb2d5IHF1ZXVlIGFuZCBDb21wbGV0ZSBJbnRha2UgcmVjb3JkIHR5cGUKICAgIGFsZXJ0KCJAQEAgZW50ZXJpbmcgQ29tcGxldGUgSW1tdW5vbG9neSBsb2dpYyIpOwogICAgYWxlcnQoIkBAQCB6RGF0YS5jb21wSW1tU3RhY2tSZWNvcmRUeXBlSWQgPSAiICsgekRhdGEuY29tcEltbVN0YWNrUmVjb3JkVHlwZUlkKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgIkNvbXBsZXRlIEludGFrZSIpOyAvL0FOMjAxOTAzMTIgdGVjaCBkZWJ0LiBOZWVkIHRvIHJlbW92ZSBhbGwgcmVmZXJlbmNlIHRvIENvbXBsZXRlIEltbXVub2xvZ3kgYW5kIHJlcGxhY2Ugd2l0aCBDb21wbGV0ZSBJbnRha2UsIGluY2x1ZGluZyByZW5hbWluZyBvZiB2YXJpYWJsZXMgYW5kIHJlY29yZCB0eXBlcwogICAgaWYgKHpEYXRhLmNvbXBJbW1RdWV1ZUlkKSB6cEFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLmNvbXBJbW1RdWV1ZUlkKTsgLy9FUlMxOTA5MTEKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5waGFybVN0YWNrUmVjb3JkVHlwZUlkKTsgLy9BTjIwMTkwMzI3IGZpcnN0IGNyZWF0ZWQgc3RhY2sgc2hvdWxkIGJlIGZvciB0aGUgUGhhcm1hY2lzdAogICAgLy96cEFyck9mUGFpcnMucHVzaCgiRHJ1Z19UeXBlX19jIiwgIlNreXJpemkiKTsgLy9BTjIwMTkxMTA2IHdlIG5vdyBoYXZlIG11bHRpcGxlIENvbXBsZXRlIEludGFrZSBwcm9ncmFtcywgc28gRHJ1ZyBUeXBlIHdpbGwgYmUgZW50ZXJlZCBieSB0aGUgdXNlcgogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsICI6IiArIHpEYXRhLnBoYXJtR3JvdXBJZCArICI6Iik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS5waGFybUdyb3VwSWQgKyAiOiIpOwogICAgYXR0YWNoTGFiZWwgPSAiTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3c7CiAgICBjcmVhdGVDYXNlID0gdHJ1ZTsKfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiT3JpYWhubiIpIHsvL0FOMjAxODA2MDQgc2V0IE9yaWFobm4gLyBPcmlYIC8gV29tZW4ncyBIZWFsdGggcXVldWUgYW5kIGxvZ2ljCiAgICBhbGVydCgiQEBAIGVudGVyaW5nIE9yaWFobm4gbG9naWMiKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgIlJILUltbXVub2xvZ3kiKTsgLy9BTjIwMTkwMzEyIHRlY2ggZGVidC4gTmVlZCB0byByZW1vdmUgYWxsIHJlZmVyZW5jZSB0byBDb21wbGV0ZSBJbW11bm9sb2d5IGFuZCByZXBsYWNlIHdpdGggQ29tcGxldGUgSW50YWtlLCBpbmNsdWRpbmcgcmVuYW1pbmcgb2YgdmFyaWFibGVzIGFuZCByZWNvcmQgdHlwZXMKICAgIGlmICh6RGF0YS5XSGVhbHRoUXVldWVJZCkgenBBcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5XSGVhbHRoUXVldWVJZCk7IC8vQU4yMDIwMDQwMSBhZGRlZCBhcyBwYXJ0IG9mIE1heSAyMDIwIHNwcmludAogICAgCiAgICAvL2lzIHRoaXMgcmlnaHQ/IGRvZXMgaXQgd29yaz8KICAgIAogICAgenBBcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLnZhbGV0U3RhY2tSZWNvcmRUeXBlSWQpOwogICAgenBBcnJPZlBhaXJzLnB1c2goIkRydWdfVHlwZV9fYyIsICJPUklBSE5OIik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEudmFsZXRHcm91cElkICsgIjoiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsICI6IiArIHpEYXRhLnZhbGV0R3JvdXBJZCArICI6Iik7CiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKICAgIGNyZWF0ZUNhc2UgPSB0cnVlOyAgICAKCn0KCnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCBhdHRhY2hMYWJlbCwgenBBcnJPZlBhaXJzKTsKdmFyIG9yaWdpbmFsU3RhY2tJZCA9IHNmSWQ7CnN0YWNrTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsIHpTdGFjaywgIk5hbWUiLCBudWxsLCBzZklkKTsKYWxlcnQoIiMjIyMgU3RhY2sgUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CgphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsIHNmSWQpOyAvL0VSUzE3MDcyNyAjNDA0NDcKYXJyT2ZQYWlycy5wdXNoKCJYX1N0YWNrX051bWJlciIsIHN0YWNrTnVtYmVyKTsKCi8vYXNzaWduIGRvYyBzZWN1cml0eS4gVmFyaWFibGVzIGFyZSBiYXNlZCBvbiB0aGUgaW5ib3VuZCBmYXggbGluZQphbGVydCgiQEBAIG1hc3RlciBJRCBpcyA9ICIgKyBkb2Mua2JEYXRhLmdyb3VwSUQpOwphbGVydCgiQEBAIFBBUCBncm91cCBJRCBpcyA9ICIgKyB6RGF0YS5wYXBHcm91cElkKTsKYWxlcnQoIkBAQCBSSC1JbW11bm9sb2d5IGdyb3VwIElEIGlzID0gIiArIHpEYXRhLnZhbGV0R3JvdXBJZCk7CmFsZXJ0KCJAQEAgQ29tcGxldGUgSW1tdW5vbG9neSBncm91cCBJRCBpcyA9ICIgKyB6RGF0YS5jb21wSW50R3JvdXBJZCk7CmFsZXJ0KCJ6RGF0YS5jbGFzc2lmaWNhdGlvbiBpcyAiICsgekRhdGEuY2xhc3NpZmljYXRpb24pOwoKLy9DUk4xODA3MjYgQ2FzZSAjNTA0NjkgLS0gU2V0IHRoZSAiUmVjZWl2ZWQiIGNoZWNrYm94CnZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSwgdHJ1ZSk7CmFsZXJ0KCIkJCQgbm93MCA9ICIgKyBub3cwKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIlJlY2VpdmVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgphbGVydCgiQEBAIHpEYXRhLmNsYXNzaWZpY2F0aW9uMTIzIDoiICsgekRhdGEuY2xhc3NpZmljYXRpb24pOwoKLy9DUk4xOTAyMjYgQ3JlYXRlIGNvcHkgb2Ygb3JpZ2luYWwgc3RhY2sgLSB3ZSB1c2UgenBBcnJPZlBhaXJzIGFzIGl0IGFscmVhZHkgY29udGFpbnMgbW9zdCBvZiB0aGUgZGF0YSB0aGF0IHdlIG5lZWQKLy9BTiAyMDE5MDIyOCBvbmx5IHNob3VsZCBkbyB0aGlzIGZvciB0aGUgQ29tcGxldGUgSW1tdW5vbG9neSBwcm9ncmFtCmlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiQ29tcGxldGUgSW1tdW5vbG9neSIpIHsKICAgIGFsZXJ0KCJAQEAgY3JlYXRpbmcgY29weSBvZiB6U3RhY2sgZm9yIENvbXBsZXRlIEltbXVub2xvZ3kgcHJvZ3JhbSIpOwoKICAgIHZhciBvcmcyb3JnQ1MgPSBkb2Mua2JEYXRhLmN1c3RvbVNldHRpbmdzOyAvL0VSUzE5MDQxMSAjNTc4ODEKICAgIGFsZXJ0KCJFUlMxOTA0MTEgQ1MgYSAiICsgKHR5cGVvZiBvcmcyb3JnQ1MpICsgIiBoYXMgIiArIG9yZzJvcmdDUyk7CiAgICBpZiAob3JnMm9yZ0NTKSB7CiAgICAgICAgekRhdGEud2F0ZXJtYXJrID0gIiIgKyBYQ3VzdG9tU2V0dGluZyhkb2MsICJ3YXRlcm1hcmtfX2MiKTsKICAgICAgICBhbGVydCgiRVJTMTkwNDExIHdtPSIgKyB6RGF0YS53YXRlcm1hcmsgKyAiIFpQQVBFUl9fc2VydmVyX19jPSIgKyBYQ3VzdG9tU2V0dGluZyhkb2MsICJaUEFQRVJfX3NlcnZlcl9fYyIpKTsKICAgICAgICBpZiAoIXpEYXRhLndhdGVybWFyayB8fCB6RGF0YS53YXRlcm1hcmsgPT0gInVuZGVmaW5lZCIpIHsKICAgICAgICAgICAgekRhdGEud2F0ZXJtYXJrID0gIiI7CiAgICAgICAgfQogICAgfQoKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciBwYWdlQ291bnQgPSBYKGRvYywgIlhfcGFnZXMiKTsKICAgIHZhciBwYWdlUmFuZ2UgPSAiMS0iICsgcGFnZUNvdW50OwogICAgYWxlcnQoIkBAQCBwYWdlUmFuZ2UgPT09ICIgKyBwYWdlUmFuZ2UpOwogICAgLy8gcHYwMjI1MTggbWFya3VwIG9uIG5vbiBwaGFybWFjaXN0IHBhZ2VzLgogICAgdmFyIHdhdGVybWFyayA9ICInYWRkVGV4dCcsMTAsMSw4NzUsMTQ4MCwnQ09QWScsJzI0cHgnJyI7IC8vRVJTMTkwNDExICM1Nzg4MS4KICAgIGlmICh6RGF0YS53YXRlcm1hcmsgJiYgekRhdGEud2F0ZXJtYXJrICE9ICIiKSB7IC8vRVJTMTkwNDExIGdldCBmcm9tIHRoZSBjdXN0b20gc2V0dGluZwogICAgICAgIHdhdGVybWFyayA9IHpEYXRhLndhdGVybWFyazsKICAgIH0KCiAgICB2YXIgYnVmZmVyID0gIiI7CiAgICBmb3IgKHZhciBpID0gMTsgaSA8PSBwYWdlQ291bnQ7IGkrKykgewogICAgICAgIHZhciBjdXJUaW1lID0gbmV3IERhdGUoKS5nZXRUaW1lKCk7CiAgICAgICAgLy9BTjIwMTkwMzExIHBsYWNlIHRoZSB3b3JkIENPUFkgb24gZWFjaCBwYWdlIG9mIHRoZSBjb3B5IGRvY3VtZW50CiAgICAgICAgYnVmZmVyICs9ICJrYm0oJ0lNRyIgKyBjdXJUaW1lICsgIicsJ1BBR0UiICsgaSArICJJTUciICsgY3VyVGltZSArICInLCIgKyB3YXRlcm1hcmsgKyAiKTsiOwogICAgfQogICAgYWxlcnQoIkBAQEAgb3JpZ2luYWwgZGJJRCA9ICIgKyBkb2MuZGJJRCk7CiAgICBhbGVydCgiQEBAQCBNQVJLVVAgPSAiICsgYnVmZmVyKTsKICAgIGFsZXJ0KCJAQEBAIE9yaWdpbmFsIFN0YWNrIElkOiAiICsgb3JpZ2luYWxTdGFja0lkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9tYXJrdXAiLCBidWZmZXIpOwoKICAgIC8vRVJTIDE5MDQxMSBpbnN0ZWFkIG9mIHNwbGl0IHRoZW4gd2F0ZXJtYXJrLCB3YXRlcm1hcmsgc2VuZCB0byBmbGF0dGVuLCBhbmQgcmVtb3ZlIHdhdGVybWFyayBmcm9tIG9yaWdpbmFsCiAgICAvL0VSUzE5MDQxMSAjNTc4ODEgZmxhdHRlbiB3aXRoIFNGX3NlbmRGYXguanNwIGFuZCB1c2UgdGhhdCBuZXcgZGJJRAogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgIHZhciBmbGF0VVJMID0gImh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9rYi9qc3AvU0Zfc2VuZEZheC5qc3A/ZmF4VG89UERGQCIgKyBzZklkICsgIiZTRmlkcz0iICsgc2ZJZCArICImbW9kZT1maWxlUERGIjsKICAgIGFsZXJ0KCJFUlMxOTA0MTEgVVJMPSIgKyBmbGF0VVJMKTsKICAgIHZhciBzZk9yZ0lEID0gZG9jLmtiRGF0YS5zZk9yZ2FuaXphdGlvbklEOyAvL1RPRE8gQ1JOIHRoZXJlIGlzIGEgU0ZTZXNzaW9uIGhlcmUgaW5zdGVhZAogICAgaWYgKCFzZk9yZ0lEIHx8IHNmT3JnSUQubGVuZ3RoID4gMTgpIHsgLy9FUlMxOTA5MTEgIzYzMDcxID4xOAogICAgICAgIHNmT3JnSUQgPSBkb2Mua2JEYXRhLnNmU2Vzc2lvbklELnN1YnN0cmluZygwLCBkb2Mua2JEYXRhLnNmU2Vzc2lvbklELmluZGV4T2YoIiEiKSk7IC8vRVJTMTkwOTExICM2MzA3MQogICAgfQogICAgZmxhdFVSTCArPSAiJlNGb3JnPSIgKyBzZk9yZ0lEICsgIiZTRnNlc3Npb249IiArIGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQ7CiAgICBmbGF0VVJMICs9ICImU0ZzZXJ2ZXI9IisgZG9jLmtiRGF0YS5zZlNlcnZlcjsgLy9FUlMxOTA5MTEgIzYzMDcxCiAgICBmbGF0VVJMICs9ICImY292ZXJJRDI9bm9CYXJjb2RlJmNvdmVySUQ9IiArIGRvYy5kYklEOyAvL25ld1NuaXBwZXRJZCBmb3IgYmFyY29kZSBpZiB3ZSB3YW50IHdlIGNhbiByZW1vdmUoY292ZXJJRDI9bm9CYXJjb2RlKQogICAgZmxhdFVSTCArPSAiJlNGdHlwZT1aUEFQRVJfX3pTdGFja19fYyI7ICAvL0VSUzE5MDQxMSBUT0RPIGJldHRlciBtaXNzaW5nIHBhcmFtZXRlcnMKICAgIGFsZXJ0KCJFUlMxOTA0MTEgZmxhdHRlbiB3aXRoICIgKyBmbGF0VVJMKTsKICAgIHZhciBmbGF0RGF0YTsKICAgIHZhciBmbGF0SWQ9IiI7CiAgICB2YXIgekhlYWRlcnM9WyJhdXRob3JpemF0aW9uIiwiWlBBUEVSIFdHRVQiXTsgLy9FUlMxOTA5MTEgVE9ETyBieSBTdGV2ZSBhIG5pY2UgbWVhbCBvdXQgLSBjYXNlIFJFQUxMWSBtYXR0ZXJzCiAgICBmb3IgKHZhciB4ID0gMDsgeCA8IDI7IHgrKykgeyAvL0VSUzE5MDkxMSBUT0RPIDIgRE9ORQogICAgICAgIHRyeSB7CiAgICAgICAgICAgIGZsYXREYXRhID0gIiIrd2dldChkb2MsIGZsYXRVUkwsIFtdLCB6SGVhZGVycyk7IC8vU0Zfc2VuZEZheC5qc3AgaXMgcmV0dXJuaW5nIGEgemlwcGkgaWQgLy9ubyAsIG51bGwsIG51bGwKICAgICAgICB9IGNhdGNoIChlKSB7CiAgICAgICAgICAgIGFsZXJ0KCIjNTg1MDQgd2dldCBmYWlsZWQgd2l0aCAiK2ZsYXRVUkwrIiBleGNlcHRpb246IitlKTsgLy9FUlMxOTA5MTAKICAgICAgICB9CQogICAgICAgIAogICAgICAgIGlmIChmbGF0RGF0YSAmJiBmbGF0RGF0YS5sZW5ndGggPiAwKSB7CiAgICAgICAgICAgIGZsYXRJZCA9IFgoZG9jLCAiemlwcGkiLCBmbGF0RGF0YSk7CiAgICAgICAgfQogICAgICAgIGFsZXJ0KCJFUlMxOTA0MTEgeD0iK3grIiBmbGF0dGVuZWQgdG8gIiArIGZsYXRJZCArICIgbGVuPSIgKyBmbGF0SWQubGVuZ3RoKTsgLy8rICIgZnJvbSAiK2ZsYXREYXRhKTsKICAgICAgICBhbGVydCgiRVJTMTkwNDEyLDA5MTFCIGEgIiArICh0eXBlb2YgZmxhdElkKSsiIGZyb20gemlwcGkgaW4gIisgWChkb2MsICJ6aXBwaSIsIGZsYXREYXRhKSArIiB3Z2V0IHJldHVybmVkICIrZmxhdERhdGEubGVuZ3RoKyIgd2l0aCAiK3pIZWFkZXJzKTsgLy9FUlMxOTA5MTEKICAgICAgICBpZiAoZmxhdElkLmluZGV4T2YoInsiKSA9PSAwKSB7CiAgICAgICAgICAgIHZhciBmbGF0SXRlbSA9IEpTT04ucGFyc2UoZmxhdElkKTsKICAgICAgICAgICAgZmxhdElkID0gZmxhdEl0ZW1bJ0l0ZW0nXTsKICAgICAgICB9CiAgICAgICAgYWxlcnQoIkVSUzE5MDkxMSAjNjMwNzEgZmxhdElkPSIrZmxhdElkKTsKICAgICAgICBpZiAoZmxhdElkKSB7YnJlYWs7fSAvL0VSUzE5MDkxMQogICAgfQoKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9tYXJrdXAiLCAiIik7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgYWxlcnQoIjIyNSIpOwoKICAgIGlmICghZmxhdElkIHx8IChmbGF0SWQrIiIpLmxlbmd0aCA8IDE1KSB7CiAgICAgICAgYWxlcnQoIkVSUzE5MDkxMCAjNTg1MDQgc3RpbGwgbm8gZmxhdElkISEgIENhc2UgY3JlYXRlZCBmcm9tIGVtYWlsLiIpOwogICAgICAgIHJldHVybjsKICAgIH0gZWxzZSB7CiAgICB2YXIgY29weUxhYmVsID0gIkNvcHkgb2YgIiArIGRvYy5sYWJlbDsgLy9UT0RPIHVwZGF0ZSB0aGUgZmxhdHRlbiBkb2MgbGFiZWwKICAgIGFsZXJ0KCIyMzE6IHNldHRpbmcgZG9jdW1lbnQgY29udGV4dCB0byBkYklEOiAiICsgZmxhdElkKTsKICAgIHNldERvY3VtZW50Q29udGV4dChkb2MsIGZsYXRJZCk7IC8vRVJTMTkwNDEyIFdBUk4gV0FSTiBXQVJOIGRvYyBpcyB0aGUgQ09QWSBkb2MKICAgIGFsZXJ0KCIyMzMiKTsKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBjb3B5TGFiZWwpOwogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgIGFsZXJ0KCIyMzciKTsKICAgIH0KICAgIAogICAgYWxlcnQoIkBAQEAgYWZ0ZXIgc3BsaXR0aW5nIFNuaXBwZXQsIGRiSUQgPSAiICsgZG9jLmRiSUQpOwogICAgdmFyIGNvcHlTZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCAiQ29weSBvZiBOZXcgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdywgenBBcnJPZlBhaXJzKTsKICAgIGFsZXJ0KCJTdGFjayBJZCBmb3IgY29weSBzdGFjayA9ICIgKyBjb3B5U2ZJZCk7CgogICAgdmFyIGNvcHlTdGFja051bWJlciA9IGdldFNGRmllbGQoZG9jLCB6U3RhY2ssICJOYW1lIiwgbnVsbCwgY29weVNmSWQpOyAgLy9DUk4xOTAzMjEgTWFrZSBzdXJlIHRoYXQgdGhlIGNvcHkgaXMgaW5kZXhlZCBjb3JyZWN0bHkKICAgIGFsZXJ0KCJAQEAgY29weVN0YWNrTnVtYmVyID0gIiArIGNvcHlTdGFja051bWJlcik7CiAgICAvL0NSTjE5MDIyNiBGaXggdGhlIHJlY2VpdmVkSWRfX2MgZmllbGQgKHdhcyBzZXQgd2l0aCBvcmlnaW5hbCBpZCkKICAgIGFyck9mUGFpcnMgPSBbXTsKCiAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLmNvbXBJbW1TdGFja1JlY29yZFR5cGVJZCk7IC8vQU4yMDE5MDMwNiB0ZWNoIGRlYnQuIEkgYXR0ZW1wdGVkIHRvIHNldCB0aGlzIHJlY29yZCB0eXBlIHdoZW4gY3JlYXRpbmcgdGhlIFN0YWNrIGJ1dCBpdCB0aGF0IGRpZG4ndCB3b3JrIGFzIGV4cGVjdGVkLiBDaGFuZ2luZyB0aGUgcmVjb3JkIHR5cGUgYWZ0ZXIgcmVjb3JkIGNyZWF0aW9uIHdvcmtzIGJ1dCBpcyBjbHVua3kgYW5kIHRlY2gtZGVidHkgYW5kIGtsdWRnZXkKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCB6U3RhY2ssIGNvcHlTZklkLCBhcnJPZlBhaXJzKTsKICAgIC8vQ1JOMTkwMjI2IGFsc28gZml4IHRoZSBYX3NmU3RhY2tJZCBmaWVsZAogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsIGNvcHlTZklkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgY29weVNmSWQpOyAvL0VSUzE5MDQxMiAjNTc4ODEKICAgIGFyck9mUGFpcnMucHVzaCgiWF9TdGFja19OdW1iZXIiLCBjb3B5U3RhY2tOdW1iZXIpOwoKICAgIC8vQU4yMDE5MDMyNyBzZXQgdGhlIGRvYyBzZWN1cml0eSBmb3IgQ29tcGxldGUgSW50YWtlIGdyb3VwCiAgICBhbGVydCgiQEBAIHNldHRpbmcgZG9jdW1lbnQgc2VjdXJpdHkgZm9yIENvbXBsZXRlIEludGFrZSIgKyB6RGF0YS5waGFybUdyb3VwSWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsICI6IiArIHpEYXRhLmNvbXBJbnRHcm91cElkICsgIjoiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsICI6IiArIHpEYXRhLmNvbXBJbnRHcm91cElkICsgIjoiKTsKCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgLy9DUk4xOTAyMjYgTWFrZSBzdXJlIGl0IGlzIGFsc28gaW4gdGhlIGNvcnJlY3QgaW5jb21pbmcgZm9sZGVyCiAgICB2YXIgaW5jb21pbmdGb2xkZXIgPSBkb2Mua2JEYXRhLmdyb3VwSUQuc3Vic3RyaW5nKDEpICsgIkluIjsKICAgIGFsZXJ0KCIjIyMgaW5jb21pbmdGb2xkZXIgPSAiICsgaW5jb21pbmdGb2xkZXIpOwogICAgbW92ZURvY3VtZW50KGRvYywgbnVsbCwgaW5jb21pbmdGb2xkZXIpOwoKICAgIC8vdXBkYXRlIHRoZSBvcmlnaW5hbCB6U3RhY2sgYW5kIG1ha2UgaXQgYSBjaGlsZCBvZiB0aGUgY29weSB0aGF0IHdlIGp1c3QgY3JlYXRlZAogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhcmVudF9fYyIsIG9yaWdpbmFsU3RhY2tJZCk7Ly8gUFYxOTA0MTYgdXBkYXRlZCBmb3IgUGhhcm1hY3kgU2VydmljZXMgU3RhY2sgc2hvdWxkIHVwZGF0ZSBvbiBJbnRha2UgU3RhY2sKICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfT3JnaW5hbF9TdGFja19sb29rdXBfX2MiLCBzZklkKTsKICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgelN0YWNrLCBjb3B5U2ZJZCwgYXJyT2ZQYWlycyk7Cn0KCmFsZXJ0KCJAQEAgY3JlYXRlIGNhc2UxMjMiICsgY3JlYXRlQ2FzZSk7CmlmIChjcmVhdGVDYXNlID09PSB0cnVlKSB7IC8vIFBWMTkwMzIxIGNyZWF0ZSBhIENhc2UgaWYgdGhpcyBpcyBub3QgYSBQQVAgZG9jdW1lbnQKICAgIGFsZXJ0KCJAQEAgZW50ZXJpbmcgY3JlYXRlQ2FzZSBsb2dpYyIpOwogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCAiTmV3Iik7CiAgICBhcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsICJGYXggLyBIQ1AiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLCAiU3RhbmRhcmQiKTsKICAgIC8vQU4yMDA4MDcxNyBsaW5rIHRvIHBhcmVudCB6U3RhY2sKICAgIGlmIChjb3B5U2ZJZCkgewogICAgICAgIGFyck9mUGFpcnMucHVzaCgielN0YWNrX19jIiwgY29weVNmSWQpOwogICAgfSBlbHNlIHsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goInpTdGFja19fYyIsIHNmSWQpOyAvL0FOMjAwODA3MTcgbGluayB0byBwYXJlbnQgelN0YWNrCiAgICB9CgogICAgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJSSC1JbW11bm9sb2d5IikgewogICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEudmFsZXRRdWV1ZUlkKTsgLy9BTjIwMjAwNDAxIHJlbW92ZWQgYXMgcGFydCBvZiBNYXkgMjAyMCBzcHJpbnQKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5FbnJvbGxtZW50UXVldWVJZCk7IC8vQU4yMDIwMDQwMSBhZGRlZCBhcyBwYXJ0IG9mIE1heSAyMDIwIHNwcmludAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEudmFsZXRDYXNlUmVjb3JkVHlwZUlkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0Nhc2VTdWJUeXBlX19jIiwgIkJWIEZ1bGwiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX1JlYXNvbkNvZGVfX2MiLCAiTm9uZSIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQ2xhc3NpZmljYXRpb25fX2MiLCAiUkgtSW1tdW5vbG9neSIpOwogICAgfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiQVJDQyIpIHsKICAgICAgICAvL2Fyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuZGVuaWFsU3VwcG9ydENhc2VSZWNvcmRUeXBlSWQpOyAvL0FOMjAxOTEyMzAgdXBkYXRlZCBkdXJpbmcgRmVicnVhcnkgMjAyMCBzcHJpbnQsIHRoZW4gcmVtb3ZlZCBkdXJpbmcgTWF5IDIwMjAgc3ByaW50CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5hdXRoU3VwcG9ydENhc2VSZWNvcmRUeXBlSWQpOyAvL0FOMjAyMDA0MDEgYWRkZWQgZHVyaW5nIE1heSAyMDIwIHNwcmludAogICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuQVJDQ1F1ZXVlSWQpOyAvL0FOMjAyMDA0MDEgcmVtb3ZlZCBkdXJpbmcgTWF5IDIwMjAgc3ByaW50CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuSW1tQXV0aFF1ZXVlSWQpOwogICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJQU19DYXNlU3ViVHlwZV9fYyIsICJQcmlvciBBdXRob3JpemF0aW9uIik7IC8vQU4yMDE5MTIzMCByZW1vdmVkIGR1cmluZyBGZWJydWFyeSAyMDIwIHNwcmludCwgdGhlbiByZW1vdmVkIGR1cmluZyBNYXkgMjAyMCBzcHJpbnQKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0Nhc2VTdWJUeXBlX19jIiwgIkRlbmlhbCIpOyAvL0FOMjAxOTEyMzAgYWRkZWQgZHVyaW5nIEZlYnJ1YXJ5IDIwMjAgc3ByaW50LCB0aGVuIHJlbW92ZWQgZHVyaW5nIE1heSAyMDIwIHNwcmludAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfUmVhc29uQ29kZV9fYyIsICJOb25lIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DbGFzc2lmaWNhdGlvbl9fYyIsICJSSC1JbW11bm9sb2d5Iik7CiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJDb21wbGV0ZSBJbW11bm9sb2d5IikgewogICAgICAgIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLmNvbXBJbnRRdWV1ZUlkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLmNvbXBJbnRDYXNlUmVjb3JkVHlwZUlkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0Nhc2VTdWJUeXBlX19jIiwgIkVucm9sbG1lbnQiKTsKICAgICAgICAvL0FOMjAxOTA0MTIgY2hhbmdlIHJlcXVlc3QgcGVyIFZlbmthdCBkdXJpbmcgdGhlIENvbXBsZXRlIEludGFrZSBwcm9qZWN0CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DbGFzc2lmaWNhdGlvbl9fYyIsICJDb21wbGV0ZSBJbW11bm9sb2d5Iik7CiAgICB9CiAgICBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiT3JpYWhubiIpIHsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5XSGVhbHRoUXVldWVJZCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5hdXRoU3VwcG9ydENhc2VSZWNvcmRUeXBlSWQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQ2FzZVN1YlR5cGVfX2MiLCAiRGVuaWFsIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DbGFzc2lmaWNhdGlvbl9fYyIsICJSSC1JbW11bm9sb2d5Iik7CiAgICB9CgogICAgLy9zZXQgelBhcGVyIHdvcmtmbG93IGZpZWxkcyBvbiB0aGUgY2FzZQogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2ZheFR5cGVfX2MiLCB6VHlwZSk7IC8vQU4yMDE4MDcxMiBkdXJpbmcgY29kZSByZXZpZXcsIHBheSBhdHRlbnRpb24gdG8gdGhpcwogICAgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL0FOMjAxODA3MTcgYWRkZWQgdGhpcwoKICAgIC8vIFRQTTE4MDgxMyBjaGFuZ2VkIHRvIG5vdCBhdHRhY2ggZG9jIHRvIGNhc2UgcmVjb3JkIGluIHpkb2NzZXQKICAgIGNyZWF0ZVNGUmVjb3JkKGRvYywgIkNhc2UiLCAiTmV3IGZheCByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93LCBhcnJPZlBhaXJzKTsKfQovKiBFTkQgQ3JlYXRlIFN0YWNrIGZyb20gRmF4ICov"},"ordinal":21}

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
} else if (zData.classification == "Oriahnn") {//AN20180604 set Oriahnn / OriX / Women's Health queue and logic
    alert("@@@ entering Oriahnn logic");
    zpArrOfPairs.push("ZPAPER__Classification__c", "RH-Immunology"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types
    if (zData.WHealthQueueId) zpArrOfPairs.push("OwnerId", zData.WHealthQueueId); //AN20200401 added as part of May 2020 sprint
    
    //is this right? does it work?
    
    zpArrOfPairs.push("RecordTypeId", zData.valetStackRecordTypeId);
    zpArrOfPairs.push("Drug_Type__c", "ORIAHNN");
    arrOfPairs.push("db-users", ":" + zData.valetGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.valetGroupId + ":");
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
        //arrOfPairs.push("OwnerId", zData.valetQueueId); //AN20200401 removed as part of May 2020 sprint
        arrOfPairs.push("OwnerId", zData.EnrollmentQueueId); //AN20200401 added as part of May 2020 sprint
        arrOfPairs.push("RecordTypeId", zData.valetCaseRecordTypeId);
        arrOfPairs.push("PS_CaseSubType__c", "BV Full");
        arrOfPairs.push("PS_ReasonCode__c", "None");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology");
    } else if (zData.classification == "ARCC") {
        //arrOfPairs.push("RecordTypeId", zData.denialSupportCaseRecordTypeId); //AN20191230 updated during February 2020 sprint, then removed during May 2020 sprint
        arrOfPairs.push("RecordTypeId", zData.authSupportCaseRecordTypeId); //AN20200401 added during May 2020 sprint
        //arrOfPairs.push("OwnerId", zData.ARCCQueueId); //AN20200401 removed during May 2020 sprint
        arrOfPairs.push("OwnerId", zData.ImmAuthQueueId);
        //arrOfPairs.push("PS_CaseSubType__c", "Prior Authorization"); //AN20191230 removed during February 2020 sprint, then removed during May 2020 sprint
        arrOfPairs.push("PS_CaseSubType__c", "Denial"); //AN20191230 added during February 2020 sprint, then removed during May 2020 sprint
        arrOfPairs.push("PS_ReasonCode__c", "None");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology");
    } else if (zData.classification == "Complete Immunology") {
        arrOfPairs.push("OwnerId", zData.compIntQueueId);
        arrOfPairs.push("RecordTypeId", zData.compIntCaseRecordTypeId);
        arrOfPairs.push("PS_CaseSubType__c", "Enrollment");
        //AN20190412 change request per Venkat during the Complete Intake project
        arrOfPairs.push("PS_Classification__c", "Complete Immunology");
    }
    else if (zData.classification == "Oriahnn") {
        arrOfPairs.push("OwnerId", zData.WHealthQueueId);
        arrOfPairs.push("RecordTypeId", zData.authSupportCaseRecordTypeId);
        arrOfPairs.push("PS_CaseSubType__c", "Denial");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology");
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
