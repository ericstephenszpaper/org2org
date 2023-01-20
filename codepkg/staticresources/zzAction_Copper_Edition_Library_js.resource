<!--
// Name: Copper Edition Library
// Committer: eric.stephens@zpaper.com
// Update: ERS211122 now ZPAPER6__; ERS211122 #86799 clientCase is too dangerous a default; ERS211122 #86799 for service cloud
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-11-22 23:28:41","evalContinue":"true","active":true,"button":"","name":"Copper Edition Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLnpwPSJaUEFQRVI2X18iOyAvL1RPRE8gWlBBUEVSNl9fIC8vRVJTMjExMTIyIG5vdyBaUEFQRVI2X18KekRhdGEuenBzPSJSZWNlaXZlZERvY3VtZW50IjsgLy96RGF0YS56cCsielN0YWNrX19jIjsgLy9FUlMyMTA0MjQgIzgyMDgxCi8vVE9ETyByZWFkIHRoZSBjaGFubmVsIGRlZmluaXRpb25zIGluIHNldEJyYW5kUHJvZ3JhbSBhbmQgbWFrZSBDYXNlIGlmIG5vdCBIZWFsdGhDbG91ZAp6RGF0YS5lZGl0aW9uPSJDb3BwZXIiOyAvL0VSUzIxMDQyNCBkbyBub3QgbWFrZSBhIHpTdGFjayBhbmQgdXNlIExGIHRoYXQgYXJlIGVuY3J5cHRlZCBQREZzCnpEYXRhLnNmSUQgPSBnZXRCYXJjb2RlT25lKGRvYyk7CmlmICghekRhdGEuc2ZJRCB8fCAwID09PSB6RGF0YS5zZklELmxlbmd0aCkgewogICAgekRhdGEuc2ZJRCA9IGdldEFsdGVybmF0ZUJhcmNvZGVPbmUoZG9jKSArICIiOwp9CnpEYXRhLmZvcm1hdE5vdz16RGF0YS5ub3c9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsgLy9FUlMxOTA2MjQgd2FzIGp1c3QgLm5vdwp6RGF0YS5hdHRhY2hSZWNvcmRzPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiUmVjb3Jkc19fYyIpLnRyaW0oKTsKaWYgKCF6RGF0YS5hdHRhY2hSZWNvcmRzKSB7IHpEYXRhLmF0dGFjaFJlY29yZHM9IkNhc2UsTGVhZCxBY2NvdW50LENvbnRhY3QsT3JkZXIsUmVjZWl2ZWREb2N1bWVudCI7fSAvL0VSUzIxMDQyNCAjODIwODEKCmlmICgxPT09MSkgeyAvL0VSUzIxMDMyMCAjODEzMjcgVE9ETyBnZXQgemlwcGkyIGZpeGVkIHRvIHNvIHRoYXQgdGhpcyBpcyBhbHJlYWR5IGRvbmUKICAgIHpEYXRhLmZyb21GaWxlPVgoZG9jLCJYX2Zyb21GaWxlIik7IC8vRVJTMTkwODE0IFRPRE8/IGRvIGluIGxpYnJhcnk/CiAgICBpZiAoIXpEYXRhLmZyb21GaWxlKSB7IC8vRVJTMjEwMzIwICM4MTMyNwogICAgICAgIHpEYXRhLmZyb21GaWxlPWRvYy5VUkwuc3Vic3RyaW5nKGRvYy5VUkwubGFzdEluZGV4T2YoIi8iKSsxKTsgCiAgICAgICAgYWxlcnQoIkVSUzIxMDMyMC4xNyAjODEzMjcgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGlmICghZG9jLmRlbGl2ZXJlZFRvKSB7IC8vRVJTMjEwMzIwICM4MTMyNwogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMjAgIzgxMzI3IHJlcGFpcmluZyBkb2MuZGVsaXZlcmVkVG8gdXNpbmcgIit6RGF0YS5mcm9tRmlsZSk7CiAgICAgICAgZG9jLmRlbGl2ZXJlZFRvPXpEYXRhLmZyb21GaWxlLnNwbGl0KCItIilbMV07CiAgICB9Cn0KCi8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmU9ZnVuY3Rpb24oZG9jKSB7CiAgIHZhciBkb2MwPVtdOwogICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXT1kb2NbaV07CiAgIHJldHVybiBkb2MwOwp9OwoKCi8vQU4xOTA1MzAgdGVjaCBkZWJ0PyB1bnN1cmUgaG93IHRoaXMgZnVuY3Rpb24gaXMgbmVlZGVkCnpEYXRhLm5hbWVGaWxlID0gZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwODI5ICM0MTI5OCByZXR1cm5zIGEgbGFiZWwgdG8gYmUgdXNlZCBpbiBhbnkgYXR0YWNoZXMgYW5kIGZpeGVzIHRoZSBkb2MKICAgIC8vRG9jdW1lbnQgYXR0YWNobWVudCBsYWJlbCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIuICBDb25maXJtZWQgZm9yIHpQYXBlciBGaWxlIGFuZCBTRkRDIEF0dGFjaG1lbnQKICAgIHZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgIGRvYy5sYWJlbD1YKGRvYywiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpK1goZG9jLCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKSsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsKICAgIGFsZXJ0KCJFUlMxNzA4MjkgZGJJRD0iK2RvYy5kYklEKyIgbGFiZWw9Iitkb2MubGFiZWwpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkgPSBmdW5jdGlvbihkb2MpIHsgLy9NU0gxNzA4MzEgZXh0cmFjdCBkYXRlIGZvcm1hdCBmcm9tIHpEYXRhLm5hbWVGaWxlCiAgICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogICAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgICAvL01TSDE3MDkwNiBwYWQgZGF5IHdpdGggemVybwogICAgdmFyIGN1ckRheSA9IHRvZGF5LmdldERhdGUoKTsKICAgIC8vTVNIMTcwOTA2IHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsiIit0b2RheS5nZXREYXRlKCkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrKCIiKyhjdXJEYXkgPiA5ID8gY3VyRGF5KyIiIDogIjAiK2N1ckRheSkpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgLy9hbGVydCgiTU1kZFlZWVkgPT0gIiArIE1NZGRZWVlZKTsKICAgIHJldHVybiBNTWRkWVlZWTsKfTsKCnpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyA9IGZ1bmN0aW9uKGRvYykgeyByZXR1cm4gekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IH07IC8vTVNIMTcxMDA1IGdldCBhbGwgdGhlIG9yZ3MgaW4gaGVyZQp6RGF0YS5zZXRicmFuZHByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgcmV0dXJuIHpEYXRhLnNldEJyYW5kUHJvZ3JhbShkb2MpOyB9OyAvL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKICAgIAp6RGF0YS5zZXRCcmFuZFByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgLy9UT0RPIGRvIGh1YiB3aXRoIHNldHRpbmdzCiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICB2YXIgenA9ekRhdGEuenA7CiAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbj1kb2MuZGVsaXZlcmVkVG87CiAgICB6RGF0YS5jaGFubmVsPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLnByb2dyYW1OYW1lPWRvYy5kZWxpdmVyZWRUbzsKICAgIC8vekRhdGEuQWZmaWxpYXRlPWRvYy5kZWxpdmVyZWRUbzsKICAgIHZhciBkZWxpdmVyZWRUbyA9IGRvYy5kZWxpdmVyZWRUbyArICIiOwkvL0pQQjE5MDUyOSBDaGVjayBkZWxpdmVyZWRUbyBmb3IgY29tbXVuaXR5IHVwbG9hZGVzCiAgICBpZiAoIWlzTmFOKGRvYy5kZWxpdmVyZWRGcm9tKSkgeyB6RGF0YS5jaGFubmVsPSJGYXgiOyB9IC8vRVJTMTkwODEwICM2MTU3MCBzZXQgY2hhbmVuZWwgdG8gZmF4IGlmIG51bWJlciAKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCiAgICBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxOTA4MTIgIzYxNTExCiAgICBpZiAoaXNOYU4oZGVsaXZlcmVkVG8pKSB7CiAgICAJaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewogICAgCQl6RGF0YS5jaGFubmVsID0gIkNvbW11bml0eSI7CiAgICAJfSBlbHNlIHsKCQkgICAgekRhdGEuY2hhbm5lbD0iU2NhbiI7CgkgICAgfQogICAgfQogICAgdmFyIG1heENoYW5uZWxzPTI7IGlmICh6RGF0YS5tYXhDaGFubmVscykgbWF4Q2hhbm5lbHM9ekRhdGEubWF4Q2hhbm5lbHM7IC8vRVJTMTkwNzMxICM2MTI3MgogICAgbWF4Q2hhbm5lbHM9OTsgYWxlcnQoInpEYXRhLm1heENoYW5uZWxzPSIrekRhdGEubWF4Q2hhbm5lbHMpOyAvL0pQQjIwMTAyMyBuZWVkZWQgdG8gYWRkIGJlY2F1c2UgekNBUlRhIHdhcyBub3Qgc2hvd2luZyB1cCBpbiBQcm9ncmFtCiAgICBmb3IgKHZhciBpPTE7IGk8PW1heENoYW5uZWxzOyBpKyspIHsKICAgICAgICBpZiAoaT40KSB6cD0iIjsgLy8yIGluIG1hbmFnZWQgcGFja2FnZSAvL0VSUzIwMDIwNSBDTUEgaGVscGVkIHNwb3QgdGhlIHJ1YmJlciBkdWNreSEhIQogICAgICAgIAogICAgICAgIHZhciBjaGFubmVsPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQ2hhbm5lbCIraSsiX19jIik7CiAgICAgICAgdmFyIHByb2dyYW09WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJQcm9ncmFtIitpKyJfX2MiKTsKICAgICAgICAvL3ZhciBhZmZpbGlhdGU9WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJBZmZpbGlhdGUiK2krIl9fYyIpOwogICAgICAgIHZhciBjbGFzc2lmaWNhdGlvbj1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNsYXNzaWZpY2F0aW9uIitpKyJfX2MiKTsKICAgICAgICB2YXIgYXR0YWNoUmVjb3Jkcz1YQ3VzdG9tU2V0dGluZyhkb2MsIlJlY29yZHMiK2krIl9fYyIpOyAvL25vIHpwIGlzIGRlbGliZXJhdGUKICAgICAgICBpZiAoIWF0dGFjaFJlY29yZHMpIGF0dGFjaFJlY29yZHM9ekRhdGEuYXR0YWNoUmVjb3JkczsKICAgICAgICAKICAgICAgICAvL3pDaGFubmVsMwl7J3BhdGgnOidPcnBoYW4gUmFyZSBEaXNlYXNlcy9QUk9DWVNCSS8xNjc4OTQ4OTc3NC5QUk9DWVNCSScsJ2RiLXJlYWRlcnMnOic6LTIwMTAwLjM6JywnZGItdXNlcnMnOic6LTIwMTAwLjM6J30KICAgICAgICB2YXIgenAyPXpwOyAKICAgICAgIC8vIHpwMj0iIjsgLy9FUlMyMDAyMDkgdW50aWwgaW4gcGFja2FnZQogICAgICAgIHZhciB6Y2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsenAyKyJ6Q2hhbm5lbCIraSsiX19jIik7CiAgICAgICAgaWYgKHpjaGFubmVsICYmIHpjaGFubmVsLmluZGV4T2YoInsiKSA9PSAwKSB7IC8vRVJTMjAwMjA5ICM2ODgyNSB6Q2hhbm5lbAogICAgICAgICAgICB0cnkgewogICAgICAgICAgICAgICAgaWYgKHpjaGFubmVsLmluZGV4T2YoInsnIik9PTApIHpjaGFubmVsPXpjaGFubmVsLnJlcGxhY2VBbGwoIiciLCJcIiIpOyAvL0VSUzIwMDIwOSBIQUNLIGFyb3VuZCBzdGFsZSB6aXBwaSBjYWNoZQogICAgICAgICAgICAgICAgemNoYW5uZWw9SlNPTi5wYXJzZSh6Y2hhbm5lbCk7CiAgICAgICAgICAgICAgICBhbGVydCgiekNoYW5uZWwiK2krIi5wYXRoPSIremNoYW5uZWwucGF0aCk7CiAgICAgICAgICAgICAgICB6RGF0YS56Y2hhbm5lbD16Y2hhbm5lbDsKICAgICAgICAgICAgICAgIHZhciBwPXpjaGFubmVsLnBhdGguc3BsaXQoIi8iKTsKICAgICAgICAgICAgICAgIGNsYXNzaWZpY2F0aW9uPXBbMF07IHByb2dyYW09cFsxXTsgY2hhbm5lbD1wWzJdOwogICAgICAgICAgICAgICAgaWYgKCFwcm9ncmFtKSBwcm9ncmFtPWNsYXNzaWZpY2F0aW9uOyAvL0VSUzIxMDMyMCAjODEzMjcKICAgICAgICAgICAgICAgIGlmICghY2hhbm5lbCkgY2hhbm5lbD1wcm9ncmFtOyAvL0VSUzIxMDMyMCAjODEzMjcKICAgICAgICAgICAgfSBjYXRjaCAoZSkgewogICAgICAgICAgICAgICAgYWxlcnQoInpDaGFubmVsIitpKyIgbm90IHZhbGlkLiAiK2UrIiBmcm9tICIremNoYW5uZWwpOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgICAgICAvL2luc3VyYW5jZSBhZ2FpbnN0IG90aGVyIGFjdGlvbnMgZXhwZWN0aW5nIHpjaGFubmVsLmFjdGlvbgogICAgICAgIGlmICghekRhdGEuemNoYW5uZWwpIHsgekRhdGEuemNoYW5uZWw9eyJhY3Rpb24iOiIifTsgfSAvL0VSUzIxMTEyMiAjODY3OTkgY2xpZW50Q2FzZSBpcyB0b28gZGFuZ2Vyb3VzIGEgZGVmYXVsdAogICAgICAgIGVsc2UgaWYgKCF6RGF0YS56Y2hhbm5lbC5hY3Rpb24pIHsgekRhdGEuemNoYW5uZWwuYWN0aW9uPSIiOyB9IC8vRVJTMjExMTIyICM4Njc5OSBmb3Igc2VydmljZSBjbG91ZAogICAgICAgIAogICAgICAgIGlmICghY2hhbm5lbCkgYnJlYWs7CiAgICAgICAgCiAgICAgICAgdmFyIGM9Y2hhbm5lbDsgaWYgKGMuaW5kZXhPZigiMSIpPT09MCkgYz1jLnN1YnN0cmluZygxKTsKICAgICAgICB6RGF0YS5jaGFubmVscz1pOwogICAgICAgIGFsZXJ0KCJFUlMyMDAyMDUuOTcgIitkb2MuZGVsaXZlcmVkVG8rIiA/PSAiKyBjKyAiIGJ1dCB6Y2hhbm5lbC5mYXg9Iit6Y2hhbm5lbC5mYXgpOwogICAgICAgIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZihjKT4tMSB8fCBkb2MuZGVsaXZlcmVkVG8gPT0gemNoYW5uZWwuZmF4KSB7IC8vRVJTMjEwMzIwICM4MTMyNyAuZmF4IGNoZWNrIGtlZXBzIC5wYXRoIHB1cmUKICAgICAgICAgICAgekRhdGEuY2hhbm5lbD1jaGFubmVsOyB6RGF0YS5wcm9ncmFtTmFtZT1wcm9ncmFtOyAKICAgICAgICAgICAgaWYoIWlzTmFOKGMpKSB6RGF0YS5jaGFubmVsW3Byb2dyYW1dPWNoYW5uZWw7IC8vcmV2ZXJzZSBsb29rdXAgZm9yIGZheAogICAgICAgICAgICAvL3pEYXRhLkFmZmlsaWF0ZT1hZmZpbGlhdGU7IAogICAgICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbj1jbGFzc2lmaWNhdGlvbjsKICAgICAgICAgICAgekRhdGEuYXR0YWNoUmVjb3Jkcz1hdHRhY2hSZWNvcmRzOyAvL0VSUzE5MDYyMAogICAgICAgICAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIi4iKT09LTEpIGJyZWFrOyAvL0VSUzIwMDIwNSBjaGVjayB0aGVtIGFsbCBpZiB1c2luZyBzdWJjaGFubmVscyAjNjg4MjUKICAgICAgICB9IAogICAgICAgIAoKICAgIH0KICAgIGFsZXJ0KCIrKysgRU5ESU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgb3JpZ2luID0gIiArIHpEYXRhLmNsYXNzaWZpY2F0aW9uKyIvIit6RGF0YS5wcm9ncmFtTmFtZSsiLyIrekRhdGEuY2hhbm5lbCk7CiAgICAvL2FsZXJ0KCJAQEAgekRhdGEuQWZmaWxpYXRlID0gIiArIHpEYXRhLkFmZmlsaWF0ZSk7Cn07CgovKiB0aGlzIGlzIGFuIHVudGVzdGVkIGZ1bmN0aW9uIHRvIGRldGVjdCB0aGUgc2FuZGJveCBuYW1lIGFuZCBhc3NpZ24gdmFsdWVzICovIC8vRVJTMTcwNTIyIGFjdGl2YXRpbmcKekRhdGEub3JnU3dpdGNoPWZ1bmN0aW9uKGRvYykgeyAvL0VSUzE3MDUxMgogICAgYWxlcnQoInNmVXNlciBpcyAiK2RvYy5zZlVzZXJOYW1lKTsKICAgIHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInBhdGllbnRRdWV1ZUlkX19jIik7IC8vJzAwRzRDMDAwMDAwTGttWic7IC8vaW5zZXJ0IHRoZSBRdWV1ZSBJRCBvZiB0aGUgZGVzaXJlZCBvd25lcnNoaXAgcXVldWUuIFVwZGF0ZSB3aGVuIG1pZ3JhdGluZyBiZXR3ZWVuIGVudmlyb25tZW50cy4gTmVlZCB0byBhZGQgdGhpcyBxdWV1ZSBpbiBTZXR1cAogICAgekRhdGEucmVjVHlwZVJlcXVlc3QgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInJlY1R5cGVSZXF1ZXN0X19jIik7IC8vJzAxMjRDMDAwMDAwQ2o1WSc7IC8vSUQgb2YgdGhlIENhc2UgUmVjb3JkIFR5cGUgUmVxdWVzdF9QU19NVk4KfTsKekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vRVJTMTcwODIyCgp6RGF0YS5nZXREYXRhRW50cnlGaWVsZHM9ZnVuY3Rpb24oZG9jLHpkKSB7IC8vRVJTMTkwNjE5IGNvcHkgd2RkYXRhIGluZm8gaW50byB6RGF0YQogICAgaWYgKCF6ZCkgemQ9ekRhdGE7IC8vdXNlIHpEYXRhIG9yIHpkCn07Cgp6RGF0YS5hZGRTdGFnZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxzdGFnZSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKICAgIHJldHVybiBhcnJPZlBhaXJzOwp9CgovL0luIENsaWVudCBMaWJyYXJ5IHpEYXRhLm5ld0Nhc2U9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHt9OwoKekRhdGEuaW5pdGlhbGl6ZVN0YWNrPWZ1bmN0aW9uKGRvYyxzdGFja0ZvbGRlcixzdGFja0lkKSB7IC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKfTsKCnpEYXRhLmNvdW50UGFnZXMgPSBmdW5jdGlvbihkb2MsIHBhZ2VSYW5nZTIpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBwYWdlcyA9IHBhZ2VSYW5nZTIuc3BsaXQoIiwiKTsKICAgIGlmICghcGFnZXMpIHBhZ2VzPVtwYWdlUmFuZ2UyXTsKICAgIGFsZXJ0KCJ6RGF0YS5jb3VudFBhZ2VzIHBhZ2VzID0gIiArIHBhZ2VzKTsKICAgIC8vcmV0dXJuIHBhZ2VzLmxlbmd0aDsKICAgIHJldHVybiAoIiIrcGFnZXMubGVuZ3RoKTsgLy9FUlMxOTA4MDIgIzYxMjcyIFRPRE8gaW4gV0FSCn07Cgp6RGF0YS5leHBvc2VQREY9ZnVuY3Rpb24oZG9jLHNmSWQscGFnZVJhbmdlKSB7IC8vRVJTMTcwNTIyIGFkZGVkIHBhZ2VSYW5nZQogICAgdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICB2YXIgbm93VGltZVN0YW1wID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIAogICAgdmFyIGZpbGVOYW1lID0gZ2V0Q3VyRGF0ZShkb2MpICsgIiBOZXcgRmF4LnBkZiI7CiAgICBhbGVydCgiQEBAZmlsZU5hbWUgPSAiK2ZpbGVOYW1lKTsKICAgIAogICAgY3JlYXRlRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAgCiAgICAvL0FOMTcwNTIyIHNob3VsZCB4UGFnZXMgYmUgcGFzc2VkIGluIGFzIGEgdmFyaWFibGU/CiAgICB2YXIgeFBhZ2VzID0gWChkb2MsICJYX3Bvc2l0aW9uIik7CiAgICBpZiAocGFnZVJhbmdlKSB4UGFnZXM9cGFnZVJhbmdlOyAgLy9FUlMxNzA1MjIKICAgIGlmICh4UGFnZXMgPT09ICIqIiB8fCB4UGFnZXMgPT09ICJhbGwiKSB7IC8vRVJTMjEwNDI0IGNvcHBlcgogICAgICAgIG5ld1BERk5hbWU9ZG9jLlVSTDsKICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIkBAQEBAIENhbGxpbmcgc3BsaXRQREYgdG8gc3BsaXQgb2ZmIHBhZ2VzIHRvIHVwbG9hZCBhcyBQREYsIHBhZ2VzID0gIiArIHhQYWdlcyArICIsIG5vd1RpbWVTdGFtcCA9ICIgKyBub3dUaW1lU3RhbXApOwogICAgICAgIHZhciByZXNwb25zZSA9IHNwbGl0UERGKGRvYywgeFBhZ2VzLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCwgZmlsZU5hbWUpOwogICAgICAgIGFsZXJ0KCJAQEBAIHJlc3BvbnNlIGZyb20gc3BsaXRQREYgPSAiICsgcmVzcG9uc2UpOwogICAgICAgIHZhciBuZXdQREZOYW1lID0gWChkb2MsICJuZXdQREYiLCByZXNwb25zZSk7CiAgICAgICAgYWxlcnQoIkBAQEAgc3BsaXQgUERGIEZpbGVOYW1lID0gIiArIG5ld1BERk5hbWUpOwogICAgfQogICAgCiAgICB2YXIgdXBsb2FkVVJMPSJodHRwOi8vbG9jYWxob3N0OjgwODAvbXlmaWxlZm9yY2UvdXBsb2FkVG9DbG91ZC5qc3A/U0ZpZD1ORVcmU0ZwaWQ9IitzZklkKyImU0Zvcmc9Iitkb2Muc2ZPcmcrIiZsYWJlbD0iK2ZpbGVOYW1lKyImc2VydmVyRmlsZT0iK25ld1BERk5hbWUrIiZEZXNjcmlwdGlvbj1GaWxlIGF0dGFjaGVkIGFzIFBERiI7CiAgICBhbGVydCgiIyMjIyBVcGxvYWQgbmF0aXZlIFBERiB3aXRoICIrdXBsb2FkVVJMKTsKICAgIHZhciByPXdnZXQoZG9jLCB1cGxvYWRVUkwpOyAvL0VSUzE3MDUxMiB3YXMgekRhdGEudXBsb2FkVVJMCiAgICBhbGVydCgiIyMjIyBGYXggUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CiAgICAvLyBGaW5hbGx5LCBkZWxldGUgdGhlIGZvbGRlciBhbmQgYWxsIGNvbnRlbnRzLgogICAgY2xlYW51cERpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgIC8vIE5vdyBzZXQgdGhlIGxhYmVsIGluIG91ciBTbmlwcGV0CiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIk5ldyBmaWxlICIgKyBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwp9OwoKekRhdGEuZ2V0U3RhY2tJZD1mdW5jdGlvbihkb2MsaWRzLHN0YWNrVHlwZU5hbWUpIHsgLy9FUlMxOTA2MTcgZnJvbSBVTkxPQ0sgLy9UT0RPIEVSUzE5MDYyNCBmaW5kIHN0YWNrVHlwZU5hbWUgbmVlZGVkIGRvYwogICAgaWYgKCFpZHMgfHwgaWRzPT09IiIpIGlkcyA9IFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsgLy9FUlMxOTA2MTggVE9ETyBjb25maXJtIGRvYyBpbiBzY29wZQogICAgaWRzID0gaWRzICsgIiI7CglpZiAoaWRzLmxhc3RJbmRleE9mKCcvJykgPj0gMCkgeyAvL0VSUzE5MDYxOCBnZXQgZmlyc3QgSWQgaWYgLyBpcyBwYXNzZWQgaW4KCQlpZHMgPSBpZHMuc3Vic3RyaW5nKGlkcy5sYXN0SW5kZXhPZignLycpKzEpOwovL0NSTjIwMTAyMyAjNzY3ODggVGhpcyBjb2RlIGFzc3VtZXMgdGhhdCB0aGUgZmlyc3QgYXR0YWNoZWRUbyBJZCBpcyBhIFN0YWNrLiBXZSd2ZSBzZWUgdGhhdCBpcyBub3QgYWx3YXlzIHRoZSBjYXNlLgovLyBMb29rIHRocm91Z2ggdGhlIGxpc3Qgb2YgSWRzLCBzZWFyY2hpbmcgZm9yIHRoZSBvbmUgdGhhdCBpcyBhY3R1YWxseSBhIHpTdGFjayBJZC4KLy8JCWlmIChpZHMuaW5kZXhPZignLCcpID49IDApIHsgaWRzID0gaWRzLnN1YnN0cmluZygwLCBpZHMuaW5kZXhPZignLCcpKTsgfQovLwkJcmV0dXJuIGlkczsKCX0KICAgIAogICAgaWYgKCFzdGFja1R5cGVOYW1lKSBzdGFja1R5cGVOYW1lPSJaUEFQRVJfX3pTdGFja19fYyI7IC8vRVJTMTkwNjI0IGd1ZXNzaW5nIFRPRE8gZmluZCBleGFtcGxlcwogICAgdmFyIHBhcnRzID0gaWRzLnNwbGl0KCcsJyk7CiAgICBmb3IgKHZhciBpPTA7IGk8cGFydHMubGVuZ3RoOyBpKyspIHsgLy9nZXQga2FzdCBJZCBpZiAvIGlzIE5PVCBwYXNzZWQgaW4KICAgICAgICB2YXIgaWQgPSBwYXJ0c1tpXS50cmltKCk7CiAgICAgICAgaWYgKGlkLmxlbmd0aCA+IDApIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgcHVsbGluZyB0eXBlIGZvciBpZDogIiArIGlkKTsKICAgICAgICAgICAgaWYgKHN0YWNrVHlwZU5hbWUgPT09IGdldFNGVHlwZShkb2MsIGlkKSkgewogICAgICAgICAgICAgICAgcmV0dXJuIGlkOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQogICAgcmV0dXJuIG51bGw7IC8vRVJTMjAxMDIzICM3Njc4OCByZXN0b3JlZCBudWxsIGJ1dCBDUk4gdGVzdGVkICIiCn07CnpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyhkb2MpOyAvL2NhbGwgZnVuY3Rpb24gdG8gc2V0IHZhcmlhYmxlcwovKiBFTkQgKi8="},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//global variables
zData.programName = "";
zData.zp="ZPAPER6__"; //TODO ZPAPER6__ //ERS211122 now ZPAPER6__
zData.zps="ReceivedDocument"; //zData.zp+"zStack__c"; //ERS210424 #82081
//TODO read the channel definitions in setBrandProgram and make Case if not HealthCloud
zData.edition="Copper"; //ERS210424 do not make a zStack and use LF that are encrypted PDFs
zData.sfID = getBarcodeOne(doc);
if (!zData.sfID || 0 === zData.sfID.length) {
    zData.sfID = getAlternateBarcodeOne(doc) + "";
}
zData.formatNow=zData.now=getCurDateAndTime(doc); //ERS190624 was just .now
zData.attachRecords=XCustomSetting(doc,zData.zp+"Records__c").trim();
if (!zData.attachRecords) { zData.attachRecords="Case,Lead,Account,Contact,Order,ReceivedDocument";} //ERS210424 #82081

