<!--
// Name: DTPC Library
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: Creating a lightning file for incoming PV210827
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-08-27 16:44:39","evalContinue":"true","active":true,"button":"","name":"DTPC Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotDTPC","operation":"ne"}]},"consequence":{"doit":"LyogQkVHSU4gRFRQQyBMaWJyYXJ5IHpBY3Rpb24gKi8KYWxlcnQoIkBAQCBJbml0aWFsaXppbmcgRFRQQ19MaWJyYXJ5IExJTkUgMSIpOyAvL0VSUzIxMDUyNyB0ZXN0aW5nIHdpdGggQ29yeQoKekRhdGEuUENwYWNrYWdlID0gIlBhdGllbnRDb25uZWN0X18iOwp6RGF0YS5TRkRDdHlwZSA9IHpEYXRhLlBDcGFja2FnZSArICJQQ19Eb2N1bWVudF9fYyI7CnpEYXRhLlNGRENjb25uZWN0b3IgPSB6RGF0YS5QQ3BhY2thZ2UgKyAiUENfRG9jdW1lbnRfTG9nX19jIjsKekRhdGEuelBhcGVySWRGaWVsZCA9ICJ6UGFwZXJfRmF4X1VuaXF1ZV9JZF9fYyI7IC8vQ1JOMTgwNzA2IFRoaXMgaXNuJ3QgaW4gYSBtYW5hZ2VkIHBhY2thZ2UKekRhdGEuRG9jdW1lbnRMb29rdXBGaWVsZCA9IHpEYXRhLlBDcGFja2FnZSArICJQQ19Eb2N1bWVudF9fYyI7CnpEYXRhLlBDX2F0dGFjaG1lbnRJZEZpZWxkID0gekRhdGEuUENwYWNrYWdlICsgIlBDX0F0dGFjaG1lbnRfSWRfX2MiOwovL01TSDE4MDgxNiAjNTE2NDEgekRhdGEuUENfbG9va3VwRmllbGQgPSB6RGF0YS5QQ3BhY2thZ2UgKyAiUENfUHJvZ3JhbV9fYyI7IC8vIkNhc2VfX2MiOwp6RGF0YS5QQ19sb29rdXBGaWVsZCA9ICJzcGNfUHJvZ3JhbV9DYXNlX0lkX19jIjsKekRhdGEuY2FzZUlkID0gIiI7CnpEYXRhLnByb2dyYW1OYW1lID0gIkRUUEMgUHJvZ3JhbSI7Ci8vTVNIMTkwMjEyIHVzZSBkZXBsb3ltZW50IHJlY29yZCBpbmZvCi8vekRhdGEuaW5ib3VuZEZheFJlY29yZFR5cGUgPSAiMDEyM0IwMDAwMDBMVWNZUUFXIjsgLy9NU0gxODEwMDQgdXBkYXRlZCByZWNvcmQgdHlwZSBmb3IgRnVsbAovL3pEYXRhLm91dGJvdW5kRmF4UmVjb3JkVHlwZSA9ICIwMTIzQjAwMDAwMExVY1pRQVciOyAvL01TSDE4MTAwNCB1cGRhdGVkIHJlY29yZCB0eXBlIGZvciBGdWxsCi8vekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZSA9ICIwMTIzQjAwMDAwMExVY1dRQVciOyAvL01TSDE4MTAwNCB1cGRhdGVkIHJlY29yZCB0eXBlIGZvciBGdWxsCi8vekRhdGEub3V0Ym91bmRFbWFpbFJlY29yZFR5cGUgPSAiMDEyM0IwMDAwMDBMVWNYUUFXIjsgLy9NU0gxODEwMDQgdXBkYXRlZCByZWNvcmQgdHlwZSBmb3IgRnVsbAovKgpFbWFpbCAtIEluYm91bmQgPT0gMDEyNVkwMDAwMDJIbERxUUFLCkVtYWlsIC0gT3V0Ym91bmQgPT0gMDEyNVkwMDAwMDJIbERyUUFLCkZheCAtIEluYm91bmQgPT0gMDEyNVkwMDAwMDJIbERzUUFLCkZheCAtIE91dGJvdW5kID09IDAxMjVZMDAwMDAySGxEdFFBSwoqLwoKCgp2YXIgY3MgPSAoZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbyArICIiKTsKYWxlcnQoIk1TSDE5MDIxMiBjcyA9ICIgKyBjcyk7CmlmIChjcykgewogICAgaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpID4gLTEpIHsKICAgICAgICBjcyA9IFgoZG9jLCAiekN1c3RvbVNldHRpbmdzIiwgY3MpOwogICAgfQogICAgaWYgKGNzICE9PSAiIikgewogICAgICAgIGV2YWwoY3MpOwogICAgfQp9CgovL0VSUzE5MDQxOCB1c2UgU0ZEQyBzZXR0aW5ncyBpbnN0ZWFkCnZhciBvcmcyb3JnQ1M9ZG9jLmtiRGF0YS5jdXN0b21TZXR0aW5nczsgLy9FUlMxOTA0MTEgIzU3ODgxCgp0cnkgeyAvL0VSUzIxMDUyNyBUT0RPIGxpbmsgdG8gY3VzdG9tIHNldHRpbmcgZG9jcwogICAgYWxlcnQoIk1pc3NpbmcgQ1M9Iitvcmcyb3JnQ1MpOwogICAgaWYgKG9yZzJvcmdDUyAmJiAxPT09MSkgeyAvL0VSUzIxMDUyOSBIQUNLIFRPRE8gQ1MgLy9FUlMyMTA2MTkgZG9uZSBieSBDUk4KICAgICAgICB6RGF0YS5pbmJvdW5kRmF4UmVjb3JkVHlwZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsImluYm91bmRGYXhSZWNvcmRUeXBlX19jIik7IC8vIjAxMjFEMDAwMDAwMkdLTlFBMiI7CiAgICAgICAgekRhdGEub3V0Ym91bmRGYXhSZWNvcmRUeXBlPSIiK1hDdXN0b21TZXR0aW5nKGRvYywib3V0Ym91bmRGYXhSZWNvcmRUeXBlX19jIik7IC8vIjAxMjFEMDAwMDAwMkdLT1FBMiI7CiAgICAgICAgekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsImluYm91bmRFbWFpbFJlY29yZFR5cGVfX2MiKTsgLy8wMTIxRDAwMDAwMDJHS0xRQTIiOwogICAgICAgIHpEYXRhLm91dGJvdW5kRW1haWxSZWNvcmRUeXBlPSIiK1hDdXN0b21TZXR0aW5nKGRvYywib3V0Ym91bmRFbWFpbFJlY29yZFR5cGVfX2MiKTsgLy8iMDEyMUQwMDAwMDAyR0tNUUEyIjsKICAgICAgICAvL0NMSUVOVCBTUEVDSUZJQyAvL0VSUzIxMDUyNyB6RGF0YS5CUkVYaW5ib3VuZEZheExpbmU9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJCUkVYaW5ib3VuZEZheExpbmVfX2MiKTsgLy8xNjc4NzI3MDY5OCI7CiAgICAgICAgekRhdGEuaW5ib3VuZEZheExpbmU9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX0NoYW5uZWwxX19jIik7IC8vRVJTMjEwNTI3IFRPRE8gcmV3b3JrIGludG8gekNoYW5uZWwgc2V0dXAKICAgICAgICB6RGF0YS5pbmJvdW5kRmF4TGluZT1kb2MuZGVsaXZlcmVkVG87CiAgICAgICAgLy9hbGVydCgiU2V0dXAgZm9yOiAiK3pEYXRhLkJSRVhpbmJvdW5kRmF4TGluZSk7CiAgICAgICAgekRhdGEudGVzdD0iZG9uZSI7CiAgICB9IGVsc2UgewogICAgICAgIGFsZXJ0KCJTRVRUSU5HUyBBUkUgRVJTMTkwNDExIENTIGEgIisgKHR5cGVvZiBvcmcyb3JnQ1MpICsiIGhhcyAiK29yZzJvcmdDUyk7CiAgICB9Cn0gY2F0Y2goZSkgewogICAgYWxlcnQoIkZBSUxFRCBUTyBJTklUSUFMSVpFIik7CiAgICBhbGVydCgiZXJyb3I6ICIrZSk7Cn0KCiAgICBpZiAoMT09PTApIHsgLy9FUlMyMTA2MTggZG9uZSBhYm92ZSAvL0VSUzIxMDUyOSBUT0RPIG1vdmUgaW50byBjdXN0b20gc2V0dGluZ3MgZnJvbSB0aGUgYWNjZWxlcmF0b3IKICAgICAgICB6RGF0YS5pbmJvdW5kRmF4UmVjb3JkVHlwZT0iMDEyNVkwMDAwMDJIbERzUUFLIjsKICAgICAgICB6RGF0YS5vdXRib3VuZEZheFJlY29yZFR5cGU9IjAxMjVZMDAwMDAySGxEdFFBSyI7CiAgICAgICAgekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZT0iMDEyNVkwMDAwMDJIbERxUUFLIjsgLy9FUlMyMTA1MjkgSEFDSyBmb3IgZGVtbwogICAgICAgIHpEYXRhLm91dGJvdW5kRW1haWxSZWNvcmRUeXBlPSIwMTI1WTAwMDAwMkhsRHJRQUsiOwogICAgICAgIHpEYXRhLmluYm91bmRGYXhMaW5lPWRvYy5kZWxpdmVyZWRUbzsKICAgICAgICB6RGF0YS50ZXN0PSJkb25lIjsKICAgIH0KICAgICAgIAppZiAoIXpEYXRhLnRlc3QgfHwgIXpEYXRhLmluYm91bmRGYXhMaW5lIHx8ICF6RGF0YS5pbmJvdW5kRmF4UmVjb3JkVHlwZSB8fCAhekRhdGEub3V0Ym91bmRGYXhSZWNvcmRUeXBlCiAgfHwgIXpEYXRhLm91dGJvdW5kRW1haWxSZWNvcmRUeXBlIHx8ICF6RGF0YS5vdXRib3VuZEVtYWlsUmVjb3JkVHlwZSkgewogICAgLy9lbWFpbCBzb21lb25lIHRoYXQgdGhlIG9yZyBpcyBub3Qgc2V0dXAKICAgIHZhciBtc2c9IkNVU1RPTSBTRVRUSU5HUyBBUkUgTUlTU0lORyI7CiAgICB2YXIgYm9keT0ielBhcGVyIEFjdGlvbnMgRmFpbGVkIHRvIEluaXRpYWxpemVcblxuIitvcmcyb3JnQ1MrIiI7CiAgICBhbGVydCgiZW1haWwgIisgZG9jLmtiRGF0YS51c2VyRW1haWwrIlxuIittc2cpOwogICAgdmFyIHNlPXNlbmRFbWFpbChkb2MsICJzdXBwb3J0QHpwYXBlci5jb20iLCBkb2Mua2JEYXRhLnVzZXJFbWFpbCwgbXNnLCBib2R5KTsKICAgIHJvb2wuZXZhbENvbnRpbnVlPWZhbHNlOyAvL3N0b3BzIHRoZSBidXMhCiAgICByZXR1cm47Cn0KCi8vRVJTMTcwNjIxIGF0dGFjaGluZyB0byBhIENhc2Ugc2hvdWxkIGNyZWF0ZSBhIERvY3VtZW50IGFuZCBEb2N1bWVudExvZwp6RGF0YS5uZXdEb2N1bWVudCA9IGZ1bmN0aW9uKGRvYywgYXJyT2ZQYWlycywgU0ZEQ3R5cGUsIHByb2dyYW1OYW1lLCBzZlBhcmVudElkLCBTRkRDZmllbGQsIHN0YXR1cykgeyAvL0NSTjE3MTAyOCBBZGRlZCBzdGF0dXMgLy9FUlMxNzA2MjYgYWRkZWQgcGFyZW50IHR5cGUKICAgIHZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOyAvL0NSTjE3MDYyMSBUaGlzIGlzIGZpeGVkIG5vdyBzbyB3ZSBkb24ndCBuZWVkIHRoZSBsaW5lcyBiZWxvdwoKICAgIGlmICgxPT09MSkgewogICAgICAgIHZhciBkZWxpdmVyZWRGcm9tID0gZG9jLmRlbGl2ZXJlZEZyb207CiAgICAgICAgLy9NU0gxOTAyMTMgZGVidWdnaW5nCiAgICAgICAgYWxlcnQoImRlbGl2ZXJlZEZyb20gPT0gIiArIGRlbGl2ZXJlZEZyb20pOwogICAgICAgIC8vaWYgKGRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpID4gLTEgfHwgZGVsaXZlcmVkRnJvbS5sZW5ndGggIT0gMTEpIHsKICAgICAgICAgICAgLy9kZWxpdmVyZWRGcm9tID0gIjE3NzA1NTUxMjEyIjsgLy9FUlMxNzA3MjkgIzQwNDQ3CiAgICAgICAgLy99Ci8vQ1JOMjEwNjExIFdlIG5lZWQgdG8gc2V0IHRoZSBSZWNvcmRUeXBlSWQgY29ycmVjdGx5Lgp2YXIgaXNSZWNvcmRUeXBlSWRTZXQgPSBmYWxzZTsKZm9yKHZhciBpID0gMDsgaSA8IGFyck9mUGFpcnMubGVuZ3RoOyBpPWkrMikgewogICBpZihhcnJPZlBhaXJzW2ldLnRvTG93ZXJDYXNlKCkgPT0gInJlY29yZHR5cGVpZCIpIHsKICAgICAgIGlzUmVjb3JkVHlwZUlkU2V0ID0gdHJ1ZTsKICAgICAgIGJyZWFrOwogICB9Cn0KaWYoIWlzUmVjb3JkVHlwZUlkU2V0KSB7CiAgICB2YXIgcmVjb3JkVHlwZUlkID0gekRhdGEuaW5ib3VuZEZheFJlY29yZFR5cGU7IC8vIGFzc3VtZSBpbmNvbWluZyBmYXgKICAgICAgICAgICAgaWYgKGRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpID49IDApIHsKICAgIHJlY29yZFR5cGVJZCA9IHpEYXRhLmluYm91bmRFbWFpbFJlY29yZFR5cGU7IC8vIGl0J3MgYWN0dWFsbHkgYW4gZW1haWwKICAgICAgICAgICAgfQogICAKICAgIGFyck9mUGFpcnMucHVzaCgiUmVjb3JkVHlwZUlkIiwgcmVjb3JkVHlwZUlkKTsgLy9DUk4yMTA2MTEgbm93IHNldHRpbmcgdGhlIHJlY29yZCB0eXBlCn0KICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuUENwYWNrYWdlICsgIlBDX0Zyb21fRmF4X051bWJlcl9fYyIsIGRlbGl2ZXJlZEZyb20pOyAvL3dhcyAiSW5jb21pbmdfRmF4X051bWJlcl9fYyIKICAgICAgICAvL3VzZSByZWNvcmQgdHlwZSAvL2Fyck9mUGFpcnMucHVzaCgiQ2hhbm5lbF9fYyIsICJGYXggLSBJbmJvdW5kIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLlBDcGFja2FnZSArICJQQ19Ub19GYXhfTnVtYmVyX19jIiwgekRhdGEuaW5ib3VuZEZheExpbmUpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfSW5ib3VuZF9GYXhfRGF0ZV9UaW1lX19jIiwgZm9ybWF0Tm93KTsgLy93YXMgRmF4X1JlY2VpdmVkX0RhdGVfVGltZV9fYwogICAgICAgIGlmIChzdGF0dXMpIHsKICAgICAgICAgICAgYWxlcnQoIkVSUzE4MDkwNC40MCBQQ19Eb2N1bWVudF9TdGF0dXNfX2MgaXMgIisgc3RhdHVzKTsgLy8jNTE2MDQKICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuUENwYWNrYWdlICsgIlBDX0RvY3VtZW50X1N0YXR1c19fYyIsIHN0YXR1cyk7IC8vd2FzIGFsd2F5IE5ldwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIGFsZXJ0KCJFUlMxODA5MDQuNDMgUENfRG9jdW1lbnRfU3RhdHVzX19jIGlzICIrIHN0YXR1cyk7IC8vIzUxNjA0CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfRG9jdW1lbnRfU3RhdHVzX19jIiwgIk5ldyIpOyAvL3dhcyBTdGF0dXNfX2MKICAgICAgICB9CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLnpQYXBlcklkRmllbGQsIGRvYy5kYklEKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuUENwYWNrYWdlICsgIlBDX0RvY3VtZW50X0NhdGVnb3J5X19jIiwgWChkb2MsICJYX2RvY1R5cGUiKSk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLlBDcGFja2FnZSArICJQQ19QYWdlX0NvdW50X19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwogICAgICAgIHZhciBxckNvZGUgPSBYKGRvYywiWF9iYXJDb2RlMCIpOwogICAgICAgIGFsZXJ0KCIxMjNxckNvZGUiICsgcXJDb2RlKTsKICAgICAgICBpZihxckNvZGUuZW5kc1dpdGggKCJFTlJMMiIpKXsKICAgICAgICAgICAgYWxlcnQoIkVOUkwyIik7CiAgICAgICAgfQogICAgICAgIGVsc2UgaWYocXJDb2RlLmVuZHNXaXRoICgiRU5STCIpKXsKICAgICAgICAgICAgYWxlcnQoIkVOUkwiKTsKICAgICAgICB9CiAgICAgICAvL3ZhciBmYXhUeXBlID0gWChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOwogICAgICAgaWYgKHFyQ29kZSA9PSAiRU5STCIpeyAvL1BWMjEwODI0CiAgICAgICAgLy92YXIgZW5qSWQgPSAiYTFSMTgwMDAwMDFYaUlDRUEwIjsKICAgICAgICB2YXIgZW5qSWQ9IGdldFNGRmllbGQoZG9jLCAiUGF0aWVudENvbm5lY3RfX1BDX0VuZ2FnZW1lbnRfUHJvZ3JhbV9fYyIsICJJZCIsICJQYXRpZW50Q29ubmVjdF9fUENfUHJvZ3JhbV9Db2RlX19jID0gJ0VOSiciLCBudWxsKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBhdGllbnRDb25uZWN0X19QQ19FbmdhZ2VtZW50X1Byb2dyYW1fX2MiLGVuaklkKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBhdGllbnRDb25uZWN0X19QQ19FbmdhZ2VtZW50UHJvZ3JhbUNvZGVfX2MiLCAiRU5KIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQYXRpZW50Q29ubmVjdF9fUENfRG9jdW1lbnRfQ2F0ZWdvcnlfX2MiLCAiRW5yb2xsbWVudCBGb3JtIik7CiAgICAgICAgYWxlcnQoIkBAQEZheHR5cGUiICsgZmF4VHlwZSApOwogICAgICAgIH0KICAgICAgICAgZWxzZSBpZiAocXJDb2RlID09ICJFTlJMMiIgfHwgIkVOSklBUCIpewogICAgICAgIC8vdmFyIHJiZ0lkID0gImExUjE4MDAwMDAxWGtwTkVBUyI7IC8vUFYyMTA4MjYKICAgICAgICB2YXIgcmJnSWQ9IGdldFNGRmllbGQoZG9jLCAiUGF0aWVudENvbm5lY3RfX1BDX0VuZ2FnZW1lbnRfUHJvZ3JhbV9fYyIsICJJZCIsICJQYXRpZW50Q29ubmVjdF9fUENfUHJvZ3JhbV9Db2RlX19jID0gJ1JCRyciLCBudWxsKTsKICAgICAgICBhbGVydCgicmJnSWQiICsgcmJnSWQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUGF0aWVudENvbm5lY3RfX1BDX0VuZ2FnZW1lbnRfUHJvZ3JhbV9fYyIscmJnSWQpOwogICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBhdGllbnRDb25uZWN0X19QQ19FbmdhZ2VtZW50UHJvZ3JhbUNvZGVfX2MiLCAiUkJHIik7CiAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiUGF0aWVudENvbm5lY3RfX1BDX0RvY3VtZW50X0NhdGVnb3J5X19jIiwgIkVucm9sbG1lbnQgRm9ybSIpOwogICAgICAgICB9CiAgICAgICAgIGVsc2UgaWYocXJDb2RlID09IkVOSkVOUiIpewogICAgICAgICB2YXIgcmJnSWQyPSBnZXRTRkZpZWxkKGRvYywgIlBhdGllbnRDb25uZWN0X19QQ19FbmdhZ2VtZW50X1Byb2dyYW1fX2MiLCAiSWQiLCAiUGF0aWVudENvbm5lY3RfX1BDX1Byb2dyYW1fQ29kZV9fYyA9ICdSQkcnIiwgbnVsbCk7CiAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiUGF0aWVudENvbm5lY3RfX1BDX0VuZ2FnZW1lbnRfUHJvZ3JhbV9fYyIscmJnSWQyKTsKICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQYXRpZW50Q29ubmVjdF9fUENfRW5nYWdlbWVudFByb2dyYW1Db2RlX19jIiwgIlJCRyIpOwogICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBhdGllbnRDb25uZWN0X19QQ19Eb2N1bWVudF9DYXRlZ29yeV9fYyIsICJJQVAgRW5yb2xsbWVudCBGb3JtIik7CiAgICAgICAgIH0KICAgICAgICBlbHNlewogICAgICAgIC8vdmFyIHJiZ0lkMSA9ICJhMVIxODAwMDAwMVhrcE5FQVMiOwogICAgICAgIHZhciByYmdJZDE9IGdldFNGRmllbGQoZG9jLCAiUGF0aWVudENvbm5lY3RfX1BDX0VuZ2FnZW1lbnRfUHJvZ3JhbV9fYyIsICJJZCIsICJQYXRpZW50Q29ubmVjdF9fUENfUHJvZ3JhbV9Db2RlX19jID0gJ1JCRyciLCBudWxsKTsKICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJQYXRpZW50Q29ubmVjdF9fUENfRW5nYWdlbWVudF9Qcm9ncmFtX19jIixyYmdJZDEpOwogICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBhdGllbnRDb25uZWN0X19QQ19FbmdhZ2VtZW50UHJvZ3JhbUNvZGVfX2MiLCAiUkJHIik7CiAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiUGF0aWVudENvbm5lY3RfX1BDX0RvY3VtZW50X0NhdGVnb3J5X19jIiwgIkZBWCIpOwogICAgICAgIH0KICAgICAgICBhbGVydChhcnJPZlBhaXJzKTsKICAgIH0KCiAgICAvL0VSUzE3MDMyMiBUT0RPIGNoZWNrIGZvciBzcGxpdCBhbmQgc2V0IFBhcmVudF9Eb2N1bWVudF9fYwogICAgdmFyIHBhcmVudElEID0gWChkb2MsICJYX2F0dGFjaGVkVG8iKTsKICAgIHZhciB0eXBlID0gIiI7IC8vRVJTMTcwMzI1CiAgICB0eXBlID0gWChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOyAvL0VSUzE3MDcyOSAjNDA0NDcgaW4gYXR0YWNobWVudCBuYW1lCiAgICBpZiAoc2ZQYXJlbnRJZCkgewogICAgICAgIHBhcmVudElEID0gc2ZQYXJlbnRJZDsKICAgIH0KICAgIGlmIChwYXJlbnRJRCAhPT0gIiIpIHsKICAgICAgICBwYXJlbnRJRCA9IHBhcmVudElELnN1YnN0cmluZygxICsgcGFyZW50SUQubGFzdEluZGV4T2YoIi8iKSk7CiAgICAgICAgYWxlcnQoInBhcmVudElEID0gIiArIHBhcmVudElEKTsKICAgIH0KCiAgICB2YXIgc2ZJZCA9IHpEYXRhLlBjRG9jSWQ7CiAgICBpZiAoIXpEYXRhLlBjRG9jSWQpIHsKICAgICAgICBzZklkID0gIiIgKyBjcmVhdGVBbmRBdHRhY2goZG9jLCBTRkRDdHlwZSwgIk5ldyAiICsgdHlwZSArIHByb2dyYW1OYW1lICsgIiBQQyBEb2N1bWVudCByZWNlaXZlZCBvbiAiICsgZm9ybWF0Tm93LCBhcnJPZlBhaXJzKTsKICAgIH0KCiAgICBpZiAoMT09PTEpIHsgLy9FUlMyMTA1MjkgVE9ETyBtb3JlIHdheXMgdG8gY29ubmVjdCB0aGFuIGp1c3QgQ2FzZXMKICAgICAgICBpZiAoIXpEYXRhLmNhc2VJZCAmJiBwYXJlbnRJRC5pbmRleE9mKCI1MDAiKT09PTApIHsgekRhdGEuY2FzZUlkPXBhcmVudElEOyB9CiAgICAgICAgaWYgKCF6RGF0YS5jYXNlSWQgJiYgWChkb2MsInNmSUQiKS5pbmRleE9mKCI1MDAiKT09PTApIHsgekRhdGEuY2FzZUlkPVgoZG9jLCJzZklEIik7IH0KICAgIH0KICAgIHpEYXRhLlBjRG9jSWQgPSBzZklkLmxlbmd0aCA+IDQgPyBzZklkIDogbnVsbDsKICAgIGFsZXJ0KCJAQEAgRVJTMTcwOTEzIGNhc2VJZCA9ICIgKyB6RGF0YS5jYXNlSWQgKyAiOiBDcmVhdGVkICIgKyBTRkRDdHlwZSArICI6IiArIHNmSWQgKyAiIEBAQCIpOwogICAgYWxlcnQoInpEYXRhLlNGRENjb25uZWN0b3IgPSAiICsgekRhdGEuU0ZEQ2Nvbm5lY3Rvcik7CiAgICBpZih6RGF0YS5QY0RvY0lkICYmICF6RGF0YS5kb05vdENyZWF0ZUxpZ2h0bmluZ0ZpbGUpeyAvLyBDcmVhdGluZyBhIGxpZ2h0bmluZyBmaWxlIGZvciBpbmNvbWluZyBQVjIxMDgyNwogICAgICAgIHpEYXRhLmNsaWVudExpZ2h0bmluZ0ZpbGUoZG9jLCBbekRhdGEuUGNEb2NJZF0sIHpEYXRhKTsKICAgIH0KICAgIGlmICh6RGF0YS5jYXNlSWQgJiYgMT09PTEgJiYgc2ZJZCAhPT0gIiIgJiYgc2ZJZCAhPSAiTkVXIikgeyAvL0VSUzE3MDcwOCBhZGRlZCBORVcgdGVzdCAvL0VSUzE3MDYyMSBtYWtlIHRoZSBEb2N1bWVudF9Mb2cgYW5kIGNvbm5lY3QgdG8gY2FzZQogICAgICAgIHZhciBhcnJPZlBhaXJzMiA9IFtdOyAvL0VSUzE3MDcwOCB7fSBub3cgW10KICAgICAgICBhcnJPZlBhaXJzMi5wdXNoKCJQYXRpZW50Q29ubmVjdF9fUENfUHJvZ3JhbV9fYyIsIHpEYXRhLmNhc2VJZCk7IC8vRVJTMTcwODMwCiAgICAgICAgYXJyT2ZQYWlyczIucHVzaCh6RGF0YS5Eb2N1bWVudExvb2t1cEZpZWxkLCBzZklkKTsgLy9FUlMxNzA4MzAKICAgICAgICB2YXIgc2ZJZENvbm5lY3RvciA9ICIiICsgY3JlYXRlU0ZSZWNvcmQoZG9jLCB6RGF0YS5TRkRDY29ubmVjdG9yLCBudWxsLCBhcnJPZlBhaXJzMik7ICAvL0VSUzIxMDUyOSBudWxsIG5vdCAiIgogICAgICAgIHpEYXRhLnNmSWRDb25uZWN0b3IgPSBzZklkQ29ubmVjdG9yOyAvL1BWMjEwNjI5IGFkZGVkIGZvciBETCBGaWxlCiAgICAgICAgYWxlcnQoIkBAQCBDcmVhdGVkIHR5cGUgIiArIHpEYXRhLlNGRENjb25uZWN0b3IgKyAiOiIgKyBzZklkQ29ubmVjdG9yICsgIiB0byAiICsgc2ZJZCArICIgYW5kICIgKyB6RGF0YS5jYXNlSWQgKyAiIEBAQCIpOwogICAgICAgIGlmIChzZklkQ29ubmVjdG9yICE9PSAiIiAmJiBzZklkQ29ubmVjdG9yICE9PSAibnVsbCIpIHsKICAgICAgICAgICAgcmV0dXJuIHNmSWQgKyAiLCIgKyBzZklkQ29ubmVjdG9yOwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIGFsZXJ0KCJGYWlsZWQgdG8gY3JlYXRlICIgKyB6RGF0YS5TRkRDY29ubmVjdG9yKTsKICAgICAgICB9CiAgICB9IGVsc2UgewogICAgICAgIGFsZXJ0KCJGYWlsZWQgdG8gY3JlYXRlICIgKyBTRkRDdHlwZSk7CiAgICB9CiAgICByZXR1cm4gc2ZJZDsKfTs="},"ordinal":1}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN DTPC Library zAction */
alert("@@@ Initializing DTPC_Library LINE 1"); //ERS210527 testing with Cory

