<!--
// Name: DTPC Library
// Committer: eric.stephens@zpaper.com
// Update: ERS190418 use SFDC settings instead
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-18 21:05:54","evalContinue":"true","active":true,"button":"","name":"DTPC Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotDTPC","operation":"ne"}]},"consequence":{"doit":"LyogQkVHSU4gRFRQQyBMaWJyYXJ5IHpBY3Rpb24gKi8KYWxlcnQoIkBAQCBJbml0aWFsaXppbmcgRFRQQ19MaWJyYXJ5IExJTkUgMSIpOwoKekRhdGEuUENwYWNrYWdlID0gIlBhdGllbnRDb25uZWN0X18iOwp6RGF0YS5TRkRDdHlwZSA9IHpEYXRhLlBDcGFja2FnZSArICJQQ19Eb2N1bWVudF9fYyI7CnpEYXRhLlNGRENjb25uZWN0b3IgPSB6RGF0YS5QQ3BhY2thZ2UgKyAiUENfRG9jdW1lbnRfTG9nX19jIjsKekRhdGEuelBhcGVySWRGaWVsZCA9ICJ6UGFwZXJfRmF4X1VuaXF1ZV9JZF9fYyI7IC8vQ1JOMTgwNzA2IFRoaXMgaXNuJ3QgaW4gYSBtYW5hZ2VkIHBhY2thZ2UKekRhdGEuRG9jdW1lbnRMb29rdXBGaWVsZCA9IHpEYXRhLlBDcGFja2FnZSArICJQQ19Eb2N1bWVudF9fYyI7CnpEYXRhLlBDX2F0dGFjaG1lbnRJZEZpZWxkID0gekRhdGEuUENwYWNrYWdlICsgIlBDX0F0dGFjaG1lbnRfSWRfX2MiOwovL01TSDE4MDgxNiAjNTE2NDEgekRhdGEuUENfbG9va3VwRmllbGQgPSB6RGF0YS5QQ3BhY2thZ2UgKyAiUENfUHJvZ3JhbV9fYyI7IC8vIkNhc2VfX2MiOwp6RGF0YS5QQ19sb29rdXBGaWVsZCA9ICJzcGNfUHJvZ3JhbV9DYXNlX0lkX19jIjsKekRhdGEuY2FzZUlkID0gIiI7CnpEYXRhLnByb2dyYW1OYW1lID0gIkJyZXhhbm9sb25lIEVuZ2FnZW1lbnQgUHJvZ3JhbSI7Ci8vTVNIMTkwMjEyIHVzZSBkZXBsb3ltZW50IHJlY29yZCBpbmZvCi8vekRhdGEuaW5ib3VuZEZheFJlY29yZFR5cGUgPSAiMDEyM0IwMDAwMDBMVWNZUUFXIjsgLy9NU0gxODEwMDQgdXBkYXRlZCByZWNvcmQgdHlwZSBmb3IgRnVsbAovL3pEYXRhLm91dGJvdW5kRmF4UmVjb3JkVHlwZSA9ICIwMTIzQjAwMDAwMExVY1pRQVciOyAvL01TSDE4MTAwNCB1cGRhdGVkIHJlY29yZCB0eXBlIGZvciBGdWxsCi8vekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZSA9ICIwMTIzQjAwMDAwMExVY1dRQVciOyAvL01TSDE4MTAwNCB1cGRhdGVkIHJlY29yZCB0eXBlIGZvciBGdWxsCi8vekRhdGEub3V0Ym91bmRFbWFpbFJlY29yZFR5cGUgPSAiMDEyM0IwMDAwMDBMVWNYUUFXIjsgLy9NU0gxODEwMDQgdXBkYXRlZCByZWNvcmQgdHlwZSBmb3IgRnVsbAoKCgp2YXIgY3MgPSAoZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbyArICIiKTsKYWxlcnQoIk1TSDE5MDIxMiBjcyA9ICIgKyBjcyk7CmlmIChjcykgewogICAgaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpID4gLTEpIHsKICAgICAgICBjcyA9IFgoZG9jLCAiekN1c3RvbVNldHRpbmdzIiwgY3MpOwogICAgfQogICAgaWYgKGNzICE9PSAiIikgewogICAgICAgIGV2YWwoY3MpOwogICAgfQp9CgovL0VSUzE5MDQxOCB1c2UgU0ZEQyBzZXR0aW5ncyBpbnN0ZWFkCnZhciBvcmcyb3JnQ1M9ZG9jLmtiRGF0YS5jdXN0b21TZXR0aW5nczsgLy9FUlMxOTA0MTEgIzU3ODgxCgp0cnkgewogICAgaWYgKG9yZzJvcmdDUykgewogICAgICAgIHpEYXRhLmluYm91bmRGYXhSZWNvcmRUeXBlPSIiK1hDdXN0b21TZXR0aW5nKGRvYywiaW5ib3VuZEZheFJlY29yZFR5cGVfX2MiKTsgLy8iMDEyMUQwMDAwMDAyR0tOUUEyIjsKICAgICAgICB6RGF0YS5vdXRib3VuZEZheFJlY29yZFR5cGU9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJvdXRib3VuZEZheFJlY29yZFR5cGVfX2MiKTsgLy8iMDEyMUQwMDAwMDAyR0tPUUEyIjsgCiAgICAgICAgekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsImluYm91bmRFbWFpbFJlY29yZFR5cGVfX2MiKTsgLy8wMTIxRDAwMDAwMDJHS0xRQTIiOyAKICAgICAgICB6RGF0YS5vdXRib3VuZEVtYWlsUmVjb3JkVHlwZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIm91dGJvdW5kRW1haWxSZWNvcmRUeXBlX19jIik7IC8vIjAxMjFEMDAwMDAwMkdLTVFBMiI7IAogICAgICAgIHpEYXRhLkJSRVhpbmJvdW5kRmF4TGluZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIkJSRVhpbmJvdW5kRmF4TGluZV9fYyIpOyAvLzE2Nzg3MjcwNjk4IjsgCiAgICAgICAgYWxlcnQoIlNldHVwIGZvcjogIit6RGF0YS5CUkVYaW5ib3VuZEZheExpbmUpOwogICAgICAgIHpEYXRhLnRlc3Q9ImRvbmUiOwogICAgfSBlbHNlIHsKICAgICAgICBhbGVydCgiU0VUVElOR1MgQVJFIEVSUzE5MDQxMSBDUyBhICIrICh0eXBlb2Ygb3JnMm9yZ0NTKSArIiBoYXMgIitvcmcyb3JnQ1MpOwogICAgfQp9IGNhdGNoKGUpIHsKICAgIGFsZXJ0KCJGQUlMRUQgVE8gSU5JVElBTElaRSIpOwogICAgYWxlcnQoImVycm9yOiAiK2UpOwp9CgppZiAoIXpEYXRhLnRlc3QgfHwgIXpEYXRhLkJSRVhpbmJvdW5kRmF4TGluZSB8fCAhekRhdGEuaW5ib3VuZEZheFJlY29yZFR5cGUgfHwgIXpEYXRhLm91dGJvdW5kRmF4UmVjb3JkVHlwZSAKICB8fCAhekRhdGEub3V0Ym91bmRFbWFpbFJlY29yZFR5cGUgfHwgIXpEYXRhLm91dGJvdW5kRW1haWxSZWNvcmRUeXBlKSB7CiAgICAvL2VtYWlsIHNvbWVvbmUgdGhhdCB0aGUgb3JnIGlzIG5vdCBzZXR1cAogICAgdmFyIG1zZz0iQ1VTVE9NIFNFVFRJTkdTIEFSRSBNSVNTSU5HIjsKICAgIHZhciBib2R5PSJ6UGFwZXIgQWN0aW9ucyBGYWlsZWQgdG8gSW5pdGlhbGl6ZVxuXG4iK29yZzJvcmdDUysiIjsKICAgIGFsZXJ0KCJlbWFpbCAiKyBkb2Mua2JEYXRhLnVzZXJFbWFpbCsiXG4iK21zZyk7CiAgICB2YXIgc2U9c2VuZEVtYWlsKGRvYywgInN1cHBvcnRAenBhcGVyLmNvbSIsIGRvYy5rYkRhdGEudXNlckVtYWlsLCBtc2csIGJvZHkpOwogICAgcm9vbC5ldmFsQ29udGludWU9ZmFsc2U7IC8vc3RvcHMgdGhlIGJ1cyEKICAgIHJldHVybjsKfQoKLy9FUlMxNzA2MjEgYXR0YWNoaW5nIHRvIGEgQ2FzZSBzaG91bGQgY3JlYXRlIGEgRG9jdW1lbnQgYW5kIERvY3VtZW50TG9nCnpEYXRhLm5ld0RvY3VtZW50ID0gZnVuY3Rpb24oZG9jLCBhcnJPZlBhaXJzLCBTRkRDdHlwZSwgcHJvZ3JhbU5hbWUsIHNmUGFyZW50SWQsIFNGRENmaWVsZCwgc3RhdHVzKSB7IC8vQ1JOMTcxMDI4IEFkZGVkIHN0YXR1cyAvL0VSUzE3MDYyNiBhZGRlZCBwYXJlbnQgdHlwZQogICAgLy9NU0gxODA4MjAgaWYgKCFTRkRDZmllbGQpIHsKICAgIC8vU0ZEQ2ZpZWxkID0gekRhdGEuUENfbG9va3VwRmllbGQ7CiAgICAvL30KCiAgICB2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsgLy9DUk4xNzA2MjEgVGhpcyBpcyBmaXhlZCBub3cgc28gd2UgZG9uJ3QgbmVlZCB0aGUgbGluZXMgYmVsb3cKCgoKCiAgICBpZiAoMT09PTEpIHsKICAgICAgICAvL0ZheF9DYXRlZ29yeV9fYyBpcyAiUGF0aWVudCBBdXRob3JpemF0aW9uIiwiUGF0aWVudCBDb25zZW50IiwiUGF0aWVudCBJbnN1cmFuY2UgSW5mb3JtYXRpb24iCiAgICAgICAgLy9DaGFubmVsX19jIGlzICJGYXgiLCJGYXggLSBJbmJvdW5kIiwiRmF4IC0gT3V0Ym91bmQiCiAgICAgICAgLy9FUlMxNzA5MDYgU0YgVXNlciBub3QgYWxsb3dlZAoKCiAgICAgICAgLy9NU0gxODA4MTcgIzUxNjQxIHB1dCBpbiBhcnJPZlBhaXJzIGJlZm9yZSBjYWxsaW5nIHRoaXMgZnVuY3Rpb24gYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCB6RGF0YS5pbmJvdW5kRmF4UmVjb3JkVHlwZSk7CiAgICAgICAgLy9NU0gxOTAyMTMgY2hhbmdlICdmcm9tJyB0byAnZGVsaXZlcmVkRnJvbScgYmVjYXVzZSAnZnJvbScgaXMgYSBrZXl3b3JkCgogICAgICAgIHZhciBkZWxpdmVyZWRGcm9tID0gZG9jLmRlbGl2ZXJlZEZyb207CiAgICAgICAgLy9NU0gxOTAyMTMgZGVidWdnaW5nCiAgICAgICAgYWxlcnQoImRlbGl2ZXJlZEZyb20gPT0gIiArIGRlbGl2ZXJlZEZyb20pOwogICAgICAgIC8vaWYgKGRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpID4gLTEgfHwgZGVsaXZlcmVkRnJvbS5sZW5ndGggIT0gMTEpIHsKICAgICAgICAgICAgLy9kZWxpdmVyZWRGcm9tID0gIjE3NzA1NTUxMjEyIjsgLy9FUlMxNzA3MjkgIzQwNDQ3CiAgICAgICAgLy99CgogICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfRnJvbV9GYXhfTnVtYmVyX19jIiwgZGVsaXZlcmVkRnJvbSk7IC8vd2FzICJJbmNvbWluZ19GYXhfTnVtYmVyX19jIgogICAgICAgIC8vdXNlIHJlY29yZCB0eXBlIC8vYXJyT2ZQYWlycy5wdXNoKCJDaGFubmVsX19jIiwgIkZheCAtIEluYm91bmQiKTsKCgogICAgICAgIC8vUFYxOTA0MTEgdG8gdXBkYXRlIHRoZSBmYXggbnVtYmVyIG9uIGluY29taW5nIGRvY3VtZW50cwogICAgICAgIC8vdmFyIHRvID0gZG9jLmRlbGl2ZXJlZFRvOwogICAgICAgICAgLy8gIHRvID0gIjE2Nzg3MjcwNjk4IjsKICAgICAgICAvL2Fyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfVG9fRmF4X051bWJlcl9fYyIsIHRvKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuUENwYWNrYWdlICsgIlBDX1RvX0ZheF9OdW1iZXJfX2MiLCB6RGF0YS5CUkVYaW5ib3VuZEZheExpbmUpOwoKCgogICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfSW5ib3VuZF9GYXhfRGF0ZV9UaW1lX19jIiwgZm9ybWF0Tm93KTsgLy93YXMgRmF4X1JlY2VpdmVkX0RhdGVfVGltZV9fYwogICAgICAgIGlmIChzdGF0dXMpIHsKICAgICAgICAgICAgYWxlcnQoIkVSUzE4MDkwNC40MCBQQ19Eb2N1bWVudF9TdGF0dXNfX2MgaXMgIisgc3RhdHVzKTsgLy8jNTE2MDQKICAgICAgICAgICAgLy9NU0gxODA5MDUgYSBsaXR0bGUgdGVzdCBhcnJPZlBhaXJzLnB1c2goekRhdGEuUENwYWNrYWdlICsgIlBDX0RvY3VtZW50X1N0YXR1c19fYyIsIHN0YXR1cyk7IC8vd2FzIGFsd2F5IE5ldwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIGFsZXJ0KCJFUlMxODA5MDQuNDMgUENfRG9jdW1lbnRfU3RhdHVzX19jIGlzICIrIHN0YXR1cyk7IC8vIzUxNjA0CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfRG9jdW1lbnRfU3RhdHVzX19jIiwgIk5ldyIpOyAvL3dhcyBTdGF0dXNfX2MKICAgICAgICB9CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLnpQYXBlcklkRmllbGQsIGRvYy5kYklEKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuUENwYWNrYWdlICsgIlBDX0RvY3VtZW50X0NhdGVnb3J5X19jIiwgWChkb2MsICJYX2RvY1R5cGUiKSk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLlBDcGFja2FnZSArICJQQ19QYWdlX0NvdW50X19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwogICAgfQoKICAgIC8vRVJTMTcwMzIyIFRPRE8gY2hlY2sgZm9yIHNwbGl0IGFuZCBzZXQgUGFyZW50X0RvY3VtZW50X19jCiAgICB2YXIgcGFyZW50SUQgPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOwogICAgdmFyIHR5cGUgPSAiIjsgLy9FUlMxNzAzMjUKICAgIHR5cGUgPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IC8vRVJTMTcwNzI5ICM0MDQ0NyBpbiBhdHRhY2htZW50IG5hbWUKICAgIGlmIChzZlBhcmVudElkKSB7CiAgICAgICAgcGFyZW50SUQgPSBzZlBhcmVudElkOwogICAgfQogICAgaWYgKHBhcmVudElEICE9PSAiIikgewogICAgICAgIHBhcmVudElEID0gcGFyZW50SUQuc3Vic3RyaW5nKDEgKyBwYXJlbnRJRC5sYXN0SW5kZXhPZigiLyIpKTsKICAgICAgICBhbGVydCgicGFyZW50SUQgPSAiICsgcGFyZW50SUQpOwogICAgfQoKICAgIHZhciBzZklkID0gekRhdGEuUGNEb2NJZDsKICAgIGlmICghekRhdGEuUGNEb2NJZCkgewogICAgICAgIHNmSWQgPSAiIiArIGNyZWF0ZUFuZEF0dGFjaChkb2MsIFNGREN0eXBlLCAiTmV3ICIgKyB0eXBlICsgcHJvZ3JhbU5hbWUgKyAiIFBDIERvY3VtZW50IHJlY2VpdmVkIG9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpOwogICAgfQoKICAgIHpEYXRhLlBjRG9jSWQgPSBzZklkLmxlbmd0aCA+IDQgPyBzZklkIDogbnVsbDsKICAgIC8vTVNIMTgwODE2ICM1MTY0MSBzZXQgdGhpcyBpbiBjYWxsaW5nIHpBY3Rpb24KICAgIC8qCiAgICBpZiAoekRhdGEuY2FzZUlkLmxlbmd0aCA9PT0gMCB8fCB6RGF0YS5jYXNlSWQuaW5kZXhPZigiNTAwIikgIT09IDApIHsKICAgICAgICBpZiAocGFyZW50SUQuaW5kZXhPZigiNTAwIikgPT09IDApIHsKICAgICAgICAgICAgekRhdGEuY2FzZUlkID0gcGFyZW50SUQ7IC8vRVJTMTcwNzIyCiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgLy9NU0gxODA4MTYgIzUxNjQxIHpEYXRhLmNhc2VJZCA9ICIiOyAvL0VSUzE3MDkwNgogICAgICAgICAgICB2YXIgcGNEb2NGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCB6RGF0YS5TRkRDdHlwZSwgekRhdGEuUENfbG9va3VwRmllbGQsIG51bGwsIHBhcmVudElEKTsKICAgICAgICAgICAgekRhdGEuY2FzZUlkID0gWChkb2MsIHpEYXRhLlBDX2xvb2t1cEZpZWxkLCBwY0RvY0ZsZHMpOwogICAgICAgIH0KICAgIH0KICAgICovCiAgICBhbGVydCgiQEBAIEVSUzE3MDkxMyBjYXNlSWQgPSAiICsgekRhdGEuY2FzZUlkICsgIjogQ3JlYXRlZCAiICsgU0ZEQ3R5cGUgKyAiOiIgKyBzZklkICsgIiBAQEAiKTsKICAgIGFsZXJ0KCJ6RGF0YS5TRkRDY29ubmVjdG9yID0gIiArIHpEYXRhLlNGRENjb25uZWN0b3IpOwoKICAgIGlmICh6RGF0YS5jYXNlSWQgJiYgMT09PTEgJiYgc2ZJZCAhPT0gIiIgJiYgc2ZJZCAhPSAiTkVXIikgeyAvL0VSUzE3MDcwOCBhZGRlZCBORVcgdGVzdCAvL0VSUzE3MDYyMSBtYWtlIHRoZSBEb2N1bWVudF9Mb2cgYW5kIGNvbm5lY3QgdG8gY2FzZQogICAgICAgIHZhciBhcnJPZlBhaXJzMiA9IFtdOyAvL0VSUzE3MDcwOCB7fSBub3cgW10KICAgICAgICAvL2lmIChwYXJlbnRJRC5pbmRleE9mKCI1MDAiKT09PTApIGFyck9mUGFpcnMyLnB1c2goIkNhc2VfX2MiLCBwYXJlbnRJRCk7IC8vRVJTMTcwNzA4IHNmUGFyZW50SWQgbm93IHBhcmVudElECiAgICAgICAgLy9pZiAoKFNGRENmaWVsZD09PSJQcm9ncmFtX0Vucm9sbG1lbnRfX2MiKSkgYXJyT2ZQYWlyczIucHVzaCgiUHJvZ3JhbV9FbnJvbGxtZW50X19jIiwgcGFyZW50SUQpOyAvL0VSUzE3MDcwMjIKICAgICAgICAvL2Fyck9mUGFpcnMyLnB1c2goekRhdGEuUENfbG9va3VwRmllbGQsIHpEYXRhLmNhc2VJZCk7IC8vRVJTMTcwODMwCiAgICAgICAgYXJyT2ZQYWlyczIucHVzaCgiUGF0aWVudENvbm5lY3RfX1BDX1Byb2dyYW1fX2MiLCB6RGF0YS5jYXNlSWQpOyAvL0VSUzE3MDgzMAogICAgICAgIGFyck9mUGFpcnMyLnB1c2goekRhdGEuRG9jdW1lbnRMb29rdXBGaWVsZCwgc2ZJZCk7IC8vRVJTMTcwODMwCiAgICAgICAgdmFyIHNmSWRDb25uZWN0b3IgPSAiIiArIGNyZWF0ZVNGUmVjb3JkKGRvYywgekRhdGEuU0ZEQ2Nvbm5lY3RvciwgIiIsIGFyck9mUGFpcnMyKTsgIC8vRVJTMTcwNzA4IGFkZGVkIHpEYXRhIHRvIFNGRENjb25uZWN0b3IKICAgICAgICBhbGVydCgiQEBAIENyZWF0ZWQgdHlwZSAiICsgekRhdGEuU0ZEQ2Nvbm5lY3RvciArICI6IiArIHNmSWRDb25uZWN0b3IgKyAiIHRvICIgKyBzZklkICsgIiBhbmQgIiArIHpEYXRhLmNhc2VJZCArICIgQEBAIik7CiAgICAgICAgaWYgKHNmSWRDb25uZWN0b3IgIT09ICIiICYmIHNmSWRDb25uZWN0b3IgIT09ICJudWxsIikgewogICAgICAgICAgICByZXR1cm4gc2ZJZCArICIsIiArIHNmSWRDb25uZWN0b3I7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgYWxlcnQoIkZhaWxlZCB0byBjcmVhdGUgIiArIHpEYXRhLlNGRENjb25uZWN0b3IpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIkZhaWxlZCB0byBjcmVhdGUgIiArIFNGREN0eXBlKTsKICAgIH0KICAgIHJldHVybiBzZklkOwp9Ow=="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN DTPC Library zAction */
alert("@@@ Initializing DTPC_Library LINE 1");

