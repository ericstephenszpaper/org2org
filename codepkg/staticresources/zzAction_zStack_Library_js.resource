<!--
// Name: zStack Library
// Committer: eric.stephens@zpaper.com
// Update: ERS211215 #87826 zPaper2020 package from 4/20/2021 on has them zp2=""; //ERS200209 until in package
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-12-16 02:33:33","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLkFmZmlsaWF0ZSA9ICIiOwp6RGF0YS56cD0iWlBBUEVSX18iOyAvL0VSUzE5MDYxNyAjNTI2NjEKekRhdGEuenBzPXpEYXRhLnpwKyJ6U3RhY2tfX2MiOwp6RGF0YS5zZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwppZiAoIXpEYXRhLnNmSUQgfHwgMCA9PT0gekRhdGEuc2ZJRC5sZW5ndGgpIHsKICAgIHpEYXRhLnNmSUQgPSBnZXRBbHRlcm5hdGVCYXJjb2RlT25lKGRvYykgKyAiIjsKfQp6RGF0YS5mb3JtYXROb3c9ekRhdGEubm93PWdldEN1ckRhdGVBbmRUaW1lKGRvYyk7IC8vRVJTMTkwNjI0IHdhcyBqdXN0IC5ub3cKekRhdGEuYXR0YWNoUmVjb3Jkcz1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIlJlY29yZHNfX2MiKS50cmltKCk7CmlmICghekRhdGEuYXR0YWNoUmVjb3JkcykgeyB6RGF0YS5hdHRhY2hSZWNvcmRzPSJDYXNlLExlYWQiO30gLy9DYXNlLENvbnRhY3QsQWNjb3VudCxQYXRpZW50LExlYWQKCmlmICgxPT09MSkgeyAvL0VSUzIxMDMyMCAjODEzMjcgVE9ETyBnZXQgemlwcGkyIGZpeGVkIHRvIHNvIHRoYXQgdGhpcyBpcyBhbHJlYWR5IGRvbmUKICAgIHpEYXRhLmZyb21GaWxlPVgoZG9jLCJYX2Zyb21GaWxlIik7IC8vRVJTMTkwODE0IFRPRE8/IGRvIGluIGxpYnJhcnk/CiAgICBpZiAoIXpEYXRhLmZyb21GaWxlKSB7IC8vRVJTMjEwMzIwICM4MTMyNwogICAgICAgIHpEYXRhLmZyb21GaWxlPWRvYy5VUkwuc3Vic3RyaW5nKGRvYy5VUkwubGFzdEluZGV4T2YoIi8iKSsxKTsgCiAgICAgICAgYWxlcnQoIkVSUzIxMDMyMC4xNyAjODEzMjcgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGlmICghZG9jLmRlbGl2ZXJlZFRvKSB7IC8vRVJTMjEwMzIwICM4MTMyNwogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMjAgIzgxMzI3IHJlcGFpcmluZyBkb2MuZGVsaXZlcmVkVG8gdXNpbmcgIit6RGF0YS5mcm9tRmlsZSk7CiAgICAgICAgZG9jLmRlbGl2ZXJlZFRvPXpEYXRhLmZyb21GaWxlLnNwbGl0KCItIilbMV07CiAgICB9Cn0KCi8vSlBCMjAxMDIzIHRoZXNlIGFyZSBub3QgZGVmaW5lZCBhbnl3aGVyZSBzbyBJIGd1ZXNzIEkgd2lsbCBkbyBpdCBoZXJlCnpEYXRhLlBST0dSQU1fWkNIQVJUQSA9ICJ6Q2hhcnRhIjsKekRhdGEuUFJPR1JBTV9aUEFQWVJVUyA9ICJ6UGFweXJ1cyI7CnpEYXRhLlBST0dSQU1fWkNBUlRBID0gInpDQVJUYSI7CgppZiAoMT09PTApIHsgLy9FUlMyMDAzMTQgaW4gY2xpZW50TGlicmFyeSAvL0VSUzE3MDgwNSBnZXQgdGhlIGRhdGEgZnJvbSB0aGUgRGVwbG95bWVudEluZm8gLy9FUlMxNzA5MDkgVE9ETyBkbyB0aGlzIHNhZmVseSB3aXRoIFhEZXBsb3ltZW50SW5mbyxYQ3VzdG9tU2V0dGluZwogICAgLy9hbGVydCgiRVJTMTcwNzI1IERJPSIrZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbyk7CiAgICB2YXIgY3M9KGRvYy5rYkRhdGEuZGVwbG95bWVudEluZm8rIiIpOyAvL25vdCBbIkJ1c2luZXNzX1Byb2Nlc3NfX2MiXTsKICAgIC8vYWxlcnQoIkVSUzE3MDgwNSBjcz0iK2NzKTsKICAgIGlmIChjcykgewogICAgICAgIGlmIChjcy5pbmRleE9mKCJ6Q3VzdG9tU2V0dGluZ3MiKT4tMSkgY3M9WChkb2MsInpDdXN0b21TZXR0aW5ncyIsY3MpOwogICAgICAgIGlmIChjcyAhPT0gIiIpIGV2YWwoY3MpOwogICAgICAgIGFsZXJ0KCJFUlMxNzA4MjIgaW1wb3J0IGZvciAiK2NzKTsKICAgIH0KfQoKLy9DUk4xNzAzMjQgVE9ETyBkb2MuY2xvbmUoKSBkb25lIHJpZ2h0Owp6RGF0YS5jbG9uZT1mdW5jdGlvbihkb2MpIHsKICAgdmFyIGRvYzA9W107CiAgIGZvciAodmFyIGkgaW4gZG9jKSBkb2MwW2ldPWRvY1tpXTsKICAgcmV0dXJuIGRvYzA7Cn07CgovLyBUaGlzIGZ1bmN0aW9uIG5lZWRzIHRvIGJlIGFkZGVkIHRvIGV2ZXJ5IHJ1bGUgdG8gaGVscCBhc3N1cmUgdGhhdCBydWxlcyBkbyBub3QgZ2V0IGFjY2lkZW50YWxseSB0cmlnZ2VyZWQKLy8gQWRkIHRoaXMgZnVuY3Rpb25hbGl0eSB0byB0aGUgcnVsZXMgZW5naW5lIGl0c2VsZj8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uID0gZnVuY3Rpb24oZG9jLHRyaWdnZXJGaWVsZCkgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh0cmlnZ2VyRmllbGQsICIiKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKCi8vQU4xOTA1MzAgdGVjaCBkZWJ0PyB1bnN1cmUgaG93IHRoaXMgZnVuY3Rpb24gaXMgbmVlZGVkCnpEYXRhLm5hbWVGaWxlID0gZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwODI5ICM0MTI5OCByZXR1cm5zIGEgbGFiZWwgdG8gYmUgdXNlZCBpbiBhbnkgYXR0YWNoZXMgYW5kIGZpeGVzIHRoZSBkb2MKICAgIC8vRG9jdW1lbnQgYXR0YWNobWVudCBsYWJlbCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIuICBDb25maXJtZWQgZm9yIHpQYXBlciBGaWxlIGFuZCBTRkRDIEF0dGFjaG1lbnQKICAgIHZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgIGRvYy5sYWJlbD1YKGRvYywiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpK1goZG9jLCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKSsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsKICAgIGFsZXJ0KCJFUlMxNzA4MjkgZGJJRD0iK2RvYy5kYklEKyIgbGFiZWw9Iitkb2MubGFiZWwpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkgPSBmdW5jdGlvbihkb2MpIHsgLy9NU0gxNzA4MzEgZXh0cmFjdCBkYXRlIGZvcm1hdCBmcm9tIHpEYXRhLm5hbWVGaWxlCiAgICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogICAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgICAvL01TSDE3MDkwNiBwYWQgZGF5IHdpdGggemVybwogICAgdmFyIGN1ckRheSA9IHRvZGF5LmdldERhdGUoKTsKICAgIC8vTVNIMTcwOTA2IHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsiIit0b2RheS5nZXREYXRlKCkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrKCIiKyhjdXJEYXkgPiA5ID8gY3VyRGF5KyIiIDogIjAiK2N1ckRheSkpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgLy9hbGVydCgiTU1kZFlZWVkgPT0gIiArIE1NZGRZWVlZKTsKICAgIHJldHVybiBNTWRkWVlZWTsKfTsKCnpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyA9IGZ1bmN0aW9uKGRvYykgeyByZXR1cm4gekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IH07IC8vTVNIMTcxMDA1IGdldCBhbGwgdGhlIG9yZ3MgaW4gaGVyZQp6RGF0YS5zZXRicmFuZHByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgcmV0dXJuIHpEYXRhLnNldEJyYW5kUHJvZ3JhbShkb2MpOyB9OyAvL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKICAgIAp6RGF0YS5zZXRCcmFuZFByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgLy9UT0RPIGRvIGh1YiB3aXRoIHNldHRpbmdzCiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICB2YXIgenA9ekRhdGEuenA7CiAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbj1kb2MuZGVsaXZlcmVkVG87CiAgICB6RGF0YS5jaGFubmVsPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLnByb2dyYW1OYW1lPWRvYy5kZWxpdmVyZWRUbzsKICAgIC8vekRhdGEuQWZmaWxpYXRlPWRvYy5kZWxpdmVyZWRUbzsKICAgIHZhciBkZWxpdmVyZWRUbyA9IGRvYy5kZWxpdmVyZWRUbyArICIiOwkvL0pQQjE5MDUyOSBDaGVjayBkZWxpdmVyZWRUbyBmb3IgY29tbXVuaXR5IHVwbG9hZGVzCiAgICBpZiAoIWlzTmFOKGRvYy5kZWxpdmVyZWRGcm9tKSkgeyB6RGF0YS5jaGFubmVsPSJGYXgiOyB9IC8vRVJTMTkwODEwICM2MTU3MCBzZXQgY2hhbmVuZWwgdG8gZmF4IGlmIG51bWJlciAKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCiAgICBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxOTA4MTIgIzYxNTExCiAgICBpZiAoaXNOYU4oZGVsaXZlcmVkVG8pKSB7CiAgICAJaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewogICAgCQl6RGF0YS5jaGFubmVsID0gIkNvbW11bml0eSI7CiAgICAJfSBlbHNlIHsKCQkgICAgekRhdGEuY2hhbm5lbD0iU2NhbiI7CgkgICAgfQogICAgfQogICAgdmFyIG1heENoYW5uZWxzPTI7IGlmICh6RGF0YS5tYXhDaGFubmVscykgbWF4Q2hhbm5lbHM9ekRhdGEubWF4Q2hhbm5lbHM7IC8vRVJTMTkwNzMxICM2MTI3MgogICAgbWF4Q2hhbm5lbHM9OTsgYWxlcnQoInpEYXRhLm1heENoYW5uZWxzPSIrekRhdGEubWF4Q2hhbm5lbHMpOyAvL0pQQjIwMTAyMyBuZWVkZWQgdG8gYWRkIGJlY2F1c2UgekNBUlRhIHdhcyBub3Qgc2hvd2luZyB1cCBpbiBQcm9ncmFtCiAgICBmb3IgKHZhciBpPTE7IGk8PW1heENoYW5uZWxzOyBpKyspIHsKICAgICAgICBpZiAoaT49MykgenA9IiI7IC8vMiBpbiBtYW5hZ2VkIHBhY2thZ2UgLy9FUlMyMDAyMDUgQ01BIGhlbHBlZCBzcG90IHRoZSBydWJiZXIgZHVja3khISEKICAgICAgICAKICAgICAgICB2YXIgY2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNoYW5uZWwiK2krIl9fYyIpOwogICAgICAgIHZhciBwcm9ncmFtPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiUHJvZ3JhbSIraSsiX19jIik7CiAgICAgICAgLy92YXIgYWZmaWxpYXRlPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQWZmaWxpYXRlIitpKyJfX2MiKTsKICAgICAgICB2YXIgY2xhc3NpZmljYXRpb249WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJDbGFzc2lmaWNhdGlvbiIraSsiX19jIik7CiAgICAgICAgdmFyIGF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLCJSZWNvcmRzIitpKyJfX2MiKTsgLy9ubyB6cCBpcyBkZWxpYmVyYXRlCiAgICAgICAgaWYgKCFhdHRhY2hSZWNvcmRzKSBhdHRhY2hSZWNvcmRzPXpEYXRhLmF0dGFjaFJlY29yZHM7CiAgICAgICAgCiAgICAgICAgLy96Q2hhbm5lbDMJeydwYXRoJzonT3JwaGFuIFJhcmUgRGlzZWFzZXMvUFJPQ1lTQkkvMTY3ODk0ODk3NzQuUFJPQ1lTQkknLCdkYi1yZWFkZXJzJzonOi0yMDEwMC4zOicsJ2RiLXVzZXJzJzonOi0yMDEwMC4zOid9CiAgICAgICAgdmFyIHpwMj16cDsgCiAgICAgICAgLy9FUlMyMTEyMTUgIzg3ODI2IHpQYXBlcjIwMjAgcGFja2FnZSBmcm9tIDQvMjAvMjAyMSBvbiBoYXMgdGhlbSB6cDI9IiI7IC8vRVJTMjAwMjA5IHVudGlsIGluIHBhY2thZ2UKICAgICAgICB2YXIgemNoYW5uZWw9WEN1c3RvbVNldHRpbmcoZG9jLHpwMisiekNoYW5uZWwiK2krIl9fYyIpOwogICAgICAgIGlmICh6Y2hhbm5lbCAmJiB6Y2hhbm5lbC5pbmRleE9mKCJ7IikgPT0gMCkgeyAvL0VSUzIwMDIwOSAjNjg4MjUgekNoYW5uZWwKICAgICAgICAgICAgdHJ5IHsKICAgICAgICAgICAgICAgIGlmICh6Y2hhbm5lbC5pbmRleE9mKCJ7JyIpPT0wKSB6Y2hhbm5lbD16Y2hhbm5lbC5yZXBsYWNlQWxsKCInIiwiXCIiKTsgLy9FUlMyMDAyMDkgSEFDSyBhcm91bmQgc3RhbGUgemlwcGkgY2FjaGUKICAgICAgICAgICAgICAgIHpjaGFubmVsPUpTT04ucGFyc2UoemNoYW5uZWwpOwogICAgICAgICAgICAgICAgYWxlcnQoInpDaGFubmVsIitpKyIucGF0aD0iK3pjaGFubmVsLnBhdGgpOwogICAgICAgICAgICAgICAgekRhdGEuemNoYW5uZWw9emNoYW5uZWw7CiAgICAgICAgICAgICAgICB2YXIgcD16Y2hhbm5lbC5wYXRoLnNwbGl0KCIvIik7CiAgICAgICAgICAgICAgICBjbGFzc2lmaWNhdGlvbj1wWzBdOyBwcm9ncmFtPXBbMV07IGNoYW5uZWw9cFsyXTsKICAgICAgICAgICAgICAgIGlmICghcHJvZ3JhbSkgcHJvZ3JhbT1jbGFzc2lmaWNhdGlvbjsgLy9FUlMyMTAzMjAgIzgxMzI3CiAgICAgICAgICAgICAgICBpZiAoIWNoYW5uZWwpIGNoYW5uZWw9cHJvZ3JhbTsgLy9FUlMyMTAzMjAgIzgxMzI3CiAgICAgICAgICAgIH0gY2F0Y2ggKGUpIHsKICAgICAgICAgICAgICAgIGFsZXJ0KCJ6Q2hhbm5lbCIraSsiIG5vdCB2YWxpZC4gIitlKyIgZnJvbSAiK3pjaGFubmVsKTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgICAgICAKICAgICAgICAvL2luc3VyYW5jZSBhZ2FpbnN0IG90aGVyIGFjdGlvbnMgZXhwZWN0aW5nIHpjaGFubmVsLmFjdGlvbgogICAgICAgIGlmICghekRhdGEuemNoYW5uZWwpIHsgekRhdGEuemNoYW5uZWw9eyJhY3Rpb24iOiIifTsgfSAvL0VSUzIxMTEyMiAjODY3OTkgY2xpZW50Q2FzZSBpcyB0b28gZGFuZ2Vyb3VzIGEgZGVmYXVsdAogICAgICAgIGVsc2UgaWYgKCF6RGF0YS56Y2hhbm5lbC5hY3Rpb24pIHsgekRhdGEuemNoYW5uZWwuYWN0aW9uPSIiOyB9IC8vRVJTMjExMTIyICM4Njc5OSBmb3Igc2VydmljZSBjbG91ZAogICAgICAgIAogICAgICAgIGlmICghY2hhbm5lbCkgYnJlYWs7CiAgICAgICAgCiAgICAgICAgdmFyIGM9Y2hhbm5lbDsgaWYgKGMuaW5kZXhPZigiMSIpPT09MCkgYz1jLnN1YnN0cmluZygxKTsKICAgICAgICB6RGF0YS5jaGFubmVscz1pOwogICAgICAgIGFsZXJ0KCJFUlMyMDAyMDUuOTcgIitkb2MuZGVsaXZlcmVkVG8rIiA/PSAiKyBjKyAiIGJ1dCB6Y2hhbm5lbC5mYXg9Iit6Y2hhbm5lbC5mYXgpOwogICAgICAgIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZihjKT4tMSB8fCBkb2MuZGVsaXZlcmVkVG8gPT0gemNoYW5uZWwuZmF4KSB7IC8vRVJTMjEwMzIwICM4MTMyNyAuZmF4IGNoZWNrIGtlZXBzIC5wYXRoIHB1cmUKICAgICAgICAgICAgekRhdGEuY2hhbm5lbD1jaGFubmVsOyB6RGF0YS5wcm9ncmFtTmFtZT1wcm9ncmFtOyAKICAgICAgICAgICAgaWYoIWlzTmFOKGMpKSB6RGF0YS5jaGFubmVsW3Byb2dyYW1dPWNoYW5uZWw7IC8vcmV2ZXJzZSBsb29rdXAgZm9yIGZheAogICAgICAgICAgICAvL3pEYXRhLkFmZmlsaWF0ZT1hZmZpbGlhdGU7IAogICAgICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbj1jbGFzc2lmaWNhdGlvbjsKICAgICAgICAgICAgekRhdGEuYXR0YWNoUmVjb3Jkcz1hdHRhY2hSZWNvcmRzOyAvL0VSUzE5MDYyMAogICAgICAgICAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIi4iKT09LTEpIGJyZWFrOyAvL0VSUzIwMDIwNSBjaGVjayB0aGVtIGFsbCBpZiB1c2luZyBzdWJjaGFubmVscyAjNjg4MjUKICAgICAgICB9CiAgICB9CiAgICBhbGVydCgiKysrIEVORElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIG9yaWdpbiA9ICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbisiLyIrekRhdGEucHJvZ3JhbU5hbWUrIi8iK3pEYXRhLmNoYW5uZWwpOwogICAgLy9hbGVydCgiQEBAIHpEYXRhLkFmZmlsaWF0ZSA9ICIgKyB6RGF0YS5BZmZpbGlhdGUpOwp9OwoKLyogdGhpcyBpcyBhbiB1bnRlc3RlZCBmdW5jdGlvbiB0byBkZXRlY3QgdGhlIHNhbmRib3ggbmFtZSBhbmQgYXNzaWduIHZhbHVlcyAqLyAvL0VSUzE3MDUyMiBhY3RpdmF0aW5nCnpEYXRhLm9yZ1N3aXRjaD1mdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA1MTIKICAgIGFsZXJ0KCJzZlVzZXIgaXMgIitkb2Muc2ZVc2VyTmFtZSk7CiAgICB6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJwYXRpZW50UXVldWVJZF9fYyIpOyAvLycwMEc0QzAwMDAwMExrbVonOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKICAgIHpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCn07CnpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL0VSUzE3MDgyMgoKekRhdGEuZ2V0RGF0YUVudHJ5RmllbGRzPWZ1bmN0aW9uKGRvYyx6ZCkgeyAvL0VSUzE5MDYxOSBjb3B5IHdkZGF0YSBpbmZvIGludG8gekRhdGEKICAgIGlmICghemQpIHpkPXpEYXRhOyAvL3VzZSB6RGF0YSBvciB6ZAogICAgdmFyIGZpZWxkcz1kb2Mud2RkYXRhLnNwbGl0KCI8WF8iKTsgCiAgICAvLzxYX1pQQVBFUl9fUHJvdmlkZXJfX3IuTmFtZT5Vbml0ZWQgT2lsICYgR2FzLCBTaW5nYXBvcmU8L1hfWlBBUEVSX19Qcm92aWRlcl9fci5OYW1lPgogICAgLy88WF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZT5Kb3NoIERhdmlzPC9YX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lPgogICAgLy88WF9aUEFQRVJfX0Nhc2VfX2M+NTAwNDQwMDAwMGxFaTMzQUFDPC9YX1pQQVBFUl9fQ2FzZV9fYz4KICAgIGZvciAodmFyIGkgaW4gZmllbGRzKSB7CiAgICAgICAgdmFyIG52PWZpZWxkc1tpXTsgLy8iWlBBUEVSX19DYXNlX19jPjUwMDQ0MDAwMDBsRWkzM0FBQzwvWF9aUEFQRVJfX0Nhc2VfX2M+IgogICAgICAgIHZhciBqPW52LmluZGV4T2YoIj4iKTsKICAgICAgICB2YXIgaz1udi5pbmRleE9mKCI8IixqKzEpOwogICAgICAgIGlmIChqPi0xICYmIGs+LTEpIHsKICAgICAgICAgICAgdmFyIG49IlhfIitudi5zdWJzdHJpbmcoMCxqKTsKICAgICAgICAgICAgdmFyIHY9bnYuc3Vic3RyaW5nKGorMSxrKTsKICAgICAgICAgICAgekRhdGFbbl09djsKICAgICAgICB9CiAgICB9CiAgICB6RGF0YS5jYXNlSWQgPSBYKGRvYywgIlhfWlBBUEVSX19DYXNlX19jIik7IC8vRVJTMTkwNjI0IFRPRE8gbW9yZSBvZiB0aGUgc2FtZQogICAgekRhdGEuY29udGFjdElkID0gWChkb2MsICJYX1pQQVBFUl9fUGF0aWVudF9fYyIpOwogICAgaWYgKCJBY2NvdW50Ij09PVhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50UmVjb3JkX19jIikpIHsgLy9FUlMxOTA4MTAgIzYxNTcwIC8vRVJTMTkwODExIGRvYywKICAgICAgICB6RGF0YS5jb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIpOwogICAgfQogICAgaWYgKHpEYXRhLmNvbnRhY3RJZCkgekRhdGEucGF0aWVudElkPXpEYXRhLmNvbnRhY3RJZDsgLy9UT0RPIFBlcnNvbmFsQWNjb3VudCBwcmVmZXJlbmNlIC0gRE9ORSBFUlMxOTA4MTAgLy9FUlMyMDAzMDUgY2hlY2sgekRhdGEuY29udGFjdElkCiAgICB6RGF0YS5wcm92aWRlcklkID0gWChkb2MsICJYX1pQQVBFUl9fUHJvdmlkZXJfX2MiKTsKICAgIC8vdmFyIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKICAgIC8vdmFyIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0xhc3ROYW1lX19jIik7CiAgICAvL3ZhciBwYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7CiAgICAvL0VSUzE5MDgwMiAjNjEyNzIgbWFyc2hhbGwgZnJvbSBYKCkgc2luY2UgdGhlIGRhdGUgZW50cnkgaW5mbyBub3QgYWxyZWFkeSBzYXZlZCBpbnRvIHdkZGF0YQogICAgekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2M9ekRhdGEuZG9jVHlwZSA9IFgoZG9jLCAiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsgLy9FUlMxOTA4MTAgUFYxOTA4MDggIzYxNTcwCiAgICB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jPXBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKICAgIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYz1wYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwogICAgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYz1wYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7Cn07Cgp6RGF0YS5hZGRTdGFnZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxzdGFnZSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKCXZhciBiYT0iIjsgLy9FUlMyMDAzMTQgIzcwMzM2CglpZiAoIXN0YWdlKSB7CiAgICAJYmE9WChkb2MsIlhfYnV0dG9uQWN0aW9uIikrImVkIjsgLy9FUlMyMDAzMTQgd2FzIGRvYy5YKCkgIzcwMzM2CiAgICAJaWYgKGJhLmluZGV4T2YoImVlZCIpPi0xKSBiYT1YKGRvYywiWF9idXR0b25BY3Rpb24iKSsiZCI7IC8vRVJTMjAwMzE0CiAgICAgCWJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgCXN0YWdlPWJhOyBpZiAoc3RhZ2UubGVuZ3RoKCk8NCkge3N0YWdlPSJSZWNlaXZlZCI7fQogICAgfSBlbHNlIHsKICAgICAgICBiYT1zdGFnZTsgLy9FUlMxOTA4MDIKICAgIH0KICAgIHZhciBub3cwID0gekRhdGEuZm9ybWF0Tm93OyBpZiAoIW5vdzApIG5vdzA9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOyAgLy9FUlMyMDAzMTQgIzcwMzM2CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIC8vQ1JOMjAxMDI1IENhc2UgIzc2Nzg4IE1vdmVkIHRvIHRoZSBhdXRvRHJpdmUgcnVsZXMgd2hlcmUgaXQgYmVsb25ncwogICAgLy8gaWYgKCF6RGF0YS5yZXZpZXdzKSB7IHpEYXRhLnJldmlld3M9WChkb2MsIlhfcmV2aWV3cyIpOyB9IC8vRVJTMjAwNDE4ICM3MTQxNSBhdXRvZHJpdmUKICAgIHpEYXRhLnJldmlld3MrPWJhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+IjsgLy9FUlMyMDA0MTggIzcxNDE1IGF1dG9kcml2ZQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLHpEYXRhLnJldmlld3MpOyAvL0VSUzE3MDkwOSAjNDA1OTIKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKICAgIHJldHVybiBhcnJPZlBhaXJzOwp9CgovL0luIENsaWVudCBMaWJyYXJ5IHpEYXRhLm5ld0Nhc2U9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHt9OwoKekRhdGEuaW5pdGlhbGl6ZVN0YWNrPWZ1bmN0aW9uKGRvYyxzdGFja0ZvbGRlcixzdGFja0lkKSB7IC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgdmFyIGZpbmFsUm9vdEZvbGRlciA9IHpEYXRhLnByb2dyYW1OYW1lKyItQXJjaGl2ZSI7IC8vYmF0ZXMgb2YgdGhlIEFyY2hpdmUgZm9sZGVyCiAgdmFyIHl5eXlNTUZvbGRlck5hbWUgPSB0b2RheS5nZXRGdWxsWWVhcigpICsgKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKTsKICB2YXIgeXl5eU1NRm9sZGVyID0gZmluYWxSb290Rm9sZGVyICsgIi0iICsgeXl5eU1NRm9sZGVyTmFtZTsKICBhbGVydCgiQEBAIHN0YWNrRm9sZGVyIGlzIC0gIiArIHN0YWNrRm9sZGVyKTsKICBhbGVydCgiQEBAIGZpbmFsUm9vdEZvbGRlciBpcyAtICIgKyBmaW5hbFJvb3RGb2xkZXIpOwogIGFsZXJ0KCJAQEAgeXlNTUZvbGRlciBpcyAtICIgKyB5eXl5TU1Gb2xkZXIpOwogIGFsZXJ0KCJAQEAgY3JlYXRpbmcgbmV3IHN0YWNrIGRlc3RpbmFpb24gZm9sZGVyIHdpdGggbmFtZSAtICIgKyBzdGFja0ZvbGRlcik7CiAgLyogUmVmcmVzaCB0aGUgY3VycmVudCBmb2xkZXIgKi8KICByZWxvYWRCeUlkKGRvYywgWChkb2MsIlhfY3VyRm9sZGVyIikpOwogIC8qIHNhbWUgdmFsdWUgZm9yIEJBVEVTIGFuZCBsYWJlbCAqLwogIC8qIFRoZSBmb2xkZXIgc3RydWN0dXJlIHdpbGwgbG9vayBsaWtlIHRoaXM6IC8yMDE2MDgvM0NYM0NYLzEyMzQ1Njc4OS1TVEFDSyAqLwogIGNyZWF0ZUZvbGRlcihkb2MsIGZpbmFsUm9vdEZvbGRlciwgeXl5eU1NRm9sZGVyLCB5eXl5TU1Gb2xkZXJOYW1lKTsKICBjcmVhdGVGb2xkZXIoZG9jLCB5eXl5TU1Gb2xkZXIsIHN0YWNrRm9sZGVyLCBzdGFja0ZvbGRlcik7CiAgYWxlcnQoIkBAQEAgTW92aW5nIHRoZSBzdGFjayBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4SW5pdGlhbGl6ZWQiLCAidHJ1ZSIpOwogIGlmICgxPT0xKSB7IC8vRVJTMjAwMjA1ICM2ODgyNSBUT0RPIENSTiB0byByZXZpZXcgbW92ZURvY3VtZW50IGFuZCBpZiB3ZSBuZWVkIGl0IHRoZW4gZml4IHRoZSB4X3N0YWNrIHByb2JsZW0gd2l0aCBpdAogICAgbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzdGFja0lkKTsKICAgIC8vRVJTMjAwMjIyIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBkb2Mua2JEYXRhLmdyb3VwSUQuc3Vic3RyaW5nKDEpICsgIi0iICsgc3RhY2tJZCArICItU1RBQ0siKTsKICB9CiAgYWxlcnQoIkVSUzIwMDIwNSBzdGFja0lkPSIrc3RhY2tJZCk7CiAgLyogU3RhY2sgTGFiZWxsaW5nIENoYW5nZSAqLwogIHZhciBkdFN0YW1wID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSk7CiAgLyogYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIlN0YWNrIC0gIiArIGR0U3RhbXApOyAqLwogIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKCnpEYXRhLmNvdW50UGFnZXMgPSBmdW5jdGlvbihkb2MsIHBhZ2VSYW5nZTIpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBwYWdlcyA9IHBhZ2VSYW5nZTIuc3BsaXQoIiwiKTsKICAgIGlmICghcGFnZXMpIHBhZ2VzPVtwYWdlUmFuZ2UyXTsKICAgIGFsZXJ0KCJ6RGF0YS5jb3VudFBhZ2VzIHBhZ2VzID0gIiArIHBhZ2VzKTsKICAgIC8vcmV0dXJuIHBhZ2VzLmxlbmd0aDsKICAgIHJldHVybiAoIiIrcGFnZXMubGVuZ3RoKTsgLy9FUlMxOTA4MDIgIzYxMjcyIFRPRE8gaW4gV0FSCn07Cgp6RGF0YS5leHBvc2VQREY9ZnVuY3Rpb24oZG9jLHNmSWQscGFnZVJhbmdlKSB7IC8vRVJTMTcwNTIyIGFkZGVkIHBhZ2VSYW5nZQogICAgdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICB2YXIgbm93VGltZVN0YW1wID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIAogICAgdmFyIGZpbGVOYW1lID0gZ2V0Q3VyRGF0ZShkb2MpICsgIiBOZXcgRmF4LnBkZiI7CiAgICBhbGVydCgiQEBAZmlsZU5hbWUgPSAiK2ZpbGVOYW1lKTsKICAgIAogICAgY3JlYXRlRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAgCiAgICAvL0FOMTcwNTIyIHNob3VsZCB4UGFnZXMgYmUgcGFzc2VkIGluIGFzIGEgdmFyaWFibGU/CiAgICB2YXIgeFBhZ2VzID0gWChkb2MsICJYX3Bvc2l0aW9uIik7CiAgICBpZiAocGFnZVJhbmdlKSB4UGFnZXM9cGFnZVJhbmdlOyAgLy9FUlMxNzA1MjIKICAgIGFsZXJ0KCJAQEBAQCBDYWxsaW5nIHNwbGl0UERGIHRvIHNwbGl0IG9mZiBwYWdlcyB0byB1cGxvYWQgYXMgUERGLCBwYWdlcyA9ICIgKyB4UGFnZXMgKyAiLCBub3dUaW1lU3RhbXAgPSAiICsgbm93VGltZVN0YW1wKTsKICAgIHZhciByZXNwb25zZSA9IHNwbGl0UERGKGRvYywgeFBhZ2VzLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCwgZmlsZU5hbWUpOwogICAgYWxlcnQoIkBAQEAgcmVzcG9uc2UgZnJvbSBzcGxpdFBERiA9ICIgKyByZXNwb25zZSk7CiAgICB2YXIgbmV3UERGTmFtZSA9IFgoZG9jLCAibmV3UERGIiwgcmVzcG9uc2UpOwogICAgCiAgICBhbGVydCgiQEBAQCBzcGxpdCBQREYgRmlsZU5hbWUgPSAiICsgbmV3UERGTmFtZSk7CiAgICAKICAgIHZhciB1cGxvYWRVUkw9Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9teWZpbGVmb3JjZS91cGxvYWRUb0Nsb3VkLmpzcD9TRmlkPU5FVyZTRnBpZD0iK3NmSWQrIiZTRm9yZz0iK2RvYy5zZk9yZysiJmxhYmVsPSIrZmlsZU5hbWUrIiZzZXJ2ZXJGaWxlPSIrbmV3UERGTmFtZSsiJkRlc2NyaXB0aW9uPUZpbGUgYXR0YWNoZWQgYXMgUERGIjsKICAgIGFsZXJ0KCIjIyMjIFVwbG9hZCBuYXRpdmUgUERGIHdpdGggIit1cGxvYWRVUkwpOwogICAgdmFyIHI9d2dldChkb2MsIHVwbG9hZFVSTCk7IC8vRVJTMTcwNTEyIHdhcyB6RGF0YS51cGxvYWRVUkwKICAgIGFsZXJ0KCIjIyMjIEZheCBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKICAgIC8vIEZpbmFsbHksIGRlbGV0ZSB0aGUgZm9sZGVyIGFuZCBhbGwgY29udGVudHMuCiAgICBjbGVhbnVwRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAgLy8gTm93IHNldCB0aGUgbGFiZWwgaW4gb3VyIFNuaXBwZXQKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiTmV3IGZpbGUgIiArIGZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7Cn07Cgp6RGF0YS5nZXRTdGFja0lkPWZ1bmN0aW9uKGRvYyxpZHMsc3RhY2tUeXBlTmFtZSkgeyAvL0VSUzE5MDYxNyBmcm9tIFVOTE9DSyAvL1RPRE8gRVJTMTkwNjI0IGZpbmQgc3RhY2tUeXBlTmFtZSBuZWVkZWQgZG9jCiAgICBpZiAoIWlkcyB8fCBpZHM9PT0iIikgaWRzID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOyAvL0VSUzE5MDYxOCBUT0RPIGNvbmZpcm0gZG9jIGluIHNjb3BlCiAgICBpZHMgPSBpZHMgKyAiIjsKCWlmIChpZHMubGFzdEluZGV4T2YoJy8nKSA+PSAwKSB7IC8vRVJTMTkwNjE4IGdldCBmaXJzdCBJZCBpZiAvIGlzIHBhc3NlZCBpbgoJCWlkcyA9IGlkcy5zdWJzdHJpbmcoaWRzLmxhc3RJbmRleE9mKCcvJykrMSk7Ci8vQ1JOMjAxMDIzICM3Njc4OCBUaGlzIGNvZGUgYXNzdW1lcyB0aGF0IHRoZSBmaXJzdCBhdHRhY2hlZFRvIElkIGlzIGEgU3RhY2suIFdlJ3ZlIHNlZSB0aGF0IGlzIG5vdCBhbHdheXMgdGhlIGNhc2UuCi8vIExvb2sgdGhyb3VnaCB0aGUgbGlzdCBvZiBJZHMsIHNlYXJjaGluZyBmb3IgdGhlIG9uZSB0aGF0IGlzIGFjdHVhbGx5IGEgelN0YWNrIElkLgovLwkJaWYgKGlkcy5pbmRleE9mKCcsJykgPj0gMCkgeyBpZHMgPSBpZHMuc3Vic3RyaW5nKDAsIGlkcy5pbmRleE9mKCcsJykpOyB9Ci8vCQlyZXR1cm4gaWRzOwoJfQogICAgCiAgICBpZiAoIXN0YWNrVHlwZU5hbWUpIHN0YWNrVHlwZU5hbWU9IlpQQVBFUl9felN0YWNrX19jIjsgLy9FUlMxOTA2MjQgZ3Vlc3NpbmcgVE9ETyBmaW5kIGV4YW1wbGVzCiAgICB2YXIgcGFydHMgPSBpZHMuc3BsaXQoJywnKTsKICAgIGZvciAodmFyIGk9MDsgaTxwYXJ0cy5sZW5ndGg7IGkrKykgeyAvL2dldCBrYXN0IElkIGlmIC8gaXMgTk9UIHBhc3NlZCBpbgogICAgICAgIHZhciBpZCA9IHBhcnRzW2ldLnRyaW0oKTsKICAgICAgICBpZiAoaWQubGVuZ3RoID4gMCkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBwdWxsaW5nIHR5cGUgZm9yIGlkOiAiICsgaWQpOwogICAgICAgICAgICBpZiAoc3RhY2tUeXBlTmFtZSA9PT0gZ2V0U0ZUeXBlKGRvYywgaWQpKSB7CiAgICAgICAgICAgICAgICByZXR1cm4gaWQ7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICByZXR1cm4gbnVsbDsgLy9FUlMyMDEwMjMgIzc2Nzg4IHJlc3RvcmVkIG51bGwgYnV0IENSTiB0ZXN0ZWQgIiIKfTsKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzKGRvYyk7IC8vY2FsbCBmdW5jdGlvbiB0byBzZXQgdmFyaWFibGVzCi8qIEVORCAqLw=="},"ordinal":1}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//global variables
zData.programName = "";
zData.Affiliate = "";
zData.zp="ZPAPER__"; //ERS190617 #52661
zData.zps=zData.zp+"zStack__c";
zData.sfID = getBarcodeOne(doc);
if (!zData.sfID || 0 === zData.sfID.length) {
    zData.sfID = getAlternateBarcodeOne(doc) + "";
}
zData.formatNow=zData.now=getCurDateAndTime(doc); //ERS190624 was just .now
zData.attachRecords=XCustomSetting(doc,zData.zp+"Records__c").trim();
if (!zData.attachRecords) { zData.attachRecords="Case,Lead";} //Case,Contact,Account,Patient,Lead

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