zData.PCpackage = "PatientConnect__";
zData.SFDCtype = zData.PCpackage + "PC_Document__c";
zData.SFDCconnector = zData.PCpackage + "PC_Document_Log__c";
zData.zPaperIdField = "zPaper_Fax_Unique_Id__c"; //CRN180706 This isn't in a managed package
zData.DocumentLookupField = zData.PCpackage + "PC_Document__c";
zData.PC_attachmentIdField = zData.PCpackage + "PC_Attachment_Id__c";
//MSH180816 #51641 zData.PC_lookupField = zData.PCpackage + "PC_Program__c"; //"Case__c";
zData.PC_lookupField = "spc_Program_Case_Id__c";
zData.caseId = "";
zData.programName = "DTPC Program";
//MSH190212 use deployment record info
//zData.inboundFaxRecordType = "0123B000000LUcYQAW"; //MSH181004 updated record type for Full
//zData.outboundFaxRecordType = "0123B000000LUcZQAW"; //MSH181004 updated record type for Full
//zData.inboundEmailRecordType = "0123B000000LUcWQAW"; //MSH181004 updated record type for Full
//zData.outboundEmailRecordType = "0123B000000LUcXQAW"; //MSH181004 updated record type for Full
/*
Email - Inbound == 0125Y000002HlDqQAK
Email - Outbound == 0125Y000002HlDrQAK
Fax - Inbound == 0125Y000002HlDsQAK
Fax - Outbound == 0125Y000002HlDtQAK
*/



