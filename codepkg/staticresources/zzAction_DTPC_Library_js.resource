<!--
// Name: DTPC Library
// Committer: eric.stephens@zpaper.com
// Update: ERS190418 use SFDC settings instead
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-18 19:19:28","evalContinue":"true","active":true,"button":"","name":"DTPC Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotDTPC","operation":"ne"}]},"consequence":{"doit":"LyogQkVHSU4gRFRQQyBMaWJyYXJ5IHpBY3Rpb24gKi8KYWxlcnQoIkBAQCBJbml0aWFsaXppbmcgRFRQQ19MaWJyYXJ5IExJTkUgMSIpOwoKekRhdGEuUENwYWNrYWdlID0gIlBhdGllbnRDb25uZWN0X18iOwp6RGF0YS5TRkRDdHlwZSA9IHpEYXRhLlBDcGFja2FnZSArICJQQ19Eb2N1bWVudF9fYyI7CnpEYXRhLlNGRENjb25uZWN0b3IgPSB6RGF0YS5QQ3BhY2thZ2UgKyAiUENfRG9jdW1lbnRfTG9nX19jIjsKekRhdGEuelBhcGVySWRGaWVsZCA9ICJ6UGFwZXJfRmF4X1VuaXF1ZV9JZF9fYyI7IC8vQ1JOMTgwNzA2IFRoaXMgaXNuJ3QgaW4gYSBtYW5hZ2VkIHBhY2thZ2UKekRhdGEuRG9jdW1lbnRMb29rdXBGaWVsZCA9IHpEYXRhLlBDcGFja2FnZSArICJQQ19Eb2N1bWVudF9fYyI7CnpEYXRhLlBDX2F0dGFjaG1lbnRJZEZpZWxkID0gekRhdGEuUENwYWNrYWdlICsgIlBDX0F0dGFjaG1lbnRfSWRfX2MiOwovL01TSDE4MDgxNiAjNTE2NDEgekRhdGEuUENfbG9va3VwRmllbGQgPSB6RGF0YS5QQ3BhY2thZ2UgKyAiUENfUHJvZ3JhbV9fYyI7IC8vIkNhc2VfX2MiOwp6RGF0YS5QQ19sb29rdXBGaWVsZCA9ICJzcGNfUHJvZ3JhbV9DYXNlX0lkX19jIjsKekRhdGEuY2FzZUlkID0gIiI7CnpEYXRhLnByb2dyYW1OYW1lID0gIkJyZXhhbm9sb25lIEVuZ2FnZW1lbnQgUHJvZ3JhbSI7Ci8vTVNIMTkwMjEyIHVzZSBkZXBsb3ltZW50IHJlY29yZCBpbmZvCi8vekRhdGEuaW5ib3VuZEZheFJlY29yZFR5cGUgPSAiMDEyM0IwMDAwMDBMVWNZUUFXIjsgLy9NU0gxODEwMDQgdXBkYXRlZCByZWNvcmQgdHlwZSBmb3IgRnVsbAovL3pEYXRhLm91dGJvdW5kRmF4UmVjb3JkVHlwZSA9ICIwMTIzQjAwMDAwMExVY1pRQVciOyAvL01TSDE4MTAwNCB1cGRhdGVkIHJlY29yZCB0eXBlIGZvciBGdWxsCi8vekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZSA9ICIwMTIzQjAwMDAwMExVY1dRQVciOyAvL01TSDE4MTAwNCB1cGRhdGVkIHJlY29yZCB0eXBlIGZvciBGdWxsCi8vekRhdGEub3V0Ym91bmRFbWFpbFJlY29yZFR5cGUgPSAiMDEyM0IwMDAwMDBMVWNYUUFXIjsgLy9NU0gxODEwMDQgdXBkYXRlZCByZWNvcmQgdHlwZSBmb3IgRnVsbAoKCgp2YXIgY3MgPSAoZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbyArICIiKTsKYWxlcnQoIk1TSDE5MDIxMiBjcyA9ICIgKyBjcyk7CmlmIChjcykgewogICAgaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpID4gLTEpIHsKICAgICAgICBjcyA9IFgoZG9jLCAiekN1c3RvbVNldHRpbmdzIiwgY3MpOwogICAgfQogICAgaWYgKGNzICE9PSAiIikgewogICAgICAgIGV2YWwoY3MpOwogICAgfQp9CgovL0VSUzE5MDQxOCB1c2UgU0ZEQyBzZXR0aW5ncyBpbnN0ZWFkCnZhciBvcmcyb3JnQ1M9ZG9jLmtiRGF0YS5jdXN0b21TZXR0aW5nczsgLy9FUlMxOTA0MTEgIzU3ODgxCgp0cnkgewogICAgaWYgKG9yZzJvcmdDUykgewogICAgICAgIHpEYXRhLmluYm91bmRGYXhSZWNvcmRUeXBlPSIiK1hDdXN0b21TZXR0aW5nKGRvYywiaW5ib3VuZEZheFJlY29yZFR5cGVfX2MiKTsgLy8iMDEyMUQwMDAwMDAyR0tOUUEyIjsKICAgICAgICB6RGF0YS5vdXRib3VuZEZheFJlY29yZFR5cGU9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJvdXRib3VuZEZheFJlY29yZFR5cGVfX2MiKTsgLy8iMDEyMUQwMDAwMDAyR0tPUUEyIjsgCiAgICAgICAgekRhdGEuaW5ib3VuZEVtYWlsUmVjb3JkVHlwZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsImluYm91bmRFbWFpbFJlY29yZFR5cGVfX2MiKTsgLy8wMTIxRDAwMDAwMDJHS0xRQTIiOyAKICAgICAgICB6RGF0YS5vdXRib3VuZEVtYWlsUmVjb3JkVHlwZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIm91dGJvdW5kRW1haWxSZWNvcmRUeXBlX19jIik7IC8vIjAxMjFEMDAwMDAwMkdLTVFBMiI7IAogICAgICAgIHpEYXRhLkJSRVhpbmJvdW5kRmF4TGluZT0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIkJSRVhpbmJvdW5kRmF4TGluZV9fYyIpOyAvLzE2Nzg3MjcwNjk4IjsgCiAgICAgICAgYWxlcnQoIlNldHVwIGZvcjogIit6RGF0YS5CUkVYaW5ib3VuZEZheExpbmUpCiAgICAgICAgekRhdGEudGVzdD0iIjsKICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIkVSUzE5MDQxMSBDUyBhICIrICh0eXBlb2Ygb3JnMm9yZ0NTKSArIiBoYXMgIitvcmcyb3JnQ1MpOwogICAgfQp9IGNhdGNoKCkge2FsZXJ0KCJGQUlMRUQgVE8gSU5JVElBTElaRSIpO30KCmlmICghekRhdGEudGVzdCB8fCAhekRhdGEuQlJFWGluYm91bmRGYXhMaW5lIHx8ICF6RGF0YS5pbmJvdW5kRmF4UmVjb3JkVHlwZSB8fCAhekRhdGEub3V0Ym91bmRGYXhSZWNvcmRUeXBlIAogIHx8ICF6RGF0YS5vdXRib3VuZEVtYWlsUmVjb3JkVHlwZSB8fCAhekRhdGEub3V0Ym91bmRFbWFpbFJlY29yZFR5cGUpIHsKICAgIC8vZW1haWwgc29tZW9uZSB0aGF0IHRoZSBvcmcgaXMgbm90IHNldHVwCiAgICByb29sLmV2YWxDb250aW51ZT1mYWxzZTsgLy9zdG9wcyB0aGUgYnVzIQogICAgdmFyIG1zZz0iQ1VTVE9NIFNFVFRJTkdTIEFSRSBNSVNTSU5HIjsKICAgIHZhciBib2R5PSIiK29yZzJvcmdDUzsKICAgIGFsZXJ0KCJlbWFpbCAiKyBkb2Mua2JEYXRhLnVzZXJFbWFpbCsiXG4iK21zZysiXG4iK2JvZHkpOwogICAgc2VuZEVtYWlsKGRvYywgInN1cHBvcnRAenBhcGVyLmNvbSIsIGRvYy5rYkRhdGEudXNlckVtYWlsLCBtc2csIGJvZHkpOwogICAgcmV0dXJuOwp9CgovL0VSUzE3MDYyMSBhdHRhY2hpbmcgdG8gYSBDYXNlIHNob3VsZCBjcmVhdGUgYSBEb2N1bWVudCBhbmQgRG9jdW1lbnRMb2cKekRhdGEubmV3RG9jdW1lbnQgPSBmdW5jdGlvbihkb2MsIGFyck9mUGFpcnMsIFNGREN0eXBlLCBwcm9ncmFtTmFtZSwgc2ZQYXJlbnRJZCwgU0ZEQ2ZpZWxkLCBzdGF0dXMpIHsgLy9DUk4xNzEwMjggQWRkZWQgc3RhdHVzIC8vRVJTMTcwNjI2IGFkZGVkIHBhcmVudCB0eXBlCiAgICAvL01TSDE4MDgyMCBpZiAoIVNGRENmaWVsZCkgewogICAgLy9TRkRDZmllbGQgPSB6RGF0YS5QQ19sb29rdXBGaWVsZDsKICAgIC8vfQoKICAgIHZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MpOyAvL0NSTjE3MDYyMSBUaGlzIGlzIGZpeGVkIG5vdyBzbyB3ZSBkb24ndCBuZWVkIHRoZSBsaW5lcyBiZWxvdwoKCgoKICAgIGlmICgxPT09MSkgewogICAgICAgIC8vRmF4X0NhdGVnb3J5X19jIGlzICJQYXRpZW50IEF1dGhvcml6YXRpb24iLCJQYXRpZW50IENvbnNlbnQiLCJQYXRpZW50IEluc3VyYW5jZSBJbmZvcm1hdGlvbiIKICAgICAgICAvL0NoYW5uZWxfX2MgaXMgIkZheCIsIkZheCAtIEluYm91bmQiLCJGYXggLSBPdXRib3VuZCIKICAgICAgICAvL0VSUzE3MDkwNiBTRiBVc2VyIG5vdCBhbGxvd2VkCgoKICAgICAgICAvL01TSDE4MDgxNyAjNTE2NDEgcHV0IGluIGFyck9mUGFpcnMgYmVmb3JlIGNhbGxpbmcgdGhpcyBmdW5jdGlvbiBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHpEYXRhLmluYm91bmRGYXhSZWNvcmRUeXBlKTsKICAgICAgICAvL01TSDE5MDIxMyBjaGFuZ2UgJ2Zyb20nIHRvICdkZWxpdmVyZWRGcm9tJyBiZWNhdXNlICdmcm9tJyBpcyBhIGtleXdvcmQKCiAgICAgICAgdmFyIGRlbGl2ZXJlZEZyb20gPSBkb2MuZGVsaXZlcmVkRnJvbTsKICAgICAgICAvL01TSDE5MDIxMyBkZWJ1Z2dpbmcKICAgICAgICBhbGVydCgiZGVsaXZlcmVkRnJvbSA9PSAiICsgZGVsaXZlcmVkRnJvbSk7CiAgICAgICAgLy9pZiAoZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIikgPiAtMSB8fCBkZWxpdmVyZWRGcm9tLmxlbmd0aCAhPSAxMSkgewogICAgICAgICAgICAvL2RlbGl2ZXJlZEZyb20gPSAiMTc3MDU1NTEyMTIiOyAvL0VSUzE3MDcyOSAjNDA0NDcKICAgICAgICAvL30KCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLlBDcGFja2FnZSArICJQQ19Gcm9tX0ZheF9OdW1iZXJfX2MiLCBkZWxpdmVyZWRGcm9tKTsgLy93YXMgIkluY29taW5nX0ZheF9OdW1iZXJfX2MiCiAgICAgICAgLy91c2UgcmVjb3JkIHR5cGUgLy9hcnJPZlBhaXJzLnB1c2goIkNoYW5uZWxfX2MiLCAiRmF4IC0gSW5ib3VuZCIpOwoKCiAgICAgICAgLy9QVjE5MDQxMSB0byB1cGRhdGUgdGhlIGZheCBudW1iZXIgb24gaW5jb21pbmcgZG9jdW1lbnRzCiAgICAgICAgLy92YXIgdG8gPSBkb2MuZGVsaXZlcmVkVG87CiAgICAgICAgICAvLyAgdG8gPSAiMTY3ODcyNzA2OTgiOwogICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKHpEYXRhLlBDcGFja2FnZSArICJQQ19Ub19GYXhfTnVtYmVyX19jIiwgdG8pOwogICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfVG9fRmF4X051bWJlcl9fYyIsIHpEYXRhLkJSRVhpbmJvdW5kRmF4TGluZSk7CgoKCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLlBDcGFja2FnZSArICJQQ19JbmJvdW5kX0ZheF9EYXRlX1RpbWVfX2MiLCBmb3JtYXROb3cpOyAvL3dhcyBGYXhfUmVjZWl2ZWRfRGF0ZV9UaW1lX19jCiAgICAgICAgaWYgKHN0YXR1cykgewogICAgICAgICAgICBhbGVydCgiRVJTMTgwOTA0LjQwIFBDX0RvY3VtZW50X1N0YXR1c19fYyBpcyAiKyBzdGF0dXMpOyAvLyM1MTYwNAogICAgICAgICAgICAvL01TSDE4MDkwNSBhIGxpdHRsZSB0ZXN0IGFyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfRG9jdW1lbnRfU3RhdHVzX19jIiwgc3RhdHVzKTsgLy93YXMgYWx3YXkgTmV3CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgYWxlcnQoIkVSUzE4MDkwNC40MyBQQ19Eb2N1bWVudF9TdGF0dXNfX2MgaXMgIisgc3RhdHVzKTsgLy8jNTE2MDQKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpEYXRhLlBDcGFja2FnZSArICJQQ19Eb2N1bWVudF9TdGF0dXNfX2MiLCAiTmV3Iik7IC8vd2FzIFN0YXR1c19fYwogICAgICAgIH0KICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuelBhcGVySWRGaWVsZCwgZG9jLmRiSUQpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCh6RGF0YS5QQ3BhY2thZ2UgKyAiUENfRG9jdW1lbnRfQ2F0ZWdvcnlfX2MiLCBYKGRvYywgIlhfZG9jVHlwZSIpKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goekRhdGEuUENwYWNrYWdlICsgIlBDX1BhZ2VfQ291bnRfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CiAgICB9CgogICAgLy9FUlMxNzAzMjIgVE9ETyBjaGVjayBmb3Igc3BsaXQgYW5kIHNldCBQYXJlbnRfRG9jdW1lbnRfX2MKICAgIHZhciBwYXJlbnRJRCA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CiAgICB2YXIgdHlwZSA9ICIiOyAvL0VSUzE3MDMyNQogICAgdHlwZSA9IFgoZG9jLCAiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsgLy9FUlMxNzA3MjkgIzQwNDQ3IGluIGF0dGFjaG1lbnQgbmFtZQogICAgaWYgKHNmUGFyZW50SWQpIHsKICAgICAgICBwYXJlbnRJRCA9IHNmUGFyZW50SWQ7CiAgICB9CiAgICBpZiAocGFyZW50SUQgIT09ICIiKSB7CiAgICAgICAgcGFyZW50SUQgPSBwYXJlbnRJRC5zdWJzdHJpbmcoMSArIHBhcmVudElELmxhc3RJbmRleE9mKCIvIikpOwogICAgICAgIGFsZXJ0KCJwYXJlbnRJRCA9ICIgKyBwYXJlbnRJRCk7CiAgICB9CgogICAgdmFyIHNmSWQgPSB6RGF0YS5QY0RvY0lkOwogICAgaWYgKCF6RGF0YS5QY0RvY0lkKSB7CiAgICAgICAgc2ZJZCA9ICIiICsgY3JlYXRlQW5kQXR0YWNoKGRvYywgU0ZEQ3R5cGUsICJOZXcgIiArIHR5cGUgKyBwcm9ncmFtTmFtZSArICIgUEMgRG9jdW1lbnQgcmVjZWl2ZWQgb24gIiArIGZvcm1hdE5vdywgYXJyT2ZQYWlycyk7CiAgICB9CgogICAgekRhdGEuUGNEb2NJZCA9IHNmSWQubGVuZ3RoID4gNCA/IHNmSWQgOiBudWxsOwogICAgLy9NU0gxODA4MTYgIzUxNjQxIHNldCB0aGlzIGluIGNhbGxpbmcgekFjdGlvbgogICAgLyoKICAgIGlmICh6RGF0YS5jYXNlSWQubGVuZ3RoID09PSAwIHx8IHpEYXRhLmNhc2VJZC5pbmRleE9mKCI1MDAiKSAhPT0gMCkgewogICAgICAgIGlmIChwYXJlbnRJRC5pbmRleE9mKCI1MDAiKSA9PT0gMCkgewogICAgICAgICAgICB6RGF0YS5jYXNlSWQgPSBwYXJlbnRJRDsgLy9FUlMxNzA3MjIKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICAvL01TSDE4MDgxNiAjNTE2NDEgekRhdGEuY2FzZUlkID0gIiI7IC8vRVJTMTcwOTA2CiAgICAgICAgICAgIHZhciBwY0RvY0ZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsIHpEYXRhLlNGREN0eXBlLCB6RGF0YS5QQ19sb29rdXBGaWVsZCwgbnVsbCwgcGFyZW50SUQpOwogICAgICAgICAgICB6RGF0YS5jYXNlSWQgPSBYKGRvYywgekRhdGEuUENfbG9va3VwRmllbGQsIHBjRG9jRmxkcyk7CiAgICAgICAgfQogICAgfQogICAgKi8KICAgIGFsZXJ0KCJAQEAgRVJTMTcwOTEzIGNhc2VJZCA9ICIgKyB6RGF0YS5jYXNlSWQgKyAiOiBDcmVhdGVkICIgKyBTRkRDdHlwZSArICI6IiArIHNmSWQgKyAiIEBAQCIpOwogICAgYWxlcnQoInpEYXRhLlNGRENjb25uZWN0b3IgPSAiICsgekRhdGEuU0ZEQ2Nvbm5lY3Rvcik7CgogICAgaWYgKHpEYXRhLmNhc2VJZCAmJiAxPT09MSAmJiBzZklkICE9PSAiIiAmJiBzZklkICE9ICJORVciKSB7IC8vRVJTMTcwNzA4IGFkZGVkIE5FVyB0ZXN0IC8vRVJTMTcwNjIxIG1ha2UgdGhlIERvY3VtZW50X0xvZyBhbmQgY29ubmVjdCB0byBjYXNlCiAgICAgICAgdmFyIGFyck9mUGFpcnMyID0gW107IC8vRVJTMTcwNzA4IHt9IG5vdyBbXQogICAgICAgIC8vaWYgKHBhcmVudElELmluZGV4T2YoIjUwMCIpPT09MCkgYXJyT2ZQYWlyczIucHVzaCgiQ2FzZV9fYyIsIHBhcmVudElEKTsgLy9FUlMxNzA3MDggc2ZQYXJlbnRJZCBub3cgcGFyZW50SUQKICAgICAgICAvL2lmICgoU0ZEQ2ZpZWxkPT09IlByb2dyYW1fRW5yb2xsbWVudF9fYyIpKSBhcnJPZlBhaXJzMi5wdXNoKCJQcm9ncmFtX0Vucm9sbG1lbnRfX2MiLCBwYXJlbnRJRCk7IC8vRVJTMTcwNzAyMgogICAgICAgIC8vYXJyT2ZQYWlyczIucHVzaCh6RGF0YS5QQ19sb29rdXBGaWVsZCwgekRhdGEuY2FzZUlkKTsgLy9FUlMxNzA4MzAKICAgICAgICBhcnJPZlBhaXJzMi5wdXNoKCJQYXRpZW50Q29ubmVjdF9fUENfUHJvZ3JhbV9fYyIsIHpEYXRhLmNhc2VJZCk7IC8vRVJTMTcwODMwCiAgICAgICAgYXJyT2ZQYWlyczIucHVzaCh6RGF0YS5Eb2N1bWVudExvb2t1cEZpZWxkLCBzZklkKTsgLy9FUlMxNzA4MzAKICAgICAgICB2YXIgc2ZJZENvbm5lY3RvciA9ICIiICsgY3JlYXRlU0ZSZWNvcmQoZG9jLCB6RGF0YS5TRkRDY29ubmVjdG9yLCAiIiwgYXJyT2ZQYWlyczIpOyAgLy9FUlMxNzA3MDggYWRkZWQgekRhdGEgdG8gU0ZEQ2Nvbm5lY3RvcgogICAgICAgIGFsZXJ0KCJAQEAgQ3JlYXRlZCB0eXBlICIgKyB6RGF0YS5TRkRDY29ubmVjdG9yICsgIjoiICsgc2ZJZENvbm5lY3RvciArICIgdG8gIiArIHNmSWQgKyAiIGFuZCAiICsgekRhdGEuY2FzZUlkICsgIiBAQEAiKTsKICAgICAgICBpZiAoc2ZJZENvbm5lY3RvciAhPT0gIiIgJiYgc2ZJZENvbm5lY3RvciAhPT0gIm51bGwiKSB7CiAgICAgICAgICAgIHJldHVybiBzZklkICsgIiwiICsgc2ZJZENvbm5lY3RvcjsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICBhbGVydCgiRmFpbGVkIHRvIGNyZWF0ZSAiICsgekRhdGEuU0ZEQ2Nvbm5lY3Rvcik7CiAgICAgICAgfQogICAgfSBlbHNlIHsKICAgICAgICBhbGVydCgiRmFpbGVkIHRvIGNyZWF0ZSAiICsgU0ZEQ3R5cGUpOwogICAgfQogICAgcmV0dXJuIHNmSWQ7Cn07"},"ordinal":2}

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
        alert("Setup for: "+zData.BREXinboundFaxLine)
        zData.test="";
    } else {
        alert("ERS190411 CS a "+ (typeof org2orgCS) +" has "+org2orgCS);
    }
} catch() {alert("FAILED TO INITIALIZE");}

if (!zData.test || !zData.BREXinboundFaxLine || !zData.inboundFaxRecordType || !zData.outboundFaxRecordType 
  || !zData.outboundEmailRecordType || !zData.outboundEmailRecordType) {
    //email someone that the org is not setup
    rool.evalContinue=false; //stops the bus!
    var msg="CUSTOM SETTINGS ARE MISSING";
    var body=""+org2orgCS;
    alert("email "+ doc.kbData.userEmail+"\n"+msg+"\n"+body);
    sendEmail(doc, "support@zpaper.com", doc.kbData.userEmail, msg, body);
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