if (1===1) { //ERS210320 #81327 TODO get zippi2 fixed to so that this is already done
    zData.fromFile=X(doc,"X_fromFile"); //ERS190814 TODO? do in library?
    if (!zData.fromFile) { //ERS210320 #81327
        zData.fromFile=doc.URL.substring(doc.URL.lastIndexOf("/")+1); 
        alert("ERS210320.17 #81327 repairing X_fromFile using "+doc.URL);
    }
    if (!doc.deliveredTo) { //ERS210320 #81327
        alert("ERS210320.20 #81327 repairing doc.deliveredTo using "+zData.fromFile);
        doc.deliveredTo=zData.fromFile.split("-")[1];
    }
}

//CRN170324 TODO doc.clone() done right;
zData.clone=function(doc) {
   var doc0=[];
   for (var i in doc) doc0[i]=doc[i];
   return doc0;
};


//AN190530 tech debt? unsure how this function is needed
zData.nameFile = function(doc) { //ERS170829 #41298 returns a label to be used in any attaches and fixes the doc
    //Document attachment label should be "Patient Name - Doc Type - Date".  Confirmed for zPaper File and SFDC Attachment
    var MMddYYYY = zData.formatTodayMMddYYYY();
    doc.label=X(doc,"X_ZPAPER__FirstName__c")+X(doc,"X_ZPAPER__LastName__c")+" - "+X(doc,"X_ZPAPER__faxType__c")+" - "+MMddYYYY;
    alert("ERS170829 dbID="+doc.dbID+" label="+doc.label);
    var arrOfPairs = [];
    arrOfPairs.push("db-label", doc.label);
    updateDB(doc,arrOfPairs);
    return doc.label;
};

