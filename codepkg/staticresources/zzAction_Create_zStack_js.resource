<!--
// Name: Create zStack
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV210916
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-09-16 17:04:51","active":true,"button":"","name":"Create zStack","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"},{"name":"doc.X(\"X_barCode0\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMyMTAyMDggZm9yY2luZyBhIG5ldyBzdGF0aWMgcmVzb3VyY2UgSSBob3BlICM3NTY4NQovL0VSUzIxMDEyNyAjODA5NDYgc3RhcnQgb2YgbWFqb3IgcmVmYWN0b3IgdG8gdXNlIGxvc3QgY2xpZW50IGNhbGxzCnZhciBhcnJPZlBhaXJzID0gW107CnZhciBhdHRhY2hMYWJlbCA9ICIiOwp2YXIgenA9ekRhdGEuenA7IGlmICghenApIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZSAvL0VSUzE5MDYxNyB6RGF0YS56cAp2YXIgelN0YWNrPXpEYXRhLnpwczsgLy8iU3RhY2tfX2MiCgogICAgLy9FUlMxOTA2MTcgVE9ETyBkb2N1bWVudCBodWIgc3RyYXRlZ3kKICAgIC8vRVJTMTkwODE0ICM2MTUxMSBtb3ZlIG9yYW5kIGFuZCBvcmdzd2l0Y2ggdXAgYmVmb3JlIHpEYXRhLmNoYW5uZWwKICAgIHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAvL3dobyBhbmQgd2hlcmUKICAgIHpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL1RPRE8gcmVmYWN0b3Igd2l0aCBzZXRCcmFuZFByb2dyYW0oKQogICAKYWxlcnQoIkVSUzE5MDgxNC4xMSB6RGF0YS5mcm9tRmlsZT0iK3pEYXRhLmZyb21GaWxlKyIgLmNoYW5uZWw9Iit6RGF0YS5jaGFubmVsKTsgLy9FUlMxOTA4MTQKLy9DUk4xOTAzMDggSGFuZGxlIHVwbG9hZGVkIGZpbGVzIHZpYSBMaWdodG5pbmcgQ29tcG9uZW50IGFuZCB6U2VuZCBvciBtYXNzIGltcG9ydAppZiAoekRhdGEuZnJvbUZpbGUpIHsgLy9FUlMxOTA2MTcgVE9ETyBjaGFubmVsIGd1aWRlCiAgICBpZiAoekRhdGEuY2hhbm5lbCAmJiB6RGF0YS5jaGFubmVsLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigidXBsb2FkIik+LTEpIHsKICAgICAgICB2YXIgZnJvbUZpbGUgPSB6RGF0YS5mcm9tRmlsZS5zdWJzdHJpbmcoekRhdGEuZnJvbUZpbGUubGFzdEluZGV4T2YoJy8nKSArIDEpOyAvL0VSUzE5MDYyNCBzY29waW5nCiAgICAgICAgdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoIi0iKTsKICAgICAgICBpZiAocGFydHMubGVuZ3RoID49IDMpIHsKICAgICAgICAgICAgdmFyIGF0dGFjaFRvSWQgPSBwYXJ0c1syXTsKICAgICAgICAgICAgYWxlcnQoIkBAQCBVUExPQUQ6IEFUVEFDSElORyBUTyBTQUxFU0ZPUkNFIFJFQ09SRCA9ICIgKyBhdHRhY2hUb0lkKTsKICAgICAgICAgICAgdmFyIGxhYmVsID0gIkZpbGUgdXBsb2FkZWQgIiArIGZyb21GaWxlOwogICAgICAgICAgICBhdHRhY2goZG9jLCBsYWJlbCwgYXR0YWNoVG9JZCwgdHJ1ZSk7CiAgICAgICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlVwbG9hZGVkIik7IC8vIFBWMTkwNTI2IHVwZGF0ZWQgZm9yIHVwbG9hZCBsb2dpYwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJVcGxvYWRlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCAiVVBMT0FEIik7CiAgICAgICAgICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50VXBsb2FkKGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA3MDYgekRhdGEuY2hhbm5lbCBmb3IgdXBsb2FkIGFuZCBpbXBvcnQKICAgICAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgICAgICAgICAgaWYgKCF6RGF0YS5tYWtlU3RhY2spIHJldHVybjsgLy9FUlMxOTA4MTQKICAgICAgICB9CiAgICB9CiAgICBpZiAoekRhdGEuY2hhbm5lbCAmJiB6RGF0YS5jaGFubmVsLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiaW1wb3J0Iik+LTEpIHsKICAgICAgICB2YXIgZnJvbUZpbGUgPSB6RGF0YS5mcm9tRmlsZS5zdWJzdHJpbmcoekRhdGEuZnJvbUZpbGUubGFzdEluZGV4T2YoJy8nKSArIDEpOyAvL0VSUzE5MDYyNCBzY29waW5nCiAgICAgICAgLy9jdXN0b20gc2V0dGluZyBpbXBvcnQgLTozOkNvbnRhY3Q6RmF4IG9yIGNhbGwgekRhdGEuY2xpZW50SW1wb3J0U09RTChmcm9tRmlsZSkgdG8gZ2V0IHF1ZXJ5CiAgICAgICAgdmFyIHNmSWQ9ekRhdGEuY2xpZW50SW1wb3J0U09RTChkb2MsZnJvbUZpbGUpOwogICAgICAgIHZhciBpbXBvcnRDb25maWc9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJJbXBvcnRlcl9fYyIpLnRyaW0oKTsKICAgICAgICBpZiAoIWltcG9ydENvbmZpZykgaW1wb3J0Q29uZmlnPVhEZXBsb3ltZW50SW5mbyhkb2MsIkltcG9ydGVyX19jIikudHJpbSgpOyAvL0VSUzE5MDgwNSB0eXBlIGluIGlmICgpCiAgICAgICAgaWYgKCFzZklkICYmICFpbXBvcnRDb25maWcpIGltcG9ydENvbmZpZz0iLTozOkNvbnRhY3Q6RmF4IjsKICAgICAgICBpZiAoIXNmSWQgJiYgaW1wb3J0Q29uZmlnLmluZGV4T2YoIjoiKT4tMSkgewogICAgICAgICAgICB2YXIgaW1wb3J0ZXI9aW1wb3J0Q29uZmlnLnNwbGl0KCI6Iik7CiAgICAgICAgICAgIHZhciBkPWltcG9ydGVyWzBdOwogICAgICAgICAgICB2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdChkKTsKICAgICAgICAgICAgdmFyIGY9KCIwIitpbXBvcnRlclsxXSkvMTsKICAgICAgICAgICAgaWYgKHBhcnRzLmxlbmd0aCA+PSBmKSB7CiAgICAgICAgICAgICAgICB2YXIgc2ZxID0ge307IHNmcVtpbXBvcnRlclszXV09cGFydHNbZl07IC8vRVJTMTkwODA1CiAgICAgICAgICAgICAgICBzZklkID0gZ2V0U0ZSZWNvcmRJRChkb2MsIGltcG9ydGVyWzJdLCBzZnEgKTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgICAgICBpZiAoc2ZJZCkgewogICAgICAgICAgICB2YXIgYXR0YWNoVG9JZCA9IHNmSWQ7CiAgICAgICAgICAgIGFsZXJ0KCJAQEAgSU1QT1JUOiBBVFRBQ0hJTkcgVE8gU0FMRVNGT1JDRSBSRUNPUkQgPSAiICsgYXR0YWNoVG9JZCk7CiAgICAgICAgICAgIHZhciBsYWJlbCA9ICJGaWxlIHVwbG9hZGVkICIgKyBmcm9tRmlsZTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgbGFiZWwsIGF0dGFjaFRvSWQsIHRydWUpOwogICAgICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJJbXBvcnRlZCIpOyAvLyBQVjE5MDUyNiB1cGRhdGVkIGZvciB1cGxvYWQgbG9naWMKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCAiSW1wb3J0ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgIklNUE9SVCIpOwogICAgICAgICAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFVwbG9hZChkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNzA2IHpEYXRhLmNoYW5uZWwgZm9yIHVwbG9hZCBhbmQgaW1wb3J0CiAgICAgICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIGlmICghekRhdGEubWFrZVN0YWNrKSByZXR1cm47CiAgICAgICAgfQogICAgfQp9CgogICAgLy9FUlMxNzEwMTIga2V5d29yZHMgZm9yIGRlbW8KICAgIHZhciBrZXl3b3Jkcz1bIkVOUkw6RW5yb2xsbWVudH4iLCJDT046Q29uc2VudH4iLCJDT046Y29uc2VudH4iLCJQQVBQOlBhdGllbnQgQXNzaXN0YW5jZSIsIlBBVVRIOlByaW9yfiBBdXRob3JpemF0aW9ufiIsIlJFRzpSZWd1bGF0aW9ufiIsIlJFRjpSRUZFUlJBTCIsIlJFRjpSZWZlcnJhbCIsIkZBWDoiXTsKICAgIGtleXdvcmRzPVsiRkFYOiJdOyAvL0VSUzE5MDYxNyBUT0RPIGFycmF5IG9yIG5vdD8gLy9FUlMxOTA2MjQgdGhlIEZBWDogdmFsdWUgZWZmZWN0aXZlbHkgcmVtb3ZlcyBPQ1IgVE9ETyB0cnkgYm90aCB3YXlzCiAgICB6RGF0YS5kb2NUeXBlT0NSID0gekRhdGEuZG9jVHlwZXIoZG9jLCBrZXl3b3Jkcyk7IC8vUFYxOTA1MjYgUmVtb3ZlZCB0eXBlcwogICAgYWxlcnQoImRvY1R5cGUgd2FzICIgKyBkb2MuZG9jVHlwZSArICIgbm93ICIgKyB6RGF0YS5kb2NUeXBlT0NSKTsKICAgIHZhciB6VHlwZSA9IGRvYy5YKCJYX2RvY1R5cGUiKTsKICAgIGlmIChkb2MuZG9jVHlwZSAhPSB6RGF0YS5kb2NUeXBlT0NSKSB7CiAgICAgICAgdmFyIGFyck9mUGFpcnMwID0gW107CiAgICAgICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlT0NSIiwgekRhdGEuZG9jVHlwZU9DUik7CiAgICAgICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIiwgekRhdGEuZG9jVHlwZU9DUik7CiAgICAgICAgelR5cGUgPSB6RGF0YS5kb2NUeXBlT0NSOyAvL0VSUzE3MDMzMCBzYXZlZCBiZWxvdyBpbnRvIFNGIGZheFR5cGVfX2MgZmllbGQKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgIH0KICAgCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgLy9FUlMxOTA4MTQgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCgogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgLy9QVjIwMDgyNSBVcGRhdGVkIGZvciBCYXJjb2RlIGRvY3R5cGUKICAgICAKICAgICB2YXIgcmUgPSBuZXcgUmVnRXhwKCJeRU5STCIpOyAvL1BWMjAxMQogICAgIHZhciByZTIgPSAvXkVOUkwyLzsKICAgICB2YXIgZmF4VHlwZSA9IHpUeXBlOwogICAgIHZhciBiYXJDb2RlID0gWChkb2MsIlhfYmFyQ29kZTAiKTsKICAgICB2YXIgWF9maWVsZDAgPSBYKGRvYywiWF9maWVsZDAiKTsKICAgICBhbGVydCgiQEBAWF9iYXJDb2RlMCIrIGJhckNvZGUpOwogICAgIGFsZXJ0KCJAQEBFTlJMVEVTVCIgKyByZS50ZXN0KGJhckNvZGUpKTsKICAgICBhbGVydCgiQEBARU5STDJURVNUIiArIHJlMi50ZXN0KGJhckNvZGUpKTsKICAgICAvL2lmKHJlMi50ZXN0KGJhckNvZGUpKXsKICAgICAgICAgaWYoYmFyQ29kZS5pbmRleE9mKCJFTlJMMiIpPj0wKXsKICAgICAgICAgZmF4VHlwZT0gIkVOUkwyIjsKICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwgZmF4VHlwZSk7CiAgICAgICAgYWxlcnQoIkBAQE1hdGNoZWQgRU5STDIiKTsKICAgICB9CiAgICAgLy9lbHNlIGlmKHJlLnRlc3QoYmFyQ29kZSkpewogICAgIGVsc2UgaWYoYmFyQ29kZS5pbmRleE9mKCJFTlJMIik+PTApewogICAgICAgICBmYXhUeXBlPSAiRU5STCI7CiAgICAgICAgIGFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsIGZheFR5cGUpOwogICAgICAgICBhbGVydCgiQEBAQE1hdGNoZWQgRU5STCIpOwogICAgIH0KICAgICBlbHNlIGlmKGJhckNvZGUuaW5kZXhPZigiRU5KSUFQIik+PTApeyAvL1BWMjEwOTA4CiAgICAgICAgIGZheFR5cGU9ICJFTkpJQVAiOwogICAgICAgICBhcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCBmYXhUeXBlKTsKICAgICAgICAgYWxlcnQoIkBAQEBNYXRjaGVkIEVOSklBUCIpOwogICAgIH0KICAgLyogdmFyIHN4ID0gbmV3IFJlZ0V4cCgiXihTWC18YTB8YTEpIik7Ly9QVjIwMTIwMiBhZGRlZCBmb3Igb2xkIGJhcmNvZGUKICAgIGlmKHN4LnRlc3QoWF9maWVsZDApKXsKICAgICAgICBmYXhUeXBlPSAiRU5STCI7CiAgICAgICAgYWxlcnQoIkBAQEBNYXRjaGVkIEVOUkwiKTsKICAgIH0qLwogICAgZWxzZXsKICAgIHpEYXRhLmRvY1R5cGU9ICJGQVgiOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwgekRhdGEuZG9jVHlwZSk7IC8vIFBWMjEwODI0IGFkZGVkIEZheAogICAgIGFsZXJ0KCJmYXhUeXBldmFsdWVAQEAiICArIHpEYXRhLmRvY1R5cGUpOwogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIk5ldyBTdGFjayIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDaGFubmVsX19jIiwgekRhdGEuY2hhbm5lbCk7CiAgICAvLyBNU0gxNzExMTYgdXNpbmcgelN0YWNrX1JlY2VpdmVkX19jIGluc3RlYWQgb2YgbGF0ZXN0RmF4X19jIGJlY2F1c2UgbGF0ZXN0RmF4X19jIGdldHMgdXBkYXRlZCBieSBzYXZlLmpzcCBldmVyeSB0aW1lIHRoZSByZWNvcmQgaXMgdXBkYXRlZAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCB6RGF0YS5mb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgdmFyIHBhZ2VSYW5nZSA9IjEtIitYKGRvYywiWF9wYWdlcyIpOwogICAgekRhdGEucGFnZXM9WChkb2MsIlhfcGFnZXMiKS8xOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQYWdlc19fYyIsIFgoZG9jLCJYX3BhZ2VzIikpOwogICAgYWxlcnQoIkVSUzIwMDIxMyBaUEFQRVJfX1BhZ2VzX19jPSIrekRhdGEucGFnZXMrIiBpcyAiK1goZG9jLCJYX3BhZ2VzIikpOwoKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOyAvL0VSUzIwMDIwMSB3YXMgekRhdGEuY2xhc3NpZmljYXRpb24gIzY4ODI1CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fX2MiLCB6RGF0YS5wcm9ncmFtTmFtZSk7IC8vRVJTMjAwMjAyIFRPRE8gaW50byBtYW5hZ2VkIHBhY2thZ2UgIzY4ODI1CiAgIC8vIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsgLy9FUlMxNzA2MjggY2FsbGVyIGlkCiAgICBhcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsICgiY29tbXVuaXR5IiA9PT0gekRhdGEuY2hhbm5lbCB8fCAidXBsb2FkIiA9PT0gekRhdGEuY2hhbm5lbCA/IHpEYXRhLmNoYW5uZWwgOiBkb2MuZGVsaXZlcmVkVG8pKTsgLy9KUEIxOTA1MjkgYWRkZWQgc28gQ29tbXVuaXR5IHNob3dzIHVwIGluIE1hc3RlciBJbnRha2UgTGlzdAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyAvL0VSUzE3MDczMSAjNDA1OTMKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7IC8vUFYyMTA5MDMKICAgIGF0dGFjaExhYmVsID0gIkZheC0iK2RvYy5kZWxpdmVyZWRGcm9tKyItIisgekRhdGEuZm9ybWF0Tm93OyAvL1BWMjEwOTE2CiAgICAvL2F0dGFjaExhYmVsID0gIk5ldyAiK3pEYXRhLmNsYXNzaWZpY2F0aW9uKyIgU3RhY2sgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzsKICAgIC8vYXR0YWNoTGFiZWwgPSAiTmV3ICIrekRhdGEucHJvZ3JhbU5hbWUrIiBTdGFjayByZWNlaXZlZCBvbiAiICsgekRhdGEuZm9ybWF0Tm93OyAvL0VSUzIwMDIwMiBjbGllbnRGaWxlIHByb2JhYmx5IG92ZXJyaWRlcyBUT0RPIGNsZWFuPwogICAKICAgIC8vRVJTMjAwODE1ICM3NTY4NSBHVUVTU0lORyBhcnJPZlBhaXJzLnB1c2goIiIrIlByb2dyYW1fX2MiLHpEYXRhLnByb2dyYW1OYW1lKTsgIC8vRVJTMjAwMzA4IFRPRE8gc3dpdGNoIHRvIHBpY2tsaXN0CiAgICAvL0VSUzIwMDMwOCBpZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKCiAgIAogICAgLy9FUlMxOTA4MDMgcHVzaCBhbnkgY3VzdG9tIG9uZSB0byB6RGF0YS5jbGllbnRTdGFja3MoKSBvciBuZXcgelN0YWNrRmllbGRzIGN1c3RvbSBzZXR0aW5nCiAgICAvL0VSUzE5MDcyMiBtYWtlIEV4Y2VwdGlvbiBnbyBhd2F5IGFyck9mUGFpcnMucHVzaCgielN0YWNrX1JlY2VpdmVkX19jIiwgZm9ybWF0Tm93KTsKICAgIC8vRVJTMTkwODAzIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKICAgaWYoZG9jLmRlbGl2ZXJlZEZyb20uc3RhcnRzV2l0aCgiYTAiKSB8fCBkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCJhMSIpKSB7CiAgICAgICB6RGF0YS5kb05vdENyZWF0ZUxpZ2h0bmluZ0ZpbGUgPSB0cnVlOwogICB9CiAgICBpZiAoekRhdGEuY2xpZW50U3RhY2spIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDYxNyBUT0RPIHpEYXRhLmNsaWVudFN0YWNrKCkgd2l0aCBsYWJlbCAvL1N0YWNrcygpIG5vdyBTdGFjaygpCiAgICAgdmFyIHNmSWQ7CiAgICAgLyppZiAoekRhdGEubmV3RG9jdW1lbnQgJiYgIShkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCJhMSIpIHx8IGRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoImEwIikpKSB7CiAgICBzZklkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCB6RGF0YS56cHMsIG51bGwsIGFyck9mUGFpcnMpOy8vUFYyMTA4MzEvLyBQVjE5MDUzMCBhZGRlZCAiIgogICAgIGFsZXJ0KCJAQEBhcnJPZlBhaXJzMSIgKyBhcnJPZlBhaXJzKTsKICAgICAgICB2YXIgYXJyT2ZQYWlyc0F0dGFjaFRvID0gW107CiAgICAgICAgYXJyT2ZQYWlyc0F0dGFjaFRvLnB1c2goIlhfYXR0YWNoZWRUbyIsc2ZJZCk7IAogICAgICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzQXR0YWNoVG8pOyAgCiAgICAgIH0KICAgICAgZWxzZXsKICAgICAgICAgICBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgekRhdGEuenBzLCBhdHRhY2hMYWJlbCwgYXJyT2ZQYWlycyk7IAogICAgICAgIGFsZXJ0KCJAMTIzNDU1NnNmSWQiICsgc2ZJZCk7IAogICAgICB9Ki8gLy8gUFYyMTA5MDcgY29tbWVudGVkIHRvIGNyZWF0ZSBhdHRhY2htZW50cwogICAgICAgIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS56cHMsIGF0dGFjaExhYmVsLCBhcnJPZlBhaXJzKTsgIC8vUFYyMTA5MDcgdXBkYXRlZCBhbHdheXMgYXR0YWNobW5lYnRzCiAgICAgICAgYWxlcnQoIkAxMjM0NTU2c2ZJZCIgKyBzZklkKTsgCiAgICAgLy9hbGVydCgiQDEyM3pEYXRhLnpwcyIgKyB6RGF0YS56cHMpOwogICAgLy92YXIgc2ZJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgekRhdGEuenBzLCBudWxsLCBhcnJPZlBhaXJzKTsvL1BWMjEwODMxCiAgICAgICAgLy9hbGVydCgiQDEyMzQ1NTZzZklkIiArIHNmSWQpOyAvL1BWMjEwOTAyIGFkZGluZyBmb3IgYXR0YWNobWVudAogICAgICAgICAKCiAgICBhbGVydCgiQEBAUGNEb2NJZCIgKyB6RGF0YS5QY0RvY0lkKTsKICAgCiAgICAgICAgaWYoekRhdGEuUGNEb2NJZCl7IC8vUFYyMTA3MjcgZm9yIHN0YWNrIG51bWJlciBvbiBEb2N1bWVudCByZWNvcmQKICAgICAgICB2YXIgZG9jYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIGRvY2Fyck9mUGFpcnMucHVzaCgielN0YWNrX19jIiwgc2ZJZCk7CiAgICAgICAgZG9jYXJyT2ZQYWlycy5wdXNoKCJQYXRpZW50Q29ubmVjdF9fUENfRG9jdW1lbnRfTmFtZV9fYyIsICJGYXggLSAiICsgZG9jLmRlbGl2ZXJlZEZyb20gKyAiLSIgKyB6RGF0YS5mb3JtYXROb3cpOy8vUFYyMTA5MTMKICAgICAgICBhbGVydCgiMTIzQEBAIik7CiAgICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgIlBhdGllbnRDb25uZWN0X19QQ19Eb2N1bWVudF9fYyIsIHpEYXRhLlBjRG9jSWQsIGRvY2Fyck9mUGFpcnMpOyAgLy8gQ2hhbmdlZCBmcm9tIGFyck9mUGFyaXJzIHRvIGRvY2Fyck9mUGFpcnMKICAgIH0KICAgIGlmICh6RGF0YS5jbGllbnRSZWNlaXZlZERvY3VtZW50KSB7IC8vQ1JOMjAxMDI0IENhc2UgIzc2Nzg4IFdlIG5lZWQgdG8gY3JlYXRlIGEgUmVjZWl2ZWQgRG9jdW1lbnQgZm9yIHRoZSBwYXJlbnQgc3RhY2sgYWxzby4KICAgIC8vICBvbmx5IGlmIGl0IHdhc24ndCBhbHJlYWR5IHVwbG9hZGVkIHRvIFNhbGVzZm9yY2UKICAgIGlmICghZG9jLmRlbGl2ZXJlZEZyb20pIHsgLy9FUlMyMTAzMjAgIzgxMzI3IHRoZSBuZXcgYWdlbnQud2FyIGFuZCB6aXBwaTIgZG8gbm90IGhhdmUgYWxsIHRoZSByaWdodCBtZXRhZGF0YSEhISBUT0RPIENNQS9TSFIvQ1JOIGZpeCB6aXBwaTIKICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAgZml4IGRvYy5kZWxpdmVyZWRGcm9tIHdpdGggIitkb2MuVVJMKTsKICAgICAgIHZhciBpPWRvYy5VUkwubGFzdEluZGV4T2YoIi8iKTsKICAgICAgIGRvYy5kZWxpdmVyZWRGcm9tPWRvYy5VUkwuc3Vic3RyaW5nKGkrMSxkb2MuVVJMLmluZGV4T2YoIi0iLGkrMSkpOwogICAgfQogICAgaWYgKCFkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSkgeyB6RGF0YS5yZWNEb2NJZCA9IHpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQoZG9jLCBzZklkLCAiUmVjZWl2ZWQgRG9jdW1lbnQgelN0YWNrIik7IH0gLy9FUlMyMDEwMTggIzc3MjUyCiAgICB9CiAgICAvL0NSTjIwMTAyNCBDYXNlICM3Njc4OCBJZiB0aGlzIGlzIGZyb20gYW4gdXBsb2FkLCBzZXQgdGhlIERvY3VtZW50IE51bWJlciBpbiB0aGUgUmVjZWl2ZWQgRG9jdW1lbnQKICAgIGFsZXJ0KCIjIyMgZG9jLmRlbGl2ZXJlZEZyb20gPT4gIiArIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSkgewogICAgYWxlcnQoIiMjIyBTZXR0aW5nIHRoZSBEb2N1bWVudCBOdW1iZXIgaW4gdGhlIFJlY2VpdmVkIERvY3VtZW50IHdpdGggSWQ6ICIgKyBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICB2YXIgYXJyb2ZQYWlyc1JEID0gW107CiAgICBhcnJvZlBhaXJzUkQucHVzaCgiRG9jdW1lbnROdW1iZXIiLCAiejoiICsgZG9jLmRiSUQpOwogICAgICAgIHpEYXRhLnN0YWNrSWQ9c2ZJZDsKICAgICAgICBpZiAoekRhdGEuc3RhY2tJZCkgYXJyb2ZQYWlyc1JELnB1c2goInpTdGFja19fYyIsekRhdGEuc3RhY2tJZCk7IC8vRVJTMjEwMzIwICM4MTMyNyBjb25uZWN0IFJlY0RvYyB0byB6U3RhY2sKICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgIlJlY2VpdmVkRG9jdW1lbnQiLCBkb2MuZGVsaXZlcmVkRnJvbSwgYXJyb2ZQYWlyc1JEKTsKICAgIGlmICghekRhdGEucmVjRG9jSWQpICB6RGF0YS5yZWNEb2NJZCA9IGRvYy5kZWxpdmVyZWRGcm9tOyAvL0VSUzIxMDMyMCAjODEzMjcKICAgIH0KCiAgICAvL0NSTjE4MDcyNiBDYXNlICM1MDQ2OSAtLSBTZXQgdGhlICJSZWNlaXZlZCIgY2hlY2tib3gKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSwgdHJ1ZSk7CiAgICBhcnJPZlBhaXJzID0gW107IC8vIFBWMTkwNTMxIGFkZGVkIGZvciBzdGFjayBsYWJlbAogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGF0dGFjaExhYmVsKTsKICAgIGlmIChYKGRvYywgIlhfZnJvbUZpbGUiKT09PSIiKSB7IC8vRVJTMTkwNjI0CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2Zyb21GaWxlIixkb2MuVVJMLnN1YnN0cmluZyhkb2MuVVJMLmxhc3RJbmRleE9mKCIvIikrMSkpOwogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CiAgICBpZiAoc2ZJZCkgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc2ZJZCk7IC8vRVJTMjAwMjA0IGJ1ZyBvciBtaXN1bmRlcnN0YW5kaW5nICM2ODgyNQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCBYKGRvYywgIlhfcmV2aWV3cyIpICsgIlJlY2VpdmVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOyAvL0VSUzE3MDkwOSAjNDA1OTIvQ0FXIFVwZGF0ZQogICAKICAgIGlmICh6RGF0YS5yZWNEb2NJZCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLCBkb2Mua2JEYXRhLnNmU2VydmVyKyIvIitzZklkKyIsIit6RGF0YS5yZWNEb2NJZCk7IC8vRVJTMjEwMzIwICM4MTMyNwogICAgfQogICAKICAgIGlmICh6RGF0YS56Y2hhbm5lbCkgeyAvL0VSUzIwMDIwOSBncm91cHMgIzY4ODI1IFRPRE8tRE9ORSBtb3ZlIHVwIGFuZCBjaGVjayBmb3Igb3RoZXIgdmFsdWVzCiAgICAgICAgaWYgKHpEYXRhLnpjaGFubmVsLm93bmVyKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnpjaGFubmVsLm93bmVyKTsgLy9FUlMyMDAzMDggIzcwMjczCiAgICAgICAgdmFyIGZsZHM9ImRiLXJlYWRlcnMsZGItdXNlcnMiLnNwbGl0KCIsIik7CiAgICAgICAgZm9yICh2YXIgaSBpbiBmbGRzKSB7CiAgICAgICAgICAgIHZhciBmPWZsZHNbaV07CiAgICAgICAgICAgIGFsZXJ0KCJFUlMyMDAyMDkgemNoYW5uZWwuIitmKyI9Iit6RGF0YS56Y2hhbm5lbFtmXSk7CiAgICAgICAgICAgIGlmICh6RGF0YS56Y2hhbm5lbFtmXSkgYXJyT2ZQYWlycy5wdXNoKGYsIHpEYXRhLnpjaGFubmVsW2ZdKTsKICAgICAgICAgICAgLy9pZiAoekRhdGEuemNoYW5uZWxbImRiLXJlYWRlcnMiXSkgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgekRhdGEuemNoYW5uZWxbImRiLXJlYWRlcnMiXSk7CiAgICAgICAgICAgIC8vaWYgKHpEYXRhLnpjaGFubmVsWyJkYi11c2VycyJdKSBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgekRhdGEuemNoYW5uZWxbImRiLXVzZXJzIl0pOwogICAgICAgIH0KICAgIH0gZWxzZSB7IGFsZXJ0KCJFUlMyMDA4MjIgbm8gemNoYW5uZWwgeWV0ISIpOyB9CiAgIAogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgIGFsZXJ0KCJFUlMyMDAyMDUgY3JlYXRlZCB6U3RhY2sgIitzZklkKTsgLy9FUlMyMDAyMDUgIzY4ODI1CiAgIAogIC8qIGlmICh6RGF0YS56Y2hhbm5lbC5hY3Rpb24pIHsgLy9FUlMyMTAzMjAgIzgxMzI3IGNvbnRpbnVlIHRoZSBqb3VybmV5CiAgICAgICAgdmFyIGE9IHpEYXRhK3pEYXRhLnpjaGFubmVsLmFjdGlvbi5yZXBsYWNlKCIoKSIsIihkb2MpIik7CiAgICAgICAvL3ZhciBhPSB6RGF0YS56Y2hhbm5lbC5hY3Rpb24ucmVwbGFjZSgiKCkiLCIoZG9jLCBbXSwgekRhdGEuU0ZEQ3R5cGUsIHpEYXRhLnByb2dyYW1OYW1lKSIpOyAvL1BWMjEwOTAxIG1ha2luZyBjYWxsIHRvIG5ld2RvY3VtZW50CiAgICAgICAgYWxlcnQoIkVSUzIxMDMyMC4xNzMgam91cm5leSBvbiAiK2EpOwogICAgICAgIHZhciByPWV2YWwoYSk7CiAgICAgICAgYWxlcnQoIkVSUzIxMDMyMC4xNzUgcmVzdWx0cyAiK3IpOwogICAgfSovCiAgICAvKiBFTkQgKi8K"},"ordinal":8}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS210208 forcing a new static resource I hope #75685
//ERS210127 #80946 start of major refactor to use lost client calls
var arrOfPairs = [];
var attachLabel = "";
var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS170626 now in the package //ERS190617 zData.zp
var zStack=zData.zps; //"Stack__c"

    //ERS190617 TODO document hub strategy
    //ERS190814 #61511 move orand and orgswitch up before zData.channel
    zData.setbrandprogram(doc); //who and where
    zData.orgSwitch(doc); //TODO refactor with setBrandProgram()
   
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
    //PV200825 Updated for Barcode doctype
     
     var re = new RegExp("^ENRL"); //PV2011
     var re2 = /^ENRL2/;
     var faxType = zType;
     var barCode = X(doc,"X_barCode0");
     var X_field0 = X(doc,"X_field0");
     alert("@@@X_barCode0"+ barCode);
     alert("@@@ENRLTEST" + re.test(barCode));
     alert("@@@ENRL2TEST" + re2.test(barCode));
     //if(re2.test(barCode)){
         if(barCode.indexOf("ENRL2")>=0){
         faxType= "ENRL2";
         arrOfPairs.push(zp+"faxType__c", faxType);
        alert("@@@Matched ENRL2");
     }
     //else if(re.test(barCode)){
     else if(barCode.indexOf("ENRL")>=0){
         faxType= "ENRL";
         arrOfPairs.push(zp+"faxType__c", faxType);
         alert("@@@@Matched ENRL");
     }
     else if(barCode.indexOf("ENJIAP")>=0){ //PV210908
         faxType= "ENJIAP";
         arrOfPairs.push(zp+"faxType__c", faxType);
         alert("@@@@Matched ENJIAP");
     }
   /* var sx = new RegExp("^(SX-|a0|a1)");//PV201202 added for old barcode
    if(sx.test(X_field0)){
        faxType= "ENRL";
        alert("@@@@Matched ENRL");
    }*/
    else{
    zData.docType= "FAX";
    arrOfPairs.push(zp+"faxType__c", zData.docType); // PV210824 added Fax
     alert("faxTypevalue@@@"  + zData.docType);
    }
    arrOfPairs.push(zp+"Priority__c", "Medium");
    arrOfPairs.push(zp+"Status__c", "New Stack");
    arrOfPairs.push(zp+"Channel__c", zData.channel);
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
    arrOfPairs.push(zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zp+"newFax__c", "true");
    var pageRange ="1-"+X(doc,"X_pages");
    zData.pages=X(doc,"X_pages")/1;
    arrOfPairs.push(zp+"Pages__c", X(doc,"X_pages"));
    alert("ERS200213 ZPAPER__Pages__c="+zData.pages+" is "+X(doc,"X_pages"));

    arrOfPairs.push(zp+"Program_Name__c", zData.programName); //ERS200201 was zData.classification #68825
    arrOfPairs.push(zp+"Program__c", zData.programName); //ERS200202 TODO into managed package #68825
   // arrOfPairs.push(zp+"sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
    arrOfPairs.push(zp+"sentFaxTo__c", ("community" === zData.channel || "upload" === zData.channel ? zData.channel : doc.deliveredTo)); //JPB190529 added so Community shows up in Master Intake List
    arrOfPairs.push(zp+"From__c", doc.deliveredFrom);
    arrOfPairs.push(zp+"Stage__c", "Received"); //ERS170731 #40593
    arrOfPairs.push(zp+"Classification__c", zData.classification); //PV210903
    attachLabel = "Fax-"+doc.deliveredFrom+"-"+ zData.formatNow; //PV210916
    //attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
    //attachLabel = "New "+zData.programName+" Stack received on " + zData.formatNow; //ERS200202 clientFile probably overrides TODO clean?
   
    //ERS200815 #75685 GUESSING arrOfPairs.push(""+"Program__c",zData.programName);  //ERS200308 TODO switch to picklist
    //ERS200308 if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);

   
    //ERS190803 push any custom one to zData.clientStacks() or new zStackFields custom setting
    //ERS190722 make Exception go away arrOfPairs.push("zStack_Received__c", formatNow);
    //ERS190803 arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
   if(doc.deliveredFrom.startsWith("a0") || doc.deliveredFrom.startsWith("a1")) {
       zData.doNotCreateLightningFile = true;
   }
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
     var sfId;
     /*if (zData.newDocument && !(doc.deliveredFrom.startsWith("a1") || doc.deliveredFrom.startsWith("a0"))) {
    sfId = createSFRecord(doc, zData.zps, null, arrOfPairs);//PV210831// PV190530 added ""
     alert("@@@arrOfPairs1" + arrOfPairs);
        var arrOfPairsAttachTo = [];
        arrOfPairsAttachTo.push("X_attachedTo",sfId); 
        updateDB(doc,arrOfPairsAttachTo);  
      }
      else{
           sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); 
        alert("@1234556sfId" + sfId); 
      }*/ // PV210907 commented to create attachments
        sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs);  //PV210907 updated always attachmnebts
        alert("@1234556sfId" + sfId); 
     //alert("@123zData.zps" + zData.zps);
    //var sfId = createSFRecord(doc, zData.zps, null, arrOfPairs);//PV210831
        //alert("@1234556sfId" + sfId); //PV210902 adding for attachment
         

    alert("@@@PcDocId" + zData.PcDocId);
   
        if(zData.PcDocId){ //PV210727 for stack number on Document record
        var docarrOfPairs = [];
        docarrOfPairs.push("zStack__c", sfId);
        docarrOfPairs.push("PatientConnect__PC_Document_Name__c", "Fax - " + doc.deliveredFrom + "-" + zData.formatNow);//PV210913
        alert("123@@@");
      updateSFRecord(doc, "PatientConnect__PC_Document__c", zData.PcDocId, docarrOfPairs);  // Changed from arrOfParirs to docarrOfPairs
    }
    if (zData.clientReceivedDocument) { //CRN201024 Case #76788 We need to create a Received Document for the parent stack also.
    //  only if it wasn't already uploaded to Salesforce
    if (!doc.deliveredFrom) { //ERS210320 #81327 the new agent.war and zippi2 do not have all the right metadata!!! TODO CMA/SHR/CRN fix zippi2
       alert("ERS210320 fix doc.deliveredFrom with "+doc.URL);
       var i=doc.URL.lastIndexOf("/");
       doc.deliveredFrom=doc.URL.substring(i+1,doc.URL.indexOf("-",i+1));
    }
    if (!doc.deliveredFrom.startsWith("0io")) { zData.recDocId = zData.clientReceivedDocument(doc, sfId, "Received Document zStack"); } //ERS201018 #77252
    }
    //CRN201024 Case #76788 If this is from an upload, set the Document Number in the Received Document
    alert("### doc.deliveredFrom => " + doc.deliveredFrom);
    if (doc.deliveredFrom.startsWith("0io")) {
    alert("### Setting the Document Number in the Received Document with Id: " + doc.deliveredFrom);
    var arrofPairsRD = [];
    arrofPairsRD.push("DocumentNumber", "z:" + doc.dbID);
        zData.stackId=sfId;
        if (zData.stackId) arrofPairsRD.push("zStack__c",zData.stackId); //ERS210320 #81327 connect RecDoc to zStack
    updateSFRecord(doc, "ReceivedDocument", doc.deliveredFrom, arrofPairsRD);
    if (!zData.recDocId)  zData.recDocId = doc.deliveredFrom; //ERS210320 #81327
    }

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
   
    if (zData.recDocId) {
    arrOfPairs.push("X_attachedTo", doc.kbData.sfServer+"/"+sfId+","+zData.recDocId); //ERS210320 #81327
    }
   
    if (zData.zchannel) { //ERS200209 groups #68825 TODO-DONE move up and check for other values
        if (zData.zchannel.owner) arrOfPairs.push("OwnerId",zData.zchannel.owner); //ERS200308 #70273
        var flds="db-readers,db-users".split(",");
        for (var i in flds) {
            var f=flds[i];
            alert("ERS200209 zchannel."+f+"="+zData.zchannel[f]);
            if (zData.zchannel[f]) arrOfPairs.push(f, zData.zchannel[f]);
            //if (zData.zchannel["db-readers"]) arrOfPairs.push("db-readers", zData.zchannel["db-readers"]);
            //if (zData.zchannel["db-users"]) arrOfPairs.push("db-users", zData.zchannel["db-users"]);
        }
    } else { alert("ERS200822 no zchannel yet!"); }
   
    updateDB(doc, arrOfPairs);
    alert("ERS200205 created zStack "+sfId); //ERS200205 #68825
   
  /* if (zData.zchannel.action) { //ERS210320 #81327 continue the journey
        var a= zData+zData.zchannel.action.replace("()","(doc)");
       //var a= zData.zchannel.action.replace("()","(doc, [], zData.SFDCtype, zData.programName)"); //PV210901 making call to newdocument
        alert("ERS210320.173 journey on "+a);
        var r=eval(a);
        alert("ERS210320.175 results "+r);
    }*/
    /* END */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
