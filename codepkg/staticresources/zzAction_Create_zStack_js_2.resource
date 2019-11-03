<!--
// Name: Create zStack
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV191029 to update doctype
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-29 19:21:21","active":false,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"dmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIGF0dGFjaExhYmVsID0gIiI7CnZhciB6cD16RGF0YS56cDsgaWYgKCF6cCkgenA9IlpQQVBFUl9fIjsgLy9FUlMxNzA2MjYgbm93IGluIHRoZSBwYWNrYWdlIC8vRVJTMTkwNjE3IHpEYXRhLnpwCnZhciB6U3RhY2s9ekRhdGEuenBzOyAvLyJTdGFja19fYyIKCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgIzYxNTExIG1vdmUgb3JhbmQgYW5kIG9yZ3N3aXRjaCB1cCBiZWZvcmUgekRhdGEuY2hhbm5lbAogICAgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCgp6RGF0YS5mcm9tRmlsZT1YKGRvYywiWF9mcm9tRmlsZSIpOyAvL0VSUzE5MDgxNCBUT0RPPyBkbyBpbiBsaWJyYXJ5PwphbGVydCgiRVJTMTkwODE0LjExIHpEYXRhLmZyb21GaWxlPSIrekRhdGEuZnJvbUZpbGUrIiAuY2hhbm5lbD0iK3pEYXRhLmNoYW5uZWwpOyAvL0VSUzE5MDgxNAovL0NSTjE5MDMwOCBIYW5kbGUgdXBsb2FkZWQgZmlsZXMgdmlhIExpZ2h0bmluZyBDb21wb25lbnQgYW5kIHpTZW5kIG9yIG1hc3MgaW1wb3J0CmlmICh6RGF0YS5mcm9tRmlsZSkgeyAvL0VSUzE5MDYxNyBUT0RPIGNoYW5uZWwgZ3VpZGUKICAgIGlmICh6RGF0YS5jaGFubmVsICYmIHpEYXRhLmNoYW5uZWwudG9Mb3dlckNhc2UoKS5pbmRleE9mKCJ1cGxvYWQiKT4tMSkgewogICAgICAgIHZhciBmcm9tRmlsZSA9IHpEYXRhLmZyb21GaWxlLnN1YnN0cmluZyh6RGF0YS5mcm9tRmlsZS5sYXN0SW5kZXhPZignLycpICsgMSk7IC8vRVJTMTkwNjI0IHNjb3BpbmcKICAgICAgICB2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgiLSIpOwogICAgICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gMykgewogICAgICAgICAgICB2YXIgYXR0YWNoVG9JZCA9IHBhcnRzWzJdOwogICAgICAgICAgICBhbGVydCgiQEBAIFVQTE9BRDogQVRUQUNISU5HIFRPIFNBTEVTRk9SQ0UgUkVDT1JEID0gIiArIGF0dGFjaFRvSWQpOwogICAgICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCAiICsgZnJvbUZpbGU7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiVXBsb2FkZWQiKTsgLy8gUFYxOTA1MjYgdXBkYXRlZCBmb3IgdXBsb2FkIGxvZ2ljCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIlVwbG9hZGVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsICJVUExPQUQiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRVcGxvYWQoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDcwNiB6RGF0YS5jaGFubmVsIGZvciB1cGxvYWQgYW5kIGltcG9ydAogICAgICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgICAgICAgICBpZiAoIXpEYXRhLm1ha2VTdGFjaykgcmV0dXJuOyAvL0VSUzE5MDgxNAogICAgICAgIH0KICAgIH0KICAgIGlmICh6RGF0YS5jaGFubmVsICYmIHpEYXRhLmNoYW5uZWwudG9Mb3dlckNhc2UoKS5pbmRleE9mKCJpbXBvcnQiKT4tMSkgewogICAgICAgIHZhciBmcm9tRmlsZSA9IHpEYXRhLmZyb21GaWxlLnN1YnN0cmluZyh6RGF0YS5mcm9tRmlsZS5sYXN0SW5kZXhPZignLycpICsgMSk7IC8vRVJTMTkwNjI0IHNjb3BpbmcKICAgICAgICAvL2N1c3RvbSBzZXR0aW5nIGltcG9ydCAtOjM6Q29udGFjdDpGYXggb3IgY2FsbCB6RGF0YS5jbGllbnRJbXBvcnRTT1FMKGZyb21GaWxlKSB0byBnZXQgcXVlcnkKICAgICAgICB2YXIgc2ZJZD16RGF0YS5jbGllbnRJbXBvcnRTT1FMKGRvYyxmcm9tRmlsZSk7CiAgICAgICAgdmFyIGltcG9ydENvbmZpZz1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIkltcG9ydGVyX19jIikudHJpbSgpOwogICAgICAgIGlmICghaW1wb3J0Q29uZmlnKSBpbXBvcnRDb25maWc9WERlcGxveW1lbnRJbmZvKGRvYywiSW1wb3J0ZXJfX2MiKS50cmltKCk7IC8vRVJTMTkwODA1IHR5cGUgaW4gaWYgKCkKICAgICAgICBpZiAoIXNmSWQgJiYgIWltcG9ydENvbmZpZykgaW1wb3J0Q29uZmlnPSItOjM6Q29udGFjdDpGYXgiOwogICAgICAgIGlmICghc2ZJZCAmJiBpbXBvcnRDb25maWcuaW5kZXhPZigiOiIpPi0xKSB7CiAgICAgICAgICAgIHZhciBpbXBvcnRlcj1pbXBvcnRDb25maWcuc3BsaXQoIjoiKTsKICAgICAgICAgICAgdmFyIGQ9aW1wb3J0ZXJbMF07CiAgICAgICAgICAgIHZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KGQpOwogICAgICAgICAgICB2YXIgZj0oIjAiK2ltcG9ydGVyWzFdKS8xOwogICAgICAgICAgICBpZiAocGFydHMubGVuZ3RoID49IGYpIHsKICAgICAgICAgICAgICAgIHZhciBzZnEgPSB7fTsgc2ZxW2ltcG9ydGVyWzNdXT1wYXJ0c1tmXTsgLy9FUlMxOTA4MDUKICAgICAgICAgICAgICAgIHNmSWQgPSBnZXRTRlJlY29yZElEKGRvYywgaW1wb3J0ZXJbMl0sIHNmcSApOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgICAgIGlmIChzZklkKSB7CiAgICAgICAgICAgIHZhciBhdHRhY2hUb0lkID0gc2ZJZDsKICAgICAgICAgICAgYWxlcnQoIkBAQCBJTVBPUlQ6IEFUVEFDSElORyBUTyBTQUxFU0ZPUkNFIFJFQ09SRCA9ICIgKyBhdHRhY2hUb0lkKTsKICAgICAgICAgICAgdmFyIGxhYmVsID0gIkZpbGUgdXBsb2FkZWQgIiArIGZyb21GaWxlOwogICAgICAgICAgICBhdHRhY2goZG9jLCBsYWJlbCwgYXR0YWNoVG9JZCwgdHJ1ZSk7CiAgICAgICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIkltcG9ydGVkIik7IC8vIFBWMTkwNTI2IHVwZGF0ZWQgZm9yIHVwbG9hZCBsb2dpYwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJJbXBvcnRlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCAiSU1QT1JUIik7CiAgICAgICAgICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50VXBsb2FkKGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA3MDYgekRhdGEuY2hhbm5lbCBmb3IgdXBsb2FkIGFuZCBpbXBvcnQKICAgICAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgICAgICAgICAgaWYgKCF6RGF0YS5tYWtlU3RhY2spIHJldHVybjsKICAgICAgICB9CiAgICB9Cn0KCiAgICAvL0VSUzE3MTAxMiBrZXl3b3JkcyBmb3IgZGVtbwogICAgdmFyIGtleXdvcmRzPVsiRU5STDpFbnJvbGxtZW50fiIsIkNPTjpDb25zZW50fiIsIkNPTjpjb25zZW50fiIsIlBBUFA6UGF0aWVudCBBc3Npc3RhbmNlIiwiUEFVVEg6UHJpb3J+IEF1dGhvcml6YXRpb25+IiwiUkVHOlJlZ3VsYXRpb25+IiwiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiRkFYOiJdOwogICAga2V5d29yZHM9WyJGQVg6Il07IC8vRVJTMTkwNjE3IFRPRE8gYXJyYXkgb3Igbm90PyAvL0VSUzE5MDYyNCB0aGUgRkFYOiB2YWx1ZSBlZmZlY3RpdmVseSByZW1vdmVzIE9DUiBUT0RPIHRyeSBib3RoIHdheXMKICAgIHpEYXRhLmRvY1R5cGVPQ1IgPSB6RGF0YS5kb2NUeXBlcihkb2MsIGtleXdvcmRzKTsgLy9QVjE5MDUyNiBSZW1vdmVkIHR5cGVzCiAgICBhbGVydCgiZG9jVHlwZSB3YXMgIiArIGRvYy5kb2NUeXBlICsgIiBub3cgIiArIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgdmFyIHpUeXBlID0gZG9jLlgoIlhfZG9jVHlwZSIpOwogICAgaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgICAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICB6VHlwZSA9IHpEYXRhLmRvY1R5cGVPQ1I7IC8vRVJTMTcwMzMwIHNhdmVkIGJlbG93IGludG8gU0YgZmF4VHlwZV9fYyBmaWVsZAogICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyczApOwogICAgfQogICAKICAgIC8vRVJTMTkwNjE3IFRPRE8gZG9jdW1lbnQgaHViIHN0cmF0ZWd5CiAgICAvL0VSUzE5MDgxNCB6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgLy93aG8gYW5kIHdoZXJlCiAgICAvL0VSUzE5MDgxNCB6RGF0YS5vcmdTd2l0Y2goZG9jKTsgLy9UT0RPIHJlZmFjdG9yIHdpdGggc2V0QnJhbmRQcm9ncmFtKCkKCiAgICBhcnJPZlBhaXJzID0gW107CiAgICAvL2Fyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsICJVTjpVbmtub3duIik7CiAgICB6RGF0YS5kb2NUeXBlID0gIlVOOlVua25vd24iOy8vUFYxOTEwMjkgdG8gdXBkYXRlIGRvY3R5cGUKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVW5hc3NpZ25lZCIpOyAvL1B2MTkxMDE0IHVwZGF0ZWQgcHJpb3JpdHkKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIk5ldyBTdGFjayIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDaGFubmVsX19jIiwgekRhdGEuY2hhbm5lbCk7CiAgICAvLyBNU0gxNzExMTYgdXNpbmcgelN0YWNrX1JlY2VpdmVkX19jIGluc3RlYWQgb2YgbGF0ZXN0RmF4X19jIGJlY2F1c2UgbGF0ZXN0RmF4X19jIGdldHMgdXBkYXRlZCBieSBzYXZlLmpzcCBldmVyeSB0aW1lIHRoZSByZWNvcmQgaXMgdXBkYXRlZAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCB6RGF0YS5mb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOyAvLyBQVjE5MTAwNCB1cGRhdGVkCiAgICBhcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsIGRvYy5kZWxpdmVyZWRUbyk7IC8vRVJTMTcwNjI4IGNhbGxlciBpZAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyAvL0VSUzE3MDczMSAjNDA1OTMKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CiAgICAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgIjAwRzVFMDAwMDA0bHFuWSIpOyAvL1BWMTkxMDI3IHVwZGF0ZWQKICAgIGF0dGFjaExhYmVsID0gIk5ldyAiK3pEYXRhLmNsYXNzaWZpY2F0aW9uKyIgU3RhY2sgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzsKICAgCiAgICAvL0VSUzE5MDgwMyBwdXNoIGFueSBjdXN0b20gb25lIHRvIHpEYXRhLmNsaWVudFN0YWNrcygpIG9yIG5ldyB6U3RhY2tGaWVsZHMgY3VzdG9tIHNldHRpbmcKICAgIC8vRVJTMTkwNzIyIG1ha2UgRXhjZXB0aW9uIGdvIGF3YXkgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCBmb3JtYXROb3cpOwogICAgLy9FUlMxOTA4MDMgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAogICAKICAgIGlmICh6RGF0YS5jbGllbnRTdGFjaykgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRTdGFjayhkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNjE3IFRPRE8gekRhdGEuY2xpZW50U3RhY2soKSB3aXRoIGxhYmVsIC8vU3RhY2tzKCkgbm93IFN0YWNrKCkKICAgIHZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgekRhdGEuenBzLCBhdHRhY2hMYWJlbCwgYXJyT2ZQYWlycyk7IC8vIFBWMTkwNTMwIGFkZGVkICIiCiAgIC8qIGlmICgxPT09MSl7CiAgICAgICAgIHZhciBmbGF0VVJMPSJodHRwOi8vbG9jYWxob3N0OjgwODAva2IvanNwL1NGX3NlbmRGYXguanNwP2ZheFRvPTE2Nzg5NDgzMDczJm1vZGU9ZmlsZVBERiI7CiAgICAgICAgYWxlcnQoIkVSUzE5MDQxMSBVUkw9IitmbGF0VVJMKTsKICAgICAgICB2YXIgc2ZPcmdJRD1kb2Mua2JEYXRhLnNmT3JnYW5pemF0aW9uSUQ7CiAgICAgICAgaWYgKCFzZk9yZ0lEKSBzZk9yZ0lEPWRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQuc3Vic3RyaW5nKDAsZG9jLmtiRGF0YS5zZlNlc3Npb25JRC5pbmRleE9mKCIhIiktMSk7CiAgICAgICAgZmxhdFVSTCs9IiZTRm9yZz0iK3NmT3JnSUQrIiZTRnNlc3Npb249Iitkb2Mua2JEYXRhLnNmU2Vzc2lvbklEOwogICAgICAgIGZsYXRVUkwrPSImY292ZXJJRDI9bm9CYXJjb2RlJmNvdmVySUQ9Iitkb2MuZGJJRDsgLy9uZXdTbmlwcGV0SWQgZm9yIGJhcmNvZGVpZiB3ZSB3YW50IHdlIGNhbiByZW1vdmUoY292ZXJJRDI9bm9CYXJjb2RlKQogICAgICAgIGZsYXRVUkwrPSImU0Z0eXBlPVpQQVBFUl9felN0YWNrX19jIjsgIC8vRVJTMTkwNDExIFRPRE8gYmV0dGVyIG1pc3NpbmcgcGFyYW1ldGVycwogICAgICAgIGFsZXJ0KCJFUlMxOTA0MTEgZmxhdHRlbiB3aXRoICIrZmxhdFVSTCk7CiAgICAgICAgdmFyIGZsYXREYXRhPXdnZXQoZG9jLGZsYXRVUkwsbnVsbCxudWxsKTsgLy9TRl9zZW5kRmF4LmpzcCBpcyByZXR1cm5pbmcgYSB6aXBwaSBpZAogICAgICAgCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCAiT3V0Ym91bmQiKTsvL1BWMTkxMDA5CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVuYXNzaWduZWQiKTsgLy9QdjE5MTAwNCB1cGRhdGVkIHByaW9yaXR5CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YXR1c19fYyIsICJOZXcgU3RhY2siKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsIHpEYXRhLmNoYW5uZWwpOwogICAgLy8gTVNIMTcxMTE2IHVzaW5nIHpTdGFja19SZWNlaXZlZF9fYyBpbnN0ZWFkIG9mIGxhdGVzdEZheF9fYyBiZWNhdXNlIGxhdGVzdEZheF9fYyBnZXRzIHVwZGF0ZWQgYnkgc2F2ZS5qc3AgZXZlcnkgdGltZSB0aGUgcmVjb3JkIGlzIHVwZGF0ZWQKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgekRhdGEuZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsgLy8gUFYxOTEwMDQgdXBkYXRlZAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLCBkb2MuZGVsaXZlcmVkVG8pOyAvL0VSUzE3MDYyOCBjYWxsZXIgaWQKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiQ29tcGxldGVkIik7IC8vRVJTMTcwNzMxICM0MDU5MwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIGF0dGFjaExhYmVsID0gIk5ldyAiK3pEYXRhLmNsYXNzaWZpY2F0aW9uKyIgU3RhY2sgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzsKICAgCiAgICAvL0VSUzE5MDgwMyBwdXNoIGFueSBjdXN0b20gb25lIHRvIHpEYXRhLmNsaWVudFN0YWNrcygpIG9yIG5ldyB6U3RhY2tGaWVsZHMgY3VzdG9tIHNldHRpbmcKICAgIC8vRVJTMTkwNzIyIG1ha2UgRXhjZXB0aW9uIGdvIGF3YXkgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCBmb3JtYXROb3cpOwogICAgLy9FUlMxOTA4MDMgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAogICAKICAgIGlmICh6RGF0YS5jbGllbnRTdGFjaykgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRTdGFjayhkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNjE3IFRPRE8gekRhdGEuY2xpZW50U3RhY2soKSB3aXRoIGxhYmVsIC8vU3RhY2tzKCkgbm93IFN0YWNrKCkKICAgIHZhciBzZklkQ29weSA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpEYXRhLnpwcywgYXR0YWNoTGFiZWwsIGFyck9mUGFpcnMpOyAvLyBQVjE5MDUzMCBhZGRlZCAiIgoKICAgIH0gKi8gLy9QVjE5MTAxMyBjb21tZW50ZWQKICAgIC8vQ1JOMTgwNzI2IENhc2UgIzUwNDY5IC0tIFNldCB0aGUgIlJlY2VpdmVkIiBjaGVja2JveAogICAKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSwgdHJ1ZSk7CiAgICBhcnJPZlBhaXJzID0gW107IC8vIFBWMTkwNTMxIGFkZGVkIGZvciBzdGFjayBsYWJlbAogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGF0dGFjaExhYmVsKTsKICAgIGlmIChYKGRvYywgIlhfZnJvbUZpbGUiKT09PSIiKSB7IC8vRVJTMTkwNjI0CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2Zyb21GaWxlIixkb2MuVVJMLnN1YnN0cmluZyhkb2MuVVJMLmxhc3RJbmRleE9mKCIvIikrMSkpOwogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsIHNmSWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyAiUmVjZWl2ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOyAgCiAgICAvKiBFTkQgKi8="},"ordinal":15}

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
    //arrOfPairs.push(zp+"faxType__c", "UN:Unknown");
    zData.docType = "UN:Unknown";//PV191029 to update doctype
    arrOfPairs.push(zp+"Priority__c", "Unassigned"); //Pv191014 updated priority
    arrOfPairs.push(zp+"Status__c", "New Stack");
    arrOfPairs.push(zp+"Channel__c", zData.channel);
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
    arrOfPairs.push(zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zp+"newFax__c", "true");
    arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
    arrOfPairs.push(zp+"Program_Name__c", zData.programName); // PV191004 updated
    arrOfPairs.push(zp+"sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
    arrOfPairs.push(zp+"From__c", doc.deliveredFrom);
    arrOfPairs.push(zp+"Stage__c", "Received"); //ERS170731 #40593
    arrOfPairs.push(zp+"Classification__c", zData.classification);
     arrOfPairs.push("OwnerId", "00G5E000004lqnY"); //PV191027 updated
    attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
   
    //ERS190803 push any custom one to zData.clientStacks() or new zStackFields custom setting
    //ERS190722 make Exception go away arrOfPairs.push("zStack_Received__c", formatNow);
    //ERS190803 arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
   
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
    var sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added ""
   /* if (1===1){
         var flatURL="http://localhost:8080/kb/jsp/SF_sendFax.jsp?faxTo=16789483073&mode=filePDF";
        alert("ERS190411 URL="+flatURL);
        var sfOrgID=doc.kbData.sfOrganizationID;
        if (!sfOrgID) sfOrgID=doc.kbData.sfSessionID.substring(0,doc.kbData.sfSessionID.indexOf("!")-1);
        flatURL+="&SForg="+sfOrgID+"&SFsession="+doc.kbData.sfSessionID;
        flatURL+="&coverID2=noBarcode&coverID="+doc.dbID; //newSnippetId for barcodeif we want we can remove(coverID2=noBarcode)
        flatURL+="&SFtype=ZPAPER__zStack__c";  //ERS190411 TODO better missing parameters
        alert("ERS190411 flatten with "+flatURL);
        var flatData=wget(doc,flatURL,null,null); //SF_sendFax.jsp is returning a zippi id
       
    arrOfPairs = [];
    arrOfPairs.push(zp+"faxType__c", "Outbound");//PV191009
    arrOfPairs.push(zp+"Priority__c", "Unassigned"); //Pv191004 updated priority
    arrOfPairs.push(zp+"Status__c", "New Stack");
    arrOfPairs.push(zp+"Channel__c", zData.channel);
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
    arrOfPairs.push(zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zp+"newFax__c", "true");
    arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));
    arrOfPairs.push(zp+"Program_Name__c", zData.programName); // PV191004 updated
    arrOfPairs.push(zp+"sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
    arrOfPairs.push(zp+"From__c", doc.deliveredFrom);
    arrOfPairs.push(zp+"Stage__c", "Completed"); //ERS170731 #40593
    arrOfPairs.push(zp+"Classification__c", zData.classification);
    attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
   
    //ERS190803 push any custom one to zData.clientStacks() or new zStackFields custom setting
    //ERS190722 make Exception go away arrOfPairs.push("zStack_Received__c", formatNow);
    //ERS190803 arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
   
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
    var sfIdCopy = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added ""

    } */ //PV191013 commented
    //CRN180726 Case #50469 -- Set the "Received" checkbox
   
    var now0 = getCurDateAndTime(doc, false, true);
    arrOfPairs = []; // PV190531 added for stack label
    arrOfPairs.push("db-label", attachLabel);
    if (X(doc, "X_fromFile")==="") { //ERS190624
        arrOfPairs.push("X_fromFile",doc.URL.substring(doc.URL.lastIndexOf("/")+1));
        alert("ERS190624 repairing X_fromFile using "+doc.URL);
    }
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    arrOfPairs.push("X_sfStackId", sfId);
    arrOfPairs.push("X_reviewedStatus", "Received");
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"+zData.signedStatus); //ERS170909 #40592/CAW Update
    updateDB(doc, arrOfPairs);  
    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