zData.formatTodayMMddYYYY = function(doc) { //MSH170831 extract date format from zData.nameFile
    var today = new Date();
    var curMonth = today.getMonth() + 1;
    //MSH170906 pad day with zero
    var curDay = today.getDate();
    //MSH170906 var MMddYYYY =  (""+(curMonth > 9 ? curMonth+"" : "0"+curMonth)+""+today.getDate()+""+today.getFullYear());
    var MMddYYYY =  (""+(curMonth > 9 ? curMonth+"" : "0"+curMonth)+(""+(curDay > 9 ? curDay+"" : "0"+curDay))+""+today.getFullYear());
    //alert("MMddYYYY == " + MMddYYYY);
    return MMddYYYY;
};

zData.setGlobalVariables = function(doc) { return zData.setbrandprogram(doc); }; //MSH171005 get all the orgs in here
zData.setbrandprogram = function(doc) { return zData.setBrandProgram(doc); }; //MSH171005 get all the orgs in here
    
zData.setBrandProgram = function(doc) { //TODO do hub with settings
    alert("+++ STARTING zData.setbrandprogram +++");
    alert("@@@ doc.deliveredTo = " + doc.deliveredTo);
    var zp=zData.zp;
    zData.classification=doc.deliveredTo;
    zData.channel=doc.deliveredTo;
    zData.programName=doc.deliveredTo;
    //zData.Affiliate=doc.deliveredTo;
    var deliveredTo = doc.deliveredTo + "";	//JPB190529 Check deliveredTo for community uploades
    if (!isNaN(doc.deliveredFrom)) { zData.channel="Fax"; } //ERS190810 #61570 set chanenel to fax if number 
    if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {zData.channel="Email";} //ERS180505 #48101
    if (isNaN(doc.deliveredFrom)) {zData.channel="Email";} //ERS190812 #61511
    if (isNaN(deliveredTo)) {
    	if (deliveredTo.toLowerCase().indexOf("community") >= 0) {
    		zData.channel = "Community";
    	} else {
		    zData.channel="Scan";
	    }
    }
    var maxChannels=2; if (zData.maxChannels) maxChannels=zData.maxChannels; //ERS190731 #61272
    maxChannels=9; alert("zData.maxChannels="+zData.maxChannels); //JPB201023 needed to add because zCARTa was not showing up in Program
    for (var i=1; i<=maxChannels; i++) {
        if (i>4) zp=""; //2 in managed package //ERS200205 CMA helped spot the rubber ducky!!!
        
        var channel=XCustomSetting(doc,zp+"Channel"+i+"__c");
        var program=XCustomSetting(doc,zp+"Program"+i+"__c");
        //var affiliate=XCustomSetting(doc,zp+"Affiliate"+i+"__c");
        var classification=XCustomSetting(doc,zp+"Classification"+i+"__c");
        var attachRecords=XCustomSetting(doc,"Records"+i+"__c"); //no zp is deliberate
        if (!attachRecords) attachRecords=zData.attachRecords;
        
        //zChannel3	{'path':'Orphan Rare Diseases/PROCYSBI/16789489774.PROCYSBI','db-readers':':-20100.3:','db-users':':-20100.3:'}
        var zp2=zp; 
       // zp2=""; //ERS200209 until in package
        var zchannel=XCustomSetting(doc,zp2+"zChannel"+i+"__c");
        if (zchannel && zchannel.indexOf("{") == 0) { //ERS200209 #68825 zChannel
            try {
                if (zchannel.indexOf("{'")==0) zchannel=zchannel.replaceAll("'","\""); //ERS200209 HACK around stale zippi cache
                zchannel=JSON.parse(zchannel);
                alert("zChannel"+i+".path="+zchannel.path);
                zData.zchannel=zchannel;
                var p=zchannel.path.split("/");
                classification=p[0]; program=p[1]; channel=p[2];
                if (!program) program=classification; //ERS210320 #81327
                if (!channel) channel=program; //ERS210320 #81327
            } catch (e) {
                alert("zChannel"+i+" not valid. "+e+" from "+zchannel);
            }
        }
         //insurance against other actions expecting zchannel.action
        if (!zData.zchannel) { zData.zchannel={"action":""}; } //ERS211122 #86799 clientCase is too dangerous a default
        else if (!zData.zchannel.action) { zData.zchannel.action=""; } //ERS211122 #86799 for service cloud
        
        if (!channel) break;
        
        var c=channel; if (c.indexOf("1")===0) c=c.substring(1);
        zData.channels=i;
        alert("ERS200205.97 "+doc.deliveredTo+" ?= "+ c+ " but zchannel.fax="+zchannel.fax);
        if (doc.deliveredTo.indexOf(c)>-1 || doc.deliveredTo == zchannel.fax) { //ERS210320 #81327 .fax check keeps .path pure
            zData.channel=channel; zData.programName=program; 
            if(!isNaN(c)) zData.channel[program]=channel; //reverse lookup for fax
            //zData.Affiliate=affiliate; 
            zData.classification=classification;
            zData.attachRecords=attachRecords; //ERS190620
            if (doc.deliveredTo.indexOf(".")==-1) break; //ERS200205 check them all if using subchannels #68825
        } 
        

    }
    alert("+++ ENDING zData.setbrandprogram +++");
    alert("@@@ origin = " + zData.classification+"/"+zData.programName+"/"+zData.channel);
    //alert("@@@ zData.Affiliate = " + zData.Affiliate);
};

