<!--
// Name: Create zStack
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV210902 adding for attachment
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-09-02 15:04:42","active":true,"button":"","name":"Create zStack","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"},{"name":"doc.X(\"X_barCode0\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMyMTAyMDggZm9yY2luZyBhIG5ldyBzdGF0aWMgcmVzb3VyY2UgSSBob3BlICM3NTY4NQovL0VSUzIxMDEyNyAjODA5NDYgc3RhcnQgb2YgbWFqb3IgcmVmYWN0b3IgdG8gdXNlIGxvc3QgY2xpZW50IGNhbGxzCnZhciBhcnJPZlBhaXJzID0gW107CnZhciBhdHRhY2hMYWJlbCA9ICIiOwp2YXIgenA9ekRhdGEuenA7IGlmICghenApIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZSAvL0VSUzE5MDYxNyB6RGF0YS56cAp2YXIgelN0YWNrPXpEYXRhLnpwczsgLy8iU3RhY2tfX2MiCgogICAgLy9FUlMxOTA2MTcgVE9ETyBkb2N1bWVudCBodWIgc3RyYXRlZ3kKICAgIC8vRVJTMTkwODE0ICM2MTUxMSBtb3ZlIG9yYW5kIGFuZCBvcmdzd2l0Y2ggdXAgYmVmb3JlIHpEYXRhLmNoYW5uZWwKICAgIHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAvL3dobyBhbmQgd2hlcmUKICAgIHpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL1RPRE8gcmVmYWN0b3Igd2l0aCBzZXRCcmFuZFByb2dyYW0oKQogICAKYWxlcnQoIkVSUzE5MDgxNC4xMSB6RGF0YS5mcm9tRmlsZT0iK3pEYXRhLmZyb21GaWxlKyIgLmNoYW5uZWw9Iit6RGF0YS5jaGFubmVsKTsgLy9FUlMxOTA4MTQKLy9DUk4xOTAzMDggSGFuZGxlIHVwbG9hZGVkIGZpbGVzIHZpYSBMaWdodG5pbmcgQ29tcG9uZW50IGFuZCB6U2VuZCBvciBtYXNzIGltcG9ydAppZiAoekRhdGEuZnJvbUZpbGUpIHsgLy9FUlMxOTA2MTcgVE9ETyBjaGFubmVsIGd1aWRlCiAgICBpZiAoekRhdGEuY2hhbm5lbCAmJiB6RGF0YS5jaGFubmVsLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigidXBsb2FkIik+LTEpIHsKICAgICAgICB2YXIgZnJvbUZpbGUgPSB6RGF0YS5mcm9tRmlsZS5zdWJzdHJpbmcoekRhdGEuZnJvbUZpbGUubGFzdEluZGV4T2YoJy8nKSArIDEpOyAvL0VSUzE5MDYyNCBzY29waW5nCiAgICAgICAgdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoIi0iKTsKICAgICAgICBpZiAocGFydHMubGVuZ3RoID49IDMpIHsKICAgICAgICAgICAgdmFyIGF0dGFjaFRvSWQgPSBwYXJ0c1syXTsKICAgICAgICAgICAgYWxlcnQoIkBAQCBVUExPQUQ6IEFUVEFDSElORyBUTyBTQUxFU0ZPUkNFIFJFQ09SRCA9ICIgKyBhdHRhY2hUb0lkKTsKICAgICAgICAgICAgdmFyIGxhYmVsID0gIkZpbGUgdXBsb2FkZWQgIiArIGZyb21GaWxlOwogICAgICAgICAgICBhdHRhY2goZG9jLCBsYWJlbCwgYXR0YWNoVG9JZCwgdHJ1ZSk7CiAgICAgICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlVwbG9hZGVkIik7IC8vIFBWMTkwNTI2IHVwZGF0ZWQgZm9yIHVwbG9hZCBsb2dpYwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJVcGxvYWRlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCAiVVBMT0FEIik7CiAgICAgICAgICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50VXBsb2FkKGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA3MDYgekRhdGEuY2hhbm5lbCBmb3IgdXBsb2FkIGFuZCBpbXBvcnQKICAgICAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgICAgICAgICAgaWYgKCF6RGF0YS5tYWtlU3RhY2spIHJldHVybjsgLy9FUlMxOTA4MTQKICAgICAgICB9CiAgICB9CiAgICBpZiAoekRhdGEuY2hhbm5lbCAmJiB6RGF0YS5jaGFubmVsLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiaW1wb3J0Iik+LTEpIHsKICAgICAgICB2YXIgZnJvbUZpbGUgPSB6RGF0YS5mcm9tRmlsZS5zdWJzdHJpbmcoekRhdGEuZnJvbUZpbGUubGFzdEluZGV4T2YoJy8nKSArIDEpOyAvL0VSUzE5MDYyNCBzY29waW5nCiAgICAgICAgLy9jdXN0b20gc2V0dGluZyBpbXBvcnQgLTozOkNvbnRhY3Q6RmF4IG9yIGNhbGwgekRhdGEuY2xpZW50SW1wb3J0U09RTChmcm9tRmlsZSkgdG8gZ2V0IHF1ZXJ5CiAgICAgICAgdmFyIHNmSWQ9ekRhdGEuY2xpZW50SW1wb3J0U09RTChkb2MsZnJvbUZpbGUpOwogICAgICAgIHZhciBpbXBvcnRDb25maWc9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJJbXBvcnRlcl9fYyIpLnRyaW0oKTsKICAgICAgICBpZiAoIWltcG9ydENvbmZpZykgaW1wb3J0Q29uZmlnPVhEZXBsb3ltZW50SW5mbyhkb2MsIkltcG9ydGVyX19jIikudHJpbSgpOyAvL0VSUzE5MDgwNSB0eXBlIGluIGlmICgpCiAgICAgICAgaWYgKCFzZklkICYmICFpbXBvcnRDb25maWcpIGltcG9ydENvbmZpZz0iLTozOkNvbnRhY3Q6RmF4IjsKICAgICAgICBpZiAoIXNmSWQgJiYgaW1wb3J0Q29uZmlnLmluZGV4T2YoIjoiKT4tMSkgewogICAgICAgICAgICB2YXIgaW1wb3J0ZXI9aW1wb3J0Q29uZmlnLnNwbGl0KCI6Iik7CiAgICAgICAgICAgIHZhciBkPWltcG9ydGVyWzBdOwogICAgICAgICAgICB2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdChkKTsKICAgICAgICAgICAgdmFyIGY9KCIwIitpbXBvcnRlclsxXSkvMTsKICAgICAgICAgICAgaWYgKHBhcnRzLmxlbmd0aCA+PSBmKSB7CiAgICAgICAgICAgICAgICB2YXIgc2ZxID0ge307IHNmcVtpbXBvcnRlclszXV09cGFydHNbZl07IC8vRVJTMTkwODA1CiAgICAgICAgICAgICAgICBzZklkID0gZ2V0U0ZSZWNvcmRJRChkb2MsIGltcG9ydGVyWzJdLCBzZnEgKTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgICAgICBpZiAoc2ZJZCkgewogICAgICAgICAgICB2YXIgYXR0YWNoVG9JZCA9IHNmSWQ7CiAgICAgICAgICAgIGFsZXJ0KCJAQEAgSU1QT1JUOiBBVFRBQ0hJTkcgVE8gU0FMRVNGT1JDRSBSRUNPUkQgPSAiICsgYXR0YWNoVG9JZCk7CiAgICAgICAgICAgIHZhciBsYWJlbCA9ICJGaWxlIHVwbG9hZGVkICIgKyBmcm9tRmlsZTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgbGFiZWwsIGF0dGFjaFRvSWQsIHRydWUpOwogICAgICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJJbXBvcnRlZCIpOyAvLyBQVjE5MDUyNiB1cGRhdGVkIGZvciB1cGxvYWQgbG9naWMKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCAiSW1wb3J0ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgIklNUE9SVCIpOwogICAgICAgICAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFVwbG9hZChkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNzA2IHpEYXRhLmNoYW5uZWwgZm9yIHVwbG9hZCBhbmQgaW1wb3J0CiAgICAgICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIGlmICghekRhdGEubWFrZVN0YWNrKSByZXR1cm47CiAgICAgICAgfQogICAgfQp9CgogICAgLy9FUlMxNzEwMTIga2V5d29yZHMgZm9yIGRlbW8KICAgIHZhciBrZXl3b3Jkcz1bIkVOUkw6RW5yb2xsbWVudH4iLCJDT046Q29uc2VudH4iLCJDT046Y29uc2VudH4iLCJQQVBQOlBhdGllbnQgQXNzaXN0YW5jZSIsIlBBVVRIOlByaW9yfiBBdXRob3JpemF0aW9ufiIsIlJFRzpSZWd1bGF0aW9ufiIsIlJFRjpSRUZFUlJBTCIsIlJFRjpSZWZlcnJhbCIsIkZBWDoiXTsKICAgIGtleXdvcmRzPVsiRkFYOiJdOyAvL0VSUzE5MDYxNyBUT0RPIGFycmF5IG9yIG5vdD8gLy9FUlMxOTA2MjQgdGhlIEZBWDogdmFsdWUgZWZmZWN0aXZlbHkgcmVtb3ZlcyBPQ1IgVE9ETyB0cnkgYm90aCB3YXlzCiAgICB6RGF0YS5kb2NUeXBlT0NSID0gekRhdGEuZG9jVHlwZXIoZG9jLCBrZXl3b3Jkcyk7IC8vUFYxOTA1MjYgUmVtb3ZlZCB0eXBlcwogICAgYWxlcnQoImRvY1R5cGUgd2FzICIgKyBkb2MuZG9jVHlwZSArICIgbm93ICIgKyB6RGF0YS5kb2NUeXBlT0NSKTsKICAgIHZhciB6VHlwZSA9IGRvYy5YKCJYX2RvY1R5cGUiKTsKICAgIGlmIChkb2MuZG9jVHlwZSAhPSB6RGF0YS5kb2NUeXBlT0NSKSB7CiAgICAgICAgdmFyIGFyck9mUGFpcnMwID0gW107CiAgICAgICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlT0NSIiwgekRhdGEuZG9jVHlwZU9DUik7CiAgICAgICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIiwgekRhdGEuZG9jVHlwZU9DUik7CiAgICAgICAgelR5cGUgPSB6RGF0YS5kb2NUeXBlT0NSOyAvL0VSUzE3MDMzMCBzYXZlZCBiZWxvdyBpbnRvIFNGIGZheFR5cGVfX2MgZmllbGQKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgIH0KICAgCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgLy9FUlMxOTA4MTQgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCgogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgLy9QVjIwMDgyNSBVcGRhdGVkIGZvciBCYXJjb2RlIGRvY3R5cGUKICAgICAKICAgICB2YXIgcmUgPSBuZXcgUmVnRXhwKCJeRU5STCIpOyAvL1BWMjAxMQogICAgIHZhciByZTIgPSAvXkVOUkwyLzsKICAgICB2YXIgZmF4VHlwZSA9IHpUeXBlOwogICAgIHZhciBiYXJDb2RlID0gWChkb2MsIlhfYmFyQ29kZTAiKTsKICAgICB2YXIgWF9maWVsZDAgPSBYKGRvYywiWF9maWVsZDAiKTsKICAgICBhbGVydCgiQEBAWF9iYXJDb2RlMCIrIGJhckNvZGUpOwogICAgIGFsZXJ0KCJAQEBFTlJMVEVTVCIgKyByZS50ZXN0KGJhckNvZGUpKTsKICAgICBhbGVydCgiQEBARU5STDJURVNUIiArIHJlMi50ZXN0KGJhckNvZGUpKTsKICAgICAvL2lmKHJlMi50ZXN0KGJhckNvZGUpKXsKICAgICAgICAgaWYoYmFyQ29kZS5pbmRleE9mKCJFTlJMMiIpPj0wKXsKICAgICAgICAgZmF4VHlwZT0gIkVOUkwyIjsKICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwgZmF4VHlwZSk7CiAgICAgICAgYWxlcnQoIkBAQE1hdGNoZWQgRU5STDIiKTsKICAgICB9CiAgICAgLy9lbHNlIGlmKHJlLnRlc3QoYmFyQ29kZSkpewogICAgIGVsc2UgaWYoYmFyQ29kZS5pbmRleE9mKCJFTlJMIik+PTApewogICAgICAgICBmYXhUeXBlPSAiRU5STCI7CiAgICAgICAgIGFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsIGZheFR5cGUpOwogICAgICAgICBhbGVydCgiQEBAQE1hdGNoZWQgRU5STCIpOwogICAgIH0KICAgLyogdmFyIHN4ID0gbmV3IFJlZ0V4cCgiXihTWC18YTB8YTEpIik7Ly9QVjIwMTIwMiBhZGRlZCBmb3Igb2xkIGJhcmNvZGUKICAgIGlmKHN4LnRlc3QoWF9maWVsZDApKXsKICAgICAgICBmYXhUeXBlPSAiRU5STCI7CiAgICAgICAgYWxlcnQoIkBAQEBNYXRjaGVkIEVOUkwiKTsKICAgIH0qLwogICAgZWxzZXsKICAgIHpEYXRhLmRvY1R5cGU9ICJGQVgiOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwgekRhdGEuZG9jVHlwZSk7IC8vIFBWMjEwODI0IGFkZGVkIEZheAogICAgIGFsZXJ0KCJmYXhUeXBldmFsdWVAQEAiICArIHpEYXRhLmRvY1R5cGUpOwogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIk5ldyBTdGFjayIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDaGFubmVsX19jIiwgekRhdGEuY2hhbm5lbCk7CiAgICAvLyBNU0gxNzExMTYgdXNpbmcgelN0YWNrX1JlY2VpdmVkX19jIGluc3RlYWQgb2YgbGF0ZXN0RmF4X19jIGJlY2F1c2UgbGF0ZXN0RmF4X19jIGdldHMgdXBkYXRlZCBieSBzYXZlLmpzcCBldmVyeSB0aW1lIHRoZSByZWNvcmQgaXMgdXBkYXRlZAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCB6RGF0YS5mb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgdmFyIHBhZ2VSYW5nZSA9IjEtIitYKGRvYywiWF9wYWdlcyIpOwogICAgekRhdGEucGFnZXM9WChkb2MsIlhfcGFnZXMiKS8xOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQYWdlc19fYyIsIFgoZG9jLCJYX3BhZ2VzIikpOwogICAgYWxlcnQoIkVSUzIwMDIxMyBaUEFQRVJfX1BhZ2VzX19jPSIrekRhdGEucGFnZXMrIiBpcyAiK1goZG9jLCJYX3BhZ2VzIikpOwoKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOyAvL0VSUzIwMDIwMSB3YXMgekRhdGEuY2xhc3NpZmljYXRpb24gIzY4ODI1CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fX2MiLCB6RGF0YS5wcm9ncmFtTmFtZSk7IC8vRVJTMjAwMjAyIFRPRE8gaW50byBtYW5hZ2VkIHBhY2thZ2UgIzY4ODI1CiAgIC8vIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsgLy9FUlMxNzA2MjggY2FsbGVyIGlkCiAgICBhcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsICgiY29tbXVuaXR5IiA9PT0gekRhdGEuY2hhbm5lbCB8fCAidXBsb2FkIiA9PT0gekRhdGEuY2hhbm5lbCA/IHpEYXRhLmNoYW5uZWwgOiBkb2MuZGVsaXZlcmVkVG8pKTsgLy9KUEIxOTA1MjkgYWRkZWQgc28gQ29tbXVuaXR5IHNob3dzIHVwIGluIE1hc3RlciBJbnRha2UgTGlzdAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyAvL0VSUzE3MDczMSAjNDA1OTMKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgIit6RGF0YS5jbGFzc2lmaWNhdGlvbisiIFN0YWNrIHJlY2VpdmVkIG9uICIgKyB6RGF0YS5mb3JtYXROb3c7CiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgIit6RGF0YS5wcm9ncmFtTmFtZSsiIFN0YWNrIHJlY2VpdmVkIG9uICIgKyB6RGF0YS5mb3JtYXROb3c7IC8vRVJTMjAwMjAyIGNsaWVudEZpbGUgcHJvYmFibHkgb3ZlcnJpZGVzIFRPRE8gY2xlYW4/CiAgIAogICAgLy9FUlMyMDA4MTUgIzc1Njg1IEdVRVNTSU5HIGFyck9mUGFpcnMucHVzaCgiIisiUHJvZ3JhbV9fYyIsekRhdGEucHJvZ3JhbU5hbWUpOyAgLy9FUlMyMDAzMDggVE9ETyBzd2l0Y2ggdG8gcGlja2xpc3QKICAgIC8vRVJTMjAwMzA4IGlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoKICAgCiAgICAvL0VSUzE5MDgwMyBwdXNoIGFueSBjdXN0b20gb25lIHRvIHpEYXRhLmNsaWVudFN0YWNrcygpIG9yIG5ldyB6U3RhY2tGaWVsZHMgY3VzdG9tIHNldHRpbmcKICAgIC8vRVJTMTkwNzIyIG1ha2UgRXhjZXB0aW9uIGdvIGF3YXkgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCBmb3JtYXROb3cpOwogICAgLy9FUlMxOTA4MDMgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAogICBpZihkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCJhMCIpIHx8IGRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoImExIikpIHsKICAgICAgIHpEYXRhLmRvTm90Q3JlYXRlTGlnaHRuaW5nRmlsZSA9IHRydWU7CiAgIH0KICAgIGlmICh6RGF0YS5jbGllbnRTdGFjaykgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRTdGFjayhkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNjE3IFRPRE8gekRhdGEuY2xpZW50U3RhY2soKSB3aXRoIGxhYmVsIC8vU3RhY2tzKCkgbm93IFN0YWNrKCkKICAgICB2YXIgc2ZJZDsKICAgICBpZiAoekRhdGEubmV3RG9jdW1lbnQgJiYgIShkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCJhMSIpIHx8IGRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoImEwIikpKSB7CiAgICBzZklkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCB6RGF0YS56cHMsIG51bGwsIGFyck9mUGFpcnMpOy8vUFYyMTA4MzEvLyBQVjE5MDUzMCBhZGRlZCAiIgogICAgIGFsZXJ0KCJAQEBhcnJPZlBhaXJzMSIgKyBhcnJPZlBhaXJzKTsKICAgICAgICB2YXIgYXJyT2ZQYWlyc0F0dGFjaFRvID0gW107CiAgICAgICAgYXJyT2ZQYWlyc0F0dGFjaFRvLnB1c2goIlhfYXR0YWNoZWRUbyIsc2ZJZCk7IAogICAgICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzQXR0YWNoVG8pOyAgCiAgICAgIH0KICAgICAgZWxzZXsKICAgICAgICAgICBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgekRhdGEuenBzLCBhdHRhY2hMYWJlbCwgYXJyT2ZQYWlycyk7IAogICAgICAgIGFsZXJ0KCJAMTIzNDU1NnNmSWQiICsgc2ZJZCk7IAogICAgICB9CiAgICAgLy9hbGVydCgiQDEyM3pEYXRhLnpwcyIgKyB6RGF0YS56cHMpOwogICAgLy92YXIgc2ZJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgekRhdGEuenBzLCBudWxsLCBhcnJPZlBhaXJzKTsvL1BWMjEwODMxCiAgICAgICAgLy9hbGVydCgiQDEyMzQ1NTZzZklkIiArIHNmSWQpOyAvL1BWMjEwOTAyIGFkZGluZyBmb3IgYXR0YWNobWVudAogICAgICAgICAKCiAgICBhbGVydCgiQEBAUGNEb2NJZCIgKyB6RGF0YS5QY0RvY0lkKTsKICAgCiAgICAgICAgaWYoekRhdGEuUGNEb2NJZCl7IC8vUFYyMTA3MjcgZm9yIHN0YWNrIG51bWJlciBvbiBEb2N1bWVudCByZWNvcmQKICAgICAgICB2YXIgZG9jYXJyT2ZQYWlycyA9IFtdOwogICAgICAgIGRvY2Fyck9mUGFpcnMucHVzaCgielN0YWNrX19jIiwgc2ZJZCk7CiAgICAgICAgYWxlcnQoIjEyM0BAQCIpOwogICAgICB1cGRhdGVTRlJlY29yZChkb2MsICJQYXRpZW50Q29ubmVjdF9fUENfRG9jdW1lbnRfX2MiLCB6RGF0YS5QY0RvY0lkLCBkb2NhcnJPZlBhaXJzKTsgIC8vIENoYW5nZWQgZnJvbSBhcnJPZlBhcmlycyB0byBkb2NhcnJPZlBhaXJzCiAgICB9CiAgICBpZiAoekRhdGEuY2xpZW50UmVjZWl2ZWREb2N1bWVudCkgeyAvL0NSTjIwMTAyNCBDYXNlICM3Njc4OCBXZSBuZWVkIHRvIGNyZWF0ZSBhIFJlY2VpdmVkIERvY3VtZW50IGZvciB0aGUgcGFyZW50IHN0YWNrIGFsc28uCiAgICAvLyAgb25seSBpZiBpdCB3YXNuJ3QgYWxyZWFkeSB1cGxvYWRlZCB0byBTYWxlc2ZvcmNlCiAgICBpZiAoIWRvYy5kZWxpdmVyZWRGcm9tKSB7IC8vRVJTMjEwMzIwICM4MTMyNyB0aGUgbmV3IGFnZW50LndhciBhbmQgemlwcGkyIGRvIG5vdCBoYXZlIGFsbCB0aGUgcmlnaHQgbWV0YWRhdGEhISEgVE9ETyBDTUEvU0hSL0NSTiBmaXggemlwcGkyCiAgICAgICBhbGVydCgiRVJTMjEwMzIwIGZpeCBkb2MuZGVsaXZlcmVkRnJvbSB3aXRoICIrZG9jLlVSTCk7CiAgICAgICB2YXIgaT1kb2MuVVJMLmxhc3RJbmRleE9mKCIvIik7CiAgICAgICBkb2MuZGVsaXZlcmVkRnJvbT1kb2MuVVJMLnN1YnN0cmluZyhpKzEsZG9jLlVSTC5pbmRleE9mKCItIixpKzEpKTsKICAgIH0KICAgIGlmICghZG9jLmRlbGl2ZXJlZEZyb20uc3RhcnRzV2l0aCgiMGlvIikpIHsgekRhdGEucmVjRG9jSWQgPSB6RGF0YS5jbGllbnRSZWNlaXZlZERvY3VtZW50KGRvYywgc2ZJZCwgIlJlY2VpdmVkIERvY3VtZW50IHpTdGFjayIpOyB9IC8vRVJTMjAxMDE4ICM3NzI1MgogICAgfQogICAgLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggSWYgdGhpcyBpcyBmcm9tIGFuIHVwbG9hZCwgc2V0IHRoZSBEb2N1bWVudCBOdW1iZXIgaW4gdGhlIFJlY2VpdmVkIERvY3VtZW50CiAgICBhbGVydCgiIyMjIGRvYy5kZWxpdmVyZWRGcm9tID0+ICIgKyBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBpZiAoZG9jLmRlbGl2ZXJlZEZyb20uc3RhcnRzV2l0aCgiMGlvIikpIHsKICAgIGFsZXJ0KCIjIyMgU2V0dGluZyB0aGUgRG9jdW1lbnQgTnVtYmVyIGluIHRoZSBSZWNlaXZlZCBEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRlbGl2ZXJlZEZyb20pOwogICAgdmFyIGFycm9mUGFpcnNSRCA9IFtdOwogICAgYXJyb2ZQYWlyc1JELnB1c2goIkRvY3VtZW50TnVtYmVyIiwgIno6IiArIGRvYy5kYklEKTsKICAgICAgICB6RGF0YS5zdGFja0lkPXNmSWQ7CiAgICAgICAgaWYgKHpEYXRhLnN0YWNrSWQpIGFycm9mUGFpcnNSRC5wdXNoKCJ6U3RhY2tfX2MiLHpEYXRhLnN0YWNrSWQpOyAvL0VSUzIxMDMyMCAjODEzMjcgY29ubmVjdCBSZWNEb2MgdG8gelN0YWNrCiAgICB1cGRhdGVTRlJlY29yZChkb2MsICJSZWNlaXZlZERvY3VtZW50IiwgZG9jLmRlbGl2ZXJlZEZyb20sIGFycm9mUGFpcnNSRCk7CiAgICBpZiAoIXpEYXRhLnJlY0RvY0lkKSAgekRhdGEucmVjRG9jSWQgPSBkb2MuZGVsaXZlcmVkRnJvbTsgLy9FUlMyMTAzMjAgIzgxMzI3CiAgICB9CgogICAgLy9DUk4xODA3MjYgQ2FzZSAjNTA0NjkgLS0gU2V0IHRoZSAiUmVjZWl2ZWQiIGNoZWNrYm94CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwogICAgYXJyT2ZQYWlycyA9IFtdOyAvLyBQVjE5MDUzMSBhZGRlZCBmb3Igc3RhY2sgbGFiZWwKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CiAgICBpZiAoWChkb2MsICJYX2Zyb21GaWxlIik9PT0iIikgeyAvL0VSUzE5MDYyNAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9mcm9tRmlsZSIsZG9jLlVSTC5zdWJzdHJpbmcoZG9jLlVSTC5sYXN0SW5kZXhPZigiLyIpKzEpKTsKICAgICAgICBhbGVydCgiRVJTMTkwNjI0IHJlcGFpcmluZyBYX2Zyb21GaWxlIHVzaW5nICIrZG9jLlVSTCk7CiAgICB9CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJSZWNlaXZlZCIpOwogICAgaWYgKHNmSWQpIGFyck9mUGFpcnMucHVzaCgiWF9zdGFjayIsIHNmSWQpOyAvL0VSUzIwMDIwNCBidWcgb3IgbWlzdW5kZXJzdGFuZGluZyAjNjg4MjUKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgWChkb2MsICJYX3Jldmlld3MiKSArICJSZWNlaXZlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsgLy9FUlMxNzA5MDkgIzQwNTkyL0NBVyBVcGRhdGUKICAgCiAgICBpZiAoekRhdGEucmVjRG9jSWQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgZG9jLmtiRGF0YS5zZlNlcnZlcisiLyIrc2ZJZCsiLCIrekRhdGEucmVjRG9jSWQpOyAvL0VSUzIxMDMyMCAjODEzMjcKICAgIH0KICAgCiAgICBpZiAoekRhdGEuemNoYW5uZWwpIHsgLy9FUlMyMDAyMDkgZ3JvdXBzICM2ODgyNSBUT0RPLURPTkUgbW92ZSB1cCBhbmQgY2hlY2sgZm9yIG90aGVyIHZhbHVlcwogICAgICAgIGlmICh6RGF0YS56Y2hhbm5lbC5vd25lcikgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS56Y2hhbm5lbC5vd25lcik7IC8vRVJTMjAwMzA4ICM3MDI3MwogICAgICAgIHZhciBmbGRzPSJkYi1yZWFkZXJzLGRiLXVzZXJzIi5zcGxpdCgiLCIpOwogICAgICAgIGZvciAodmFyIGkgaW4gZmxkcykgewogICAgICAgICAgICB2YXIgZj1mbGRzW2ldOwogICAgICAgICAgICBhbGVydCgiRVJTMjAwMjA5IHpjaGFubmVsLiIrZisiPSIrekRhdGEuemNoYW5uZWxbZl0pOwogICAgICAgICAgICBpZiAoekRhdGEuemNoYW5uZWxbZl0pIGFyck9mUGFpcnMucHVzaChmLCB6RGF0YS56Y2hhbm5lbFtmXSk7CiAgICAgICAgICAgIC8vaWYgKHpEYXRhLnpjaGFubmVsWyJkYi1yZWFkZXJzIl0pIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsIHpEYXRhLnpjaGFubmVsWyJkYi1yZWFkZXJzIl0pOwogICAgICAgICAgICAvL2lmICh6RGF0YS56Y2hhbm5lbFsiZGItdXNlcnMiXSkgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsIHpEYXRhLnpjaGFubmVsWyJkYi11c2VycyJdKTsKICAgICAgICB9CiAgICB9IGVsc2UgeyBhbGVydCgiRVJTMjAwODIyIG5vIHpjaGFubmVsIHlldCEiKTsgfQogICAKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiRVJTMjAwMjA1IGNyZWF0ZWQgelN0YWNrICIrc2ZJZCk7IC8vRVJTMjAwMjA1ICM2ODgyNQogICAKICAvKiBpZiAoekRhdGEuemNoYW5uZWwuYWN0aW9uKSB7IC8vRVJTMjEwMzIwICM4MTMyNyBjb250aW51ZSB0aGUgam91cm5leQogICAgICAgIHZhciBhPSB6RGF0YSt6RGF0YS56Y2hhbm5lbC5hY3Rpb24ucmVwbGFjZSgiKCkiLCIoZG9jKSIpOwogICAgICAgLy92YXIgYT0gekRhdGEuemNoYW5uZWwuYWN0aW9uLnJlcGxhY2UoIigpIiwiKGRvYywgW10sIHpEYXRhLlNGREN0eXBlLCB6RGF0YS5wcm9ncmFtTmFtZSkiKTsgLy9QVjIxMDkwMSBtYWtpbmcgY2FsbCB0byBuZXdkb2N1bWVudAogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMTczIGpvdXJuZXkgb24gIithKTsKICAgICAgICB2YXIgcj1ldmFsKGEpOwogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMTc1IHJlc3VsdHMgIityKTsKICAgIH0qLwogICAgLyogRU5EICovCg=="},"ordinal":8}

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
    arrOfPairs.push(zp+"Classification__c", zData.classification);
    attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
    attachLabel = "New "+zData.programName+" Stack received on " + zData.formatNow; //ERS200202 clientFile probably overrides TODO clean?
   
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
     if (zData.newDocument && !(doc.deliveredFrom.startsWith("a1") || doc.deliveredFrom.startsWith("a0"))) {
    sfId = createSFRecord(doc, zData.zps, null, arrOfPairs);//PV210831// PV190530 added ""
     alert("@@@arrOfPairs1" + arrOfPairs);
        var arrOfPairsAttachTo = [];
        arrOfPairsAttachTo.push("X_attachedTo",sfId); 
        updateDB(doc,arrOfPairsAttachTo);  
      }
      else{
           sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); 
        alert("@1234556sfId" + sfId); 
      }
     //alert("@123zData.zps" + zData.zps);
    //var sfId = createSFRecord(doc, zData.zps, null, arrOfPairs);//PV210831
        //alert("@1234556sfId" + sfId); //PV210902 adding for attachment
         

    alert("@@@PcDocId" + zData.PcDocId);
   
        if(zData.PcDocId){ //PV210727 for stack number on Document record
        var docarrOfPairs = [];
        docarrOfPairs.push("zStack__c", sfId);
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
