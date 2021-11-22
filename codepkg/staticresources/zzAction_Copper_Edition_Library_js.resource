<!--
// Name: Copper Edition Library
// Committer: eric.stephens@zpaper.com
// Update: ERS211122 #86799 clientCase is too dangerous a default; ERS211122 #86799 for service cloud
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-11-22 21:38:04","evalContinue":"true","active":true,"button":"","name":"Copper Edition Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLnpwPSJaUEFQRVJfXyI7IC8vVE9ETyBaUEFQRVI2X18KekRhdGEuenBzPSJSZWNlaXZlZERvY3VtZW50IjsgLy96RGF0YS56cCsielN0YWNrX19jIjsgLy9FUlMyMTA0MjQgIzgyMDgxCi8vVE9ETyByZWFkIHRoZSBjaGFubmVsIGRlZmluaXRpb25zIGluIHNldEJyYW5kUHJvZ3JhbSBhbmQgbWFrZSBDYXNlIGlmIG5vdCBIZWFsdGhDbG91ZAp6RGF0YS5lZGl0aW9uPSJDb3BwZXIiOyAvL0VSUzIxMDQyNCBkbyBub3QgbWFrZSBhIHpTdGFjayBhbmQgdXNlIExGIHRoYXQgYXJlIGVuY3J5cHRlZCBQREZzCnpEYXRhLnNmSUQgPSBnZXRCYXJjb2RlT25lKGRvYyk7CmlmICghekRhdGEuc2ZJRCB8fCAwID09PSB6RGF0YS5zZklELmxlbmd0aCkgewogICAgekRhdGEuc2ZJRCA9IGdldEFsdGVybmF0ZUJhcmNvZGVPbmUoZG9jKSArICIiOwp9CnpEYXRhLmZvcm1hdE5vdz16RGF0YS5ub3c9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsgLy9FUlMxOTA2MjQgd2FzIGp1c3QgLm5vdwp6RGF0YS5hdHRhY2hSZWNvcmRzPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiUmVjb3Jkc19fYyIpLnRyaW0oKTsKaWYgKCF6RGF0YS5hdHRhY2hSZWNvcmRzKSB7IHpEYXRhLmF0dGFjaFJlY29yZHM9IkNhc2UsTGVhZCxBY2NvdW50LENvbnRhY3QsT3JkZXIsUmVjZWl2ZWREb2N1bWVudCI7fSAvL0VSUzIxMDQyNCAjODIwODEKCmlmICgxPT09MSkgeyAvL0VSUzIxMDMyMCAjODEzMjcgVE9ETyBnZXQgemlwcGkyIGZpeGVkIHRvIHNvIHRoYXQgdGhpcyBpcyBhbHJlYWR5IGRvbmUKICAgIHpEYXRhLmZyb21GaWxlPVgoZG9jLCJYX2Zyb21GaWxlIik7IC8vRVJTMTkwODE0IFRPRE8/IGRvIGluIGxpYnJhcnk/CiAgICBpZiAoIXpEYXRhLmZyb21GaWxlKSB7IC8vRVJTMjEwMzIwICM4MTMyNwogICAgICAgIHpEYXRhLmZyb21GaWxlPWRvYy5VUkwuc3Vic3RyaW5nKGRvYy5VUkwubGFzdEluZGV4T2YoIi8iKSsxKTsgCiAgICAgICAgYWxlcnQoIkVSUzIxMDMyMC4xNyAjODEzMjcgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGlmICghZG9jLmRlbGl2ZXJlZFRvKSB7IC8vRVJTMjEwMzIwICM4MTMyNwogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMjAgIzgxMzI3IHJlcGFpcmluZyBkb2MuZGVsaXZlcmVkVG8gdXNpbmcgIit6RGF0YS5mcm9tRmlsZSk7CiAgICAgICAgZG9jLmRlbGl2ZXJlZFRvPXpEYXRhLmZyb21GaWxlLnNwbGl0KCItIilbMV07CiAgICB9Cn0KCi8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmU9ZnVuY3Rpb24oZG9jKSB7CiAgIHZhciBkb2MwPVtdOwogICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXT1kb2NbaV07CiAgIHJldHVybiBkb2MwOwp9OwoKCi8vQU4xOTA1MzAgdGVjaCBkZWJ0PyB1bnN1cmUgaG93IHRoaXMgZnVuY3Rpb24gaXMgbmVlZGVkCnpEYXRhLm5hbWVGaWxlID0gZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwODI5ICM0MTI5OCByZXR1cm5zIGEgbGFiZWwgdG8gYmUgdXNlZCBpbiBhbnkgYXR0YWNoZXMgYW5kIGZpeGVzIHRoZSBkb2MKICAgIC8vRG9jdW1lbnQgYXR0YWNobWVudCBsYWJlbCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIuICBDb25maXJtZWQgZm9yIHpQYXBlciBGaWxlIGFuZCBTRkRDIEF0dGFjaG1lbnQKICAgIHZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgIGRvYy5sYWJlbD1YKGRvYywiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpK1goZG9jLCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKSsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsKICAgIGFsZXJ0KCJFUlMxNzA4MjkgZGJJRD0iK2RvYy5kYklEKyIgbGFiZWw9Iitkb2MubGFiZWwpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkgPSBmdW5jdGlvbihkb2MpIHsgLy9NU0gxNzA4MzEgZXh0cmFjdCBkYXRlIGZvcm1hdCBmcm9tIHpEYXRhLm5hbWVGaWxlCiAgICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogICAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgICAvL01TSDE3MDkwNiBwYWQgZGF5IHdpdGggemVybwogICAgdmFyIGN1ckRheSA9IHRvZGF5LmdldERhdGUoKTsKICAgIC8vTVNIMTcwOTA2IHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsiIit0b2RheS5nZXREYXRlKCkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrKCIiKyhjdXJEYXkgPiA5ID8gY3VyRGF5KyIiIDogIjAiK2N1ckRheSkpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgLy9hbGVydCgiTU1kZFlZWVkgPT0gIiArIE1NZGRZWVlZKTsKICAgIHJldHVybiBNTWRkWVlZWTsKfTsKCnpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyA9IGZ1bmN0aW9uKGRvYykgeyByZXR1cm4gekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IH07IC8vTVNIMTcxMDA1IGdldCBhbGwgdGhlIG9yZ3MgaW4gaGVyZQp6RGF0YS5zZXRicmFuZHByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgcmV0dXJuIHpEYXRhLnNldEJyYW5kUHJvZ3JhbShkb2MpOyB9OyAvL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKICAgIAp6RGF0YS5zZXRCcmFuZFByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgLy9UT0RPIGRvIGh1YiB3aXRoIHNldHRpbmdzCiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICB2YXIgenA9ekRhdGEuenA7CiAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbj1kb2MuZGVsaXZlcmVkVG87CiAgICB6RGF0YS5jaGFubmVsPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLnByb2dyYW1OYW1lPWRvYy5kZWxpdmVyZWRUbzsKICAgIC8vekRhdGEuQWZmaWxpYXRlPWRvYy5kZWxpdmVyZWRUbzsKICAgIHZhciBkZWxpdmVyZWRUbyA9IGRvYy5kZWxpdmVyZWRUbyArICIiOwkvL0pQQjE5MDUyOSBDaGVjayBkZWxpdmVyZWRUbyBmb3IgY29tbXVuaXR5IHVwbG9hZGVzCiAgICBpZiAoIWlzTmFOKGRvYy5kZWxpdmVyZWRGcm9tKSkgeyB6RGF0YS5jaGFubmVsPSJGYXgiOyB9IC8vRVJTMTkwODEwICM2MTU3MCBzZXQgY2hhbmVuZWwgdG8gZmF4IGlmIG51bWJlciAKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCiAgICBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxOTA4MTIgIzYxNTExCiAgICBpZiAoaXNOYU4oZGVsaXZlcmVkVG8pKSB7CiAgICAJaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewogICAgCQl6RGF0YS5jaGFubmVsID0gIkNvbW11bml0eSI7CiAgICAJfSBlbHNlIHsKCQkgICAgekRhdGEuY2hhbm5lbD0iU2NhbiI7CgkgICAgfQogICAgfQogICAgdmFyIG1heENoYW5uZWxzPTI7IGlmICh6RGF0YS5tYXhDaGFubmVscykgbWF4Q2hhbm5lbHM9ekRhdGEubWF4Q2hhbm5lbHM7IC8vRVJTMTkwNzMxICM2MTI3MgogICAgbWF4Q2hhbm5lbHM9OTsgYWxlcnQoInpEYXRhLm1heENoYW5uZWxzPSIrekRhdGEubWF4Q2hhbm5lbHMpOyAvL0pQQjIwMTAyMyBuZWVkZWQgdG8gYWRkIGJlY2F1c2UgekNBUlRhIHdhcyBub3Qgc2hvd2luZyB1cCBpbiBQcm9ncmFtCiAgICBmb3IgKHZhciBpPTE7IGk8PW1heENoYW5uZWxzOyBpKyspIHsKICAgICAgICBpZiAoaT49MykgenA9IiI7IC8vMiBpbiBtYW5hZ2VkIHBhY2thZ2UgLy9FUlMyMDAyMDUgQ01BIGhlbHBlZCBzcG90IHRoZSBydWJiZXIgZHVja3khISEKICAgICAgICAKICAgICAgICB2YXIgY2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNoYW5uZWwiK2krIl9fYyIpOwogICAgICAgIHZhciBwcm9ncmFtPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiUHJvZ3JhbSIraSsiX19jIik7CiAgICAgICAgLy92YXIgYWZmaWxpYXRlPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQWZmaWxpYXRlIitpKyJfX2MiKTsKICAgICAgICB2YXIgY2xhc3NpZmljYXRpb249WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJDbGFzc2lmaWNhdGlvbiIraSsiX19jIik7CiAgICAgICAgdmFyIGF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLCJSZWNvcmRzIitpKyJfX2MiKTsgLy9ubyB6cCBpcyBkZWxpYmVyYXRlCiAgICAgICAgaWYgKCFhdHRhY2hSZWNvcmRzKSBhdHRhY2hSZWNvcmRzPXpEYXRhLmF0dGFjaFJlY29yZHM7CiAgICAgICAgCiAgICAgICAgLy96Q2hhbm5lbDMJeydwYXRoJzonT3JwaGFuIFJhcmUgRGlzZWFzZXMvUFJPQ1lTQkkvMTY3ODk0ODk3NzQuUFJPQ1lTQkknLCdkYi1yZWFkZXJzJzonOi0yMDEwMC4zOicsJ2RiLXVzZXJzJzonOi0yMDEwMC4zOid9CiAgICAgICAgdmFyIHpwMj16cDsgCiAgICAgICAgenAyPSIiOyAvL0VSUzIwMDIwOSB1bnRpbCBpbiBwYWNrYWdlCiAgICAgICAgdmFyIHpjaGFubmVsPVhDdXN0b21TZXR0aW5nKGRvYyx6cDIrInpDaGFubmVsIitpKyJfX2MiKTsKICAgICAgICBpZiAoemNoYW5uZWwgJiYgemNoYW5uZWwuaW5kZXhPZigieyIpID09IDApIHsgLy9FUlMyMDAyMDkgIzY4ODI1IHpDaGFubmVsCiAgICAgICAgICAgIHRyeSB7CiAgICAgICAgICAgICAgICBpZiAoemNoYW5uZWwuaW5kZXhPZigieyciKT09MCkgemNoYW5uZWw9emNoYW5uZWwucmVwbGFjZUFsbCgiJyIsIlwiIik7IC8vRVJTMjAwMjA5IEhBQ0sgYXJvdW5kIHN0YWxlIHppcHBpIGNhY2hlCiAgICAgICAgICAgICAgICB6Y2hhbm5lbD1KU09OLnBhcnNlKHpjaGFubmVsKTsKICAgICAgICAgICAgICAgIGFsZXJ0KCJ6Q2hhbm5lbCIraSsiLnBhdGg9Iit6Y2hhbm5lbC5wYXRoKTsKICAgICAgICAgICAgICAgIHpEYXRhLnpjaGFubmVsPXpjaGFubmVsOwogICAgICAgICAgICAgICAgdmFyIHA9emNoYW5uZWwucGF0aC5zcGxpdCgiLyIpOwogICAgICAgICAgICAgICAgY2xhc3NpZmljYXRpb249cFswXTsgcHJvZ3JhbT1wWzFdOyBjaGFubmVsPXBbMl07CiAgICAgICAgICAgICAgICBpZiAoIXByb2dyYW0pIHByb2dyYW09Y2xhc3NpZmljYXRpb247IC8vRVJTMjEwMzIwICM4MTMyNwogICAgICAgICAgICAgICAgaWYgKCFjaGFubmVsKSBjaGFubmVsPXByb2dyYW07IC8vRVJTMjEwMzIwICM4MTMyNwogICAgICAgICAgICB9IGNhdGNoIChlKSB7CiAgICAgICAgICAgICAgICBhbGVydCgiekNoYW5uZWwiK2krIiBub3QgdmFsaWQuICIrZSsiIGZyb20gIit6Y2hhbm5lbCk7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICAgICAgCiAgICAgICAgaWYgKCFjaGFubmVsKSBicmVhazsKICAgICAgICAKICAgICAgICB2YXIgYz1jaGFubmVsOyBpZiAoYy5pbmRleE9mKCIxIik9PT0wKSBjPWMuc3Vic3RyaW5nKDEpOwogICAgICAgIHpEYXRhLmNoYW5uZWxzPWk7CiAgICAgICAgYWxlcnQoIkVSUzIwMDIwNS45NyAiK2RvYy5kZWxpdmVyZWRUbysiID89ICIrIGMrICIgYnV0IHpjaGFubmVsLmZheD0iK3pjaGFubmVsLmZheCk7CiAgICAgICAgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKGMpPi0xIHx8IGRvYy5kZWxpdmVyZWRUbyA9PSB6Y2hhbm5lbC5mYXgpIHsgLy9FUlMyMTAzMjAgIzgxMzI3IC5mYXggY2hlY2sga2VlcHMgLnBhdGggcHVyZQogICAgICAgICAgICB6RGF0YS5jaGFubmVsPWNoYW5uZWw7IHpEYXRhLnByb2dyYW1OYW1lPXByb2dyYW07IAogICAgICAgICAgICBpZighaXNOYU4oYykpIHpEYXRhLmNoYW5uZWxbcHJvZ3JhbV09Y2hhbm5lbDsgLy9yZXZlcnNlIGxvb2t1cCBmb3IgZmF4CiAgICAgICAgICAgIC8vekRhdGEuQWZmaWxpYXRlPWFmZmlsaWF0ZTsgCiAgICAgICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uPWNsYXNzaWZpY2F0aW9uOwogICAgICAgICAgICB6RGF0YS5hdHRhY2hSZWNvcmRzPWF0dGFjaFJlY29yZHM7IC8vRVJTMTkwNjIwCiAgICAgICAgICAgIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiLiIpPT0tMSkgYnJlYWs7IC8vRVJTMjAwMjA1IGNoZWNrIHRoZW0gYWxsIGlmIHVzaW5nIHN1YmNoYW5uZWxzICM2ODgyNQogICAgICAgIH0gZWxzZSB7IC8vaW5zdXJhbmNlIGFnYWluc3Qgb3RoZXIgYWN0aW9ucyBleHBlY3RpbmcgemNoYW5uZWwuYWN0aW9uCiAgICAgICAgICAgIGlmICghekRhdGEuemNoYW5uZWwpIHsgekRhdGEuemNoYW5uZWw9eyJhY3Rpb24iOiIifTsgfSAvL0VSUzIxMTEyMiAjODY3OTkgY2xpZW50Q2FzZSBpcyB0b28gZGFuZ2Vyb3VzIGEgZGVmYXVsdAogICAgICAgICAgICBlbHNlIGlmICghekRhdGEuemNoYW5uZWwuYWN0aW9uKSB7IHpEYXRhLnpjaGFubmVsLmFjdGlvbj0iIjsgfSAvL0VSUzIxMTEyMiAjODY3OTkgZm9yIHNlcnZpY2UgY2xvdWQKICAgICAgICB9CiAgICB9CiAgICBhbGVydCgiKysrIEVORElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIG9yaWdpbiA9ICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbisiLyIrekRhdGEucHJvZ3JhbU5hbWUrIi8iK3pEYXRhLmNoYW5uZWwpOwogICAgLy9hbGVydCgiQEBAIHpEYXRhLkFmZmlsaWF0ZSA9ICIgKyB6RGF0YS5BZmZpbGlhdGUpOwp9OwoKLyogdGhpcyBpcyBhbiB1bnRlc3RlZCBmdW5jdGlvbiB0byBkZXRlY3QgdGhlIHNhbmRib3ggbmFtZSBhbmQgYXNzaWduIHZhbHVlcyAqLyAvL0VSUzE3MDUyMiBhY3RpdmF0aW5nCnpEYXRhLm9yZ1N3aXRjaD1mdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA1MTIKICAgIGFsZXJ0KCJzZlVzZXIgaXMgIitkb2Muc2ZVc2VyTmFtZSk7CiAgICB6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJwYXRpZW50UXVldWVJZF9fYyIpOyAvLycwMEc0QzAwMDAwMExrbVonOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKICAgIHpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCn07CnpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL0VSUzE3MDgyMgoKekRhdGEuZ2V0RGF0YUVudHJ5RmllbGRzPWZ1bmN0aW9uKGRvYyx6ZCkgeyAvL0VSUzE5MDYxOSBjb3B5IHdkZGF0YSBpbmZvIGludG8gekRhdGEKICAgIGlmICghemQpIHpkPXpEYXRhOyAvL3VzZSB6RGF0YSBvciB6ZAp9OwoKekRhdGEuYWRkU3RhZ2U9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsc3RhZ2UpIHsgLy9FUlMxNzA5MDkgIzQwNTkyIGZvciB6RG9jU2V0IHN0YXR1c2VzCiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfQoKLy9JbiBDbGllbnQgTGlicmFyeSB6RGF0YS5uZXdDYXNlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7fTsKCnpEYXRhLmluaXRpYWxpemVTdGFjaz1mdW5jdGlvbihkb2Msc3RhY2tGb2xkZXIsc3RhY2tJZCkgeyAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5Cn07Cgp6RGF0YS5jb3VudFBhZ2VzID0gZnVuY3Rpb24oZG9jLCBwYWdlUmFuZ2UyKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICB2YXIgcGFnZXMgPSBwYWdlUmFuZ2UyLnNwbGl0KCIsIik7CiAgICBpZiAoIXBhZ2VzKSBwYWdlcz1bcGFnZVJhbmdlMl07CiAgICBhbGVydCgiekRhdGEuY291bnRQYWdlcyBwYWdlcyA9ICIgKyBwYWdlcyk7CiAgICAvL3JldHVybiBwYWdlcy5sZW5ndGg7CiAgICByZXR1cm4gKCIiK3BhZ2VzLmxlbmd0aCk7IC8vRVJTMTkwODAyICM2MTI3MiBUT0RPIGluIFdBUgp9OwoKekRhdGEuZXhwb3NlUERGPWZ1bmN0aW9uKGRvYyxzZklkLHBhZ2VSYW5nZSkgeyAvL0VSUzE3MDUyMiBhZGRlZCBwYWdlUmFuZ2UKICAgIHZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgICAKICAgIHZhciBmaWxlTmFtZSA9IGdldEN1ckRhdGUoZG9jKSArICIgTmV3IEZheC5wZGYiOwogICAgYWxlcnQoIkBAQGZpbGVOYW1lID0gIitmaWxlTmFtZSk7CiAgICAKICAgIGNyZWF0ZURpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgIAogICAgLy9BTjE3MDUyMiBzaG91bGQgeFBhZ2VzIGJlIHBhc3NlZCBpbiBhcyBhIHZhcmlhYmxlPwogICAgdmFyIHhQYWdlcyA9IFgoZG9jLCAiWF9wb3NpdGlvbiIpOwogICAgaWYgKHBhZ2VSYW5nZSkgeFBhZ2VzPXBhZ2VSYW5nZTsgIC8vRVJTMTcwNTIyCiAgICBpZiAoeFBhZ2VzID09PSAiKiIgfHwgeFBhZ2VzID09PSAiYWxsIikgeyAvL0VSUzIxMDQyNCBjb3BwZXIKICAgICAgICBuZXdQREZOYW1lPWRvYy5VUkw7CiAgICB9IGVsc2UgewogICAgICAgIGFsZXJ0KCJAQEBAQCBDYWxsaW5nIHNwbGl0UERGIHRvIHNwbGl0IG9mZiBwYWdlcyB0byB1cGxvYWQgYXMgUERGLCBwYWdlcyA9ICIgKyB4UGFnZXMgKyAiLCBub3dUaW1lU3RhbXAgPSAiICsgbm93VGltZVN0YW1wKTsKICAgICAgICB2YXIgcmVzcG9uc2UgPSBzcGxpdFBERihkb2MsIHhQYWdlcywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXAsIGZpbGVOYW1lKTsKICAgICAgICBhbGVydCgiQEBAQCByZXNwb25zZSBmcm9tIHNwbGl0UERGID0gIiArIHJlc3BvbnNlKTsKICAgICAgICB2YXIgbmV3UERGTmFtZSA9IFgoZG9jLCAibmV3UERGIiwgcmVzcG9uc2UpOwogICAgICAgIGFsZXJ0KCJAQEBAIHNwbGl0IFBERiBGaWxlTmFtZSA9ICIgKyBuZXdQREZOYW1lKTsKICAgIH0KICAgIAogICAgdmFyIHVwbG9hZFVSTD0iaHR0cDovL2xvY2FsaG9zdDo4MDgwL215ZmlsZWZvcmNlL3VwbG9hZFRvQ2xvdWQuanNwP1NGaWQ9TkVXJlNGcGlkPSIrc2ZJZCsiJlNGb3JnPSIrZG9jLnNmT3JnKyImbGFiZWw9IitmaWxlTmFtZSsiJnNlcnZlckZpbGU9IituZXdQREZOYW1lKyImRGVzY3JpcHRpb249RmlsZSBhdHRhY2hlZCBhcyBQREYiOwogICAgYWxlcnQoIiMjIyMgVXBsb2FkIG5hdGl2ZSBQREYgd2l0aCAiK3VwbG9hZFVSTCk7CiAgICB2YXIgcj13Z2V0KGRvYywgdXBsb2FkVVJMKTsgLy9FUlMxNzA1MTIgd2FzIHpEYXRhLnVwbG9hZFVSTAogICAgYWxlcnQoIiMjIyMgRmF4IFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOwogICAgLy8gRmluYWxseSwgZGVsZXRlIHRoZSBmb2xkZXIgYW5kIGFsbCBjb250ZW50cy4KICAgIGNsZWFudXBEaXJlY3RvcnkoZG9jLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCk7CiAgICAvLyBOb3cgc2V0IHRoZSBsYWJlbCBpbiBvdXIgU25pcHBldAogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJOZXcgZmlsZSAiICsgZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKfTsKCnpEYXRhLmdldFN0YWNrSWQ9ZnVuY3Rpb24oZG9jLGlkcyxzdGFja1R5cGVOYW1lKSB7IC8vRVJTMTkwNjE3IGZyb20gVU5MT0NLIC8vVE9ETyBFUlMxOTA2MjQgZmluZCBzdGFja1R5cGVOYW1lIG5lZWRlZCBkb2MKICAgIGlmICghaWRzIHx8IGlkcz09PSIiKSBpZHMgPSBYKGRvYywiWF9hdHRhY2hlZFRvIik7IC8vRVJTMTkwNjE4IFRPRE8gY29uZmlybSBkb2MgaW4gc2NvcGUKICAgIGlkcyA9IGlkcyArICIiOwoJaWYgKGlkcy5sYXN0SW5kZXhPZignLycpID49IDApIHsgLy9FUlMxOTA2MTggZ2V0IGZpcnN0IElkIGlmIC8gaXMgcGFzc2VkIGluCgkJaWRzID0gaWRzLnN1YnN0cmluZyhpZHMubGFzdEluZGV4T2YoJy8nKSsxKTsKLy9DUk4yMDEwMjMgIzc2Nzg4IFRoaXMgY29kZSBhc3N1bWVzIHRoYXQgdGhlIGZpcnN0IGF0dGFjaGVkVG8gSWQgaXMgYSBTdGFjay4gV2UndmUgc2VlIHRoYXQgaXMgbm90IGFsd2F5cyB0aGUgY2FzZS4KLy8gTG9vayB0aHJvdWdoIHRoZSBsaXN0IG9mIElkcywgc2VhcmNoaW5nIGZvciB0aGUgb25lIHRoYXQgaXMgYWN0dWFsbHkgYSB6U3RhY2sgSWQuCi8vCQlpZiAoaWRzLmluZGV4T2YoJywnKSA+PSAwKSB7IGlkcyA9IGlkcy5zdWJzdHJpbmcoMCwgaWRzLmluZGV4T2YoJywnKSk7IH0KLy8JCXJldHVybiBpZHM7Cgl9CiAgICAKICAgIGlmICghc3RhY2tUeXBlTmFtZSkgc3RhY2tUeXBlTmFtZT0iWlBBUEVSX196U3RhY2tfX2MiOyAvL0VSUzE5MDYyNCBndWVzc2luZyBUT0RPIGZpbmQgZXhhbXBsZXMKICAgIHZhciBwYXJ0cyA9IGlkcy5zcGxpdCgnLCcpOwogICAgZm9yICh2YXIgaT0wOyBpPHBhcnRzLmxlbmd0aDsgaSsrKSB7IC8vZ2V0IGthc3QgSWQgaWYgLyBpcyBOT1QgcGFzc2VkIGluCiAgICAgICAgdmFyIGlkID0gcGFydHNbaV0udHJpbSgpOwogICAgICAgIGlmIChpZC5sZW5ndGggPiAwKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIHB1bGxpbmcgdHlwZSBmb3IgaWQ6ICIgKyBpZCk7CiAgICAgICAgICAgIGlmIChzdGFja1R5cGVOYW1lID09PSBnZXRTRlR5cGUoZG9jLCBpZCkpIHsKICAgICAgICAgICAgICAgIHJldHVybiBpZDsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KICAgIHJldHVybiBudWxsOyAvL0VSUzIwMTAyMyAjNzY3ODggcmVzdG9yZWQgbnVsbCBidXQgQ1JOIHRlc3RlZCAiIgp9Owp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMoZG9jKTsgLy9jYWxsIGZ1bmN0aW9uIHRvIHNldCB2YXJpYWJsZXMKLyogRU5EICov"},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//global variables
zData.programName = "";
zData.zp="ZPAPER__"; //TODO ZPAPER6__
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
        if (i>=3) zp=""; //2 in managed package //ERS200205 CMA helped spot the rubber ducky!!!
        
        var channel=XCustomSetting(doc,zp+"Channel"+i+"__c");
        var program=XCustomSetting(doc,zp+"Program"+i+"__c");
        //var affiliate=XCustomSetting(doc,zp+"Affiliate"+i+"__c");
        var classification=XCustomSetting(doc,zp+"Classification"+i+"__c");
        var attachRecords=XCustomSetting(doc,"Records"+i+"__c"); //no zp is deliberate
        if (!attachRecords) attachRecords=zData.attachRecords;
        
        //zChannel3	{'path':'Orphan Rare Diseases/PROCYSBI/16789489774.PROCYSBI','db-readers':':-20100.3:','db-users':':-20100.3:'}
        var zp2=zp; 
        zp2=""; //ERS200209 until in package
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
        } else { //insurance against other actions expecting zchannel.action
            if (!zData.zchannel) { zData.zchannel={"action":""}; } //ERS211122 #86799 clientCase is too dangerous a default
            else if (!zData.zchannel.action) { zData.zchannel.action=""; } //ERS211122 #86799 for service cloud
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