//JPB201023 these are not defined anywhere so I guess I will do it here
zData.PROGRAM_ZCHARTA = "zCharta";
zData.PROGRAM_ZPAPYRUS = "zPapyrus";
zData.PROGRAM_ZCARTA = "zCARTa";

if (1===0) { //ERS200314 in clientLibrary //ERS170805 get the data from the DeploymentInfo //ERS170909 TODO do this safely with XDeploymentInfo,XCustomSetting
    //alert("ERS170725 DI="+doc.kbData.deploymentInfo);
    var cs=(doc.kbData.deploymentInfo+""); //not ["Business_Process__c"];
    //alert("ERS170805 cs="+cs);
    if (cs) {
        if (cs.indexOf("zCustomSettings")>-1) cs=X(doc,"zCustomSettings",cs);
        if (cs !== "") eval(cs);
        alert("ERS170822 import for "+cs);
    }
}

//CRN170324 TODO doc.clone() done right;
zData.clone=function(doc) {
   var doc0=[];
   for (var i in doc) doc0[i]=doc[i];
   return doc0;
};

// This function needs to be added to every rule to help assure that rules do not get accidentally triggered
// Add this functionality to the rules engine itself?
zData.clearTriggerCondition = function(doc,triggerField) {  //ERS170512 moved to library
    var arrOfPairs = [];
    arrOfPairs.push(triggerField, "");
    updateDB(doc,arrOfPairs);
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
        if (i>=3) zp=""; //2 in managed package //ERS200205 CMA helped spot the rubber ducky!!!
        
        var channel=XCustomSetting(doc,zp+"Channel"+i+"__c");
        var program=XCustomSetting(doc,zp+"Program"+i+"__c");
        //var affiliate=XCustomSetting(doc,zp+"Affiliate"+i+"__c");
        var classification=XCustomSetting(doc,zp+"Classification"+i+"__c");
        var attachRecords=XCustomSetting(doc,"Records"+i+"__c"); //no zp is deliberate
        if (!attachRecords) attachRecords=zData.attachRecords;
        
        //zChannel3	{'path':'Orphan Rare Diseases/PROCYSBI/16789489774.PROCYSBI','db-readers':':-20100.3:','db-users':':-20100.3:'}
        var zp2=zp; 
        //ERS211215 #87826 zPaper2020 package from 4/20/2021 on has them zp2=""; //ERS200209 until in package
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
    var fields=doc.wddata.split("<X_"); 
    //<X_ZPAPER__Provider__r.Name>United Oil & Gas, Singapore</X_ZPAPER__Provider__r.Name>
    //<X_ZPAPER__Patient__r.Name>Josh Davis</X_ZPAPER__Patient__r.Name>
    //<X_ZPAPER__Case__c>5004400000lEi33AAC</X_ZPAPER__Case__c>
    for (var i in fields) {
        var nv=fields[i]; //"ZPAPER__Case__c>5004400000lEi33AAC</X_ZPAPER__Case__c>"
        var j=nv.indexOf(">");
        var k=nv.indexOf("<",j+1);
        if (j>-1 && k>-1) {
            var n="X_"+nv.substring(0,j);
            var v=nv.substring(j+1,k);
            zData[n]=v;
        }
    }
    zData.caseId = X(doc, "X_ZPAPER__Case__c"); //ERS190624 TODO more of the same
    zData.contactId = X(doc, "X_ZPAPER__Patient__c");
    if ("Account"===XCustomSetting(doc,"ZPAPER__PatientRecord__c")) { //ERS190810 #61570 //ERS190811 doc,
        zData.contactId = X(doc, "X_ZPAPER__PatientAccount__c");
    }
    if (zData.contactId) zData.patientId=zData.contactId; //TODO PersonalAccount preference - DONE ERS190810 //ERS200305 check zData.contactId
    zData.providerId = X(doc, "X_ZPAPER__Provider__c");
    //var patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
    //var patientLastName = X(doc, "X_ZPAPER__LastName__c");
    //var patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
    //ERS190802 #61272 marshall from X() since the date entry info not already saved into wddata
    zData.X_ZPAPER__faxType__c=zData.docType = X(doc, "X_ZPAPER__faxType__c"); //ERS190810 PV190808 #61570
    zData.X_ZPAPER__FirstName__c=patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
    zData.X_ZPAPER__LastName__c=patientLastName = X(doc, "X_ZPAPER__LastName__c");
    zData.X_ZPAPER__Birthdate__c=patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
};

