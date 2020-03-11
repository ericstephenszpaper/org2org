<!--
// Name: zStack Library
// Committer: eric.stephens@zpaper.com
// Update: ERS200305 check zData.contactId
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-03-05 23:06:22","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLkFmZmlsaWF0ZSA9ICIiOwp6RGF0YS56cD0iWlBBUEVSX18iOyAvL0VSUzE5MDYxNyAjNTI2NjEKekRhdGEuenBzPXpEYXRhLnpwKyJ6U3RhY2tfX2MiOwp6RGF0YS5zZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwppZiAoIXpEYXRhLnNmSUQgfHwgMCA9PT0gekRhdGEuc2ZJRC5sZW5ndGgpIHsKICAgIHpEYXRhLnNmSUQgPSBnZXRBbHRlcm5hdGVCYXJjb2RlT25lKGRvYykgKyAiIjsKfQp6RGF0YS5mb3JtYXROb3c9ekRhdGEubm93PWdldEN1ckRhdGVBbmRUaW1lKGRvYyk7IC8vRVJTMTkwNjI0IHdhcyBqdXN0IC5ub3cKekRhdGEuYXR0YWNoUmVjb3Jkcz1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIlJlY29yZHNfX2MiKS50cmltKCk7CmlmICghekRhdGEuYXR0YWNoUmVjb3JkcykgeyB6RGF0YS5hdHRhY2hSZWNvcmRzPSJDYXNlLExlYWQiO30gLy9DYXNlLENvbnRhY3QsQWNjb3VudCxQYXRpZW50LExlYWQKCmlmICgxPT09MCkgeyAvL0VSUzE3MDgwNSBnZXQgdGhlIGRhdGEgZnJvbSB0aGUgRGVwbG95bWVudEluZm8gLy9FUlMxNzA5MDkgVE9ETyBkbyB0aGlzIHNhZmVseSB3aXRoIFhEZXBsb3ltZW50SW5mbyxYQ3VzdG9tU2V0dGluZwogICAgLy9hbGVydCgiRVJTMTcwNzI1IERJPSIrZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbyk7CiAgICB2YXIgY3M9KGRvYy5rYkRhdGEuZGVwbG95bWVudEluZm8rIiIpOyAvL25vdCBbIkJ1c2luZXNzX1Byb2Nlc3NfX2MiXTsKICAgIC8vYWxlcnQoIkVSUzE3MDgwNSBjcz0iK2NzKTsKICAgIGlmIChjcykgewogICAgICAgIGlmIChjcy5pbmRleE9mKCJ6Q3VzdG9tU2V0dGluZ3MiKT4tMSkgY3M9WChkb2MsInpDdXN0b21TZXR0aW5ncyIsY3MpOwogICAgICAgIGlmIChjcyAhPT0gIiIpIGV2YWwoY3MpOwogICAgICAgIGFsZXJ0KCJFUlMxNzA4MjIgaW1wb3J0IGZvciAiK2NzKTsKICAgIH0KfQoKLy9DUk4xNzAzMjQgVE9ETyBkb2MuY2xvbmUoKSBkb25lIHJpZ2h0Owp6RGF0YS5jbG9uZT1mdW5jdGlvbihkb2MpIHsKICAgdmFyIGRvYzA9W107CiAgIGZvciAodmFyIGkgaW4gZG9jKSBkb2MwW2ldPWRvY1tpXTsKICAgcmV0dXJuIGRvYzA7Cn07CgovLyBUaGlzIGZ1bmN0aW9uIG5lZWRzIHRvIGJlIGFkZGVkIHRvIGV2ZXJ5IHJ1bGUgdG8gaGVscCBhc3N1cmUgdGhhdCBydWxlcyBkbyBub3QgZ2V0IGFjY2lkZW50YWxseSB0cmlnZ2VyZWQKLy8gQWRkIHRoaXMgZnVuY3Rpb25hbGl0eSB0byB0aGUgcnVsZXMgZW5naW5lIGl0c2VsZj8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uID0gZnVuY3Rpb24oZG9jLHRyaWdnZXJGaWVsZCkgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh0cmlnZ2VyRmllbGQsICIiKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKCi8vQU4xOTA1MzAgdGVjaCBkZWJ0PyB1bnN1cmUgaG93IHRoaXMgZnVuY3Rpb24gaXMgbmVlZGVkCnpEYXRhLm5hbWVGaWxlID0gZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwODI5ICM0MTI5OCByZXR1cm5zIGEgbGFiZWwgdG8gYmUgdXNlZCBpbiBhbnkgYXR0YWNoZXMgYW5kIGZpeGVzIHRoZSBkb2MKICAgIC8vRG9jdW1lbnQgYXR0YWNobWVudCBsYWJlbCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIuICBDb25maXJtZWQgZm9yIHpQYXBlciBGaWxlIGFuZCBTRkRDIEF0dGFjaG1lbnQKICAgIHZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgIGRvYy5sYWJlbD1YKGRvYywiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpK1goZG9jLCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKSsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsKICAgIGFsZXJ0KCJFUlMxNzA4MjkgZGJJRD0iK2RvYy5kYklEKyIgbGFiZWw9Iitkb2MubGFiZWwpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkgPSBmdW5jdGlvbihkb2MpIHsgLy9NU0gxNzA4MzEgZXh0cmFjdCBkYXRlIGZvcm1hdCBmcm9tIHpEYXRhLm5hbWVGaWxlCiAgICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogICAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgICAvL01TSDE3MDkwNiBwYWQgZGF5IHdpdGggemVybwogICAgdmFyIGN1ckRheSA9IHRvZGF5LmdldERhdGUoKTsKICAgIC8vTVNIMTcwOTA2IHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsiIit0b2RheS5nZXREYXRlKCkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrKCIiKyhjdXJEYXkgPiA5ID8gY3VyRGF5KyIiIDogIjAiK2N1ckRheSkpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgLy9hbGVydCgiTU1kZFlZWVkgPT0gIiArIE1NZGRZWVlZKTsKICAgIHJldHVybiBNTWRkWVlZWTsKfTsKCnpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyA9IGZ1bmN0aW9uKGRvYykgeyByZXR1cm4gekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IH07IC8vTVNIMTcxMDA1IGdldCBhbGwgdGhlIG9yZ3MgaW4gaGVyZQp6RGF0YS5zZXRicmFuZHByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgcmV0dXJuIHpEYXRhLnNldEJyYW5kUHJvZ3JhbShkb2MpOyB9OyAvL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKICAgIAp6RGF0YS5zZXRCcmFuZFByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgLy9UT0RPIGRvIGh1YiB3aXRoIHNldHRpbmdzCiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICB2YXIgenA9ekRhdGEuenA7CiAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbj1kb2MuZGVsaXZlcmVkVG87CiAgICB6RGF0YS5jaGFubmVsPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLnByb2dyYW1OYW1lPWRvYy5kZWxpdmVyZWRUbzsKICAgIC8vekRhdGEuQWZmaWxpYXRlPWRvYy5kZWxpdmVyZWRUbzsKICAgIHZhciBkZWxpdmVyZWRUbyA9IGRvYy5kZWxpdmVyZWRUbyArICIiOwkvL0pQQjE5MDUyOSBDaGVjayBkZWxpdmVyZWRUbyBmb3IgY29tbXVuaXR5IHVwbG9hZGVzCiAgICBpZiAoIWlzTmFOKGRvYy5kZWxpdmVyZWRGcm9tKSkgeyB6RGF0YS5jaGFubmVsPSJGYXgiOyB9IC8vRVJTMTkwODEwICM2MTU3MCBzZXQgY2hhbmVuZWwgdG8gZmF4IGlmIG51bWJlciAKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCiAgICBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxOTA4MTIgIzYxNTExCiAgICBpZiAoaXNOYU4oZGVsaXZlcmVkVG8pKSB7CiAgICAJaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewogICAgCQl6RGF0YS5jaGFubmVsID0gIkNvbW11bml0eSI7CiAgICAJfSBlbHNlIHsKCQkgICAgekRhdGEuY2hhbm5lbD0iU2NhbiI7CgkgICAgfQogICAgfQogICAgdmFyIG1heENoYW5uZWxzPTI7IGlmICh6RGF0YS5tYXhDaGFubmVscykgbWF4Q2hhbm5lbHM9ekRhdGEubWF4Q2hhbm5lbHM7IC8vRVJTMTkwNzMxICM2MTI3MgogICAgbWF4Q2hhbm5lbHM9NjsgYWxlcnQoInpEYXRhLm1heENoYW5uZWxzPSIrekRhdGEubWF4Q2hhbm5lbHMpOwogICAgZm9yICh2YXIgaT0xOyBpPD1tYXhDaGFubmVsczsgaSsrKSB7CiAgICAgICAgaWYgKGk+PTMpIHpwPSIiOyAvLzIgaW4gbWFuYWdlZCBwYWNrYWdlIC8vRVJTMjAwMjA1IENNQSBoZWxwZWQgc3BvdCB0aGUgcnViYmVyIGR1Y2t5ISEhCiAgICAgICAgCiAgICAgICAgdmFyIGNoYW5uZWw9WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJDaGFubmVsIitpKyJfX2MiKTsKICAgICAgICB2YXIgcHJvZ3JhbT1YQ3VzdG9tU2V0dGluZyhkb2MsenArIlByb2dyYW0iK2krIl9fYyIpOwogICAgICAgIC8vdmFyIGFmZmlsaWF0ZT1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkFmZmlsaWF0ZSIraSsiX19jIik7CiAgICAgICAgdmFyIGNsYXNzaWZpY2F0aW9uPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQ2xhc3NpZmljYXRpb24iK2krIl9fYyIpOwogICAgICAgIHZhciBhdHRhY2hSZWNvcmRzPVhDdXN0b21TZXR0aW5nKGRvYywiUmVjb3JkcyIraSsiX19jIik7IC8vbm8genAgaXMgZGVsaWJlcmF0ZQogICAgICAgIGlmICghYXR0YWNoUmVjb3JkcykgYXR0YWNoUmVjb3Jkcz16RGF0YS5hdHRhY2hSZWNvcmRzOwogICAgICAgIAogICAgICAgIC8vekNoYW5uZWwzCXsncGF0aCc6J09ycGhhbiBSYXJlIERpc2Vhc2VzL1BST0NZU0JJLzE2Nzg5NDg5Nzc0LlBST0NZU0JJJywnZGItcmVhZGVycyc6JzotMjAxMDAuMzonLCdkYi11c2Vycyc6JzotMjAxMDAuMzonfQogICAgICAgIHZhciB6cDI9enA7IAogICAgICAgIHpwMj0iIjsgLy9FUlMyMDAyMDkgdW50aWwgaW4gcGFja2FnZQogICAgICAgIHZhciB6Y2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsenAyKyJ6Q2hhbm5lbCIraSsiX19jIik7CiAgICAgICAgaWYgKHpjaGFubmVsICYmIHpjaGFubmVsLmluZGV4T2YoInsiKSA9PSAwKSB7IC8vRVJTMjAwMjA5ICM2ODgyNSB6Q2hhbm5lbAogICAgICAgICAgICB0cnkgewogICAgICAgICAgICAgICAgaWYgKHpjaGFubmVsLmluZGV4T2YoInsnIik9PTApIHpjaGFubmVsPXpjaGFubmVsLnJlcGxhY2VBbGwoIiciLCJcIiIpOyAvL0VSUzIwMDIwOSBIQUNLIGFyb3VuZCBzdGFsZSB6aXBwaSBjYWNoZQogICAgICAgICAgICAgICAgemNoYW5uZWw9SlNPTi5wYXJzZSh6Y2hhbm5lbCk7CiAgICAgICAgICAgICAgICBhbGVydCgiekNoYW5uZWwiK2krIi5wYXRoPSIremNoYW5uZWwucGF0aCk7CiAgICAgICAgICAgICAgICB6RGF0YS56Y2hhbm5lbD16Y2hhbm5lbDsKICAgICAgICAgICAgICAgIHZhciBwPXpjaGFubmVsLnBhdGguc3BsaXQoIi8iKTsKICAgICAgICAgICAgICAgIGNsYXNzaWZpY2F0aW9uPXBbMF07IHByb2dyYW09cFsxXTsgY2hhbm5lbD1wWzJdOwogICAgICAgICAgICB9IGNhdGNoIChlKSB7CiAgICAgICAgICAgICAgICBhbGVydCgiekNoYW5uZWwiK2krIiBub3QgdmFsaWQuICIrZSsiIGZyb20gIit6Y2hhbm5lbCk7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICAgICAgCiAgICAgICAgaWYgKCFjaGFubmVsKSBicmVhazsKICAgICAgICAKICAgICAgICB2YXIgYz1jaGFubmVsOyBpZiAoYy5pbmRleE9mKCIxIik9PT0wKSBjPWMuc3Vic3RyaW5nKDEpOwogICAgICAgIHpEYXRhLmNoYW5uZWxzPWk7CiAgICAgICAgYWxlcnQoIkVSUzIwMDIwNS45NyAiK2RvYy5kZWxpdmVyZWRUbysiID89ICIrIGMpOwogICAgICAgIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZihjKT4tMSkgewogICAgICAgICAgICB6RGF0YS5jaGFubmVsPWNoYW5uZWw7IHpEYXRhLnByb2dyYW1OYW1lPXByb2dyYW07IAogICAgICAgICAgICBpZighaXNOYU4oYykpIHpEYXRhLmNoYW5uZWxbcHJvZ3JhbV09Y2hhbm5lbDsgLy9yZXZlcnNlIGxvb2t1cCBmb3IgZmF4CiAgICAgICAgICAgIC8vekRhdGEuQWZmaWxpYXRlPWFmZmlsaWF0ZTsgCiAgICAgICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uPWNsYXNzaWZpY2F0aW9uOwogICAgICAgICAgICB6RGF0YS5hdHRhY2hSZWNvcmRzPWF0dGFjaFJlY29yZHM7IC8vRVJTMTkwNjIwCiAgICAgICAgICAgIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiLiIpPT0tMSkgYnJlYWs7IC8vRVJTMjAwMjA1IGNoZWNrIHRoZW0gYWxsIGlmIHVzaW5nIHN1YmNoYW5uZWxzICM2ODgyNQogICAgICAgIH0KICAgIH0KICAgIGFsZXJ0KCIrKysgRU5ESU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgb3JpZ2luID0gIiArIHpEYXRhLmNsYXNzaWZpY2F0aW9uKyIvIit6RGF0YS5wcm9ncmFtTmFtZSsiLyIrekRhdGEuY2hhbm5lbCk7CiAgICAvL2FsZXJ0KCJAQEAgekRhdGEuQWZmaWxpYXRlID0gIiArIHpEYXRhLkFmZmlsaWF0ZSk7Cn07CgovKiB0aGlzIGlzIGFuIHVudGVzdGVkIGZ1bmN0aW9uIHRvIGRldGVjdCB0aGUgc2FuZGJveCBuYW1lIGFuZCBhc3NpZ24gdmFsdWVzICovIC8vRVJTMTcwNTIyIGFjdGl2YXRpbmcKekRhdGEub3JnU3dpdGNoPWZ1bmN0aW9uKGRvYykgeyAvL0VSUzE3MDUxMgogICAgYWxlcnQoInNmVXNlciBpcyAiK2RvYy5zZlVzZXJOYW1lKTsKICAgIHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInBhdGllbnRRdWV1ZUlkX19jIik7IC8vJzAwRzRDMDAwMDAwTGttWic7IC8vaW5zZXJ0IHRoZSBRdWV1ZSBJRCBvZiB0aGUgZGVzaXJlZCBvd25lcnNoaXAgcXVldWUuIFVwZGF0ZSB3aGVuIG1pZ3JhdGluZyBiZXR3ZWVuIGVudmlyb25tZW50cy4gTmVlZCB0byBhZGQgdGhpcyBxdWV1ZSBpbiBTZXR1cAogICAgekRhdGEucmVjVHlwZVJlcXVlc3QgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInJlY1R5cGVSZXF1ZXN0X19jIik7IC8vJzAxMjRDMDAwMDAwQ2o1WSc7IC8vSUQgb2YgdGhlIENhc2UgUmVjb3JkIFR5cGUgUmVxdWVzdF9QU19NVk4KfTsKekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vRVJTMTcwODIyCgp6RGF0YS5nZXREYXRhRW50cnlGaWVsZHM9ZnVuY3Rpb24oZG9jLHpkKSB7IC8vRVJTMTkwNjE5IGNvcHkgd2RkYXRhIGluZm8gaW50byB6RGF0YQogICAgaWYgKCF6ZCkgemQ9ekRhdGE7IC8vdXNlIHpEYXRhIG9yIHpkCiAgICB2YXIgZmllbGRzPWRvYy53ZGRhdGEuc3BsaXQoIjxYXyIpOyAKICAgIC8vPFhfWlBBUEVSX19Qcm92aWRlcl9fci5OYW1lPlVuaXRlZCBPaWwgJiBHYXMsIFNpbmdhcG9yZTwvWF9aUEFQRVJfX1Byb3ZpZGVyX19yLk5hbWU+CiAgICAvLzxYX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lPkpvc2ggRGF2aXM8L1hfWlBBUEVSX19QYXRpZW50X19yLk5hbWU+CiAgICAvLzxYX1pQQVBFUl9fQ2FzZV9fYz41MDA0NDAwMDAwbEVpMzNBQUM8L1hfWlBBUEVSX19DYXNlX19jPgogICAgZm9yICh2YXIgaSBpbiBmaWVsZHMpIHsKICAgICAgICB2YXIgbnY9ZmllbGRzW2ldOyAvLyJaUEFQRVJfX0Nhc2VfX2M+NTAwNDQwMDAwMGxFaTMzQUFDPC9YX1pQQVBFUl9fQ2FzZV9fYz4iCiAgICAgICAgdmFyIGo9bnYuaW5kZXhPZigiPiIpOwogICAgICAgIHZhciBrPW52LmluZGV4T2YoIjwiLGorMSk7CiAgICAgICAgaWYgKGo+LTEgJiYgaz4tMSkgewogICAgICAgICAgICB2YXIgbj0iWF8iK252LnN1YnN0cmluZygwLGopOwogICAgICAgICAgICB2YXIgdj1udi5zdWJzdHJpbmcoaisxLGspOwogICAgICAgICAgICB6RGF0YVtuXT12OwogICAgICAgIH0KICAgIH0KICAgIHpEYXRhLmNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsgLy9FUlMxOTA2MjQgVE9ETyBtb3JlIG9mIHRoZSBzYW1lCiAgICB6RGF0YS5jb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7CiAgICBpZiAoIkFjY291bnQiPT09WEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX1BhdGllbnRSZWNvcmRfX2MiKSkgeyAvL0VSUzE5MDgxMCAjNjE1NzAgLy9FUlMxOTA4MTEgZG9jLAogICAgICAgIHpEYXRhLmNvbnRhY3RJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIik7CiAgICB9CiAgICBpZiAoekRhdGEuY29udGFjdElkKSB6RGF0YS5wYXRpZW50SWQ9ekRhdGEuY29udGFjdElkOyAvL1RPRE8gUGVyc29uYWxBY2NvdW50IHByZWZlcmVuY2UgLSBET05FIEVSUzE5MDgxMCAvL0VSUzIwMDMwNSBjaGVjayB6RGF0YS5jb250YWN0SWQKICAgIHpEYXRhLnByb3ZpZGVySWQgPSBYKGRvYywgIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOwogICAgLy92YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwogICAgLy92YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKICAgIC8vdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKICAgIC8vRVJTMTkwODAyICM2MTI3MiBtYXJzaGFsbCBmcm9tIFgoKSBzaW5jZSB0aGUgZGF0ZSBlbnRyeSBpbmZvIG5vdCBhbHJlYWR5IHNhdmVkIGludG8gd2RkYXRhCiAgICB6RGF0YS5YX1pQQVBFUl9fZmF4VHlwZV9fYz16RGF0YS5kb2NUeXBlID0gWChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOyAvL0VSUzE5MDgxMCBQVjE5MDgwOCAjNjE1NzAKICAgIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2M9cGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwogICAgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jPXBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0xhc3ROYW1lX19jIik7CiAgICB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jPXBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKfTsKCgp6RGF0YS5hZGRTdGFnZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxzdGFnZSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKCWlmICghc3RhZ2UpIHsKICAgIAl2YXIgYmE9ZG9jLlgoIlhfYnV0dG9uQWN0aW9uIikrImVkIjsKICAgIAliYT1iYS5zdWJzdHJpbmcoMStiYS5sYXN0SW5kZXhPZigiICIpKTsKICAgIAlzdGFnZT1iYTsgaWYgKHN0YWdlLmxlbmd0aCgpPDQpIHtzdGFnZT0iUmVjZWl2ZWQiO30KICAgIH0gZWxzZSB7CiAgICAgICAgYmE9c3RhZ2U7IC8vRVJTMTkwODAyCiAgICB9CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKICAgIHJldHVybiBhcnJPZlBhaXJzOwp9CgovL0luIENsaWVudCBMaWJyYXJ5IHpEYXRhLm5ld0Nhc2U9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHt9OwoKekRhdGEuaW5pdGlhbGl6ZVN0YWNrPWZ1bmN0aW9uKGRvYyxzdGFja0ZvbGRlcixzdGFja0lkKSB7IC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgdmFyIGZpbmFsUm9vdEZvbGRlciA9IHpEYXRhLnByb2dyYW1OYW1lKyItQXJjaGl2ZSI7IC8vYmF0ZXMgb2YgdGhlIEFyY2hpdmUgZm9sZGVyCiAgdmFyIHl5eXlNTUZvbGRlck5hbWUgPSB0b2RheS5nZXRGdWxsWWVhcigpICsgKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKTsKICB2YXIgeXl5eU1NRm9sZGVyID0gZmluYWxSb290Rm9sZGVyICsgIi0iICsgeXl5eU1NRm9sZGVyTmFtZTsKICBhbGVydCgiQEBAIHN0YWNrRm9sZGVyIGlzIC0gIiArIHN0YWNrRm9sZGVyKTsKICBhbGVydCgiQEBAIGZpbmFsUm9vdEZvbGRlciBpcyAtICIgKyBmaW5hbFJvb3RGb2xkZXIpOwogIGFsZXJ0KCJAQEAgeXlNTUZvbGRlciBpcyAtICIgKyB5eXl5TU1Gb2xkZXIpOwogIGFsZXJ0KCJAQEAgY3JlYXRpbmcgbmV3IHN0YWNrIGRlc3RpbmFpb24gZm9sZGVyIHdpdGggbmFtZSAtICIgKyBzdGFja0ZvbGRlcik7CiAgLyogUmVmcmVzaCB0aGUgY3VycmVudCBmb2xkZXIgKi8KICByZWxvYWRCeUlkKGRvYywgWChkb2MsIlhfY3VyRm9sZGVyIikpOwogIC8qIHNhbWUgdmFsdWUgZm9yIEJBVEVTIGFuZCBsYWJlbCAqLwogIC8qIFRoZSBmb2xkZXIgc3RydWN0dXJlIHdpbGwgbG9vayBsaWtlIHRoaXM6IC8yMDE2MDgvM0NYM0NYLzEyMzQ1Njc4OS1TVEFDSyAqLwogIGNyZWF0ZUZvbGRlcihkb2MsIGZpbmFsUm9vdEZvbGRlciwgeXl5eU1NRm9sZGVyLCB5eXl5TU1Gb2xkZXJOYW1lKTsKICBjcmVhdGVGb2xkZXIoZG9jLCB5eXl5TU1Gb2xkZXIsIHN0YWNrRm9sZGVyLCBzdGFja0ZvbGRlcik7CiAgYWxlcnQoIkBAQEAgTW92aW5nIHRoZSBzdGFjayBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4SW5pdGlhbGl6ZWQiLCAidHJ1ZSIpOwogIGlmICgxPT0xKSB7IC8vRVJTMjAwMjA1ICM2ODgyNSBUT0RPIENSTiB0byByZXZpZXcgbW92ZURvY3VtZW50IGFuZCBpZiB3ZSBuZWVkIGl0IHRoZW4gZml4IHRoZSB4X3N0YWNrIHByb2JsZW0gd2l0aCBpdAogICAgbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzdGFja0lkKTsKICAgIC8vRVJTMjAwMjIyIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBkb2Mua2JEYXRhLmdyb3VwSUQuc3Vic3RyaW5nKDEpICsgIi0iICsgc3RhY2tJZCArICItU1RBQ0siKTsKICB9CiAgYWxlcnQoIkVSUzIwMDIwNSBzdGFja0lkPSIrc3RhY2tJZCk7CiAgLyogU3RhY2sgTGFiZWxsaW5nIENoYW5nZSAqLwogIHZhciBkdFN0YW1wID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSk7CiAgLyogYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIlN0YWNrIC0gIiArIGR0U3RhbXApOyAqLwogIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKCnpEYXRhLmNvdW50UGFnZXMgPSBmdW5jdGlvbihkb2MsIHBhZ2VSYW5nZTIpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBwYWdlcyA9IHBhZ2VSYW5nZTIuc3BsaXQoIiwiKTsKICAgIGlmICghcGFnZXMpIHBhZ2VzPVtwYWdlUmFuZ2UyXTsKICAgIGFsZXJ0KCJ6RGF0YS5jb3VudFBhZ2VzIHBhZ2VzID0gIiArIHBhZ2VzKTsKICAgIC8vcmV0dXJuIHBhZ2VzLmxlbmd0aDsKICAgIHJldHVybiAoIiIrcGFnZXMubGVuZ3RoKTsgLy9FUlMxOTA4MDIgIzYxMjcyIFRPRE8gaW4gV0FSCn07Cgp6RGF0YS5leHBvc2VQREY9ZnVuY3Rpb24oZG9jLHNmSWQscGFnZVJhbmdlKSB7IC8vRVJTMTcwNTIyIGFkZGVkIHBhZ2VSYW5nZQogICAgdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICB2YXIgbm93VGltZVN0YW1wID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIAogICAgdmFyIGZpbGVOYW1lID0gZ2V0Q3VyRGF0ZShkb2MpICsgIiBOZXcgRmF4LnBkZiI7CiAgICBhbGVydCgiQEBAZmlsZU5hbWUgPSAiK2ZpbGVOYW1lKTsKICAgIAogICAgY3JlYXRlRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAgCiAgICAvL0FOMTcwNTIyIHNob3VsZCB4UGFnZXMgYmUgcGFzc2VkIGluIGFzIGEgdmFyaWFibGU/CiAgICB2YXIgeFBhZ2VzID0gWChkb2MsICJYX3Bvc2l0aW9uIik7CiAgICBpZiAocGFnZVJhbmdlKSB4UGFnZXM9cGFnZVJhbmdlOyAgLy9FUlMxNzA1MjIKICAgIGFsZXJ0KCJAQEBAQCBDYWxsaW5nIHNwbGl0UERGIHRvIHNwbGl0IG9mZiBwYWdlcyB0byB1cGxvYWQgYXMgUERGLCBwYWdlcyA9ICIgKyB4UGFnZXMgKyAiLCBub3dUaW1lU3RhbXAgPSAiICsgbm93VGltZVN0YW1wKTsKICAgIHZhciByZXNwb25zZSA9IHNwbGl0UERGKGRvYywgeFBhZ2VzLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCwgZmlsZU5hbWUpOwogICAgYWxlcnQoIkBAQEAgcmVzcG9uc2UgZnJvbSBzcGxpdFBERiA9ICIgKyByZXNwb25zZSk7CiAgICB2YXIgbmV3UERGTmFtZSA9IFgoZG9jLCAibmV3UERGIiwgcmVzcG9uc2UpOwogICAgCiAgICBhbGVydCgiQEBAQCBzcGxpdCBQREYgRmlsZU5hbWUgPSAiICsgbmV3UERGTmFtZSk7CiAgICAKICAgIHZhciB1cGxvYWRVUkw9Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9teWZpbGVmb3JjZS91cGxvYWRUb0Nsb3VkLmpzcD9TRmlkPU5FVyZTRnBpZD0iK3NmSWQrIiZTRm9yZz0iK2RvYy5zZk9yZysiJmxhYmVsPSIrZmlsZU5hbWUrIiZzZXJ2ZXJGaWxlPSIrbmV3UERGTmFtZSsiJkRlc2NyaXB0aW9uPUZpbGUgYXR0YWNoZWQgYXMgUERGIjsKICAgIGFsZXJ0KCIjIyMjIFVwbG9hZCBuYXRpdmUgUERGIHdpdGggIit1cGxvYWRVUkwpOwogICAgdmFyIHI9d2dldChkb2MsIHVwbG9hZFVSTCk7IC8vRVJTMTcwNTEyIHdhcyB6RGF0YS51cGxvYWRVUkwKICAgIGFsZXJ0KCIjIyMjIEZheCBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKICAgIC8vIEZpbmFsbHksIGRlbGV0ZSB0aGUgZm9sZGVyIGFuZCBhbGwgY29udGVudHMuCiAgICBjbGVhbnVwRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAgLy8gTm93IHNldCB0aGUgbGFiZWwgaW4gb3VyIFNuaXBwZXQKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiTmV3IGZpbGUgIiArIGZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7Cn07Cgp6RGF0YS5nZXRTdGFja0lkPWZ1bmN0aW9uKGRvYyxpZHMsc3RhY2tUeXBlTmFtZSkgeyAvL0VSUzE5MDYxNyBmcm9tIFVOTE9DSyAvL1RPRE8gRVJTMTkwNjI0IGZpbmQgc3RhY2tUeXBlTmFtZSBuZWVkZWQgZG9jCiAgICBpZiAoIWlkcyB8fCBpZHM9PT0iIikgaWRzID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOyAvL0VSUzE5MDYxOCBUT0RPIGNvbmZpcm0gZG9jIGluIHNjb3BlCiAgICBpZHMgPSBpZHMgKyAiIjsKCWlmIChpZHMubGFzdEluZGV4T2YoJy8nKSA+PSAwKSB7IC8vRVJTMTkwNjE4IGdldCBmaXJzdCBJZCBpZiAvIGlzIHBhc3NlZCBpbgoJCWlkcyA9IGlkcy5zdWJzdHJpbmcoaWRzLmxhc3RJbmRleE9mKCcvJykrMSk7CgkJaWYgKGlkcy5pbmRleE9mKCcsJykgPj0gMCkgeyBpZHMgPSBpZHMuc3Vic3RyaW5nKDAsIGlkcy5pbmRleE9mKCcsJykpOyB9CgkJcmV0dXJuIGlkczsKCX0KICAgIAogICAgaWYgKCFzdGFja1R5cGVOYW1lKSBzdGFja1R5cGVOYW1lPSJaUEFQRVJfX3pTdGFja19fYyI7IC8vRVJTMTkwNjI0IGd1ZXNzaW5nIFRPRE8gZmluZCBleGFtcGxlcwogICAgdmFyIHBhcnRzID0gaWRzLnNwbGl0KCcsJyk7CiAgICBmb3IgKHZhciBpPTA7IGk8cGFydHMubGVuZ3RoOyBpKyspIHsgLy9nZXQga2FzdCBJZCBpZiAvIGlzIE5PVCBwYXNzZWQgaW4KICAgICAgICB2YXIgaWQgPSBwYXJ0c1tpXS50cmltKCk7CiAgICAgICAgaWYgKGlkLmxlbmd0aCA+IDApIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgcHVsbGluZyB0eXBlIGZvciBpZDogIiArIGlkKTsKICAgICAgICAgICAgaWYgKHN0YWNrVHlwZU5hbWUgPT09IGdldFNGVHlwZShkb2MsIGlkKSkgewogICAgICAgICAgICAgICAgcmV0dXJuIGlkOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQogICAgcmV0dXJuIG51bGw7Cn07CnpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyhkb2MpOyAvL2NhbGwgZnVuY3Rpb24gdG8gc2V0IHZhcmlhYmxlcwovKiBFTkQgKi8="},"ordinal":0}

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

if (1===0) { //ERS170805 get the data from the DeploymentInfo //ERS170909 TODO do this safely with XDeploymentInfo,XCustomSetting
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
    maxChannels=6; alert("zData.maxChannels="+zData.maxChannels);
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
            } catch (e) {
                alert("zChannel"+i+" not valid. "+e+" from "+zchannel);
            }
        }
        
        if (!channel) break;
        
        var c=channel; if (c.indexOf("1")===0) c=c.substring(1);
        zData.channels=i;
        alert("ERS200205.97 "+doc.deliveredTo+" ?= "+ c);
        if (doc.deliveredTo.indexOf(c)>-1) {
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
	if (!stage) {
    	var ba=doc.X("X_buttonAction")+"ed";
    	ba=ba.substring(1+ba.lastIndexOf(" "));
    	stage=ba; if (stage.length()<4) {stage="Received";}
    } else {
        ba=stage; //ERS190802
    }
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
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
		if (ids.indexOf(',') >= 0) { ids = ids.substring(0, ids.indexOf(',')); }
		return ids;
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
    return null;
};
zData.setGlobalVariables(doc); //call function to set variables
/* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
