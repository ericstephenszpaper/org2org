<!--
// Name: zStack Library
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV191002 docType
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-02 16:36:56","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzIC8vRVJTMTkwODAzIGZyb20gT2NjRml0ICM1MjY2MQp6RGF0YS5wcm9ncmFtTmFtZSA9ICIiOwp6RGF0YS5BZmZpbGlhdGUgPSAiIjsKekRhdGEuenA9IlpQQVBFUl9fIjsgLy9FUlMxOTA2MTcgIzUyNjYxCnpEYXRhLnpwcz16RGF0YS56cCsielN0YWNrX19jIjsKekRhdGEuc2ZJRCA9IGdldEJhcmNvZGVPbmUoZG9jKTsKaWYgKCF6RGF0YS5zZklEIHx8IDAgPT09IHpEYXRhLnNmSUQubGVuZ3RoKSB7CiAgICB6RGF0YS5zZklEID0gZ2V0QWx0ZXJuYXRlQmFyY29kZU9uZShkb2MpICsgIiI7Cn0KekRhdGEuZm9ybWF0Tm93PXpEYXRhLm5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOyAvL0VSUzE5MDYyNCB3YXMganVzdCAubm93CnpEYXRhLmF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJSZWNvcmRzX19jIikudHJpbSgpOwppZiAoIXpEYXRhLmF0dGFjaFJlY29yZHMpIHsgekRhdGEuYXR0YWNoUmVjb3Jkcz0iQ2FzZSxMZWFkIjt9IC8vQ2FzZSxDb250YWN0LEFjY291bnQsUGF0aWVudCxMZWFkCgppZiAoMT09PTApIHsgLy9FUlMxNzA4MDUgZ2V0IHRoZSBkYXRhIGZyb20gdGhlIERlcGxveW1lbnRJbmZvIC8vRVJTMTcwOTA5IFRPRE8gZG8gdGhpcyBzYWZlbHkgd2l0aCBYRGVwbG95bWVudEluZm8sWEN1c3RvbVNldHRpbmcKICAgIC8vYWxlcnQoIkVSUzE3MDcyNSBEST0iK2RvYy5rYkRhdGEuZGVwbG95bWVudEluZm8pOwogICAgdmFyIGNzPShkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKyIiKTsgLy9ub3QgWyJCdXNpbmVzc19Qcm9jZXNzX19jIl07CiAgICAvL2FsZXJ0KCJFUlMxNzA4MDUgY3M9Iitjcyk7CiAgICBpZiAoY3MpIHsKICAgICAgICBpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsKICAgICAgICBpZiAoY3MgIT09ICIiKSBldmFsKGNzKTsKICAgICAgICBhbGVydCgiRVJTMTcwODIyIGltcG9ydCBmb3IgIitjcyk7CiAgICB9Cn0KCi8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmU9ZnVuY3Rpb24oZG9jKSB7CiAgIHZhciBkb2MwPVtdOwogICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXT1kb2NbaV07CiAgIHJldHVybiBkb2MwOwp9OwoKLy8gVGhpcyBmdW5jdGlvbiBuZWVkcyB0byBiZSBhZGRlZCB0byBldmVyeSBydWxlIHRvIGhlbHAgYXNzdXJlIHRoYXQgcnVsZXMgZG8gbm90IGdldCBhY2NpZGVudGFsbHkgdHJpZ2dlcmVkCi8vIEFkZCB0aGlzIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIHJ1bGVzIGVuZ2luZSBpdHNlbGY/CnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbiA9IGZ1bmN0aW9uKGRvYyx0cmlnZ2VyRmllbGQpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2godHJpZ2dlckZpZWxkLCAiIik7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07CgovL0FOMTkwNTMwIHRlY2ggZGVidD8gdW5zdXJlIGhvdyB0aGlzIGZ1bmN0aW9uIGlzIG5lZWRlZAp6RGF0YS5uYW1lRmlsZSA9IGZ1bmN0aW9uKGRvYykgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKStYKGRvYywiWF9aUEFQRVJfX0xhc3ROYW1lX19jIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7CiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Cgp6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZID0gZnVuY3Rpb24oZG9jKSB7IC8vTVNIMTcwODMxIGV4dHJhY3QgZGF0ZSBmb3JtYXQgZnJvbSB6RGF0YS5uYW1lRmlsZQogICAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICAgIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogICAgLy9NU0gxNzA5MDYgcGFkIGRheSB3aXRoIHplcm8KICAgIHZhciBjdXJEYXkgPSB0b2RheS5nZXREYXRlKCk7CiAgICAvL01TSDE3MDkwNiB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrIiIrdG9kYXkuZ2V0RGF0ZSgpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKygiIisoY3VyRGF5ID4gOSA/IGN1ckRheSsiIiA6ICIwIitjdXJEYXkpKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIC8vYWxlcnQoIk1NZGRZWVlZID09ICIgKyBNTWRkWVlZWSk7CiAgICByZXR1cm4gTU1kZFlZWVk7Cn07Cgp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMgPSBmdW5jdGlvbihkb2MpIHsgcmV0dXJuIHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyB9OyAvL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKekRhdGEuc2V0YnJhbmRwcm9ncmFtID0gZnVuY3Rpb24oZG9jKSB7IHJldHVybiB6RGF0YS5zZXRCcmFuZFByb2dyYW0oZG9jKTsgfTsgLy9NU0gxNzEwMDUgZ2V0IGFsbCB0aGUgb3JncyBpbiBoZXJlCiAgIAp6RGF0YS5zZXRCcmFuZFByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgLy9UT0RPIGRvIGh1YiB3aXRoIHNldHRpbmdzCiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICBhbGVydCgiQEBAIGRvYy5kZWxpdmVyZWRGcm9tID0gIiArIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIHZhciB6cD16RGF0YS56cDsKICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLmNoYW5uZWw9ZG9jLmRlbGl2ZXJlZFRvOwogICAgekRhdGEucHJvZ3JhbU5hbWU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgLy96RGF0YS5BZmZpbGlhdGU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvICsgIiI7IC8vSlBCMTkwNTI5IENoZWNrIGRlbGl2ZXJlZFRvIGZvciBjb21tdW5pdHkgdXBsb2FkZXMKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCiAgICBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gIC8vUFYxOTA5MjQgYWRkZWQgZm9yIGNoYW5uZWwKICAgIGlmIChpc05hTihkZWxpdmVyZWRUbykpIHsKICAgIGlmIChkZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImNvbW11bml0eSIpID49IDApIHsKICAgIHpEYXRhLmNoYW5uZWwgPSAiQ29tbXVuaXR5IjsKICAgIH0gZWxzZSB7CiAgIHpEYXRhLmNoYW5uZWw9IlNjYW4iOwogICB9CiAgICB9CiAgICB2YXIgbWF4Q2hhbm5lbHM9MjsgaWYgKHpEYXRhLm1heENoYW5uZWxzKSBtYXhDaGFubmVscz16RGF0YS5tYXhDaGFubmVsczsgLy9FUlMxOTA3MzEgIzYxMjcyCiAgICBmb3IgKHZhciBpPTE7IGk8PW1heENoYW5uZWxzOyBpKyspIHsKICAgICAgICB2YXIgY2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNoYW5uZWwiK2krIl9fYyIpOwogICAgICAgIHZhciBwcm9ncmFtPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiUHJvZ3JhbSIraSsiX19jIik7CiAgICAgICAgLy92YXIgYWZmaWxpYXRlPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQWZmaWxpYXRlIitpKyJfX2MiKTsKICAgICAgICB2YXIgY2xhc3NpZmljYXRpb249WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJDbGFzc2lmaWNhdGlvbiIraSsiX19jIik7CiAgICAgICAgdmFyIGF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLCJSZWNvcmRzIitpKyJfX2MiKTsgLy9ubyB6cCBpcyBkZWxpYmVyYXRlCiAgICAgICAgaWYgKCFhdHRhY2hSZWNvcmRzKSBhdHRhY2hSZWNvcmRzPXpEYXRhLmF0dGFjaFJlY29yZHM7CiAgICAgICAgaWYgKCFjaGFubmVsKSBicmVhazsKICAgICAgICBpZiAoaT49MykgenA9IiI7IC8vMiBpbiBtYW5hZ2VkIHBhY2thZ2UKICAgICAgICB2YXIgYz1jaGFubmVsOyBpZiAoYy5pbmRleE9mKCIxIik9PT0wKSBjPWMuc3Vic3RyaW5nKDEpOwogICAgICAgIHpEYXRhLmNoYW5uZWxzPWk7CiAgICAgICAgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKGMpPi0xKSB7CiAgICAgICAgICAgIC8vekRhdGEuY2hhbm5lbD1jaGFubmVsOyAvL1BWMTkwOTI0IGNvbW1lbnRlZCBiZWNhdXNlIGl0J3Mgb3ZlcnJpZGluZyB0aGUgY2hhbm5lbCB3aXRoIGN1c3RvbSBzZXR0aW5ncwogICAgICAgICAgICB6RGF0YS5wcm9ncmFtTmFtZT1wcm9ncmFtOwogICAgICAgICAgICAvL2lmKCFpc05hTihjKSkgekRhdGEuY2hhbm5lbFtwcm9ncmFtXT1jaGFubmVsOyAvL3JldmVyc2UgbG9va3VwIGZvciBmYXggUFYxOTA5MjQgQ29tbWVudGVkCiAgICAgICAgICAgIC8vekRhdGEuQWZmaWxpYXRlPWFmZmlsaWF0ZTsKICAgICAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb249Y2xhc3NpZmljYXRpb247CiAgICAgICAgICAgIHpEYXRhLmF0dGFjaFJlY29yZHM9YXR0YWNoUmVjb3JkczsgLy9FUlMxOTA2MjAKICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgfQogICAgfQogICAgYWxlcnQoIisrKyBFTkRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBvcmlnaW4gPSAiICsgekRhdGEuY2xhc3NpZmljYXRpb24rIi8iK3pEYXRhLnByb2dyYW1OYW1lKyIvIit6RGF0YS5jaGFubmVsKTsKICAgIC8vYWxlcnQoIkBAQCB6RGF0YS5BZmZpbGlhdGUgPSAiICsgekRhdGEuQWZmaWxpYXRlKTsKfTsKCi8qIHRoaXMgaXMgYW4gdW50ZXN0ZWQgZnVuY3Rpb24gdG8gZGV0ZWN0IHRoZSBzYW5kYm94IG5hbWUgYW5kIGFzc2lnbiB2YWx1ZXMgKi8gLy9FUlMxNzA1MjIgYWN0aXZhdGluZwp6RGF0YS5vcmdTd2l0Y2g9ZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwNTEyCiAgICBhbGVydCgic2ZVc2VyIGlzICIrZG9jLnNmVXNlck5hbWUpOwogICAgekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCiAgICB6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgogICAgdmFyIHF1ZXVlSWQ9ICIiK1hDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsielN0YWNrUXVldWVJZF9fYyIpOwogICAgekRhdGEub3duZXJJZCA9IHF1ZXVlSWQ7IC8vUFYxOTA5MjQgdXBkYXRlZCB0byBjaGFuZ2Ugb3duZXIgYXMgcXVldWUKICAgIGFsZXJ0KCJFUlMxOTA5MjYgekRhdGEub3duZXJJZD0iK3pEYXRhLm93bmVySWQrIiBmcm9tIHpTdGFja1F1ZUlkIGluICIrWEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJ6U3RhY2tRdWV1ZUlkX19jIikpOyAvL0VSUzE5MDkyNiAjNjM1NTIKICAgIH07CnpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL0VSUzE3MDgyMgoKekRhdGEuZ2V0RGF0YUVudHJ5RmllbGRzPWZ1bmN0aW9uKGRvYyx6ZCkgeyAvL0VSUzE5MDYxOSBjb3B5IHdkZGF0YSBpbmZvIGludG8gekRhdGEKICAgIGlmICghemQpIHpkPXpEYXRhOyAvL3VzZSB6RGF0YSBvciB6ZAogICAgdmFyIGZpZWxkcz1kb2Mud2RkYXRhLnNwbGl0KCI8WF8iKTsKICAgIC8vPFhfWlBBUEVSX19Qcm92aWRlcl9fci5OYW1lPlVuaXRlZCBPaWwgJiBHYXMsIFNpbmdhcG9yZTwvWF9aUEFQRVJfX1Byb3ZpZGVyX19yLk5hbWU+CiAgICAvLzxYX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lPkpvc2ggRGF2aXM8L1hfWlBBUEVSX19QYXRpZW50X19yLk5hbWU+CiAgICAvLzxYX1pQQVBFUl9fQ2FzZV9fYz41MDA0NDAwMDAwbEVpMzNBQUM8L1hfWlBBUEVSX19DYXNlX19jPgogICAgZm9yICh2YXIgaSBpbiBmaWVsZHMpIHsKICAgICAgICB2YXIgbnY9ZmllbGRzW2ldOyAvLyJaUEFQRVJfX0Nhc2VfX2M+NTAwNDQwMDAwMGxFaTMzQUFDPC9YX1pQQVBFUl9fQ2FzZV9fYz4iCiAgICAgICAgdmFyIGo9bnYuaW5kZXhPZigiPiIpOwogICAgICAgIHZhciBrPW52LmluZGV4T2YoIjwiLGorMSk7CiAgICAgICAgaWYgKGo+LTEgJiYgaz4tMSkgewogICAgICAgICAgICB2YXIgbj0iWF8iK252LnN1YnN0cmluZygwLGopOwogICAgICAgICAgICB2YXIgdj1udi5zdWJzdHJpbmcoaisxLGspOwogICAgICAgICAgICB6RGF0YVtuXT12OwogICAgICAgIH0KICAgIH0KICAgIHpEYXRhLmNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsgLy9FUlMxOTA2MjQgVE9ETyBtb3JlIG9mIHRoZSBzYW1lCiAgICB6RGF0YS5jb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7CiAgICB6RGF0YS5wYXRpZW50SWQ9ekRhdGEuY29udGFjdElkOyAvL1RPRE8gUGVyc29uYWxBY2NvdW50IHByZWZlcmVuY2UKICAgIHpEYXRhLnByb3ZpZGVySWQgPSBYKGRvYywgIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOwogICAgLy92YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwogICAgLy92YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKICAgIC8vdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKICAgIC8vRVJTMTkwODAyICM2MTI3MiBtYXJzaGFsbCBmcm9tIFgoKSBzaW5jZSB0aGUgZGF0ZSBlbnRyeSBpbmZvIG5vdCBhbHJlYWR5IHNhdmVkIGludG8gd2RkYXRhCiAgICB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jPXBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKICAgIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYz1wYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwogICAgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYz1wYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7CiAgICB6RGF0YS5YX0Nhc2VfUmVjb3JkX1R5cGVfX2MgPWNhc2VSZWNvcmRUeXBlID0gWChkb2MsICJYX0Nhc2VfUmVjb3JkX1R5cGVfX2MiKTsvLyBQVjE5MDkyNSBhZGRlZAogICAgekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2MgPSBkb2NUeXBlID0gWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IC8vUFYxOTEwMDIgZG9jVHlwZQp9OwoKCnpEYXRhLmFkZFN0YWdlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHN0YWdlKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcwppZiAoIXN0YWdlKSB7CiAgICB2YXIgYmE9ZG9jLlgoIlhfYnV0dG9uQWN0aW9uIikrImVkIjsKICAgIGJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgc3RhZ2U9YmE7IGlmIChzdGFnZS5sZW5ndGgoKTw0KSB7c3RhZ2U9IlJlY2VpdmVkIjt9CiAgICB9IGVsc2UgewogICAgICAgIGJhPXN0YWdlOyAvL0VSUzE5MDgwMgogICAgfQogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfQoKLy9JbiBDbGllbnQgTGlicmFyeSB6RGF0YS5uZXdDYXNlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7fTsKCnpEYXRhLmluaXRpYWxpemVTdGFjaz1mdW5jdGlvbihkb2Msc3RhY2tGb2xkZXIsc3RhY2tJZCkgeyAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogIHZhciBmaW5hbFJvb3RGb2xkZXIgPSB6RGF0YS5wcm9ncmFtTmFtZSsiLUFyY2hpdmUiOyAvL2JhdGVzIG9mIHRoZSBBcmNoaXZlIGZvbGRlcgogIHZhciB5eXl5TU1Gb2xkZXJOYW1lID0gdG9kYXkuZ2V0RnVsbFllYXIoKSArIChjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCk7CiAgdmFyIHl5eXlNTUZvbGRlciA9IGZpbmFsUm9vdEZvbGRlciArICItIiArIHl5eXlNTUZvbGRlck5hbWU7CiAgYWxlcnQoIkBAQCBzdGFja0ZvbGRlciBpcyAtICIgKyBzdGFja0ZvbGRlcik7CiAgYWxlcnQoIkBAQCBmaW5hbFJvb3RGb2xkZXIgaXMgLSAiICsgZmluYWxSb290Rm9sZGVyKTsKICBhbGVydCgiQEBAIHl5TU1Gb2xkZXIgaXMgLSAiICsgeXl5eU1NRm9sZGVyKTsKICBhbGVydCgiQEBAIGNyZWF0aW5nIG5ldyBzdGFjayBkZXN0aW5haW9uIGZvbGRlciB3aXRoIG5hbWUgLSAiICsgc3RhY2tGb2xkZXIpOwogIC8qIFJlZnJlc2ggdGhlIGN1cnJlbnQgZm9sZGVyICovCiAgcmVsb2FkQnlJZChkb2MsIFgoZG9jLCJYX2N1ckZvbGRlciIpKTsKICAvKiBzYW1lIHZhbHVlIGZvciBCQVRFUyBhbmQgbGFiZWwgKi8KICAvKiBUaGUgZm9sZGVyIHN0cnVjdHVyZSB3aWxsIGxvb2sgbGlrZSB0aGlzOiAvMjAxNjA4LzNDWDNDWC8xMjM0NTY3ODktU1RBQ0sgKi8KICBjcmVhdGVGb2xkZXIoZG9jLCBmaW5hbFJvb3RGb2xkZXIsIHl5eXlNTUZvbGRlciwgeXl5eU1NRm9sZGVyTmFtZSk7CiAgY3JlYXRlRm9sZGVyKGRvYywgeXl5eU1NRm9sZGVyLCBzdGFja0ZvbGRlciwgc3RhY2tGb2xkZXIpOwogIGFsZXJ0KCJAQEBAIE1vdmluZyB0aGUgc3RhY2sgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwogIG1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwogIGFyck9mUGFpcnMucHVzaCgiWF9pbmRleEluaXRpYWxpemVkIiwgInRydWUiKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzdGFja0lkKTsKICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgZG9jLmtiRGF0YS5ncm91cElELnN1YnN0cmluZygxKSArICItIiArIHN0YWNrSWQgKyAiLVNUQUNLIik7CiAgLyogU3RhY2sgTGFiZWxsaW5nIENoYW5nZSAqLwogIHZhciBkdFN0YW1wID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSk7CiAgLyogYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIlN0YWNrIC0gIiArIGR0U3RhbXApOyAqLwogIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKCnpEYXRhLmNvdW50UGFnZXMgPSBmdW5jdGlvbihkb2MsIHBhZ2VSYW5nZTIpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBwYWdlcyA9IHBhZ2VSYW5nZTIuc3BsaXQoIiwiKTsKICAgIGlmICghcGFnZXMpIHBhZ2VzPVtwYWdlUmFuZ2UyXTsKICAgIGFsZXJ0KCJ6RGF0YS5jb3VudFBhZ2VzIHBhZ2VzID0gIiArIHBhZ2VzKTsKICAgIC8vcmV0dXJuIHBhZ2VzLmxlbmd0aDsKICAgIHJldHVybiAoIiIrcGFnZXMubGVuZ3RoKTsgLy9FUlMxOTA4MDIgIzYxMjcyIFRPRE8gaW4gV0FSCn07Cgp6RGF0YS5leHBvc2VQREY9ZnVuY3Rpb24oZG9jLHNmSWQscGFnZVJhbmdlKSB7IC8vRVJTMTcwNTIyIGFkZGVkIHBhZ2VSYW5nZQogICAgdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICB2YXIgbm93VGltZVN0YW1wID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgCiAgICB2YXIgZmlsZU5hbWUgPSBnZXRDdXJEYXRlKGRvYykgKyAiIE5ldyBGYXgucGRmIjsKICAgIGFsZXJ0KCJAQEBmaWxlTmFtZSA9ICIrZmlsZU5hbWUpOwogICAKICAgIGNyZWF0ZURpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgCiAgICAvL0FOMTcwNTIyIHNob3VsZCB4UGFnZXMgYmUgcGFzc2VkIGluIGFzIGEgdmFyaWFibGU/CiAgICB2YXIgeFBhZ2VzID0gWChkb2MsICJYX3Bvc2l0aW9uIik7CiAgICBpZiAocGFnZVJhbmdlKSB4UGFnZXM9cGFnZVJhbmdlOyAgLy9FUlMxNzA1MjIKICAgIGFsZXJ0KCJAQEBAQCBDYWxsaW5nIHNwbGl0UERGIHRvIHNwbGl0IG9mZiBwYWdlcyB0byB1cGxvYWQgYXMgUERGLCBwYWdlcyA9ICIgKyB4UGFnZXMgKyAiLCBub3dUaW1lU3RhbXAgPSAiICsgbm93VGltZVN0YW1wKTsKICAgIHZhciByZXNwb25zZSA9IHNwbGl0UERGKGRvYywgeFBhZ2VzLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCwgZmlsZU5hbWUpOwogICAgYWxlcnQoIkBAQEAgcmVzcG9uc2UgZnJvbSBzcGxpdFBERiA9ICIgKyByZXNwb25zZSk7CiAgICB2YXIgbmV3UERGTmFtZSA9IFgoZG9jLCAibmV3UERGIiwgcmVzcG9uc2UpOwogICAKICAgIGFsZXJ0KCJAQEBAIHNwbGl0IFBERiBGaWxlTmFtZSA9ICIgKyBuZXdQREZOYW1lKTsKICAgCiAgICB2YXIgdXBsb2FkVVJMPSJodHRwOi8vbG9jYWxob3N0OjgwODAvbXlmaWxlZm9yY2UvdXBsb2FkVG9DbG91ZC5qc3A/U0ZpZD1ORVcmU0ZwaWQ9IitzZklkKyImU0Zvcmc9Iitkb2Muc2ZPcmcrIiZsYWJlbD0iK2ZpbGVOYW1lKyImc2VydmVyRmlsZT0iK25ld1BERk5hbWUrIiZEZXNjcmlwdGlvbj1GaWxlIGF0dGFjaGVkIGFzIFBERiI7CiAgICBhbGVydCgiIyMjIyBVcGxvYWQgbmF0aXZlIFBERiB3aXRoICIrdXBsb2FkVVJMKTsKICAgIHZhciByPXdnZXQoZG9jLCB1cGxvYWRVUkwpOyAvL0VSUzE3MDUxMiB3YXMgekRhdGEudXBsb2FkVVJMCiAgICBhbGVydCgiIyMjIyBGYXggUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CiAgICAvLyBGaW5hbGx5LCBkZWxldGUgdGhlIGZvbGRlciBhbmQgYWxsIGNvbnRlbnRzLgogICAgY2xlYW51cERpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgIC8vIE5vdyBzZXQgdGhlIGxhYmVsIGluIG91ciBTbmlwcGV0CiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIk5ldyBmaWxlICIgKyBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwp9OwoKekRhdGEuZ2V0U3RhY2tJZD1mdW5jdGlvbihkb2MsaWRzLHN0YWNrVHlwZU5hbWUpIHsgLy9FUlMxOTA2MTcgZnJvbSBVTkxPQ0sgLy9UT0RPIEVSUzE5MDYyNCBmaW5kIHN0YWNrVHlwZU5hbWUgbmVlZGVkIGRvYwogICAgaWYgKCFpZHMgfHwgaWRzPT09IiIpIGlkcyA9IFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsgLy9FUlMxOTA2MTggVE9ETyBjb25maXJtIGRvYyBpbiBzY29wZQogICAgaWRzID0gaWRzICsgIiI7CmlmIChpZHMubGFzdEluZGV4T2YoJy8nKSA+PSAwKSB7IC8vRVJTMTkwNjE4IGdldCBmaXJzdCBJZCBpZiAvIGlzIHBhc3NlZCBpbgppZHMgPSBpZHMuc3Vic3RyaW5nKGlkcy5sYXN0SW5kZXhPZignLycpKzEpOwppZiAoaWRzLmluZGV4T2YoJywnKSA+PSAwKSB7IGlkcyA9IGlkcy5zdWJzdHJpbmcoMCwgaWRzLmluZGV4T2YoJywnKSk7IH0KcmV0dXJuIGlkczsKfQogICAKICAgIGlmICghc3RhY2tUeXBlTmFtZSkgc3RhY2tUeXBlTmFtZT0iWlBBUEVSX196U3RhY2tfX2MiOyAvL0VSUzE5MDYyNCBndWVzc2luZyBUT0RPIGZpbmQgZXhhbXBsZXMKICAgIHZhciBwYXJ0cyA9IGlkcy5zcGxpdCgnLCcpOwogICAgZm9yICh2YXIgaT0wOyBpPHBhcnRzLmxlbmd0aDsgaSsrKSB7IC8vZ2V0IGthc3QgSWQgaWYgLyBpcyBOT1QgcGFzc2VkIGluCiAgICAgICAgdmFyIGlkID0gcGFydHNbaV0udHJpbSgpOwogICAgICAgIGlmIChpZC5sZW5ndGggPiAwKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIHB1bGxpbmcgdHlwZSBmb3IgaWQ6ICIgKyBpZCk7CiAgICAgICAgICAgIGlmIChzdGFja1R5cGVOYW1lID09PSBnZXRTRlR5cGUoZG9jLCBpZCkpIHsKICAgICAgICAgICAgICAgIHJldHVybiBpZDsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KICAgIHJldHVybiBudWxsOwp9Owp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMoZG9jKTsgLy9jYWxsIGZ1bmN0aW9uIHRvIHNldCB2YXJpYWJsZXMKLyogRU5EICovCg=="},"ordinal":0}

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
