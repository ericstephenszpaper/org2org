<!--
// Name: Client Library
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV191029 commented
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-29 18:20:13","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEubWF4Q2hhbm5lbHM9MzsgLy9FUlMxOTA3MzEgIzYxMjcyIHppcHBpIGlzIHN0cm9uZ2x5IHR5cGVkCnpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL0VSUzE5MDgxNCAjNjE1MTEKCnpEYXRhLndhdGVybWFyaz0iIitYQ3VzdG9tU2V0dGluZyhkb2MsIndhdGVybWFya19fYyIpOyAvL0VSUzE5MDYxOCBiZXN0IHByYWN0aWNlCi8vYWxlcnQoIkVSUzE5MDQxMSB3bT0iK3pEYXRhLndhdGVybWFyaysiIFpQQVBFUl9fc2VydmVyX19jPSIrWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3NlcnZlcl9fYyIpKTsKekRhdGEudXBsb2FkRGlyID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ1cGxvYWREaXJfX2MiKTsgLy8iYWxrZXJtZXNSb290IjsKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicGF0aWVudFF1ZXVlSWRfX2MiKTsgLy8nMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCnpEYXRhLnJlY1R5cGVSZXF1ZXN0ID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJyZWNUeXBlUmVxdWVzdF9fYyIpOyAvLycwMTI0QzAwMDAwMENqNVknOyAvL0lEIG9mIHRoZSBDYXNlIFJlY29yZCBUeXBlIFJlcXVlc3RfUFNfTVZOCi8vVE9ETyB6RGF0YS5rZXl3b3JkTWFwWyJFTlJMIl0gPSJFTlJMOkVucm9sbG1lbnQgRm9ybSI7ICAvL1RPRE8gZ2V0IGZyb20gelN0YWNrIHBpY2tsaXN0cwovL1RPRE8gekRhdGEua2V5d29yZE1hcFsiRkFDIl0gPSJGQUM6RmFjaWxpdHkgRW5yb2xsbWVudCBGb3JtIjsKekRhdGEuUFJPR1JBTV9aQ0FSVEE9ekRhdGEuY2hhbm5lbFsiekNhcnRhIl07CnpEYXRhLlBST0dSQU1fWkNIQVJUQT16RGF0YS5jaGFubmVsWyJ6Q2hhcnRhIl07CnpEYXRhLlBST0dSQU1fWlBBUFlSVVM9ekRhdGEuY2hhbm5lbFsielBhcHlydXMiXTsKCnpEYXRhLmNsaWVudEltcG9ydFNPUUw9ZnVuY3Rpb24oZG9jLGZyb21GaWxlKSB7IC8vRVJTMTkwNzA2IGN1c3RvbWl6ZSBpbXBvcnRzIHVzZWQgYnkgQ3JlYXRlIFN0YWNrCiAgICB6RGF0YS5pbXBvcnRlcj1YQ3VzdG9tU2V0dGluZyhkb2MsekRhdGEuenArIkltcG9ydGVyX19jIikudHJpbSgpOwogICAgdmFyIHNmSWQ9IiI7CiAgICB2YXIgcGFydHM9ZnJvbUZpbGUuc3BsaXQoIl8iKTsKICAgIC8vc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiQWNjb3VudCIsIHsgIkZheCIgOiBwYXJ0c1szXSB9ICk7CiAgICB6RGF0YS5tYWtlU3RhY2s9dHJ1ZTsgLy9kbyBhbGwgdGhlIHdvcmsgdGhlcmUgYnkgZGVmYXVsdAogICAgcmV0dXJuIHNmSWQ7Cn07CgovL2FsZXJ0KCJ6RGF0YS5jbGllbnRTdGFjayIpOwp6RGF0YS5jbGllbnRTdGFjaz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycykgeyAvL3pEYXRhIG9yIHRoaXM/CiAgICB2YXIgenA9ekRhdGEuenA7IGlmICghenApIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwODA1CmlmICh6RGF0YS5yZWNlaXZlZCkgYXJyT2ZQYWlycy5wdXNoKCJ6U3RhY2tfUmVjZWl2ZWRfX2MiLCB6RGF0YS5mb3JtYXROb3cpOyAvL0VSUzE5MDYxNyBUT0RPIHNhdmUgd2F5IHRvIGRvIHRoaXMKaWYgKHpEYXRhLm93bmVySWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEub3duZXJJZCk7ICAvLyB6Q2hhcnRhIFF1ZXVlICIwMEczNjAwMDAwMkN5VEsiCmlmICh6RGF0YS5jYWxsZXJJZCkgYXJyT2ZQYWlycy5wdXNoKCJ6Q2FsbGVyX0lEX19jIiwgZG9jLmRlbGl2ZXJlZEZyb20pOyAvL01TSDE3MDgxNyBhZGRlZAppZiAoekRhdGEucGF0RW5yb2xsUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKTsKCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fZmF4VHlwZV9fYyIsIHpEYXRhLmRvY1R5cGUpOyAvLyBQVjE5MTAyOSBjb21tZW50ZWQKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIHZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwogICAgaWYocGFnZVJhbmdlKXsgLy9QdjE5MTAyOCB0byB1cGRhdGUgbnVtYmVyIG9mIHBhZ2VzIG9ubHkgaWYgd2UgYXJlIGRvaW5nIGluZGV4IG9uIHN0YWNrIHJlY29yZAogICAgICAgIHZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYywgcGFnZVJhbmdlKTsgIAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYWdlc19fYyIsIHBhZ2VDb3VudCk7CiAgICB9CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQKICAgIC8vRVJTMTkwODEwIFRPRE8/IGFyck9mUGFpcnMucHVzaCgiWlNUQUNLX19SZWNlaXZlZF9fYyIsIHpEYXRhLmZvcm1hdE5vdyk7CiAgICBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNIQVJUQSkgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsgLy9KUEIxOTA0MjYgY2hhbmdlZCB0byBjbGFzc2lmaWNhdGlvbiBmcm9tIHByb2dyYW0vL1BWMTkxMDA0IHVwZGF0ZWQgZnJvbSBVcmdlbnQKICAgIH0gZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiSGlnaCIpOwogICAgfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0FSVEEpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsKICAgIH1lbHNlIGlmIChhcnJPZlBhaXJzLmluZGV4T2YoenArIlByaW9yaXR5X19jIik8MCkgewogICAgICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVW5hc3NpZ25lZCIpOwogICAgIH0KICAgCiAgIAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLCAoIkNvbW11bml0eSIgPT09IHpEYXRhLmNoYW5uZWwgPyB6RGF0YS5jaGFubmVsIDogZG9jLmRlbGl2ZXJlZFRvKSk7IC8vSlBCMTkwNTI5IGFkZGVkIHNvIENvbW11bml0eSBzaG93cyB1cCBpbiBNYXN0ZXIgSW50YWtlIExpc3QKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsZG9jLmRlbGl2ZXJlZEZyb20pOwogICAgaWYgKHpEYXRhLnJldmlld2VkU3RhdHVzKSB7YXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsIHpEYXRhLnJldmlld2VkU3RhdHVzKTsgfQogICAgZWxzZSB7IGFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVjZWl2ZWQiKTsgfQogICAgekRhdGEuc3RhY2tQYWlycz1hcnJPZlBhaXJzOyAvL0VSUzE5MDgxMCAjNjE1NzAgZm9yIGNoaWxkIHN0YWNrIGxhdGVyCiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9felN0YWNrRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgpyZXR1cm4gYXJyT2ZQYWlyczsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudEZpbGUiKTsKekRhdGEuY2xpZW50RmlsZT1mdW5jdGlvbihkb2Msc3RhZ2UpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWU5ldygpOwogICAgZG9jLmxhYmVsPSB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jKyAiICIgK3pEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7IC8vUFYxOTEwMDggdG8gdXBkYXRlIGZvciBleGlzdGluZyBwYXRpZW50IG9uIGNoaWxkIHN0YWNrCiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIGlmICh6RGF0YS5zZklEICAmJiB6RGF0YS5zZklELmluZGV4T2YoIjUwMCIpPT09MCkgewogICB6RGF0YS5wcm92aWRlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJBY2NvdW50Lk5hbWUiLCBudWxsLCB6RGF0YS5zZklEKTsKICAgbGFiZWwgPSAiUmVjZWl2ZWQgZnJvbSAiICsgekRhdGEucHJvdmlkZXI7CiAgICAgICAgaWYgKHpEYXRhLmZhY2lsaXR5KSB7CiAgICAgICAgICAgIHpEYXRhLmZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuRmFjaWxpdHlfX3IuTmFtZSIsIG51bGwsIHpEYXRhLnNmSUQpOwogICAgICAgICAgICBkb2MubGFiZWwrPSIgYXQgIit6RGF0YS5mYWNpbGl0eTsKICAgICAgICB9Cn0KdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwoKekRhdGEuY2xpZW50VmFsdWU9ZnVuY3Rpb24oZG9jLHZhbCkgey8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OCiAgICB2YWw9dmFsLnJlcGxhY2UoInshZm9ybWF0Tm93fSIsekRhdGEuZm9ybWF0Tm93KTsKICAgIHJldHVybiB2YWw7Cn0KCnpEYXRhLmNsaWVudEZpZWxkcz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxqZCx6ZCkgeyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBpbiBzZXR0aW5nIHRvIGNvbmZpZ3VyZSBuZXcgcmVjb3JkCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKaWYgKGpkICYmIGpkLmluZGV4T2YoInsiKT09PTApIHsKICAgLy97IlR5cGUiOiJFbGlnaWJpbGl0eSIsIk93bmVySWQiOiIwMEdjMDAwMDAwM3ZncXciLCJSZWNvcmRUeXBlSWQiOiIwMTI2QTAwMDAwMEpFS2VRQU8ifTsKICAgLy9OT1QgQSBHT09EIElERUEgamQ9amQucmVwbGFjZUFsbCgiXCIiLCInIik7IC8vRVJTMTkwODExICM2MTU3MCBIQUNLPwogICB0cnkgewogICAgICAgdmFyIGpkYXRhPUpTT04ucGFyc2UoamQpOyAvL0VSUzE5MDgwNSBiZXR0ZXIgdGhhbiBldmFsCiAgICAgICBmb3IgKHZhciBuIGluIGpkYXRhKSB7CiAgICAgICAgICAgdmFyIHYwPWpkYXRhW25dOwogICAgICAgICAgIHZhciB2PXpEYXRhLmNsaWVudFZhbHVlKGRvYyx2MCk7IC8vRVJTMTkwODExICx2IG5vdyAsdjAKICAgICAgICAgICAvL2FsZXJ0KCJFUlMxOTA4MDMuOTcgIituKyI9Iit2MCsiPSIrdik7CiAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKG4sdik7IC8vRVJTMTkwODExIGFkZGVkIC5wdXNoCiAgICAgICB9CiAgIH0gY2F0Y2ggKGUpIHsKICAgICAgIGFsZXJ0KCJKU09OIG5vdCBpbiAiK2pkKyIgRXhjZXB0aW9uOiAiK2UpOyAvL0VSUzE5MDgxMSBhZGRlZCBlCiAgIH0KfQphbGVydCgiQEBAQCBQcmF0aHl1c2hhIGpkIEBAQEAgIitqZCk7CnJldHVybiBhcnJPZlBhaXJzOwp9CgoKekRhdGEuY2xpZW50Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewppZiAoIXpkKSB6ZD16RGF0YTsKaWYgKCFsYWJlbCkgeyBsYWJlbD0iSW5kZXhlZC0iICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQovL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKaWYgKHpkLmNvbnRhY3RJZCkgYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCB6ZC5jb250YWN0SWQpOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsIFgoZG9jLCJYX1N0YXR1cyIpKTsKYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK3pkLmNsYXNzaWZpY2F0aW9uKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwppZiAoMT09MSkgeyAvL0VSUzE3MDUyMyAjMzcxNjIgYWZ0ZXIgZHJ5cnVuCi8vYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCIwMTJRMDAwMDAwMDVBaGoiKTsgLy9FUlMxNzA1MjMgUHJpb3IgQXV0aAppZiAoemQucHJpb3JpdHkgIT0gIk5vcm1hbCIpIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLHpkLnByaW9yaXR5KTsgIC8vRVJTMTcwNTI0ICMzNzE2MiBwcmlvcml0eSBvbiBDYXNlCmVsc2UgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOwphcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsemQuY2hhbm5lbCk7Cn0KICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19DYXNlRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgp2YXIgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CnJldHVybiBjYXNlSWQ7Cn07Cgp6RGF0YS5jbGllbnRQYXRpZW50PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CmlmICghemQpIHpkPXpEYXRhOwppZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQovL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX2xhdGVzdEZheF9fYyIsIHpkLmZvcm1hdE5vdyk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCiAgICB2YXIgcnQ9WEN1c3RvbVNldHRpbmcoZG9jLCJQYXRpZW50UmVjb3JkVHlwZV9fYyIpOyAvL1RPRE8gaW50byBNUCBFUlMxOTA4MDIgbGlrZSAwMTI2QTAwMDAwMEpFOHlRQUcgb3IgZW1wdHkgdG8gdXNlIGRlZmF1bHQKICAgIGlmIChydCkgeyBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHJ0KTt9IC8vRVJTMTkwODAzCiAgICAvL1RPRE8gQ29udGFjdCBvciBBY2NvdW50IEVSUzE5MDYyNCBET05FISEgRVJTMTkwODAyCiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudEZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04KdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS5wYXRpZW50VHlwZSwgbGFiZWwsIGFyck9mUGFpcnMpOyAvL0VSUzE5MDgwMyAjNjEyNzIKCi8vRVJTMTkwODAzIHNwZWNpZmljIHRvIGNsaWVudCBkYXRhIGVudHJ5CnZhciBkcSA9IHpEYXRhLmRxOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGVyc29uX0FjY291bnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgc2ZJZCArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BlcnNvbl9BY2NvdW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgekRhdGEuWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyArICIgIiArIHpEYXRhLlhfWlBBUEVSX19MYXN0TmFtZV9fYyArIGRxICsgIik7ICIpOwpyZXR1cm4gc2ZJZDsKfTsKCnpEYXRhLmNsaWVudEFjY291bnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKaWYgKCF6ZCkgemQ9ekRhdGE7CmlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9Ci8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoKdmFyIGFjY291bnRJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJBY2NvdW50IiwgbGFiZWwsIGFyck9mUGFpcnMpOwpyZXR1cm4gYWNjb3VudElkOwp9OwoKekRhdGEuY2xpZW50UmVjb3JkPWZ1bmN0aW9uKGRvYyxzZlR5cGUsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgeyAvL0VSUzE5MDYyMCBjbGllbnRSZWNvcmQgZ2VuZXJpYwppZiAoIXpkKSB6ZD16RGF0YTsKaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CnZhciB6cD0iIjsKaWYgKCIsQ2FzZSxDb250YWN0LEFjY291bnQsTGVhZCxPcHBvcnR1bml0eSxaUEFQRVJfX3pTdGFja19fYywiLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiLCIrc2ZUeXBlLnRvTG93ZXJDYXNlKCkrIiwiKT4tMSkgenA9ekRhdGEuenA7Ci8vb25seSBkbyB0aGlzIGlmIHRoZSBmaWVsZHMgZXhpc3QKYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwphcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCAiZG9jLmRiSUQuUmVjIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCi8vVE9ETyBwdXQgY2xpZW50IHNwZWNpZmljIGRhdGEgdXBkYXRlcyBoZXJlCgp2YXIgbmV3SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCBzZlR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsKcmV0dXJuIG5ld0lkOwp9OwoKekRhdGEuY2xpZW50UmVjb3JkVHlwZT1mdW5jdGlvbihkb2Msc2ZUeXBlLGFyck9mUGFpcnMsbGFiZWwsemQpIHsgLy9FUlMxOTA2MjAgY2xpZW50UmVjb3JkIGdlbmVyaWMKICAgIGlmICghemQpIHpkPXpEYXRhOwogICAgaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KICAgIC8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwogICAgdmFyIHpwPSIiOwogICAKICAgIHZhciBuZXdJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHNmVHlwZSwgbGFiZWwsIGFyck9mUGFpcnMpOwogICAgcmV0dXJuIG5ld0lkOwp9OwogICAKCnpEYXRhLmNsaWVudENvbXBsZXRlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHpkKSB7cmV0dXJuIGFyck9mUGFpcnM7fTsgLy9FUlMxOTA2MjUKekRhdGEuY2xpZW50RGVsaXZlcnk9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHtyZXR1cm4gYXJyT2ZQYWlyczt9OyAvL0VSUzE5MDcxMSAjNjA5MDAgUEFPUwoKekRhdGEuY2xpZW50Q2hpbGRTdGFjaz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxwYXJlbnRJZCkgeyAvL0VSUzE5MDgxMCAjNjE1NzAgYmUgc3VyZSB0byBjYWxsIG9uIG5ldyBjaGlsZCBkb2MKICAgIHZhciBwYWlycz1hcnJPZlBhaXJzOwogICAgLy9ubyBtZW1vcnkgb2Ygc3RhY2sgY3JlYXRpb24gdmFyIHBhaXJzPXpEYXRhLnN0YWNrUGFpcnM7CiAgICB6RGF0YS5yZXZpZXdlZFN0YXR1cz0iU3BsaXQiOwogICAgLy9FUlMxOTA4MTAgVE9ETz8gcGFpcnMucHVzaCgiWlBBUEVSX19TdGF0dXNfX2MiLCAiQ2hpbGQgU3RhY2siKTsKCiAgICBwYWlycz16RGF0YS5jbGllbnRTdGFjayhkb2MscGFpcnMpOwogICAgaWYgKFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196Q2hpbGRGaWVsZHNfX2MiKSkgeyAvL0VSUzE5MDgxMSBub3QgaW4gYWxsIE1QcwogICAgICAgIHBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MscGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pDaGlsZEZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gY2hpbGQgcmVjb3JkIHR5cGUgaWQKICAgIH0KICAgIHBhaXJzLnB1c2goIlpQQVBFUl9fUGFyZW50X19jIiwgcGFyZW50SWQpOwogICAgYWxlcnQoIkVSUzE5MDgxMS4xOTEgWlBBUEVSX19QYXJlbnRfX2MiKyBwYXJlbnRJZCk7CiAgICB2YXIgY2hpbGRTdGFja1NGSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCAielN0YWNrIHNwbGl0IG9uICIgKyB6RGF0YS5mb3JtYXROb3csIHBhaXJzKSArICIiOwogICAgcmV0dXJuIGNoaWxkU3RhY2tTRklkOwp9CgphbGVydCgiZW5kIGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwNjE1ICM1ODkyMQo="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client library"); //ERS190803 #52661 from OccFit

