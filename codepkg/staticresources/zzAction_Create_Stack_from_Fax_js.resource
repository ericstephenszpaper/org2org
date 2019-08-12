<!--
// Name: Create Stack from Fax
// Committer: andrew@zpaper.com
// Update: updating static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-07-16 18:50:18","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9DUk4xOTAzMDggSGFuZGxlIHVwbG9hZGVkIGZpbGVzIHZpYSBMaWdodG5pbmcgQ29tcG9uZW50Ci8vIDxYX2Zyb21GaWxlPi96cGRhdGEvYWdlbnRzL3JvdXRlQWdlbnQvaW5jb21pbmcvbGlnaHRuaW5nVXBsb2FkL3pwYXBlckBhYmJ2aWUuY29tLnBzZGV2LWxpZ2h0bmluZ1VwbG9hZC01MDAxaDAwMDAwM3RlYnRBQUEtVGVzdFRpdGxlUGFnZS5wZGY8L1hfZnJvbUZpbGU+CnZhciBmcm9tRmlsZSA9IFgoZG9jLCAiWF9mcm9tRmlsZSIpOwppZiAoZnJvbUZpbGUgJiYgZnJvbUZpbGUuaW5kZXhPZigibGlnaHRuaW5nVXBsb2FkIikgPj0gMCkgewogICAgZnJvbUZpbGUgPSBmcm9tRmlsZS5zdWJzdHJpbmcoZnJvbUZpbGUubGFzdEluZGV4T2YoJy8nKSArIDEpOwogICAgdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoIi0iKTsKICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gMykgewogICAgICAgIHZhciBhdHRhY2hUb0lkID0gcGFydHNbMl07CiAgICAgICAgYWxlcnQoIkBAQCBVUExPQUQ6IEFUVEFDSElORyBUTyBTQUxFU0ZPUkNFIFJFQ09SRCA9ICIgKyBhdHRhY2hUb0lkKTsKICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCBieSAiICsgcGFydHNbMF07CiAgICAgICAgYXR0YWNoKGRvYywgbGFiZWwsIGF0dGFjaFRvSWQsIHRydWUpOwogICAgICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgICAgICByZXR1cm47CiAgICB9Cn0KCnZhciBjcmVhdGVDYXNlID0gZmFsc2U7IC8vQU4yMDE4MDcxMiBmbGFnIHRvIHRyYWNrIGlmIHdlIHdhbnQgdG8gY3JlYXRlIGEgQ2FzZSBvciBub3QKdmFyIHN0YWNrTnVtYmVyID0gIiI7IC8vQU4yMDE5MDMwNSBtb3ZpbmcgZGVjbGFyYXRpb24gdG8gdG9wIG9mIHJ1bGUKdmFyIGF0dGFjaExhYmVsID0gIiI7CgovL0VSUzE3MDMyOCBkb2NUeXBlIGJ5IE9DUgp6RGF0YS5kb2NUeXBlT0NSID0gekRhdGEuZG9jVHlwZXIoZG9jLCB7IlBBUFAiOiJQYXRpZW50fiBBc3Npc3RhbmNlfiIsICJQQVVUSCI6IlByaW9yfiBBdXRob3JpemF0aW9ufiIsICJFTlJMIjoiRW5yb2xsbWVudH4iLCAiRkFYIjoiIn0pOwphbGVydCgiZG9jVHlwZSB3YXMgIiArIGRvYy5kb2NUeXBlICsgIiBub3cgIiArIHpEYXRhLmRvY1R5cGVPQ1IpOwp2YXIgelR5cGUgPSBkb2MuWCgiWF9kb2NUeXBlIik7CmlmIChkb2MuZG9jVHlwZSAhPSB6RGF0YS5kb2NUeXBlT0NSKSB7CiAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIiwgekRhdGEuZG9jVHlwZU9DUik7CiAgICB6VHlwZSA9IHpEYXRhLmRvY1R5cGVPQ1I7IC8vRVJTMTcwMzMwIHNhdmVkIGJlbG93IGludG8gU0YgZmF4VHlwZV9fYyBmaWVsZAogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7Cn0KCnZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgY2hhbm5lbCA9ICJGYXgiOwppZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7IC8vIE5vdCBhIE51bWJlciBpcyB0cnVlCiAgICBjaGFubmVsID0gIkVtYWlsIjsKfQoKdmFyIHpwQXJyT2ZQYWlycyA9IFtdOyAvL0FOMjAxODA3MTMgZGVjbGFyaW5nIGEgc2VwYXJhdGUgYXJyYXkgZm9yIHVzZSBpbiBzZXR0aW5nIHpQYXBlciBkb2Mgc2VjdXJpdHkKCnZhciB6cCA9ICJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZQp2YXIgelN0YWNrID0genAgKyAielN0YWNrX19jIjsKCi8vQU4yMDE4MDcxMSB0aGlzIFpQIGJ1c2luc3MgY2FuIHByb2JhYmx5IGJlIHJlbW92ZWQgYW5kIHJlcGxhY2VkIHdpdGggdGhlIGNvcnJlY3QgbmFtZXNwYWNlCnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgImZheFR5cGVfX2MiLCB6VHlwZSk7CnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgIlByaW9yaXR5X19jIiwgIk1lZGl1bSIpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJTdGF0dXNfX2MiLCAiTmV3IFN0YWNrIik7CnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgIkNoYW5uZWxfX2MiLCBjaGFubmVsKTsKLy8gTVNIMTcxMTE2IHVzaW5nIHpTdGFja19SZWNlaXZlZF9fYyBpbnN0ZWFkIG9mIGxhdGVzdEZheF9fYyBiZWNhdXNlIGxhdGVzdEZheF9fYyBnZXRzIHVwZGF0ZWQgYnkgc2F2ZS5qc3AgZXZlcnkgdGltZSB0aGUgcmVjb3JkIGlzIHVwZGF0ZWQKIAovL3pwQXJyT2ZQYWlycy5wdXNoKHpwICsgImxhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CnpwQXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCBmb3JtYXROb3cpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJuZXdGYXhfX2MiLCAidHJ1ZSIpOwp6cEFyck9mUGFpcnMucHVzaCh6cCArICJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKCnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKenBBcnJPZlBhaXJzLnB1c2goenAgKyAic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsgLy9FUlMxNzA2MjggY2FsbGVyIGlkCnpwQXJyT2ZQYWlycy5wdXNoKHpwICsgIkZyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CnpwQXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAp6cEFyck9mUGFpcnMucHVzaCh6cCArICJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyAvL0VSUzE3MDczMSAjNDA1OTMKLy96cEFyck9mUGFpcnMucHVzaCh6cCArICJDbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsgLy9BTjIwMTkwMzEyIHRlY2ggZGVidC4gTmVlZCB0byByZW1vdmUgYWxsIHJlZmVyZW5jZSB0byBDb21wbGV0ZSBJbW11bm9sb2d5IGFuZCByZXBsYWNlIHdpdGggQ29tcGxldGUgSW50YWtlLCBpbmNsdWRpbmcgcmVuYW1pbmcgb2YgdmFyaWFibGVzIGFuZCByZWNvcmQgdHlwZXMKCmFsZXJ0KCJAQEAgQ2xhc3NpZmljYXRpb24gPSAiICsgekRhdGEuY2xhc3NpZmljYXRpb24pOwoKLy9BTjIwMTgwNzEyIGZvciBjb2RlIHJldmlldzogd2UgaGF2ZSBtdWx0aXBsZSBJRiBpdGVyYXRpb25zIGludm9sdmluZyB6RGF0YS5jbGFzc2lmY2F0aW9uLiBDYW4gd2UgY29tYmluZSB0aGVtPwppZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIlBBUCIpIHsgLy9BTjIwMTgwNjA0IHNldCBQQVAgcXVldWUgYW5kIHJlY29yZCB0eXBlCiAgICBhbGVydCgiQEBAIGVudGVyaW5nIFBBUCBsb2dpYyIpOwogICAgCiAgICB6cEFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsICJQQVAiKTsgLy9BTjIwMTkwMzEyIHRlY2ggZGVidC4gTmVlZCB0byByZW1vdmUgYWxsIHJlZmVyZW5jZSB0byBDb21wbGV0ZSBJbW11bm9sb2d5IGFuZCByZXBsYWNlIHdpdGggQ29tcGxldGUgSW50YWtlLCBpbmNsdWRpbmcgcmVuYW1pbmcgb2YgdmFyaWFibGVzIGFuZCByZWNvcmQgdHlwZXMKICAgIAogICAgenBBcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5wYXBRdWV1ZUlkKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5wYXBTdGFja1JlY29yZFR5cGVJZCk7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiRHJ1Z19UeXBlX19jIiwgIkh1bWlyYSIpOwogICAgCiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKICAgIAogICAgY3JlYXRlQ2FzZSA9IGZhbHNlOwp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJSSC1JbW11bm9sb2d5Iikgey8vQU4yMDE4MDYwNCBzZXQgUkgtSW1tdW5vbG9neSBxdWV1ZSBhbmQgcmVjb3JkIHR5cGUKICAgIGFsZXJ0KCJAQEAgZW50ZXJpbmcgUkgtSW1tdW5vbG9neSBsb2dpYyIpOwoKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgIlJILUltbXVub2xvZ3kiKTsgLy9BTjIwMTkwMzEyIHRlY2ggZGVidC4gTmVlZCB0byByZW1vdmUgYWxsIHJlZmVyZW5jZSB0byBDb21wbGV0ZSBJbW11bm9sb2d5IGFuZCByZXBsYWNlIHdpdGggQ29tcGxldGUgSW50YWtlLCBpbmNsdWRpbmcgcmVuYW1pbmcgb2YgdmFyaWFibGVzIGFuZCByZWNvcmQgdHlwZXMKCiAgICB6cEFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLmltbXVuUXVldWVJZCk7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuaW1tdW5TdGFja1JlY29yZFR5cGVJZCk7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiRHJ1Z19UeXBlX19jIiwgIkh1bWlyYSIpOwogICAgCiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKICAgIAogICAgY3JlYXRlQ2FzZSA9IHRydWU7CiAgICAKfQoKZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkFSQ0MiKSB7Ly9BTjIwMTgwNjA0IHNldCBBUkNDIHF1ZXVlIGFuZCBJbW11bm9sb2d5IHJlY29yZCB0eXBlCiAgICBhbGVydCgiQEBAIGVudGVyaW5nIEFSQ0MgbG9naWMiKTsKCiAgICB6cEFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsICJSSC1JbW11bm9sb2d5Iik7IC8vQU4yMDE5MDMxMiB0ZWNoIGRlYnQuIE5lZWQgdG8gcmVtb3ZlIGFsbCByZWZlcmVuY2UgdG8gQ29tcGxldGUgSW1tdW5vbG9neSBhbmQgcmVwbGFjZSB3aXRoIENvbXBsZXRlIEludGFrZSwgaW5jbHVkaW5nIHJlbmFtaW5nIG9mIHZhcmlhYmxlcyBhbmQgcmVjb3JkIHR5cGVzCgogICAgenBBcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCB6RGF0YS5BUkNDUXVldWVJZCk7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuaW1tdW5TdGFja1JlY29yZFR5cGVJZCk7CiAgICB6cEFyck9mUGFpcnMucHVzaCgiRHJ1Z19UeXBlX19jIiwgIkh1bWlyYSIpOwogICAgCiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgU3RhY2sgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdzsKICAgIAogICAgY3JlYXRlQ2FzZSA9IHRydWU7CiAgICAKfQoKZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkNvbXBsZXRlIEltbXVub2xvZ3kiKSB7Ly9BTjIwMTgwNjA0IHNldCBDb21wbGV0ZSBJbW11bm9sb2d5IHF1ZXVlIGFuZCBDb21wbGV0ZSBJbnRha2UgcmVjb3JkIHR5cGUKICAgIGFsZXJ0KCJAQEAgZW50ZXJpbmcgQ29tcGxldGUgSW1tdW5vbG9neSBsb2dpYyIpOwogICAgYWxlcnQoIkBAQCB6RGF0YS5jb21wSW1tU3RhY2tSZWNvcmRUeXBlSWQgPSAiICsgekRhdGEuY29tcEltbVN0YWNrUmVjb3JkVHlwZUlkKTsKICAgIAogICAgenBBcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiLCAiQ29tcGxldGUgSW50YWtlIik7IC8vQU4yMDE5MDMxMiB0ZWNoIGRlYnQuIE5lZWQgdG8gcmVtb3ZlIGFsbCByZWZlcmVuY2UgdG8gQ29tcGxldGUgSW1tdW5vbG9neSBhbmQgcmVwbGFjZSB3aXRoIENvbXBsZXRlIEludGFrZSwgaW5jbHVkaW5nIHJlbmFtaW5nIG9mIHZhcmlhYmxlcyBhbmQgcmVjb3JkIHR5cGVzCiAgICAKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuY29tcEltbVF1ZXVlSWQpOwogICAgLy96cEFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuY29tcEltbVN0YWNrUmVjb3JkVHlwZUlkKTsKICAgIHpwQXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5waGFybVN0YWNrUmVjb3JkVHlwZUlkKTsgLy9BTjIwMTkwMzI3IGZpcnN0IGNyZWF0ZWQgc3RhY2sgc2hvdWxkIGJlIGZvciB0aGUgUGhhcm1hY2lzdAogICAgLy96cEFyck9mUGFpcnMucHVzaCgiRHJ1Z19UeXBlX19jIiwgIlNreXJpemkiKTsgLy9BTjIwMTkwNzA4IEFiYlZpZSB3aWxsIGJlIHVzaW5nIHRoaXMgZmF4IGxpbmUgZm9yIG11dGxpcGxlIGRydWdzLCBzbyBubyBkZWZhdWx0IHNob3VsZCBiZSBzZXQKICAgIAogICAgYXR0YWNoTGFiZWwgPSAiTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3c7CiAgICAKICAgIGNyZWF0ZUNhc2UgPSB0cnVlOwoKfQp2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpTdGFjaywgYXR0YWNoTGFiZWwsIHpwQXJyT2ZQYWlycyk7Cgp2YXIgb3JpZ2luYWxTdGFja0lkID0gc2ZJZDsKc3RhY2tOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgelN0YWNrLCAiTmFtZSIsIG51bGwsIHNmSWQpOwphbGVydCgiIyMjIyBTdGFjayBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKCnZhciBhcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CmFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwphcnJPZlBhaXJzLnB1c2goIlhfc2ZTdGFja0lkIiwgc2ZJZCk7IC8vRVJTMTcwNzI3ICM0MDQ0NwphcnJPZlBhaXJzLnB1c2goIlhfU3RhY2tfTnVtYmVyIiwgc3RhY2tOdW1iZXIpOwoKLy9hc3NpZ24gZG9jIHNlY3VyaXR5LiBWYXJpYWJsZXMgYXJlIGJhc2VkIG9uIHRoZSBpbmJvdW5kIGZheCBsaW5lCmFsZXJ0KCJAQEAgbWFzdGVyIElEIGlzID0gIiArIGRvYy5rYkRhdGEuZ3JvdXBJRCk7CmFsZXJ0KCJAQEAgUEFQIGdyb3VwIElEIGlzID0gIiArIHpEYXRhLnBhcEdyb3VwSWQpOwphbGVydCgiQEBAIFJILUltbXVub2xvZ3kgZ3JvdXAgSUQgaXMgPSAiICsgekRhdGEuaW1tdW5Hcm91cElkKTsKYWxlcnQoIkBAQCBDb21wbGV0ZSBJbW11bm9sb2d5IGdyb3VwIElEIGlzID0gIiArIHpEYXRhLmNvbXBJbnRHcm91cElkKTsKYWxlcnQoInpEYXRhLmNsYXNzaWZpY2F0aW9uIGlzICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CgppZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIlBBUCIpIHsgLy9BTjIwMTgwNjA0IHNldCBQQVAgZ3JvdXAgc2VjdXJpdHkKICAgIGFsZXJ0KCJAQEAgc2V0dGluZyBkb2N1bWVudCBzZWN1cml0eSBmb3IgUEFQIGdyb3VwIik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEucGFwR3JvdXBJZCArICI6Iik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS5wYXBHcm91cElkICsgIjoiKTsKCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIlJILUltbXVub2xvZ3kiIHx8IHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJBUkNDIikgey8vQU4yMDE4MDYwNCBzZXQgUkgtSW1tdW5vbG9neSBncm91cCBzZWN1cml0eSBvciBBUkNDIGdyb3VwIHNlY3VyaXR5CiAgICBhbGVydCgiQEBAIHNldHRpbmcgZG9jdW1lbnQgc2VjdXJpdHkgZm9yIFJILUltbXVub2xvZ3kiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS5pbW11bkdyb3VwSWQgKyAiOiIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEuaW1tdW5Hcm91cElkICsgIjoiKTsKICAgIAp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJDb21wbGV0ZSBJbW11bm9sb2d5Iikgey8vQU4yMDE5MDIyNSBzZXQgUGhhcm1hY3kgZ3JvdXAgc2VjdXJpdHkuIENvbXBsZXRlIEltbXVub2xvZ3kgc2VjdXJpdHkgZ2V0cyBzZXQgb24gdGhlIHpTdGFjayBjb3B5IHRoYXQgd2UgY3JlYXRlIGxhdGVyCiAgICBhbGVydCgiQEBAIHNldHRpbmcgZG9jdW1lbnQgc2VjdXJpdHkgZm9yIENvbXBsZXRlIEltbXVub2xvZ3kiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS5waGFybUdyb3VwSWQgKyAiOiIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEucGhhcm1Hcm91cElkICsgIjoiKTsKCn0KCi8vQ1JOMTgwNzI2IENhc2UgIzUwNDY5IC0tIFNldCB0aGUgIlJlY2VpdmVkIiBjaGVja2JveAp2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwphbGVydCgiJCQkIG5vdzAgPSAiICsgbm93MCk7CmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJSZWNlaXZlZCIpOwphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJSZWNlaXZlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIvQ0FXIFVwZGF0ZQovL2Fyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJSZWNlaXZlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIpOyAKCnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgphbGVydCgiQEBAIHpEYXRhLmNsYXNzaWZpY2F0aW9uMTIzIDoiICsgekRhdGEuY2xhc3NpZmljYXRpb24pOwoKdmFyIG9yZzJvcmdDUz1kb2Mua2JEYXRhLmN1c3RvbVNldHRpbmdzOyAvL0VSUzE5MDQxMSAjNTc4ODEKYWxlcnQoIkVSUzE5MDQxMSBDUyBhICIrICh0eXBlb2Ygb3JnMm9yZ0NTKSArIiBoYXMgIitvcmcyb3JnQ1MpOwppZiAob3JnMm9yZ0NTKSB7CiAgICB6RGF0YS53YXRlcm1hcms9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ3YXRlcm1hcmtfX2MiKTsKICAgIGFsZXJ0KCJFUlMxOTA0MTEgd209Iit6RGF0YS53YXRlcm1hcmsrIiBaUEFQRVJfX3NlcnZlcl9fYz0iK1hDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19zZXJ2ZXJfX2MiKSk7CiAgICBpZiAoIXpEYXRhLndhdGVybWFyayB8fCB6RGF0YS53YXRlcm1hcms9PSJ1bmRlZmluZWQiKSB6RGF0YS53YXRlcm1hcms9IiI7Cn0KCgovL0NSTjE5MDIyNiBDcmVhdGUgY29weSBvZiBvcmlnaW5hbCBzdGFjayAtIHdlIHVzZSB6cEFyck9mUGFpcnMgYXMgaXQgYWxyZWFkeSBjb250YWlucyBtb3N0IG9mIHRoZSBkYXRhIHRoYXQgd2UgbmVlZAovL0FOIDIwMTkwMjI4IG9ubHkgc2hvdWxkIGRvIHRoaXMgZm9yIHRoZSBDb21wbGV0ZSBJbW11bm9sb2d5IHByb2dyYW0KaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJDb21wbGV0ZSBJbW11bm9sb2d5Iil7CmFsZXJ0KCJAQEAgY3JlYXRpbmcgY29weSBvZiB6U3RhY2sgZm9yIENvbXBsZXRlIEltbXVub2xvZ3kgcHJvZ3JhbSIpOwoKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciBwYWdlQ291bnQgPSBYKGRvYywgIlhfcGFnZXMiKTsKICAgIHZhciBwYWdlUmFuZ2UgPSAiMS0iICsgcGFnZUNvdW50OwogICAgYWxlcnQoIkBAQCBwYWdlUmFuZ2UgPT09ICIgKyBwYWdlUmFuZ2UpOwogICAgLy8gcHYwMjI1MTggbWFya3VwIG9uIG5vbiBwaGFybWFjaXN0IHBhZ2VzLgogICAgdmFyIHdhdGVybWFyaz0iJ2FkZFRleHQnLDEwLDEsODc1LDE0ODAsJ0NPUFknLCcyNHB4JyciOyAvL0VSUzE5MDQxMSAjNTc4ODEuIAogICAgaWYgKHpEYXRhLndhdGVybWFyayAmJiB6RGF0YS53YXRlcm1hcmsgIT0gIiIpIHdhdGVybWFyaz16RGF0YS53YXRlcm1hcms7IC8vRVJTMTkwNDExIGdldCBmcm9tIHRoZSBjdXN0b20gc2V0dGluZwogICAgCiAgICB2YXIgYnVmZmVyID0gIiI7CiAgICBmb3IgKHZhciBpPTE7IGk8PXBhZ2VDb3VudDsgaSsrKSB7CiAgICAgICAgdmFyIGN1clRpbWUgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKTsKICAgICAgICAKICAgICAgICAvL0FOMjAxOTAzMTEgcGxhY2UgdGhlIHdvcmQgQ09QWSBvbiBlYWNoIHBhZ2Ugb2YgdGhlIGNvcHkgZG9jdW1lbnQKICAgICAgICBidWZmZXIgKz0gImtibSgnSU1HIiArIGN1clRpbWUgKyAiJywnUEFHRSIgKyBpICsgIklNRyIgKyBjdXJUaW1lICsgIicsIit3YXRlcm1hcmsrIik7IjsgCiAgICB9CiAgICBhbGVydCgiQEBAQCBvcmlnaW5hbCBkYklEID0gIiArIGRvYy5kYklEKTsKICAgIGFsZXJ0KCJAQEBAIE1BUktVUCA9ICIgKyBidWZmZXIpOwogICAgYWxlcnQoIkBAQEAgT3JpZ2luYWwgU3RhY2sgSWQ6ICIgKyBvcmlnaW5hbFN0YWNrSWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX21hcmt1cCIsIGJ1ZmZlcik7CiAgICAvL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX09yZ2luYWxfU3RhY2tfX2MiLCBvcmlnaW5hbFN0YWNrSWQpOwogICAgCiAgICB2YXIgbmV3U25pcHBldElkID0gbnVsbDsgCiAgICAKICAgIC8vRVJTIDE5MDQxMSBpbnN0ZWFkIG9mIHNwbGl0IHRoZW4gd2F0ZXJtYXJrLCB3YXRlcm1hcmsgc2VuZCB0byBmbGF0dGVuLCBhbmQgcmVtb3ZlIHdhdGVybWFyayBmcm9tIG9yaWdpbmFsCiAgICAKICAgIGlmICgxPT09MSkgeyAgLy9FUlMxOTA0MTEgIzU3ODgxIGZsYXR0ZW4gd2l0aCBTRl9zZW5kRmF4LmpzcCBhbmQgdXNlIHRoYXQgbmV3IGRiSUQKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgICAgIHZhciBmbGF0VVJMPSJodHRwOi8vbG9jYWxob3N0OjgwODAva2IvanNwL1NGX3NlbmRGYXguanNwP2ZheFRvPVBERkAiK3NmSWQrIiZTRmlkcz0iK3NmSWQrIiZtb2RlPWZpbGVQREYiOwogICAgICAgIGFsZXJ0KCJFUlMxOTA0MTEgVVJMPSIrZmxhdFVSTCk7CiAgICAgICAgdmFyIHNmT3JnSUQ9ZG9jLmtiRGF0YS5zZk9yZ2FuaXphdGlvbklEOyAKICAgICAgICBpZiAoIXNmT3JnSUQpIHNmT3JnSUQ9ZG9jLmtiRGF0YS5zZlNlc3Npb25JRC5zdWJzdHJpbmcoMCxkb2Mua2JEYXRhLnNmU2Vzc2lvbklELmluZGV4T2YoIiEiKS0xKTsKICAgICAgICBmbGF0VVJMKz0iJlNGb3JnPSIrc2ZPcmdJRCsiJlNGc2Vzc2lvbj0iK2RvYy5rYkRhdGEuc2ZTZXNzaW9uSUQ7CiAgICAgICAgZmxhdFVSTCs9IiZjb3ZlcklEMj1ub0JhcmNvZGUmY292ZXJJRD0iK2RvYy5kYklEOyAvL25ld1NuaXBwZXRJZCBmb3IgYmFyY29kZWlmIHdlIHdhbnQgd2UgY2FuIHJlbW92ZShjb3ZlcklEMj1ub0JhcmNvZGUpCiAgICAgICAgZmxhdFVSTCs9IiZTRnR5cGU9WlBBUEVSX196U3RhY2tfX2MiOyAgLy9FUlMxOTA0MTEgVE9ETyBiZXR0ZXIgbWlzc2luZyBwYXJhbWV0ZXJzCiAgICAgICAgYWxlcnQoIkVSUzE5MDQxMSBmbGF0dGVuIHdpdGggIitmbGF0VVJMKTsKICAgICAgICB2YXIgZmxhdERhdGE9d2dldChkb2MsZmxhdFVSTCxudWxsLG51bGwpOyAvL1NGX3NlbmRGYXguanNwIGlzIHJldHVybmluZyBhIHppcHBpIGlkCiAgICAgICAgdmFyIGZsYXRJZD1YKGRvYywiemlwcGkiLGZsYXREYXRhKTsgLy9UT0RPIHVzZSBYKGRvYyxuLHhtbCk7CiAgICAgICAgYWxlcnQoIkVSUzE5MDQxMSBmbGF0dGVuZWQgdG8gIitmbGF0SWQrIiBsZW49IitmbGF0SWQubGVuZ3RoKTsKICAgICAgICBhbGVydCgiRVJTMTkwNDEyIGEgIisgKHR5cGVvZiBmbGF0SWQpICk7CiAgICAgICAgaWYgKGZsYXRJZC5pbmRleE9mKCJ7Iik9PTApIHsKICAgICAgICAgICAgdmFyIGZsYXRJdGVtPUpTT04ucGFyc2UoZmxhdElkKTsgCiAgICAgICAgICAgIGZsYXRJZD1mbGF0SXRlbVsnSXRlbSddOyAKICAgICAgICB9CiAgICAgICAgYWxlcnQoIkVSUzE5MDQxMiBub3cgdG8gIitmbGF0SWQrIiBsZW49IitmbGF0SWQubGVuZ3RoKTsKICAgICAgICBpZiAoZmxhdElkLmxlbmd0aD40KSBuZXdTbmlwcGV0SWQ9ZmxhdElkOwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfbWFya3VwIiwiIik7CiAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgICAgICB2YXIgY29weUxhYmVsPSJDb3B5IG9mICIrIGRvYy5sYWJlbDsKICAgICAgICAKICAgICAgICAvL1RPRE8gdXBkYXRlIHRoZSBmbGF0dGVuIGRvYyBsYWJlbAogICAgICAgIHNldERvY3VtZW50Q29udGV4dChkb2MsIGZsYXRJZCk7IC8vRVJTMTkwNDEyIFdBUk4gV0FSTiBXQVJOIGRvYyBpcyB0aGUgQ09QWSBkb2MKICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsY29weUxhYmVsKTsKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgfSBlbHNlIHsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIkNvcHkgb2YgTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3cpOwogICAgICAgIG5ld1NuaXBwZXRJZCA9IHNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICIiLCBwYWdlUmFuZ2UsIGFyck9mUGFpcnMpOyAvL3RoZSB3YXRlcm1hcmsgaXMgaW4gdGhlcmUgbm93CiAgICB9CiAgICBhbGVydCgiQEBAQCBhZnRlciBzcGxpdHRpbmcgU25pcHBldCwgZGJJRCA9ICIgKyBkb2MuZGJJRCk7CgogICAgLy96cEFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuY29tcEltbVN0YWNrUmVjb3JkVHlwZUlkKTsgLy9BTiAyMDE2MDMyNyBjaGFuZ2UgdGhlIFN0YWNrIFJlYyBUeXBlIElEIC0gdGhpcyBpbmRpY2F0ZXMgdGhhdCB0aGUgbmV3bHkgY3JlYXRlZCByZWNvcmQgd2lsbCBiZSB1c2VkIGJ5IHRoZSBDb21wbGV0ZSBJbnRha2UgdXNlciBpbnN0ZWFkIG9mIHRoZSBQaGFybWFjaXN0CiAgICAvL3pwQXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5waGFybVN0YWNrUmVjb3JkVHlwZUlkKTsgLy9BTiAyMDE2MDMwOSBjaGFuZ2UgdGhlIFN0YWNrIFJlYyBUeXBlIElEIC0gdGhpcyBpbmRpY2F0ZXMgdGhhdCB0aGUgbmV3bHkgY3JlYXRlZCByZWNvcmQgd2lsbCBiZSB1c2VkIGJ5IHRoZSBQaGFybWFjaXN0IGluc3RlYWQgb2YgdGhlIEluZGV4aW5nIHVzZXIKICAgICAgICAKICAgIC8venBBcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGFyZW50X19jIiwgb3JpZ2luYWxTdGFja0lkKTsKICAgIC8venBBcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9PcmdpbmFsX1N0YWNrX2xvb2t1cF9fYyIsIG9yaWdpbmFsU3RhY2tJZCk7IC8vQU4yMDE5MDMwNSB1bmtub3duIGlmIHdlIHN0aWxsIG5lZWQgdGhpcyBhcyBpdCBpcyByZWR1bmRhbnQgdG8gdGhlIHZhbHVlIGJlaW5nIHNhdmVkIGluIFpQQVBFUl9fUGFyZW50X19jIAogICAgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpTdGFjaywgIkNvcHkgb2YgTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3csIHpwQXJyT2ZQYWlycyk7CiAgICBhbGVydCgiU3RhY2sgSWQgZm9yIGNvcHkgc3RhY2sgPSAiICsgc2ZJZCk7CgogICAgdmFyIGNvcHlTdGFja051bWJlciA9IGdldFNGRmllbGQoZG9jLCB6U3RhY2ssICJOYW1lIiwgbnVsbCwgc2ZJZCk7ICAvL0NSTjE5MDMyMSBNYWtlIHN1cmUgdGhhdCB0aGUgY29weSBpcyBpbmRleGVkIGNvcnJlY3RseQogICAgYWxlcnQoIkBAQCBjb3B5U3RhY2tOdW1iZXIgPSAiICsgY29weVN0YWNrTnVtYmVyKTsKICAgIC8vQ1JOMTkwMjI2IEZpeCB0aGUgcmVjZWl2ZWRJZF9fYyBmaWVsZCAod2FzIHNldCB3aXRoIG9yaWdpbmFsIGlkKQogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgCiAgICAvL2Fyck9mUGFpcnMucHVzaCgiWlBBUEVSX09yZ2luYWxfU3RhY2tfbG9va3VwX19jIiwgb3JpZ2luYWxTdGFja0lkKTsgLy9BTjIwMTkwMzA1IHRlY2ggZGVidCB0byBjbGVhbiB1cCAtIHdlIGFyZSBzZXR0aW5nIHRoZSBvcmlnaW5hbC9wYXJlbnQgc3RhY2sgaW4gMiBkaWZmZXJlbnQgZmllbGRzLiBVbnN1cmUgd2hhdCB0aGlzIGNsZWFudXAgY29kZSBkb2VzCiAgICAKICAgIGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuY29tcEltbVN0YWNrUmVjb3JkVHlwZUlkKTsgLy9BTjIwMTkwMzA2IHRlY2ggZGVidC4gSSBhdHRlbXB0ZWQgdG8gc2V0IHRoaXMgcmVjb3JkIHR5cGUgd2hlbiBjcmVhdGluZyB0aGUgU3RhY2sgYnV0IGl0IHRoYXQgZGlkbid0IHdvcmsgYXMgZXhwZWN0ZWQuIENoYW5naW5nIHRoZSByZWNvcmQgdHlwZSBhZnRlciByZWNvcmQgY3JlYXRpb24gd29ya3MgYnV0IGlzIGNsdW5reSBhbmQgdGVjaC1kZWJ0eSBhbmQga2x1ZGdleQogICAgYXJyT2ZQYWlycy5wdXNoKHpwICsgInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICB1cGRhdGVTRlJlY29yZChkb2MsIHpTdGFjaywgc2ZJZCwgYXJyT2ZQYWlycyk7CiAgICAvL0NSTjE5MDIyNiBhbHNvIGZpeCB0aGUgWF9zZlN0YWNrSWQgZmllbGQKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLCBzZklkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgc2ZJZCk7IC8vRVJTMTkwNDEyICM1Nzg4MQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1N0YWNrX051bWJlciIsIGNvcHlTdGFja051bWJlcik7CiAgICAKICAgIC8qCiAgICAvL0FOMjAxOTAzMDggc2V0IHRoZSBkb2Mgc2VjdXJpdHkgZm9yIFBoYXJtYWN5IFNlcnZpY2VzIGdyb3VwCiAgICBhbGVydCgiQEBAIHNldHRpbmcgZG9jdW1lbnQgc2VjdXJpdHkgZm9yIFBoYXJtYWN5IFNlcnZpY2VzIiArIHpEYXRhLnBoYXJtR3JvdXBJZCk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEucGhhcm1Hcm91cElkICArICI6Iik7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS5waGFybUdyb3VwSWQgICsgIjoiKTsKICAgICovCgogICAgLy9BTjIwMTkwMzI3IHNldCB0aGUgZG9jIHNlY3VyaXR5IGZvciBDb21wbGV0ZSBJbnRha2UgZ3JvdXAKICAgIGFsZXJ0KCJAQEAgc2V0dGluZyBkb2N1bWVudCBzZWN1cml0eSBmb3IgQ29tcGxldGUgSW50YWtlIiArIHpEYXRhLnBoYXJtR3JvdXBJZCk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEuY29tcEludEdyb3VwSWQgICsgIjoiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsICI6IiArIHpEYXRhLmNvbXBJbnRHcm91cElkICArICI6Iik7ICAgCiAgICAKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAvL0NSTjE5MDIyNiBNYWtlIHN1cmUgaXQgaXMgYWxzbyBpbiB0aGUgY29ycmVjdCBpbmNvbWluZyBmb2xkZXIKICAgIHZhciBpbmNvbWluZ0ZvbGRlciA9IGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiSW4iOwogICAgYWxlcnQoIiMjIyBpbmNvbWluZ0ZvbGRlciA9ICIgKyBpbmNvbWluZ0ZvbGRlcik7CiAgICBtb3ZlRG9jdW1lbnQoZG9jLCBudWxsLCBpbmNvbWluZ0ZvbGRlcik7CiAgICAKICAgIC8vdXBkYXRlIHRoZSBvcmlnaW5hbCB6U3RhY2sgYW5kIG1ha2UgaXQgYSBjaGlsZCBvZiB0aGUgY29weSB0aGF0IHdlIGp1c3QgY3JlYXRlZAogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhcmVudF9fYyIsb3JpZ2luYWxTdGFja0lkKTsvLyBQVjE5MDQxNiB1cGRhdGVkIGZvciBQaGFybWFjeSBTZXJ2aWNlcyBTdGFjayBzaG91bGQgdXBkYXRlIG9uIEludGFrZSBTdGFjawogICAgLy9hcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9PcmdpbmFsX1N0YWNrX2xvb2t1cF9fYyIsIHNmSWQpOwogICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCB6U3RhY2ssc2ZJZCwgYXJyT2ZQYWlycyk7ICAgCn0KCmFsZXJ0KCJAQEAgY3JlYXRlIGNhc2UxMjMiICsgY3JlYXRlQ2FzZSk7CmlmIChjcmVhdGVDYXNlID09PSB0cnVlKXsgLy8gUFYxOTAzMjEgY3JlYXRlIGEgQ2FzZSBpZiB0aGlzIGlzIG5vdCBhIFBBUCBkb2N1bWVudAogICAgYWxlcnQoIkBAQCBlbnRlcmluZyBjcmVhdGVDYXNlIGxvZ2ljIik7CiAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgICAgICAKICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgIk5ldyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCAiRmF4IC8gSENQIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5IiwgIlN0YW5kYXJkIik7CiAgICBhcnJPZlBhaXJzLnB1c2goInpTdGFja19fYyIsIHNmSWQpOyAvL0FOMjAwODA3MTcgbGluayB0byBwYXJlbnQgelN0YWNrIAoKICAgIC8vaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJSSC1JbW11bm9sb2d5IiB8fCB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PSAiQVJDQyIpeyAvL0FOMjAxOTA0MTAgYWJidmllIHdhbnRzIEFSQ0MgdG8gYmUgaXRzIG93biB0aGluZwogICAgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJSSC1JbW11bm9sb2d5Iil7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuaW1tdW5RdWV1ZUlkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLmltbXVuQ2FzZVJlY29yZFR5cGVJZCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DYXNlU3ViVHlwZV9fYyIsICJCViBGdWxsIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19SZWFzb25Db2RlX19jIiwgIk5vbmUiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0NsYXNzaWZpY2F0aW9uX19jIiwgIlJILUltbXVub2xvZ3kiKTsKICAgIH0KICAgIAogICAgZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT0gIkFSQ0MiKXsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLmltbXVuQ2FzZVJlY29yZFR5cGVJZCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuQVJDQ1F1ZXVlSWQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQ2FzZVN1YlR5cGVfX2MiLCAiQlYgRnVsbCIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfUmVhc29uQ29kZV9fYyIsICJOb25lIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DbGFzc2lmaWNhdGlvbl9fYyIsICJSSC1JbW11bm9sb2d5Iik7CiAgICB9CiAgICAKICAgIGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09ICJDb21wbGV0ZSBJbW11bm9sb2d5Iil7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuY29tcEludFF1ZXVlSWQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgekRhdGEuY29tcEludENhc2VSZWNvcmRUeXBlSWQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQ2FzZVN1YlR5cGVfX2MiLCAiRW5yb2xsbWVudCIpOwoKICAgICAgICAvL0FOMjAxOTA0MTIgY2hhbmdlIHJlcXVlc3QgcGVyIFZlbmthdCBkdXJpbmcgdGhlIENvbXBsZXRlIEludGFrZSBwcm9qZWN0CiAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIlBTX0NsYXNzaWZpY2F0aW9uX19jIiwgIlJILUltbXVub2xvZ3kiKTsgCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQU19DbGFzc2lmaWNhdGlvbl9fYyIsICJDb21wbGV0ZSBJbW11bm9sb2d5Iik7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCgogICAgfQogICAgCiAgICAvL3NldCB6UGFwZXIgd29ya2Zsb3cgZmllbGRzIG9uIHRoZSBjYXNlCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIHpUeXBlKTsgLy9BTjIwMTgwNzEyIGR1cmluZyBjb2RlIHJldmlldywgcGF5IGF0dGVudGlvbiB0byB0aGlzCiAgICBhcnJPZlBhaXJzLnB1c2goInpDYWxsZXJfSURfX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7IC8vQU4yMDE4MDcxNyBhZGRlZCB0aGlzCiAgICAKICAgLy92YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgIk5ldyBmYXggcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdywgYXJyT2ZQYWlycyk7Ci8vIFRQTTE4MDgxMyBjaGFuZ2VkIHRvIG5vdCBhdHRhY2ggZG9jIHRvIGNhc2UgcmVjb3JkIGluIHpkb2NzZXQKICAgIHZhciBzZklkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiQ2FzZSIsICJOZXcgZmF4IHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOwogICAgCn0KCgovKiBFTkQgKi8K"},"ordinal":18}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//CRN190308 Handle uploaded files via Lightning Component
// <X_fromFile>/zpdata/agents/routeAgent/incoming/lightningUpload/zpaper@abbvie.com.psdev-lightningUpload-5001h000003tebtAAA-TestTitlePage.pdf</X_fromFile>
var fromFile = X(doc, "X_fromFile");
if (fromFile && fromFile.indexOf("lightningUpload") >= 0) {
    fromFile = fromFile.substring(fromFile.lastIndexOf('/') + 1);
    var parts = fromFile.split("-");
    if (parts.length >= 3) {
        var attachToId = parts[2];
        alert("@@@ UPLOAD: ATTACHING TO SALESFORCE RECORD = " + attachToId);
        var label = "File uploaded by " + parts[0];
        attach(doc, label, attachToId, true);
        var arrOfPairs = [];
        arrOfPairs.push("db-label", label);
        updateDB(doc, arrOfPairs0);
        return;
    }
}

