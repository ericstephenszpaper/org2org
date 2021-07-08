<!--
// Name: DTPC Library
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV210629 added for DL File
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-06-30 05:58:49","evalContinue":"true","active":true,"button":"","name":"DTPC Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotDTPC","operation":"ne"}]},"consequence":{"doit":"LyogQkVHSU4gRFRQQyBMaWJyYXJ5IHpBY3Rpb24gKi8KYWxlcnQoIkBAQCBJbml0aWFsaXppbmcgRFRQQ19MaWJyYXJ5IExJTkUgMSIpOyAvL0VSUzIxMDUyNyB0ZXN0aW5nIHdpdGggQ29yeQoKekRhdGEuUENwYWNrYWdlID0gIlBhdGllbnRDb25uZWN0X18iOwp6RGF0YS5TRkRDdHlwZSA9IHpEYXRhLlBDcGFja2FnZSArICJQQ19Eb2N1bWVudF9fYyI7CnpEYXRhLlNGRENjb25uZWN0b3IgPSB6RGF0YS5QQ3BhY2thZ2UgKyAiUENfRG9jdW1lbnRfTG9nX19jIjsKekRhdGEuelBhcGVySWRGaWVsZCA9ICJ6UGFwZXJfRmF4X1VuaXF1ZV9JZF9fYyI7IC8vQ1JOMTgwNzA2IFRoaXMgaXNuJ3QgaW4gYSBtYW5hZ2VkIHBhY2thZ2UKekRhdGEuRG9jdW1lbnRMb29rdXBGaWVsZCA9IHpEYXRhLlBDcGFja2FnZSArICJQQ19Eb2N1bWVudF9fYyI7CnpEYXRhLlBDX2F0dGFjaG1lbnRJZEZpZWxkID0gekRhdGEuUENwYWNrYWdlICsgIlBDX0F0dGFjaG1lbnRfSWRfX2MiOwovL01TSDE4MDgxNiAjNTE2NDEgekRhdGEuUENfbG9va3VwRmllbGQgPSB6RGF0YS5QQ3BhY2thZ2UgKyAiUENfUHJvZ3JhbV9fYyI7IC8vIkNhc2VfX2MiOwp6RGF0YS5QQ19sb29rdXBGaWVsZCA9ICJzcGNfUHJvZ3JhbV9DYXNlX0lkX19jIjsKekRhdGEuY2FzZUlkID0gIiI7CnpEYXRhLnByb2dyYW1OYW1lID0gIkRUUEMgUHJvZ3JhbSI7Ci8vTVNIMTkwMjEyIHVzZSBkZXBsb3ltZW50IHJlY29yZCBpbmZvCi8vekRhdGEuaW5ib3VuZEZheFJlY29yZFR5cGUgPSAiMDEyM0IwMDAwMDBMVWNZUUFXIjsgLy9NU0gxODEwMDQgdXBkYXRlZCByZWNvcmQgdHlwZSBmb3IgRnVsbAovL3pEYXRhLm91dGJvdW5kRmF4UmVjb3JkVHlwZSA9ICIwMTIzQjAwMDAwMExVY1pRQVciOyAvL01TSDE4MTAwNCB1cGRhdGVkIHJlY29yZCB0eXBlIGZvciBGdWxsCi8vekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZSA9ICIwMTIzQjAwMDAwMExVY1dRQVciOyAvL01TSDE4MTAwNCB1cGRhdGVkIHJlY29yZCB0eXBlIGZvciBGdWxsCi8vekRhdGEub3V0Ym91bmRFbWFpbFJlY29yZFR5cGUgPSAiMDEyM0IwMDAwMDBMVWNYUUFXIjsgLy9NU0gxODEwMDQgdXBkYXRlZCByZWNvcmQgdHlwZSBmb3IgRnVsbAovKgpFbWFpbCAtIEluYm91bmQgPT0gCTAxMjVZMDAwMDAySGxEcVFBSwpFbWFpbCAtIE91dGJvdW5kID09IDAxMjVZMDAwMDAySGxEclFBSwpGYXggLSBJbmJvdW5kID09IAkwMTI1WTAwMDAwMkhsRHNRQUsKRmF4IC0gT3V0Ym91bmQgPT0gCTAxMjVZMDAwMDAySGxEdFFBSwoqLwoKCgp2YXIgY3MgPSAoZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbyArICIiKTsKYWxlcnQoIk1TSDE5MDIxMiBjcyA9ICIgKyBjcyk7CmlmIChjcykgewogICAgaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpID4gLTEpIHsKICAgICAgICBjcyA9IFgoZG9jLCAiekN1c3RvbVNldHRpbmdzIiwgY3MpOwogICAgfQogICAgaWYgKGNzICE9PSAiIikgewogICAgICAgIGV2YWwoY3MpOwogICAgfQp9CgovL0VSUzE5MDQxOCB1c2UgU0ZEQyBzZXR0aW5ncyBpbnN0ZWFkCnZhciBvcmcyb3JnQ1M9ZG9jLmtiRGF0YS5jdXN0b21TZXR0aW5nczsgLy9FUlMxOTA0MTEgIzU3ODgxCgp0cnkgeyAvL0VSUzIxMDUyNyBUT0RPIGxpbmsgdG8gY3VzdG9tIHNldHRpbmcgZG9jcwogICAgYWxlcnQoIk1pc3NpbmcgQ1M9Iitvcmcyb3JnQ1MpCiAgICBpZiAob3JnMm9yZ0NTICYmIDE9PT0xKSB7IC8vRVJTMjEwNTI5IEhBQ0sgVE9ETyBDUyAvL0VSUzIxMDYxOSBkb25lIGJ5IENSTgogICAgICAgIHpEYXRhLmluYm91bmRGYXhSZWNvcmRUeXBlPSIiK1hDdXN0b21TZXR0aW5nKGRvYywiaW5ib3VuZEZheFJlY29yZFR5cGVfX2MiKTsgLy8iMDEyMUQwMDAwMDAyR0tOUUEyIjsKICAgICAgICB6RGF0YS5vdXRib3VuZEZheFJlY29yZFR5cGU9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJvdXRib3VuZEZheFJlY29yZFR5cGVfX2MiKTsgLy8iMDEyMUQwMDAwMDAyR0tPUUEyIjsgCiAgICAgICAgekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsImluYm91bmRFbWFpbFJlY29yZFR5cGVfX2MiKTsgLy8wMTIxRDAwMDAwMDJHS0xRQTIiOyAKICAgICAgICB6RGF0YS5vdXRib3VuZEVtYWlsUmVjb3JkVHlwZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIm91dGJvdW5kRW1haWxSZWNvcmRUeXBlX19jIik7IC8vIjAxMjFEMDAwMDAwMkdLTVFBMiI7IAogICAgICAgIC8vQ0xJRU5UIFNQRUNJRklDIC8vRVJTMjEwNTI3IHpEYXRhLkJSRVhpbmJvdW5kRmF4TGluZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIkJSRVhpbmJvdW5kRmF4TGluZV9fYyIpOyAvLzE2Nzg3MjcwNjk4IjsgCiAgICAgICAgekRhdGEuaW5ib3VuZEZheExpbmU9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX0NoYW5uZWwxX19jIik7IC8vRVJTMjEwNTI3IFRPRE8gcmV3b3JrIGludG8gekNoYW5uZWwgc2V0dXAKICAgICAgICB6RGF0YS5pbmJvdW5kRmF4TGluZT1kb2MuZGVsaXZlcmVkVG87CiAgICAgICAgLy9hbGVydCgiU2V0dXAgZm9yOiAiK3pEYXRhLkJSRVhpbmJvdW5kRmF4TGluZSk7CiAgICAgICAgekRhdGEudGVzdD0iZG9uZSI7CiAgICB9IGVsc2UgewogICAgICAgIGFsZXJ0KCJTRVRUSU5HUyBBUkUgRVJTMTkwNDExIENTIGEgIisgKHR5cGVvZiBvcmcyb3JnQ1MpICsiIGhhcyAiK29yZzJvcmdDUyk7CiAgICB9Cn0gY2F0Y2goZSkgewogICAgYWxlcnQoIkZBSUxFRCBUTyBJTklUSUFMSVpFIik7CiAgICBhbGVydCgiZXJyb3I6ICIrZSk7Cn0KCiAgICBpZiAoMT09PTApIHsgLy9FUlMyMTA2MTggZG9uZSBhYm92ZSAvL0VSUzIxMDUyOSBUT0RPIG1vdmUgaW50byBjdXN0b20gc2V0dGluZ3MgZnJvbSB0aGUgYWNjZWxlcmF0b3IKICAgICAgICB6RGF0YS5pbmJvdW5kRmF4UmVjb3JkVHlwZT0iMDEyNVkwMDAwMDJIbERzUUFLIjsKICAgICAgICB6RGF0YS5vdXRib3VuZEZheFJlY29yZFR5cGU9IjAxMjVZMDAwMDAySGxEdFFBSyI7CiAgICAgICAgekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZT0iMDEyNVkwMDAwMDJIbERxUUFLIjsgLy9FUlMyMTA1MjkgSEFDSyBmb3IgZGVtbwogICAgICAgIHpEYXRhLm91dGJvdW5kRW1haWxSZWNvcmRUeXBlPSIwMTI1WTAwMDAwMkhsRHJRQUsiOwogICAgICAgIHpEYXRhLmluYm91bmRGYXhMaW5lPWRvYy5kZWxpdmVyZWRUbzsKICAgICAgICB6RGF0YS50ZXN0PSJkb25lIjsKICAgIH0KICAgICAgICAKaWYgKCF6RGF0YS50ZXN0IHx8ICF6RGF0YS5pbmJvdW5kRmF4TGluZSB8fCAhekRhdGEuaW5ib3VuZEZheFJlY29yZFR5cGUgfHwgIXpEYXRhLm91dGJvdW5kRmF4UmVjb3JkVHlwZSAKICB8fCAhekRhdGEub3V0Ym91bmRFbWFpbFJlY29yZFR5cGUgfHwgIXpEYXRhLm91dGJvdW5kRW1haWxSZWNvcmRUeXBlKSB7CiAgICAvL2VtYWlsIHNvbWVvbmUgdGhhdCB0aGUgb3JnIGlzIG5vdCBzZXR1cAogICAgdmFyIG1zZz0iQ1VTVE9NIFNFVFRJTkdTIEFSRSBNSVNTSU5HIjsKICAgIHZhciBib2R5PSJ6UGFwZXIgQWN0aW9ucyBGYWlsZWQgdG8gSW5pdGlhbGl6ZVxuXG4iK29yZzJvcmdDUysiIjsKICAgIGFsZXJ0KCJlbWFpbCAiKyBkb2Mua2JEYXRhLnVzZXJFbWFpbCsiXG4iK21zZyk7CiAgICB2YXIgc2U9c2VuZEVtYWlsKGRvYywgInN1cHBvcnRAenBhcGVyLmNvbSIsIGRvYy5rYkRhdGEudXNlckVtYWlsLCBtc2csIGJvZHkpOwogICAgcm9vbC5ldmFsQ29udGludWU9ZmFsc2U7IC8vc3RvcHMgdGhlIGJ1cyEKICAgIHJldHVybjsKfQoKLy9FUlMxNzA2MjEgYXR0YWNoaW5nIHRvIGEgQ2FzZSBzaG91bGQgY3JlYXRlIGEgRG9jdW1lbnQgYW5kIERvY3VtZW50TG9nCnpEYXRhLm5ld0RvY3VtZW50ID0gZnVuY3Rpb24oZG9jLCBhcnJPZlBhaXJzLCBTRkRDdHlwZSwgcHJvZ3JhbU5hbWUsIHNmUGFyZW50SWQsIFNGRENmaWVsZCwgc3RhdHVzKSB7IC8vQ1JOMTcxMDI4IEFkZGVkIHN0YXR1cyAvL0VSUzE3MDYyNiBhZGRlZCBwYXJlbnQgdHlwZQogICAgdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyk7IC8vQ1JOMTcwNjIxIFRoaXMgaXMgZml4ZWQgbm93IHNvIHdlIGRvbid0IG5lZWQgdGhlIGxpbmVzIGJlbG93CgogICAgaWYgKDE9PT0xKSB7CiAgICAgICAgdmFyIGRlbGl2ZXJlZEZyb20gPSBkb2MuZGVsaXZlcmVkRnJvbTsKICAgICAgICAvL01TSDE5MDIxMyBkZWJ1Z2dpbmcKICAgICAgICBhbGVydCgiZGVsaXZlcmVkRnJvbSA9PSAiICsgZGVsaXZlcmVkRnJvbSk7CiAgICAgICAgLy9pZiAoZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIikgPiAtMSB8fCBkZWxpdmVyZWRGcm9tLmxlbmd0aCAhPSAxMSkgewogICAgICAgICAgICAvL2RlbGl2ZXJlZEZyb20gPSAiMTc3MDU1NTEyMTIiOyAvL0VSUzE3MDcyOSAjNDA0NDcKICAgICAgICAvL30KCQkvL0NSTjIxMDYxMSBXZSBuZWVkIHRvIHNldCB0aGUgUmVjb3JkVHlwZUlkIGNvcnJlY3RseS4KCQl2YXIgaXNSZWNvcmRUeXBlSWRTZXQgPSBmYWxzZTsKCQlmb3IodmFyIGkgPSAwOyBpIDwgYXJyT2ZQYWlycy5sZW5ndGg7IGk9aSsyKSB7CgkJICAgIGlmKGFyck9mUGFpcnNbaV0udG9Mb3dlckNhc2UoKSA9PSAicmVjb3JkdHlwZWlkIikgewoJCSAgICAgICAgaXNSZWNvcmRUeXBlSWRTZXQgPSB0cnVlOwoJCSAgICAgICAgYnJlYWs7CgkJICAgIH0KCQl9CgkJaWYoIWlzUmVjb3JkVHlwZUlkU2V0KSB7CiAgICAJCXZhciByZWNvcmRUeXBlSWQgPSB6RGF0YS5pbmJvdW5kRmF4UmVjb3JkVHlwZTsJCQkJLy8gYXNzdW1lIGluY29taW5nIGZheAogICAgICAgICAgICBpZiAoZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIikgPj0gMCkgewogICAgCQkJcmVjb3JkVHlwZUlkID0gekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZTsJCQkvLyBpdCdzIGFjdHVhbGx5IGFuIGVtYWlsCiAgICAgICAgICAgIH0KICAgIAogICAgCQlhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHJlY29yZFR5cGVJZCk7CQkJCS8vQ1JOMjEwNjExIG5vdyBzZXR0aW5nIHRoZSByZWNvcmQgdHlwZQoJCX0KICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuUENwYWNrYWdlICsgIlBDX0Zyb21fRmF4X051bWJlcl9fYyIsIGRlbGl2ZXJlZEZyb20pOyAvL3dhcyAiSW5jb21pbmdfRmF4X051bWJlcl9fYyIKICAgICAgICAvL3VzZSByZWNvcmQgdHlwZSAvL2Fyck9mUGFpcnMucHVzaCgiQ2hhbm5lbF9fYyIsICJGYXggLSBJbmJvdW5kIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLlBDcGFja2FnZSArICJQQ19Ub19GYXhfTnVtYmVyX19jIiwgekRhdGEuaW5ib3VuZEZheExpbmUpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfSW5ib3VuZF9GYXhfRGF0ZV9UaW1lX19jIiwgZm9ybWF0Tm93KTsgLy93YXMgRmF4X1JlY2VpdmVkX0RhdGVfVGltZV9fYwogICAgICAgIGlmIChzdGF0dXMpIHsKICAgICAgICAgICAgYWxlcnQoIkVSUzE4MDkwNC40MCBQQ19Eb2N1bWVudF9TdGF0dXNfX2MgaXMgIisgc3RhdHVzKTsgLy8jNTE2MDQKICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuUENwYWNrYWdlICsgIlBDX0RvY3VtZW50X1N0YXR1c19fYyIsIHN0YXR1cyk7IC8vd2FzIGFsd2F5IE5ldwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIGFsZXJ0KCJFUlMxODA5MDQuNDMgUENfRG9jdW1lbnRfU3RhdHVzX19jIGlzICIrIHN0YXR1cyk7IC8vIzUxNjA0CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfRG9jdW1lbnRfU3RhdHVzX19jIiwgIk5ldyIpOyAvL3dhcyBTdGF0dXNfX2MKICAgICAgICB9CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLnpQYXBlcklkRmllbGQsIGRvYy5kYklEKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuUENwYWNrYWdlICsgIlBDX0RvY3VtZW50X0NhdGVnb3J5X19jIiwgWChkb2MsICJYX2RvY1R5cGUiKSk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLlBDcGFja2FnZSArICJQQ19QYWdlX0NvdW50X19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwogICAgfQoKICAgIC8vRVJTMTcwMzIyIFRPRE8gY2hlY2sgZm9yIHNwbGl0IGFuZCBzZXQgUGFyZW50X0RvY3VtZW50X19jCiAgICB2YXIgcGFyZW50SUQgPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOwogICAgdmFyIHR5cGUgPSAiIjsgLy9FUlMxNzAzMjUKICAgIHR5cGUgPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IC8vRVJTMTcwNzI5ICM0MDQ0NyBpbiBhdHRhY2htZW50IG5hbWUKICAgIGlmIChzZlBhcmVudElkKSB7CiAgICAgICAgcGFyZW50SUQgPSBzZlBhcmVudElkOwogICAgfQogICAgaWYgKHBhcmVudElEICE9PSAiIikgewogICAgICAgIHBhcmVudElEID0gcGFyZW50SUQuc3Vic3RyaW5nKDEgKyBwYXJlbnRJRC5sYXN0SW5kZXhPZigiLyIpKTsKICAgICAgICBhbGVydCgicGFyZW50SUQgPSAiICsgcGFyZW50SUQpOwogICAgfQoKICAgIHZhciBzZklkID0gekRhdGEuUGNEb2NJZDsKICAgIGlmICghekRhdGEuUGNEb2NJZCkgewogICAgICAgIHNmSWQgPSAiIiArIGNyZWF0ZUFuZEF0dGFjaChkb2MsIFNGREN0eXBlLCAiTmV3ICIgKyB0eXBlICsgcHJvZ3JhbU5hbWUgKyAiIFBDIERvY3VtZW50IHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOwogICAgfQoKICAgIGlmICgxPT09MSkgeyAvL0VSUzIxMDUyOSBUT0RPIG1vcmUgd2F5cyB0byBjb25uZWN0IHRoYW4ganVzdCBDYXNlcwogICAgICAgIGlmICghekRhdGEuY2FzZUlkICYmIHBhcmVudElELmluZGV4T2YoIjUwMCIpPT09MCkgeyB6RGF0YS5jYXNlSWQ9cGFyZW50SUQ7IH0gCiAgICAgICAgaWYgKCF6RGF0YS5jYXNlSWQgJiYgWChkb2MsInNmSUQiKS5pbmRleE9mKCI1MDAiKT09PTApIHsgekRhdGEuY2FzZUlkPVgoZG9jLCJzZklEIik7IH0gCiAgICB9CiAgICB6RGF0YS5QY0RvY0lkID0gc2ZJZC5sZW5ndGggPiA0ID8gc2ZJZCA6IG51bGw7CiAgICBhbGVydCgiQEBAIEVSUzE3MDkxMyBjYXNlSWQgPSAiICsgekRhdGEuY2FzZUlkICsgIjogQ3JlYXRlZCAiICsgU0ZEQ3R5cGUgKyAiOiIgKyBzZklkICsgIiBAQEAiKTsKICAgIGFsZXJ0KCJ6RGF0YS5TRkRDY29ubmVjdG9yID0gIiArIHpEYXRhLlNGRENjb25uZWN0b3IpOwoKICAgIGlmICh6RGF0YS5jYXNlSWQgJiYgMT09PTEgJiYgc2ZJZCAhPT0gIiIgJiYgc2ZJZCAhPSAiTkVXIikgeyAvL0VSUzE3MDcwOCBhZGRlZCBORVcgdGVzdCAvL0VSUzE3MDYyMSBtYWtlIHRoZSBEb2N1bWVudF9Mb2cgYW5kIGNvbm5lY3QgdG8gY2FzZQogICAgICAgIHZhciBhcnJPZlBhaXJzMiA9IFtdOyAvL0VSUzE3MDcwOCB7fSBub3cgW10KICAgICAgICBhcnJPZlBhaXJzMi5wdXNoKCJQYXRpZW50Q29ubmVjdF9fUENfUHJvZ3JhbV9fYyIsIHpEYXRhLmNhc2VJZCk7IC8vRVJTMTcwODMwCiAgICAgICAgYXJyT2ZQYWlyczIucHVzaCh6RGF0YS5Eb2N1bWVudExvb2t1cEZpZWxkLCBzZklkKTsgLy9FUlMxNzA4MzAKICAgICAgICB2YXIgc2ZJZENvbm5lY3RvciA9ICIiICsgY3JlYXRlU0ZSZWNvcmQoZG9jLCB6RGF0YS5TRkRDY29ubmVjdG9yLCBudWxsLCBhcnJPZlBhaXJzMik7ICAvL0VSUzIxMDUyOSBudWxsIG5vdCAiIgogICAgICAgIHpEYXRhLnNmSWRDb25uZWN0b3IgPSBzZklkQ29ubmVjdG9yOyAvL1BWMjEwNjI5IGFkZGVkIGZvciBETCBGaWxlCiAgICAgICAgYWxlcnQoIkBAQCBDcmVhdGVkIHR5cGUgIiArIHpEYXRhLlNGRENjb25uZWN0b3IgKyAiOiIgKyBzZklkQ29ubmVjdG9yICsgIiB0byAiICsgc2ZJZCArICIgYW5kICIgKyB6RGF0YS5jYXNlSWQgKyAiIEBAQCIpOwogICAgICAgIGlmIChzZklkQ29ubmVjdG9yICE9PSAiIiAmJiBzZklkQ29ubmVjdG9yICE9PSAibnVsbCIpIHsKICAgICAgICAgICAgcmV0dXJuIHNmSWQgKyAiLCIgKyBzZklkQ29ubmVjdG9yOwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIGFsZXJ0KCJGYWlsZWQgdG8gY3JlYXRlICIgKyB6RGF0YS5TRkRDY29ubmVjdG9yKTsKICAgICAgICB9CiAgICB9IGVsc2UgewogICAgICAgIGFsZXJ0KCJGYWlsZWQgdG8gY3JlYXRlICIgKyBTRkRDdHlwZSk7CiAgICB9CiAgICByZXR1cm4gc2ZJZDsKfTsK"},"ordinal":1}

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
Email - Inbound == 	0125Y000002HlDqQAK
Email - Outbound == 0125Y000002HlDrQAK
Fax - Inbound == 	0125Y000002HlDsQAK
Fax - Outbound == 	0125Y000002HlDtQAK
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
    alert("Missing CS="+org2orgCS)
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
    		var recordTypeId = zData.inboundFaxRecordType;				// assume incoming fax
            if (deliveredFrom.indexOf("@") >= 0) {
    			recordTypeId = zData.inboundEmailRecordType;			// it's actually an email
            }
    
    		arrOfPairs.push("RecordTypeId", recordTypeId);				//CRN210611 now setting the record type
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
