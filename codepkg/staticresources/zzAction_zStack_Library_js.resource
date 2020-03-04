<!--
// Name: zStack Library
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: Pv200227 updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-27 19:39:41","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLkFmZmlsaWF0ZSA9ICIiOwp6RGF0YS56cD0iWlBBUEVSX18iOyAvL0VSUzE5MDYxNyAjNTI2NjEKekRhdGEuenBzPXpEYXRhLnpwKyJ6U3RhY2tfX2MiOwp6RGF0YS5zZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwppZiAoIXpEYXRhLnNmSUQgfHwgMCA9PT0gekRhdGEuc2ZJRC5sZW5ndGgpIHsKICAgIHpEYXRhLnNmSUQgPSBnZXRBbHRlcm5hdGVCYXJjb2RlT25lKGRvYykgKyAiIjsKfQp6RGF0YS5mb3JtYXROb3c9ekRhdGEubm93PWdldEN1ckRhdGVBbmRUaW1lKGRvYyk7IC8vRVJTMTkwNjI0IHdhcyBqdXN0IC5ub3cKekRhdGEuYXR0YWNoUmVjb3Jkcz1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIlJlY29yZHNfX2MiKS50cmltKCk7CmlmICghekRhdGEuYXR0YWNoUmVjb3JkcykgeyB6RGF0YS5hdHRhY2hSZWNvcmRzPSJDYXNlLExlYWQiO30gLy9DYXNlLENvbnRhY3QsQWNjb3VudCxQYXRpZW50LExlYWQKCmlmICgxPT09MCkgeyAvL0VSUzE3MDgwNSBnZXQgdGhlIGRhdGEgZnJvbSB0aGUgRGVwbG95bWVudEluZm8gLy9FUlMxNzA5MDkgVE9ETyBkbyB0aGlzIHNhZmVseSB3aXRoIFhEZXBsb3ltZW50SW5mbyxYQ3VzdG9tU2V0dGluZwogICAgLy9hbGVydCgiRVJTMTcwNzI1IERJPSIrZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbyk7CiAgICB2YXIgY3M9KGRvYy5rYkRhdGEuZGVwbG95bWVudEluZm8rIiIpOyAvL25vdCBbIkJ1c2luZXNzX1Byb2Nlc3NfX2MiXTsKICAgIC8vYWxlcnQoIkVSUzE3MDgwNSBjcz0iK2NzKTsKICAgIGlmIChjcykgewogICAgICAgIGlmIChjcy5pbmRleE9mKCJ6Q3VzdG9tU2V0dGluZ3MiKT4tMSkgY3M9WChkb2MsInpDdXN0b21TZXR0aW5ncyIsY3MpOwogICAgICAgIGlmIChjcyAhPT0gIiIpIGV2YWwoY3MpOwogICAgICAgIGFsZXJ0KCJFUlMxNzA4MjIgaW1wb3J0IGZvciAiK2NzKTsKICAgIH0KfQoKLy9DUk4xNzAzMjQgVE9ETyBkb2MuY2xvbmUoKSBkb25lIHJpZ2h0Owp6RGF0YS5jbG9uZT1mdW5jdGlvbihkb2MpIHsKICAgdmFyIGRvYzA9W107CiAgIGZvciAodmFyIGkgaW4gZG9jKSBkb2MwW2ldPWRvY1tpXTsKICAgcmV0dXJuIGRvYzA7Cn07CgovLyBUaGlzIGZ1bmN0aW9uIG5lZWRzIHRvIGJlIGFkZGVkIHRvIGV2ZXJ5IHJ1bGUgdG8gaGVscCBhc3N1cmUgdGhhdCBydWxlcyBkbyBub3QgZ2V0IGFjY2lkZW50YWxseSB0cmlnZ2VyZWQKLy8gQWRkIHRoaXMgZnVuY3Rpb25hbGl0eSB0byB0aGUgcnVsZXMgZW5naW5lIGl0c2VsZj8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uID0gZnVuY3Rpb24oZG9jLHRyaWdnZXJGaWVsZCkgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh0cmlnZ2VyRmllbGQsICIiKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKCi8vQU4xOTA1MzAgdGVjaCBkZWJ0PyB1bnN1cmUgaG93IHRoaXMgZnVuY3Rpb24gaXMgbmVlZGVkCnpEYXRhLm5hbWVGaWxlID0gZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwODI5ICM0MTI5OCByZXR1cm5zIGEgbGFiZWwgdG8gYmUgdXNlZCBpbiBhbnkgYXR0YWNoZXMgYW5kIGZpeGVzIHRoZSBkb2MKICAgIC8vRG9jdW1lbnQgYXR0YWNobWVudCBsYWJlbCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIuICBDb25maXJtZWQgZm9yIHpQYXBlciBGaWxlIGFuZCBTRkRDIEF0dGFjaG1lbnQKICAgIHZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgIGRvYy5sYWJlbD1YKGRvYywiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpK1goZG9jLCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKSsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsKICAgIGFsZXJ0KCJFUlMxNzA4MjkgZGJJRD0iK2RvYy5kYklEKyIgbGFiZWw9Iitkb2MubGFiZWwpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkgPSBmdW5jdGlvbihkb2MpIHsgLy9NU0gxNzA4MzEgZXh0cmFjdCBkYXRlIGZvcm1hdCBmcm9tIHpEYXRhLm5hbWVGaWxlCiAgICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogICAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgICAvL01TSDE3MDkwNiBwYWQgZGF5IHdpdGggemVybwogICAgdmFyIGN1ckRheSA9IHRvZGF5LmdldERhdGUoKTsKICAgIC8vTVNIMTcwOTA2IHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsiIit0b2RheS5nZXREYXRlKCkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrKCIiKyhjdXJEYXkgPiA5ID8gY3VyRGF5KyIiIDogIjAiK2N1ckRheSkpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgLy9hbGVydCgiTU1kZFlZWVkgPT0gIiArIE1NZGRZWVlZKTsKICAgIHJldHVybiBNTWRkWVlZWTsKfTsKCnpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyA9IGZ1bmN0aW9uKGRvYykgeyByZXR1cm4gekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IH07IC8vTVNIMTcxMDA1IGdldCBhbGwgdGhlIG9yZ3MgaW4gaGVyZQp6RGF0YS5zZXRicmFuZHByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgcmV0dXJuIHpEYXRhLnNldEJyYW5kUHJvZ3JhbShkb2MpOyB9OyAvL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKICAgCnpEYXRhLnNldEJyYW5kUHJvZ3JhbSA9IGZ1bmN0aW9uKGRvYykgeyAvL1RPRE8gZG8gaHViIHdpdGggc2V0dGluZ3MKICAgIGFsZXJ0KCIrKysgU1RBUlRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBkb2MuZGVsaXZlcmVkVG8gPSAiICsgZG9jLmRlbGl2ZXJlZFRvKTsKICAgIHZhciB6cD16RGF0YS56cDsKICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLmNoYW5uZWw9ZG9jLmRlbGl2ZXJlZFRvOwogICAgekRhdGEucHJvZ3JhbU5hbWU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgLy96RGF0YS5BZmZpbGlhdGU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvICsgIiI7IC8vSlBCMTkwNTI5IENoZWNrIGRlbGl2ZXJlZFRvIGZvciBjb21tdW5pdHkgdXBsb2FkZXMKICAgIGlmICghaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7IHpEYXRhLmNoYW5uZWw9IkZheCI7IH0gLy9FUlMxOTA4MTAgIzYxNTcwIHNldCBjaGFuZW5lbCB0byBmYXggaWYgbnVtYmVyCiAgICBpZiAoZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpPi0xIHx8IGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIi4iKT4tMSkge3pEYXRhLmNoYW5uZWw9IkVtYWlsIjt9IC8vRVJTMTgwNTA1ICM0ODEwMQogICAgaWYgKGlzTmFOKGRvYy5kZWxpdmVyZWRGcm9tKSkge3pEYXRhLmNoYW5uZWw9IkVtYWlsIjt9IC8vRVJTMTkwODEyICM2MTUxMQogICAgaWYgKGlzTmFOKGRlbGl2ZXJlZFRvKSkgewogICAgaWYgKGRlbGl2ZXJlZFRvLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiY29tbXVuaXR5IikgPj0gMCkgewogICAgekRhdGEuY2hhbm5lbCA9ICJDb21tdW5pdHkiOwogICAgfSBlbHNlIHsKICAgekRhdGEuY2hhbm5lbD0iU2NhbiI7CiAgIH0KICAgIH0KICAgIHZhciBtYXhDaGFubmVscz0yOyBpZiAoekRhdGEubWF4Q2hhbm5lbHMpIG1heENoYW5uZWxzPXpEYXRhLm1heENoYW5uZWxzOyAvL0VSUzE5MDczMSAjNjEyNzIKICAgIGZvciAodmFyIGk9MTsgaTw9bWF4Q2hhbm5lbHM7IGkrKykgewogICAgICAgIHZhciBjaGFubmVsPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQ2hhbm5lbCIraSsiX19jIik7CiAgICAgICAgdmFyIHByb2dyYW09WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJQcm9ncmFtIitpKyJfX2MiKTsKICAgICAgICAvL3ZhciBhZmZpbGlhdGU9WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJBZmZpbGlhdGUiK2krIl9fYyIpOwogICAgICAgIHZhciBjbGFzc2lmaWNhdGlvbj1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNsYXNzaWZpY2F0aW9uIitpKyJfX2MiKTsKICAgICAgICB2YXIgYXR0YWNoUmVjb3Jkcz1YQ3VzdG9tU2V0dGluZyhkb2MsIlJlY29yZHMiK2krIl9fYyIpOyAvL25vIHpwIGlzIGRlbGliZXJhdGUKICAgICAgICBpZiAoIWF0dGFjaFJlY29yZHMpIGF0dGFjaFJlY29yZHM9ekRhdGEuYXR0YWNoUmVjb3JkczsKICAgICAgICBpZiAoIWNoYW5uZWwpIGJyZWFrOwogICAgICAgIGlmIChpPj0zKSB6cD0iIjsgLy8yIGluIG1hbmFnZWQgcGFja2FnZQogICAgICAgIHZhciBjPWNoYW5uZWw7IGlmIChjLmluZGV4T2YoIjEiKT09PTApIGM9Yy5zdWJzdHJpbmcoMSk7CiAgICAgICAgekRhdGEuY2hhbm5lbHM9aTsKICAgICAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoYyk+LTEpIHsKICAgICAgICAgICAgekRhdGEuY2hhbm5lbD1jaGFubmVsOyB6RGF0YS5wcm9ncmFtTmFtZT1wcm9ncmFtOwogICAgICAgICAgICBpZighaXNOYU4oYykpIHpEYXRhLmNoYW5uZWxbcHJvZ3JhbV09Y2hhbm5lbDsgLy9yZXZlcnNlIGxvb2t1cCBmb3IgZmF4CiAgICAgICAgICAgIC8vekRhdGEuQWZmaWxpYXRlPWFmZmlsaWF0ZTsKICAgICAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb249Y2xhc3NpZmljYXRpb247CiAgICAgICAgICAgIHpEYXRhLmF0dGFjaFJlY29yZHM9YXR0YWNoUmVjb3JkczsgLy9FUlMxOTA2MjAKICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgfQogICAgfQogICAgYWxlcnQoIisrKyBFTkRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBvcmlnaW4gPSAiICsgekRhdGEuY2xhc3NpZmljYXRpb24rIi8iK3pEYXRhLnByb2dyYW1OYW1lKyIvIit6RGF0YS5jaGFubmVsKTsKICAgIC8vYWxlcnQoIkBAQCB6RGF0YS5BZmZpbGlhdGUgPSAiICsgekRhdGEuQWZmaWxpYXRlKTsKfTsKCi8qIHRoaXMgaXMgYW4gdW50ZXN0ZWQgZnVuY3Rpb24gdG8gZGV0ZWN0IHRoZSBzYW5kYm94IG5hbWUgYW5kIGFzc2lnbiB2YWx1ZXMgKi8gLy9FUlMxNzA1MjIgYWN0aXZhdGluZwp6RGF0YS5vcmdTd2l0Y2g9ZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwNTEyCiAgICBhbGVydCgic2ZVc2VyIGlzICIrZG9jLnNmVXNlck5hbWUpOwogICAgekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCiAgICB6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgp9Owp6RGF0YS5vcmdTd2l0Y2goZG9jKTsgLy9FUlMxNzA4MjIKCnpEYXRhLmdldERhdGFFbnRyeUZpZWxkcz1mdW5jdGlvbihkb2MsemQpIHsgLy9FUlMxOTA2MTkgY29weSB3ZGRhdGEgaW5mbyBpbnRvIHpEYXRhCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsgLy91c2UgekRhdGEgb3IgemQKICAgIHZhciBmaWVsZHM9ZG9jLndkZGF0YS5zcGxpdCgiPFhfIik7CiAgICAvLzxYX1pQQVBFUl9fUHJvdmlkZXJfX3IuTmFtZT5Vbml0ZWQgT2lsICYgR2FzLCBTaW5nYXBvcmU8L1hfWlBBUEVSX19Qcm92aWRlcl9fci5OYW1lPgogICAgLy88WF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZT5Kb3NoIERhdmlzPC9YX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lPgogICAgLy88WF9aUEFQRVJfX0Nhc2VfX2M+NTAwNDQwMDAwMGxFaTMzQUFDPC9YX1pQQVBFUl9fQ2FzZV9fYz4KICAgIGZvciAodmFyIGkgaW4gZmllbGRzKSB7CiAgICAgICAgdmFyIG52PWZpZWxkc1tpXTsgLy8iWlBBUEVSX19DYXNlX19jPjUwMDQ0MDAwMDBsRWkzM0FBQzwvWF9aUEFQRVJfX0Nhc2VfX2M+IgogICAgICAgIHZhciBqPW52LmluZGV4T2YoIj4iKTsKICAgICAgICB2YXIgaz1udi5pbmRleE9mKCI8IixqKzEpOwogICAgICAgIGlmIChqPi0xICYmIGs+LTEpIHsKICAgICAgICAgICAgdmFyIG49IlhfIitudi5zdWJzdHJpbmcoMCxqKTsKICAgICAgICAgICAgdmFyIHY9bnYuc3Vic3RyaW5nKGorMSxrKTsKICAgICAgICAgICAgekRhdGFbbl09djsKICAgICAgICB9CiAgICB9CiAgICB6RGF0YS5jYXNlSWQgPSBYKGRvYywgIlhfWlBBUEVSX19DYXNlX19jIik7IC8vRVJTMTkwNjI0IFRPRE8gbW9yZSBvZiB0aGUgc2FtZQogICAgekRhdGEuY29udGFjdElkID0gWChkb2MsICJYX1pQQVBFUl9fUGF0aWVudF9fYyIpOwogICAgaWYgKCJBY2NvdW50Ij09PVhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19QYXRpZW50UmVjb3JkX19jIikpIHsgLy9FUlMxOTA4MTAgIzYxNTcwIC8vRVJTMTkwODExIGRvYywKICAgICAgICB6RGF0YS5jb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIpOwogICAgfQogICAgekRhdGEucGF0aWVudElkPXpEYXRhLmNvbnRhY3RJZDsgLy9UT0RPIFBlcnNvbmFsQWNjb3VudCBwcmVmZXJlbmNlIC0gRE9ORSBFUlMxOTA4MTAKICAgIHpEYXRhLnByb3ZpZGVySWQgPSBYKGRvYywgIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOwogICAgLy92YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwogICAgLy92YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKICAgIC8vdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKICAgIC8vRVJTMTkwODAyICM2MTI3MiBtYXJzaGFsbCBmcm9tIFgoKSBzaW5jZSB0aGUgZGF0ZSBlbnRyeSBpbmZvIG5vdCBhbHJlYWR5IHNhdmVkIGludG8gd2RkYXRhCiAgICB6RGF0YS5YX1pQQVBFUl9fZmF4VHlwZV9fYz16RGF0YS5kb2NUeXBlID0gWChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOyAvL0VSUzE5MDgxMCBQVjE5MDgwOCAjNjE1NzAKICAgIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2M9cGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwogICAgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jPXBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0xhc3ROYW1lX19jIik7CiAgICB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jPXBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKICAgIHpEYXRhLlhfelBhcGVyX0pvdXJuZXlfX2MgID1qb3VybmV5PSBYKGRvYywgIlhfelBhcGVyX0pvdXJuZXlfX2MiKTsgLy9QVjIwMDIyNSB1cGRhdGVkIGZvciBKb3VybmV5CiAgICB6RGF0YS5YX3pQYXBlcl9ISF9JbnZvaWNlX19jICA9SEhJbnZvaWNlPSBYKGRvYywgIlhfelBhcGVyX0hIX0ludm9pY2VfX2MiKTsKICAgIHpEYXRhLlhfUHJvZ3JhbV9fYyAgPVByb2dyYW09IFgoZG9jLCAiWF9Qcm9ncmFtX19jIik7CiAgICB6RGF0YS5YX0hvbWVfSGVhbHRoX0FnZW5jeV9fYyAgPUFjY291bnQ9IFgoZG9jLCAiWF9Ib21lX0hlYWx0aF9BZ2VuY3lfX2MiKTsKfTsKCgp6RGF0YS5hZGRTdGFnZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxzdGFnZSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKaWYgKCFzdGFnZSkgewogICAgdmFyIGJhPWRvYy5YKCJYX2J1dHRvbkFjdGlvbiIpKyJlZCI7CiAgICBiYT1iYS5zdWJzdHJpbmcoMStiYS5sYXN0SW5kZXhPZigiICIpKTsKICAgIHN0YWdlPWJhOyBpZiAoc3RhZ2UubGVuZ3RoKCk8NCkge3N0YWdlPSJSZWNlaXZlZCI7fQogICAgfSBlbHNlIHsKICAgICAgICBiYT1zdGFnZTsgLy9FUlMxOTA4MDIKICAgIH0KICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5MgogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn0KCi8vSW4gQ2xpZW50IExpYnJhcnkgekRhdGEubmV3Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkge307Cgp6RGF0YS5pbml0aWFsaXplU3RhY2s9ZnVuY3Rpb24oZG9jLHN0YWNrRm9sZGVyLHN0YWNrSWQpIHsgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogIHZhciBhcnJPZlBhaXJzID0gW107CiAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICB2YXIgZmluYWxSb290Rm9sZGVyID0gekRhdGEucHJvZ3JhbU5hbWUrIi1BcmNoaXZlIjsgLy9iYXRlcyBvZiB0aGUgQXJjaGl2ZSBmb2xkZXIKICB2YXIgeXl5eU1NRm9sZGVyTmFtZSA9IHRvZGF5LmdldEZ1bGxZZWFyKCkgKyAoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpOwogIHZhciB5eXl5TU1Gb2xkZXIgPSBmaW5hbFJvb3RGb2xkZXIgKyAiLSIgKyB5eXl5TU1Gb2xkZXJOYW1lOwogIGFsZXJ0KCJAQEAgc3RhY2tGb2xkZXIgaXMgLSAiICsgc3RhY2tGb2xkZXIpOwogIGFsZXJ0KCJAQEAgZmluYWxSb290Rm9sZGVyIGlzIC0gIiArIGZpbmFsUm9vdEZvbGRlcik7CiAgYWxlcnQoIkBAQCB5eU1NRm9sZGVyIGlzIC0gIiArIHl5eXlNTUZvbGRlcik7CiAgYWxlcnQoIkBAQCBjcmVhdGluZyBuZXcgc3RhY2sgZGVzdGluYWlvbiBmb2xkZXIgd2l0aCBuYW1lIC0gIiArIHN0YWNrRm9sZGVyKTsKICAvKiBSZWZyZXNoIHRoZSBjdXJyZW50IGZvbGRlciAqLwogIHJlbG9hZEJ5SWQoZG9jLCBYKGRvYywiWF9jdXJGb2xkZXIiKSk7CiAgLyogc2FtZSB2YWx1ZSBmb3IgQkFURVMgYW5kIGxhYmVsICovCiAgLyogVGhlIGZvbGRlciBzdHJ1Y3R1cmUgd2lsbCBsb29rIGxpa2UgdGhpczogLzIwMTYwOC8zQ1gzQ1gvMTIzNDU2Nzg5LVNUQUNLICovCiAgY3JlYXRlRm9sZGVyKGRvYywgZmluYWxSb290Rm9sZGVyLCB5eXl5TU1Gb2xkZXIsIHl5eXlNTUZvbGRlck5hbWUpOwogIGNyZWF0ZUZvbGRlcihkb2MsIHl5eXlNTUZvbGRlciwgc3RhY2tGb2xkZXIsIHN0YWNrRm9sZGVyKTsKICBhbGVydCgiQEBAQCBNb3ZpbmcgdGhlIHN0YWNrIGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKICBtb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhJbml0aWFsaXplZCIsICJ0cnVlIik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc3RhY2tJZCk7CiAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiLSIgKyBzdGFja0lkICsgIi1TVEFDSyIpOwogIC8qIFN0YWNrIExhYmVsbGluZyBDaGFuZ2UgKi8KICB2YXIgZHRTdGFtcCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UpOwogIC8qIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCJTdGFjayAtICIgKyBkdFN0YW1wKTsgKi8KICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07Cgp6RGF0YS5jb3VudFBhZ2VzID0gZnVuY3Rpb24oZG9jLCBwYWdlUmFuZ2UyKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICB2YXIgcGFnZUFycmF5ID0gcGFnZVJhbmdlMiA/IHBhZ2VSYW5nZTIuc3BsaXQoIiwiKSA6IFtdOwogICAgYWxlcnQoInpEYXRhLmNvdW50UGFnZXMoJyIgKyBwYWdlUmFuZ2UyICsgIicpOiBwYWdlQXJyYXkgPSAiICsgcGFnZUFycmF5KTsKICAgIC8vcmV0dXJuICgiIitwYWdlcyk7IC8vRVJTMTkwODAyICM2MTI3MiBUT0RPIGluIFdBUiBlc3BlY2lhbGx5IGZvciBlbWFpbCBjaGFubmVscyB3aGVyZSBwYWdlcyA9IDEgaW4gdGhlIGZpbGUKICAgIHZhciBjb3VudCA9IHBhZ2VBcnJheS5sZW5ndGg7CiAgICB2YXIgcGFnZXMgPSBYKGRvYywgIlhfcGFnZXMiKTsKICAgIHJldHVybiBjb3VudCA/ICIiICsgY291bnQgOiBwYWdlczsgLy9TSFIxOTA4MjkgIzYxOTI0IG5ldyBzdGFja3MgYW5kIHNwbGl0IG9uZXMKfTsKCnpEYXRhLmV4cG9zZVBERj1mdW5jdGlvbihkb2Msc2ZJZCxwYWdlUmFuZ2UpIHsgLy9FUlMxNzA1MjIgYWRkZWQgcGFnZVJhbmdlCiAgICB2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciBub3dUaW1lU3RhbXAgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAKICAgIHZhciBmaWxlTmFtZSA9IGdldEN1ckRhdGUoZG9jKSArICIgTmV3IEZheC5wZGYiOwogICAgYWxlcnQoIkBAQGZpbGVOYW1lID0gIitmaWxlTmFtZSk7CiAgIAogICAgY3JlYXRlRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAKICAgIC8vQU4xNzA1MjIgc2hvdWxkIHhQYWdlcyBiZSBwYXNzZWQgaW4gYXMgYSB2YXJpYWJsZT8KICAgIHZhciB4UGFnZXMgPSBYKGRvYywgIlhfcG9zaXRpb24iKTsKICAgIGlmIChwYWdlUmFuZ2UpIHhQYWdlcz1wYWdlUmFuZ2U7ICAvL0VSUzE3MDUyMgogICAgYWxlcnQoIkBAQEBAIENhbGxpbmcgc3BsaXRQREYgdG8gc3BsaXQgb2ZmIHBhZ2VzIHRvIHVwbG9hZCBhcyBQREYsIHBhZ2VzID0gIiArIHhQYWdlcyArICIsIG5vd1RpbWVTdGFtcCA9ICIgKyBub3dUaW1lU3RhbXApOwogICAgdmFyIHJlc3BvbnNlID0gc3BsaXRQREYoZG9jLCB4UGFnZXMsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wLCBmaWxlTmFtZSk7CiAgICBhbGVydCgiQEBAQCByZXNwb25zZSBmcm9tIHNwbGl0UERGID0gIiArIHJlc3BvbnNlKTsKICAgIHZhciBuZXdQREZOYW1lID0gWChkb2MsICJuZXdQREYiLCByZXNwb25zZSk7CiAgIAogICAgYWxlcnQoIkBAQEAgc3BsaXQgUERGIEZpbGVOYW1lID0gIiArIG5ld1BERk5hbWUpOwogICAKICAgIHZhciB1cGxvYWRVUkw9Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9teWZpbGVmb3JjZS91cGxvYWRUb0Nsb3VkLmpzcD9TRmlkPU5FVyZTRnBpZD0iK3NmSWQrIiZTRm9yZz0iK2RvYy5zZk9yZysiJmxhYmVsPSIrZmlsZU5hbWUrIiZzZXJ2ZXJGaWxlPSIrbmV3UERGTmFtZSsiJkRlc2NyaXB0aW9uPUZpbGUgYXR0YWNoZWQgYXMgUERGIjsKICAgIGFsZXJ0KCIjIyMjIFVwbG9hZCBuYXRpdmUgUERGIHdpdGggIit1cGxvYWRVUkwpOwogICAgdmFyIHI9d2dldChkb2MsIHVwbG9hZFVSTCk7IC8vRVJTMTcwNTEyIHdhcyB6RGF0YS51cGxvYWRVUkwKICAgIGFsZXJ0KCIjIyMjIEZheCBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKICAgIC8vIEZpbmFsbHksIGRlbGV0ZSB0aGUgZm9sZGVyIGFuZCBhbGwgY29udGVudHMuCiAgICBjbGVhbnVwRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAgLy8gTm93IHNldCB0aGUgbGFiZWwgaW4gb3VyIFNuaXBwZXQKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiTmV3IGZpbGUgIiArIGZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7Cn07Cgp6RGF0YS5nZXRTdGFja0lkPWZ1bmN0aW9uKGRvYyxpZHMsc3RhY2tUeXBlTmFtZSkgeyAvL0VSUzE5MDYxNyBmcm9tIFVOTE9DSyAvL1RPRE8gRVJTMTkwNjI0IGZpbmQgc3RhY2tUeXBlTmFtZSBuZWVkZWQgZG9jCiAgICBpZiAoIWlkcyB8fCBpZHM9PT0iIikgaWRzID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOyAvL0VSUzE5MDYxOCBUT0RPIGNvbmZpcm0gZG9jIGluIHNjb3BlCiAgICBpZHMgPSBpZHMgKyAiIjsKaWYgKGlkcy5sYXN0SW5kZXhPZignLycpID49IDApIHsgLy9FUlMxOTA2MTggZ2V0IGZpcnN0IElkIGlmIC8gaXMgcGFzc2VkIGluCmlkcyA9IGlkcy5zdWJzdHJpbmcoaWRzLmxhc3RJbmRleE9mKCcvJykrMSk7CmlmIChpZHMuaW5kZXhPZignLCcpID49IDApIHsgaWRzID0gaWRzLnN1YnN0cmluZygwLCBpZHMuaW5kZXhPZignLCcpKTsgfQovL3JldHVybiBpZHM7Cn0KICAgCiAgICBpZiAoIXN0YWNrVHlwZU5hbWUpIHN0YWNrVHlwZU5hbWU9IlpQQVBFUl9felN0YWNrX19jIjsgLy9FUlMxOTA2MjQgZ3Vlc3NpbmcgVE9ETyBmaW5kIGV4YW1wbGVzCiAgICB2YXIgcGFydHMgPSBpZHMuc3BsaXQoJywnKTsKICAgIGZvciAodmFyIGk9MDsgaTxwYXJ0cy5sZW5ndGg7IGkrKykgeyAvL2dldCBrYXN0IElkIGlmIC8gaXMgTk9UIHBhc3NlZCBpbgogICAgICAgIHZhciBpZCA9IHBhcnRzW2ldLnRyaW0oKTsKICAgICAgICBpZiAoaWQubGVuZ3RoID4gMCkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBwdWxsaW5nIHR5cGUgZm9yIGlkOiAiICsgaWQpOwogICAgICAgICAgICBpZiAoc3RhY2tUeXBlTmFtZSA9PT0gZ2V0U0ZUeXBlKGRvYywgaWQpKSB7CiAgICAgICAgICAgICAgICByZXR1cm4gaWQ7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICByZXR1cm4gbnVsbDsKfTsKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzKGRvYyk7IC8vY2FsbCBmdW5jdGlvbiB0byBzZXQgdmFyaWFibGVzCi8qIEVORCAqLw=="},"ordinal":0}

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
    var deliveredTo = doc.deliveredTo + ""; //JPB190529 Check deliveredTo for community uploades
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
    for (var i=1; i<=maxChannels; i++) {
        var channel=XCustomSetting(doc,zp+"Channel"+i+"__c");
        var program=XCustomSetting(doc,zp+"Program"+i+"__c");
        //var affiliate=XCustomSetting(doc,zp+"Affiliate"+i+"__c");
        var classification=XCustomSetting(doc,zp+"Classification"+i+"__c");
        var attachRecords=XCustomSetting(doc,"Records"+i+"__c"); //no zp is deliberate
        if (!attachRecords) attachRecords=zData.attachRecords;
        if (!channel) break;
        if (i>=3) zp=""; //2 in managed package
        var c=channel; if (c.indexOf("1")===0) c=c.substring(1);
        zData.channels=i;
        if (doc.deliveredTo.indexOf(c)>-1) {
            zData.channel=channel; zData.programName=program;
            if(!isNaN(c)) zData.channel[program]=channel; //reverse lookup for fax
            //zData.Affiliate=affiliate;
            zData.classification=classification;
            zData.attachRecords=attachRecords; //ERS190620
            break;
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
    zData.patientId=zData.contactId; //TODO PersonalAccount preference - DONE ERS190810
    zData.providerId = X(doc, "X_ZPAPER__Provider__c");
    //var patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
    //var patientLastName = X(doc, "X_ZPAPER__LastName__c");
    //var patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
    //ERS190802 #61272 marshall from X() since the date entry info not already saved into wddata
    zData.X_ZPAPER__faxType__c=zData.docType = X(doc, "X_ZPAPER__faxType__c"); //ERS190810 PV190808 #61570
    zData.X_ZPAPER__FirstName__c=patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
    zData.X_ZPAPER__LastName__c=patientLastName = X(doc, "X_ZPAPER__LastName__c");
    zData.X_ZPAPER__Birthdate__c=patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
    zData.X_zPaper_Journey__c  =journey= X(doc, "X_zPaper_Journey__c"); //PV200225 updated for Journey
    zData.X_zPaper_HH_Invoice__c  =HHInvoice= X(doc, "X_zPaper_HH_Invoice__c");
    zData.X_Program__c  =Program= X(doc, "X_Program__c");
    zData.X_Home_Health_Agency__c  =Account= X(doc, "X_Home_Health_Agency__c");
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
  moveDocument(doc,"",stackFolder);
  arrOfPairs.push("X_indexInitialized", "true");
  arrOfPairs.push("X_stack", stackId);
  arrOfPairs.push("db-BATES", doc.kbData.groupID.substring(1) + "-" + stackId + "-STACK");
  /* Stack Labelling Change */
  var dtStamp = getCurDateAndTime(doc, false);
  /* arrOfPairs.push("db-label","Stack - " + dtStamp); */
  updateDB(doc,arrOfPairs);
};

zData.countPages = function(doc, pageRange2) {  //ERS170512 moved to library
    var pageArray = pageRange2 ? pageRange2.split(",") : [];
    alert("zData.countPages('" + pageRange2 + "'): pageArray = " + pageArray);
    //return (""+pages); //ERS190802 #61272 TODO in WAR especially for email channels where pages = 1 in the file
    var count = pageArray.length;
    var pages = X(doc, "X_pages");
    return count ? "" + count : pages; //SHR190829 #61924 new stacks and split ones
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
//return ids;
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
