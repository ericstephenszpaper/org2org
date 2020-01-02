<!--
// Name: zStack Library
// Committer: Prathyusha.Vasireddy@zpaper.com
// Update: PV191213 added alert
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-12-13 18:23:07","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzIC8vRVJTMTkwODAzIGZyb20gT2NjRml0ICM1MjY2MQp6RGF0YS5wcm9ncmFtTmFtZSA9ICIiOwp6RGF0YS5BZmZpbGlhdGUgPSAiIjsKekRhdGEuenA9IlpQQVBFUl9fIjsgLy9FUlMxOTA2MTcgIzUyNjYxCnpEYXRhLnpwcz16RGF0YS56cCsielN0YWNrX19jIjsKekRhdGEuc2ZJRCA9IGdldEJhcmNvZGVPbmUoZG9jKTsKaWYgKCF6RGF0YS5zZklEIHx8IDAgPT09IHpEYXRhLnNmSUQubGVuZ3RoKSB7CiAgICB6RGF0YS5zZklEID0gZ2V0QWx0ZXJuYXRlQmFyY29kZU9uZShkb2MpICsgIiI7Cn0KekRhdGEuZm9ybWF0Tm93PXpEYXRhLm5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOyAvL0VSUzE5MDYyNCB3YXMganVzdCAubm93CnpEYXRhLmF0dGFjaFJlY29yZHM9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJSZWNvcmRzX19jIikudHJpbSgpOwppZiAoIXpEYXRhLmF0dGFjaFJlY29yZHMpIHsgekRhdGEuYXR0YWNoUmVjb3Jkcz0iQ2FzZSxMZWFkIjt9IC8vQ2FzZSxDb250YWN0LEFjY291bnQsUGF0aWVudCxMZWFkCgppZiAoMT09PTApIHsgLy9FUlMxNzA4MDUgZ2V0IHRoZSBkYXRhIGZyb20gdGhlIERlcGxveW1lbnRJbmZvIC8vRVJTMTcwOTA5IFRPRE8gZG8gdGhpcyBzYWZlbHkgd2l0aCBYRGVwbG95bWVudEluZm8sWEN1c3RvbVNldHRpbmcKICAgIC8vYWxlcnQoIkVSUzE3MDcyNSBEST0iK2RvYy5rYkRhdGEuZGVwbG95bWVudEluZm8pOwogICAgdmFyIGNzPShkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKyIiKTsgLy9ub3QgWyJCdXNpbmVzc19Qcm9jZXNzX19jIl07CiAgICAvL2FsZXJ0KCJFUlMxNzA4MDUgY3M9Iitjcyk7CiAgICBpZiAoY3MpIHsKICAgICAgICBpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsKICAgICAgICBpZiAoY3MgIT09ICIiKSBldmFsKGNzKTsKICAgICAgICBhbGVydCgiRVJTMTcwODIyIGltcG9ydCBmb3IgIitjcyk7CiAgICB9Cn0KCi8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmU9ZnVuY3Rpb24oZG9jKSB7CiAgIHZhciBkb2MwPVtdOwogICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXT1kb2NbaV07CiAgIHJldHVybiBkb2MwOwp9OwoKLy8gVGhpcyBmdW5jdGlvbiBuZWVkcyB0byBiZSBhZGRlZCB0byBldmVyeSBydWxlIHRvIGhlbHAgYXNzdXJlIHRoYXQgcnVsZXMgZG8gbm90IGdldCBhY2NpZGVudGFsbHkgdHJpZ2dlcmVkCi8vIEFkZCB0aGlzIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIHJ1bGVzIGVuZ2luZSBpdHNlbGY/CnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbiA9IGZ1bmN0aW9uKGRvYyx0cmlnZ2VyRmllbGQpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2godHJpZ2dlckZpZWxkLCAiIik7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07CgovL0FOMTkwNTMwIHRlY2ggZGVidD8gdW5zdXJlIGhvdyB0aGlzIGZ1bmN0aW9uIGlzIG5lZWRlZAp6RGF0YS5uYW1lRmlsZSA9IGZ1bmN0aW9uKGRvYykgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKStYKGRvYywiWF9aUEFQRVJfX0xhc3ROYW1lX19jIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7CiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Cgp6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZID0gZnVuY3Rpb24oZG9jKSB7IC8vTVNIMTcwODMxIGV4dHJhY3QgZGF0ZSBmb3JtYXQgZnJvbSB6RGF0YS5uYW1lRmlsZQogICAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICAgIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogICAgLy9NU0gxNzA5MDYgcGFkIGRheSB3aXRoIHplcm8KICAgIHZhciBjdXJEYXkgPSB0b2RheS5nZXREYXRlKCk7CiAgICAvL01TSDE3MDkwNiB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrIiIrdG9kYXkuZ2V0RGF0ZSgpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKygiIisoY3VyRGF5ID4gOSA/IGN1ckRheSsiIiA6ICIwIitjdXJEYXkpKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIC8vYWxlcnQoIk1NZGRZWVlZID09ICIgKyBNTWRkWVlZWSk7CiAgICByZXR1cm4gTU1kZFlZWVk7Cn07Cgp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMgPSBmdW5jdGlvbihkb2MpIHsgcmV0dXJuIHpEYXRhLnNldGJyYW5kcHJvZ3JhbShkb2MpOyB9OyAvL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKekRhdGEuc2V0YnJhbmRwcm9ncmFtID0gZnVuY3Rpb24oZG9jKSB7IHJldHVybiB6RGF0YS5zZXRCcmFuZFByb2dyYW0oZG9jKTsgfTsgLy9NU0gxNzEwMDUgZ2V0IGFsbCB0aGUgb3JncyBpbiBoZXJlCiAgIAp6RGF0YS5zZXRCcmFuZFByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsgLy9UT0RPIGRvIGh1YiB3aXRoIHNldHRpbmdzCiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICBhbGVydCgiQEBAIGRvYy5kZWxpdmVyZWRGcm9tID0gIiArIGRvYy5kZWxpdmVyZWRGcm9tKTsKICAgIHZhciB6cD16RGF0YS56cDsKICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uPWRvYy5kZWxpdmVyZWRUbzsKICAgIHpEYXRhLmNoYW5uZWw9ZG9jLmRlbGl2ZXJlZFRvOwogICAgekRhdGEucHJvZ3JhbU5hbWU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgLy96RGF0YS5BZmZpbGlhdGU9ZG9jLmRlbGl2ZXJlZFRvOwogICAgdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvICsgIiI7IC8vSlBCMTkwNTI5IENoZWNrIGRlbGl2ZXJlZFRvIGZvciBjb21tdW5pdHkgdXBsb2FkZXMKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCiAgICBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gIC8vUFYxOTA5MjQgYWRkZWQgZm9yIGNoYW5uZWwKICAgIGlmIChpc05hTihkZWxpdmVyZWRUbykpIHsKICAgIGlmIChkZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImNvbW11bml0eSIpID49IDApIHsKICAgIHpEYXRhLmNoYW5uZWwgPSAiQ29tbXVuaXR5IjsKICAgIH0gZWxzZSBpZihkZWxpdmVyZWRUby50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpID49IDApIHsKICAgICAgICB6RGF0YS5jaGFubmVsID0gIlVwbG9hZCI7CiAgICAgIH0gZWxzZSB7CiAgICAgICAgekRhdGEuY2hhbm5lbD0iU2NhbiI7CiAgIH0KICAgIH0KICAgIHZhciBtYXhDaGFubmVscz0yOyBpZiAoekRhdGEubWF4Q2hhbm5lbHMpIG1heENoYW5uZWxzPXpEYXRhLm1heENoYW5uZWxzOyAvL0VSUzE5MDczMSAjNjEyNzIKICAgIGZvciAodmFyIGk9MTsgaTw9bWF4Q2hhbm5lbHM7IGkrKykgewogICAgICAgIHZhciBjaGFubmVsPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQ2hhbm5lbCIraSsiX19jIik7CiAgICAgICAgdmFyIHByb2dyYW09WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJQcm9ncmFtIitpKyJfX2MiKTsKICAgICAgICAvL3ZhciBhZmZpbGlhdGU9WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJBZmZpbGlhdGUiK2krIl9fYyIpOwogICAgICAgIHZhciBjbGFzc2lmaWNhdGlvbj1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkNsYXNzaWZpY2F0aW9uIitpKyJfX2MiKTsKICAgICAgICB2YXIgYXR0YWNoUmVjb3Jkcz1YQ3VzdG9tU2V0dGluZyhkb2MsIlJlY29yZHMiK2krIl9fYyIpOyAvL25vIHpwIGlzIGRlbGliZXJhdGUKICAgICAgICBpZiAoIWF0dGFjaFJlY29yZHMpIGF0dGFjaFJlY29yZHM9ekRhdGEuYXR0YWNoUmVjb3JkczsKICAgICAgICBpZiAoIWNoYW5uZWwpIGJyZWFrOwogICAgICAgIGlmIChpPj0zKSB6cD0iIjsgLy8yIGluIG1hbmFnZWQgcGFja2FnZQogICAgICAgIHZhciBjPWNoYW5uZWw7IGlmIChjLmluZGV4T2YoIjEiKT09PTApIGM9Yy5zdWJzdHJpbmcoMSk7CiAgICAgICAgekRhdGEuY2hhbm5lbHM9aTsKICAgICAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoYyk+LTEpIHsKICAgICAgICAgICAgLy96RGF0YS5jaGFubmVsPWNoYW5uZWw7IC8vUFYxOTA5MjQgY29tbWVudGVkIGJlY2F1c2UgaXQncyBvdmVycmlkaW5nIHRoZSBjaGFubmVsIHdpdGggY3VzdG9tIHNldHRpbmdzCiAgICAgICAgICAgIHpEYXRhLnByb2dyYW1OYW1lPXByb2dyYW07CiAgICAgICAgICAgIC8vaWYoIWlzTmFOKGMpKSB6RGF0YS5jaGFubmVsW3Byb2dyYW1dPWNoYW5uZWw7IC8vcmV2ZXJzZSBsb29rdXAgZm9yIGZheCBQVjE5MDkyNCBDb21tZW50ZWQKICAgICAgICAgICAgLy96RGF0YS5BZmZpbGlhdGU9YWZmaWxpYXRlOwogICAgICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbj1jbGFzc2lmaWNhdGlvbjsKICAgICAgICAgICAgekRhdGEuYXR0YWNoUmVjb3Jkcz1hdHRhY2hSZWNvcmRzOyAvL0VSUzE5MDYyMAogICAgICAgICAgICBicmVhazsKICAgICAgICB9CiAgICB9CiAgICBhbGVydCgiKysrIEVORElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIG9yaWdpbiA9ICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbisiLyIrekRhdGEucHJvZ3JhbU5hbWUrIi8iK3pEYXRhLmNoYW5uZWwpOwogICAgLy9hbGVydCgiQEBAIHpEYXRhLkFmZmlsaWF0ZSA9ICIgKyB6RGF0YS5BZmZpbGlhdGUpOwp9OwoKLyogdGhpcyBpcyBhbiB1bnRlc3RlZCBmdW5jdGlvbiB0byBkZXRlY3QgdGhlIHNhbmRib3ggbmFtZSBhbmQgYXNzaWduIHZhbHVlcyAqLyAvL0VSUzE3MDUyMiBhY3RpdmF0aW5nCnpEYXRhLm9yZ1N3aXRjaD1mdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA1MTIKICAgIGFsZXJ0KCJzZlVzZXIgaXMgIitkb2Muc2ZVc2VyTmFtZSk7CiAgICB6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJwYXRpZW50UXVldWVJZF9fYyIpOyAvLycwMEc0QzAwMDAwMExrbVonOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKICAgIHpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCiAgICB2YXIgcXVldWVJZD0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJ6U3RhY2tRdWV1ZUlkX19jIik7CiAgICB6RGF0YS5vd25lcklkID0gcXVldWVJZDsgLy9QVjE5MDkyNCB1cGRhdGVkIHRvIGNoYW5nZSBvd25lciBhcyBxdWV1ZQogICAgYWxlcnQoIkVSUzE5MDkyNiB6RGF0YS5vd25lcklkPSIrekRhdGEub3duZXJJZCsiIGZyb20gelN0YWNrUXVlSWQgaW4gIitYQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArInpTdGFja1F1ZXVlSWRfX2MiKSk7IC8vRVJTMTkwOTI2ICM2MzU1MgogICAgfTsKekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vRVJTMTcwODIyCgp6RGF0YS5nZXREYXRhRW50cnlGaWVsZHM9ZnVuY3Rpb24oZG9jLHpkKSB7IC8vRVJTMTkwNjE5IGNvcHkgd2RkYXRhIGluZm8gaW50byB6RGF0YQogICAgaWYgKCF6ZCkgemQ9ekRhdGE7IC8vdXNlIHpEYXRhIG9yIHpkCiAgICB2YXIgZmllbGRzPWRvYy53ZGRhdGEuc3BsaXQoIjxYXyIpOwogICAgLy88WF9aUEFQRVJfX1Byb3ZpZGVyX19yLk5hbWU+VW5pdGVkIE9pbCAmIEdhcywgU2luZ2Fwb3JlPC9YX1pQQVBFUl9fUHJvdmlkZXJfX3IuTmFtZT4KICAgIC8vPFhfWlBBUEVSX19QYXRpZW50X19yLk5hbWU+Sm9zaCBEYXZpczwvWF9aUEFQRVJfX1BhdGllbnRfX3IuTmFtZT4KICAgIC8vPFhfWlBBUEVSX19DYXNlX19jPjUwMDQ0MDAwMDBsRWkzM0FBQzwvWF9aUEFQRVJfX0Nhc2VfX2M+CiAgICBmb3IgKHZhciBpIGluIGZpZWxkcykgewogICAgICAgIHZhciBudj1maWVsZHNbaV07IC8vIlpQQVBFUl9fQ2FzZV9fYz41MDA0NDAwMDAwbEVpMzNBQUM8L1hfWlBBUEVSX19DYXNlX19jPiIKICAgICAgICB2YXIgaj1udi5pbmRleE9mKCI+Iik7CiAgICAgICAgdmFyIGs9bnYuaW5kZXhPZigiPCIsaisxKTsKICAgICAgICBpZiAoaj4tMSAmJiBrPi0xKSB7CiAgICAgICAgICAgIHZhciBuPSJYXyIrbnYuc3Vic3RyaW5nKDAsaik7CiAgICAgICAgICAgIHZhciB2PW52LnN1YnN0cmluZyhqKzEsayk7CiAgICAgICAgICAgIHpEYXRhW25dPXY7CiAgICAgICAgfQogICAgfQogICAgekRhdGEuY2FzZUlkID0gWChkb2MsICJYX1pQQVBFUl9fQ2FzZV9fYyIpOyAvL0VSUzE5MDYyNCBUT0RPIG1vcmUgb2YgdGhlIHNhbWUKICAgIHpEYXRhLmNvbnRhY3RJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRfX2MiKTsKICAgIHpEYXRhLnBhdGllbnRJZD16RGF0YS5jb250YWN0SWQ7IC8vVE9ETyBQZXJzb25hbEFjY291bnQgcHJlZmVyZW5jZQogICAgekRhdGEucHJvdmlkZXJJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIik7CiAgICAvL3ZhciBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CiAgICAvL3ZhciBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwogICAgLy92YXIgcGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwogICAgLy9FUlMxOTA4MDIgIzYxMjcyIG1hcnNoYWxsIGZyb20gWCgpIHNpbmNlIHRoZSBkYXRlIGVudHJ5IGluZm8gbm90IGFscmVhZHkgc2F2ZWQgaW50byB3ZGRhdGEKICAgIHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2M9cGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwogICAgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jPXBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0xhc3ROYW1lX19jIik7CiAgICB6RGF0YS5YX1pQQVBFUl9fQmlydGhkYXRlX19jPXBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKICAgIHpEYXRhLlhfQ2FzZV9SZWNvcmRfVHlwZV9fYyA9Y2FzZVJlY29yZFR5cGUgPSBYKGRvYywgIlhfQ2FzZV9SZWNvcmRfVHlwZV9fYyIpOy8vIFBWMTkwOTI1IGFkZGVkCiAgICB6RGF0YS5YX1pQQVBFUl9fZmF4VHlwZV9fYyA9IGRvY1R5cGUgPSBYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsgLy9QVjE5MTAwMiBkb2NUeXBlCiAgICAvL3pEYXRhLlhfUHJlc2NyaXB0aW9uX19jID0gWChkb2MsICJYX1ByZXNjcmlwdGlvbl9fYyIpOy8vUFYxOTEwMjUgIHRvIHVwZGF0ZSBuYW1lIG9uIHByZXNjcmlwdGlvbiByZWNvcmQKfTsKCgp6RGF0YS5hZGRTdGFnZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxzdGFnZSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMKaWYgKCFzdGFnZSkgewogICAgdmFyIGJhPWRvYy5YKCJYX2J1dHRvbkFjdGlvbiIpKyJlZCI7CiAgICBiYT1iYS5zdWJzdHJpbmcoMStiYS5sYXN0SW5kZXhPZigiICIpKTsKICAgIHN0YWdlPWJhOyBpZiAoc3RhZ2UubGVuZ3RoKCk8NCkge3N0YWdlPSJSZWNlaXZlZCI7fQogICAgfSBlbHNlIHsKICAgICAgICBiYT1zdGFnZTsgLy9FUlMxOTA4MDIKICAgIH0KICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5MgogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn0KCi8vSW4gQ2xpZW50IExpYnJhcnkgekRhdGEubmV3Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkge307Cgp6RGF0YS5pbml0aWFsaXplU3RhY2s9ZnVuY3Rpb24oZG9jLHN0YWNrRm9sZGVyLHN0YWNrSWQpIHsgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogIHZhciBhcnJPZlBhaXJzID0gW107CiAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICB2YXIgZmluYWxSb290Rm9sZGVyID0gekRhdGEucHJvZ3JhbU5hbWUrIi1BcmNoaXZlIjsgLy9iYXRlcyBvZiB0aGUgQXJjaGl2ZSBmb2xkZXIKICB2YXIgeXl5eU1NRm9sZGVyTmFtZSA9IHRvZGF5LmdldEZ1bGxZZWFyKCkgKyAoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpOwogIHZhciB5eXl5TU1Gb2xkZXIgPSBmaW5hbFJvb3RGb2xkZXIgKyAiLSIgKyB5eXl5TU1Gb2xkZXJOYW1lOwogIGFsZXJ0KCJAQEAgc3RhY2tGb2xkZXIgaXMgLSAiICsgc3RhY2tGb2xkZXIpOwogIGFsZXJ0KCJAQEAgZmluYWxSb290Rm9sZGVyIGlzIC0gIiArIGZpbmFsUm9vdEZvbGRlcik7CiAgYWxlcnQoIkBAQCB5eU1NRm9sZGVyIGlzIC0gIiArIHl5eXlNTUZvbGRlcik7CiAgYWxlcnQoIkBAQCBjcmVhdGluZyBuZXcgc3RhY2sgZGVzdGluYWlvbiBmb2xkZXIgd2l0aCBuYW1lIC0gIiArIHN0YWNrRm9sZGVyKTsKICAvKiBSZWZyZXNoIHRoZSBjdXJyZW50IGZvbGRlciAqLwogIHJlbG9hZEJ5SWQoZG9jLCBYKGRvYywiWF9jdXJGb2xkZXIiKSk7CiAgLyogc2FtZSB2YWx1ZSBmb3IgQkFURVMgYW5kIGxhYmVsICovCiAgLyogVGhlIGZvbGRlciBzdHJ1Y3R1cmUgd2lsbCBsb29rIGxpa2UgdGhpczogLzIwMTYwOC8zQ1gzQ1gvMTIzNDU2Nzg5LVNUQUNLICovCiAgY3JlYXRlRm9sZGVyKGRvYywgZmluYWxSb290Rm9sZGVyLCB5eXl5TU1Gb2xkZXIsIHl5eXlNTUZvbGRlck5hbWUpOwogIGNyZWF0ZUZvbGRlcihkb2MsIHl5eXlNTUZvbGRlciwgc3RhY2tGb2xkZXIsIHN0YWNrRm9sZGVyKTsKICBhbGVydCgiQEBAQCBNb3ZpbmcgdGhlIHN0YWNrIGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKICBtb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhJbml0aWFsaXplZCIsICJ0cnVlIik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc3RhY2tJZCk7CiAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiLSIgKyBzdGFja0lkICsgIi1TVEFDSyIpOwogIC8qIFN0YWNrIExhYmVsbGluZyBDaGFuZ2UgKi8KICB2YXIgZHRTdGFtcCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UpOwogIC8qIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCJTdGFjayAtICIgKyBkdFN0YW1wKTsgKi8KICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07Cgp6RGF0YS5jb3VudFBhZ2VzID0gZnVuY3Rpb24oZG9jLCBwYWdlUmFuZ2UyKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICB2YXIgcGFnZXMgPSBwYWdlUmFuZ2UyLnNwbGl0KCIsIik7CiAgICBpZiAoIXBhZ2VzKSBwYWdlcz1bcGFnZVJhbmdlMl07CiAgICBhbGVydCgiekRhdGEuY291bnRQYWdlcyBwYWdlcyA9ICIgKyBwYWdlcyk7CiAgICAvL3JldHVybiBwYWdlcy5sZW5ndGg7CiAgICByZXR1cm4gKCIiK3BhZ2VzLmxlbmd0aCk7IC8vRVJTMTkwODAyICM2MTI3MiBUT0RPIGluIFdBUgp9OwoKekRhdGEuZXhwb3NlUERGPWZ1bmN0aW9uKGRvYyxzZklkLHBhZ2VSYW5nZSkgeyAvL0VSUzE3MDUyMiBhZGRlZCBwYWdlUmFuZ2UKICAgIHZhciBmb3JtYXROb3cgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgIAogICAgdmFyIGZpbGVOYW1lID0gZ2V0Q3VyRGF0ZShkb2MpICsgIiBOZXcgRmF4LnBkZiI7CiAgICBhbGVydCgiQEBAZmlsZU5hbWUgPSAiK2ZpbGVOYW1lKTsKICAgIGFsZXJ0KCJAekRhdGEudXBsb2FkRGlyPSAiKyB6RGF0YS51cGxvYWREaXIpOwogICAgY3JlYXRlRGlyZWN0b3J5KGRvYywgekRhdGEudXBsb2FkRGlyLCBub3dUaW1lU3RhbXApOwogICAgYWxlcnQoIkBAY3JlYXRlRGlyZWN0b3J5ID0iICtjcmVhdGVEaXJlY3RvcnkpOyAvL1BWMTkxMjEzIGFkZGVkIGFsZXJ0CiAgICAvL0FOMTcwNTIyIHNob3VsZCB4UGFnZXMgYmUgcGFzc2VkIGluIGFzIGEgdmFyaWFibGU/CiAgICB2YXIgeFBhZ2VzID0gWChkb2MsICJYX3Bvc2l0aW9uIik7CiAgICBpZiAocGFnZVJhbmdlKSB4UGFnZXM9cGFnZVJhbmdlOyAgLy9FUlMxNzA1MjIKICAgIGFsZXJ0KCJAQEBAQCBDYWxsaW5nIHNwbGl0UERGIHRvIHNwbGl0IG9mZiBwYWdlcyB0byB1cGxvYWQgYXMgUERGLCBwYWdlcyA9ICIgKyB4UGFnZXMgKyAiLCBub3dUaW1lU3RhbXAgPSAiICsgbm93VGltZVN0YW1wKTsKICAgIHZhciByZXNwb25zZSA9IHNwbGl0UERGKGRvYywgeFBhZ2VzLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCwgZmlsZU5hbWUpOwogICAgYWxlcnQoIkBAQEAgcmVzcG9uc2UgZnJvbSBzcGxpdFBERiA9ICIgKyByZXNwb25zZSk7CiAgICB2YXIgbmV3UERGTmFtZSA9IFgoZG9jLCAibmV3UERGIiwgcmVzcG9uc2UpOwogICAKICAgIGFsZXJ0KCJAQEBAIHNwbGl0IFBERiBGaWxlTmFtZSA9ICIgKyBuZXdQREZOYW1lKTsKICAgIHZhciB1cGxvYWRVUkw9Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9teWZpbGVmb3JjZS91cGxvYWRUb0Nsb3VkLmpzcD9TRmlkPU5FVyZTRnBpZD0iK3NmSWQrIiZTRm9yZz0iK2RvYy5zZk9yZysiJlNGc2Vzc2lvbj0iK2RvYy5rYkRhdGEuc2ZTZXNzaW9uSUQrIiZTRnNlcnZlcj0iK2RvYy5rYkRhdGEuc2ZTZXJ2ZXIrIiZsYWJlbD0iK2ZpbGVOYW1lKyImc2VydmVyRmlsZT0iK25ld1BERk5hbWUrIiZEZXNjcmlwdGlvbj1GaWxlIGF0dGFjaGVkIGFzIFBERiI7CiAgICAvL3ZhciB1cGxvYWRVUkw9Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9teWZpbGVmb3JjZS91cGxvYWRUb0Nsb3VkLmpzcD9TRmlkPU5FVyZTRnBpZD0iK3NmSWQrIiZTRm9yZz0iK2RvYy5zZk9yZysiJmxhYmVsPSIrZmlsZU5hbWUrIiZzZXJ2ZXJGaWxlPSIrbmV3UERGTmFtZSsiJkRlc2NyaXB0aW9uPUZpbGUgYXR0YWNoZWQgYXMgUERGIjsKICAgIGFsZXJ0KCIjIyMjIFVwbG9hZCBuYXRpdmUgUERGIHdpdGggIit1cGxvYWRVUkwpOwogICAgdmFyIHI9d2dldChkb2MsIHVwbG9hZFVSTCk7IC8vRVJTMTcwNTEyIHdhcyB6RGF0YS51cGxvYWRVUkwKICAgIGFsZXJ0KCIjIyMjIEZheCBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKICAgIC8vIEZpbmFsbHksIGRlbGV0ZSB0aGUgZm9sZGVyIGFuZCBhbGwgY29udGVudHMuCiAgICBhbGVydCgiQHpEYXRhLnVwbG9hZERpcj0gIisgekRhdGEudXBsb2FkRGlyKTsKICAgIGNsZWFudXBEaXJlY3RvcnkoZG9jLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCk7CiAgICBhbGVydCgiQEBEaXJlY3RvcnkgYWxsIGNsZWFuZWR1cCA9IiArY2xlYW51cERpcmVjdG9yeSk7CiAgICAvLyBOb3cgc2V0IHRoZSBsYWJlbCBpbiBvdXIgU25pcHBldAogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJOZXcgZmlsZSAiICsgZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKfTsKCnpEYXRhLmdldFN0YWNrSWQ9ZnVuY3Rpb24oZG9jLGlkcyxzdGFja1R5cGVOYW1lKSB7IC8vRVJTMTkwNjE3IGZyb20gVU5MT0NLIC8vVE9ETyBFUlMxOTA2MjQgZmluZCBzdGFja1R5cGVOYW1lIG5lZWRlZCBkb2MKICAgIGlmICghaWRzIHx8IGlkcz09PSIiKSBpZHMgPSBYKGRvYywiWF9hdHRhY2hlZFRvIik7IC8vRVJTMTkwNjE4IFRPRE8gY29uZmlybSBkb2MgaW4gc2NvcGUKICAgIGlkcyA9IGlkcyArICIiOwppZiAoaWRzLmxhc3RJbmRleE9mKCcvJykgPj0gMCkgeyAvL0VSUzE5MDYxOCBnZXQgZmlyc3QgSWQgaWYgLyBpcyBwYXNzZWQgaW4KaWRzID0gaWRzLnN1YnN0cmluZyhpZHMubGFzdEluZGV4T2YoJy8nKSsxKTsKaWYgKGlkcy5pbmRleE9mKCcsJykgPj0gMCkgeyBpZHMgPSBpZHMuc3Vic3RyaW5nKDAsIGlkcy5pbmRleE9mKCcsJykpOyB9CnJldHVybiBpZHM7Cn0KICAgCiAgICBpZiAoIXN0YWNrVHlwZU5hbWUpIHN0YWNrVHlwZU5hbWU9IlpQQVBFUl9felN0YWNrX19jIjsgLy9FUlMxOTA2MjQgZ3Vlc3NpbmcgVE9ETyBmaW5kIGV4YW1wbGVzCiAgICB2YXIgcGFydHMgPSBpZHMuc3BsaXQoJywnKTsKICAgIGZvciAodmFyIGk9MDsgaTxwYXJ0cy5sZW5ndGg7IGkrKykgeyAvL2dldCBrYXN0IElkIGlmIC8gaXMgTk9UIHBhc3NlZCBpbgogICAgICAgIHZhciBpZCA9IHBhcnRzW2ldLnRyaW0oKTsKICAgICAgICBpZiAoaWQubGVuZ3RoID4gMCkgewogICAgICAgICAgICBhbGVydCgiQEBAQCBwdWxsaW5nIHR5cGUgZm9yIGlkOiAiICsgaWQpOwogICAgICAgICAgICBpZiAoc3RhY2tUeXBlTmFtZSA9PT0gZ2V0U0ZUeXBlKGRvYywgaWQpKSB7CiAgICAgICAgICAgICAgICByZXR1cm4gaWQ7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICByZXR1cm4gbnVsbDsKfTsKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzKGRvYyk7IC8vY2FsbCBmdW5jdGlvbiB0byBzZXQgdmFyaWFibGVzCi8qIEVORCAqLwo="},"ordinal":0}

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
        zData.channel = "Upload";
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
    alert("@zData.uploadDir= "+ zData.uploadDir);
    createDirectory(doc, zData.uploadDir, nowTimeStamp);
    alert("@@createDirectory =" +createDirectory); //PV191213 added alert
    //AN170522 should xPages be passed in as a variable?
    var xPages = X(doc, "X_position");
    if (pageRange) xPages=pageRange;  //ERS170522
    alert("@@@@@ Calling splitPDF to split off pages to upload as PDF, pages = " + xPages + ", nowTimeStamp = " + nowTimeStamp);
    var response = splitPDF(doc, xPages, zData.uploadDir, nowTimeStamp, fileName);
    alert("@@@@ response from splitPDF = " + response);
    var newPDFName = X(doc, "newPDF", response);
   
    alert("@@@@ split PDF FileName = " + newPDFName);
    var uploadURL="http://localhost:8080/myfileforce/uploadToCloud.jsp?SFid=NEW&SFpid="+sfId+"&SForg="+doc.sfOrg+"&SFsession="+doc.kbData.sfSessionID+"&SFserver="+doc.kbData.sfServer+"&label="+fileName+"&serverFile="+newPDFName+"&Description=File attached as PDF";
    //var uploadURL="http://localhost:8080/myfileforce/uploadToCloud.jsp?SFid=NEW&SFpid="+sfId+"&SForg="+doc.sfOrg+"&label="+fileName+"&serverFile="+newPDFName+"&Description=File attached as PDF";
    alert("#### Upload native PDF with "+uploadURL);
    var r=wget(doc, uploadURL); //ERS170512 was zData.uploadURL
    alert("#### Fax Received. Attached to: " + sfId);
    // Finally, delete the folder and all contents.
    alert("@zData.uploadDir= "+ zData.uploadDir);
    cleanupDirectory(doc, zData.uploadDir, nowTimeStamp);
    alert("@@Directory all cleanedup =" +cleanupDirectory);
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