zData.maxChannels=3; //ERS190731 #61272 zippi is strongly typed
zData.makeStack=true; //ERS190814 #61511

zData.watermark=""+XCustomSetting(doc,"watermark__c"); //ERS190618 best practice
//alert("ERS190411 wm="+zData.watermark+" ZPAPER__server__c="+XCustomSetting(doc,"ZPAPER__server__c"));
zData.uploadDir = ""+XCustomSetting(doc,"uploadDir__c"); //"alkermesRoot";
zData.patEnrollQueueId = ""+XCustomSetting(doc,"patientQueueId__c"); //'00G4C000000LkmZ'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
zData.recTypeRequest = ""+XCustomSetting(doc,"recTypeRequest__c"); //'0124C000000Cj5Y'; //ID of the Case Record Type Request_PS_MVN
//TODO zData.keywordMap["ENRL"] ="ENRL:Enrollment Form";  //TODO get from zStack picklists
//TODO zData.keywordMap["FAC"] ="FAC:Facility Enrollment Form";
zData.PROGRAM_ZCARTA=zData.channel["zCarta"];
zData.PROGRAM_ZCHARTA=zData.channel["zCharta"];
zData.PROGRAM_ZPAPYRUS=zData.channel["zPapyrus"];

zData.clientImportSOQL=function(doc,fromFile) { //ERS190706 customize imports used by Create Stack
    zData.importer=XCustomSetting(doc,zData.zp+"Importer__c").trim();
    var sfId="";
    var parts=fromFile.split("_");
    //sfId = getSFRecordID(doc, "Account", { "Fax" : parts[3] } );
    zData.makeStack=true; //do all the work there by default
    return sfId;
};

