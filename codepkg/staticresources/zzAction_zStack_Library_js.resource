<!--
// Name: zStack Library
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: Updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-25 22:10:00","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzIC8vRVJTMTkwODAzIGZyb20gT2NjRml0ICM1MjY2MQp6RGF0YS5wcm9ncmFtTmFtZSA9ICIiOwp6RGF0YS5BZmZpbGlhdGUgPSAiIjsKekRhdGEuenA9IlpQQVBFUl9fIjsgLy9FUlMxOTA2MTcgIzUyNjYxCnpEYXRhLnpwcz16RGF0YS56cCsielN0YWNrX19jIjsKekRhdGEuc2ZJRCA9IGdldEJhcmNvZGVPbmUoZG9jKTsKaWYgKCF6RGF0YS5zZklEIHx8IDAgPT09IHpEYXRhLnNmSUQubGVuZ3RoKSB7CiAgICB6RGF0YS5zZklEID0gZ2V0QWx0ZXJuYXRlQmFyY29kZU9uZShkb2MpICsgIiI7Cn0KekRhdGEuZm9ybWF0Tm93PXpEYXRhLm5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOyAvL0VSUzE5MDYyNCB3YXMganVzdCAubm93CnpEYXRhLmF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJSZWNvcmRzX19jIikudHJpbSgpOwppZiAoIXpEYXRhLmF0dGFjaFJlY29yZHMpIHsgekRhdGEuYXR0YWNoUmVjb3Jkcz0iQ2FzZSxMZWFkIjt9IC8vQ2FzZSxDb250YWN0LEFjY291bnQsUGF0aWVudCxMZWFkCgppZiAoMT09PTApIHsgLy9FUlMxNzA4MDUgZ2V0IHRoZSBkYXRhIGZyb20gdGhlIERlcGxveW1lbnRJbmZvIC8vRVJTMTcwOTA5IFRPRE8gZG8gdGhpcyBzYWZlbHkgd2l0aCBYRGVwbG95bWVudEluZm8sWEN1c3RvbVNldHRpbmcKICAgIC8vYWxlcnQoIkVSUzE3MDcyNSBEST0iK2RvYy5rYkRhdGEuZGVwbG95bWVudEluZm8pOwogICAgdmFyIGNzPShkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKyIiKTsgLy9ub3QgWyJCdXNpbmVzc19Qcm9jZXNzX19jIl07CiAgICAvL2FsZXJ0KCJFUlMxNzA4MDUgY3M9Iitjcyk7CiAgICBpZiAoY3MpIHsKICAgICAgICBpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsKICAgICAgICBpZiAoY3MgIT09ICIiKSBldmFsKGNzKTsKICAgICAgICBhbGVydCgiRVJTMTcwODIyIGltcG9ydCBmb3IgIitjcyk7CiAgICB9Cn0KCi8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmU9ZnVuY3Rpb24oZG9jKSB7CiAgIHZhciBkb2MwPVtdOwogICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXT1kb2NbaV07CiAgIHJldHVybiBkb2MwOwp9OwoKLy8gVGhpcyBmdW5jdGlvbiBuZWVkcyB0byBiZSBhZGRlZCB0byBldmVyeSBydWxlIHRvIGhlbHAgYXNzdXJlIHRoYXQgcnVsZXMgZG8gbm90IGdldCBhY2NpZGVudGFsbHkgdHJpZ2dlcmVkCi8vIEFkZCB0aGlzIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIHJ1bGVzIGVuZ2luZSBpdHNlbGY/CnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbiA9IGZ1bmN0aW9uKGRvYyx0cmlnZ2VyRmllbGQpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2godHJpZ2dlckZpZWxkLCAiIik7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07CgovL0FOMTkwNTMwIHRlY2ggZGVidD8gdW5zdXJlIGhvdyB0aGlzIGZ1bmN0aW9uIGlzIG5lZWRlZAp6RGF0YS5uYW1lRmlsZSA9IGZ1bmN0aW9uKGRvYykgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKStYKGRvYywiWF9aUEFQRVJfX0xhc3ROYW1lX19jIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7CiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Cgp6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZID0gZnVuY3Rpb24oZG9jKSB7IC8vTVNIMTcwODMxIGV4dHJhY3QgZGF0ZSBmb3JtYXQgZnJvbSB6RGF0YS5uYW1lRmlsZQogICAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICAgIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogICAgLy9NU0gxNzA5MDYgcGFkIGRheSB3aXRoIHplcm8KICAgIHZhciBjdXJEYXkgPSB0b2RheS5nZXREYXRlKCk7CiAgICAvL01TSDE3MDkwNiB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrIiIrdG9kYXkuZ2V0RGF0ZSgpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKygiIisoY3VyRGF5ID4gOSA/IGN1ckRheSsiIiA6ICIwIitjdXJEYXkpKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIC8vYWxlcnQoIk1NZGRZWVlZID09ICIgKyBNTWRkWVlZWSk7CiAgICByZXR1cm4gTU1kZFlZWVk7Cn07Cgp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMgPSBmdW5jdGlvbihkb2MpIHsgcmV0dXJuIHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyB9OyAvL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKekRhdGEuc2V0YnJhbmRwcm9ncmFtID0gZnVuY3Rpb24oZG9jKSB7IHJldHVybiB6RGF0YS5zZXRCcmFuZFByb2dyYW0oZG9jKTsgfTsgLy9NU0gxNzEwMDUgZ2V0IGFsbCB0aGUgb3JncyBpbiBoZXJlCiAgIAp6RGF0YS5zZXRCcmFuZFByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgLy9UT0RPIGRvIGh1YiB3aXRoIHNldHRpbmdzCiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICBhbGVydCgiQEBAIGRvYy5kZWxpdmVyZWRGcm9tID0gIiArIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIHZhciB6cD16RGF0YS56cDsKICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLmNoYW5uZWw9ZG9jLmRlbGl2ZXJlZFRvOwogICAgekRhdGEucHJvZ3JhbU5hbWU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgLy96RGF0YS5BZmZpbGlhdGU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvICsgIiI7IC8vSlBCMTkwNTI5IENoZWNrIGRlbGl2ZXJlZFRvIGZvciBjb21tdW5pdHkgdXBsb2FkZXMKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCiAgICBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gIC8vUFYxOTA5MjQgYWRkZWQgZm9yIGNoYW5uZWwKICAgIGlmIChpc05hTihkZWxpdmVyZWRUbykpIHsKICAgIGlmIChkZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImNvbW11bml0eSIpID49IDApIHsKICAgIHpEYXRhLmNoYW5uZWwgPSAiQ29tbXVuaXR5IjsKICAgIH0gZWxzZSBpZihkZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpID49IDApIHsKICAgICAgICB6RGF0YS5jaGFubmVsID0gIlVwbG9hZCI7IC8vUFYxOTExMjIgYWRkZWQgZm9yIHVwbG9hZGVkIGRvY3VtZW50cwogICAgICB9IGVsc2UgewogICAgICAgIHpEYXRhLmNoYW5uZWw9IlNjYW4iOwogICB9CiAgICB9CiAgICB2YXIgbWF4Q2hhbm5lbHM9MjsgaWYgKHpEYXRhLm1heENoYW5uZWxzKSBtYXhDaGFubmVscz16RGF0YS5tYXhDaGFubmVsczsgLy9FUlMxOTA3MzEgIzYxMjcyCiAgICBmb3IgKHZhciBpPTE7IGk8PW1heENoYW5uZWxzOyBpKyspIHsKICAgICAgICB2YXIgY2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNoYW5uZWwiK2krIl9fYyIpOwogICAgICAgIHZhciBwcm9ncmFtPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiUHJvZ3JhbSIraSsiX19jIik7CiAgICAgICAgLy92YXIgYWZmaWxpYXRlPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQWZmaWxpYXRlIitpKyJfX2MiKTsKICAgICAgICB2YXIgY2xhc3NpZmljYXRpb249WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJDbGFzc2lmaWNhdGlvbiIraSsiX19jIik7CiAgICAgICAgdmFyIGF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLCJSZWNvcmRzIitpKyJfX2MiKTsgLy9ubyB6cCBpcyBkZWxpYmVyYXRlCiAgICAgICAgaWYgKCFhdHRhY2hSZWNvcmRzKSBhdHRhY2hSZWNvcmRzPXpEYXRhLmF0dGFjaFJlY29yZHM7CiAgICAgICAgaWYgKCFjaGFubmVsKSBicmVhazsKICAgICAgICBpZiAoaT49MykgenA9IiI7IC8vMiBpbiBtYW5hZ2VkIHBhY2thZ2UKICAgICAgICB2YXIgYz1jaGFubmVsOyBpZiAoYy5pbmRleE9mKCIxIik9PT0wKSBjPWMuc3Vic3RyaW5nKDEpOwogICAgICAgIHpEYXRhLmNoYW5uZWxzPWk7CiAgICAgICAgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKGMpPi0xIHx8IGRvYy5kZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpPi0xKSB7CiAgICAgICAgICAgIC8vekRhdGEuY2hhbm5lbD1jaGFubmVsOyAvL1BWMTkwOTI0IGNvbW1lbnRlZCBiZWNhdXNlIGl0J3Mgb3ZlcnJpZGluZyB0aGUgY2hhbm5lbCB3aXRoIGN1c3RvbSBzZXR0aW5ncwogICAgICAgICAgICB6RGF0YS5wcm9ncmFtTmFtZT1wcm9ncmFtOwogICAgICAgICAgICAvL2lmKCFpc05hTihjKSkgekRhdGEuY2hhbm5lbFtwcm9ncmFtXT1jaGFubmVsOyAvL3JldmVyc2UgbG9va3VwIGZvciBmYXggUFYxOTA5MjQgQ29tbWVudGVkCiAgICAgICAgICAgIC8vekRhdGEuQWZmaWxpYXRlPWFmZmlsaWF0ZTsKICAgICAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb249Y2xhc3NpZmljYXRpb247CiAgICAgICAgICAgIHpEYXRhLmF0dGFjaFJlY29yZHM9YXR0YWNoUmVjb3JkczsgLy9FUlMxOTA2MjAKICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgfQogICAgfQogICAgYWxlcnQoIisrKyBFTkRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBvcmlnaW4gPSAiICsgekRhdGEuY2xhc3NpZmljYXRpb24rIi8iK3pEYXRhLnByb2dyYW1OYW1lKyIvIit6RGF0YS5jaGFubmVsKTsKICAgIC8vYWxlcnQoIkBAQCB6RGF0YS5BZmZpbGlhdGUgPSAiICsgekRhdGEuQWZmaWxpYXRlKTsKfTsKCi8qIHRoaXMgaXMgYW4gdW50ZXN0ZWQgZnVuY3Rpb24gdG8gZGV0ZWN0IHRoZSBzYW5kYm94IG5hbWUgYW5kIGFzc2lnbiB2YWx1ZXMgKi8gLy9FUlMxNzA1MjIgYWN0aXZhdGluZwp6RGF0YS5vcmdTd2l0Y2g9ZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwNTEyCiAgICBhbGVydCgic2ZVc2VyIGlzICIrZG9jLnNmVXNlck5hbWUpOwogICAgekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCiAgICB6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgogICAgdmFyIHF1ZXVlSWQ9ICIiK1hDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsielN0YWNrUXVldWVJZF9fYyIpOwogICAgekRhdGEub3duZXJJZCA9IHF1ZXVlSWQ7IC8vUFYxOTA5MjQgdXBkYXRlZCB0byBjaGFuZ2Ugb3duZXIgYXMgcXVldWUKICAgIGFsZXJ0KCJFUlMxOTA5MjYgekRhdGEub3duZXJJZD0iK3pEYXRhLm93bmVySWQrIiBmcm9tIHpTdGFja1F1ZUlkIGluICIrWEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJ6U3RhY2tRdWV1ZUlkX19jIikpOyAvL0VSUzE5MDkyNiAjNjM1NTIKICAgIH07CnpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL0VSUzE3MDgyMgoKekRhdGEuZ2V0RGF0YUVudHJ5RmllbGRzPWZ1bmN0aW9uKGRvYyx6ZCkgeyAvL0VSUzE5MDYxOSBjb3B5IHdkZGF0YSBpbmZvIGludG8gekRhdGEKICAgIGlmICghemQpIHpkPXpEYXRhOyAvL3VzZSB6RGF0YSBvciB6ZAogICAgdmFyIGZpZWxkcz1kb2Mud2RkYXRhLnNwbGl0KCI8WF8iKTsKICAgIC8vPFhfWlBBUEVSX19Qcm92aWRlcl9fci5OYW1lPlVuaXRlZCBPaWwgJiBHYXMsIFNpbmdhcG9yZTwvWF9aUEFQRVJfX1Byb3ZpZGVyX19yLk5hbWU+CiAgICAvLzxYX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lPkpvc2ggRGF2aXM8L1hfWlBBUEVSX19QYXRpZW50X19yLk5hbWU+CiAgICAvLzxYX1pQQVBFUl9fQ2FzZV9fYz41MDA0NDAwMDAwbEVpMzNBQUM8L1hfWlBBUEVSX19DYXNlX19jPgogICAgZm9yICh2YXIgaSBpbiBmaWVsZHMpIHsKICAgICAgICB2YXIgbnY9ZmllbGRzW2ldOyAvLyJaUEFQRVJfX0Nhc2VfX2M+NTAwNDQwMDAwMGxFaTMzQUFDPC9YX1pQQVBFUl9fQ2FzZV9fYz4iCiAgICAgICAgdmFyIGo9bnYuaW5kZXhPZigiPiIpOwogICAgICAgIHZhciBrPW52LmluZGV4T2YoIjwiLGorMSk7CiAgICAgICAgaWYgKGo+LTEgJiYgaz4tMSkgewogICAgICAgICAgICB2YXIgbj0iWF8iK252LnN1YnN0cmluZygwLGopOwogICAgICAgICAgICB2YXIgdj1udi5zdWJzdHJpbmcoaisxLGspOwogICAgICAgICAgICB6RGF0YVtuXT12OwogICAgICAgIH0KICAgIH0KICAgIHpEYXRhLmNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsgLy9FUlMxOTA2MjQgVE9ETyBtb3JlIG9mIHRoZSBzYW1lCiAgICB6RGF0YS5jb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7CiAgICB6RGF0YS5wYXRpZW50SWQ9ekRhdGEuY29udGFjdElkOyAvL1RPRE8gUGVyc29uYWxBY2NvdW50IHByZWZlcmVuY2UKICAgIHpEYXRhLnByb3ZpZGVySWQgPSBYKGRvYywgIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOwogICAgLy92YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwogICAgLy92YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKICAgIC8vdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKICAgIC8vRVJTMTkwODAyICM2MTI3MiBtYXJzaGFsbCBmcm9tIFgoKSBzaW5jZSB0aGUgZGF0ZSBlbnRyeSBpbmZvIG5vdCBhbHJlYWR5IHNhdmVkIGludG8gd2RkYXRhCiAgICB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jPXBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKICAgIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYz1wYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwogICAgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYz1wYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7CiAgICB6RGF0YS5YX0Nhc2VfUmVjb3JkX1R5cGVfX2MgPWNhc2VSZWNvcmRUeXBlID0gWChkb2MsICJYX0Nhc2VfUmVjb3JkX1R5cGVfX2MiKTsvLyBQVjE5MDkyNSBhZGRlZAogICAgekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MgPSBkb2NUeXBlID0gWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IC8vUFYxOTEwMDIgZG9jVHlwZQogICAgLy96RGF0YS5YX1ByZXNjcmlwdGlvbl9fYyA9IFgoZG9jLCAiWF9QcmVzY3JpcHRpb25fX2MiKTsvL1BWMTkxMDI1ICB0byB1cGRhdGUgbmFtZSBvbiBwcmVzY3JpcHRpb24gcmVjb3JkCn07CgoKekRhdGEuYWRkU3RhZ2U9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsc3RhZ2UpIHsgLy9FUlMxNzA5MDkgIzQwNTkyIGZvciB6RG9jU2V0IHN0YXR1c2VzCmlmICghc3RhZ2UpIHsKICAgIHZhciBiYT1kb2MuWCgiWF9idXR0b25BY3Rpb24iKSsiZWQiOwogICAgYmE9YmEuc3Vic3RyaW5nKDErYmEubGFzdEluZGV4T2YoIiAiKSk7CiAgICBzdGFnZT1iYTsgaWYgKHN0YWdlLmxlbmd0aCgpPDQpIHtzdGFnZT0iUmVjZWl2ZWQiO30KICAgIH0gZWxzZSB7CiAgICAgICAgYmE9c3RhZ2U7IC8vRVJTMTkwODAyCiAgICB9CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKICAgIHJldHVybiBhcnJPZlBhaXJzOwp9CgovL0luIENsaWVudCBMaWJyYXJ5IHpEYXRhLm5ld0Nhc2U9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHt9OwoKekRhdGEuaW5pdGlhbGl6ZVN0YWNrPWZ1bmN0aW9uKGRvYyxzdGFja0ZvbGRlcixzdGFja0lkKSB7IC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgdmFyIGZpbmFsUm9vdEZvbGRlciA9IHpEYXRhLnByb2dyYW1OYW1lKyItQXJjaGl2ZSI7IC8vYmF0ZXMgb2YgdGhlIEFyY2hpdmUgZm9sZGVyCiAgdmFyIHl5eXlNTUZvbGRlck5hbWUgPSB0b2RheS5nZXRGdWxsWWVhcigpICsgKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKTsKICB2YXIgeXl5eU1NRm9sZGVyID0gZmluYWxSb290Rm9sZGVyICsgIi0iICsgeXl5eU1NRm9sZGVyTmFtZTsKICBhbGVydCgiQEBAIHN0YWNrRm9sZGVyIGlzIC0gIiArIHN0YWNrRm9sZGVyKTsKICBhbGVydCgiQEBAIGZpbmFsUm9vdEZvbGRlciBpcyAtICIgKyBmaW5hbFJvb3RGb2xkZXIpOwogIGFsZXJ0KCJAQEAgeXlNTUZvbGRlciBpcyAtICIgKyB5eXl5TU1Gb2xkZXIpOwogIGFsZXJ0KCJAQEAgY3JlYXRpbmcgbmV3IHN0YWNrIGRlc3RpbmFpb24gZm9sZGVyIHdpdGggbmFtZSAtICIgKyBzdGFja0ZvbGRlcik7CiAgLyogUmVmcmVzaCB0aGUgY3VycmVudCBmb2xkZXIgKi8KICByZWxvYWRCeUlkKGRvYywgWChkb2MsIlhfY3VyRm9sZGVyIikpOwogIC8qIHNhbWUgdmFsdWUgZm9yIEJBVEVTIGFuZCBsYWJlbCAqLwogIC8qIFRoZSBmb2xkZXIgc3RydWN0dXJlIHdpbGwgbG9vayBsaWtlIHRoaXM6IC8yMDE2MDgvM0NYM0NYLzEyMzQ1Njc4OS1TVEFDSyAqLwogIGNyZWF0ZUZvbGRlcihkb2MsIGZpbmFsUm9vdEZvbGRlciwgeXl5eU1NRm9sZGVyLCB5eXl5TU1Gb2xkZXJOYW1lKTsKICBjcmVhdGVGb2xkZXIoZG9jLCB5eXl5TU1Gb2xkZXIsIHN0YWNrRm9sZGVyLCBzdGFja0ZvbGRlcik7CiAgYWxlcnQoIkBAQEAgTW92aW5nIHRoZSBzdGFjayBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7CiAgbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4SW5pdGlhbGl6ZWQiLCAidHJ1ZSIpOwogIGFyck9mUGFpcnMucHVzaCgiWF9zdGFjayIsIHN0YWNrSWQpOwogIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBkb2Mua2JEYXRhLmdyb3VwSUQuc3Vic3RyaW5nKDEpICsgIi0iICsgc3RhY2tJZCArICItU1RBQ0siKTsKICAvKiBTdGFjayBMYWJlbGxpbmcgQ2hhbmdlICovCiAgdmFyIGR0U3RhbXAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlKTsKICAvKiBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwiU3RhY2sgLSAiICsgZHRTdGFtcCk7ICovCiAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9OwoKekRhdGEuY291bnRQYWdlcyA9IGZ1bmN0aW9uKGRvYywgcGFnZVJhbmdlMikgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlMi5zcGxpdCgiLCIpOwogICAgaWYgKCFwYWdlcykgcGFnZXM9W3BhZ2VSYW5nZTJdOwogICAgYWxlcnQoInpEYXRhLmNvdW50UGFnZXMgcGFnZXMgPSAiICsgcGFnZXMpOwogICAgLy9yZXR1cm4gcGFnZXMubGVuZ3RoOwogICAgcmV0dXJuICgiIitwYWdlcy5sZW5ndGgpOyAvL0VSUzE5MDgwMiAjNjEyNzIgVE9ETyBpbiBXQVIKfTsKCnpEYXRhLmV4cG9zZVBERj1mdW5jdGlvbihkb2Msc2ZJZCxwYWdlUmFuZ2UpIHsgLy9FUlMxNzA1MjIgYWRkZWQgcGFnZVJhbmdlCiAgICB2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciBub3dUaW1lU3RhbXAgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAKICAgIHZhciBmaWxlTmFtZSA9IGdldEN1ckRhdGUoZG9jKSArICIgTmV3IEZheC5wZGYiOwogICAgYWxlcnQoIkBAQGZpbGVOYW1lID0gIitmaWxlTmFtZSk7CiAgIAogICAgY3JlYXRlRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAKICAgIC8vQU4xNzA1MjIgc2hvdWxkIHhQYWdlcyBiZSBwYXNzZWQgaW4gYXMgYSB2YXJpYWJsZT8KICAgIHZhciB4UGFnZXMgPSBYKGRvYywgIlhfcG9zaXRpb24iKTsKICAgIGlmIChwYWdlUmFuZ2UpIHhQYWdlcz1wYWdlUmFuZ2U7ICAvL0VSUzE3MDUyMgogICAgYWxlcnQoIkBAQEBAIENhbGxpbmcgc3BsaXRQREYgdG8gc3BsaXQgb2ZmIHBhZ2VzIHRvIHVwbG9hZCBhcyBQREYsIHBhZ2VzID0gIiArIHhQYWdlcyArICIsIG5vd1RpbWVTdGFtcCA9ICIgKyBub3dUaW1lU3RhbXApOwogICAgdmFyIHJlc3BvbnNlID0gc3BsaXRQREYoZG9jLCB4UGFnZXMsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wLCBmaWxlTmFtZSk7CiAgICBhbGVydCgiQEBAQCByZXNwb25zZSBmcm9tIHNwbGl0UERGID0gIiArIHJlc3BvbnNlKTsKICAgIHZhciBuZXdQREZOYW1lID0gWChkb2MsICJuZXdQREYiLCByZXNwb25zZSk7CiAgIAogICAgYWxlcnQoIkBAQEAgc3BsaXQgUERGIEZpbGVOYW1lID0gIiArIG5ld1BERk5hbWUpOwogICAKICAgIHZhciB1cGxvYWRVUkw9Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9teWZpbGVmb3JjZS91cGxvYWRUb0Nsb3VkLmpzcD9TRmlkPU5FVyZTRnBpZD0iK3NmSWQrIiZTRm9yZz0iK2RvYy5zZk9yZysiJmxhYmVsPSIrZmlsZU5hbWUrIiZzZXJ2ZXJGaWxlPSIrbmV3UERGTmFtZSsiJkRlc2NyaXB0aW9uPUZpbGUgYXR0YWNoZWQgYXMgUERGIjsKICAgIGFsZXJ0KCIjIyMjIFVwbG9hZCBuYXRpdmUgUERGIHdpdGggIit1cGxvYWRVUkwpOwogICAgdmFyIHI9d2dldChkb2MsIHVwbG9hZFVSTCk7IC8vRVJTMTcwNTEyIHdhcyB6RGF0YS51cGxvYWRVUkwKICAgIGFsZXJ0KCIjIyMjIEZheCBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKICAgIC8vIEZpbmFsbHksIGRlbGV0ZSB0aGUgZm9sZGVyIGFuZCBhbGwgY29udGVudHMuCiAgICBjbGVhbnVwRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAgLy8gTm93IHNldCB0aGUgbGFiZWwgaW4gb3VyIFNuaXBwZXQKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiTmV3IGZpbGUgIiArIGZvcm1hdE5vdyk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7Cn07Cgp6RGF0YS5nZXRTdGFja0lkPWZ1bmN0aW9uKGRvYyxpZHMsc3RhY2tUeXBlTmFtZSkgeyAvL0VSUzE5MDYxNyBmcm9tIFVOTE9DSyAvL1RPRE8gRVJTMTkwNjI0IGZpbmQgc3RhY2tUeXBlTmFtZSBuZWVkZWQgZG9jCiAgICBpZiAoIWlkcyB8fCBpZHM9PT0iIikgaWRzID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOyAvL0VSUzE5MDYxOCBUT0RPIGNvbmZpcm0gZG9jIGluIHNjb3BlCiAgICBpZHMgPSBpZHMgKyAiIjsKaWYgKGlkcy5sYXN0SW5kZXhPZignLycpID49IDApIHsgLy9FUlMxOTA2MTggZ2V0IGZpcnN0IElkIGlmIC8gaXMgcGFzc2VkIGluCmlkcyA9IGlkcy5zdWJzdHJpbmcoaWRzLmxhc3RJbmRleE9mKCcvJykrMSk7CmlmIChpZHMuaW5kZXhPZignLCcpID49IDApIHsgaWRzID0gaWRzLnN1YnN0cmluZygwLCBpZHMuaW5kZXhPZignLCcpKTsgfQpyZXR1cm4gaWRzOwp9CiAgIAogICAgaWYgKCFzdGFja1R5cGVOYW1lKSBzdGFja1R5cGVOYW1lPSJaUEFQRVJfX3pTdGFja19fYyI7IC8vRVJTMTkwNjI0IGd1ZXNzaW5nIFRPRE8gZmluZCBleGFtcGxlcwogICAgdmFyIHBhcnRzID0gaWRzLnNwbGl0KCcsJyk7CiAgICBmb3IgKHZhciBpPTA7IGk8cGFydHMubGVuZ3RoOyBpKyspIHsgLy9nZXQga2FzdCBJZCBpZiAvIGlzIE5PVCBwYXNzZWQgaW4KICAgICAgICB2YXIgaWQgPSBwYXJ0c1tpXS50cmltKCk7CiAgICAgICAgaWYgKGlkLmxlbmd0aCA+IDApIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgcHVsbGluZyB0eXBlIGZvciBpZDogIiArIGlkKTsKICAgICAgICAgICAgaWYgKHN0YWNrVHlwZU5hbWUgPT09IGdldFNGVHlwZShkb2MsIGlkKSkgewogICAgICAgICAgICAgICAgcmV0dXJuIGlkOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQogICAgcmV0dXJuIG51bGw7Cn07CnpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyhkb2MpOyAvL2NhbGwgZnVuY3Rpb24gdG8gc2V0IHZhcmlhYmxlcwovKiBFTkQgKi8K"},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//global variables //ERS190803 from OccFit #52661
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
    alert("@@@ doc.deliveredFrom = " + doc.deliveredFrom);
    var zp=zData.zp;
    zData.classification=doc.deliveredTo;
    zData.channel=doc.deliveredTo;
    zData.programName=doc.deliveredTo;
    //zData.Affiliate=doc.deliveredTo;
    var deliveredTo = doc.deliveredTo + ""; //JPB190529 Check deliveredTo for community uploades
    if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {zData.channel="Email";} //ERS180505 #48101
    if (isNaN(doc.deliveredFrom)) {zData.channel="Email";}  //PV190924 added for channel
    if (isNaN(deliveredTo)) {
    if (deliveredTo.toLowerCase().indexOf("community") >= 0) {
    zData.channel = "Community";
    } else if(deliveredTo.toLowerCase().indexOf("upload") >= 0) {
        zData.channel = "Upload"; //PV191122 added for uploaded documents
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
        if (doc.deliveredTo.indexOf(c)>-1 || doc.deliveredTo.toLowerCase().indexOf("upload")>-1) {
            //zData.channel=channel; //PV190924 commented because it's overriding the channel with custom settings
            zData.programName=program;
            //if(!isNaN(c)) zData.channel[program]=channel; //reverse lookup for fax PV190924 Commented
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
    var queueId= ""+XCustomSetting(doc,zData.zp+"zStackQueueId__c");
    zData.ownerId = queueId; //PV190924 updated to change owner as queue
    alert("ERS190926 zData.ownerId="+zData.ownerId+" from zStackQueId in "+XCustomSetting(doc,zData.zp+"zStackQueueId__c")); //ERS190926 #63552
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
    zData.patientId=zData.contactId; //TODO PersonalAccount preference
    zData.providerId = X(doc, "X_ZPAPER__Provider__c");
    //var patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
    //var patientLastName = X(doc, "X_ZPAPER__LastName__c");
    //var patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
    //ERS190802 #61272 marshall from X() since the date entry info not already saved into wddata
    zData.X_ZPAPER__FirstName__c=patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
    zData.X_ZPAPER__LastName__c=patientLastName = X(doc, "X_ZPAPER__LastName__c");
    zData.X_ZPAPER__Birthdate__c=patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
    zData.X_Case_Record_Type__c =caseRecordType = X(doc, "X_Case_Record_Type__c");// PV190925 added
    zData.X_ZPAPER__faxType__c = docType = X(doc,"X_ZPAPER__faxType__c"); //PV191002 docType
    //zData.X_Prescription__c = X(doc, "X_Prescription__c");//PV191025  to update name on prescription record
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
