<!--
// Name: Create Stack from Fax
// Committer: eric.stephens@zpaper.com
// Update: zchannel values
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-09 22:00:15","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"dmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIGF0dGFjaExhYmVsID0gIiI7CnZhciB6cD16RGF0YS56cDsgaWYgKCF6cCkgenA9IlpQQVBFUl9fIjsgLy9FUlMxNzA2MjYgbm93IGluIHRoZSBwYWNrYWdlIC8vRVJTMTkwNjE3IHpEYXRhLnpwCnZhciB6U3RhY2s9ekRhdGEuenBzOyAvLyJTdGFja19fYyIKCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgIzYxNTExIG1vdmUgb3JhbmQgYW5kIG9yZ3N3aXRjaCB1cCBiZWZvcmUgekRhdGEuY2hhbm5lbAogICAgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCgp6RGF0YS5mcm9tRmlsZT1YKGRvYywiWF9mcm9tRmlsZSIpOyAvL0VSUzE5MDgxNCBUT0RPPyBkbyBpbiBsaWJyYXJ5PwphbGVydCgiRVJTMTkwODE0LjExIHpEYXRhLmZyb21GaWxlPSIrekRhdGEuZnJvbUZpbGUrIiAuY2hhbm5lbD0iK3pEYXRhLmNoYW5uZWwpOyAvL0VSUzE5MDgxNAovL0NSTjE5MDMwOCBIYW5kbGUgdXBsb2FkZWQgZmlsZXMgdmlhIExpZ2h0bmluZyBDb21wb25lbnQgYW5kIHpTZW5kIG9yIG1hc3MgaW1wb3J0CmlmICh6RGF0YS5mcm9tRmlsZSkgeyAvL0VSUzE5MDYxNyBUT0RPIGNoYW5uZWwgZ3VpZGUKICAgIGlmICh6RGF0YS5jaGFubmVsICYmIHpEYXRhLmNoYW5uZWwudG9Mb3dlckNhc2UoKS5pbmRleE9mKCJ1cGxvYWQiKT4tMSkgewogICAgICAgIHZhciBmcm9tRmlsZSA9IHpEYXRhLmZyb21GaWxlLnN1YnN0cmluZyh6RGF0YS5mcm9tRmlsZS5sYXN0SW5kZXhPZignLycpICsgMSk7IC8vRVJTMTkwNjI0IHNjb3BpbmcKICAgICAgICB2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgiLSIpOwogICAgICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gMykgewogICAgICAgICAgICB2YXIgYXR0YWNoVG9JZCA9IHBhcnRzWzJdOwogICAgICAgICAgICBhbGVydCgiQEBAIFVQTE9BRDogQVRUQUNISU5HIFRPIFNBTEVTRk9SQ0UgUkVDT1JEID0gIiArIGF0dGFjaFRvSWQpOwogICAgICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCAiICsgZnJvbUZpbGU7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiVXBsb2FkZWQiKTsgLy8gUFYxOTA1MjYgdXBkYXRlZCBmb3IgdXBsb2FkIGxvZ2ljIAogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJVcGxvYWRlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCAiVVBMT0FEIik7CiAgICAgICAgICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50VXBsb2FkKGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA3MDYgekRhdGEuY2hhbm5lbCBmb3IgdXBsb2FkIGFuZCBpbXBvcnQKICAgICAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgICAgICAgICAgaWYgKCF6RGF0YS5tYWtlU3RhY2spIHJldHVybjsgLy9FUlMxOTA4MTQKICAgICAgICB9CiAgICB9CiAgICBpZiAoekRhdGEuY2hhbm5lbCAmJiB6RGF0YS5jaGFubmVsLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiaW1wb3J0Iik+LTEpIHsKICAgICAgICB2YXIgZnJvbUZpbGUgPSB6RGF0YS5mcm9tRmlsZS5zdWJzdHJpbmcoekRhdGEuZnJvbUZpbGUubGFzdEluZGV4T2YoJy8nKSArIDEpOyAvL0VSUzE5MDYyNCBzY29waW5nCiAgICAgICAgLy9jdXN0b20gc2V0dGluZyBpbXBvcnQgLTozOkNvbnRhY3Q6RmF4IG9yIGNhbGwgekRhdGEuY2xpZW50SW1wb3J0U09RTChmcm9tRmlsZSkgdG8gZ2V0IHF1ZXJ5CiAgICAgICAgdmFyIHNmSWQ9ekRhdGEuY2xpZW50SW1wb3J0U09RTChkb2MsZnJvbUZpbGUpOwogICAgICAgIHZhciBpbXBvcnRDb25maWc9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJJbXBvcnRlcl9fYyIpLnRyaW0oKTsKICAgICAgICBpZiAoIWltcG9ydENvbmZpZykgaW1wb3J0Q29uZmlnPVhEZXBsb3ltZW50SW5mbyhkb2MsIkltcG9ydGVyX19jIikudHJpbSgpOyAvL0VSUzE5MDgwNSB0eXBlIGluIGlmICgpCiAgICAgICAgaWYgKCFzZklkICYmICFpbXBvcnRDb25maWcpIGltcG9ydENvbmZpZz0iLTozOkNvbnRhY3Q6RmF4IjsKICAgICAgICBpZiAoIXNmSWQgJiYgaW1wb3J0Q29uZmlnLmluZGV4T2YoIjoiKT4tMSkgewogICAgICAgICAgICB2YXIgaW1wb3J0ZXI9aW1wb3J0Q29uZmlnLnNwbGl0KCI6Iik7CiAgICAgICAgICAgIHZhciBkPWltcG9ydGVyWzBdOwogICAgICAgICAgICB2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdChkKTsKICAgICAgICAgICAgdmFyIGY9KCIwIitpbXBvcnRlclsxXSkvMTsKICAgICAgICAgICAgaWYgKHBhcnRzLmxlbmd0aCA+PSBmKSB7CiAgICAgICAgICAgICAgICB2YXIgc2ZxID0ge307IHNmcVtpbXBvcnRlclszXV09cGFydHNbZl07IC8vRVJTMTkwODA1CiAgICAgICAgICAgICAgICBzZklkID0gZ2V0U0ZSZWNvcmRJRChkb2MsIGltcG9ydGVyWzJdLCBzZnEgKTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgICAgICBpZiAoc2ZJZCkgewogICAgICAgICAgICB2YXIgYXR0YWNoVG9JZCA9IHNmSWQ7CiAgICAgICAgICAgIGFsZXJ0KCJAQEAgSU1QT1JUOiBBVFRBQ0hJTkcgVE8gU0FMRVNGT1JDRSBSRUNPUkQgPSAiICsgYXR0YWNoVG9JZCk7CiAgICAgICAgICAgIHZhciBsYWJlbCA9ICJGaWxlIHVwbG9hZGVkICIgKyBmcm9tRmlsZTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgbGFiZWwsIGF0dGFjaFRvSWQsIHRydWUpOwogICAgICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJJbXBvcnRlZCIpOyAvLyBQVjE5MDUyNiB1cGRhdGVkIGZvciB1cGxvYWQgbG9naWMgCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIkltcG9ydGVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsICJJTVBPUlQiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRVcGxvYWQoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDcwNiB6RGF0YS5jaGFubmVsIGZvciB1cGxvYWQgYW5kIGltcG9ydAogICAgICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgICAgICAgICBpZiAoIXpEYXRhLm1ha2VTdGFjaykgcmV0dXJuOwogICAgICAgIH0KICAgIH0KfSAKCiAgICAvL0VSUzE3MTAxMiBrZXl3b3JkcyBmb3IgZGVtbwogICAgdmFyIGtleXdvcmRzPVsiRU5STDpFbnJvbGxtZW50fiIsIkNPTjpDb25zZW50fiIsIkNPTjpjb25zZW50fiIsIlBBUFA6UGF0aWVudCBBc3Npc3RhbmNlIiwiUEFVVEg6UHJpb3J+IEF1dGhvcml6YXRpb25+IiwiUkVHOlJlZ3VsYXRpb25+IiwiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiRkFYOiJdOwogICAga2V5d29yZHM9WyJGQVg6Il07IC8vRVJTMTkwNjE3IFRPRE8gYXJyYXkgb3Igbm90PyAvL0VSUzE5MDYyNCB0aGUgRkFYOiB2YWx1ZSBlZmZlY3RpdmVseSByZW1vdmVzIE9DUiBUT0RPIHRyeSBib3RoIHdheXMKICAgIHpEYXRhLmRvY1R5cGVPQ1IgPSB6RGF0YS5kb2NUeXBlcihkb2MsIGtleXdvcmRzKTsgLy9QVjE5MDUyNiBSZW1vdmVkIHR5cGVzCiAgICBhbGVydCgiZG9jVHlwZSB3YXMgIiArIGRvYy5kb2NUeXBlICsgIiBub3cgIiArIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgdmFyIHpUeXBlID0gZG9jLlgoIlhfZG9jVHlwZSIpOwogICAgaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgICAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICB6VHlwZSA9IHpEYXRhLmRvY1R5cGVPQ1I7IC8vRVJTMTcwMzMwIHNhdmVkIGJlbG93IGludG8gU0YgZmF4VHlwZV9fYyBmaWVsZAogICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyczApOwogICAgfQogICAgCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgLy9FUlMxOTA4MTQgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCgogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwgelR5cGUpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIk5ldyBTdGFjayIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDaGFubmVsX19jIiwgekRhdGEuY2hhbm5lbCk7CiAgICAvLyBNU0gxNzExMTYgdXNpbmcgelN0YWNrX1JlY2VpdmVkX19jIGluc3RlYWQgb2YgbGF0ZXN0RmF4X19jIGJlY2F1c2UgbGF0ZXN0RmF4X19jIGdldHMgdXBkYXRlZCBieSBzYXZlLmpzcCBldmVyeSB0aW1lIHRoZSByZWNvcmQgaXMgdXBkYXRlZAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCB6RGF0YS5mb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOyAvL0VSUzIwMDIwMSB3YXMgekRhdGEuY2xhc3NpZmljYXRpb24gIzY4ODI1CiAgICBhcnJPZlBhaXJzLnB1c2goIlByb2dyYW1fX2MiLCB6RGF0YS5wcm9ncmFtTmFtZSk7IC8vRVJTMjAwMjAyIFRPRE8gaW50byBtYW5hZ2VkIHBhY2thZ2UgIzY4ODI1CiAgICBhcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsIGRvYy5kZWxpdmVyZWRUbyk7IC8vRVJTMTcwNjI4IGNhbGxlciBpZAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyAvL0VSUzE3MDczMSAjNDA1OTMKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7IAogICAgYXR0YWNoTGFiZWwgPSAiTmV3ICIrekRhdGEuY2xhc3NpZmljYXRpb24rIiBTdGFjayByZWNlaXZlZCBvbiAiICsgekRhdGEuZm9ybWF0Tm93OwogICAgYXR0YWNoTGFiZWwgPSAiTmV3ICIrekRhdGEucHJvZ3JhbU5hbWUrIiBTdGFjayByZWNlaXZlZCBvbiAiICsgekRhdGEuZm9ybWF0Tm93OyAvL0VSUzIwMDIwMiBjbGllbnRGaWxlIHByb2JhYmx5IG92ZXJyaWRlcyBUT0RPIGNsZWFuPwogICAgCiAgICAvL0VSUzE5MDgwMyBwdXNoIGFueSBjdXN0b20gb25lIHRvIHpEYXRhLmNsaWVudFN0YWNrcygpIG9yIG5ldyB6U3RhY2tGaWVsZHMgY3VzdG9tIHNldHRpbmcKICAgIC8vRVJTMTkwNzIyIG1ha2UgRXhjZXB0aW9uIGdvIGF3YXkgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCBmb3JtYXROb3cpOwogICAgLy9FUlMxOTA4MDMgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAogICAgCiAgICBpZiAoekRhdGEuY2xpZW50U3RhY2spIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDYxNyBUT0RPIHpEYXRhLmNsaWVudFN0YWNrKCkgd2l0aCBsYWJlbCAvL1N0YWNrcygpIG5vdyBTdGFjaygpCiAgICB2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpEYXRhLnpwcywgYXR0YWNoTGFiZWwsIGFyck9mUGFpcnMpOyAvLyBQVjE5MDUzMCBhZGRlZCAiIgoKICAgIC8vQ1JOMTgwNzI2IENhc2UgIzUwNDY5IC0tIFNldCB0aGUgIlJlY2VpdmVkIiBjaGVja2JveAogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKICAgIGFyck9mUGFpcnMgPSBbXTsgLy8gUFYxOTA1MzEgYWRkZWQgZm9yIHN0YWNrIGxhYmVsCiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwogICAgaWYgKFgoZG9jLCAiWF9mcm9tRmlsZSIpPT09IiIpIHsgLy9FUlMxOTA2MjQKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZnJvbUZpbGUiLGRvYy5VUkwuc3Vic3RyaW5nKGRvYy5VUkwubGFzdEluZGV4T2YoIi8iKSsxKSk7IAogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CiAgICBpZiAoc2ZJZCkgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc2ZJZCk7IC8vRVJTMjAwMjA0IGJ1ZyBvciBtaXN1bmRlcnN0YW5kaW5nICM2ODgyNQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCBYKGRvYywgIlhfcmV2aWV3cyIpICsgIlJlY2VpdmVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOyAvL0VSUzE3MDkwOSAjNDA1OTIvQ0FXIFVwZGF0ZQogICAKICAgIGlmICh6RGF0YS56Y2hhbm5lbCkgeyAvL0VSUzIwMDIwOSBncm91cHMgIzY4ODI1IFRPRE8tRE9ORSBtb3ZlIHVwIGFuZCBjaGVjayBmb3Igb3RoZXIgdmFsdWVzCiAgICAgICAgdmFyIGZsZHM9ImRiLXJlYWRlcnMsZGItdXNlcnMiLnNwbGl0KCIsIik7CiAgICAgICAgZm9yICh2YXIgaSBpbiBmbGRzKSB7CiAgICAgICAgICAgIHZhciBmPWZsZHNbaV07CiAgICAgICAgICAgIGFsZXJ0KCJFUlMyMDAyMDkgemNoYW5uZWwuIitmKyI9Iit6RGF0YS56Y2hhbm5lbFtmXSk7CiAgICAgICAgICAgIGlmICh6RGF0YS56Y2hhbm5lbFtmXSkgYXJyT2ZQYWlycy5wdXNoKGYsIHpEYXRhLnpjaGFubmVsW2ZdKTsKICAgICAgICAgICAgLy9pZiAoekRhdGEuemNoYW5uZWxbImRiLXJlYWRlcnMiXSkgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgekRhdGEuemNoYW5uZWxbImRiLXJlYWRlcnMiXSk7CiAgICAgICAgICAgIC8vaWYgKHpEYXRhLnpjaGFubmVsWyJkYi11c2VycyJdKSBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgekRhdGEuemNoYW5uZWxbImRiLXVzZXJzIl0pOwogICAgICAgIH0KICAgIH0KICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiRVJTMjAwMjA1IGNyZWF0ZWQgelN0YWNrICIrc2ZJZCk7IC8vRVJTMjAwMjA1ICM2ODgyNQogICAgLyogRU5EICov"},"ordinal":23}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var arrOfPairs = [];
var attachLabel = "";
var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS170626 now in the package //ERS190617 zData.zp
var zStack=zData.zps; //"Stack__c"

    //ERS190617 TODO document hub strategy
    //ERS190814 #61511 move orand and orgswitch up before zData.channel
    zData.setbrandprogram(doc); //who and where
    zData.orgSwitch(doc); //TODO refactor with setBrandProgram()

