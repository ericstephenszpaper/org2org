<!--
// Name: Create zStack
// Committer: s
// Update: whatever
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-05-05 19:41:23","evalContinue":"true","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMyMTAyMDggZm9yY2luZyBhIG5ldyBzdGF0aWMgcmVzb3VyY2UgSSBob3BlICM3NTY4NQovL0VSUzIxMDEyNyAjODA5NDYgc3RhcnQgb2YgbWFqb3IgcmVmYWN0b3IgdG8gdXNlIGxvc3QgY2xpZW50IGNhbGxzCnZhciBhcnJPZlBhaXJzID0gW107CnZhciBhdHRhY2hMYWJlbCA9ICIiOwp2YXIgenA9ekRhdGEuenA7IGlmICghenApIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZSAvL0VSUzE5MDYxNyB6RGF0YS56cAp2YXIgelN0YWNrPXpEYXRhLnpwczsgLy8iU3RhY2tfX2MiCgogICAgLy9FUlMxOTA2MTcgVE9ETyBkb2N1bWVudCBodWIgc3RyYXRlZ3kKICAgIC8vRVJTMTkwODE0ICM2MTUxMSBtb3ZlIG9yYW5kIGFuZCBvcmdzd2l0Y2ggdXAgYmVmb3JlIHpEYXRhLmNoYW5uZWwKICAgIHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAvL3dobyBhbmQgd2hlcmUKICAgIHpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL1RPRE8gcmVmYWN0b3Igd2l0aCBzZXRCcmFuZFByb2dyYW0oKQogICAgCmFsZXJ0KCJFUlMxOTA4MTQuMTEgekRhdGEuZnJvbUZpbGU9Iit6RGF0YS5mcm9tRmlsZSsiIC5jaGFubmVsPSIrekRhdGEuY2hhbm5lbCk7IC8vRVJTMTkwODE0Ci8vQ1JOMTkwMzA4IEhhbmRsZSB1cGxvYWRlZCBmaWxlcyB2aWEgTGlnaHRuaW5nIENvbXBvbmVudCBhbmQgelNlbmQgb3IgbWFzcyBpbXBvcnQKaWYgKHpEYXRhLmZyb21GaWxlKSB7IC8vRVJTMTkwNjE3IFRPRE8gY2hhbm5lbCBndWlkZQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpPi0xKSB7CiAgICAgICAgdmFyIGZyb21GaWxlID0gekRhdGEuZnJvbUZpbGUuc3Vic3RyaW5nKHpEYXRhLmZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsgLy9FUlMxOTA2MjQgc2NvcGluZwogICAgICAgIHZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCItIik7CiAgICAgICAgaWYgKHBhcnRzLmxlbmd0aCA+PSAzKSB7CiAgICAgICAgICAgIHZhciBhdHRhY2hUb0lkID0gcGFydHNbMl07CiAgICAgICAgICAgIGFsZXJ0KCJAQEAgVVBMT0FEOiBBVFRBQ0hJTkcgVE8gU0FMRVNGT1JDRSBSRUNPUkQgPSAiICsgYXR0YWNoVG9JZCk7CiAgICAgICAgICAgIHZhciBsYWJlbCA9ICJGaWxlIHVwbG9hZGVkICIgKyBmcm9tRmlsZTsKICAgICAgICAgICAgYXR0YWNoKGRvYywgbGFiZWwsIGF0dGFjaFRvSWQsIHRydWUpOwogICAgICAgICAgICBhcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJVcGxvYWRlZCIpOyAvLyBQVjE5MDUyNiB1cGRhdGVkIGZvciB1cGxvYWQgbG9naWMgCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIlVwbG9hZGVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsICJVUExPQUQiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRVcGxvYWQoZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDcwNiB6RGF0YS5jaGFubmVsIGZvciB1cGxvYWQgYW5kIGltcG9ydAogICAgICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgICAgICAgICBpZiAoIXpEYXRhLm1ha2VTdGFjaykgcmV0dXJuOyAvL0VSUzE5MDgxNAogICAgICAgIH0KICAgIH0KICAgIGlmICh6RGF0YS5jaGFubmVsICYmIHpEYXRhLmNoYW5uZWwudG9Mb3dlckNhc2UoKS5pbmRleE9mKCJpbXBvcnQiKT4tMSkgewogICAgICAgIHZhciBmcm9tRmlsZSA9IHpEYXRhLmZyb21GaWxlLnN1YnN0cmluZyh6RGF0YS5mcm9tRmlsZS5sYXN0SW5kZXhPZignLycpICsgMSk7IC8vRVJTMTkwNjI0IHNjb3BpbmcKICAgICAgICAvL2N1c3RvbSBzZXR0aW5nIGltcG9ydCAtOjM6Q29udGFjdDpGYXggb3IgY2FsbCB6RGF0YS5jbGllbnRJbXBvcnRTT1FMKGZyb21GaWxlKSB0byBnZXQgcXVlcnkKICAgICAgICB2YXIgc2ZJZD16RGF0YS5jbGllbnRJbXBvcnRTT1FMKGRvYyxmcm9tRmlsZSk7CiAgICAgICAgdmFyIGltcG9ydENvbmZpZz1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIkltcG9ydGVyX19jIikudHJpbSgpOwogICAgICAgIGlmICghaW1wb3J0Q29uZmlnKSBpbXBvcnRDb25maWc9WERlcGxveW1lbnRJbmZvKGRvYywiSW1wb3J0ZXJfX2MiKS50cmltKCk7IC8vRVJTMTkwODA1IHR5cGUgaW4gaWYgKCkKICAgICAgICBpZiAoIXNmSWQgJiYgIWltcG9ydENvbmZpZykgaW1wb3J0Q29uZmlnPSItOjM6Q29udGFjdDpGYXgiOwogICAgICAgIGlmICghc2ZJZCAmJiBpbXBvcnRDb25maWcuaW5kZXhPZigiOiIpPi0xKSB7CiAgICAgICAgICAgIHZhciBpbXBvcnRlcj1pbXBvcnRDb25maWcuc3BsaXQoIjoiKTsKICAgICAgICAgICAgdmFyIGQ9aW1wb3J0ZXJbMF07CiAgICAgICAgICAgIHZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KGQpOwogICAgICAgICAgICB2YXIgZj0oIjAiK2ltcG9ydGVyWzFdKS8xOwogICAgICAgICAgICBpZiAocGFydHMubGVuZ3RoID49IGYpIHsKICAgICAgICAgICAgICAgIHZhciBzZnEgPSB7fTsgc2ZxW2ltcG9ydGVyWzNdXT1wYXJ0c1tmXTsgLy9FUlMxOTA4MDUKICAgICAgICAgICAgICAgIHNmSWQgPSBnZXRTRlJlY29yZElEKGRvYywgaW1wb3J0ZXJbMl0sIHNmcSApOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgICAgIGlmIChzZklkKSB7CiAgICAgICAgICAgIHZhciBhdHRhY2hUb0lkID0gc2ZJZDsKICAgICAgICAgICAgYWxlcnQoIkBAQCBJTVBPUlQ6IEFUVEFDSElORyBUTyBTQUxFU0ZPUkNFIFJFQ09SRCA9ICIgKyBhdHRhY2hUb0lkKTsKICAgICAgICAgICAgdmFyIGxhYmVsID0gIkZpbGUgdXBsb2FkZWQgIiArIGZyb21GaWxlOwogICAgICAgICAgICBhdHRhY2goZG9jLCBsYWJlbCwgYXR0YWNoVG9JZCwgdHJ1ZSk7CiAgICAgICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIkltcG9ydGVkIik7IC8vIFBWMTkwNTI2IHVwZGF0ZWQgZm9yIHVwbG9hZCBsb2dpYyAKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCAiSW1wb3J0ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgIklNUE9SVCIpOwogICAgICAgICAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFVwbG9hZChkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNzA2IHpEYXRhLmNoYW5uZWwgZm9yIHVwbG9hZCBhbmQgaW1wb3J0CiAgICAgICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIGlmICghekRhdGEubWFrZVN0YWNrKSByZXR1cm47CiAgICAgICAgfQogICAgfQp9IAoKICAgIC8vRVJTMTcxMDEyIGtleXdvcmRzIGZvciBkZW1vCiAgICB2YXIga2V5d29yZHM9WyJFTlJMOkVucm9sbG1lbnR+IiwiQ09OOkNvbnNlbnR+IiwiQ09OOmNvbnNlbnR+IiwiUEFQUDpQYXRpZW50IEFzc2lzdGFuY2UiLCJQQVVUSDpQcmlvcn4gQXV0aG9yaXphdGlvbn4iLCJSRUc6UmVndWxhdGlvbn4iLCJSRUY6UkVGRVJSQUwiLCJSRUY6UmVmZXJyYWwiLCJGQVg6Il07CiAgICBrZXl3b3Jkcz1bIkZBWDoiXTsgLy9FUlMxOTA2MTcgVE9ETyBhcnJheSBvciBub3Q/IC8vRVJTMTkwNjI0IHRoZSBGQVg6IHZhbHVlIGVmZmVjdGl2ZWx5IHJlbW92ZXMgT0NSIFRPRE8gdHJ5IGJvdGggd2F5cwogICAgekRhdGEuZG9jVHlwZU9DUiA9IHpEYXRhLmRvY1R5cGVyKGRvYywga2V5d29yZHMpOyAvL1BWMTkwNTI2IFJlbW92ZWQgdHlwZXMKICAgIGFsZXJ0KCJkb2NUeXBlIHdhcyAiICsgZG9jLmRvY1R5cGUgKyAiIG5vdyAiICsgekRhdGEuZG9jVHlwZU9DUik7CiAgICB2YXIgelR5cGUgPSBkb2MuWCgiWF9kb2NUeXBlIik7CiAgICBpZiAoZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgICAgIHpUeXBlID0gekRhdGEuZG9jVHlwZU9DUjsgLy9FUlMxNzAzMzAgc2F2ZWQgYmVsb3cgaW50byBTRiBmYXhUeXBlX19jIGZpZWxkCiAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7CiAgICB9CiAgICAKICAgIC8vRVJTMTkwNjE3IFRPRE8gZG9jdW1lbnQgaHViIHN0cmF0ZWd5CiAgICAvL0VSUzE5MDgxNCB6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgLy93aG8gYW5kIHdoZXJlCiAgICAvL0VSUzE5MDgxNCB6RGF0YS5vcmdTd2l0Y2goZG9jKTsgLy9UT0RPIHJlZmFjdG9yIHdpdGggc2V0QnJhbmRQcm9ncmFtKCkKCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goenArImZheFR5cGVfX2MiLCB6VHlwZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk1lZGl1bSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGF0dXNfX2MiLCAiTmV3IFN0YWNrIik7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIkNoYW5uZWxfX2MiLCB6RGF0YS5jaGFubmVsKTsKICAgIC8vIE1TSDE3MTExNiB1c2luZyB6U3RhY2tfUmVjZWl2ZWRfX2MgaW5zdGVhZCBvZiBsYXRlc3RGYXhfX2MgYmVjYXVzZSBsYXRlc3RGYXhfX2MgZ2V0cyB1cGRhdGVkIGJ5IHNhdmUuanNwIGV2ZXJ5IHRpbWUgdGhlIHJlY29yZCBpcyB1cGRhdGVkCiAgICBhcnJPZlBhaXJzLnB1c2goenArImxhdGVzdEZheF9fYyIsIHpEYXRhLmZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CiAgICB2YXIgcGFnZVJhbmdlID0iMS0iK1goZG9jLCJYX3BhZ2VzIik7CiAgICB6RGF0YS5wYWdlcz1YKGRvYywiWF9wYWdlcyIpLzE7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlBhZ2VzX19jIiwgWChkb2MsIlhfcGFnZXMiKSk7ICBhbGVydCgiRVJTMjAwMjEzIFpQQVBFUl9fUGFnZXNfX2M9Iit6RGF0YS5wYWdlcysiIGlzICIrWChkb2MsIlhfcGFnZXMiKSk7IAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcm9ncmFtX05hbWVfX2MiLCB6RGF0YS5wcm9ncmFtTmFtZSk7IC8vRVJTMjAwMjAxIHdhcyB6RGF0YS5jbGFzc2lmaWNhdGlvbiAjNjg4MjUKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsgLy9FUlMyMDAyMDIgVE9ETyBpbnRvIG1hbmFnZWQgcGFja2FnZSAjNjg4MjUKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsgLy9FUlMxNzA2MjggY2FsbGVyIGlkCiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IC8vRVJTMTcwNzMxICM0MDU5MwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsgCiAgICAKCS8vYXR0YWNoTGFiZWwgPSAiTmV3ICIrekRhdGEuY2xhc3NpZmljYXRpb24rIiBTdGFjayByZWNlaXZlZCBvbiAiICsgekRhdGEuZm9ybWF0Tm93OwogICAgLy9hdHRhY2hMYWJlbCA9ICJOZXcgIit6RGF0YS5wcm9ncmFtTmFtZSsiIFN0YWNrIHJlY2VpdmVkIG9uICIgKyB6RGF0YS5mb3JtYXROb3c7IC8vRVJTMjAwMjAyIGNsaWVudEZpbGUgcHJvYmFibHkgb3ZlcnJpZGVzIFRPRE8gY2xlYW4/CiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgU3RhY2sgcmVjZWl2ZWQgZnJvbSAiICsgZG9jLmRlbGl2ZXJlZEZyb20gKyAiIG9uICIgKyB6RGF0YS5mb3JtYXROb3c7IC8vQU4yMDIxMDUwNSBhZGRpbmcgRGVsaXZlcmVkIEZyb20gdmFyaWFibGUuIENvdWxkbid0IGZpZ3VyZSBvdXQgaG93IHRvIGRvIHRoaXMgaW4gdGhlIENsaWVudCBMaWJyYXJ5CgkKCS8vZ2V0U0ZQcmVmZXJyZWRDdXJEYXRlQW5kVGltZSgpCglhbGVydCgiQEBAY3VycmVudCBTRiBkYXRlIGFuZCB0aW1lIGlzICIrIGdldFNGUHJlZmVycmVkQ3VyRGF0ZUFuZFRpbWUoKSk7CgkKCWFsZXJ0KCJAQEBjdXJyZW50IGRhdGUgYW5kIHRpbWUgdmlhIHJ1bGUgZnVuY3Rpb24gaXMgIisgZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSwgZmFsc2UsIHRydWUpKTsKCQogICAgLy9FUlMyMDA4MTUgIzc1Njg1IEdVRVNTSU5HIGFyck9mUGFpcnMucHVzaCgiIisiUHJvZ3JhbV9fYyIsekRhdGEucHJvZ3JhbU5hbWUpOyAgLy9FUlMyMDAzMDggVE9ETyBzd2l0Y2ggdG8gcGlja2xpc3QKICAgIC8vRVJTMjAwMzA4IGlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoKICAgIAogICAgLy9FUlMxOTA4MDMgcHVzaCBhbnkgY3VzdG9tIG9uZSB0byB6RGF0YS5jbGllbnRTdGFja3MoKSBvciBuZXcgelN0YWNrRmllbGRzIGN1c3RvbSBzZXR0aW5nCiAgICAvL0VSUzE5MDcyMiBtYWtlIEV4Y2VwdGlvbiBnbyBhd2F5IGFyck9mUGFpcnMucHVzaCgielN0YWNrX1JlY2VpdmVkX19jIiwgZm9ybWF0Tm93KTsKICAgIC8vRVJTMTkwODAzIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKICAgIAogICAgaWYgKHpEYXRhLmNsaWVudFN0YWNrKSBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA2MTcgVE9ETyB6RGF0YS5jbGllbnRTdGFjaygpIHdpdGggbGFiZWwgLy9TdGFja3MoKSBub3cgU3RhY2soKQogICAgdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS56cHMsIGF0dGFjaExhYmVsLCBhcnJPZlBhaXJzKTsgLy8gUFYxOTA1MzAgYWRkZWQgIiIKICAgIAogICAgaWYgKHpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQpIHsgLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggV2UgbmVlZCB0byBjcmVhdGUgYSBSZWNlaXZlZCBEb2N1bWVudCBmb3IgdGhlIHBhcmVudCBzdGFjayBhbHNvLgogICAgCS8vICBvbmx5IGlmIGl0IHdhc24ndCBhbHJlYWR5IHVwbG9hZGVkIHRvIFNhbGVzZm9yY2UKICAgIAlpZiAoIWRvYy5kZWxpdmVyZWRGcm9tKSB7IC8vRVJTMjEwMzIwICM4MTMyNyB0aGUgbmV3IGFnZW50LndhciBhbmQgemlwcGkyIGRvIG5vdCBoYXZlIGFsbCB0aGUgcmlnaHQgbWV0YWRhdGEhISEgVE9ETyBDTUEvU0hSL0NSTiBmaXggemlwcGkyCiAgICAJICAgIGFsZXJ0KCJFUlMyMTAzMjAgZml4IGRvYy5kZWxpdmVyZWRGcm9tIHdpdGggIitkb2MuVVJMKTsKICAgIAkgICAgdmFyIGk9ZG9jLlVSTC5sYXN0SW5kZXhPZigiLyIpOwogICAgCSAgICBkb2MuZGVsaXZlcmVkRnJvbT1kb2MuVVJMLnN1YnN0cmluZyhpKzEsZG9jLlVSTC5pbmRleE9mKCItIixpKzEpKTsKICAgIAl9CiAgICAJaWYgKCFkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSkgeyB6RGF0YS5yZWNEb2NJZCA9IHpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQoZG9jLCBzZklkLCAiUmVjZWl2ZWQgRG9jdW1lbnQgelN0YWNrIik7IH0JLy9FUlMyMDEwMTggIzc3MjUyCiAgICB9CiAgICAvL0NSTjIwMTAyNCBDYXNlICM3Njc4OCBJZiB0aGlzIGlzIGZyb20gYW4gdXBsb2FkLCBzZXQgdGhlIERvY3VtZW50IE51bWJlciBpbiB0aGUgUmVjZWl2ZWQgRG9jdW1lbnQKICAgIGFsZXJ0KCIjIyMgZG9jLmRlbGl2ZXJlZEZyb20gPT4gIiArIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSkgewogICAgCWFsZXJ0KCIjIyMgU2V0dGluZyB0aGUgRG9jdW1lbnQgTnVtYmVyIGluIHRoZSBSZWNlaXZlZCBEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRlbGl2ZXJlZEZyb20pOwogICAgCXZhciBhcnJvZlBhaXJzUkQgPSBbXTsKICAgIAlhcnJvZlBhaXJzUkQucHVzaCgiRG9jdW1lbnROdW1iZXIiLCAiejoiICsgZG9jLmRiSUQpOwogICAgICAgIHpEYXRhLnN0YWNrSWQ9c2ZJZDsKICAgICAgICBpZiAoekRhdGEuc3RhY2tJZCkgYXJyb2ZQYWlyc1JELnB1c2goInpTdGFja19fYyIsekRhdGEuc3RhY2tJZCk7IC8vRVJTMjEwMzIwICM4MTMyNyBjb25uZWN0IFJlY0RvYyB0byB6U3RhY2sKICAgIAl1cGRhdGVTRlJlY29yZChkb2MsICJSZWNlaXZlZERvY3VtZW50IiwgZG9jLmRlbGl2ZXJlZEZyb20sIGFycm9mUGFpcnNSRCk7CiAgICAJaWYgKCF6RGF0YS5yZWNEb2NJZCkgIHpEYXRhLnJlY0RvY0lkID0gZG9jLmRlbGl2ZXJlZEZyb207IC8vRVJTMjEwMzIwICM4MTMyNwogICAgfQoKICAgIC8vQ1JOMTgwNzI2IENhc2UgIzUwNDY5IC0tIFNldCB0aGUgIlJlY2VpdmVkIiBjaGVja2JveAogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKICAgIGFyck9mUGFpcnMgPSBbXTsgLy8gUFYxOTA1MzEgYWRkZWQgZm9yIHN0YWNrIGxhYmVsCiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwogICAgaWYgKFgoZG9jLCAiWF9mcm9tRmlsZSIpPT09IiIpIHsgLy9FUlMxOTA2MjRjdQogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9mcm9tRmlsZSIsZG9jLlVSTC5zdWJzdHJpbmcoZG9jLlVSTC5sYXN0SW5kZXhPZigiLyIpKzEpKTsgCiAgICAgICAgYWxlcnQoIkVSUzE5MDYyNCByZXBhaXJpbmcgWF9mcm9tRmlsZSB1c2luZyAiK2RvYy5VUkwpOwogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiUmVjZWl2ZWQiKTsKICAgIGlmIChzZklkKSBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzZklkKTsgLy9FUlMyMDAyMDQgYnVnIG9yIG1pc3VuZGVyc3RhbmRpbmcgIzY4ODI1CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyAiUmVjZWl2ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCiAgIAogICAgaWYgKHpEYXRhLnJlY0RvY0lkKSB7CiAgICAJIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgZG9jLmtiRGF0YS5zZlNlcnZlcisiLyIrc2ZJZCsiLCIrekRhdGEucmVjRG9jSWQpOyAvL0VSUzIxMDMyMCAjODEzMjcKICAgIH0KICAgCiAgICBpZiAoekRhdGEuemNoYW5uZWwpIHsgLy9FUlMyMDAyMDkgZ3JvdXBzICM2ODgyNSBUT0RPLURPTkUgbW92ZSB1cCBhbmQgY2hlY2sgZm9yIG90aGVyIHZhbHVlcwogICAgICAgIGlmICh6RGF0YS56Y2hhbm5lbC5vd25lcikgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS56Y2hhbm5lbC5vd25lcik7IC8vRVJTMjAwMzA4ICM3MDI3MwogICAgICAgIHZhciBmbGRzPSJkYi1yZWFkZXJzLGRiLXVzZXJzIi5zcGxpdCgiLCIpOwogICAgICAgIGZvciAodmFyIGkgaW4gZmxkcykgewogICAgICAgICAgICB2YXIgZj1mbGRzW2ldOwogICAgICAgICAgICBhbGVydCgiRVJTMjAwMjA5IHpjaGFubmVsLiIrZisiPSIrekRhdGEuemNoYW5uZWxbZl0pOwogICAgICAgICAgICBpZiAoekRhdGEuemNoYW5uZWxbZl0pIGFyck9mUGFpcnMucHVzaChmLCB6RGF0YS56Y2hhbm5lbFtmXSk7CiAgICAgICAgICAgIC8vaWYgKHpEYXRhLnpjaGFubmVsWyJkYi1yZWFkZXJzIl0pIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsIHpEYXRhLnpjaGFubmVsWyJkYi1yZWFkZXJzIl0pOwogICAgICAgICAgICAvL2lmICh6RGF0YS56Y2hhbm5lbFsiZGItdXNlcnMiXSkgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsIHpEYXRhLnpjaGFubmVsWyJkYi11c2VycyJdKTsKICAgICAgICB9CiAgICB9IGVsc2UgeyBhbGVydCgiRVJTMjAwODIyIG5vIHpjaGFubmVsIHlldCEiKTsgfQogICAgCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgYWxlcnQoIkVSUzIwMDIwNSBjcmVhdGVkIHpTdGFjayAiK3NmSWQpOyAvL0VSUzIwMDIwNSAjNjg4MjUKICAgIAogICAgaWYgKHpEYXRhLnpjaGFubmVsLmFjdGlvbikgeyAvL0VSUzIxMDMyMCAjODEzMjcgY29udGludWUgdGhlIGpvdXJuZXkKICAgICAgICB2YXIgYT0iekRhdGEuIit6RGF0YS56Y2hhbm5lbC5hY3Rpb24ucmVwbGFjZSgiKCkiLCIoZG9jKSIpOwogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMTczIGpvdXJuZXkgb24gIithKTsKICAgICAgICB2YXIgcj1ldmFsKGEpOwogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMTc1IHJlc3VsdHMgIityKTsKICAgIH0KICAgIC8qIEVORCAqLw=="},"ordinal":14}

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
    arrOfPairs.push(zp+"faxType__c", zType);
    arrOfPairs.push(zp+"Priority__c", "Medium");
    arrOfPairs.push(zp+"Status__c", "New Stack");
    arrOfPairs.push(zp+"Channel__c", zData.channel);
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
    arrOfPairs.push(zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zp+"newFax__c", "true");
    var pageRange ="1-"+X(doc,"X_pages");
    zData.pages=X(doc,"X_pages")/1;
    arrOfPairs.push(zp+"Pages__c", X(doc,"X_pages"));  alert("ERS200213 ZPAPER__Pages__c="+zData.pages+" is "+X(doc,"X_pages")); 
    arrOfPairs.push(zp+"Program_Name__c", zData.programName); //ERS200201 was zData.classification #68825
    arrOfPairs.push(zp+"Program__c", zData.programName); //ERS200202 TODO into managed package #68825
    arrOfPairs.push(zp+"sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
    arrOfPairs.push(zp+"From__c", doc.deliveredFrom);
    arrOfPairs.push(zp+"Stage__c", "Received"); //ERS170731 #40593
    arrOfPairs.push(zp+"Classification__c", zData.classification); 
    
	//attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
    //attachLabel = "New "+zData.programName+" Stack received on " + zData.formatNow; //ERS200202 clientFile probably overrides TODO clean?
    attachLabel = "New Stack received from " + doc.deliveredFrom + " on " + zData.formatNow; //AN20210505 adding Delivered From variable. Couldn't figure out how to do this in the Client Library
	
	//getSFPreferredCurDateAndTime()
	alert("@@@current SF date and time is "+ getSFPreferredCurDateAndTime());
	
	alert("@@@current date and time via rule function is "+ getCurDateAndTime(doc, false, false, true));
	
    //ERS200815 #75685 GUESSING arrOfPairs.push(""+"Program__c",zData.programName);  //ERS200308 TODO switch to picklist
    //ERS200308 if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);

    
    //ERS190803 push any custom one to zData.clientStacks() or new zStackFields custom setting
    //ERS190722 make Exception go away arrOfPairs.push("zStack_Received__c", formatNow);
    //ERS190803 arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
    
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
    var sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added ""
    
    if (zData.clientReceivedDocument) { //CRN201024 Case #76788 We need to create a Received Document for the parent stack also.
    	//  only if it wasn't already uploaded to Salesforce
    	if (!doc.deliveredFrom) { //ERS210320 #81327 the new agent.war and zippi2 do not have all the right metadata!!! TODO CMA/SHR/CRN fix zippi2
    	    alert("ERS210320 fix doc.deliveredFrom with "+doc.URL);
    	    var i=doc.URL.lastIndexOf("/");
    	    doc.deliveredFrom=doc.URL.substring(i+1,doc.URL.indexOf("-",i+1));
    	}
    	if (!doc.deliveredFrom.startsWith("0io")) { zData.recDocId = zData.clientReceivedDocument(doc, sfId, "Received Document zStack"); }	//ERS201018 #77252
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
    if (X(doc, "X_fromFile")==="") { //ERS190624cu
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
    
    if (zData.zchannel.action) { //ERS210320 #81327 continue the journey
        var a="zData."+zData.zchannel.action.replace("()","(doc)");
        alert("ERS210320.173 journey on "+a);
        var r=eval(a);
        alert("ERS210320.175 results "+r);
    }
    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