/* this is an untested function to detect the sandbox name and assign values */ //ERS170522 activating
zData.orgSwitch=function(doc) { //ERS170512
    alert("sfUser is "+doc.sfUserName);
    zData.patEnrollQueueId = ""+XCustomSetting(doc,"patientQueueId__c"); //'00G4C000000LkmZ'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
    zData.recTypeRequest = ""+XCustomSetting(doc,"recTypeRequest__c"); //'0124C000000Cj5Y'; //ID of the Case Record Type Request_PS_MVN
};
zData.orgSwitch(doc); //ERS170822

zData.getDataEntryFields=function(doc,zd) { //ERS190619 copy wddata info into zData
    if (!zd) zd=zData; //use zData or zd
};

zData.addStage=function(doc,arrOfPairs,stage) { //ERS170909 #40592 for zDocSet statuses
    return arrOfPairs;
}

//In Client Library zData.newCase=function(doc,arrOfPairs,label,zd) {};

zData.initializeStack=function(doc,stackFolder,stackId) { //ERS170512 moved to library
};

zData.countPages = function(doc, pageRange2) {  //ERS170512 moved to library
    var pages = pageRange2.split(",");
    if (!pages) pages=[pageRange2];
    alert("zData.countPages pages = " + pages);
    //return pages.length;
    return (""+pages.length); //ERS190802 #61272 TODO in WAR
};