zData.fromFile=X(doc,"X_fromFile"); //ERS190814 TODO? do in library?
alert("ERS190814.11 zData.fromFile="+zData.fromFile+" .channel="+zData.channel); //ERS190814
//CRN190308 Handle uploaded files via Lightning Component and zSend or mass import
if (zData.fromFile) { //ERS190617 TODO channel guide
    if (zData.channel && zData.channel.toLowerCase().indexOf("upload")>-1) {
        var fromFile = zData.fromFile.substring(zData.fromFile.lastIndexOf('/') + 1); //ERS190624 scoping
        var parts = fromFile.split("-");
        if (parts.length >= 3) {
            var attachToId = parts[2];
            alert("@@@ UPLOAD: ATTACHING TO SALESFORCE RECORD = " + attachToId);
            var label = "File uploaded " + fromFile;
            attach(doc, label, attachToId, true);
            arrOfPairs = [];
            arrOfPairs.push("X_reviewedStatus", "Uploaded"); // PV190526 updated for upload logic 
            arrOfPairs.push("X_reviews", "Uploaded by agent at " + now0 + "<br/>"+zData.signedStatus);
            arrOfPairs.push("db-label", label);
            arrOfPairs.push("X_docType", "UPLOAD");
            arrOfPairs=zData.clientUpload(doc,arrOfPairs); //ERS190706 zData.channel for upload and import
            updateDB(doc, arrOfPairs);
            if (!zData.makeStack) return; //ERS190814
        }
    }
    if (zData.channel && zData.channel.toLowerCase().indexOf("import")>-1) {
        var fromFile = zData.fromFile.substring(zData.fromFile.lastIndexOf('/') + 1); //ERS190624 scoping
        //custom setting import -:3:Contact:Fax or call zData.clientImportSOQL(fromFile) to get query
        var sfId=zData.clientImportSOQL(doc,fromFile);
        var importConfig=XCustomSetting(doc,zData.zp+"Importer__c").trim();
        if (!importConfig) importConfig=XDeploymentInfo(doc,"Importer__c").trim(); //ERS190805 type in if ()
        if (!sfId && !importConfig) importConfig="-:3:Contact:Fax";
        if (!sfId && importConfig.indexOf(":")>-1) {
            var importer=importConfig.split(":");
            var d=importer[0];
            var parts = fromFile.split(d);
            var f=("0"+importer[1])/1;
            if (parts.length >= f) {
                var sfq = {}; sfq[importer[3]]=parts[f]; //ERS190805
                sfId = getSFRecordID(doc, importer[2], sfq );
            }
        }
        if (sfId) {
            var attachToId = sfId;
            alert("@@@ IMPORT: ATTACHING TO SALESFORCE RECORD = " + attachToId);
            var label = "File uploaded " + fromFile;
            attach(doc, label, attachToId, true);
            arrOfPairs = [];
            arrOfPairs.push("X_reviewedStatus", "Imported"); // PV190526 updated for upload logic 
            arrOfPairs.push("X_reviews", "Imported by agent at " + now0 + "<br/>"+zData.signedStatus);
            arrOfPairs.push("db-label", label);
            arrOfPairs.push("X_docType", "IMPORT");
            arrOfPairs=zData.clientUpload(doc,arrOfPairs); //ERS190706 zData.channel for upload and import
            updateDB(doc, arrOfPairs);
            if (!zData.makeStack) return;
        }
    }
} 

    //ERS171012 keywords for demo
    var keywords=["ENRL:Enrollment~","CON:Consent~","CON:consent~","PAPP:Patient Assistance","PAUTH:Prior~ Authorization~","REG:Regulation~","REF:REFERRAL","REF:Referral","FAX:"];
    keywords=["FAX:"]; //ERS190617 TODO array or not? //ERS190624 the FAX: value effectively removes OCR TODO try both ways
    zData.docTypeOCR = zData.docTyper(doc, keywords); //PV190526 Removed types
    alert("docType was " + doc.docType + " now " + zData.docTypeOCR);
    var zType = doc.X("X_docType");
    if (doc.docType != zData.docTypeOCR) {
        var arrOfPairs0 = [];
        arrOfPairs0.push("X_docTypeOCR", zData.docTypeOCR);
        arrOfPairs0.push("X_docType", zData.docTypeOCR);
        zType = zData.docTypeOCR; //ERS170330 saved below into SF faxType__c field
        updateDB(doc, arrOfPairs0);
    }
    
    //ERS190617 TODO document hub strategy
    //ERS190814 zData.setbrandprogram(doc); //who and where
    //ERS190814 zData.orgSwitch(doc); //TODO refactor with setBrandProgram()

    arrOfPairs = [];
    arrOfPairs.push(zp+"faxType__c", zType);
    arrOfPairs.push(zp+"Priority__c", "Medium");
    arrOfPairs.push(zp+"Status__c", "New Stack");
    arrOfPairs.push(zp+"Channel__c", zData.channel);
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
    arrOfPairs.push(zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zp+"newFax__c", "true");
    arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
    arrOfPairs.push(zp+"Program_Name__c", zData.programName); //ERS200201 was zData.classification #68825
    arrOfPairs.push("Program__c", zData.programName); //ERS200202 TODO into managed package #68825
    arrOfPairs.push(zp+"sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
    arrOfPairs.push(zp+"From__c", doc.deliveredFrom);
    arrOfPairs.push(zp+"Stage__c", "Received"); //ERS170731 #40593
    arrOfPairs.push(zp+"Classification__c", zData.classification); 
    attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
    attachLabel = "New "+zData.programName+" Stack received on " + zData.formatNow; //ERS200202 clientFile probably overrides TODO clean?
    
    //ERS190803 push any custom one to zData.clientStacks() or new zStackFields custom setting
    //ERS190722 make Exception go away arrOfPairs.push("zStack_Received__c", formatNow);
    //ERS190803 arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
    
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
    var sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added ""

    //CRN180726 Case #50469 -- Set the "Received" checkbox
    var now0 = getCurDateAndTime(doc, false, true);
    arrOfPairs = []; // PV190531 added for stack label
    arrOfPairs.push("db-label", attachLabel);
    if (X(doc, "X_fromFile")==="") { //ERS190624
        arrOfPairs.push("X_fromFile",doc.URL.substring(doc.URL.lastIndexOf("/")+1)); 
        alert("ERS190624 repairing X_fromFile using "+doc.URL);
    }
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    arrOfPairs.push("X_reviewedStatus", "Received");
    if (sfId) arrOfPairs.push("X_stack", sfId); //ERS200204 bug or misunderstanding #68825
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"+zData.signedStatus); //ERS170909 #40592/CAW Update
   
    if (zData.zchannel) { //ERS200209 groups #68825 TODO-DONE move up and check for other values
        var flds="db-readers,db-users".split(",");
        for (var i in flds) {
            var f=flds[i];
            alert("ERS200209 zchannel."+f+"="+zData.zchannel[f]);
            if (zData.zchannel[f]) arrOfPairs.push(f, zData.zchannel[f]);
            //if (zData.zchannel["db-readers"]) arrOfPairs.push("db-readers", zData.zchannel["db-readers"]);
            //if (zData.zchannel["db-users"]) arrOfPairs.push("db-users", zData.zchannel["db-users"]);
        }
    }
    updateDB(doc, arrOfPairs);
    alert("ERS200205 created zStack "+sfId); //ERS200205 #68825
    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
