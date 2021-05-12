<!--
// Name: Copper Edition Library
// Committer: eric.stephens@zpaper.com
// Update: ERS210424 #82081; ERS210424 do not make a zStack and use LF that are encrypted PDFs; ERS210424 #82081; ERS210424 copper
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-24 21:03:15","evalContinue":"true","active":true,"button":"","name":"Copper Edition Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLnpwPSJaUEFQRVJfXyI7IC8vVE9ETyBaUEFQRVI2X18KekRhdGEuenBzPSJSZWNlaXZlZERvY3VtZW50IjsgLy96RGF0YS56cCsielN0YWNrX19jIjsgLy9FUlMyMTA0MjQgIzgyMDgxCnpEYXRhLmVkaXRpb249IkNvcHBlciI7IC8vRVJTMjEwNDI0IGRvIG5vdCBtYWtlIGEgelN0YWNrIGFuZCB1c2UgTEYgdGhhdCBhcmUgZW5jcnlwdGVkIFBERnMKekRhdGEuc2ZJRCA9IGdldEJhcmNvZGVPbmUoZG9jKTsKaWYgKCF6RGF0YS5zZklEIHx8IDAgPT09IHpEYXRhLnNmSUQubGVuZ3RoKSB7CiAgICB6RGF0YS5zZklEID0gZ2V0QWx0ZXJuYXRlQmFyY29kZU9uZShkb2MpICsgIiI7Cn0KekRhdGEuZm9ybWF0Tm93PXpEYXRhLm5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOyAvL0VSUzE5MDYyNCB3YXMganVzdCAubm93CnpEYXRhLmF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJSZWNvcmRzX19jIikudHJpbSgpOwppZiAoIXpEYXRhLmF0dGFjaFJlY29yZHMpIHsgekRhdGEuYXR0YWNoUmVjb3Jkcz0iQ2FzZSxMZWFkLEFjY291bnQsQ29udGFjdCxPcmRlcixSZWNlaXZlZERvY3VtZW50Ijt9IC8vRVJTMjEwNDI0ICM4MjA4MQoKaWYgKDE9PT0xKSB7IC8vRVJTMjEwMzIwICM4MTMyNyBUT0RPIGdldCB6aXBwaTIgZml4ZWQgdG8gc28gdGhhdCB0aGlzIGlzIGFscmVhZHkgZG9uZQogICAgekRhdGEuZnJvbUZpbGU9WChkb2MsIlhfZnJvbUZpbGUiKTsgLy9FUlMxOTA4MTQgVE9ETz8gZG8gaW4gbGlicmFyeT8KICAgIGlmICghekRhdGEuZnJvbUZpbGUpIHsgLy9FUlMyMTAzMjAgIzgxMzI3CiAgICAgICAgekRhdGEuZnJvbUZpbGU9ZG9jLlVSTC5zdWJzdHJpbmcoZG9jLlVSTC5sYXN0SW5kZXhPZigiLyIpKzEpOyAKICAgICAgICBhbGVydCgiRVJTMjEwMzIwLjE3ICM4MTMyNyByZXBhaXJpbmcgWF9mcm9tRmlsZSB1c2luZyAiK2RvYy5VUkwpOwogICAgfQogICAgaWYgKCFkb2MuZGVsaXZlcmVkVG8pIHsgLy9FUlMyMTAzMjAgIzgxMzI3CiAgICAgICAgYWxlcnQoIkVSUzIxMDMyMC4yMCAjODEzMjcgcmVwYWlyaW5nIGRvYy5kZWxpdmVyZWRUbyB1c2luZyAiK3pEYXRhLmZyb21GaWxlKTsKICAgICAgICBkb2MuZGVsaXZlcmVkVG89ekRhdGEuZnJvbUZpbGUuc3BsaXQoIi0iKVsxXTsKICAgIH0KfQoKLy9DUk4xNzAzMjQgVE9ETyBkb2MuY2xvbmUoKSBkb25lIHJpZ2h0Owp6RGF0YS5jbG9uZT1mdW5jdGlvbihkb2MpIHsKICAgdmFyIGRvYzA9W107CiAgIGZvciAodmFyIGkgaW4gZG9jKSBkb2MwW2ldPWRvY1tpXTsKICAgcmV0dXJuIGRvYzA7Cn07CgoKLy9BTjE5MDUzMCB0ZWNoIGRlYnQ/IHVuc3VyZSBob3cgdGhpcyBmdW5jdGlvbiBpcyBuZWVkZWQKekRhdGEubmFtZUZpbGUgPSBmdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgZG9jLmxhYmVsPVgoZG9jLCJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIikrWChkb2MsIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpKyIgLSAiK1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKyIgLSAiK01NZGRZWVlZOwogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwoKekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSA9IGZ1bmN0aW9uKGRvYykgeyAvL01TSDE3MDgzMSBleHRyYWN0IGRhdGUgZm9ybWF0IGZyb20gekRhdGEubmFtZUZpbGUKICAgIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICAgIC8vTVNIMTcwOTA2IHBhZCBkYXkgd2l0aCB6ZXJvCiAgICB2YXIgY3VyRGF5ID0gdG9kYXkuZ2V0RGF0ZSgpOwogICAgLy9NU0gxNzA5MDYgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKyIiK3RvZGF5LmdldERhdGUoKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsoIiIrKGN1ckRheSA+IDkgPyBjdXJEYXkrIiIgOiAiMCIrY3VyRGF5KSkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICAvL2FsZXJ0KCJNTWRkWVlZWSA9PSAiICsgTU1kZFlZWVkpOwogICAgcmV0dXJuIE1NZGRZWVlZOwp9OwoKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzID0gZnVuY3Rpb24oZG9jKSB7IHJldHVybiB6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgfTsgLy9NU0gxNzEwMDUgZ2V0IGFsbCB0aGUgb3JncyBpbiBoZXJlCnpEYXRhLnNldGJyYW5kcHJvZ3JhbSA9IGZ1bmN0aW9uKGRvYykgeyByZXR1cm4gekRhdGEuc2V0QnJhbmRQcm9ncmFtKGRvYyk7IH07IC8vTVNIMTcxMDA1IGdldCBhbGwgdGhlIG9yZ3MgaW4gaGVyZQogICAgCnpEYXRhLnNldEJyYW5kUHJvZ3JhbSA9IGZ1bmN0aW9uKGRvYykgeyAvL1RPRE8gZG8gaHViIHdpdGggc2V0dGluZ3MKICAgIGFsZXJ0KCIrKysgU1RBUlRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBkb2MuZGVsaXZlcmVkVG8gPSAiICsgZG9jLmRlbGl2ZXJlZFRvKTsKICAgIHZhciB6cD16RGF0YS56cDsKICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLmNoYW5uZWw9ZG9jLmRlbGl2ZXJlZFRvOwogICAgekRhdGEucHJvZ3JhbU5hbWU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgLy96RGF0YS5BZmZpbGlhdGU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvICsgIiI7CS8vSlBCMTkwNTI5IENoZWNrIGRlbGl2ZXJlZFRvIGZvciBjb21tdW5pdHkgdXBsb2FkZXMKICAgIGlmICghaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7IHpEYXRhLmNoYW5uZWw9IkZheCI7IH0gLy9FUlMxOTA4MTAgIzYxNTcwIHNldCBjaGFuZW5lbCB0byBmYXggaWYgbnVtYmVyIAogICAgaWYgKGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIkAiKT4tMSB8fCBkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHt6RGF0YS5jaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE4MDUwNSAjNDgxMDEKICAgIGlmIChpc05hTihkb2MuZGVsaXZlcmVkRnJvbSkpIHt6RGF0YS5jaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE5MDgxMiAjNjE1MTEKICAgIGlmIChpc05hTihkZWxpdmVyZWRUbykpIHsKICAgIAlpZiAoZGVsaXZlcmVkVG8udG9Mb3dlckNhc2UoKS5pbmRleE9mKCJjb21tdW5pdHkiKSA+PSAwKSB7CiAgICAJCXpEYXRhLmNoYW5uZWwgPSAiQ29tbXVuaXR5IjsKICAgIAl9IGVsc2UgewoJCSAgICB6RGF0YS5jaGFubmVsPSJTY2FuIjsKCSAgICB9CiAgICB9CiAgICB2YXIgbWF4Q2hhbm5lbHM9MjsgaWYgKHpEYXRhLm1heENoYW5uZWxzKSBtYXhDaGFubmVscz16RGF0YS5tYXhDaGFubmVsczsgLy9FUlMxOTA3MzEgIzYxMjcyCiAgICBtYXhDaGFubmVscz05OyBhbGVydCgiekRhdGEubWF4Q2hhbm5lbHM9Iit6RGF0YS5tYXhDaGFubmVscyk7IC8vSlBCMjAxMDIzIG5lZWRlZCB0byBhZGQgYmVjYXVzZSB6Q0FSVGEgd2FzIG5vdCBzaG93aW5nIHVwIGluIFByb2dyYW0KICAgIGZvciAodmFyIGk9MTsgaTw9bWF4Q2hhbm5lbHM7IGkrKykgewogICAgICAgIGlmIChpPj0zKSB6cD0iIjsgLy8yIGluIG1hbmFnZWQgcGFja2FnZSAvL0VSUzIwMDIwNSBDTUEgaGVscGVkIHNwb3QgdGhlIHJ1YmJlciBkdWNreSEhIQogICAgICAgIAogICAgICAgIHZhciBjaGFubmVsPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQ2hhbm5lbCIraSsiX19jIik7CiAgICAgICAgdmFyIHByb2dyYW09WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJQcm9ncmFtIitpKyJfX2MiKTsKICAgICAgICAvL3ZhciBhZmZpbGlhdGU9WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJBZmZpbGlhdGUiK2krIl9fYyIpOwogICAgICAgIHZhciBjbGFzc2lmaWNhdGlvbj1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNsYXNzaWZpY2F0aW9uIitpKyJfX2MiKTsKICAgICAgICB2YXIgYXR0YWNoUmVjb3Jkcz1YQ3VzdG9tU2V0dGluZyhkb2MsIlJlY29yZHMiK2krIl9fYyIpOyAvL25vIHpwIGlzIGRlbGliZXJhdGUKICAgICAgICBpZiAoIWF0dGFjaFJlY29yZHMpIGF0dGFjaFJlY29yZHM9ekRhdGEuYXR0YWNoUmVjb3JkczsKICAgICAgICAKICAgICAgICAvL3pDaGFubmVsMwl7J3BhdGgnOidPcnBoYW4gUmFyZSBEaXNlYXNlcy9QUk9DWVNCSS8xNjc4OTQ4OTc3NC5QUk9DWVNCSScsJ2RiLXJlYWRlcnMnOic6LTIwMTAwLjM6JywnZGItdXNlcnMnOic6LTIwMTAwLjM6J30KICAgICAgICB2YXIgenAyPXpwOyAKICAgICAgICB6cDI9IiI7IC8vRVJTMjAwMjA5IHVudGlsIGluIHBhY2thZ2UKICAgICAgICB2YXIgemNoYW5uZWw9WEN1c3RvbVNldHRpbmcoZG9jLHpwMisiekNoYW5uZWwiK2krIl9fYyIpOwogICAgICAgIGlmICh6Y2hhbm5lbCAmJiB6Y2hhbm5lbC5pbmRleE9mKCJ7IikgPT0gMCkgeyAvL0VSUzIwMDIwOSAjNjg4MjUgekNoYW5uZWwKICAgICAgICAgICAgdHJ5IHsKICAgICAgICAgICAgICAgIGlmICh6Y2hhbm5lbC5pbmRleE9mKCJ7JyIpPT0wKSB6Y2hhbm5lbD16Y2hhbm5lbC5yZXBsYWNlQWxsKCInIiwiXCIiKTsgLy9FUlMyMDAyMDkgSEFDSyBhcm91bmQgc3RhbGUgemlwcGkgY2FjaGUKICAgICAgICAgICAgICAgIHpjaGFubmVsPUpTT04ucGFyc2UoemNoYW5uZWwpOwogICAgICAgICAgICAgICAgYWxlcnQoInpDaGFubmVsIitpKyIucGF0aD0iK3pjaGFubmVsLnBhdGgpOwogICAgICAgICAgICAgICAgekRhdGEuemNoYW5uZWw9emNoYW5uZWw7CiAgICAgICAgICAgICAgICB2YXIgcD16Y2hhbm5lbC5wYXRoLnNwbGl0KCIvIik7CiAgICAgICAgICAgICAgICBjbGFzc2lmaWNhdGlvbj1wWzBdOyBwcm9ncmFtPXBbMV07IGNoYW5uZWw9cFsyXTsKICAgICAgICAgICAgICAgIGlmICghcHJvZ3JhbSkgcHJvZ3JhbT1jbGFzc2lmaWNhdGlvbjsgLy9FUlMyMTAzMjAgIzgxMzI3CiAgICAgICAgICAgICAgICBpZiAoIWNoYW5uZWwpIGNoYW5uZWw9cHJvZ3JhbTsgLy9FUlMyMTAzMjAgIzgxMzI3CiAgICAgICAgICAgIH0gY2F0Y2ggKGUpIHsKICAgICAgICAgICAgICAgIGFsZXJ0KCJ6Q2hhbm5lbCIraSsiIG5vdCB2YWxpZC4gIitlKyIgZnJvbSAiK3pjaGFubmVsKTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgICAgICAKICAgICAgICBpZiAoIWNoYW5uZWwpIGJyZWFrOwogICAgICAgIAogICAgICAgIHZhciBjPWNoYW5uZWw7IGlmIChjLmluZGV4T2YoIjEiKT09PTApIGM9Yy5zdWJzdHJpbmcoMSk7CiAgICAgICAgekRhdGEuY2hhbm5lbHM9aTsKICAgICAgICBhbGVydCgiRVJTMjAwMjA1Ljk3ICIrZG9jLmRlbGl2ZXJlZFRvKyIgPz0gIisgYysgIiBidXQgemNoYW5uZWwuZmF4PSIremNoYW5uZWwuZmF4KTsKICAgICAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoYyk+LTEgfHwgZG9jLmRlbGl2ZXJlZFRvID09IHpjaGFubmVsLmZheCkgeyAvL0VSUzIxMDMyMCAjODEzMjcgLmZheCBjaGVjayBrZWVwcyAucGF0aCBwdXJlCiAgICAgICAgICAgIHpEYXRhLmNoYW5uZWw9Y2hhbm5lbDsgekRhdGEucHJvZ3JhbU5hbWU9cHJvZ3JhbTsgCiAgICAgICAgICAgIGlmKCFpc05hTihjKSkgekRhdGEuY2hhbm5lbFtwcm9ncmFtXT1jaGFubmVsOyAvL3JldmVyc2UgbG9va3VwIGZvciBmYXgKICAgICAgICAgICAgLy96RGF0YS5BZmZpbGlhdGU9YWZmaWxpYXRlOyAKICAgICAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb249Y2xhc3NpZmljYXRpb247CiAgICAgICAgICAgIHpEYXRhLmF0dGFjaFJlY29yZHM9YXR0YWNoUmVjb3JkczsgLy9FUlMxOTA2MjAKICAgICAgICAgICAgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIuIik9PS0xKSBicmVhazsgLy9FUlMyMDAyMDUgY2hlY2sgdGhlbSBhbGwgaWYgdXNpbmcgc3ViY2hhbm5lbHMgIzY4ODI1CiAgICAgICAgfQogICAgfQogICAgYWxlcnQoIisrKyBFTkRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBvcmlnaW4gPSAiICsgekRhdGEuY2xhc3NpZmljYXRpb24rIi8iK3pEYXRhLnByb2dyYW1OYW1lKyIvIit6RGF0YS5jaGFubmVsKTsKICAgIC8vYWxlcnQoIkBAQCB6RGF0YS5BZmZpbGlhdGUgPSAiICsgekRhdGEuQWZmaWxpYXRlKTsKfTsKCi8qIHRoaXMgaXMgYW4gdW50ZXN0ZWQgZnVuY3Rpb24gdG8gZGV0ZWN0IHRoZSBzYW5kYm94IG5hbWUgYW5kIGFzc2lnbiB2YWx1ZXMgKi8gLy9FUlMxNzA1MjIgYWN0aXZhdGluZwp6RGF0YS5vcmdTd2l0Y2g9ZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwNTEyCiAgICBhbGVydCgic2ZVc2VyIGlzICIrZG9jLnNmVXNlck5hbWUpOwogICAgekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCiAgICB6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgp9Owp6RGF0YS5vcmdTd2l0Y2goZG9jKTsgLy9FUlMxNzA4MjIKCnpEYXRhLmdldERhdGFFbnRyeUZpZWxkcz1mdW5jdGlvbihkb2MsemQpIHsgLy9FUlMxOTA2MTkgY29weSB3ZGRhdGEgaW5mbyBpbnRvIHpEYXRhCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsgLy91c2UgekRhdGEgb3IgemQKfTsKCnpEYXRhLmFkZFN0YWdlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHN0YWdlKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcwogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn0KCi8vSW4gQ2xpZW50IExpYnJhcnkgekRhdGEubmV3Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkge307Cgp6RGF0YS5pbml0aWFsaXplU3RhY2s9ZnVuY3Rpb24oZG9jLHN0YWNrRm9sZGVyLHN0YWNrSWQpIHsgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQp9OwoKekRhdGEuY291bnRQYWdlcyA9IGZ1bmN0aW9uKGRvYywgcGFnZVJhbmdlMikgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlMi5zcGxpdCgiLCIpOwogICAgaWYgKCFwYWdlcykgcGFnZXM9W3BhZ2VSYW5nZTJdOwogICAgYWxlcnQoInpEYXRhLmNvdW50UGFnZXMgcGFnZXMgPSAiICsgcGFnZXMpOwogICAgLy9yZXR1cm4gcGFnZXMubGVuZ3RoOwogICAgcmV0dXJuICgiIitwYWdlcy5sZW5ndGgpOyAvL0VSUzE5MDgwMiAjNjEyNzIgVE9ETyBpbiBXQVIKfTsKCnpEYXRhLmV4cG9zZVBERj1mdW5jdGlvbihkb2Msc2ZJZCxwYWdlUmFuZ2UpIHsgLy9FUlMxNzA1MjIgYWRkZWQgcGFnZVJhbmdlCiAgICB2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciBub3dUaW1lU3RhbXAgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgCiAgICB2YXIgZmlsZU5hbWUgPSBnZXRDdXJEYXRlKGRvYykgKyAiIE5ldyBGYXgucGRmIjsKICAgIGFsZXJ0KCJAQEBmaWxlTmFtZSA9ICIrZmlsZU5hbWUpOwogICAgCiAgICBjcmVhdGVEaXJlY3RvcnkoZG9jLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCk7CiAgICAKICAgIC8vQU4xNzA1MjIgc2hvdWxkIHhQYWdlcyBiZSBwYXNzZWQgaW4gYXMgYSB2YXJpYWJsZT8KICAgIHZhciB4UGFnZXMgPSBYKGRvYywgIlhfcG9zaXRpb24iKTsKICAgIGlmIChwYWdlUmFuZ2UpIHhQYWdlcz1wYWdlUmFuZ2U7ICAvL0VSUzE3MDUyMgogICAgaWYgKHhQYWdlcyA9PT0gIioiIHx8IHhQYWdlcyA9PT0gImFsbCIpIHsgLy9FUlMyMTA0MjQgY29wcGVyCiAgICAgICAgbmV3UERGTmFtZT1kb2MuVVJMOwogICAgfSBlbHNlIHsKICAgICAgICBhbGVydCgiQEBAQEAgQ2FsbGluZyBzcGxpdFBERiB0byBzcGxpdCBvZmYgcGFnZXMgdG8gdXBsb2FkIGFzIFBERiwgcGFnZXMgPSAiICsgeFBhZ2VzICsgIiwgbm93VGltZVN0YW1wID0gIiArIG5vd1RpbWVTdGFtcCk7CiAgICAgICAgdmFyIHJlc3BvbnNlID0gc3BsaXRQREYoZG9jLCB4UGFnZXMsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wLCBmaWxlTmFtZSk7CiAgICAgICAgYWxlcnQoIkBAQEAgcmVzcG9uc2UgZnJvbSBzcGxpdFBERiA9ICIgKyByZXNwb25zZSk7CiAgICAgICAgdmFyIG5ld1BERk5hbWUgPSBYKGRvYywgIm5ld1BERiIsIHJlc3BvbnNlKTsKICAgICAgICBhbGVydCgiQEBAQCBzcGxpdCBQREYgRmlsZU5hbWUgPSAiICsgbmV3UERGTmFtZSk7CiAgICB9CiAgICAKICAgIHZhciB1cGxvYWRVUkw9Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9teWZpbGVmb3JjZS91cGxvYWRUb0Nsb3VkLmpzcD9TRmlkPU5FVyZTRnBpZD0iK3NmSWQrIiZTRm9yZz0iK2RvYy5zZk9yZysiJmxhYmVsPSIrZmlsZU5hbWUrIiZzZXJ2ZXJGaWxlPSIrbmV3UERGTmFtZSsiJkRlc2NyaXB0aW9uPUZpbGUgYXR0YWNoZWQgYXMgUERGIjsKICAgIGFsZXJ0KCIjIyMjIFVwbG9hZCBuYXRpdmUgUERGIHdpdGggIit1cGxvYWRVUkwpOwogICAgdmFyIHI9d2dldChkb2MsIHVwbG9hZFVSTCk7IC8vRVJTMTcwNTEyIHdhcyB6RGF0YS51cGxvYWRVUkwKICAgIGFsZXJ0KCIjIyMjIEZheCBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKICAgIC8vIEZpbmFsbHksIGRlbGV0ZSB0aGUgZm9sZGVyIGFuZCBhbGwgY29udGVudHMuCiAgICBjbGVhbnVwRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAgLy8gTm93IHNldCB0aGUgbGFiZWwgaW4gb3VyIFNuaXBwZXQKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiTmV3IGZpbGUgIiArIGZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7Cn07Cgp6RGF0YS5nZXRTdGFja0lkPWZ1bmN0aW9uKGRvYyxpZHMsc3RhY2tUeXBlTmFtZSkgeyAvL0VSUzE5MDYxNyBmcm9tIFVOTE9DSyAvL1RPRE8gRVJTMTkwNjI0IGZpbmQgc3RhY2tUeXBlTmFtZSBuZWVkZWQgZG9jCiAgICBpZiAoIWlkcyB8fCBpZHM9PT0iIikgaWRzID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOyAvL0VSUzE5MDYxOCBUT0RPIGNvbmZpcm0gZG9jIGluIHNjb3BlCiAgICBpZHMgPSBpZHMgKyAiIjsKCWlmIChpZHMubGFzdEluZGV4T2YoJy8nKSA+PSAwKSB7IC8vRVJTMTkwNjE4IGdldCBmaXJzdCBJZCBpZiAvIGlzIHBhc3NlZCBpbgoJCWlkcyA9IGlkcy5zdWJzdHJpbmcoaWRzLmxhc3RJbmRleE9mKCcvJykrMSk7Ci8vQ1JOMjAxMDIzICM3Njc4OCBUaGlzIGNvZGUgYXNzdW1lcyB0aGF0IHRoZSBmaXJzdCBhdHRhY2hlZFRvIElkIGlzIGEgU3RhY2suIFdlJ3ZlIHNlZSB0aGF0IGlzIG5vdCBhbHdheXMgdGhlIGNhc2UuCi8vIExvb2sgdGhyb3VnaCB0aGUgbGlzdCBvZiBJZHMsIHNlYXJjaGluZyBmb3IgdGhlIG9uZSB0aGF0IGlzIGFjdHVhbGx5IGEgelN0YWNrIElkLgovLwkJaWYgKGlkcy5pbmRleE9mKCcsJykgPj0gMCkgeyBpZHMgPSBpZHMuc3Vic3RyaW5nKDAsIGlkcy5pbmRleE9mKCcsJykpOyB9Ci8vCQlyZXR1cm4gaWRzOwoJfQogICAgCiAgICBpZiAoIXN0YWNrVHlwZU5hbWUpIHN0YWNrVHlwZU5hbWU9IlpQQVBFUl9felN0YWNrX19jIjsgLy9FUlMxOTA2MjQgZ3Vlc3NpbmcgVE9ETyBmaW5kIGV4YW1wbGVzCiAgICB2YXIgcGFydHMgPSBpZHMuc3BsaXQoJywnKTsKICAgIGZvciAodmFyIGk9MDsgaTxwYXJ0cy5sZW5ndGg7IGkrKykgeyAvL2dldCBrYXN0IElkIGlmIC8gaXMgTk9UIHBhc3NlZCBpbgogICAgICAgIHZhciBpZCA9IHBhcnRzW2ldLnRyaW0oKTsKICAgICAgICBpZiAoaWQubGVuZ3RoID4gMCkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBwdWxsaW5nIHR5cGUgZm9yIGlkOiAiICsgaWQpOwogICAgICAgICAgICBpZiAoc3RhY2tUeXBlTmFtZSA9PT0gZ2V0U0ZUeXBlKGRvYywgaWQpKSB7CiAgICAgICAgICAgICAgICByZXR1cm4gaWQ7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICByZXR1cm4gbnVsbDsgLy9FUlMyMDEwMjMgIzc2Nzg4IHJlc3RvcmVkIG51bGwgYnV0IENSTiB0ZXN0ZWQgIiIKfTsKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzKGRvYyk7IC8vY2FsbCBmdW5jdGlvbiB0byBzZXQgdmFyaWFibGVzCi8qIEVORCAqLw=="},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//global variables
zData.programName = "";
zData.zp="ZPAPER__"; //TODO ZPAPER6__
zData.zps="ReceivedDocument"; //zData.zp+"zStack__c"; //ERS210424 #82081
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
