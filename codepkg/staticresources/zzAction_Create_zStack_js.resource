<!--
// Name: Create zStack
// Committer: eric.stephens@zpaper.com
// Update: ERS210208 forcing a new static resource I hope #75685
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-02-08 22:01:04","evalContinue":"true","active":true,"button":"","name":"Create zStack","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMyMTAyMDggZm9yY2luZyBhIG5ldyBzdGF0aWMgcmVzb3VyY2UgSSBob3BlICM3NTY4NQovL0VSUzIxMDEyNyAjODA5NDYgc3RhcnQgb2YgbWFqb3IgcmVmYWN0b3IgdG8gdXNlIGxvc3QgY2xpZW50IGNhbGxzCnZhciBhcnJPZlBhaXJzID0gW107CnZhciBhdHRhY2hMYWJlbCA9ICIiOwp2YXIgenA9ekRhdGEuenA7IGlmICghenApIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZSAvL0VSUzE5MDYxNyB6RGF0YS56cAp2YXIgelN0YWNrPXpEYXRhLnpwczsgLy8iU3RhY2tfX2MiCgogICAgLy9FUlMxOTA2MTcgVE9ETyBkb2N1bWVudCBodWIgc3RyYXRlZ3kKICAgIC8vRVJTMTkwODE0ICM2MTUxMSBtb3ZlIG9yYW5kIGFuZCBvcmdzd2l0Y2ggdXAgYmVmb3JlIHpEYXRhLmNoYW5uZWwKICAgIHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAvL3dobyBhbmQgd2hlcmUKICAgIHpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL1RPRE8gcmVmYWN0b3Igd2l0aCBzZXRCcmFuZFByb2dyYW0oKQoKekRhdGEuZnJvbUZpbGU9WChkb2MsIlhfZnJvbUZpbGUiKTsgLy9FUlMxOTA4MTQgVE9ETz8gZG8gaW4gbGlicmFyeT8KYWxlcnQoIkVSUzE5MDgxNC4xMSB6RGF0YS5mcm9tRmlsZT0iK3pEYXRhLmZyb21GaWxlKyIgLmNoYW5uZWw9Iit6RGF0YS5jaGFubmVsKTsgLy9FUlMxOTA4MTQKLy9DUk4xOTAzMDggSGFuZGxlIHVwbG9hZGVkIGZpbGVzIHZpYSBMaWdodG5pbmcgQ29tcG9uZW50IGFuZCB6U2VuZCBvciBtYXNzIGltcG9ydAppZiAoekRhdGEuZnJvbUZpbGUpIHsgLy9FUlMxOTA2MTcgVE9ETyBjaGFubmVsIGd1aWRlCiAgICBpZiAoekRhdGEuY2hhbm5lbCAmJiB6RGF0YS5jaGFubmVsLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigidXBsb2FkIik+LTEpIHsKICAgICAgICB2YXIgZnJvbUZpbGUgPSB6RGF0YS5mcm9tRmlsZS5zdWJzdHJpbmcoekRhdGEuZnJvbUZpbGUubGFzdEluZGV4T2YoJy8nKSArIDEpOyAvL0VSUzE5MDYyNCBzY29waW5nCiAgICAgICAgdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoIi0iKTsKICAgICAgICBpZiAocGFydHMubGVuZ3RoID49IDMpIHsKICAgICAgICAgICAgdmFyIGF0dGFjaFRvSWQgPSBwYXJ0c1syXTsKICAgICAgICAgICAgYWxlcnQoIkBAQCBVUExPQUQ6IEFUVEFDSElORyBUTyBTQUxFU0ZPUkNFIFJFQ09SRCA9ICIgKyBhdHRhY2hUb0lkKTsKICAgICAgICAgICAgdmFyIGxhYmVsID0gIkZpbGUgdXBsb2FkZWQgIiArIGZyb21GaWxlOwogICAgICAgICAgICBhdHRhY2goZG9jLCBsYWJlbCwgYXR0YWNoVG9JZCwgdHJ1ZSk7CiAgICAgICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlVwbG9hZGVkIik7IC8vIFBWMTkwNTI2IHVwZGF0ZWQgZm9yIHVwbG9hZCBsb2dpYyAKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCAiVXBsb2FkZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgIlVQTE9BRCIpOwogICAgICAgICAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFVwbG9hZChkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNzA2IHpEYXRhLmNoYW5uZWwgZm9yIHVwbG9hZCBhbmQgaW1wb3J0CiAgICAgICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIGlmICghekRhdGEubWFrZVN0YWNrKSByZXR1cm47IC8vRVJTMTkwODE0CiAgICAgICAgfQogICAgfQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImltcG9ydCIpPi0xKSB7CiAgICAgICAgdmFyIGZyb21GaWxlID0gekRhdGEuZnJvbUZpbGUuc3Vic3RyaW5nKHpEYXRhLmZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsgLy9FUlMxOTA2MjQgc2NvcGluZwogICAgICAgIC8vY3VzdG9tIHNldHRpbmcgaW1wb3J0IC06MzpDb250YWN0OkZheCBvciBjYWxsIHpEYXRhLmNsaWVudEltcG9ydFNPUUwoZnJvbUZpbGUpIHRvIGdldCBxdWVyeQogICAgICAgIHZhciBzZklkPXpEYXRhLmNsaWVudEltcG9ydFNPUUwoZG9jLGZyb21GaWxlKTsKICAgICAgICB2YXIgaW1wb3J0Q29uZmlnPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiSW1wb3J0ZXJfX2MiKS50cmltKCk7CiAgICAgICAgaWYgKCFpbXBvcnRDb25maWcpIGltcG9ydENvbmZpZz1YRGVwbG95bWVudEluZm8oZG9jLCJJbXBvcnRlcl9fYyIpLnRyaW0oKTsgLy9FUlMxOTA4MDUgdHlwZSBpbiBpZiAoKQogICAgICAgIGlmICghc2ZJZCAmJiAhaW1wb3J0Q29uZmlnKSBpbXBvcnRDb25maWc9Ii06MzpDb250YWN0OkZheCI7CiAgICAgICAgaWYgKCFzZklkICYmIGltcG9ydENvbmZpZy5pbmRleE9mKCI6Iik+LTEpIHsKICAgICAgICAgICAgdmFyIGltcG9ydGVyPWltcG9ydENvbmZpZy5zcGxpdCgiOiIpOwogICAgICAgICAgICB2YXIgZD1pbXBvcnRlclswXTsKICAgICAgICAgICAgdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoZCk7CiAgICAgICAgICAgIHZhciBmPSgiMCIraW1wb3J0ZXJbMV0pLzE7CiAgICAgICAgICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gZikgewogICAgICAgICAgICAgICAgdmFyIHNmcSA9IHt9OyBzZnFbaW1wb3J0ZXJbM11dPXBhcnRzW2ZdOyAvL0VSUzE5MDgwNQogICAgICAgICAgICAgICAgc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCBpbXBvcnRlclsyXSwgc2ZxICk7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICAgICAgaWYgKHNmSWQpIHsKICAgICAgICAgICAgdmFyIGF0dGFjaFRvSWQgPSBzZklkOwogICAgICAgICAgICBhbGVydCgiQEBAIElNUE9SVDogQVRUQUNISU5HIFRPIFNBTEVTRk9SQ0UgUkVDT1JEID0gIiArIGF0dGFjaFRvSWQpOwogICAgICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCAiICsgZnJvbUZpbGU7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiSW1wb3J0ZWQiKTsgLy8gUFYxOTA1MjYgdXBkYXRlZCBmb3IgdXBsb2FkIGxvZ2ljIAogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJJbXBvcnRlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGxhYmVsKTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCAiSU1QT1JUIik7CiAgICAgICAgICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50VXBsb2FkKGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA3MDYgekRhdGEuY2hhbm5lbCBmb3IgdXBsb2FkIGFuZCBpbXBvcnQKICAgICAgICAgICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgICAgICAgICAgaWYgKCF6RGF0YS5tYWtlU3RhY2spIHJldHVybjsKICAgICAgICB9CiAgICB9Cn0gCgogICAgLy9FUlMxNzEwMTIga2V5d29yZHMgZm9yIGRlbW8KICAgIHZhciBrZXl3b3Jkcz1bIkVOUkw6RW5yb2xsbWVudH4iLCJDT046Q29uc2VudH4iLCJDT046Y29uc2VudH4iLCJQQVBQOlBhdGllbnQgQXNzaXN0YW5jZSIsIlBBVVRIOlByaW9yfiBBdXRob3JpemF0aW9ufiIsIlJFRzpSZWd1bGF0aW9ufiIsIlJFRjpSRUZFUlJBTCIsIlJFRjpSZWZlcnJhbCIsIkZBWDoiXTsKICAgIGtleXdvcmRzPVsiRkFYOiJdOyAvL0VSUzE5MDYxNyBUT0RPIGFycmF5IG9yIG5vdD8gLy9FUlMxOTA2MjQgdGhlIEZBWDogdmFsdWUgZWZmZWN0aXZlbHkgcmVtb3ZlcyBPQ1IgVE9ETyB0cnkgYm90aCB3YXlzCiAgICB6RGF0YS5kb2NUeXBlT0NSID0gekRhdGEuZG9jVHlwZXIoZG9jLCBrZXl3b3Jkcyk7IC8vUFYxOTA1MjYgUmVtb3ZlZCB0eXBlcwogICAgYWxlcnQoImRvY1R5cGUgd2FzICIgKyBkb2MuZG9jVHlwZSArICIgbm93ICIgKyB6RGF0YS5kb2NUeXBlT0NSKTsKICAgIHZhciB6VHlwZSA9IGRvYy5YKCJYX2RvY1R5cGUiKTsKICAgIGlmIChkb2MuZG9jVHlwZSAhPSB6RGF0YS5kb2NUeXBlT0NSKSB7CiAgICAgICAgdmFyIGFyck9mUGFpcnMwID0gW107CiAgICAgICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlT0NSIiwgekRhdGEuZG9jVHlwZU9DUik7CiAgICAgICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIiwgekRhdGEuZG9jVHlwZU9DUik7CiAgICAgICAgelR5cGUgPSB6RGF0YS5kb2NUeXBlT0NSOyAvL0VSUzE3MDMzMCBzYXZlZCBiZWxvdyBpbnRvIFNGIGZheFR5cGVfX2MgZmllbGQKICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKICAgIH0KICAgIAogICAgLy9FUlMxOTA2MTcgVE9ETyBkb2N1bWVudCBodWIgc3RyYXRlZ3kKICAgIC8vRVJTMTkwODE0IHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyAvL3dobyBhbmQgd2hlcmUKICAgIC8vRVJTMTkwODE0IHpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL1RPRE8gcmVmYWN0b3Igd2l0aCBzZXRCcmFuZFByb2dyYW0oKQoKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsIHpUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YXR1c19fYyIsICJOZXcgU3RhY2siKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsIHpEYXRhLmNoYW5uZWwpOwogICAgLy8gTVNIMTcxMTE2IHVzaW5nIHpTdGFja19SZWNlaXZlZF9fYyBpbnN0ZWFkIG9mIGxhdGVzdEZheF9fYyBiZWNhdXNlIGxhdGVzdEZheF9fYyBnZXRzIHVwZGF0ZWQgYnkgc2F2ZS5qc3AgZXZlcnkgdGltZSB0aGUgcmVjb3JkIGlzIHVwZGF0ZWQKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgekRhdGEuZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsKICAgIHZhciBwYWdlUmFuZ2UgPSIxLSIrWChkb2MsIlhfcGFnZXMiKTsKICAgIHpEYXRhLnBhZ2VzPVgoZG9jLCJYX3BhZ2VzIikvMTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywiWF9wYWdlcyIpKTsgIGFsZXJ0KCJFUlMyMDAyMTMgWlBBUEVSX19QYWdlc19fYz0iK3pEYXRhLnBhZ2VzKyIgaXMgIitYKGRvYywiWF9wYWdlcyIpKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsgLy9FUlMyMDAyMDEgd2FzIHpEYXRhLmNsYXNzaWZpY2F0aW9uICM2ODgyNQogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcm9ncmFtX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOyAvL0VSUzIwMDIwMiBUT0RPIGludG8gbWFuYWdlZCBwYWNrYWdlICM2ODgyNQogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLCBkb2MuZGVsaXZlcmVkVG8pOyAvL0VSUzE3MDYyOCBjYWxsZXIgaWQKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgLy9FUlMxNzA3MzEgIzQwNTkzCiAgICBhcnJPZlBhaXJzLnB1c2goenArIkNsYXNzaWZpY2F0aW9uX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOyAKICAgIGF0dGFjaExhYmVsID0gIk5ldyAiK3pEYXRhLmNsYXNzaWZpY2F0aW9uKyIgU3RhY2sgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzsKICAgIGF0dGFjaExhYmVsID0gIk5ldyAiK3pEYXRhLnByb2dyYW1OYW1lKyIgU3RhY2sgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzsgLy9FUlMyMDAyMDIgY2xpZW50RmlsZSBwcm9iYWJseSBvdmVycmlkZXMgVE9ETyBjbGVhbj8KICAgIAogICAgLy9FUlMyMDA4MTUgIzc1Njg1IEdVRVNTSU5HIGFyck9mUGFpcnMucHVzaCgiIisiUHJvZ3JhbV9fYyIsekRhdGEucHJvZ3JhbU5hbWUpOyAgLy9FUlMyMDAzMDggVE9ETyBzd2l0Y2ggdG8gcGlja2xpc3QKICAgIC8vRVJTMjAwMzA4IGlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoKICAgIAogICAgLy9FUlMxOTA4MDMgcHVzaCBhbnkgY3VzdG9tIG9uZSB0byB6RGF0YS5jbGllbnRTdGFja3MoKSBvciBuZXcgelN0YWNrRmllbGRzIGN1c3RvbSBzZXR0aW5nCiAgICAvL0VSUzE5MDcyMiBtYWtlIEV4Y2VwdGlvbiBnbyBhd2F5IGFyck9mUGFpcnMucHVzaCgielN0YWNrX1JlY2VpdmVkX19jIiwgZm9ybWF0Tm93KTsKICAgIC8vRVJTMTkwODAzIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKICAgIAogICAgaWYgKHpEYXRhLmNsaWVudFN0YWNrKSBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA2MTcgVE9ETyB6RGF0YS5jbGllbnRTdGFjaygpIHdpdGggbGFiZWwgLy9TdGFja3MoKSBub3cgU3RhY2soKQogICAgdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS56cHMsIGF0dGFjaExhYmVsLCBhcnJPZlBhaXJzKTsgLy8gUFYxOTA1MzAgYWRkZWQgIiIKICAgIAogICAgaWYgKHpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQpIHsgLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggV2UgbmVlZCB0byBjcmVhdGUgYSBSZWNlaXZlZCBEb2N1bWVudCBmb3IgdGhlIHBhcmVudCBzdGFjayBhbHNvLgogICAgCS8vICBvbmx5IGlmIGl0IHdhc24ndCBhbHJlYWR5IHVwbG9hZGVkIHRvIFNhbGVzZm9yY2UKICAgIAlpZiAoIWRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoIjBpbyIpKSB7IHpEYXRhLnJlY0RvY0lkID0gekRhdGEuY2xpZW50UmVjZWl2ZWREb2N1bWVudChkb2MsIHNmSWQsICJSZWNlaXZlZCBEb2N1bWVudCB6U3RhY2siKTsgfQkvL0VSUzIwMTAxOCAjNzcyNTIKICAgIH0KICAgIC8vQ1JOMjAxMDI0IENhc2UgIzc2Nzg4IElmIHRoaXMgaXMgZnJvbSBhbiB1cGxvYWQsIHNldCB0aGUgRG9jdW1lbnQgTnVtYmVyIGluIHRoZSBSZWNlaXZlZCBEb2N1bWVudAogICAgYWxlcnQoIiMjIyBkb2MuZGVsaXZlcmVkRnJvbSA9PiAiICsgZG9jLmRlbGl2ZXJlZEZyb20pOwogICAgaWYgKGRvYy5kZWxpdmVyZWRGcm9tLnN0YXJ0c1dpdGgoIjBpbyIpKSB7CiAgICAJYWxlcnQoIiMjIyBTZXR0aW5nIHRoZSBEb2N1bWVudCBOdW1iZXIgaW4gdGhlIFJlY2VpdmVkIERvY3VtZW50IHdpdGggSWQ6ICIgKyBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICAJdmFyIGFycm9mUGFpcnNSRCA9IFtdOwogICAgCWFycm9mUGFpcnNSRC5wdXNoKCJEb2N1bWVudE51bWJlciIsICJ6OiIgKyBkb2MuZGJJRCk7CiAgICAJdXBkYXRlU0ZSZWNvcmQoZG9jLCAiUmVjZWl2ZWREb2N1bWVudCIsIGRvYy5kZWxpdmVyZWRGcm9tLCBhcnJvZlBhaXJzUkQpOwogICAgfQoKICAgIC8vQ1JOMTgwNzI2IENhc2UgIzUwNDY5IC0tIFNldCB0aGUgIlJlY2VpdmVkIiBjaGVja2JveAogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKICAgIGFyck9mUGFpcnMgPSBbXTsgLy8gUFYxOTA1MzEgYWRkZWQgZm9yIHN0YWNrIGxhYmVsCiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwogICAgaWYgKFgoZG9jLCAiWF9mcm9tRmlsZSIpPT09IiIpIHsgLy9FUlMxOTA2MjQKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZnJvbUZpbGUiLGRvYy5VUkwuc3Vic3RyaW5nKGRvYy5VUkwubGFzdEluZGV4T2YoIi8iKSsxKSk7IAogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CiAgICBpZiAoc2ZJZCkgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc2ZJZCk7IC8vRVJTMjAwMjA0IGJ1ZyBvciBtaXN1bmRlcnN0YW5kaW5nICM2ODgyNQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCBYKGRvYywgIlhfcmV2aWV3cyIpICsgIlJlY2VpdmVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOyAvL0VSUzE3MDkwOSAjNDA1OTIvQ0FXIFVwZGF0ZQogICAKICAgIGlmICh6RGF0YS56Y2hhbm5lbCkgeyAvL0VSUzIwMDIwOSBncm91cHMgIzY4ODI1IFRPRE8tRE9ORSBtb3ZlIHVwIGFuZCBjaGVjayBmb3Igb3RoZXIgdmFsdWVzCiAgICAgICAgaWYgKHpEYXRhLnpjaGFubmVsLm93bmVyKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnpjaGFubmVsLm93bmVyKTsgLy9FUlMyMDAzMDggIzcwMjczCiAgICAgICAgdmFyIGZsZHM9ImRiLXJlYWRlcnMsZGItdXNlcnMiLnNwbGl0KCIsIik7CiAgICAgICAgZm9yICh2YXIgaSBpbiBmbGRzKSB7CiAgICAgICAgICAgIHZhciBmPWZsZHNbaV07CiAgICAgICAgICAgIGFsZXJ0KCJFUlMyMDAyMDkgemNoYW5uZWwuIitmKyI9Iit6RGF0YS56Y2hhbm5lbFtmXSk7CiAgICAgICAgICAgIGlmICh6RGF0YS56Y2hhbm5lbFtmXSkgYXJyT2ZQYWlycy5wdXNoKGYsIHpEYXRhLnpjaGFubmVsW2ZdKTsKICAgICAgICAgICAgLy9pZiAoekRhdGEuemNoYW5uZWxbImRiLXJlYWRlcnMiXSkgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgekRhdGEuemNoYW5uZWxbImRiLXJlYWRlcnMiXSk7CiAgICAgICAgICAgIC8vaWYgKHpEYXRhLnpjaGFubmVsWyJkYi11c2VycyJdKSBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgekRhdGEuemNoYW5uZWxbImRiLXVzZXJzIl0pOwogICAgICAgIH0KICAgIH0gZWxzZSB7IGFsZXJ0KCJFUlMyMDA4MjIgbm8gemNoYW5uZWwgeWV0ISIpOyB9CiAgICAKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiRVJTMjAwMjA1IGNyZWF0ZWQgelN0YWNrICIrc2ZJZCk7IC8vRVJTMjAwMjA1ICM2ODgyNQogICAgLyogRU5EICov"},"ordinal":28}

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
    var pageRange ="1-"+X(doc,"X_pages");
    zData.pages=X(doc,"X_pages")/1;
    arrOfPairs.push(zp+"Pages__c", X(doc,"X_pages"));  alert("ERS200213 ZPAPER__Pages__c="+zData.pages+" is "+X(doc,"X_pages")); 
    arrOfPairs.push(zp+"Program_Name__c", zData.programName); //ERS200201 was zData.classification #68825
    arrOfPairs.push(zp+"Program__c", zData.programName); //ERS200202 TODO into managed package #68825
    arrOfPairs.push(zp+"sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
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
    
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
    var sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added ""
    
    if (zData.clientReceivedDocument) { //CRN201024 Case #76788 We need to create a Received Document for the parent stack also.
    	//  only if it wasn't already uploaded to Salesforce
    	if (!doc.deliveredFrom.startsWith("0io")) { zData.recDocId = zData.clientReceivedDocument(doc, sfId, "Received Document zStack"); }	//ERS201018 #77252
    }
    //CRN201024 Case #76788 If this is from an upload, set the Document Number in the Received Document
    alert("### doc.deliveredFrom => " + doc.deliveredFrom);
    if (doc.deliveredFrom.startsWith("0io")) {
    	alert("### Setting the Document Number in the Received Document with Id: " + doc.deliveredFrom);
    	var arrofPairsRD = [];
    	arrofPairsRD.push("DocumentNumber", "z:" + doc.dbID);
    	updateSFRecord(doc, "ReceivedDocument", doc.deliveredFrom, arrofPairsRD);
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
    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