var cs = (doc.kbData.deploymentInfo + "");
alert("MSH190212 cs = " + cs);
if (cs) {
    if (cs.indexOf("zCustomSettings") > -1) {
        cs = X(doc, "zCustomSettings", cs);
    }
    if (cs !== "") {
        eval(cs);
    }
}

//ERS190418 use SFDC settings instead
var org2orgCS=doc.kbData.customSettings; //ERS190411 #57881

try { //ERS210527 TODO link to custom setting docs
    alert("Missing CS="+org2orgCS);
    if (org2orgCS && 1===1) { //ERS210529 HACK TODO CS //ERS210619 done by CRN
        zData.inboundFaxRecordType=""+XCustomSetting(doc,"inboundFaxRecordType__c"); //"0121D0000002GKNQA2";
        zData.outboundFaxRecordType=""+XCustomSetting(doc,"outboundFaxRecordType__c"); //"0121D0000002GKOQA2";
        zData.inboundEmailRecordType=""+XCustomSetting(doc,"inboundEmailRecordType__c"); //0121D0000002GKLQA2";
        zData.outboundEmailRecordType=""+XCustomSetting(doc,"outboundEmailRecordType__c"); //"0121D0000002GKMQA2";
        //CLIENT SPECIFIC //ERS210527 zData.BREXinboundFaxLine=""+XCustomSetting(doc,"BREXinboundFaxLine__c"); //16787270698";
        zData.inboundFaxLine=""+XCustomSetting(doc,"ZPAPER__Channel1__c"); //ERS210527 TODO rework into zChannel setup
        zData.inboundFaxLine=doc.deliveredTo;
        //alert("Setup for: "+zData.BREXinboundFaxLine);
        zData.test="done";
    } else {
        alert("SETTINGS ARE ERS190411 CS a "+ (typeof org2orgCS) +" has "+org2orgCS);
    }
} catch(e) {
    alert("FAILED TO INITIALIZE");
    alert("error: "+e);
}

    if (1===0) { //ERS210618 done above //ERS210529 TODO move into custom settings from the accelerator
        zData.inboundFaxRecordType="0125Y000002HlDsQAK";
        zData.outboundFaxRecordType="0125Y000002HlDtQAK";
        zData.inboundEmailRecordType="0125Y000002HlDqQAK"; //ERS210529 HACK for demo
        zData.outboundEmailRecordType="0125Y000002HlDrQAK";
        zData.inboundFaxLine=doc.deliveredTo;
        zData.test="done";
    }
       
