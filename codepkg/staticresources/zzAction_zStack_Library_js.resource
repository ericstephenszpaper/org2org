<!--
// Name: zStack Library
// Committer: eric.stephens@zpaper.com
// Update: ERS200420 #70953 safety
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-04-20 16:35:05","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCi8vRVJTMjAwNDIwICM3MDk1MyBzYWZldHkKekRhdGEucHJvZ3JhbU5hbWUgPSAiIjsKekRhdGEuQWZmaWxpYXRlID0gIiI7CnpEYXRhLnpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwNjE3ICM1MjY2MQp6RGF0YS56cHM9ekRhdGEuenArInpTdGFja19fYyI7CnpEYXRhLnNmSUQgPSBnZXRCYXJjb2RlT25lKGRvYyk7CmlmICghekRhdGEuc2ZJRCB8fCAwID09PSB6RGF0YS5zZklELmxlbmd0aCkgewogICAgekRhdGEuc2ZJRCA9IGdldEFsdGVybmF0ZUJhcmNvZGVPbmUoZG9jKSArICIiOwp9CnpEYXRhLmZvcm1hdE5vdz16RGF0YS5ub3c9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsgLy9FUlMxOTA2MjQgd2FzIGp1c3QgLm5vdwp6RGF0YS5hdHRhY2hSZWNvcmRzPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiUmVjb3Jkc19fYyIpLnRyaW0oKTsKaWYgKCF6RGF0YS5hdHRhY2hSZWNvcmRzKSB7IHpEYXRhLmF0dGFjaFJlY29yZHM9IkNhc2UsTGVhZCI7fSAvL0Nhc2UsQ29udGFjdCxBY2NvdW50LFBhdGllbnQsTGVhZAoKaWYgKDE9PT0wKSB7IC8vRVJTMjAwMzE0IGluIGNsaWVudExpYnJhcnkgLy9FUlMxNzA4MDUgZ2V0IHRoZSBkYXRhIGZyb20gdGhlIERlcGxveW1lbnRJbmZvIC8vRVJTMTcwOTA5IFRPRE8gZG8gdGhpcyBzYWZlbHkgd2l0aCBYRGVwbG95bWVudEluZm8sWEN1c3RvbVNldHRpbmcKICAgIC8vYWxlcnQoIkVSUzE3MDcyNSBEST0iK2RvYy5rYkRhdGEuZGVwbG95bWVudEluZm8pOwogICAgdmFyIGNzPShkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKyIiKTsgLy9ub3QgWyJCdXNpbmVzc19Qcm9jZXNzX19jIl07CiAgICAvL2FsZXJ0KCJFUlMxNzA4MDUgY3M9Iitjcyk7CiAgICBpZiAoY3MpIHsKICAgICAgICBpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsKICAgICAgICBpZiAoY3MgIT09ICIiKSBldmFsKGNzKTsKICAgICAgICBhbGVydCgiRVJTMTcwODIyIGltcG9ydCBmb3IgIitjcyk7CiAgICB9Cn0KCi8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmU9ZnVuY3Rpb24oZG9jKSB7CiAgIHZhciBkb2MwPVtdOwogICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXT1kb2NbaV07CiAgIHJldHVybiBkb2MwOwp9OwoKLy8gVGhpcyBmdW5jdGlvbiBuZWVkcyB0byBiZSBhZGRlZCB0byBldmVyeSBydWxlIHRvIGhlbHAgYXNzdXJlIHRoYXQgcnVsZXMgZG8gbm90IGdldCBhY2NpZGVudGFsbHkgdHJpZ2dlcmVkCi8vIEFkZCB0aGlzIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIHJ1bGVzIGVuZ2luZSBpdHNlbGY/CnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbiA9IGZ1bmN0aW9uKGRvYyx0cmlnZ2VyRmllbGQpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2godHJpZ2dlckZpZWxkLCAiIik7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07CgovL0FOMTkwNTMwIHRlY2ggZGVidD8gdW5zdXJlIGhvdyB0aGlzIGZ1bmN0aW9uIGlzIG5lZWRlZAp6RGF0YS5uYW1lRmlsZSA9IGZ1bmN0aW9uKGRvYykgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKStYKGRvYywiWF9aUEFQRVJfX0xhc3ROYW1lX19jIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7CiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07CgoKekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSA9IGZ1bmN0aW9uKGRvYykgeyAvL01TSDE3MDgzMSBleHRyYWN0IGRhdGUgZm9ybWF0IGZyb20gekRhdGEubmFtZUZpbGUKICAgIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICAgIC8vTVNIMTcwOTA2IHBhZCBkYXkgd2l0aCB6ZXJvCiAgICB2YXIgY3VyRGF5ID0gdG9kYXkuZ2V0RGF0ZSgpOwogICAgLy9NU0gxNzA5MDYgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKyIiK3RvZGF5LmdldERhdGUoKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsoIiIrKGN1ckRheSA+IDkgPyBjdXJEYXkrIiIgOiAiMCIrY3VyRGF5KSkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICAvL2FsZXJ0KCJNTWRkWVlZWSA9PSAiICsgTU1kZFlZWVkpOwogICAgcmV0dXJuIE1NZGRZWVlZOwp9OwoKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzID0gZnVuY3Rpb24oZG9jKSB7IHJldHVybiB6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgfTsgLy9NU0gxNzEwMDUgZ2V0IGFsbCB0aGUgb3JncyBpbiBoZXJlCnpEYXRhLnNldGJyYW5kcHJvZ3JhbSA9IGZ1bmN0aW9uKGRvYykgeyByZXR1cm4gekRhdGEuc2V0QnJhbmRQcm9ncmFtKGRvYyk7IH07IC8vTVNIMTcxMDA1IGdldCBhbGwgdGhlIG9yZ3MgaW4gaGVyZQogICAgCnpEYXRhLnNldEJyYW5kUHJvZ3JhbSA9IGZ1bmN0aW9uKGRvYykgeyAvL1RPRE8gZG8gaHViIHdpdGggc2V0dGluZ3MKICAgIGFsZXJ0KCIrKysgU1RBUlRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBkb2MuZGVsaXZlcmVkVG8gPSAiICsgZG9jLmRlbGl2ZXJlZFRvKTsKICAgIHZhciB6cD16RGF0YS56cDsKICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLmNoYW5uZWw9ZG9jLmRlbGl2ZXJlZFRvOwogICAgekRhdGEucHJvZ3JhbU5hbWU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgLy96RGF0YS5BZmZpbGlhdGU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvICsgIiI7CS8vSlBCMTkwNTI5IENoZWNrIGRlbGl2ZXJlZFRvIGZvciBjb21tdW5pdHkgdXBsb2FkZXMKICAgIGlmICghaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7IHpEYXRhLmNoYW5uZWw9IkZheCI7IH0gLy9FUlMxOTA4MTAgIzYxNTcwIHNldCBjaGFuZW5lbCB0byBmYXggaWYgbnVtYmVyIAogICAgaWYgKGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIkAiKT4tMSB8fCBkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHt6RGF0YS5jaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE4MDUwNSAjNDgxMDEKICAgIGlmIChpc05hTihkb2MuZGVsaXZlcmVkRnJvbSkpIHt6RGF0YS5jaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE5MDgxMiAjNjE1MTEKICAgIGlmIChpc05hTihkZWxpdmVyZWRUbykpIHsKICAgIAlpZiAoZGVsaXZlcmVkVG8udG9Mb3dlckNhc2UoKS5pbmRleE9mKCJjb21tdW5pdHkiKSA+PSAwKSB7CiAgICAJCXpEYXRhLmNoYW5uZWwgPSAiQ29tbXVuaXR5IjsKICAgIAl9IGVsc2UgewoJCSAgICB6RGF0YS5jaGFubmVsPSJTY2FuIjsKCSAgICB9CiAgICB9CiAgICB2YXIgbWF4Q2hhbm5lbHM9MjsgaWYgKHpEYXRhLm1heENoYW5uZWxzKSBtYXhDaGFubmVscz16RGF0YS5tYXhDaGFubmVsczsgLy9FUlMxOTA3MzEgIzYxMjcyCiAgICBtYXhDaGFubmVscz02OyBhbGVydCgiekRhdGEubWF4Q2hhbm5lbHM9Iit6RGF0YS5tYXhDaGFubmVscyk7CiAgICBmb3IgKHZhciBpPTE7IGk8PW1heENoYW5uZWxzOyBpKyspIHsKICAgICAgICBpZiAoaT49MykgenA9IiI7IC8vMiBpbiBtYW5hZ2VkIHBhY2thZ2UgLy9FUlMyMDAyMDUgQ01BIGhlbHBlZCBzcG90IHRoZSBydWJiZXIgZHVja3khISEKICAgICAgICAKICAgICAgICB2YXIgY2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNoYW5uZWwiK2krIl9fYyIpOwogICAgICAgIHZhciBwcm9ncmFtPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiUHJvZ3JhbSIraSsiX19jIik7CiAgICAgICAgLy92YXIgYWZmaWxpYXRlPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQWZmaWxpYXRlIitpKyJfX2MiKTsKICAgICAgICB2YXIgY2xhc3NpZmljYXRpb249WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJDbGFzc2lmaWNhdGlvbiIraSsiX19jIik7CiAgICAgICAgdmFyIGF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLCJSZWNvcmRzIitpKyJfX2MiKTsgLy9ubyB6cCBpcyBkZWxpYmVyYXRlCiAgICAgICAgaWYgKCFhdHRhY2hSZWNvcmRzKSBhdHRhY2hSZWNvcmRzPXpEYXRhLmF0dGFjaFJlY29yZHM7CiAgICAgICAgCiAgICAgICAgLy96Q2hhbm5lbDMJeydwYXRoJzonT3JwaGFuIFJhcmUgRGlzZWFzZXMvUFJPQ1lTQkkvMTY3ODk0ODk3NzQuUFJPQ1lTQkknLCdkYi1yZWFkZXJzJzonOi0yMDEwMC4zOicsJ2RiLXVzZXJzJzonOi0yMDEwMC4zOid9CiAgICAgICAgdmFyIHpwMj16cDsgCiAgICAgICAgenAyPSIiOyAvL0VSUzIwMDIwOSB1bnRpbCBpbiBwYWNrYWdlCiAgICAgICAgdmFyIHpjaGFubmVsPVhDdXN0b21TZXR0aW5nKGRvYyx6cDIrInpDaGFubmVsIitpKyJfX2MiKTsKICAgICAgICBpZiAoemNoYW5uZWwgJiYgemNoYW5uZWwuaW5kZXhPZigieyIpID09IDApIHsgLy9FUlMyMDAyMDkgIzY4ODI1IHpDaGFubmVsCiAgICAgICAgICAgIHRyeSB7CiAgICAgICAgICAgICAgICBpZiAoemNoYW5uZWwuaW5kZXhPZigieyciKT09MCkgemNoYW5uZWw9emNoYW5uZWwucmVwbGFjZUFsbCgiJyIsIlwiIik7IC8vRVJTMjAwMjA5IEhBQ0sgYXJvdW5kIHN0YWxlIHppcHBpIGNhY2hlCiAgICAgICAgICAgICAgICB6Y2hhbm5lbD1KU09OLnBhcnNlKHpjaGFubmVsKTsKICAgICAgICAgICAgICAgIGFsZXJ0KCJ6Q2hhbm5lbCIraSsiLnBhdGg9Iit6Y2hhbm5lbC5wYXRoKTsKICAgICAgICAgICAgICAgIHpEYXRhLnpjaGFubmVsPXpjaGFubmVsOwogICAgICAgICAgICAgICAgdmFyIHA9emNoYW5uZWwucGF0aC5zcGxpdCgiLyIpOwogICAgICAgICAgICAgICAgY2xhc3NpZmljYXRpb249cFswXTsgcHJvZ3JhbT1wWzFdOyBjaGFubmVsPXBbMl07CiAgICAgICAgICAgIH0gY2F0Y2ggKGUpIHsKICAgICAgICAgICAgICAgIGFsZXJ0KCJ6Q2hhbm5lbCIraSsiIG5vdCB2YWxpZC4gIitlKyIgZnJvbSAiK3pjaGFubmVsKTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgICAgICAKICAgICAgICBpZiAoIWNoYW5uZWwpIGJyZWFrOwogICAgICAgIAogICAgICAgIHZhciBjPWNoYW5uZWw7IGlmIChjLmluZGV4T2YoIjEiKT09PTApIGM9Yy5zdWJzdHJpbmcoMSk7CiAgICAgICAgekRhdGEuY2hhbm5lbHM9aTsKICAgICAgICBhbGVydCgiRVJTMjAwMjA1Ljk3ICIrZG9jLmRlbGl2ZXJlZFRvKyIgPz0gIisgYyk7CiAgICAgICAgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKGMpPi0xKSB7CiAgICAgICAgICAgIHpEYXRhLmNoYW5uZWw9Y2hhbm5lbDsgekRhdGEucHJvZ3JhbU5hbWU9cHJvZ3JhbTsgCiAgICAgICAgICAgIGlmKCFpc05hTihjKSkgekRhdGEuY2hhbm5lbFtwcm9ncmFtXT1jaGFubmVsOyAvL3JldmVyc2UgbG9va3VwIGZvciBmYXgKICAgICAgICAgICAgLy96RGF0YS5BZmZpbGlhdGU9YWZmaWxpYXRlOyAKICAgICAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb249Y2xhc3NpZmljYXRpb247CiAgICAgICAgICAgIHpEYXRhLmF0dGFjaFJlY29yZHM9YXR0YWNoUmVjb3JkczsgLy9FUlMxOTA2MjAKICAgICAgICAgICAgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIuIik9PS0xKSBicmVhazsgLy9FUlMyMDAyMDUgY2hlY2sgdGhlbSBhbGwgaWYgdXNpbmcgc3ViY2hhbm5lbHMgIzY4ODI1CiAgICAgICAgfQogICAgfQogICAgYWxlcnQoIisrKyBFTkRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBvcmlnaW4gPSAiICsgekRhdGEuY2xhc3NpZmljYXRpb24rIi8iK3pEYXRhLnByb2dyYW1OYW1lKyIvIit6RGF0YS5jaGFubmVsKTsKICAgIC8vYWxlcnQoIkBAQCB6RGF0YS5BZmZpbGlhdGUgPSAiICsgekRhdGEuQWZmaWxpYXRlKTsKfTsKCi8qIHRoaXMgaXMgYW4gdW50ZXN0ZWQgZnVuY3Rpb24gdG8gZGV0ZWN0IHRoZSBzYW5kYm94IG5hbWUgYW5kIGFzc2lnbiB2YWx1ZXMgKi8gLy9FUlMxNzA1MjIgYWN0aXZhdGluZwp6RGF0YS5vcmdTd2l0Y2g9ZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwNTEyCiAgICBhbGVydCgic2ZVc2VyIGlzICIrZG9jLnNmVXNlck5hbWUpOwogICAgekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCiAgICB6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgp9Owp6RGF0YS5vcmdTd2l0Y2goZG9jKTsgLy9FUlMxNzA4MjIKCnpEYXRhLmdldERhdGFFbnRyeUZpZWxkcz1mdW5jdGlvbihkb2MsemQpIHsgLy9FUlMxOTA2MTkgY29weSB3ZGRhdGEgaW5mbyBpbnRvIHpEYXRhCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsgLy91c2UgekRhdGEgb3IgemQKICAgIHZhciBmaWVsZHM9ZG9jLndkZGF0YS5zcGxpdCgiPFhfIik7IAogICAgLy88WF9aUEFQRVJfX1Byb3ZpZGVyX19yLk5hbWU+VW5pdGVkIE9pbCAmIEdhcywgU2luZ2Fwb3JlPC9YX1pQQVBFUl9fUHJvdmlkZXJfX3IuTmFtZT4KICAgIC8vPFhfWlBBUEVSX19QYXRpZW50X19yLk5hbWU+Sm9zaCBEYXZpczwvWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZT4KICAgIC8vPFhfWlBBUEVSX19DYXNlX19jPjUwMDQ0MDAwMDBsRWkzM0FBQzwvWF9aUEFQRVJfX0Nhc2VfX2M+CiAgICBmb3IgKHZhciBpIGluIGZpZWxkcykgewogICAgICAgIHZhciBudj1maWVsZHNbaV07IC8vIlpQQVBFUl9fQ2FzZV9fYz41MDA0NDAwMDAwbEVpMzNBQUM8L1hfWlBBUEVSX19DYXNlX19jPiIKICAgICAgICB2YXIgaj1udi5pbmRleE9mKCI+Iik7CiAgICAgICAgdmFyIGs9bnYuaW5kZXhPZigiPCIsaisxKTsKICAgICAgICBpZiAoaj4tMSAmJiBrPi0xKSB7CiAgICAgICAgICAgIHZhciBuPSJYXyIrbnYuc3Vic3RyaW5nKDAsaik7CiAgICAgICAgICAgIHZhciB2PW52LnN1YnN0cmluZyhqKzEsayk7CiAgICAgICAgICAgIHpEYXRhW25dPXY7CiAgICAgICAgfQogICAgfQogICAgekRhdGEuY2FzZUlkID0gWChkb2MsICJYX1pQQVBFUl9fQ2FzZV9fYyIpOyAvL0VSUzE5MDYyNCBUT0RPIG1vcmUgb2YgdGhlIHNhbWUKICAgIHpEYXRhLmNvbnRhY3RJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRfX2MiKTsKICAgIGlmICgiQWNjb3VudCI9PT1YQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudFJlY29yZF9fYyIpKSB7IC8vRVJTMTkwODEwICM2MTU3MCAvL0VSUzE5MDgxMSBkb2MsCiAgICAgICAgekRhdGEuY29udGFjdElkID0gWChkb2MsICJYX1pQQVBFUl9fUGF0aWVudEFjY291bnRfX2MiKTsKICAgIH0KICAgIGlmICh6RGF0YS5jb250YWN0SWQpIHpEYXRhLnBhdGllbnRJZD16RGF0YS5jb250YWN0SWQ7IC8vVE9ETyBQZXJzb25hbEFjY291bnQgcHJlZmVyZW5jZSAtIERPTkUgRVJTMTkwODEwIC8vRVJTMjAwMzA1IGNoZWNrIHpEYXRhLmNvbnRhY3RJZAogICAgekRhdGEucHJvdmlkZXJJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIik7CiAgICAvL3ZhciBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CiAgICAvL3ZhciBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwogICAgLy92YXIgcGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwogICAgLy9FUlMxOTA4MDIgIzYxMjcyIG1hcnNoYWxsIGZyb20gWCgpIHNpbmNlIHRoZSBkYXRlIGVudHJ5IGluZm8gbm90IGFscmVhZHkgc2F2ZWQgaW50byB3ZGRhdGEKICAgIHpEYXRhLlhfWlBBUEVSX19mYXhUeXBlX19jPXpEYXRhLmRvY1R5cGUgPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IC8vRVJTMTkwODEwIFBWMTkwODA4ICM2MTU3MAogICAgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYz1wYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CiAgICB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2M9cGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKICAgIHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2M9cGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwogICAgCiAgICBpZiAoMT09MCkgeyAvL0VSUzIwMDQxMiBUT0RPIGNoZWNrIHRoYXQgbG9vcCBhdCAxNDcgaXMgZG9pbmcgdGhpcwogICAgICAgIC8vUFYxOTEwMDggdXBkYXRlZCBuZXcgZmllbGRzCiAgICAgICAgekRhdGEuWF9aUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jID0gWChkb2MsICJYX1pQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiKTsKICAgICAgICB6RGF0YS5YX1pQQVBFUl9fUHJpb3JpdHlfX2MgPSBYKGRvYywgIlhfWlBBUEVSX19Qcmlvcml0eV9fYyIpOwogICAgICAgIHpEYXRhLlhfU3ViX0NhdGVnb3J5X19jID0gWChkb2MsICJYX1N1Yl9DYXRlZ29yeV9fYyIpOwogICAgICAgIHpEYXRhLlhfWlBBUEVSX19mYXhUeXBlX19jPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7CiAgICAgICAgekRhdGEuWF9QcmVzY3JpcHRpb25fX2MgPSBYKGRvYywgIlhfUHJlc2NyaXB0aW9uX19jIik7CiAgICAgICAgekRhdGEuWF9NZW1iZXJfUGxhbl9fYyA9IFgoZG9jLCAiWF9NZW1iZXJfUGxhbl9fYyIpOwogICAgICAgIHpEYXRhLlhfQ292ZXJhZ2VfQmVuZWZpdF9fYyA9IFgoZG9jLCAiWF9Db3ZlcmFnZV9CZW5lZml0X19jIik7CiAgICAgICAgekRhdGEuWF9DbGluaWNhbF9TZXJ2aWNlc19fYyA9IFgoZG9jLCAiWF9DbGluaWNhbF9TZXJ2aWNlc19fYyIpOwogICAgICAgIHpEYXRhLlhfU2VydmljZV9SZXF1ZXN0ZWRfRGF0ZV9fYyA9IFgoZG9jLCAiWF9TZXJ2aWNlX1JlcXVlc3RlZF9EYXRlX19jIik7CiAgICAgICAgekRhdGEuWF9SZXBvcnRlZF9PdXRjb21lX19jID0gWChkb2MsICJYX1JlcG9ydGVkX091dGNvbWVfX2MiKTsKICAgICAgICB6RGF0YS5YX0Fzc2Vzc21lbnRfVHlwZV9fYyA9IFgoZG9jLCAiWF9Bc3Nlc3NtZW50X1R5cGVfX2MiKTsKICAgICAgICB6RGF0YS5YX091dGNvbWVfVHlwZV9fYyA9IFgoZG9jLCAiWF9PdXRjb21lX1R5cGVfX2MiKTsKICAgICAgICB6RGF0YS5YX1Byb2R1Y3RfRGVzY3JpYmVkX19jID0gWChkb2MsICJYX1Byb2R1Y3RfRGVzY3JpYmVkX19jIik7IC8vUFYxOTEwMjEgdXBkYXRlZCB0aGUgZmllbGRzCiAgICB9Cn07Cgp6RGF0YS5hZGRTdGFnZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxzdGFnZSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKCXZhciBiYT0iIjsgLy9FUlMyMDAzMTQgIzcwMzM2CglpZiAoIXN0YWdlKSB7CiAgICAJYmE9WChkb2MsIlhfYnV0dG9uQWN0aW9uIikrImVkIjsgLy9FUlMyMDAzMTQgd2FzIGRvYy5YKCkgIzcwMzM2CiAgICAJaWYgKGJhLmluZGV4T2YoImVlZCIpPi0xKSBiYT1YKGRvYywiWF9idXR0b25BY3Rpb24iKSsiZCI7IC8vRVJTMjAwMzE0CiAgICAgCWJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgCXN0YWdlPWJhOyBpZiAoc3RhZ2UubGVuZ3RoKCk8NCkge3N0YWdlPSJSZWNlaXZlZCI7fQogICAgfSBlbHNlIHsKICAgICAgICBiYT1zdGFnZTsgLy9FUlMxOTA4MDIKICAgIH0KICAgIHZhciBub3cwID0gekRhdGEuZm9ybWF0Tm93OyBpZiAoIW5vdzApIG5vdzA9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOyAgLy9FUlMyMDAzMTQgIzcwMzM2CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfQoKLy9JbiBDbGllbnQgTGlicmFyeSB6RGF0YS5uZXdDYXNlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7fTsKCnpEYXRhLmluaXRpYWxpemVTdGFjaz1mdW5jdGlvbihkb2Msc3RhY2tGb2xkZXIsc3RhY2tJZCkgeyAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogIHZhciBmaW5hbFJvb3RGb2xkZXIgPSB6RGF0YS5wcm9ncmFtTmFtZSsiLUFyY2hpdmUiOyAvL2JhdGVzIG9mIHRoZSBBcmNoaXZlIGZvbGRlcgogIHZhciB5eXl5TU1Gb2xkZXJOYW1lID0gdG9kYXkuZ2V0RnVsbFllYXIoKSArIChjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCk7CiAgdmFyIHl5eXlNTUZvbGRlciA9IGZpbmFsUm9vdEZvbGRlciArICItIiArIHl5eXlNTUZvbGRlck5hbWU7CiAgYWxlcnQoIkBAQCBzdGFja0ZvbGRlciBpcyAtICIgKyBzdGFja0ZvbGRlcik7CiAgYWxlcnQoIkBAQCBmaW5hbFJvb3RGb2xkZXIgaXMgLSAiICsgZmluYWxSb290Rm9sZGVyKTsKICBhbGVydCgiQEBAIHl5TU1Gb2xkZXIgaXMgLSAiICsgeXl5eU1NRm9sZGVyKTsKICBhbGVydCgiQEBAIGNyZWF0aW5nIG5ldyBzdGFjayBkZXN0aW5haW9uIGZvbGRlciB3aXRoIG5hbWUgLSAiICsgc3RhY2tGb2xkZXIpOwogIC8qIFJlZnJlc2ggdGhlIGN1cnJlbnQgZm9sZGVyICovCiAgcmVsb2FkQnlJZChkb2MsIFgoZG9jLCJYX2N1ckZvbGRlciIpKTsKICAvKiBzYW1lIHZhbHVlIGZvciBCQVRFUyBhbmQgbGFiZWwgKi8KICAvKiBUaGUgZm9sZGVyIHN0cnVjdHVyZSB3aWxsIGxvb2sgbGlrZSB0aGlzOiAvMjAxNjA4LzNDWDNDWC8xMjM0NTY3ODktU1RBQ0sgKi8KICBjcmVhdGVGb2xkZXIoZG9jLCBmaW5hbFJvb3RGb2xkZXIsIHl5eXlNTUZvbGRlciwgeXl5eU1NRm9sZGVyTmFtZSk7CiAgY3JlYXRlRm9sZGVyKGRvYywgeXl5eU1NRm9sZGVyLCBzdGFja0ZvbGRlciwgc3RhY2tGb2xkZXIpOwogIGFsZXJ0KCJAQEBAIE1vdmluZyB0aGUgc3RhY2sgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwogIGFyck9mUGFpcnMucHVzaCgiWF9pbmRleEluaXRpYWxpemVkIiwgInRydWUiKTsKICBpZiAoMT09MSkgeyAvL0VSUzIwMDIwNSAjNjg4MjUgVE9ETyBDUk4gdG8gcmV2aWV3IG1vdmVEb2N1bWVudCBhbmQgaWYgd2UgbmVlZCBpdCB0aGVuIGZpeCB0aGUgeF9zdGFjayBwcm9ibGVtIHdpdGggaXQKICAgIG1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc3RhY2tJZCk7CiAgICAvL0VSUzIwMDIyMiBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgZG9jLmtiRGF0YS5ncm91cElELnN1YnN0cmluZygxKSArICItIiArIHN0YWNrSWQgKyAiLVNUQUNLIik7CiAgfQogIGFsZXJ0KCJFUlMyMDAyMDUgc3RhY2tJZD0iK3N0YWNrSWQpOwogIC8qIFN0YWNrIExhYmVsbGluZyBDaGFuZ2UgKi8KICB2YXIgZHRTdGFtcCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UpOwogIC8qIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCJTdGFjayAtICIgKyBkdFN0YW1wKTsgKi8KICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07Cgp6RGF0YS5jb3VudFBhZ2VzID0gZnVuY3Rpb24oZG9jLCBwYWdlUmFuZ2UyKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICB2YXIgcGFnZXMgPSBwYWdlUmFuZ2UyLnNwbGl0KCIsIik7CiAgICBpZiAoIXBhZ2VzKSBwYWdlcz1bcGFnZVJhbmdlMl07CiAgICBhbGVydCgiekRhdGEuY291bnRQYWdlcyBwYWdlcyA9ICIgKyBwYWdlcyk7CiAgICAvL3JldHVybiBwYWdlcy5sZW5ndGg7CiAgICByZXR1cm4gKCIiK3BhZ2VzLmxlbmd0aCk7IC8vRVJTMTkwODAyICM2MTI3MiBUT0RPIGluIFdBUgp9OwoKekRhdGEuZXhwb3NlUERGPWZ1bmN0aW9uKGRvYyxzZklkLHBhZ2VSYW5nZSkgeyAvL0VSUzE3MDUyMiBhZGRlZCBwYWdlUmFuZ2UKICAgIHZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgICAKICAgIHZhciBmaWxlTmFtZSA9IGdldEN1ckRhdGUoZG9jKSArICIgTmV3IEZheC5wZGYiOwogICAgYWxlcnQoIkBAQGZpbGVOYW1lID0gIitmaWxlTmFtZSk7CiAgICAKICAgIGNyZWF0ZURpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgIAogICAgLy9BTjE3MDUyMiBzaG91bGQgeFBhZ2VzIGJlIHBhc3NlZCBpbiBhcyBhIHZhcmlhYmxlPwogICAgdmFyIHhQYWdlcyA9IFgoZG9jLCAiWF9wb3NpdGlvbiIpOwogICAgaWYgKHBhZ2VSYW5nZSkgeFBhZ2VzPXBhZ2VSYW5nZTsgIC8vRVJTMTcwNTIyCiAgICBhbGVydCgiQEBAQEAgQ2FsbGluZyBzcGxpdFBERiB0byBzcGxpdCBvZmYgcGFnZXMgdG8gdXBsb2FkIGFzIFBERiwgcGFnZXMgPSAiICsgeFBhZ2VzICsgIiwgbm93VGltZVN0YW1wID0gIiArIG5vd1RpbWVTdGFtcCk7CiAgICB2YXIgcmVzcG9uc2UgPSBzcGxpdFBERihkb2MsIHhQYWdlcywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXAsIGZpbGVOYW1lKTsKICAgIGFsZXJ0KCJAQEBAIHJlc3BvbnNlIGZyb20gc3BsaXRQREYgPSAiICsgcmVzcG9uc2UpOwogICAgdmFyIG5ld1BERk5hbWUgPSBYKGRvYywgIm5ld1BERiIsIHJlc3BvbnNlKTsKICAgIAogICAgYWxlcnQoIkBAQEAgc3BsaXQgUERGIEZpbGVOYW1lID0gIiArIG5ld1BERk5hbWUpOwogICAgCiAgICB2YXIgdXBsb2FkVVJMPSJodHRwOi8vbG9jYWxob3N0OjgwODAvbXlmaWxlZm9yY2UvdXBsb2FkVG9DbG91ZC5qc3A/U0ZpZD1ORVcmU0ZwaWQ9IitzZklkKyImU0Zvcmc9Iitkb2Muc2ZPcmcrIiZsYWJlbD0iK2ZpbGVOYW1lKyImc2VydmVyRmlsZT0iK25ld1BERk5hbWUrIiZEZXNjcmlwdGlvbj1GaWxlIGF0dGFjaGVkIGFzIFBERiI7CiAgICBhbGVydCgiIyMjIyBVcGxvYWQgbmF0aXZlIFBERiB3aXRoICIrdXBsb2FkVVJMKTsKICAgIHZhciByPXdnZXQoZG9jLCB1cGxvYWRVUkwpOyAvL0VSUzE3MDUxMiB3YXMgekRhdGEudXBsb2FkVVJMCiAgICBhbGVydCgiIyMjIyBGYXggUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CiAgICAvLyBGaW5hbGx5LCBkZWxldGUgdGhlIGZvbGRlciBhbmQgYWxsIGNvbnRlbnRzLgogICAgY2xlYW51cERpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgIC8vIE5vdyBzZXQgdGhlIGxhYmVsIGluIG91ciBTbmlwcGV0CiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIk5ldyBmaWxlICIgKyBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwp9OwoKekRhdGEuZ2V0U3RhY2tJZD1mdW5jdGlvbihkb2MsaWRzLHN0YWNrVHlwZU5hbWUpIHsgLy9FUlMxOTA2MTcgZnJvbSBVTkxPQ0sgLy9UT0RPIEVSUzE5MDYyNCBmaW5kIHN0YWNrVHlwZU5hbWUgbmVlZGVkIGRvYwogICAgaWYgKCFpZHMgfHwgaWRzPT09IiIpIGlkcyA9IFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsgLy9FUlMxOTA2MTggVE9ETyBjb25maXJtIGRvYyBpbiBzY29wZQogICAgaWRzID0gaWRzICsgIiI7CglpZiAoaWRzLmxhc3RJbmRleE9mKCcvJykgPj0gMCkgeyAvL0VSUzE5MDYxOCBnZXQgZmlyc3QgSWQgaWYgLyBpcyBwYXNzZWQgaW4KCQlpZHMgPSBpZHMuc3Vic3RyaW5nKGlkcy5sYXN0SW5kZXhPZignLycpKzEpOwoJCWlmIChpZHMuaW5kZXhPZignLCcpID49IDApIHsgaWRzID0gaWRzLnN1YnN0cmluZygwLCBpZHMuaW5kZXhPZignLCcpKTsgfQoJCXJldHVybiBpZHM7Cgl9CiAgICAKICAgIGlmICghc3RhY2tUeXBlTmFtZSkgc3RhY2tUeXBlTmFtZT0iWlBBUEVSX196U3RhY2tfX2MiOyAvL0VSUzE5MDYyNCBndWVzc2luZyBUT0RPIGZpbmQgZXhhbXBsZXMKICAgIHZhciBwYXJ0cyA9IGlkcy5zcGxpdCgnLCcpOwogICAgZm9yICh2YXIgaT0wOyBpPHBhcnRzLmxlbmd0aDsgaSsrKSB7IC8vZ2V0IGthc3QgSWQgaWYgLyBpcyBOT1QgcGFzc2VkIGluCiAgICAgICAgdmFyIGlkID0gcGFydHNbaV0udHJpbSgpOwogICAgICAgIGlmIChpZC5sZW5ndGggPiAwKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIHB1bGxpbmcgdHlwZSBmb3IgaWQ6ICIgKyBpZCk7CiAgICAgICAgICAgIGlmIChzdGFja1R5cGVOYW1lID09PSBnZXRTRlR5cGUoZG9jLCBpZCkpIHsKICAgICAgICAgICAgICAgIHJldHVybiBpZDsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KICAgIHJldHVybiBudWxsOwp9Owp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMoZG9jKTsgLy9jYWxsIGZ1bmN0aW9uIHRvIHNldCB2YXJpYWJsZXMKLyogRU5EICov"},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//global variables
//ERS200420 #70953 safety
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
    
    if (1==0) { //ERS200412 TODO check that loop at 147 is doing this
        //PV191008 updated new fields
        zData.X_ZPAPER__Classification__c = X(doc, "X_ZPAPER__Classification__c");
        zData.X_ZPAPER__Priority__c = X(doc, "X_ZPAPER__Priority__c");
        zData.X_Sub_Category__c = X(doc, "X_Sub_Category__c");
        zData.X_ZPAPER__faxType__c= X(doc, "X_ZPAPER__faxType__c");
        zData.X_Prescription__c = X(doc, "X_Prescription__c");
        zData.X_Member_Plan__c = X(doc, "X_Member_Plan__c");
        zData.X_Coverage_Benefit__c = X(doc, "X_Coverage_Benefit__c");
        zData.X_Clinical_Services__c = X(doc, "X_Clinical_Services__c");
        zData.X_Service_Requested_Date__c = X(doc, "X_Service_Requested_Date__c");
        zData.X_Reported_Outcome__c = X(doc, "X_Reported_Outcome__c");
        zData.X_Assessment_Type__c = X(doc, "X_Assessment_Type__c");
        zData.X_Outcome_Type__c = X(doc, "X_Outcome_Type__c");
        zData.X_Product_Described__c = X(doc, "X_Product_Described__c"); //PV191021 updated the fields
    }
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