//alert("zData.clientStack");
zData.clientStack=function(doc,arrOfPairs) { //zData or this?
    var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS190805
if (zData.received) arrOfPairs.push("zStack_Received__c", zData.formatNow); //ERS190617 TODO save way to do this
if (zData.ownerId) arrOfPairs.push("OwnerId",zData.ownerId);  // zCharta Queue "00G36000002CyTK"
if (zData.callerId) arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);

    arrOfPairs.push("ZPAPER__faxType__c", zData.docType); // PV191029 commented
    arrOfPairs.push("ZPAPER__Classification__c", zData.classification);
    var pageRange = X(doc,"X_idxPages");
    if(pageRange){ //Pv191028 to update number of pages only if we are doing index on stack record
        var pageCount = zData.countPages(doc, pageRange);  
        arrOfPairs.push("ZPAPER__Pages__c", pageCount);
    }
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814
    //ERS190810 TODO? arrOfPairs.push("ZSTACK__Received__c", zData.formatNow);
    if (zData.classification === zData.PROGRAM_ZCHARTA) {
    arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB190426 changed to classification from program//PV191004 updated from Urgent
    } else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {
    arrOfPairs.push(zp+"Priority__c", "High");
    } else if (zData.classification === zData.PROGRAM_ZCARTA) {
    arrOfPairs.push(zp+"Priority__c", "Critical");
    }else if (arrOfPairs.indexOf(zp+"Priority__c")<0) {
        arrOfPairs.push(zp+"Priority__c", "Unassigned");
     }
   
   
    arrOfPairs.push(zp+"sentFaxTo__c", ("Community" === zData.channel ? zData.channel : doc.deliveredTo)); //JPB190529 added so Community shows up in Master Intake List
    arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
    if (zData.reviewedStatus) {arrOfPairs.push(zp+"Stage__c", zData.reviewedStatus); }
    else { arrOfPairs.push(zp+"Stage__c", "Received"); }
    zData.stackPairs=arrOfPairs; //ERS190810 #61570 for child stack later
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__zStackFields__c")); //ERS190803 #52661 using JSON
return arrOfPairs;
};