if (!zData.test || !zData.inboundFaxLine || !zData.inboundFaxRecordType || !zData.outboundFaxRecordType
  || !zData.outboundEmailRecordType || !zData.outboundEmailRecordType) {
    //email someone that the org is not setup
    var msg="CUSTOM SETTINGS ARE MISSING";
    var body="zPaper Actions Failed to Initialize\n\n"+org2orgCS+"";
    alert("email "+ doc.kbData.userEmail+"\n"+msg);
    var se=sendEmail(doc, "support@zpaper.com", doc.kbData.userEmail, msg, body);
    rool.evalContinue=false; //stops the bus!
    return;
}

//ERS170621 attaching to a Case should create a Document and DocumentLog
zData.newDocument = function(doc, arrOfPairs, SFDCtype, programName, sfParentId, SFDCfield, status) { //CRN171028 Added status //ERS170626 added parent type
    var formatNow = getCurDateAndTime(doc); //CRN170621 This is fixed now so we don't need the lines below

    if (1===1) {
        var deliveredFrom = doc.deliveredFrom;
        //MSH190213 debugging
        alert("deliveredFrom == " + deliveredFrom);
        //if (deliveredFrom.indexOf(".") > -1 || deliveredFrom.length != 11) {
            //deliveredFrom = "17705551212"; //ERS170729 #40447
        //}
//CRN210611 We need to set the RecordTypeId correctly.
var isRecordTypeIdSet = false;
for(var i = 0; i < arrOfPairs.length; i=i+2) {
   if(arrOfPairs[i].toLowerCase() == "recordtypeid") {
       isRecordTypeIdSet = true;
       break;
   }
}
if(!isRecordTypeIdSet) {
    var recordTypeId = zData.inboundFaxRecordType; // assume incoming fax
            if (deliveredFrom.indexOf("@") >= 0) {
    recordTypeId = zData.inboundEmailRecordType; // it's actually an email
            }
   
    arrOfPairs.push("RecordTypeId", recordTypeId); //CRN210611 now setting the record type
}
        arrOfPairs.push(zData.PCpackage + "PC_From_Fax_Number__c", deliveredFrom); //was "Incoming_Fax_Number__c"
        //use record type //arrOfPairs.push("Channel__c", "Fax - Inbound");
        arrOfPairs.push(zData.PCpackage + "PC_To_Fax_Number__c", zData.inboundFaxLine);
        arrOfPairs.push(zData.PCpackage + "PC_Inbound_Fax_Date_Time__c", formatNow); //was Fax_Received_Date_Time__c
        if (status) {
            alert("ERS180904.40 PC_Document_Status__c is "+ status); //#51604
           arrOfPairs.push(zData.PCpackage + "PC_Document_Status__c", status); //was alway New
        } else {
            alert("ERS180904.43 PC_Document_Status__c is "+ status); //#51604
            arrOfPairs.push(zData.PCpackage + "PC_Document_Status__c", "New"); //was Status__c
        }
        arrOfPairs.push(zData.zPaperIdField, doc.dbID);
        arrOfPairs.push(zData.PCpackage + "PC_Document_Category__c", X(doc, "X_docType"));
        arrOfPairs.push(zData.PCpackage + "PC_Page_Count__c", X(doc, "X_pages"));
        var qrCode = X(doc,"X_barCode0");
        alert("123qrCode" + qrCode);
        if(qrCode.endsWith ("ENRL2")){
            alert("ENRL2");
        }
        else if(qrCode.endsWith ("ENRL")){
            alert("ENRL");
        }
       //var faxType = X(doc, "X_ZPAPER__faxType__c");
       if (qrCode == "ENRL"){ //PV210824
        //var enjId = "a1R18000001XiICEA0";
        var enjId= getSFField(doc, "PatientConnect__PC_Engagement_Program__c", "Id", "PatientConnect__PC_Program_Code__c = 'ENJ'", null);
        arrOfPairs.push("PatientConnect__PC_Engagement_Program__c",enjId);
        arrOfPairs.push("PatientConnect__PC_EngagementProgramCode__c", "ENJ");
        arrOfPairs.push("PatientConnect__PC_Document_Category__c", "Enrollment Form");
        alert("@@@Faxtype" + faxType );
        }
         else if (qrCode == "ENRL2" || "ENJIAP"){
        //var rbgId = "a1R18000001XkpNEAS"; //PV210826
        var rbgId= getSFField(doc, "PatientConnect__PC_Engagement_Program__c", "Id", "PatientConnect__PC_Program_Code__c = 'RBG'", null);
        alert("rbgId" + rbgId);
        arrOfPairs.push("PatientConnect__PC_Engagement_Program__c",rbgId);
         arrOfPairs.push("PatientConnect__PC_EngagementProgramCode__c", "RBG");
         arrOfPairs.push("PatientConnect__PC_Document_Category__c", "Enrollment Form");
         }
         else if(qrCode =="ENJENR"){
         var rbgId2= getSFField(doc, "PatientConnect__PC_Engagement_Program__c", "Id", "PatientConnect__PC_Program_Code__c = 'RBG'", null);
         arrOfPairs.push("PatientConnect__PC_Engagement_Program__c",rbgId2);
         arrOfPairs.push("PatientConnect__PC_EngagementProgramCode__c", "RBG");
         arrOfPairs.push("PatientConnect__PC_Document_Category__c", "IAP Enrollment Form");
         }
        else{
        //var rbgId1 = "a1R18000001XkpNEAS";
        var rbgId1= getSFField(doc, "PatientConnect__PC_Engagement_Program__c", "Id", "PatientConnect__PC_Program_Code__c = 'RBG'", null);
         arrOfPairs.push("PatientConnect__PC_Engagement_Program__c",rbgId1);
         arrOfPairs.push("PatientConnect__PC_EngagementProgramCode__c", "RBG");
         arrOfPairs.push("PatientConnect__PC_Document_Category__c", "FAX");
        }
        alert(arrOfPairs);
    }

    //ERS170322 TODO check for split and set Parent_Document__c
    var parentID = X(doc, "X_attachedTo");
    var type = ""; //ERS170325
    type = X(doc, "X_ZPAPER__faxType__c"); //ERS170729 #40447 in attachment name
    if (sfParentId) {
        parentID = sfParentId;
    }
    if (parentID !== "") {
        parentID = parentID.substring(1 + parentID.lastIndexOf("/"));
        alert("parentID = " + parentID);
    }

    var sfId = zData.PcDocId;
    if (!zData.PcDocId) {
        sfId = "" + createAndAttach(doc, SFDCtype, "New " + type + programName + " PC Document received on " + formatNow, arrOfPairs);
    }

    if (1===1) { //ERS210529 TODO more ways to connect than just Cases
        if (!zData.caseId && parentID.indexOf("500")===0) { zData.caseId=parentID; }
        if (!zData.caseId && X(doc,"sfID").indexOf("500")===0) { zData.caseId=X(doc,"sfID"); }
    }
    zData.PcDocId = sfId.length > 4 ? sfId : null;
    alert("@@@ ERS170913 caseId = " + zData.caseId + ": Created " + SFDCtype + ":" + sfId + " @@@");
    alert("zData.SFDCconnector = " + zData.SFDCconnector);
    if(zData.PcDocId && !zData.doNotCreateLightningFile){ // Creating a lightning file for incoming PV210827
        zData.clientLightningFile(doc, [zData.PcDocId], zData);
    }
    if (zData.caseId && 1===1 && sfId !== "" && sfId != "NEW") { //ERS170708 added NEW test //ERS170621 make the Document_Log and connect to case
        var arrOfPairs2 = []; //ERS170708 {} now []
        arrOfPairs2.push("PatientConnect__PC_Program__c", zData.caseId); //ERS170830
        arrOfPairs2.push(zData.DocumentLookupField, sfId); //ERS170830
        var sfIdConnector = "" + createSFRecord(doc, zData.SFDCconnector, null, arrOfPairs2);  //ERS210529 null not ""
        zData.sfIdConnector = sfIdConnector; //PV210629 added for DL File
        alert("@@@ Created type " + zData.SFDCconnector + ":" + sfIdConnector + " to " + sfId + " and " + zData.caseId + " @@@");
        if (sfIdConnector !== "" && sfIdConnector !== "null") {
            return sfId + "," + sfIdConnector;
        } else {
            alert("Failed to create " + zData.SFDCconnector);
        }
    } else {
        alert("Failed to create " + SFDCtype);
    }
    return sfId;
};
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