zData.exposePDF=function(doc,sfId,pageRange) { //ERS170522 added pageRange
    var formatNow = getCurDateAndTime(doc,false,true);
    var arrOfPairs = [];
    var nowTimeStamp = new Date().getTime() + "";
    
    var fileName = getCurDate(doc) + " New Fax.pdf";
    alert("@@@fileName = "+fileName);
    
    createDirectory(doc, zData.uploadDir, nowTimeStamp);
    
    //AN170522 should xPages be passed in as a variable?
    var xPages = X(doc, "X_position");
    if (pageRange) xPages=pageRange;  //ERS170522
    if (xPages === "*" || xPages === "all") { //ERS210424 copper
        newPDFName=doc.URL;
    } else {
        alert("@@@@@ Calling splitPDF to split off pages to upload as PDF, pages = " + xPages + ", nowTimeStamp = " + nowTimeStamp);
        var response = splitPDF(doc, xPages, zData.uploadDir, nowTimeStamp, fileName);
        alert("@@@@ response from splitPDF = " + response);
        var newPDFName = X(doc, "newPDF", response);
        alert("@@@@ split PDF FileName = " + newPDFName);
    }
    
    var uploadURL="http://localhost:8080/myfileforce/uploadToCloud.jsp?SFid=NEW&SFpid="+sfId+"&SForg="+doc.sfOrg+"&label="+fileName+"&serverFile="+newPDFName+"&Description=File attached as PDF";
    alert("#### Upload native PDF with "+uploadURL);
    var r=wget(doc, uploadURL); //ERS170512 was zData.uploadURL
    alert("#### Fax Received. Attached to: " + sfId);
    // Finally, delete the folder and all contents.
    cleanupDirectory(doc, zData.uploadDir, nowTimeStamp);
    // Now set the label in our Snippet
    arrOfPairs = [];
    arrOfPairs.push("db-label", "New file " + formatNow);
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    updateDB(doc, arrOfPairs);
};