zData.PCpackage = "PatientConnect__";
zData.SFDCtype = zData.PCpackage + "PC_Document__c";
zData.SFDCconnector = zData.PCpackage + "PC_Document_Log__c";
zData.zPaperIdField = "zPaper_Fax_Unique_Id__c"; //CRN180706 This isn't in a managed package
zData.DocumentLookupField = zData.PCpackage + "PC_Document__c";
zData.PC_attachmentIdField = zData.PCpackage + "PC_Attachment_Id__c";
//MSH180816 #51641 zData.PC_lookupField = zData.PCpackage + "PC_Program__c"; //"Case__c";
zData.PC_lookupField = "spc_Program_Case_Id__c";
zData.caseId = "";
zData.programName = "Brexanolone Engagement Program";
//MSH190212 use deployment record info
//zData.inboundFaxRecordType = "0123B000000LUcYQAW"; //MSH181004 updated record type for Full
//zData.outboundFaxRecordType = "0123B000000LUcZQAW"; //MSH181004 updated record type for Full
//zData.inboundEmailRecordType = "0123B000000LUcWQAW"; //MSH181004 updated record type for Full
//zData.outboundEmailRecordType = "0123B000000LUcXQAW"; //MSH181004 updated record type for Full



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

try {
    if (org2orgCS) {
        zData.inboundFaxRecordType=""+XCustomSetting(doc,"inboundFaxRecordType__c"); //"0121D0000002GKNQA2";
        zData.outboundFaxRecordType=""+XCustomSetting(doc,"outboundFaxRecordType__c"); //"0121D0000002GKOQA2"; 
        zData.inboundEmailRecordType=""+XCustomSetting(doc,"inboundEmailRecordType__c"); //0121D0000002GKLQA2"; 
        zData.outboundEmailRecordType=""+XCustomSetting(doc,"outboundEmailRecordType__c"); //"0121D0000002GKMQA2"; 
        zData.BREXinboundFaxLine=""+XCustomSetting(doc,"BREXinboundFaxLine__c"); //16787270698"; 
        alert("Setup for: "+zData.BREXinboundFaxLine);
        zData.test="done";
    } else {
        alert("SETTINGS ARE ERS190411 CS a "+ (typeof org2orgCS) +" has "+org2orgCS);
    }
} catch(e) {
    alert("FAILED TO INITIALIZE");
    alert("error: "+e);
}