//alert("zData.clientFile");
zData.clientFile=function(doc,stage) { //ERS170829 #41298 returns a label to be used in any attaches and fixes the doc
    //Document attachment label should be "Patient Name - Doc Type - Date".  Confirmed for zPaper File and SFDC Attachment
    var MMddYYYY = zData.formatTodayMMddYYYYNew();
    doc.label= zData.X_ZPAPER__FirstName__c+ " " +zData.X_ZPAPER__LastName__c +" - "+X(doc,"X_ZPAPER__faxType__c")+" - "+MMddYYYY; //PV191008 to update for existing patient on child stack
    alert("ERS170829 dbID="+doc.dbID+" label="+doc.label);
    if (zData.sfID  && zData.sfID.indexOf("500")===0) {
   zData.provider = getSFField(doc, "Case", "Account.Name", null, zData.sfID);
   label = "Received from " + zData.provider;
        if (zData.facility) {
            zData.facility = getSFField(doc, "Case", "Account.Facility__r.Name", null, zData.sfID);
            doc.label+=" at "+zData.facility;
        }
}
var arrOfPairs = [];
    arrOfPairs.push("db-label", doc.label);
updateDB(doc,arrOfPairs);
    return doc.label;
};

zData.clientValue=function(doc,val) {//ERS190803 #52661 using JSON
    val=val.replace("{!formatNow}",zData.formatNow);
    return val;
}

