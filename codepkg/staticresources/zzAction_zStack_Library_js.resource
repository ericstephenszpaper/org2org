<!--
// Name: zStack Library
// Committer: eric.stephens@zpaper.com
// Update: ERS200418 #71415 autodrive; ERS200418 #71415 autodrive
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-04-18 22:42:42","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLkFmZmlsaWF0ZSA9ICIiOwp6RGF0YS56cD0iWlBBUEVSX18iOyAvL0VSUzE5MDYxNyAjNTI2NjEKekRhdGEuenBzPXpEYXRhLnpwKyJ6U3RhY2tfX2MiOwp6RGF0YS5zZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwppZiAoIXpEYXRhLnNmSUQgfHwgMCA9PT0gekRhdGEuc2ZJRC5sZW5ndGgpIHsKICAgIHpEYXRhLnNmSUQgPSBnZXRBbHRlcm5hdGVCYXJjb2RlT25lKGRvYykgKyAiIjsKfQp6RGF0YS5mb3JtYXROb3c9ekRhdGEubm93PWdldEN1ckRhdGVBbmRUaW1lKGRvYyk7IC8vRVJTMTkwNjI0IHdhcyBqdXN0IC5ub3cKekRhdGEuYXR0YWNoUmVjb3Jkcz1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIlJlY29yZHNfX2MiKS50cmltKCk7CmlmICghekRhdGEuYXR0YWNoUmVjb3JkcykgeyB6RGF0YS5hdHRhY2hSZWNvcmRzPSJDYXNlLExlYWQiO30gLy9DYXNlLENvbnRhY3QsQWNjb3VudCxQYXRpZW50LExlYWQKCmlmICgxPT09MCkgeyAvL0VSUzIwMDMxNCBpbiBjbGllbnRMaWJyYXJ5IC8vRVJTMTcwODA1IGdldCB0aGUgZGF0YSBmcm9tIHRoZSBEZXBsb3ltZW50SW5mbyAvL0VSUzE3MDkwOSBUT0RPIGRvIHRoaXMgc2FmZWx5IHdpdGggWERlcGxveW1lbnRJbmZvLFhDdXN0b21TZXR0aW5nCiAgICAvL2FsZXJ0KCJFUlMxNzA3MjUgREk9Iitkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKTsKICAgIHZhciBjcz0oZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbysiIik7IC8vbm90IFsiQnVzaW5lc3NfUHJvY2Vzc19fYyJdOwogICAgLy9hbGVydCgiRVJTMTcwODA1IGNzPSIrY3MpOwogICAgaWYgKGNzKSB7CiAgICAgICAgaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpPi0xKSBjcz1YKGRvYywiekN1c3RvbVNldHRpbmdzIixjcyk7CiAgICAgICAgaWYgKGNzICE9PSAiIikgZXZhbChjcyk7CiAgICAgICAgYWxlcnQoIkVSUzE3MDgyMiBpbXBvcnQgZm9yICIrY3MpOwogICAgfQp9CgovL0NSTjE3MDMyNCBUT0RPIGRvYy5jbG9uZSgpIGRvbmUgcmlnaHQ7CnpEYXRhLmNsb25lPWZ1bmN0aW9uKGRvYykgewogICB2YXIgZG9jMD1bXTsKICAgZm9yICh2YXIgaSBpbiBkb2MpIGRvYzBbaV09ZG9jW2ldOwogICByZXR1cm4gZG9jMDsKfTsKCi8vIFRoaXMgZnVuY3Rpb24gbmVlZHMgdG8gYmUgYWRkZWQgdG8gZXZlcnkgcnVsZSB0byBoZWxwIGFzc3VyZSB0aGF0IHJ1bGVzIGRvIG5vdCBnZXQgYWNjaWRlbnRhbGx5IHRyaWdnZXJlZAovLyBBZGQgdGhpcyBmdW5jdGlvbmFsaXR5IHRvIHRoZSBydWxlcyBlbmdpbmUgaXRzZWxmPwp6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24gPSBmdW5jdGlvbihkb2MsdHJpZ2dlckZpZWxkKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKHRyaWdnZXJGaWVsZCwgIiIpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9OwoKLy9BTjE5MDUzMCB0ZWNoIGRlYnQ/IHVuc3VyZSBob3cgdGhpcyBmdW5jdGlvbiBpcyBuZWVkZWQKekRhdGEubmFtZUZpbGUgPSBmdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgZG9jLmxhYmVsPVgoZG9jLCJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIikrWChkb2MsIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpKyIgLSAiK1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKyIgLSAiK01NZGRZWVlZOwogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwoKekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSA9IGZ1bmN0aW9uKGRvYykgeyAvL01TSDE3MDgzMSBleHRyYWN0IGRhdGUgZm9ybWF0IGZyb20gekRhdGEubmFtZUZpbGUKICAgIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICAgIC8vTVNIMTcwOTA2IHBhZCBkYXkgd2l0aCB6ZXJvCiAgICB2YXIgY3VyRGF5ID0gdG9kYXkuZ2V0RGF0ZSgpOwogICAgLy9NU0gxNzA5MDYgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKyIiK3RvZGF5LmdldERhdGUoKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsoIiIrKGN1ckRheSA+IDkgPyBjdXJEYXkrIiIgOiAiMCIrY3VyRGF5KSkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICAvL2FsZXJ0KCJNTWRkWVlZWSA9PSAiICsgTU1kZFlZWVkpOwogICAgcmV0dXJuIE1NZGRZWVlZOwp9OwoKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzID0gZnVuY3Rpb24oZG9jKSB7IHJldHVybiB6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgfTsgLy9NU0gxNzEwMDUgZ2V0IGFsbCB0aGUgb3JncyBpbiBoZXJlCnpEYXRhLnNldGJyYW5kcHJvZ3JhbSA9IGZ1bmN0aW9uKGRvYykgeyByZXR1cm4gekRhdGEuc2V0QnJhbmRQcm9ncmFtKGRvYyk7IH07IC8vTVNIMTcxMDA1IGdldCBhbGwgdGhlIG9yZ3MgaW4gaGVyZQogICAgCnpEYXRhLnNldEJyYW5kUHJvZ3JhbSA9IGZ1bmN0aW9uKGRvYykgeyAvL1RPRE8gZG8gaHViIHdpdGggc2V0dGluZ3MKICAgIGFsZXJ0KCIrKysgU1RBUlRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBkb2MuZGVsaXZlcmVkVG8gPSAiICsgZG9jLmRlbGl2ZXJlZFRvKTsKICAgIHZhciB6cD16RGF0YS56cDsKICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLmNoYW5uZWw9ZG9jLmRlbGl2ZXJlZFRvOwogICAgekRhdGEucHJvZ3JhbU5hbWU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgLy96RGF0YS5BZmZpbGlhdGU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvICsgIiI7CS8vSlBCMTkwNTI5IENoZWNrIGRlbGl2ZXJlZFRvIGZvciBjb21tdW5pdHkgdXBsb2FkZXMKICAgIGlmICghaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7IHpEYXRhLmNoYW5uZWw9IkZheCI7IH0gLy9FUlMxOTA4MTAgIzYxNTcwIHNldCBjaGFuZW5lbCB0byBmYXggaWYgbnVtYmVyIAogICAgaWYgKGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIkAiKT4tMSB8fCBkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHt6RGF0YS5jaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE4MDUwNSAjNDgxMDEKICAgIGlmIChpc05hTihkb2MuZGVsaXZlcmVkRnJvbSkpIHt6RGF0YS5jaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE5MDgxMiAjNjE1MTEKICAgIGlmIChpc05hTihkZWxpdmVyZWRUbykpIHsKICAgIAlpZiAoZGVsaXZlcmVkVG8udG9Mb3dlckNhc2UoKS5pbmRleE9mKCJjb21tdW5pdHkiKSA+PSAwKSB7CiAgICAJCXpEYXRhLmNoYW5uZWwgPSAiQ29tbXVuaXR5IjsKICAgIAl9IGVsc2UgewoJCSAgICB6RGF0YS5jaGFubmVsPSJTY2FuIjsKCSAgICB9CiAgICB9CiAgICB2YXIgbWF4Q2hhbm5lbHM9MjsgaWYgKHpEYXRhLm1heENoYW5uZWxzKSBtYXhDaGFubmVscz16RGF0YS5tYXhDaGFubmVsczsgLy9FUlMxOTA3MzEgIzYxMjcyCiAgICBtYXhDaGFubmVscz02OyBhbGVydCgiekRhdGEubWF4Q2hhbm5lbHM9Iit6RGF0YS5tYXhDaGFubmVscyk7CiAgICBmb3IgKHZhciBpPTE7IGk8PW1heENoYW5uZWxzOyBpKyspIHsKICAgICAgICBpZiAoaT49MykgenA9IiI7IC8vMiBpbiBtYW5hZ2VkIHBhY2thZ2UgLy9FUlMyMDAyMDUgQ01BIGhlbHBlZCBzcG90IHRoZSBydWJiZXIgZHVja3khISEKICAgICAgICAKICAgICAgICB2YXIgY2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNoYW5uZWwiK2krIl9fYyIpOwogICAgICAgIHZhciBwcm9ncmFtPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiUHJvZ3JhbSIraSsiX19jIik7CiAgICAgICAgLy92YXIgYWZmaWxpYXRlPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQWZmaWxpYXRlIitpKyJfX2MiKTsKICAgICAgICB2YXIgY2xhc3NpZmljYXRpb249WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJDbGFzc2lmaWNhdGlvbiIraSsiX19jIik7CiAgICAgICAgdmFyIGF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLCJSZWNvcmRzIitpKyJfX2MiKTsgLy9ubyB6cCBpcyBkZWxpYmVyYXRlCiAgICAgICAgaWYgKCFhdHRhY2hSZWNvcmRzKSBhdHRhY2hSZWNvcmRzPXpEYXRhLmF0dGFjaFJlY29yZHM7CiAgICAgICAgCiAgICAgICAgLy96Q2hhbm5lbDMJeydwYXRoJzonT3JwaGFuIFJhcmUgRGlzZWFzZXMvUFJPQ1lTQkkvMTY3ODk0ODk3NzQuUFJPQ1lTQkknLCdkYi1yZWFkZXJzJzonOi0yMDEwMC4zOicsJ2RiLXVzZXJzJzonOi0yMDEwMC4zOid9CiAgICAgICAgdmFyIHpwMj16cDsgCiAgICAgICAgenAyPSIiOyAvL0VSUzIwMDIwOSB1bnRpbCBpbiBwYWNrYWdlCiAgICAgICAgdmFyIHpjaGFubmVsPVhDdXN0b21TZXR0aW5nKGRvYyx6cDIrInpDaGFubmVsIitpKyJfX2MiKTsKICAgICAgICBpZiAoemNoYW5uZWwgJiYgemNoYW5uZWwuaW5kZXhPZigieyIpID09IDApIHsgLy9FUlMyMDAyMDkgIzY4ODI1IHpDaGFubmVsCiAgICAgICAgICAgIHRyeSB7CiAgICAgICAgICAgICAgICBpZiAoemNoYW5uZWwuaW5kZXhPZigieyciKT09MCkgemNoYW5uZWw9emNoYW5uZWwucmVwbGFjZUFsbCgiJyIsIlwiIik7IC8vRVJTMjAwMjA5IEhBQ0sgYXJvdW5kIHN0YWxlIHppcHBpIGNhY2hlCiAgICAgICAgICAgICAgICB6Y2hhbm5lbD1KU09OLnBhcnNlKHpjaGFubmVsKTsKICAgICAgICAgICAgICAgIGFsZXJ0KCJ6Q2hhbm5lbCIraSsiLnBhdGg9Iit6Y2hhbm5lbC5wYXRoKTsKICAgICAgICAgICAgICAgIHpEYXRhLnpjaGFubmVsPXpjaGFubmVsOwogICAgICAgICAgICAgICAgdmFyIHA9emNoYW5uZWwucGF0aC5zcGxpdCgiLyIpOwogICAgICAgICAgICAgICAgY2xhc3NpZmljYXRpb249cFswXTsgcHJvZ3JhbT1wWzFdOyBjaGFubmVsPXBbMl07CiAgICAgICAgICAgIH0gY2F0Y2ggKGUpIHsKICAgICAgICAgICAgICAgIGFsZXJ0KCJ6Q2hhbm5lbCIraSsiIG5vdCB2YWxpZC4gIitlKyIgZnJvbSAiK3pjaGFubmVsKTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgICAgICAKICAgICAgICBpZiAoIWNoYW5uZWwpIGJyZWFrOwogICAgICAgIAogICAgICAgIHZhciBjPWNoYW5uZWw7IGlmIChjLmluZGV4T2YoIjEiKT09PTApIGM9Yy5zdWJzdHJpbmcoMSk7CiAgICAgICAgekRhdGEuY2hhbm5lbHM9aTsKICAgICAgICBhbGVydCgiRVJTMjAwMjA1Ljk3ICIrZG9jLmRlbGl2ZXJlZFRvKyIgPz0gIisgYyk7CiAgICAgICAgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKGMpPi0xKSB7CiAgICAgICAgICAgIHpEYXRhLmNoYW5uZWw9Y2hhbm5lbDsgekRhdGEucHJvZ3JhbU5hbWU9cHJvZ3JhbTsgCiAgICAgICAgICAgIGlmKCFpc05hTihjKSkgekRhdGEuY2hhbm5lbFtwcm9ncmFtXT1jaGFubmVsOyAvL3JldmVyc2UgbG9va3VwIGZvciBmYXgKICAgICAgICAgICAgLy96RGF0YS5BZmZpbGlhdGU9YWZmaWxpYXRlOyAKICAgICAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb249Y2xhc3NpZmljYXRpb247CiAgICAgICAgICAgIHpEYXRhLmF0dGFjaFJlY29yZHM9YXR0YWNoUmVjb3JkczsgLy9FUlMxOTA2MjAKICAgICAgICAgICAgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIuIik9PS0xKSBicmVhazsgLy9FUlMyMDAyMDUgY2hlY2sgdGhlbSBhbGwgaWYgdXNpbmcgc3ViY2hhbm5lbHMgIzY4ODI1CiAgICAgICAgfQogICAgfQogICAgYWxlcnQoIisrKyBFTkRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBvcmlnaW4gPSAiICsgekRhdGEuY2xhc3NpZmljYXRpb24rIi8iK3pEYXRhLnByb2dyYW1OYW1lKyIvIit6RGF0YS5jaGFubmVsKTsKICAgIC8vYWxlcnQoIkBAQCB6RGF0YS5BZmZpbGlhdGUgPSAiICsgekRhdGEuQWZmaWxpYXRlKTsKfTsKCi8qIHRoaXMgaXMgYW4gdW50ZXN0ZWQgZnVuY3Rpb24gdG8gZGV0ZWN0IHRoZSBzYW5kYm94IG5hbWUgYW5kIGFzc2lnbiB2YWx1ZXMgKi8gLy9FUlMxNzA1MjIgYWN0aXZhdGluZwp6RGF0YS5vcmdTd2l0Y2g9ZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwNTEyCiAgICBhbGVydCgic2ZVc2VyIGlzICIrZG9jLnNmVXNlck5hbWUpOwogICAgekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCiAgICB6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgp9Owp6RGF0YS5vcmdTd2l0Y2goZG9jKTsgLy9FUlMxNzA4MjIKCnpEYXRhLmdldERhdGFFbnRyeUZpZWxkcz1mdW5jdGlvbihkb2MsemQpIHsgLy9FUlMxOTA2MTkgY29weSB3ZGRhdGEgaW5mbyBpbnRvIHpEYXRhCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsgLy91c2UgekRhdGEgb3IgemQKICAgIHZhciBmaWVsZHM9ZG9jLndkZGF0YS5zcGxpdCgiPFhfIik7IAogICAgLy88WF9aUEFQRVJfX1Byb3ZpZGVyX19yLk5hbWU+VW5pdGVkIE9pbCAmIEdhcywgU2luZ2Fwb3JlPC9YX1pQQVBFUl9fUHJvdmlkZXJfX3IuTmFtZT4KICAgIC8vPFhfWlBBUEVSX19QYXRpZW50X19yLk5hbWU+Sm9zaCBEYXZpczwvWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZT4KICAgIC8vPFhfWlBBUEVSX19DYXNlX19jPjUwMDQ0MDAwMDBsRWkzM0FBQzwvWF9aUEFQRVJfX0Nhc2VfX2M+CiAgICBmb3IgKHZhciBpIGluIGZpZWxkcykgewogICAgICAgIHZhciBudj1maWVsZHNbaV07IC8vIlpQQVBFUl9fQ2FzZV9fYz41MDA0NDAwMDAwbEVpMzNBQUM8L1hfWlBBUEVSX19DYXNlX19jPiIKICAgICAgICB2YXIgaj1udi5pbmRleE9mKCI+Iik7CiAgICAgICAgdmFyIGs9bnYuaW5kZXhPZigiPCIsaisxKTsKICAgICAgICBpZiAoaj4tMSAmJiBrPi0xKSB7CiAgICAgICAgICAgIHZhciBuPSJYXyIrbnYuc3Vic3RyaW5nKDAsaik7CiAgICAgICAgICAgIHZhciB2PW52LnN1YnN0cmluZyhqKzEsayk7CiAgICAgICAgICAgIHpEYXRhW25dPXY7CiAgICAgICAgfQogICAgfQogICAgekRhdGEuY2FzZUlkID0gWChkb2MsICJYX1pQQVBFUl9fQ2FzZV9fYyIpOyAvL0VSUzE5MDYyNCBUT0RPIG1vcmUgb2YgdGhlIHNhbWUKICAgIHpEYXRhLmNvbnRhY3RJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRfX2MiKTsKICAgIGlmICgiQWNjb3VudCI9PT1YQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudFJlY29yZF9fYyIpKSB7IC8vRVJTMTkwODEwICM2MTU3MCAvL0VSUzE5MDgxMSBkb2MsCiAgICAgICAgekRhdGEuY29udGFjdElkID0gWChkb2MsICJYX1pQQVBFUl9fUGF0aWVudEFjY291bnRfX2MiKTsKICAgIH0KICAgIGlmICh6RGF0YS5jb250YWN0SWQpIHpEYXRhLnBhdGllbnRJZD16RGF0YS5jb250YWN0SWQ7IC8vVE9ETyBQZXJzb25hbEFjY291bnQgcHJlZmVyZW5jZSAtIERPTkUgRVJTMTkwODEwIC8vRVJTMjAwMzA1IGNoZWNrIHpEYXRhLmNvbnRhY3RJZAogICAgekRhdGEucHJvdmlkZXJJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIik7CiAgICAvL3ZhciBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CiAgICAvL3ZhciBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwogICAgLy92YXIgcGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwogICAgLy9FUlMxOTA4MDIgIzYxMjcyIG1hcnNoYWxsIGZyb20gWCgpIHNpbmNlIHRoZSBkYXRlIGVudHJ5IGluZm8gbm90IGFscmVhZHkgc2F2ZWQgaW50byB3ZGRhdGEKICAgIHpEYXRhLlhfWlBBUEVSX19mYXhUeXBlX19jPXpEYXRhLmRvY1R5cGUgPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IC8vRVJTMTkwODEwIFBWMTkwODA4ICM2MTU3MAogICAgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYz1wYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CiAgICB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2M9cGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKICAgIHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2M9cGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwp9OwoKekRhdGEuYWRkU3RhZ2U9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsc3RhZ2UpIHsgLy9FUlMxNzA5MDkgIzQwNTkyIGZvciB6RG9jU2V0IHN0YXR1c2VzCgl2YXIgYmE9IiI7IC8vRVJTMjAwMzE0ICM3MDMzNgoJaWYgKCFzdGFnZSkgewogICAgCWJhPVgoZG9jLCJYX2J1dHRvbkFjdGlvbiIpKyJlZCI7IC8vRVJTMjAwMzE0IHdhcyBkb2MuWCgpICM3MDMzNgogICAgCWlmIChiYS5pbmRleE9mKCJlZWQiKT4tMSkgYmE9WChkb2MsIlhfYnV0dG9uQWN0aW9uIikrImQiOyAvL0VSUzIwMDMxNAogICAgIAliYT1iYS5zdWJzdHJpbmcoMStiYS5sYXN0SW5kZXhPZigiICIpKTsKICAgIAlzdGFnZT1iYTsgaWYgKHN0YWdlLmxlbmd0aCgpPDQpIHtzdGFnZT0iUmVjZWl2ZWQiO30KICAgIH0gZWxzZSB7CiAgICAgICAgYmE9c3RhZ2U7IC8vRVJTMTkwODAyCiAgICB9CiAgICB2YXIgbm93MCA9IHpEYXRhLmZvcm1hdE5vdzsgaWYgKCFub3cwKSBub3cwPWdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsgIC8vRVJTMjAwMzE0ICM3MDMzNgogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBpZiAoIXpEYXRhLnJldmlld3MpIHsgekRhdGEucmV2aWV3cz1YKGRvYywiWF9yZXZpZXdzIik7IH0gLy9FUlMyMDA0MTggIzcxNDE1IGF1dG9kcml2ZQogICAgekRhdGEucmV2aWV3cys9YmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iOyAvL0VSUzIwMDQxOCAjNzE0MTUgYXV0b2RyaXZlCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsekRhdGEucmV2aWV3cyk7IC8vRVJTMTcwOTA5ICM0MDU5MgogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn0KCi8vSW4gQ2xpZW50IExpYnJhcnkgekRhdGEubmV3Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkge307Cgp6RGF0YS5pbml0aWFsaXplU3RhY2s9ZnVuY3Rpb24oZG9jLHN0YWNrRm9sZGVyLHN0YWNrSWQpIHsgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogIHZhciBhcnJPZlBhaXJzID0gW107CiAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICB2YXIgZmluYWxSb290Rm9sZGVyID0gekRhdGEucHJvZ3JhbU5hbWUrIi1BcmNoaXZlIjsgLy9iYXRlcyBvZiB0aGUgQXJjaGl2ZSBmb2xkZXIKICB2YXIgeXl5eU1NRm9sZGVyTmFtZSA9IHRvZGF5LmdldEZ1bGxZZWFyKCkgKyAoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpOwogIHZhciB5eXl5TU1Gb2xkZXIgPSBmaW5hbFJvb3RGb2xkZXIgKyAiLSIgKyB5eXl5TU1Gb2xkZXJOYW1lOwogIGFsZXJ0KCJAQEAgc3RhY2tGb2xkZXIgaXMgLSAiICsgc3RhY2tGb2xkZXIpOwogIGFsZXJ0KCJAQEAgZmluYWxSb290Rm9sZGVyIGlzIC0gIiArIGZpbmFsUm9vdEZvbGRlcik7CiAgYWxlcnQoIkBAQCB5eU1NRm9sZGVyIGlzIC0gIiArIHl5eXlNTUZvbGRlcik7CiAgYWxlcnQoIkBAQCBjcmVhdGluZyBuZXcgc3RhY2sgZGVzdGluYWlvbiBmb2xkZXIgd2l0aCBuYW1lIC0gIiArIHN0YWNrRm9sZGVyKTsKICAvKiBSZWZyZXNoIHRoZSBjdXJyZW50IGZvbGRlciAqLwogIHJlbG9hZEJ5SWQoZG9jLCBYKGRvYywiWF9jdXJGb2xkZXIiKSk7CiAgLyogc2FtZSB2YWx1ZSBmb3IgQkFURVMgYW5kIGxhYmVsICovCiAgLyogVGhlIGZvbGRlciBzdHJ1Y3R1cmUgd2lsbCBsb29rIGxpa2UgdGhpczogLzIwMTYwOC8zQ1gzQ1gvMTIzNDU2Nzg5LVNUQUNLICovCiAgY3JlYXRlRm9sZGVyKGRvYywgZmluYWxSb290Rm9sZGVyLCB5eXl5TU1Gb2xkZXIsIHl5eXlNTUZvbGRlck5hbWUpOwogIGNyZWF0ZUZvbGRlcihkb2MsIHl5eXlNTUZvbGRlciwgc3RhY2tGb2xkZXIsIHN0YWNrRm9sZGVyKTsKICBhbGVydCgiQEBAQCBNb3ZpbmcgdGhlIHN0YWNrIGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhJbml0aWFsaXplZCIsICJ0cnVlIik7CiAgaWYgKDE9PTEpIHsgLy9FUlMyMDAyMDUgIzY4ODI1IFRPRE8gQ1JOIHRvIHJldmlldyBtb3ZlRG9jdW1lbnQgYW5kIGlmIHdlIG5lZWQgaXQgdGhlbiBmaXggdGhlIHhfc3RhY2sgcHJvYmxlbSB3aXRoIGl0CiAgICBtb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9zdGFjayIsIHN0YWNrSWQpOwogICAgLy9FUlMyMDAyMjIgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiLSIgKyBzdGFja0lkICsgIi1TVEFDSyIpOwogIH0KICBhbGVydCgiRVJTMjAwMjA1IHN0YWNrSWQ9IitzdGFja0lkKTsKICAvKiBTdGFjayBMYWJlbGxpbmcgQ2hhbmdlICovCiAgdmFyIGR0U3RhbXAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlKTsKICAvKiBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwiU3RhY2sgLSAiICsgZHRTdGFtcCk7ICovCiAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9OwoKekRhdGEuY291bnRQYWdlcyA9IGZ1bmN0aW9uKGRvYywgcGFnZVJhbmdlMikgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlMi5zcGxpdCgiLCIpOwogICAgaWYgKCFwYWdlcykgcGFnZXM9W3BhZ2VSYW5nZTJdOwogICAgYWxlcnQoInpEYXRhLmNvdW50UGFnZXMgcGFnZXMgPSAiICsgcGFnZXMpOwogICAgLy9yZXR1cm4gcGFnZXMubGVuZ3RoOwogICAgcmV0dXJuICgiIitwYWdlcy5sZW5ndGgpOyAvL0VSUzE5MDgwMiAjNjEyNzIgVE9ETyBpbiBXQVIKfTsKCnpEYXRhLmV4cG9zZVBERj1mdW5jdGlvbihkb2Msc2ZJZCxwYWdlUmFuZ2UpIHsgLy9FUlMxNzA1MjIgYWRkZWQgcGFnZVJhbmdlCiAgICB2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciBub3dUaW1lU3RhbXAgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgCiAgICB2YXIgZmlsZU5hbWUgPSBnZXRDdXJEYXRlKGRvYykgKyAiIE5ldyBGYXgucGRmIjsKICAgIGFsZXJ0KCJAQEBmaWxlTmFtZSA9ICIrZmlsZU5hbWUpOwogICAgCiAgICBjcmVhdGVEaXJlY3RvcnkoZG9jLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCk7CiAgICAKICAgIC8vQU4xNzA1MjIgc2hvdWxkIHhQYWdlcyBiZSBwYXNzZWQgaW4gYXMgYSB2YXJpYWJsZT8KICAgIHZhciB4UGFnZXMgPSBYKGRvYywgIlhfcG9zaXRpb24iKTsKICAgIGlmIChwYWdlUmFuZ2UpIHhQYWdlcz1wYWdlUmFuZ2U7ICAvL0VSUzE3MDUyMgogICAgYWxlcnQoIkBAQEBAIENhbGxpbmcgc3BsaXRQREYgdG8gc3BsaXQgb2ZmIHBhZ2VzIHRvIHVwbG9hZCBhcyBQREYsIHBhZ2VzID0gIiArIHhQYWdlcyArICIsIG5vd1RpbWVTdGFtcCA9ICIgKyBub3dUaW1lU3RhbXApOwogICAgdmFyIHJlc3BvbnNlID0gc3BsaXRQREYoZG9jLCB4UGFnZXMsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wLCBmaWxlTmFtZSk7CiAgICBhbGVydCgiQEBAQCByZXNwb25zZSBmcm9tIHNwbGl0UERGID0gIiArIHJlc3BvbnNlKTsKICAgIHZhciBuZXdQREZOYW1lID0gWChkb2MsICJuZXdQREYiLCByZXNwb25zZSk7CiAgICAKICAgIGFsZXJ0KCJAQEBAIHNwbGl0IFBERiBGaWxlTmFtZSA9ICIgKyBuZXdQREZOYW1lKTsKICAgIAogICAgdmFyIHVwbG9hZFVSTD0iaHR0cDovL2xvY2FsaG9zdDo4MDgwL215ZmlsZWZvcmNlL3VwbG9hZFRvQ2xvdWQuanNwP1NGaWQ9TkVXJlNGcGlkPSIrc2ZJZCsiJlNGb3JnPSIrZG9jLnNmT3JnKyImbGFiZWw9IitmaWxlTmFtZSsiJnNlcnZlckZpbGU9IituZXdQREZOYW1lKyImRGVzY3JpcHRpb249RmlsZSBhdHRhY2hlZCBhcyBQREYiOwogICAgYWxlcnQoIiMjIyMgVXBsb2FkIG5hdGl2ZSBQREYgd2l0aCAiK3VwbG9hZFVSTCk7CiAgICB2YXIgcj13Z2V0KGRvYywgdXBsb2FkVVJMKTsgLy9FUlMxNzA1MTIgd2FzIHpEYXRhLnVwbG9hZFVSTAogICAgYWxlcnQoIiMjIyMgRmF4IFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOwogICAgLy8gRmluYWxseSwgZGVsZXRlIHRoZSBmb2xkZXIgYW5kIGFsbCBjb250ZW50cy4KICAgIGNsZWFudXBEaXJlY3RvcnkoZG9jLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCk7CiAgICAvLyBOb3cgc2V0IHRoZSBsYWJlbCBpbiBvdXIgU25pcHBldAogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJOZXcgZmlsZSAiICsgZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKfTsKCnpEYXRhLmdldFN0YWNrSWQ9ZnVuY3Rpb24oZG9jLGlkcyxzdGFja1R5cGVOYW1lKSB7IC8vRVJTMTkwNjE3IGZyb20gVU5MT0NLIC8vVE9ETyBFUlMxOTA2MjQgZmluZCBzdGFja1R5cGVOYW1lIG5lZWRlZCBkb2MKICAgIGlmICghaWRzIHx8IGlkcz09PSIiKSBpZHMgPSBYKGRvYywiWF9hdHRhY2hlZFRvIik7IC8vRVJTMTkwNjE4IFRPRE8gY29uZmlybSBkb2MgaW4gc2NvcGUKICAgIGlkcyA9IGlkcyArICIiOwoJaWYgKGlkcy5sYXN0SW5kZXhPZignLycpID49IDApIHsgLy9FUlMxOTA2MTggZ2V0IGZpcnN0IElkIGlmIC8gaXMgcGFzc2VkIGluCgkJaWRzID0gaWRzLnN1YnN0cmluZyhpZHMubGFzdEluZGV4T2YoJy8nKSsxKTsKCQlpZiAoaWRzLmluZGV4T2YoJywnKSA+PSAwKSB7IGlkcyA9IGlkcy5zdWJzdHJpbmcoMCwgaWRzLmluZGV4T2YoJywnKSk7IH0KCQlyZXR1cm4gaWRzOwoJfQogICAgCiAgICBpZiAoIXN0YWNrVHlwZU5hbWUpIHN0YWNrVHlwZU5hbWU9IlpQQVBFUl9felN0YWNrX19jIjsgLy9FUlMxOTA2MjQgZ3Vlc3NpbmcgVE9ETyBmaW5kIGV4YW1wbGVzCiAgICB2YXIgcGFydHMgPSBpZHMuc3BsaXQoJywnKTsKICAgIGZvciAodmFyIGk9MDsgaTxwYXJ0cy5sZW5ndGg7IGkrKykgeyAvL2dldCBrYXN0IElkIGlmIC8gaXMgTk9UIHBhc3NlZCBpbgogICAgICAgIHZhciBpZCA9IHBhcnRzW2ldLnRyaW0oKTsKICAgICAgICBpZiAoaWQubGVuZ3RoID4gMCkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBwdWxsaW5nIHR5cGUgZm9yIGlkOiAiICsgaWQpOwogICAgICAgICAgICBpZiAoc3RhY2tUeXBlTmFtZSA9PT0gZ2V0U0ZUeXBlKGRvYywgaWQpKSB7CiAgICAgICAgICAgICAgICByZXR1cm4gaWQ7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICByZXR1cm4gbnVsbDsKfTsKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzKGRvYyk7IC8vY2FsbCBmdW5jdGlvbiB0byBzZXQgdmFyaWFibGVzCi8qIEVORCAqLw=="},"ordinal":0}

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
    if (!zData.reviews) { zData.reviews=X(doc,"X_reviews"); } //ERS200418 #71415 autodrive
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