if (!zData.test || !zData.BREXinboundFaxLine || !zData.inboundFaxRecordType || !zData.outboundFaxRecordType 
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
    //MSH180820 if (!SFDCfield) {
    //SFDCfield = zData.PC_lookupField;
    //}

    var formatNow = getCurDateAndTime(doc); //CRN170621 This is fixed now so we don't need the lines below




    if (1===1) {
        //Fax_Category__c is "Patient Authorization","Patient Consent","Patient Insurance Information"
        //Channel__c is "Fax","Fax - Inbound","Fax - Outbound"
        //ERS170906 SF User not allowed


        //MSH180817 #51641 put in arrOfPairs before calling this function arrOfPairs.push("RecordTypeId", zData.inboundFaxRecordType);
        //MSH190213 change 'from' to 'deliveredFrom' because 'from' is a keyword

        var deliveredFrom = doc.deliveredFrom;
        //MSH190213 debugging
        alert("deliveredFrom == " + deliveredFrom);
        //if (deliveredFrom.indexOf(".") > -1 || deliveredFrom.length != 11) {
            //deliveredFrom = "17705551212"; //ERS170729 #40447
        //}

        arrOfPairs.push(zData.PCpackage + "PC_From_Fax_Number__c", deliveredFrom); //was "Incoming_Fax_Number__c"
        //use record type //arrOfPairs.push("Channel__c", "Fax - Inbound");


        //PV190411 to update the fax number on incoming documents
        //var to = doc.deliveredTo;
          //  to = "16787270698";
        //arrOfPairs.push(zData.PCpackage + "PC_To_Fax_Number__c", to);
        arrOfPairs.push(zData.PCpackage + "PC_To_Fax_Number__c", zData.BREXinboundFaxLine);



        arrOfPairs.push(zData.PCpackage + "PC_Inbound_Fax_Date_Time__c", formatNow); //was Fax_Received_Date_Time__c
        if (status) {
            alert("ERS180904.40 PC_Document_Status__c is "+ status); //#51604
            //MSH180905 a little test arrOfPairs.push(zData.PCpackage + "PC_Document_Status__c", status); //was alway New
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

    zData.PcDocId = sfId.length > 4 ? sfId : null;
    //MSH180816 #51641 set this in calling zAction
    /*
    if (zData.caseId.length === 0 || zData.caseId.indexOf("500") !== 0) {
        if (parentID.indexOf("500") === 0) {
            zData.caseId = parentID; //ERS170722
        } else {
            //MSH180816 #51641 zData.caseId = ""; //ERS170906
            var pcDocFlds = getSFFields(doc, zData.SFDCtype, zData.PC_lookupField, null, parentID);
            zData.caseId = X(doc, zData.PC_lookupField, pcDocFlds);
        }
    }
    */
    alert("@@@ ERS170913 caseId = " + zData.caseId + ": Created " + SFDCtype + ":" + sfId + " @@@");
    alert("zData.SFDCconnector = " + zData.SFDCconnector);

    if (zData.caseId && 1===1 && sfId !== "" && sfId != "NEW") { //ERS170708 added NEW test //ERS170621 make the Document_Log and connect to case
        var arrOfPairs2 = []; //ERS170708 {} now []
        //if (parentID.indexOf("500")===0) arrOfPairs2.push("Case__c", parentID); //ERS170708 sfParentId now parentID
        //if ((SFDCfield==="Program_Enrollment__c")) arrOfPairs2.push("Program_Enrollment__c", parentID); //ERS1707022
        //arrOfPairs2.push(zData.PC_lookupField, zData.caseId); //ERS170830
        arrOfPairs2.push("PatientConnect__PC_Program__c", zData.caseId); //ERS170830
        arrOfPairs2.push(zData.DocumentLookupField, sfId); //ERS170830
        var sfIdConnector = "" + createSFRecord(doc, zData.SFDCconnector, "", arrOfPairs2);  //ERS170708 added zData to SFDCconnector
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