zData.clientFields=function(doc,arrOfPairs,jd,zd) { //ERS190803 #52661 using JSON in setting to configure new record
    if (!zd) zd=zData;
if (jd && jd.indexOf("{")===0) {
   //{"Type":"Eligibility","OwnerId":"00Gc0000003vgqw","RecordTypeId":"0126A000000JEKeQAO"};
   //NOT A GOOD IDEA jd=jd.replaceAll("\"","'"); //ERS190811 #61570 HACK?
   try {
       var jdata=JSON.parse(jd); //ERS190805 better than eval
       for (var n in jdata) {
           var v0=jdata[n];
           var v=zData.clientValue(doc,v0); //ERS190811 ,v now ,v0
           //alert("ERS190803.97 "+n+"="+v0+"="+v);
           arrOfPairs.push(n,v); //ERS190811 added .push
       }
   } catch (e) {
       alert("JSON not in "+jd+" Exception: "+e); //ERS190811 added e
   }
}
alert("@@@@ Prathyusha jd @@@@ "+jd);
return arrOfPairs;
}


zData.clientCase=function(doc,arrOfPairs,label,zd) {
if (!zd) zd=zData;
if (!label) { label="Indexed-" + "-" + zd.triageType + "-" + zd.stackId;}
//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
if (zd.contactId) arrOfPairs.push("ContactId", zd.contactId);
arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
arrOfPairs.push("ZPAPER__latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields
arrOfPairs.push("Status", X(doc,"X_Status"));
arrOfPairs.push("Type", "New "+zd.classification); //JPB 170512 added these workflow fields
if (1==1) { //ERS170523 #37162 after dryrun
//arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
if (zd.priority != "Normal") arrOfPairs.push("Priority",zd.priority);  //ERS170524 #37162 priority on Case
else arrOfPairs.push("Priority","Medium");
arrOfPairs.push("Origin",zd.channel);
}
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__CaseFields__c")); //ERS190803 #52661 using JSON
var caseId = createAndAttach(doc, "Case", label, arrOfPairs);
return caseId;
};

zData.clientPatient=function(doc,arrOfPairs,label,zd) {
if (!zd) zd=zData;
if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
arrOfPairs.push("ZPAPER__latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields

    var rt=XCustomSetting(doc,"PatientRecordType__c"); //TODO into MP ERS190802 like 0126A000000JE8yQAG or empty to use default
    if (rt) { arrOfPairs.push("RecordTypeId", rt);} //ERS190803
    //TODO Contact or Account ERS190624 DONE!! ERS190802
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__PatientFields__c")); //ERS190803 #52661 using JSON
var sfId = createAndAttach(doc, zData.patientType, label, arrOfPairs); //ERS190803 #61272

//ERS190803 specific to client data entry
var dq = zData.dq;
addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c" + dq + ").val(" + dq + sfId + dq + "); ");
    addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c_Name" + dq + ").val(" + dq + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c + dq + "); ");
return sfId;
};