var createCase = false; //AN20180712 flag to track if we want to create a Case or not
var stackNumber = ""; //AN20190305 moving declaration to top of rule
var attachLabel = "";

//ERS170328 docType by OCR
zData.docTypeOCR = zData.docTyper(doc, {"PAPP":"Patient~ Assistance~", "PAUTH":"Prior~ Authorization~", "ENRL":"Enrollment~", "FAX":""});
alert("docType was " + doc.docType + " now " + zData.docTypeOCR);
var zType = doc.X("X_docType");
if (doc.docType != zData.docTypeOCR) {
    var arrOfPairs0 = [];
    arrOfPairs0.push("X_docTypeOCR", zData.docTypeOCR);
    arrOfPairs0.push("X_docType", zData.docTypeOCR);
    zType = zData.docTypeOCR; //ERS170330 saved below into SF faxType__c field
    updateDB(doc, arrOfPairs0);
}

var formatNow = getCurDateAndTime(doc);
var channel = "Fax";
if (isNaN(doc.deliveredFrom)) { // Not a Number is true
    channel = "Email";
}

var zpArrOfPairs = []; //AN20180713 declaring a separate array for use in setting zPaper doc security

var zp = "ZPAPER__"; //ERS170626 now in the package
var zStack = zp + "zStack__c";

