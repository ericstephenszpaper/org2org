<!--
// Name: zStack Library
// Committer: eric.stephens@zpaper.com
// Update: ERS190803 from OccFit #52661
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-08-03 23:00:13","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzIC8vRVJTMTkwODAzIGZyb20gT2NjRml0ICM1MjY2MQp6RGF0YS5wcm9ncmFtTmFtZSA9ICIiOwp6RGF0YS5BZmZpbGlhdGUgPSAiIjsKekRhdGEuenA9IlpQQVBFUl9fIjsgLy9FUlMxOTA2MTcgIzUyNjYxCnpEYXRhLnpwcz16RGF0YS56cCsielN0YWNrX19jIjsKekRhdGEuc2ZJRCA9IGdldEJhcmNvZGVPbmUoZG9jKTsKaWYgKCF6RGF0YS5zZklEIHx8IDAgPT09IHpEYXRhLnNmSUQubGVuZ3RoKSB7CiAgICB6RGF0YS5zZklEID0gZ2V0QWx0ZXJuYXRlQmFyY29kZU9uZShkb2MpICsgIiI7Cn0KekRhdGEuZm9ybWF0Tm93PXpEYXRhLm5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOyAvL0VSUzE5MDYyNCB3YXMganVzdCAubm93CnpEYXRhLmF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJSZWNvcmRzX19jIikudHJpbSgpOwppZiAoIXpEYXRhLmF0dGFjaFJlY29yZHMpIHsgekRhdGEuYXR0YWNoUmVjb3Jkcz0iQ2FzZSxMZWFkIjt9IC8vQ2FzZSxDb250YWN0LEFjY291bnQsUGF0aWVudCxMZWFkCgppZiAoMT09PTApIHsgLy9FUlMxNzA4MDUgZ2V0IHRoZSBkYXRhIGZyb20gdGhlIERlcGxveW1lbnRJbmZvIC8vRVJTMTcwOTA5IFRPRE8gZG8gdGhpcyBzYWZlbHkgd2l0aCBYRGVwbG95bWVudEluZm8sWEN1c3RvbVNldHRpbmcKICAgIC8vYWxlcnQoIkVSUzE3MDcyNSBEST0iK2RvYy5rYkRhdGEuZGVwbG95bWVudEluZm8pOwogICAgdmFyIGNzPShkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKyIiKTsgLy9ub3QgWyJCdXNpbmVzc19Qcm9jZXNzX19jIl07CiAgICAvL2FsZXJ0KCJFUlMxNzA4MDUgY3M9Iitjcyk7CiAgICBpZiAoY3MpIHsKICAgICAgICBpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsKICAgICAgICBpZiAoY3MgIT09ICIiKSBldmFsKGNzKTsKICAgICAgICBhbGVydCgiRVJTMTcwODIyIGltcG9ydCBmb3IgIitjcyk7CiAgICB9Cn0KCi8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmU9ZnVuY3Rpb24oZG9jKSB7CiAgIHZhciBkb2MwPVtdOwogICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXT1kb2NbaV07CiAgIHJldHVybiBkb2MwOwp9OwoKLy8gVGhpcyBmdW5jdGlvbiBuZWVkcyB0byBiZSBhZGRlZCB0byBldmVyeSBydWxlIHRvIGhlbHAgYXNzdXJlIHRoYXQgcnVsZXMgZG8gbm90IGdldCBhY2NpZGVudGFsbHkgdHJpZ2dlcmVkCi8vIEFkZCB0aGlzIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIHJ1bGVzIGVuZ2luZSBpdHNlbGY/CnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbiA9IGZ1bmN0aW9uKGRvYyx0cmlnZ2VyRmllbGQpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2godHJpZ2dlckZpZWxkLCAiIik7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07CgovL0FOMTkwNTMwIHRlY2ggZGVidD8gdW5zdXJlIGhvdyB0aGlzIGZ1bmN0aW9uIGlzIG5lZWRlZAp6RGF0YS5uYW1lRmlsZSA9IGZ1bmN0aW9uKGRvYykgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKStYKGRvYywiWF9aUEFQRVJfX0xhc3ROYW1lX19jIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7CiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Cgp6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZID0gZnVuY3Rpb24oZG9jKSB7IC8vTVNIMTcwODMxIGV4dHJhY3QgZGF0ZSBmb3JtYXQgZnJvbSB6RGF0YS5uYW1lRmlsZQogICAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICAgIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogICAgLy9NU0gxNzA5MDYgcGFkIGRheSB3aXRoIHplcm8KICAgIHZhciBjdXJEYXkgPSB0b2RheS5nZXREYXRlKCk7CiAgICAvL01TSDE3MDkwNiB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrIiIrdG9kYXkuZ2V0RGF0ZSgpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKygiIisoY3VyRGF5ID4gOSA/IGN1ckRheSsiIiA6ICIwIitjdXJEYXkpKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIC8vYWxlcnQoIk1NZGRZWVlZID09ICIgKyBNTWRkWVlZWSk7CiAgICByZXR1cm4gTU1kZFlZWVk7Cn07Cgp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMgPSBmdW5jdGlvbihkb2MpIHsgcmV0dXJuIHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyB9OyAvL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKekRhdGEuc2V0YnJhbmRwcm9ncmFtID0gZnVuY3Rpb24oZG9jKSB7IHJldHVybiB6RGF0YS5zZXRCcmFuZFByb2dyYW0oZG9jKTsgfTsgLy9NU0gxNzEwMDUgZ2V0IGFsbCB0aGUgb3JncyBpbiBoZXJlCiAgICAKekRhdGEuc2V0QnJhbmRQcm9ncmFtID0gZnVuY3Rpb24oZG9jKSB7IC8vVE9ETyBkbyBodWIgd2l0aCBzZXR0aW5ncwogICAgYWxlcnQoIisrKyBTVEFSVElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIGRvYy5kZWxpdmVyZWRUbyA9ICIgKyBkb2MuZGVsaXZlcmVkVG8pOwogICAgdmFyIHpwPXpEYXRhLnpwOwogICAgekRhdGEuY2xhc3NpZmljYXRpb249ZG9jLmRlbGl2ZXJlZFRvOwogICAgekRhdGEuY2hhbm5lbD1kb2MuZGVsaXZlcmVkVG87CiAgICB6RGF0YS5wcm9ncmFtTmFtZT1kb2MuZGVsaXZlcmVkVG87CiAgICAvL3pEYXRhLkFmZmlsaWF0ZT1kb2MuZGVsaXZlcmVkVG87CiAgICB2YXIgZGVsaXZlcmVkVG8gPSBkb2MuZGVsaXZlcmVkVG8gKyAiIjsJLy9KUEIxOTA1MjkgQ2hlY2sgZGVsaXZlcmVkVG8gZm9yIGNvbW11bml0eSB1cGxvYWRlcwogICAgaWYgKGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIkAiKT4tMSB8fCBkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCIuIik+LTEpIHt6RGF0YS5jaGFubmVsPSJFbWFpbCI7fSAvL0VSUzE4MDUwNSAjNDgxMDEKICAgIGlmIChpc05hTihkZWxpdmVyZWRUbykpIHsKICAgIAlpZiAoZGVsaXZlcmVkVG8udG9Mb3dlckNhc2UoKS5pbmRleE9mKCJjb21tdW5pdHkiKSA+PSAwKSB7CiAgICAJCXpEYXRhLmNoYW5uZWwgPSAiQ29tbXVuaXR5IjsKICAgIAl9IGVsc2UgewoJCSAgICB6RGF0YS5jaGFubmVsPSJTY2FuIjsKCSAgICB9CiAgICB9CiAgICB2YXIgbWF4Q2hhbm5lbHM9MjsgaWYgKHpEYXRhLm1heENoYW5uZWxzKSBtYXhDaGFubmVscz16RGF0YS5tYXhDaGFubmVsczsgLy9FUlMxOTA3MzEgIzYxMjcyCiAgICBmb3IgKHZhciBpPTE7IGk8PW1heENoYW5uZWxzOyBpKyspIHsKICAgICAgICB2YXIgY2hhbm5lbD1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNoYW5uZWwiK2krIl9fYyIpOwogICAgICAgIHZhciBwcm9ncmFtPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiUHJvZ3JhbSIraSsiX19jIik7CiAgICAgICAgLy92YXIgYWZmaWxpYXRlPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQWZmaWxpYXRlIitpKyJfX2MiKTsKICAgICAgICB2YXIgY2xhc3NpZmljYXRpb249WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJDbGFzc2lmaWNhdGlvbiIraSsiX19jIik7CiAgICAgICAgdmFyIGF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLCJSZWNvcmRzIitpKyJfX2MiKTsgLy9ubyB6cCBpcyBkZWxpYmVyYXRlCiAgICAgICAgaWYgKCFhdHRhY2hSZWNvcmRzKSBhdHRhY2hSZWNvcmRzPXpEYXRhLmF0dGFjaFJlY29yZHM7CiAgICAgICAgaWYgKCFjaGFubmVsKSBicmVhazsKICAgICAgICBpZiAoaT49MykgenA9IiI7IC8vMiBpbiBtYW5hZ2VkIHBhY2thZ2UKICAgICAgICB2YXIgYz1jaGFubmVsOyBpZiAoYy5pbmRleE9mKCIxIik9PT0wKSBjPWMuc3Vic3RyaW5nKDEpOwogICAgICAgIHpEYXRhLmNoYW5uZWxzPWk7IAogICAgICAgIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZihjKT4tMSkgewogICAgICAgICAgICB6RGF0YS5jaGFubmVsPWNoYW5uZWw7IHpEYXRhLnByb2dyYW1OYW1lPXByb2dyYW07IAogICAgICAgICAgICBpZighaXNOYU4oYykpIHpEYXRhLmNoYW5uZWxbcHJvZ3JhbV09Y2hhbm5lbDsgLy9yZXZlcnNlIGxvb2t1cCBmb3IgZmF4CiAgICAgICAgICAgIC8vekRhdGEuQWZmaWxpYXRlPWFmZmlsaWF0ZTsgCiAgICAgICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uPWNsYXNzaWZpY2F0aW9uOwogICAgICAgICAgICB6RGF0YS5hdHRhY2hSZWNvcmRzPWF0dGFjaFJlY29yZHM7IC8vRVJTMTkwNjIwCiAgICAgICAgICAgIGJyZWFrOyAKICAgICAgICB9CiAgICB9CiAgICBhbGVydCgiKysrIEVORElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIG9yaWdpbiA9ICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbisiLyIrekRhdGEucHJvZ3JhbU5hbWUrIi8iK3pEYXRhLmNoYW5uZWwpOwogICAgLy9hbGVydCgiQEBAIHpEYXRhLkFmZmlsaWF0ZSA9ICIgKyB6RGF0YS5BZmZpbGlhdGUpOwp9OwoKLyogdGhpcyBpcyBhbiB1bnRlc3RlZCBmdW5jdGlvbiB0byBkZXRlY3QgdGhlIHNhbmRib3ggbmFtZSBhbmQgYXNzaWduIHZhbHVlcyAqLyAvL0VSUzE3MDUyMiBhY3RpdmF0aW5nCnpEYXRhLm9yZ1N3aXRjaD1mdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA1MTIKICAgIGFsZXJ0KCJzZlVzZXIgaXMgIitkb2Muc2ZVc2VyTmFtZSk7CiAgICB6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJwYXRpZW50UXVldWVJZF9fYyIpOyAvLycwMEc0QzAwMDAwMExrbVonOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKICAgIHpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCn07CnpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL0VSUzE3MDgyMgoKekRhdGEuZ2V0RGF0YUVudHJ5RmllbGRzPWZ1bmN0aW9uKGRvYyx6ZCkgeyAvL0VSUzE5MDYxOSBjb3B5IHdkZGF0YSBpbmZvIGludG8gekRhdGEKICAgIGlmICghemQpIHpkPXpEYXRhOyAvL3VzZSB6RGF0YSBvciB6ZAogICAgdmFyIGZpZWxkcz1kb2Mud2RkYXRhLnNwbGl0KCI8WF8iKTsgCiAgICAvLzxYX1pQQVBFUl9fUHJvdmlkZXJfX3IuTmFtZT5Vbml0ZWQgT2lsICYgR2FzLCBTaW5nYXBvcmU8L1hfWlBBUEVSX19Qcm92aWRlcl9fci5OYW1lPgogICAgLy88WF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZT5Kb3NoIERhdmlzPC9YX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lPgogICAgLy88WF9aUEFQRVJfX0Nhc2VfX2M+NTAwNDQwMDAwMGxFaTMzQUFDPC9YX1pQQVBFUl9fQ2FzZV9fYz4KICAgIGZvciAodmFyIGkgaW4gZmllbGRzKSB7CiAgICAgICAgdmFyIG52PWZpZWxkc1tpXTsgLy8iWlBBUEVSX19DYXNlX19jPjUwMDQ0MDAwMDBsRWkzM0FBQzwvWF9aUEFQRVJfX0Nhc2VfX2M+IgogICAgICAgIHZhciBqPW52LmluZGV4T2YoIj4iKTsKICAgICAgICB2YXIgaz1udi5pbmRleE9mKCI8IixqKzEpOwogICAgICAgIGlmIChqPi0xICYmIGs+LTEpIHsKICAgICAgICAgICAgdmFyIG49IlhfIitudi5zdWJzdHJpbmcoMCxqKTsKICAgICAgICAgICAgdmFyIHY9bnYuc3Vic3RyaW5nKGorMSxrKTsKICAgICAgICAgICAgekRhdGFbbl09djsKICAgICAgICB9CiAgICB9CiAgICB6RGF0YS5jYXNlSWQgPSBYKGRvYywgIlhfWlBBUEVSX19DYXNlX19jIik7IC8vRVJTMTkwNjI0IFRPRE8gbW9yZSBvZiB0aGUgc2FtZQogICAgekRhdGEuY29udGFjdElkID0gWChkb2MsICJYX1pQQVBFUl9fUGF0aWVudF9fYyIpOwogICAgekRhdGEucGF0aWVudElkPXpEYXRhLmNvbnRhY3RJZDsgLy9UT0RPIFBlcnNvbmFsQWNjb3VudCBwcmVmZXJlbmNlCiAgICB6RGF0YS5wcm92aWRlcklkID0gWChkb2MsICJYX1pQQVBFUl9fUHJvdmlkZXJfX2MiKTsKICAgIC8vdmFyIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKICAgIC8vdmFyIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0xhc3ROYW1lX19jIik7CiAgICAvL3ZhciBwYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7CiAgICAvL0VSUzE5MDgwMiAjNjEyNzIgbWFyc2hhbGwgZnJvbSBYKCkgc2luY2UgdGhlIGRhdGUgZW50cnkgaW5mbyBub3QgYWxyZWFkeSBzYXZlZCBpbnRvIHdkZGF0YQogICAgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYz1wYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CiAgICB6RGF0YS5YX1pQQVBFUl9fTGFzdE5hbWVfX2M9cGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKICAgIHpEYXRhLlhfWlBBUEVSX19CaXJ0aGRhdGVfX2M9cGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwp9OwoKCnpEYXRhLmFkZFN0YWdlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHN0YWdlKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcwoJaWYgKCFzdGFnZSkgewogICAgCXZhciBiYT1kb2MuWCgiWF9idXR0b25BY3Rpb24iKSsiZWQiOwogICAgCWJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgCXN0YWdlPWJhOyBpZiAoc3RhZ2UubGVuZ3RoKCk8NCkge3N0YWdlPSJSZWNlaXZlZCI7fQogICAgfSBlbHNlIHsKICAgICAgICBiYT1zdGFnZTsgLy9FUlMxOTA4MDIKICAgIH0KICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5MgogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn0KCi8vSW4gQ2xpZW50IExpYnJhcnkgekRhdGEubmV3Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkge307Cgp6RGF0YS5pbml0aWFsaXplU3RhY2s9ZnVuY3Rpb24oZG9jLHN0YWNrRm9sZGVyLHN0YWNrSWQpIHsgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogIHZhciBhcnJPZlBhaXJzID0gW107CiAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICB2YXIgZmluYWxSb290Rm9sZGVyID0gekRhdGEucHJvZ3JhbU5hbWUrIi1BcmNoaXZlIjsgLy9iYXRlcyBvZiB0aGUgQXJjaGl2ZSBmb2xkZXIKICB2YXIgeXl5eU1NRm9sZGVyTmFtZSA9IHRvZGF5LmdldEZ1bGxZZWFyKCkgKyAoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpOwogIHZhciB5eXl5TU1Gb2xkZXIgPSBmaW5hbFJvb3RGb2xkZXIgKyAiLSIgKyB5eXl5TU1Gb2xkZXJOYW1lOwogIGFsZXJ0KCJAQEAgc3RhY2tGb2xkZXIgaXMgLSAiICsgc3RhY2tGb2xkZXIpOwogIGFsZXJ0KCJAQEAgZmluYWxSb290Rm9sZGVyIGlzIC0gIiArIGZpbmFsUm9vdEZvbGRlcik7CiAgYWxlcnQoIkBAQCB5eU1NRm9sZGVyIGlzIC0gIiArIHl5eXlNTUZvbGRlcik7CiAgYWxlcnQoIkBAQCBjcmVhdGluZyBuZXcgc3RhY2sgZGVzdGluYWlvbiBmb2xkZXIgd2l0aCBuYW1lIC0gIiArIHN0YWNrRm9sZGVyKTsKICAvKiBSZWZyZXNoIHRoZSBjdXJyZW50IGZvbGRlciAqLwogIHJlbG9hZEJ5SWQoZG9jLCBYKGRvYywiWF9jdXJGb2xkZXIiKSk7CiAgLyogc2FtZSB2YWx1ZSBmb3IgQkFURVMgYW5kIGxhYmVsICovCiAgLyogVGhlIGZvbGRlciBzdHJ1Y3R1cmUgd2lsbCBsb29rIGxpa2UgdGhpczogLzIwMTYwOC8zQ1gzQ1gvMTIzNDU2Nzg5LVNUQUNLICovCiAgY3JlYXRlRm9sZGVyKGRvYywgZmluYWxSb290Rm9sZGVyLCB5eXl5TU1Gb2xkZXIsIHl5eXlNTUZvbGRlck5hbWUpOwogIGNyZWF0ZUZvbGRlcihkb2MsIHl5eXlNTUZvbGRlciwgc3RhY2tGb2xkZXIsIHN0YWNrRm9sZGVyKTsKICBhbGVydCgiQEBAQCBNb3ZpbmcgdGhlIHN0YWNrIGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKICBtb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhJbml0aWFsaXplZCIsICJ0cnVlIik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc3RhY2tJZCk7CiAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiLSIgKyBzdGFja0lkICsgIi1TVEFDSyIpOwogIC8qIFN0YWNrIExhYmVsbGluZyBDaGFuZ2UgKi8KICB2YXIgZHRTdGFtcCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UpOwogIC8qIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCJTdGFjayAtICIgKyBkdFN0YW1wKTsgKi8KICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07Cgp6RGF0YS5jb3VudFBhZ2VzID0gZnVuY3Rpb24oZG9jLCBwYWdlUmFuZ2UyKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICB2YXIgcGFnZXMgPSBwYWdlUmFuZ2UyLnNwbGl0KCIsIik7CiAgICBpZiAoIXBhZ2VzKSBwYWdlcz1bcGFnZVJhbmdlMl07CiAgICBhbGVydCgiekRhdGEuY291bnRQYWdlcyBwYWdlcyA9ICIgKyBwYWdlcyk7CiAgICAvL3JldHVybiBwYWdlcy5sZW5ndGg7CiAgICByZXR1cm4gKCIiK3BhZ2VzLmxlbmd0aCk7IC8vRVJTMTkwODAyICM2MTI3MiBUT0RPIGluIFdBUgp9OwoKekRhdGEuZXhwb3NlUERGPWZ1bmN0aW9uKGRvYyxzZklkLHBhZ2VSYW5nZSkgeyAvL0VSUzE3MDUyMiBhZGRlZCBwYWdlUmFuZ2UKICAgIHZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgICAKICAgIHZhciBmaWxlTmFtZSA9IGdldEN1ckRhdGUoZG9jKSArICIgTmV3IEZheC5wZGYiOwogICAgYWxlcnQoIkBAQGZpbGVOYW1lID0gIitmaWxlTmFtZSk7CiAgICAKICAgIGNyZWF0ZURpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgIAogICAgLy9BTjE3MDUyMiBzaG91bGQgeFBhZ2VzIGJlIHBhc3NlZCBpbiBhcyBhIHZhcmlhYmxlPwogICAgdmFyIHhQYWdlcyA9IFgoZG9jLCAiWF9wb3NpdGlvbiIpOwogICAgaWYgKHBhZ2VSYW5nZSkgeFBhZ2VzPXBhZ2VSYW5nZTsgIC8vRVJTMTcwNTIyCiAgICBhbGVydCgiQEBAQEAgQ2FsbGluZyBzcGxpdFBERiB0byBzcGxpdCBvZmYgcGFnZXMgdG8gdXBsb2FkIGFzIFBERiwgcGFnZXMgPSAiICsgeFBhZ2VzICsgIiwgbm93VGltZVN0YW1wID0gIiArIG5vd1RpbWVTdGFtcCk7CiAgICB2YXIgcmVzcG9uc2UgPSBzcGxpdFBERihkb2MsIHhQYWdlcywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXAsIGZpbGVOYW1lKTsKICAgIGFsZXJ0KCJAQEBAIHJlc3BvbnNlIGZyb20gc3BsaXRQREYgPSAiICsgcmVzcG9uc2UpOwogICAgdmFyIG5ld1BERk5hbWUgPSBYKGRvYywgIm5ld1BERiIsIHJlc3BvbnNlKTsKICAgIAogICAgYWxlcnQoIkBAQEAgc3BsaXQgUERGIEZpbGVOYW1lID0gIiArIG5ld1BERk5hbWUpOwogICAgCiAgICB2YXIgdXBsb2FkVVJMPSJodHRwOi8vbG9jYWxob3N0OjgwODAvbXlmaWxlZm9yY2UvdXBsb2FkVG9DbG91ZC5qc3A/U0ZpZD1ORVcmU0ZwaWQ9IitzZklkKyImU0Zvcmc9Iitkb2Muc2ZPcmcrIiZsYWJlbD0iK2ZpbGVOYW1lKyImc2VydmVyRmlsZT0iK25ld1BERk5hbWUrIiZEZXNjcmlwdGlvbj1GaWxlIGF0dGFjaGVkIGFzIFBERiI7CiAgICBhbGVydCgiIyMjIyBVcGxvYWQgbmF0aXZlIFBERiB3aXRoICIrdXBsb2FkVVJMKTsKICAgIHZhciByPXdnZXQoZG9jLCB1cGxvYWRVUkwpOyAvL0VSUzE3MDUxMiB3YXMgekRhdGEudXBsb2FkVVJMCiAgICBhbGVydCgiIyMjIyBGYXggUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CiAgICAvLyBGaW5hbGx5LCBkZWxldGUgdGhlIGZvbGRlciBhbmQgYWxsIGNvbnRlbnRzLgogICAgY2xlYW51cERpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgIC8vIE5vdyBzZXQgdGhlIGxhYmVsIGluIG91ciBTbmlwcGV0CiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIk5ldyBmaWxlICIgKyBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwp9OwoKekRhdGEuZ2V0U3RhY2tJZD1mdW5jdGlvbihkb2MsaWRzLHN0YWNrVHlwZU5hbWUpIHsgLy9FUlMxOTA2MTcgZnJvbSBVTkxPQ0sgLy9UT0RPIEVSUzE5MDYyNCBmaW5kIHN0YWNrVHlwZU5hbWUgbmVlZGVkIGRvYwogICAgaWYgKCFpZHMgfHwgaWRzPT09IiIpIGlkcyA9IFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsgLy9FUlMxOTA2MTggVE9ETyBjb25maXJtIGRvYyBpbiBzY29wZQogICAgaWRzID0gaWRzICsgIiI7CglpZiAoaWRzLmxhc3RJbmRleE9mKCcvJykgPj0gMCkgeyAvL0VSUzE5MDYxOCBnZXQgZmlyc3QgSWQgaWYgLyBpcyBwYXNzZWQgaW4KCQlpZHMgPSBpZHMuc3Vic3RyaW5nKGlkcy5sYXN0SW5kZXhPZignLycpKzEpOwoJCWlmIChpZHMuaW5kZXhPZignLCcpID49IDApIHsgaWRzID0gaWRzLnN1YnN0cmluZygwLCBpZHMuaW5kZXhPZignLCcpKTsgfQoJCXJldHVybiBpZHM7Cgl9CiAgICAKICAgIGlmICghc3RhY2tUeXBlTmFtZSkgc3RhY2tUeXBlTmFtZT0iWlBBUEVSX196U3RhY2tfX2MiOyAvL0VSUzE5MDYyNCBndWVzc2luZyBUT0RPIGZpbmQgZXhhbXBsZXMKICAgIHZhciBwYXJ0cyA9IGlkcy5zcGxpdCgnLCcpOwogICAgZm9yICh2YXIgaT0wOyBpPHBhcnRzLmxlbmd0aDsgaSsrKSB7IC8vZ2V0IGthc3QgSWQgaWYgLyBpcyBOT1QgcGFzc2VkIGluCiAgICAgICAgdmFyIGlkID0gcGFydHNbaV0udHJpbSgpOwogICAgICAgIGlmIChpZC5sZW5ndGggPiAwKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIHB1bGxpbmcgdHlwZSBmb3IgaWQ6ICIgKyBpZCk7CiAgICAgICAgICAgIGlmIChzdGFja1R5cGVOYW1lID09PSBnZXRTRlR5cGUoZG9jLCBpZCkpIHsKICAgICAgICAgICAgICAgIHJldHVybiBpZDsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KICAgIHJldHVybiBudWxsOwp9Owp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMoZG9jKTsgLy9jYWxsIGZ1bmN0aW9uIHRvIHNldCB2YXJpYWJsZXMKLyogRU5EICov"},"ordinal":0}

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
    var zp=zData.zp;
    zData.classification=doc.deliveredTo;
    zData.channel=doc.deliveredTo;
    zData.programName=doc.deliveredTo;
    //zData.Affiliate=doc.deliveredTo;
    var deliveredTo = doc.deliveredTo + "";	//JPB190529 Check deliveredTo for community uploades
    if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {zData.channel="Email";} //ERS180505 #48101
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
    zData.patientId=zData.contactId; //TODO PersonalAccount preference
    zData.providerId = X(doc, "X_ZPAPER__Provider__c");
    //var patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
    //var patientLastName = X(doc, "X_ZPAPER__LastName__c");
    //var patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
    //ERS190802 #61272 marshall from X() since the date entry info not already saved into wddata
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