zData.getStackId=function(doc,ids,stackTypeName) { //ERS190617 from UNLOCK //TODO ERS190624 find stackTypeName needed doc
    if (!ids || ids==="") ids = X(doc,"X_attachedTo"); //ERS190618 TODO confirm doc in scope
    ids = ids + "";
	if (ids.lastIndexOf('/') >= 0) { //ERS190618 get first Id if / is passed in
		ids = ids.substring(ids.lastIndexOf('/')+1);
//CRN201023 #76788 This code assumes that the first attachedTo Id is a Stack. We've see that is not always the case.
// Look through the list of Ids, searching for the one that is actually a zStack Id.
//		if (ids.indexOf(',') >= 0) { ids = ids.substring(0, ids.indexOf(',')); }
//		return ids;
	}
    
    if (!stackTypeName) stackTypeName="ZPAPER__zStack__c"; //ERS190624 guessing TODO find examples
    var parts = ids.split(',');
    for (var i=0; i<parts.length; i++) { //get kast Id if / is NOT passed in
        var id = parts[i].trim();
        if (id.length > 0) {
            alert("@@@@ pulling type for id: " + id);
            if (stackTypeName === getSFType(doc, id)) {
                return id;
            }
        }
    }
    return null; //ERS201023 #76788 restored null but CRN tested ""
};
zData.setGlobalVariables(doc); //call function to set variables
/* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