zData.addStage=function(doc,arrOfPairs,stage) { //ERS170909 #40592 for zDocSet statuses
	var ba=""; //ERS200314 #70336
	if (!stage) {
    	ba=X(doc,"X_buttonAction")+"ed"; //ERS200314 was doc.X() #70336
    	if (ba.indexOf("eed")>-1) ba=X(doc,"X_buttonAction")+"d"; //ERS200314
     	ba=ba.substring(1+ba.lastIndexOf(" "));
    	stage=ba; if (stage.length()<4) {stage="Received";}
    } else {
        ba=stage; //ERS190802
    }
    var now0 = zData.formatNow; if (!now0) now0=getCurDateAndTime(doc,false,true);  //ERS200314 #70336
    arrOfPairs.push("X_reviewedStatus",ba);
    //CRN201025 Case #76788 Moved to the autoDrive rules where it belongs
    // if (!zData.reviews) { zData.reviews=X(doc,"X_reviews"); } //ERS200418 #71415 autodrive
    zData.reviews+=ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"; //ERS200418 #71415 autodrive
    arrOfPairs.push("X_reviews",zData.reviews); //ERS170909 #40592
    arrOfPairs.push("X_buttonAction","");
    return arrOfPairs;
}

//In Client Library zData.newCase=function(doc,arrOfPairs,label,zd) {};