zData.clientAccount=function(doc,arrOfPairs,label,zd) {
if (!zd) zd=zData;
if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
arrOfPairs.push("ZPAPER__latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields

var accountId = createAndAttach(doc, "Account", label, arrOfPairs);
return accountId;
};

zData.clientRecord=function(doc,sfType,arrOfPairs,label,zd) { //ERS190620 clientRecord generic
if (!zd) zd=zData;
if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
var zp="";
if (",Case,Contact,Account,Lead,Opportunity,ZPAPER__zStack__c,".toLowerCase().indexOf(","+sfType.toLowerCase()+",")>-1) zp=zData.zp;
//only do this if the fields exist
arrOfPairs.push(zp+"newFax__c", "true"); //JPB 170512 added these workflow fields
arrOfPairs.push(zp+"latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
arrOfPairs.push(zp+"receivedId__c", "doc.dbID.Rec"); //JPB 170512 added these workflow fields

//TODO put client specific data updates here

var newId = createAndAttach(doc, sfType, label, arrOfPairs);
return newId;
};

zData.clientRecordType=function(doc,sfType,arrOfPairs,label,zd) { //ERS190620 clientRecord generic
    if (!zd) zd=zData;
    if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
    //ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
    var zp="";
   
    var newId = createAndAttach(doc, sfType, label, arrOfPairs);
    return newId;
};
   

zData.clientComplete=function(doc,arrOfPairs,zd) {return arrOfPairs;}; //ERS190625
zData.clientDelivery=function(doc,arrOfPairs) {return arrOfPairs;}; //ERS190711 #60900 PAOS

zData.clientChildStack=function(doc,arrOfPairs,parentId) { //ERS190810 #61570 be sure to call on new child doc
    var pairs=arrOfPairs;
    //no memory of stack creation var pairs=zData.stackPairs;
    zData.reviewedStatus="Split";
    //ERS190810 TODO? pairs.push("ZPAPER__Status__c", "Child Stack");

    pairs=zData.clientStack(doc,pairs);
    if (XCustomSetting(doc,"ZPAPER__zChildFields__c")) { //ERS190811 not in all MPs
        pairs=zData.clientFields(doc,pairs,XCustomSetting(doc,"ZPAPER__zChildFields__c")); //ERS190803 #52661 using JSON child record type id
    }
    pairs.push("ZPAPER__Parent__c", parentId);
    alert("ERS190811.191 ZPAPER__Parent__c"+ parentId);
    var childStackSFId = createAndAttach(doc, "ZPAPER__zStack__c", "zStack split on " + zData.formatNow, pairs) + "";
    return childStackSFId;
}

alert("end client library"); //ERS190615 #58921

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
