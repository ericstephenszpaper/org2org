<!--
// Name: zStack Library
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-12 17:40:18","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLkFmZmlsaWF0ZSA9ICIiOwp6RGF0YS56cD0iWlBBUEVSX18iOyAvL0VSUzE5MDYxNyAjNTI2NjEKekRhdGEuenBzPXpEYXRhLnpwKyJ6U3RhY2tfX2MiOwp6RGF0YS5zZklEID0gZ2V0QmFyY29kZU9uZShkb2MpOwppZiAoIXpEYXRhLnNmSUQgfHwgMCA9PT0gekRhdGEuc2ZJRC5sZW5ndGgpIHsKICAgIHpEYXRhLnNmSUQgPSBnZXRBbHRlcm5hdGVCYXJjb2RlT25lKGRvYykgKyAiIjsKfQp6RGF0YS5mb3JtYXROb3c9ekRhdGEubm93PWdldEN1ckRhdGVBbmRUaW1lKGRvYyk7IC8vRVJTMTkwNjI0IHdhcyBqdXN0IC5ub3cKekRhdGEuYXR0YWNoUmVjb3Jkcz1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIlJlY29yZHNfX2MiKS50cmltKCk7CmlmICghekRhdGEuYXR0YWNoUmVjb3JkcykgeyB6RGF0YS5hdHRhY2hSZWNvcmRzPSJDYXNlLExlYWQiO30gLy9DYXNlLENvbnRhY3QsQWNjb3VudCxQYXRpZW50LExlYWQKCmlmICgxPT09MCkgeyAvL0VSUzE3MDgwNSBnZXQgdGhlIGRhdGEgZnJvbSB0aGUgRGVwbG95bWVudEluZm8gLy9FUlMxNzA5MDkgVE9ETyBkbyB0aGlzIHNhZmVseSB3aXRoIFhEZXBsb3ltZW50SW5mbyxYQ3VzdG9tU2V0dGluZwogICAgLy9hbGVydCgiRVJTMTcwNzI1IERJPSIrZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbyk7CiAgICB2YXIgY3M9KGRvYy5rYkRhdGEuZGVwbG95bWVudEluZm8rIiIpOyAvL25vdCBbIkJ1c2luZXNzX1Byb2Nlc3NfX2MiXTsKICAgIC8vYWxlcnQoIkVSUzE3MDgwNSBjcz0iK2NzKTsKICAgIGlmIChjcykgewogICAgICAgIGlmIChjcy5pbmRleE9mKCJ6Q3VzdG9tU2V0dGluZ3MiKT4tMSkgY3M9WChkb2MsInpDdXN0b21TZXR0aW5ncyIsY3MpOwogICAgICAgIGlmIChjcyAhPT0gIiIpIGV2YWwoY3MpOwogICAgICAgIGFsZXJ0KCJFUlMxNzA4MjIgaW1wb3J0IGZvciAiK2NzKTsKICAgIH0KfQoKLy9DUk4xNzAzMjQgVE9ETyBkb2MuY2xvbmUoKSBkb25lIHJpZ2h0Owp6RGF0YS5jbG9uZT1mdW5jdGlvbihkb2MpIHsKICAgdmFyIGRvYzA9W107CiAgIGZvciAodmFyIGkgaW4gZG9jKSBkb2MwW2ldPWRvY1tpXTsKICAgcmV0dXJuIGRvYzA7Cn07CgovLyBUaGlzIGZ1bmN0aW9uIG5lZWRzIHRvIGJlIGFkZGVkIHRvIGV2ZXJ5IHJ1bGUgdG8gaGVscCBhc3N1cmUgdGhhdCBydWxlcyBkbyBub3QgZ2V0IGFjY2lkZW50YWxseSB0cmlnZ2VyZWQKLy8gQWRkIHRoaXMgZnVuY3Rpb25hbGl0eSB0byB0aGUgcnVsZXMgZW5naW5lIGl0c2VsZj8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uID0gZnVuY3Rpb24oZG9jLHRyaWdnZXJGaWVsZCkgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh0cmlnZ2VyRmllbGQsICIiKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKCi8vQU4xOTA1MzAgdGVjaCBkZWJ0PyB1bnN1cmUgaG93IHRoaXMgZnVuY3Rpb24gaXMgbmVlZGVkCnpEYXRhLm5hbWVGaWxlID0gZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwODI5ICM0MTI5OCByZXR1cm5zIGEgbGFiZWwgdG8gYmUgdXNlZCBpbiBhbnkgYXR0YWNoZXMgYW5kIGZpeGVzIHRoZSBkb2MKICAgIC8vRG9jdW1lbnQgYXR0YWNobWVudCBsYWJlbCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIuICBDb25maXJtZWQgZm9yIHpQYXBlciBGaWxlIGFuZCBTRkRDIEF0dGFjaG1lbnQKICAgIHZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgIGRvYy5sYWJlbD1YKGRvYywiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpK1goZG9jLCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKSsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsKICAgIGFsZXJ0KCJFUlMxNzA4MjkgZGJJRD0iK2RvYy5kYklEKyIgbGFiZWw9Iitkb2MubGFiZWwpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKCnpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkgPSBmdW5jdGlvbihkb2MpIHsgLy9NU0gxNzA4MzEgZXh0cmFjdCBkYXRlIGZvcm1hdCBmcm9tIHpEYXRhLm5hbWVGaWxlCiAgICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogICAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgICAvL01TSDE3MDkwNiBwYWQgZGF5IHdpdGggemVybwogICAgdmFyIGN1ckRheSA9IHRvZGF5LmdldERhdGUoKTsKICAgIC8vTVNIMTcwOTA2IHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsiIit0b2RheS5nZXREYXRlKCkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrKCIiKyhjdXJEYXkgPiA5ID8gY3VyRGF5KyIiIDogIjAiK2N1ckRheSkpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgLy9hbGVydCgiTU1kZFlZWVkgPT0gIiArIE1NZGRZWVlZKTsKICAgIHJldHVybiBNTWRkWVlZWTsKfTsKekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWU5ldyA9IGZ1bmN0aW9uKGRvYykgeyAvL01TSDE3MDgzMSBleHRyYWN0IGRhdGUgZm9ybWF0IGZyb20gekRhdGEubmFtZUZpbGUKICAgIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICAgIC8vTVNIMTcwOTA2IHBhZCBkYXkgd2l0aCB6ZXJvCiAgICB2YXIgY3VyRGF5ID0gdG9kYXkuZ2V0RGF0ZSgpOwogICAgLy9NU0gxNzA5MDYgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKyIiK3RvZGF5LmdldERhdGUoKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIHZhciBNTWRkWVlZWSA9ICAodG9kYXkuZ2V0RnVsbFllYXIoKSsgIi0iKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiLSIgOiAiMCIrY3VyTW9udGgpKygiIisoY3VyRGF5ID4gOSA/IGN1ckRheSsiIiA6ICIwIitjdXJEYXkpKSk7CiAgICAvL2FsZXJ0KCJNTWRkWVlZWSA9PSAiICsgTU1kZFlZWVkpOwogICAgcmV0dXJuIE1NZGRZWVlZOwp9OwoKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzID0gZnVuY3Rpb24oZG9jKSB7IHJldHVybiB6RGF0YS5zZXRicmFuZHByb2dyYW0oZG9jKTsgfTsgLy9NU0gxNzEwMDUgZ2V0IGFsbCB0aGUgb3JncyBpbiBoZXJlCnpEYXRhLnNldGJyYW5kcHJvZ3JhbSA9IGZ1bmN0aW9uKGRvYykgeyByZXR1cm4gekRhdGEuc2V0QnJhbmRQcm9ncmFtKGRvYyk7IH07IC8vTVNIMTcxMDA1IGdldCBhbGwgdGhlIG9yZ3MgaW4gaGVyZQogICAKekRhdGEuc2V0QnJhbmRQcm9ncmFtID0gZnVuY3Rpb24oZG9jKSB7IC8vVE9ETyBkbyBodWIgd2l0aCBzZXR0aW5ncwogICAgYWxlcnQoIisrKyBTVEFSVElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIGRvYy5kZWxpdmVyZWRUbyA9ICIgKyBkb2MuZGVsaXZlcmVkVG8pOwogICAgdmFyIHpwPXpEYXRhLnpwOwogICAgekRhdGEuY2xhc3NpZmljYXRpb249ZG9jLmRlbGl2ZXJlZFRvOwogICAgekRhdGEuY2hhbm5lbD1kb2MuZGVsaXZlcmVkVG87CiAgICB6RGF0YS5wcm9ncmFtTmFtZT1kb2MuZGVsaXZlcmVkVG87CiAgICAvL3pEYXRhLkFmZmlsaWF0ZT1kb2MuZGVsaXZlcmVkVG87CiAgICB2YXIgZGVsaXZlcmVkVG8gPSBkb2MuZGVsaXZlcmVkVG8gKyAiIjsgLy9KUEIxOTA1MjkgQ2hlY2sgZGVsaXZlcmVkVG8gZm9yIGNvbW11bml0eSB1cGxvYWRlcwogICAgaWYgKCFpc05hTihkb2MuZGVsaXZlcmVkRnJvbSkpIHsgekRhdGEuY2hhbm5lbD0iRmF4IjsgfSAvL0VSUzE5MDgxMCAjNjE1NzAgc2V0IGNoYW5lbmVsIHRvIGZheCBpZiBudW1iZXIKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5pbmRleE9mKCJAIik+LTEgfHwgZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiLiIpPi0xKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxODA1MDUgIzQ4MTAxCiAgICBpZiAoaXNOYU4oZG9jLmRlbGl2ZXJlZEZyb20pKSB7ekRhdGEuY2hhbm5lbD0iRW1haWwiO30gLy9FUlMxOTA4MTIgIzYxNTExCiAgICBpZiAoaXNOYU4oZGVsaXZlcmVkVG8pKSB7CiAgICBpZiAoZGVsaXZlcmVkVG8udG9Mb3dlckNhc2UoKS5pbmRleE9mKCJjb21tdW5pdHkiKSA+PSAwKSB7CiAgICB6RGF0YS5jaGFubmVsID0gIkNvbW11bml0eSI7CiAgICB9IGVsc2UgewogICB6RGF0YS5jaGFubmVsPSJTY2FuIjsKICAgfQogICAgfQogICAgdmFyIG1heENoYW5uZWxzPTI7IGlmICh6RGF0YS5tYXhDaGFubmVscykgbWF4Q2hhbm5lbHM9ekRhdGEubWF4Q2hhbm5lbHM7IC8vRVJTMTkwNzMxICM2MTI3MgogICAgZm9yICh2YXIgaT0xOyBpPD1tYXhDaGFubmVsczsgaSsrKSB7CiAgICAgICAgdmFyIGNoYW5uZWw9WEN1c3RvbVNldHRpbmcoZG9jLHpwKyJDaGFubmVsIitpKyJfX2MiKTsKICAgICAgICB2YXIgcHJvZ3JhbT1YQ3VzdG9tU2V0dGluZyhkb2MsenArIlByb2dyYW0iK2krIl9fYyIpOwogICAgICAgIC8vdmFyIGFmZmlsaWF0ZT1YQ3VzdG9tU2V0dGluZyhkb2MsenArIkFmZmlsaWF0ZSIraSsiX19jIik7CiAgICAgICAgdmFyIGNsYXNzaWZpY2F0aW9uPVhDdXN0b21TZXR0aW5nKGRvYyx6cCsiQ2xhc3NpZmljYXRpb24iK2krIl9fYyIpOwogICAgICAgIHZhciBhdHRhY2hSZWNvcmRzPVhDdXN0b21TZXR0aW5nKGRvYywiUmVjb3JkcyIraSsiX19jIik7IC8vbm8genAgaXMgZGVsaWJlcmF0ZQogICAgICAgIGlmICghYXR0YWNoUmVjb3JkcykgYXR0YWNoUmVjb3Jkcz16RGF0YS5hdHRhY2hSZWNvcmRzOwogICAgICAgIGlmICghY2hhbm5lbCkgYnJlYWs7CiAgICAgICAgaWYgKGk+PTMpIHpwPSIiOyAvLzIgaW4gbWFuYWdlZCBwYWNrYWdlCiAgICAgICAgdmFyIGM9Y2hhbm5lbDsgaWYgKGMuaW5kZXhPZigiMSIpPT09MCkgYz1jLnN1YnN0cmluZygxKTsKICAgICAgICB6RGF0YS5jaGFubmVscz1pOwogICAgICAgICBhbGVydCgiY2xhc3NpZmljYXRpb249PT09PT0iK2NsYXNzaWZpY2F0aW9uKTsKICAgICAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoYyk+LTEpIHsKICAgICAgICAgICAgLy96RGF0YS5jaGFubmVsPWNoYW5uZWw7CiAgICAgICAgICAgIGFsZXJ0KCJjbGFzc2lmaWNhdGlvbiBpbiBpbmRleE9mPT09PT09IitjbGFzc2lmaWNhdGlvbik7CiAgICAgICAgICAgIHpEYXRhLnByb2dyYW1OYW1lPXByb2dyYW07CiAgICAgICAgICAgIGlmKCFpc05hTihjKSkgekRhdGEuY2hhbm5lbFtwcm9ncmFtXT1jaGFubmVsOyAvL3JldmVyc2UgbG9va3VwIGZvciBmYXgKICAgICAgICAgICAgLy96RGF0YS5BZmZpbGlhdGU9YWZmaWxpYXRlOwogICAgICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbj1jbGFzc2lmaWNhdGlvbjsKICAgICAgICAgICAgekRhdGEuYXR0YWNoUmVjb3Jkcz1hdHRhY2hSZWNvcmRzOyAvL0VSUzE5MDYyMAogICAgICAgICAgICBicmVhazsKICAgICAgICB9CiAgICB9CiAgICBhbGVydCgiKysrIEVORElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIG9yaWdpbiA9ICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbisiLyIrekRhdGEucHJvZ3JhbU5hbWUrIi8iK3pEYXRhLmNoYW5uZWwpOwogICAgLy9hbGVydCgiQEBAIHpEYXRhLkFmZmlsaWF0ZSA9ICIgKyB6RGF0YS5BZmZpbGlhdGUpOwp9OwoKLyogdGhpcyBpcyBhbiB1bnRlc3RlZCBmdW5jdGlvbiB0byBkZXRlY3QgdGhlIHNhbmRib3ggbmFtZSBhbmQgYXNzaWduIHZhbHVlcyAqLyAvL0VSUzE3MDUyMiBhY3RpdmF0aW5nCnpEYXRhLm9yZ1N3aXRjaD1mdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA1MTIKICAgIGFsZXJ0KCJzZlVzZXIgaXMgIitkb2Muc2ZVc2VyTmFtZSk7CiAgICB6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJwYXRpZW50UXVldWVJZF9fYyIpOyAvLycwMEc0QzAwMDAwMExrbVonOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKICAgIHpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCn07CnpEYXRhLm9yZ1N3aXRjaChkb2MpOyAvL0VSUzE3MDgyMgoKekRhdGEuZ2V0RGF0YUVudHJ5RmllbGRzPWZ1bmN0aW9uKGRvYyx6ZCkgeyAvL0VSUzE5MDYxOSBjb3B5IHdkZGF0YSBpbmZvIGludG8gekRhdGEKICAgIGlmICghemQpIHpkPXpEYXRhOyAvL3VzZSB6RGF0YSBvciB6ZAogICAgdmFyIGZpZWxkcz1kb2Mud2RkYXRhLnNwbGl0KCI8WF8iKTsKICAgIC8vPFhfWlBBUEVSX19Qcm92aWRlcl9fci5OYW1lPlVuaXRlZCBPaWwgJiBHYXMsIFNpbmdhcG9yZTwvWF9aUEFQRVJfX1Byb3ZpZGVyX19yLk5hbWU+CiAgICAvLzxYX1pQQVBFUl9fUGF0aWVudF9fci5OYW1lPkpvc2ggRGF2aXM8L1hfWlBBUEVSX19QYXRpZW50X19yLk5hbWU+CiAgICAvLzxYX1pQQVBFUl9fQ2FzZV9fYz41MDA0NDAwMDAwbEVpMzNBQUM8L1hfWlBBUEVSX19DYXNlX19jPgogICAgZm9yICh2YXIgaSBpbiBmaWVsZHMpIHsKICAgICAgICB2YXIgbnY9ZmllbGRzW2ldOyAvLyJaUEFQRVJfX0Nhc2VfX2M+NTAwNDQwMDAwMGxFaTMzQUFDPC9YX1pQQVBFUl9fQ2FzZV9fYz4iCiAgICAgICAgdmFyIGo9bnYuaW5kZXhPZigiPiIpOwogICAgICAgIHZhciBrPW52LmluZGV4T2YoIjwiLGorMSk7CiAgICAgICAgaWYgKGo+LTEgJiYgaz4tMSkgewogICAgICAgICAgICB2YXIgbj0iWF8iK252LnN1YnN0cmluZygwLGopOwogICAgICAgICAgICB2YXIgdj1udi5zdWJzdHJpbmcoaisxLGspOwogICAgICAgICAgICB6RGF0YVtuXT12OwogICAgICAgIH0KICAgIH0KICAgIHpEYXRhLmNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsgLy9FUlMxOTA2MjQgVE9ETyBtb3JlIG9mIHRoZSBzYW1lCiAgICB6RGF0YS5jb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7CiAgICBpZiAoIkFjY291bnQiPT09WEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX1BhdGllbnRSZWNvcmRfX2MiKSkgeyAvL0VSUzE5MDgxMCAjNjE1NzAgLy9FUlMxOTA4MTEgZG9jLAogICAgICAgIHpEYXRhLmNvbnRhY3RJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRBY2NvdW50X19jIik7CiAgICB9CiAgICB6RGF0YS5wYXRpZW50SWQ9ekRhdGEuY29udGFjdElkOyAvL1RPRE8gUGVyc29uYWxBY2NvdW50IHByZWZlcmVuY2UgLSBET05FIEVSUzE5MDgxMAogICAgekRhdGEucHJvdmlkZXJJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIik7CiAgICAvL3ZhciBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CiAgICAvL3ZhciBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwogICAgLy92YXIgcGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwogICAgLy9FUlMxOTA4MDIgIzYxMjcyIG1hcnNoYWxsIGZyb20gWCgpIHNpbmNlIHRoZSBkYXRlIGVudHJ5IGluZm8gbm90IGFscmVhZHkgc2F2ZWQgaW50byB3ZGRhdGEKICAgIHpEYXRhLlhfWlBBUEVSX19mYXhUeXBlX19jPSIiOwogICAgekRhdGEuWF9aUEFQRVJfX2ZheFR5cGVfX2M9ekRhdGEuZG9jVHlwZSA9IFgoZG9jLCAiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsgLy9FUlMxOTA4MTAgUFYxOTA4MDggIzYxNTcwCiAgICB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jPXBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKICAgIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYz1wYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwogICAgekRhdGEuWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYz1wYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7CiAgICB6RGF0YS5YX1pQQVBFUl9fUGhvbmVfX2M9cGF0aWVudFBob25lID0gWChkb2MsICJYX1pQQVBFUl9fUGhvbmVfX2MiKTsKCiAgICAvL1BWMTkxMDA4IHVwZGF0ZWQgbmV3IGZpZWxkcwogICAgekRhdGEuWF9aUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jID0gWChkb2MsICJYX1pQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MiKTsKICAgIHpEYXRhLlhfWlBBUEVSX19Qcmlvcml0eV9fYyA9IFgoZG9jLCAiWF9aUEFQRVJfX1ByaW9yaXR5X19jIik7CiAgICB6RGF0YS5YX1N1Yl9DYXRlZ29yeV9fYyA9IFgoZG9jLCAiWF9TdWJfQ2F0ZWdvcnlfX2MiKTsKICAgIHpEYXRhLlhfWlBBUEVSX19mYXhUeXBlX19jPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7CiAgICB6RGF0YS5YX1ByZXNjcmlwdGlvbl9fYyA9IFgoZG9jLCAiWF9QcmVzY3JpcHRpb25fX2MiKTsKICAgIHpEYXRhLlhfTWVtYmVyX1BsYW5fX2MgPSBYKGRvYywgIlhfTWVtYmVyX1BsYW5fX2MiKTsKICAgIHpEYXRhLlhfQ292ZXJhZ2VfQmVuZWZpdF9fYyA9IFgoZG9jLCAiWF9Db3ZlcmFnZV9CZW5lZml0X19jIik7CiAgICB6RGF0YS5YX0NsaW5pY2FsX1NlcnZpY2VzX19jID0gWChkb2MsICJYX0NsaW5pY2FsX1NlcnZpY2VzX19jIik7CiAgICB6RGF0YS5YX1NlcnZpY2VfUmVxdWVzdGVkX0RhdGVfX2MgPSBYKGRvYywgIlhfU2VydmljZV9SZXF1ZXN0ZWRfRGF0ZV9fYyIpOwogICAgekRhdGEuWF9SZXBvcnRlZF9PdXRjb21lX19jID0gWChkb2MsICJYX1JlcG9ydGVkX091dGNvbWVfX2MiKTsKICAgIHpEYXRhLlhfQXNzZXNzbWVudF9UeXBlX19jID0gWChkb2MsICJYX0Fzc2Vzc21lbnRfVHlwZV9fYyIpOwogICAgekRhdGEuWF9PdXRjb21lX1R5cGVfX2MgPSBYKGRvYywgIlhfT3V0Y29tZV9UeXBlX19jIik7CiAgICB6RGF0YS5YX1Byb2R1Y3RfRGVzY3JpYmVkX19jID0gWChkb2MsICJYX1Byb2R1Y3RfRGVzY3JpYmVkX19jIik7IC8vUFYxOTEwMjEgdXBkYXRlZCB0aGUgZmllbGRzCn07CgoKekRhdGEuYWRkU3RhZ2U9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsc3RhZ2UpIHsgLy9FUlMxNzA5MDkgIzQwNTkyIGZvciB6RG9jU2V0IHN0YXR1c2VzCiAgICB2YXIgYmE9IiI7CiAgICBpZiAoIXN0YWdlKSB7CiAgICAgICAgYmE9ZG9jLlgoIlhfYnV0dG9uQWN0aW9uIikrImVkIjsKICAgIGJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgc3RhZ2U9YmE7IGlmIChzdGFnZS5sZW5ndGgoKTw0KSB7c3RhZ2U9IlJlY2VpdmVkIjt9CiAgICB9IGVsc2UgewogICAgICAgIGJhPXN0YWdlOyAvL0VSUzE5MDgwMgogICAgfQogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfQoKLy9JbiBDbGllbnQgTGlicmFyeSB6RGF0YS5uZXdDYXNlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7fTsKCnpEYXRhLmluaXRpYWxpemVTdGFjaz1mdW5jdGlvbihkb2Msc3RhY2tGb2xkZXIsc3RhY2tJZCkgeyAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogIHZhciBmaW5hbFJvb3RGb2xkZXIgPSB6RGF0YS5wcm9ncmFtTmFtZSsiLUFyY2hpdmUiOyAvL2JhdGVzIG9mIHRoZSBBcmNoaXZlIGZvbGRlcgogIHZhciB5eXl5TU1Gb2xkZXJOYW1lID0gdG9kYXkuZ2V0RnVsbFllYXIoKSArIChjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCk7CiAgdmFyIHl5eXlNTUZvbGRlciA9IGZpbmFsUm9vdEZvbGRlciArICItIiArIHl5eXlNTUZvbGRlck5hbWU7CiAgYWxlcnQoIkBAQCBzdGFja0ZvbGRlciBpcyAtICIgKyBzdGFja0ZvbGRlcik7CiAgYWxlcnQoIkBAQCBmaW5hbFJvb3RGb2xkZXIgaXMgLSAiICsgZmluYWxSb290Rm9sZGVyKTsKICBhbGVydCgiQEBAIHl5TU1Gb2xkZXIgaXMgLSAiICsgeXl5eU1NRm9sZGVyKTsKICBhbGVydCgiQEBAIGNyZWF0aW5nIG5ldyBzdGFjayBkZXN0aW5haW9uIGZvbGRlciB3aXRoIG5hbWUgLSAiICsgc3RhY2tGb2xkZXIpOwogIC8qIFJlZnJlc2ggdGhlIGN1cnJlbnQgZm9sZGVyICovCiAgcmVsb2FkQnlJZChkb2MsIFgoZG9jLCJYX2N1ckZvbGRlciIpKTsKICAvKiBzYW1lIHZhbHVlIGZvciBCQVRFUyBhbmQgbGFiZWwgKi8KICAvKiBUaGUgZm9sZGVyIHN0cnVjdHVyZSB3aWxsIGxvb2sgbGlrZSB0aGlzOiAvMjAxNjA4LzNDWDNDWC8xMjM0NTY3ODktU1RBQ0sgKi8KICBjcmVhdGVGb2xkZXIoZG9jLCBmaW5hbFJvb3RGb2xkZXIsIHl5eXlNTUZvbGRlciwgeXl5eU1NRm9sZGVyTmFtZSk7CiAgY3JlYXRlRm9sZGVyKGRvYywgeXl5eU1NRm9sZGVyLCBzdGFja0ZvbGRlciwgc3RhY2tGb2xkZXIpOwogIGFsZXJ0KCJAQEBAIE1vdmluZyB0aGUgc3RhY2sgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwogIG1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwogIGFyck9mUGFpcnMucHVzaCgiWF9pbmRleEluaXRpYWxpemVkIiwgInRydWUiKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzdGFja0lkKTsKICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgZG9jLmtiRGF0YS5ncm91cElELnN1YnN0cmluZygxKSArICItIiArIHN0YWNrSWQgKyAiLVNUQUNLIik7CiAgLyogU3RhY2sgTGFiZWxsaW5nIENoYW5nZSAqLwogIHZhciBkdFN0YW1wID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSk7CiAgLyogYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIlN0YWNrIC0gIiArIGR0U3RhbXApOyAqLwogIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKCnpEYXRhLmNvdW50UGFnZXMgPSBmdW5jdGlvbihkb2MsIHBhZ2VSYW5nZTIpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBwYWdlcyA9IHBhZ2VSYW5nZTIuc3BsaXQoIiwiKTsKICAgIGlmICghcGFnZXMpIHBhZ2VzPVtwYWdlUmFuZ2UyXTsKICAgIGFsZXJ0KCJ6RGF0YS5jb3VudFBhZ2VzIHBhZ2VzID0gIiArIHBhZ2VzKTsKICAgIC8vcmV0dXJuIHBhZ2VzLmxlbmd0aDsKICAgIHJldHVybiAoIiIrcGFnZXMubGVuZ3RoKTsgLy9FUlMxOTA4MDIgIzYxMjcyIFRPRE8gaW4gV0FSCn07Cgp6RGF0YS5leHBvc2VQREY9ZnVuY3Rpb24oZG9jLHNmSWQscGFnZVJhbmdlKSB7IC8vRVJTMTcwNTIyIGFkZGVkIHBhZ2VSYW5nZQogICAgdmFyIGZvcm1hdE5vdyA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICB2YXIgbm93VGltZVN0YW1wID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgCiAgICB2YXIgZmlsZU5hbWUgPSBnZXRDdXJEYXRlKGRvYykgKyAiIE5ldyBGYXgucGRmIjsKICAgIGFsZXJ0KCJAQEBmaWxlTmFtZSA9ICIrZmlsZU5hbWUpOwogICAKICAgIGNyZWF0ZURpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgCiAgICAvL0FOMTcwNTIyIHNob3VsZCB4UGFnZXMgYmUgcGFzc2VkIGluIGFzIGEgdmFyaWFibGU/CiAgICB2YXIgeFBhZ2VzID0gWChkb2MsICJYX3Bvc2l0aW9uIik7CiAgICBpZiAocGFnZVJhbmdlKSB4UGFnZXM9cGFnZVJhbmdlOyAgLy9FUlMxNzA1MjIKICAgIGFsZXJ0KCJAQEBAQCBDYWxsaW5nIHNwbGl0UERGIHRvIHNwbGl0IG9mZiBwYWdlcyB0byB1cGxvYWQgYXMgUERGLCBwYWdlcyA9ICIgKyB4UGFnZXMgKyAiLCBub3dUaW1lU3RhbXAgPSAiICsgbm93VGltZVN0YW1wKTsKICAgIHZhciByZXNwb25zZSA9IHNwbGl0UERGKGRvYywgeFBhZ2VzLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCwgZmlsZU5hbWUpOwogICAgYWxlcnQoIkBAQEAgcmVzcG9uc2UgZnJvbSBzcGxpdFBERiA9ICIgKyByZXNwb25zZSk7CiAgICB2YXIgbmV3UERGTmFtZSA9IFgoZG9jLCAibmV3UERGIiwgcmVzcG9uc2UpOwogICAKICAgIGFsZXJ0KCJAQEBAIHNwbGl0IFBERiBGaWxlTmFtZSA9ICIgKyBuZXdQREZOYW1lKTsKICAgCiAgICB2YXIgdXBsb2FkVVJMPSJodHRwOi8vbG9jYWxob3N0OjgwODAvbXlmaWxlZm9yY2UvdXBsb2FkVG9DbG91ZC5qc3A/U0ZpZD1ORVcmU0ZwaWQ9IitzZklkKyImU0Zvcmc9Iitkb2Muc2ZPcmcrIiZsYWJlbD0iK2ZpbGVOYW1lKyImc2VydmVyRmlsZT0iK25ld1BERk5hbWUrIiZEZXNjcmlwdGlvbj1GaWxlIGF0dGFjaGVkIGFzIFBERiI7CiAgICBhbGVydCgiIyMjIyBVcGxvYWQgbmF0aXZlIFBERiB3aXRoICIrdXBsb2FkVVJMKTsKICAgIHZhciByPXdnZXQoZG9jLCB1cGxvYWRVUkwpOyAvL0VSUzE3MDUxMiB3YXMgekRhdGEudXBsb2FkVVJMCiAgICBhbGVydCgiIyMjIyBGYXggUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CiAgICAvLyBGaW5hbGx5LCBkZWxldGUgdGhlIGZvbGRlciBhbmQgYWxsIGNvbnRlbnRzLgogICAgY2xlYW51cERpcmVjdG9yeShkb2MsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wKTsKICAgIC8vIE5vdyBzZXQgdGhlIGxhYmVsIGluIG91ciBTbmlwcGV0CiAgICBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIk5ldyBmaWxlICIgKyBmb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwp9OwoKekRhdGEuZ2V0U3RhY2tJZD1mdW5jdGlvbihkb2MsaWRzLHN0YWNrVHlwZU5hbWUpIHsgLy9FUlMxOTA2MTcgZnJvbSBVTkxPQ0sgLy9UT0RPIEVSUzE5MDYyNCBmaW5kIHN0YWNrVHlwZU5hbWUgbmVlZGVkIGRvYwogICAgaWYgKCFpZHMgfHwgaWRzPT09IiIpIGlkcyA9IFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsgLy9FUlMxOTA2MTggVE9ETyBjb25maXJtIGRvYyBpbiBzY29wZQogICAgaWRzID0gaWRzICsgIiI7CmlmIChpZHMubGFzdEluZGV4T2YoJy8nKSA+PSAwKSB7IC8vRVJTMTkwNjE4IGdldCBmaXJzdCBJZCBpZiAvIGlzIHBhc3NlZCBpbgppZHMgPSBpZHMuc3Vic3RyaW5nKGlkcy5sYXN0SW5kZXhPZignLycpKzEpOwppZiAoaWRzLmluZGV4T2YoJywnKSA+PSAwKSB7IGlkcyA9IGlkcy5zdWJzdHJpbmcoMCwgaWRzLmluZGV4T2YoJywnKSk7IH0KcmV0dXJuIGlkczsKfQogICAKICAgIGlmICghc3RhY2tUeXBlTmFtZSkgc3RhY2tUeXBlTmFtZT0iWlBBUEVSX196U3RhY2tfX2MiOyAvL0VSUzE5MDYyNCBndWVzc2luZyBUT0RPIGZpbmQgZXhhbXBsZXMKICAgIHZhciBwYXJ0cyA9IGlkcy5zcGxpdCgnLCcpOwogICAgZm9yICh2YXIgaT0wOyBpPHBhcnRzLmxlbmd0aDsgaSsrKSB7IC8vZ2V0IGthc3QgSWQgaWYgLyBpcyBOT1QgcGFzc2VkIGluCiAgICAgICAgdmFyIGlkID0gcGFydHNbaV0udHJpbSgpOwogICAgICAgIGlmIChpZC5sZW5ndGggPiAwKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIHB1bGxpbmcgdHlwZSBmb3IgaWQ6ICIgKyBpZCk7CiAgICAgICAgICAgIGlmIChzdGFja1R5cGVOYW1lID09PSBnZXRTRlR5cGUoZG9jLCBpZCkpIHsKICAgICAgICAgICAgICAgIHJldHVybiBpZDsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KICAgIHJldHVybiBudWxsOwp9Owp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMoZG9jKTsgLy9jYWxsIGZ1bmN0aW9uIHRvIHNldCB2YXJpYWJsZXMKLyogRU5EICovCg=="},"ordinal":0}

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
zData.formatTodayMMddYYYYNew = function(doc) { //MSH170831 extract date format from zData.nameFile
    var today = new Date();
    var curMonth = today.getMonth() + 1;
    //MSH170906 pad day with zero
    var curDay = today.getDate();
    //MSH170906 var MMddYYYY =  (""+(curMonth > 9 ? curMonth+"" : "0"+curMonth)+""+today.getDate()+""+today.getFullYear());
    var MMddYYYY =  (today.getFullYear()+ "-"+(curMonth > 9 ? curMonth+"-" : "0"+curMonth)+(""+(curDay > 9 ? curDay+"" : "0"+curDay)));
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
         alert("classification======"+classification);
        if (doc.deliveredTo.indexOf(c)>-1) {
            //zData.channel=channel;
            alert("classification in indexOf======"+classification);
            zData.programName=program;
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
    zData.X_ZPAPER__faxType__c="";
    zData.X_ZPAPER__faxType__c=zData.docType = X(doc, "X_ZPAPER__faxType__c"); //ERS190810 PV190808 #61570
    zData.X_ZPAPER__FirstName__c=patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
    zData.X_ZPAPER__LastName__c=patientLastName = X(doc, "X_ZPAPER__LastName__c");
    zData.X_ZPAPER__Birthdate__c=patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
    zData.X_ZPAPER__Phone__c=patientPhone = X(doc, "X_ZPAPER__Phone__c");

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
};


zData.addStage=function(doc,arrOfPairs,stage) { //ERS170909 #40592 for zDocSet statuses
    var ba="";
    if (!stage) {
        ba=doc.X("X_buttonAction")+"ed";
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