zData.initializeStack=function(doc,stackFolder,stackId) { //ERS170512 moved to library
  var arrOfPairs = [];
  var today = new Date();
  var curMonth = today.getMonth() + 1;
  var finalRootFolder = zData.programName+"-Archive"; //bates of the Archive folder
  var yyyyMMFolderName = today.getFullYear() + (curMonth > 9 ? curMonth+"" : "0"+curMonth);
  var yyyyMMFolder = finalRootFolder + "-" + yyyyMMFolderName;
  alert("@@@ stackFolder is - " + stackFolder);
  alert("@@@ finalRootFolder is - " + finalRootFolder);
  alert("@@@ yyMMFolder is - " + yyyyMMFolder);
  alert("@@@ creating new stack destinaion folder with name - " + stackFolder);
  /* Refresh the current folder */
  reloadById(doc, X(doc,"X_curFolder"));
  /* same value for BATES and label */
  /* The folder structure will look like this: /201608/3CX3CX/123456789-STACK */
  createFolder(doc, finalRootFolder, yyyyMMFolder, yyyyMMFolderName);
  createFolder(doc, yyyyMMFolder, stackFolder, stackFolder);
  alert("@@@@ Moving the stack document into the stack folder: " + stackFolder);
  arrOfPairs.push("X_indexInitialized", "true");
  if (1==1) { //ERS200205 #68825 TODO CRN to review moveDocument and if we need it then fix the x_stack problem with it
    moveDocument(doc,"",stackFolder);
    arrOfPairs.push("X_stack", stackId);
    //ERS200222 arrOfPairs.push("db-BATES", doc.kbData.groupID.substring(1) + "-" + stackId + "-STACK");
  }
  alert("ERS200205 stackId="+stackId);
  /* Stack Labelling Change */
  var dtStamp = getCurDateAndTime(doc, false);
  /* arrOfPairs.push("db-label","Stack - " + dtStamp); */
  updateDB(doc,arrOfPairs);
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
    alert("@@@@@ Calling splitPDF to split off pages to upload as PDF, pages = " + xPages + ", nowTimeStamp = " + nowTimeStamp);
    var response = splitPDF(doc, xPages, zData.uploadDir, nowTimeStamp, fileName);
    alert("@@@@ response from splitPDF = " + response);
    var newPDFName = X(doc, "newPDF", response);
    
    alert("@@@@ split PDF FileName = " + newPDFName);
    
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