//AN20180711 this ZP businss can probably be removed and replaced with the correct namespace
zpArrOfPairs.push(zp + "faxType__c", zType);
zpArrOfPairs.push(zp + "Priority__c", "Medium");
zpArrOfPairs.push(zp + "Status__c", "New Stack");
zpArrOfPairs.push(zp + "Channel__c", channel);
// MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
 
//zpArrOfPairs.push(zp + "latestFax__c", formatNow);
zpArrOfPairs.push("zStack_Received__c", formatNow);
zpArrOfPairs.push(zp + "receivedId__c", doc.dbID);
zpArrOfPairs.push(zp + "newFax__c", "true");
zpArrOfPairs.push(zp + "Pages__c", X(doc, "X_pages"));

zpArrOfPairs.push(zp + "Program_Name__c", zData.classification);
zpArrOfPairs.push(zp + "sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
zpArrOfPairs.push(zp + "From__c", doc.deliveredFrom);
zpArrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
zpArrOfPairs.push(zp + "Stage__c", "Received"); //ERS170731 #40593
//zpArrOfPairs.push(zp + "Classification__c", zData.classification); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types

alert("@@@ Classification = " + zData.classification);

//AN20180712 for code review: we have multiple IF iterations involving zData.classifcation. Can we combine them?
if (zData.classification == "PAP") { //AN20180604 set PAP queue and record type
    alert("@@@ entering PAP logic");
    
    zpArrOfPairs.push("ZPAPER__Classification__c", "PAP"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types
    
    zpArrOfPairs.push("OwnerId", zData.papQueueId);
    zpArrOfPairs.push("RecordTypeId", zData.papStackRecordTypeId);
    zpArrOfPairs.push("Drug_Type__c", "Humira");
    
    attachLabel = "New Stack received on " + formatNow;
    
    createCase = false;
}
else if (zData.classification == "RH-Immunology") {//AN20180604 set RH-Immunology queue and record type
    alert("@@@ entering RH-Immunology logic");

    zpArrOfPairs.push("ZPAPER__Classification__c", "RH-Immunology"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types

    zpArrOfPairs.push("OwnerId", zData.immunQueueId);
    zpArrOfPairs.push("RecordTypeId", zData.immunStackRecordTypeId);
    zpArrOfPairs.push("Drug_Type__c", "Humira");
    
    attachLabel = "New Stack received on " + formatNow;
    
    createCase = true;
    
}

else if (zData.classification == "ARCC") {//AN20180604 set ARCC queue and Immunology record type
    alert("@@@ entering ARCC logic");

    zpArrOfPairs.push("ZPAPER__Classification__c", "RH-Immunology"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types

    zpArrOfPairs.push("OwnerId", zData.ARCCQueueId);
    zpArrOfPairs.push("RecordTypeId", zData.immunStackRecordTypeId);
    zpArrOfPairs.push("Drug_Type__c", "Humira");
    
    attachLabel = "New Stack received on " + formatNow;
    
    createCase = true;
    
}

else if (zData.classification == "Complete Immunology") {//AN20180604 set Complete Immunology queue and Complete Intake record type
    alert("@@@ entering Complete Immunology logic");
    alert("@@@ zData.compImmStackRecordTypeId = " + zData.compImmStackRecordTypeId);
    
    zpArrOfPairs.push("ZPAPER__Classification__c", "Complete Intake"); //AN20190312 tech debt. Need to remove all reference to Complete Immunology and replace with Complete Intake, including renaming of variables and record types
    
    zpArrOfPairs.push("OwnerId", zData.compImmQueueId);
    //zpArrOfPairs.push("RecordTypeId", zData.compImmStackRecordTypeId);
    zpArrOfPairs.push("RecordTypeId", zData.pharmStackRecordTypeId); //AN20190327 first created stack should be for the Pharmacist
    //zpArrOfPairs.push("Drug_Type__c", "Skyrizi"); //AN20190708 AbbVie will be using this fax line for mutliple drugs, so no default should be set
    
    attachLabel = "New Stack received on " + formatNow;
    
    createCase = true;

}
var sfId = createAndAttach(doc, zStack, attachLabel, zpArrOfPairs);

var originalStackId = sfId;
stackNumber = getSFField(doc, zStack, "Name", null, sfId);
alert("#### Stack Received. Attached to: " + sfId);

var arrOfPairs = [];
arrOfPairs.push("db-label", attachLabel);
arrOfPairs.push("db-BATES", sfId + "-STACK");
arrOfPairs.push("X_sfStackId", sfId); //ERS170727 #40447
arrOfPairs.push("X_Stack_Number", stackNumber);

//assign doc security. Variables are based on the inbound fax line
alert("@@@ master ID is = " + doc.kbData.groupID);
alert("@@@ PAP group ID is = " + zData.papGroupId);
alert("@@@ RH-Immunology group ID is = " + zData.immunGroupId);
alert("@@@ Complete Immunology group ID is = " + zData.compIntGroupId);
alert("zData.classification is " + zData.classification);

if (zData.classification == "PAP") { //AN20180604 set PAP group security
    alert("@@@ setting document security for PAP group");
    arrOfPairs.push("db-users", ":" + zData.papGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.papGroupId + ":");

}
else if (zData.classification == "RH-Immunology" || zData.classification == "ARCC") {//AN20180604 set RH-Immunology group security or ARCC group security
    alert("@@@ setting document security for RH-Immunology");
    arrOfPairs.push("db-users", ":" + zData.immunGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.immunGroupId + ":");
    
}
else if (zData.classification == "Complete Immunology") {//AN20190225 set Pharmacy group security. Complete Immunology security gets set on the zStack copy that we create later
    alert("@@@ setting document security for Complete Immunology");
    arrOfPairs.push("db-users", ":" + zData.pharmGroupId + ":");
    arrOfPairs.push("db-readers", ":" + zData.pharmGroupId + ":");

}

//CRN180726 Case #50469 -- Set the "Received" checkbox
var now0 = getCurDateAndTime(doc, false, true);
alert("$$$ now0 = " + now0);
arrOfPairs.push("X_reviewedStatus", "Received");
arrOfPairs.push("X_reviews", "Received by agent at " + now0 + "<br/>"); //ERS170909 #40592/CAW Update
//arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"); 

updateDB(doc, arrOfPairs);

alert("@@@ zData.classification123 :" + zData.classification);

var org2orgCS=doc.kbData.customSettings; //ERS190411 #57881
alert("ERS190411 CS a "+ (typeof org2orgCS) +" has "+org2orgCS);
if (org2orgCS) {
    zData.watermark=""+XCustomSetting(doc,"watermark__c");
    alert("ERS190411 wm="+zData.watermark+" ZPAPER__server__c="+XCustomSetting(doc,"ZPAPER__server__c"));
    if (!zData.watermark || zData.watermark=="undefined") zData.watermark="";
}


//CRN190226 Create copy of original stack - we use zpArrOfPairs as it already contains most of the data that we need
//AN 20190228 only should do this for the Complete Immunology program
if (zData.classification == "Complete Immunology"){
alert("@@@ creating copy of zStack for Complete Immunology program");

    arrOfPairs = [];
    var pageCount = X(doc, "X_pages");
    var pageRange = "1-" + pageCount;
    alert("@@@ pageRange === " + pageRange);
    // pv022518 markup on non pharmacist pages.
    var watermark="'addText',10,1,875,1480,'COPY','24px''"; //ERS190411 #57881. 
    if (zData.watermark && zData.watermark != "") watermark=zData.watermark; //ERS190411 get from the custom setting
    
    var buffer = "";
    for (var i=1; i<=pageCount; i++) {
        var curTime = new Date().getTime();
        
        //AN20190311 place the word COPY on each page of the copy document
        buffer += "kbm('IMG" + curTime + "','PAGE" + i + "IMG" + curTime + "',"+watermark+");"; 
    }
    alert("@@@@ original dbID = " + doc.dbID);
    alert("@@@@ MARKUP = " + buffer);
    alert("@@@@ Original Stack Id: " + originalStackId);
    arrOfPairs.push("X_markup", buffer);
    //arrOfPairs.push("ZPAPER_Orginal_Stack__c", originalStackId);
    
    var newSnippetId = null; 
    
    //ERS 190411 instead of split then watermark, watermark send to flatten, and remove watermark from original
    
    if (1===1) {  //ERS190411 #57881 flatten with SF_sendFax.jsp and use that new dbID
        updateDB(doc, arrOfPairs);
        var flatURL="http://localhost:8080/kb/jsp/SF_sendFax.jsp?faxTo=PDF@"+sfId+"&SFids="+sfId+"&mode=filePDF";
        alert("ERS190411 URL="+flatURL);
        var sfOrgID=doc.kbData.sfOrganizationID; 
        if (!sfOrgID) sfOrgID=doc.kbData.sfSessionID.substring(0,doc.kbData.sfSessionID.indexOf("!")-1);
        flatURL+="&SForg="+sfOrgID+"&SFsession="+doc.kbData.sfSessionID;
        flatURL+="&coverID2=noBarcode&coverID="+doc.dbID; //newSnippetId for barcodeif we want we can remove(coverID2=noBarcode)
        flatURL+="&SFtype=ZPAPER__zStack__c";  //ERS190411 TODO better missing parameters
        alert("ERS190411 flatten with "+flatURL);
        var flatData=wget(doc,flatURL,null,null); //SF_sendFax.jsp is returning a zippi id
        var flatId=X(doc,"zippi",flatData); //TODO use X(doc,n,xml);
        alert("ERS190411 flattened to "+flatId+" len="+flatId.length);
        alert("ERS190412 a "+ (typeof flatId) );
        if (flatId.indexOf("{")==0) {
            var flatItem=JSON.parse(flatId); 
            flatId=flatItem['Item']; 
        }
        alert("ERS190412 now to "+flatId+" len="+flatId.length);
        if (flatId.length>4) newSnippetId=flatId;
        arrOfPairs = [];
        arrOfPairs.push("X_markup","");
        updateDB(doc, arrOfPairs);
        var copyLabel="Copy of "+ doc.label;
        
        //TODO update the flatten doc label
        setDocumentContext(doc, flatId); //ERS190412 WARN WARN WARN doc is the COPY doc
        arrOfPairs = [];
        arrOfPairs.push("db-label",copyLabel);
        updateDB(doc, arrOfPairs);
    } else {
        arrOfPairs.push("db-label", "Copy of New Stack received on " + formatNow);
        newSnippetId = splitDocumentForIndex(doc, "", pageRange, arrOfPairs); //the watermark is in there now
    }
    alert("@@@@ after splitting Snippet, dbID = " + doc.dbID);

    //zpArrOfPairs.push("RecordTypeId", zData.compImmStackRecordTypeId); //AN 20160327 change the Stack Rec Type ID - this indicates that the newly created record will be used by the Complete Intake user instead of the Pharmacist
    //zpArrOfPairs.push("RecordTypeId", zData.pharmStackRecordTypeId); //AN 20160309 change the Stack Rec Type ID - this indicates that the newly created record will be used by the Pharmacist instead of the Indexing user
        
    //zpArrOfPairs.push("ZPAPER__Parent__c", originalStackId);
    //zpArrOfPairs.push("ZPAPER_Orginal_Stack_lookup__c", originalStackId); //AN20190305 unknown if we still need this as it is redundant to the value being saved in ZPAPER__Parent__c 
    sfId = createAndAttach(doc, zStack, "Copy of New Stack received on " + formatNow, zpArrOfPairs);
    alert("Stack Id for copy stack = " + sfId);

    var copyStackNumber = getSFField(doc, zStack, "Name", null, sfId);  //CRN190321 Make sure that the copy is indexed correctly
    alert("@@@ copyStackNumber = " + copyStackNumber);
    //CRN190226 Fix the receivedId__c field (was set with original id)
    arrOfPairs = [];
    
    //arrOfPairs.push("ZPAPER_Orginal_Stack_lookup__c", originalStackId); //AN20190305 tech debt to clean up - we are setting the original/parent stack in 2 different fields. Unsure what this cleanup code does
    
    arrOfPairs.push("RecordTypeId", zData.compImmStackRecordTypeId); //AN20190306 tech debt. I attempted to set this record type when creating the Stack but it that didn't work as expected. Changing the record type after record creation works but is clunky and tech-debty and kludgey
    arrOfPairs.push(zp + "receivedId__c", doc.dbID);
    updateSFRecord(doc, zStack, sfId, arrOfPairs);
    //CRN190226 also fix the X_sfStackId field
    arrOfPairs = [];
    arrOfPairs.push("X_sfStackId", sfId);
    arrOfPairs.push("X_attachedTo", sfId); //ERS190412 #57881
    arrOfPairs.push("X_Stack_Number", copyStackNumber);
    
    /*
    //AN20190308 set the doc security for Pharmacy Services group
    alert("@@@ setting document security for Pharmacy Services" + zData.pharmGroupId);
    arrOfPairs.push("db-users", ":" + zData.pharmGroupId  + ":");
    arrOfPairs.push("db-readers", ":" + zData.pharmGroupId  + ":");
    */

    //AN20190327 set the doc security for Complete Intake group
    alert("@@@ setting document security for Complete Intake" + zData.pharmGroupId);
    arrOfPairs.push("db-users", ":" + zData.compIntGroupId  + ":");
    arrOfPairs.push("db-readers", ":" + zData.compIntGroupId  + ":");   
    
    updateDB(doc, arrOfPairs);
    //CRN190226 Make sure it is also in the correct incoming folder
    var incomingFolder = doc.kbData.groupID.substring(1) + "In";
    alert("### incomingFolder = " + incomingFolder);
    moveDocument(doc, null, incomingFolder);
    
    //update the original zStack and make it a child of the copy that we just created
    arrOfPairs = [];
    arrOfPairs.push("ZPAPER__Parent__c",originalStackId);// PV190416 updated for Pharmacy Services Stack should update on Intake Stack
    //arrOfPairs.push("ZPAPER_Orginal_Stack_lookup__c", sfId);
    updateSFRecord(doc, zStack,sfId, arrOfPairs);   
}

alert("@@@ create case123" + createCase);
if (createCase === true){ // PV190321 create a Case if this is not a PAP document
    alert("@@@ entering createCase logic");
    arrOfPairs = [];
                
    arrOfPairs.push("Status", "New");
    arrOfPairs.push("Origin", "Fax / HCP");
    arrOfPairs.push("Priority", "Standard");
    arrOfPairs.push("zStack__c", sfId); //AN20080717 link to parent zStack 

    //if (zData.classification == "RH-Immunology" || zData.classification == "ARCC"){ //AN20190410 abbvie wants ARCC to be its own thing
    if (zData.classification == "RH-Immunology"){                                             
        arrOfPairs.push("OwnerId", zData.immunQueueId);
        arrOfPairs.push("RecordTypeId", zData.immunCaseRecordTypeId);
        arrOfPairs.push("PS_CaseSubType__c", "BV Full");
        arrOfPairs.push("PS_ReasonCode__c", "None");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology");
    }
    
    else if (zData.classification == "ARCC"){
        arrOfPairs.push("RecordTypeId", zData.immunCaseRecordTypeId);
        arrOfPairs.push("OwnerId", zData.ARCCQueueId);
        arrOfPairs.push("PS_CaseSubType__c", "BV Full");
        arrOfPairs.push("PS_ReasonCode__c", "None");
        arrOfPairs.push("PS_Classification__c", "RH-Immunology");
    }
    
    else if (zData.classification == "Complete Immunology"){
        arrOfPairs.push("OwnerId", zData.compIntQueueId);
        arrOfPairs.push("RecordTypeId", zData.compIntCaseRecordTypeId);
        arrOfPairs.push("PS_CaseSubType__c", "Enrollment");

        //AN20190412 change request per Venkat during the Complete Intake project
        //arrOfPairs.push("PS_Classification__c", "RH-Immunology"); 
        arrOfPairs.push("PS_Classification__c", "Complete Immunology");
                                                                 

    }
    
    //set zPaper workflow fields on the case
    arrOfPairs.push("ZPAPER__latestFax__c", formatNow);
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID);
    arrOfPairs.push("ZPAPER__newFax__c", "true");
    arrOfPairs.push("ZPAPER__faxType__c", zType); //AN20180712 during code review, pay attention to this
    arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //AN20180717 added this
    
   //var sfId = createAndAttach(doc, "Case", "New fax received on " + formatNow, arrOfPairs);
// TPM180813 changed to not attach doc to case record in zdocset
    var sfId = createSFRecord(doc, "Case", "New fax received on " + formatNow, arrOfPairs);
    
}


/* END */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
