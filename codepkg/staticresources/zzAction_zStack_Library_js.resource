<!--
// Name: zStack Library
// Committer: andrew@zpaper.com
// Update: updating cs alert
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-07-24 20:47:15","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnVwbG9hZERpciA9ICJpbnRlZ3JhdGlvbkRpciI7IC8qUFYwMjE2MTggaW5zdGFsbGF0aW9uIGRpcmVjdG9yeSBmb3IgdGlmZiAqLwp6RGF0YS5hY2NvdW50SWQgPSAiIjsgLypNU0gxNzExMjgqLwp6RGF0YS5jYXNlRmllbGRzOyAvKmFycmF5IHVzZWQgdG8gc2V0IHRoZSBxdWV1ZSBJRCBiYXNlZCBvbiB0aGUgdHlwZSBvZiBjYXNlKi8KLy9Db250YWN0IHJlY29yZCB0eXBlIElEcwp6RGF0YS5jb250YWN0UmVjb3JkVHlwZUlkID0gIiI7IC8qTVNIMTcwOTE1IEluZGl2aWR1YWwqLwoKYWxlcnQoIkBAQCB6RGF0YT09PT0iK0pTT04uc3RyaW5naWZ5KHpEYXRhKSk7CmFsZXJ0KCJAQEAgY2xhc3NpZmljYXRpb249PT0iKyB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CmFsZXJ0KCJAQEAgY2xhc3NpZmljYXRpb249PT0iKyB6RGF0YVsiJmFwb3M7Y2xhc3NpZmljYXRpb24mYXBvczsiXSk7Cgp6RGF0YS5uYW1lRmlsZSA9IGZ1bmN0aW9uKGRvYykgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZKCk7CiAgICBkb2MubGFiZWw9WChkb2MsIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKStYKGRvYywiWF9aUEFQRVJfX0xhc3ROYW1lX19jIikrIiAtICIrWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikrIiAtICIrTU1kZFlZWVk7CiAgICBhbGVydCgiRVJTMTcwODI5IGRiSUQ9Iitkb2MuZGJJRCsiIGxhYmVsPSIrZG9jLmxhYmVsKTsKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgZG9jLmxhYmVsKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Ci8vTVNIMTcwODMxIGV4dHJhY3QgZGF0ZSBmb3JtYXQgZnJvbSB6RGF0YS5uYW1lRmlsZQp6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZID0gZnVuY3Rpb24oZG9jKSB7CiAgICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogICAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgICAvL01TSDE3MDkwNiBwYWQgZGF5IHdpdGggemVybwogICAgdmFyIGN1ckRheSA9IHRvZGF5LmdldERhdGUoKTsKICAgIC8vTVNIMTcwOTA2IHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsiIit0b2RheS5nZXREYXRlKCkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrKCIiKyhjdXJEYXkgPiA5ID8gY3VyRGF5KyIiIDogIjAiK2N1ckRheSkpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgLy9hbGVydCgiTU1kZFlZWVkgPT0gIiArIE1NZGRZWVlZKTsKICAgIHJldHVybiBNTWRkWVlZWTsKfTsKLy9DUk4xNzAzMjQgVE9ETyBkb2MuY2xvbmUoKSBkb25lIHJpZ2h0Owp6RGF0YS5jbG9uZSA9IGZ1bmN0aW9uKGRvYykgewogICAgdmFyIGRvYzAgPSBbXTsKICAgIGZvciAodmFyIGkgaW4gZG9jKSBkb2MwW2ldID0gZG9jW2ldOwogICAgcmV0dXJuIGRvYzA7Cn07Ci8vTVNIMTcxMDA1IGdldCBhbGwgdGhlIG9yZ3MgaW4gaGVyZQp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMgPSBmdW5jdGlvbihkb2MpIHsKICAgIGFsZXJ0KCIrKysgU1RBUlRJTkcgekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzICsrKyIpOwogICAgYWxlcnQoIkBAQCBkb2MuZGVsaXZlcmVkVG8gPSAiICsgZG9jLmRlbGl2ZXJlZFRvKTsKICAgIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDYzNCIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2MzMiKSA+IC0xIAogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMDQzIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTAzNyIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTAxMyIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODIzNTY1OTciKSA+IC0xIAogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMjc0IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTEwNiIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1MzMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg5NDgyNTMzIikgPiAtMSkgeyAvL2FiYnZpZSBQQVAgZmF4IGxpbmVzIC8vRVJTNzA0MjEgaW5kZXhPZiBpcyBzYWZlciAjMzY0MTEKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJQQVAiOwogICAgICAgIAogICAgfQogICAgZWxzZSBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NDYiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjM4IikgPiAtMSAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY3MCIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2ODMiKSA+IC0xIAogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjYyIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDQ2MyIpID4gLTEgCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2ODYiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMTA5IikgPiAtMQogICAgICAgIHx8ZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODk0ODI1NDQiKSA+IC0xIHx8ZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjE2Nzg5NDgyNTQ0IikgPiAtMSkgeyAvL2FiYnZpZSBSSC1JbW11bm9sb2d5IGZheCBsaW5lcwogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIlJILUltbXVub2xvZ3kiOyAKICAgIH0KICAgIGVsc2UgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNDg3IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDQ4OSIpID4gLTEgCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA1MDIiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNTA2IikgPiAtMSAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDUxMSIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA0OTQiKSA+IC0xCiAgICAgICAgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODk5ODkiKSA+IC0xIHx8ZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjE2Nzg5NDg5OTg5IikgPiAtMSkgeyAvL2FiYnZpZSBDb21wbGV0ZSBJbnRha2UgKFNreXJpemkpIChSaXNhbmtpenVtYWIpIGZheCBsaW5lcwogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIkFSQ0MiOyAgLy9BTjIwMTkwMzE1IHRoaXMgaXMgQVJDQyAtIHRoaW5rIHdlIGFyZSBzdGlsbCBtaXNzaW5nIDIgbnVtYmVycyBzaW5jZSB3ZSBvbmx5IGhhdmUgNgogICAgICAgIAogICAgfQogICAgZWxzZSBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NTUiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjI2IikgPiAtMSAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY3NCIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2ODUiKSA+IC0xIAogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjY3IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY1MCIpID4gLTEgCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2OTAiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMTE3IikgPiAtMQogICAgICAgIHx8ZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjE2Nzg5NDgyNTQ5IikgPiAtMSB8fGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIxNjc4OTQ4MjU0OSIpID4gLTEpIHsgLy9hYmJ2aWUgQ29tcGxldGUgSW50YWtlIChTa3lyaXppKSAoUmlzYW5raXp1bWFiKSBmYXggbGluZXMKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJDb21wbGV0ZSBJbW11bm9sb2d5IjsgIC8vQU4yMDE5MDIyNiB0aGlzIGlzIHRoZSBDb21wbGV0ZSBJbW11bm9sb2d5IHByb2dyYW0gKFNreXJpemkpIChSaXNhbmtpenVtYWIpCiAgICB9CiAgICBlbHNlIHsKICAgICAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSBkb2MuZGVsaXZlcmVkVG87IC8vRVJTMTcwNjI2CiAgICB9CiAgICBhbGVydCgiKysrIEVORElORyB6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMgKysrIik7CiAgICBhbGVydCgiQEBAIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIiArIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgICAgICAKfQogICAgekRhdGEuZ2VuZXJhdGVUaWZmID0gdHJ1ZTsgLy8gVXBkYXRlZCB0byBnZW5lcmF0ZSB0aWZmIFBWMDIyNTE4Ci8qIFRoaXMgZnVuY3Rpb24gbmVlZHMgdG8gYmUgYWRkZWQgdG8gZXZlcnkgcnVsZSB0byBoZWxwIGFzc3VyZSB0aGF0IHJ1bGVzIGRvIG5vdCBnZXQgYWNjaWRlbnRhbGx5IHRyaWdnZXJlZCAqLwovKiBBZGQgdGhpcyBmdW5jdGlvbmFsaXR5IHRvIHRoZSBydWxlcyBlbmdpbmUgaXRzZWxmPyAqLwp6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24gPSBmdW5jdGlvbihkb2MsdHJpZ2dlckZpZWxkKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKHRyaWdnZXJGaWVsZCwgIiIpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9Owp6RGF0YS5pbml0aWFsaXplU3RhY2sgPSBmdW5jdGlvbihkb2MsIHN0YWNrRm9sZGVyLCBzdGFja0lkKSB7IC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogICAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgICB2YXIgZmluYWxSb290Rm9sZGVyID0gekRhdGEuY2xhc3NpZmljYXRpb24rIi1BcmNoaXZlIjsgLy9iYXRlcyBvZiB0aGUgQXJjaGl2ZSBmb2xkZXIKICAgIHZhciB5eXl5TU1Gb2xkZXJOYW1lID0gdG9kYXkuZ2V0RnVsbFllYXIoKSArIChjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCk7CiAgICB2YXIgeXl5eU1NRm9sZGVyID0gZmluYWxSb290Rm9sZGVyICsgIi0iICsgeXl5eU1NRm9sZGVyTmFtZTsKICAgIGFsZXJ0KCJAQEAgc3RhY2tGb2xkZXIgaXMgLSAiICsgc3RhY2tGb2xkZXIpOwogICAgYWxlcnQoIkBAQCBmaW5hbFJvb3RGb2xkZXIgaXMgLSAiICsgZmluYWxSb290Rm9sZGVyKTsKICAgIGFsZXJ0KCJAQEAgeXlNTUZvbGRlciBpcyAtICIgKyB5eXl5TU1Gb2xkZXIpOwogICAgYWxlcnQoIkBAQCBjcmVhdGluZyBuZXcgc3RhY2sgZGVzdGluYWlvbiBmb2xkZXIgd2l0aCBuYW1lIC0gIiArIHN0YWNrRm9sZGVyKTsKICAgIC8qIFJlZnJlc2ggdGhlIGN1cnJlbnQgZm9sZGVyICovCiAgICByZWxvYWRCeUlkKGRvYywgWChkb2MsIlhfY3VyRm9sZGVyIikpOwogICAgLyogc2FtZSB2YWx1ZSBmb3IgQkFURVMgYW5kIGxhYmVsICovCiAgICAvKiBUaGUgZm9sZGVyIHN0cnVjdHVyZSB3aWxsIGxvb2sgbGlrZSB0aGlzOiAvMjAxNjA4LzNDWDNDWC8xMjM0NTY3ODktU1RBQ0sgKi8KICAgIGNyZWF0ZUZvbGRlcihkb2MsIGZpbmFsUm9vdEZvbGRlciwgeXl5eU1NRm9sZGVyLCB5eXl5TU1Gb2xkZXJOYW1lKTsKICAgIGNyZWF0ZUZvbGRlcihkb2MsIHl5eXlNTUZvbGRlciwgc3RhY2tGb2xkZXIsIHN0YWNrRm9sZGVyKTsKICAgIGFsZXJ0KCJAQEBAIE1vdmluZyB0aGUgc3RhY2sgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwogICAgbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhJbml0aWFsaXplZCIsICJ0cnVlIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzdGFja0lkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBkb2Mua2JEYXRhLmdyb3VwSUQuc3Vic3RyaW5nKDEpICsgIi0iICsgc3RhY2tJZCArICItU1RBQ0siKTsKICAgIC8qIFN0YWNrIExhYmVsbGluZyBDaGFuZ2UgKi8KICAgIHZhciBkdFN0YW1wID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSk7CiAgICAvKiBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwiU3RhY2sgLSAiICsgZHRTdGFtcCk7ICovCiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07CnpEYXRhLmNvdW50UGFnZXMgPSBmdW5jdGlvbihkb2MsIHBhZ2VSYW5nZTIpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIC8vTVNIMTcxMDI3IGRlYnVnZ2luZwogICAgYWxlcnQoInpEYXRhLmNvdW50UGFnZXMgcGFnZVJhbmdlMiA9ICIgKyBwYWdlUmFuZ2UyKTsKICAgIHZhciBwYWdlcyA9IHBhZ2VSYW5nZTIuc3BsaXQoIiwiKTsKICAgIGlmICghcGFnZXMpIHBhZ2VzPVtwYWdlUmFuZ2UyXTsKICAgIGFsZXJ0KCJ6RGF0YS5jb3VudFBhZ2VzIHBhZ2VzID0gIiArIHBhZ2VzKTsKICAgIHJldHVybiBwYWdlcy5sZW5ndGg7Cn07Ci8vTVNIMTcwODI4CmlmICgxPT0xKSB7IC8vRVJTMTcwODA1IGdldCB0aGUgZGF0YSBmcm9tIHRoZSBEZXBsb3ltZW50SW5mbwovL0NSTjE5MDcyNCBSZXdvcmtpbmcgY29kZSB0byB3b3JrIHdpdGggbmV3IHJ1bGVzIGVuZ2luZS4gVGhlIHdheSBpdCB3YXMgYmVpbmcgd2FzIGEgc2VjdXJpdHkgaG9sZSBhbnl3YXkuCi8qCiAgICAvL2FsZXJ0KCJFUlMxNzA3MjUgREk9Iitkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKTsKICAgIHZhciBjcz0oZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbysiIik7IC8vbm90IFsiQnVzaW5lc3NfUHJvY2Vzc19fYyJdOwogICAgLy9hbGVydCgiRVJTMTcwODA1IGNzPSIrY3MpOwogICAgaWYgKGNzKSB7CiAgICAgICAgaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpPi0xKSBjcz1YKGRvYywiekN1c3RvbVNldHRpbmdzIixjcyk7CiAgICAgICAgaWYgKGNzICE9PSAiIikgZXZhbChjcyk7CiAgICAgICAgLy9NU0gxNzA4MjggYWxlcnQoIkVSUzE3MDgwNSBIQUNLIGZvciAiK3pEYXRhLkEzNjBJbmNvbWluZyk7CiAgICB9CiovICAgCiAgICAvL2FsZXJ0KCJFUlMxNzA3MjUgREk9Iitkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKTsKICAgIHZhciBjcyA9IFhEZXBsb3ltZW50SW5mbyhkb2MsICJCdXNpbmVzc19Qcm9jZXNzX19jIik7CiAgICBhbGVydCgiQEBAIGNzPSIrY3MpOwogICAgaWYgKGNzKSB7CiAgICAgICAgaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpPi0xKSB7IGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsgfQogICAgICAgIGlmIChjcyAhPT0gIiIpIHsgZXZhbChjcyk7IH0KICAgICAgICAvL01TSDE3MDgyOCBhbGVydCgiRVJTMTcwODA1IEhBQ0sgZm9yICIrekRhdGEuQTM2MEluY29taW5nKTsKICAgIH0KfQp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMoZG9jKTsgLy9jYWxsIGZ1bmN0aW9uIHRvIHNldCB2YXJpYWJsZXMKLyogRU5EICovCg=="},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//global variables
zData.uploadDir = "integrationDir"; /*PV021618 installation directory for tiff */
zData.accountId = ""; /*MSH171128*/
zData.caseFields; /*array used to set the queue ID based on the type of case*/
//Contact record type IDs
zData.contactRecordTypeId = ""; /*MSH170915 Individual*/

alert("@@@ zData===="+JSON.stringify(zData));
alert("@@@ classification==="+ zData.classification);
alert("@@@ classification==="+ zData["&apos;classification&apos;"]);

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
//MSH170831 extract date format from zData.nameFile
zData.formatTodayMMddYYYY = function(doc) {
    var today = new Date();
    var curMonth = today.getMonth() + 1;
    //MSH170906 pad day with zero
    var curDay = today.getDate();
    //MSH170906 var MMddYYYY =  (""+(curMonth > 9 ? curMonth+"" : "0"+curMonth)+""+today.getDate()+""+today.getFullYear());
    var MMddYYYY =  (""+(curMonth > 9 ? curMonth+"" : "0"+curMonth)+(""+(curDay > 9 ? curDay+"" : "0"+curDay))+""+today.getFullYear());
    //alert("MMddYYYY == " + MMddYYYY);
    return MMddYYYY;
};
//CRN170324 TODO doc.clone() done right;
zData.clone = function(doc) {
    var doc0 = [];
    for (var i in doc) doc0[i] = doc[i];
    return doc0;
};
//MSH171005 get all the orgs in here
zData.setGlobalVariables = function(doc) {
    alert("+++ STARTING zData.setGlobalVariables +++");
    alert("@@@ doc.deliveredTo = " + doc.deliveredTo);
    if (doc.deliveredTo.indexOf("6787270634") > -1 || doc.deliveredTo.indexOf("6787270633") > -1 
        || doc.deliveredTo.indexOf("6787271043") > -1 || doc.deliveredTo.indexOf("6787271037") > -1
        || doc.deliveredTo.indexOf("6787271013") > -1 || doc.deliveredTo.indexOf("6782356597") > -1 
        || doc.deliveredTo.indexOf("6787271274") > -1 || doc.deliveredTo.indexOf("6787271106") > -1
        || doc.deliveredTo.indexOf("16789482533") > -1 || doc.deliveredTo.indexOf("6789482533") > -1) { //abbvie PAP fax lines //ERS70421 indexOf is safer #36411
        
        zData.classification = "PAP";
        
    }
    else if (doc.deliveredTo.indexOf("6787270646") > -1 || doc.deliveredTo.indexOf("6787270638") > -1 
        || doc.deliveredTo.indexOf("6787270670") > -1 || doc.deliveredTo.indexOf("6787270683") > -1 
        || doc.deliveredTo.indexOf("6787270662") > -1 || doc.deliveredTo.indexOf("6787270463") > -1 
        || doc.deliveredTo.indexOf("6787270686") > -1 || doc.deliveredTo.indexOf("6787271109") > -1
        ||doc.deliveredTo.indexOf("6789482544") > -1 ||doc.deliveredTo.indexOf("16789482544") > -1) { //abbvie RH-Immunology fax lines
        
        zData.classification = "RH-Immunology"; 
    }
    else if (doc.deliveredTo.indexOf("6787270487") > -1 || doc.deliveredTo.indexOf("6787270489") > -1 
        || doc.deliveredTo.indexOf("6787270502") > -1 || doc.deliveredTo.indexOf("6787270506") > -1 
        || doc.deliveredTo.indexOf("6787270511") > -1 || doc.deliveredTo.indexOf("6787270494") > -1
        ||doc.deliveredTo.indexOf("16789489989") > -1 ||doc.deliveredTo.indexOf("16789489989") > -1) { //abbvie Complete Intake (Skyrizi) (Risankizumab) fax lines
        
        zData.classification = "ARCC";  //AN20190315 this is ARCC - think we are still missing 2 numbers since we only have 6
        
    }
    else if (doc.deliveredTo.indexOf("6787270655") > -1 || doc.deliveredTo.indexOf("6787270626") > -1 
        || doc.deliveredTo.indexOf("6787270674") > -1 || doc.deliveredTo.indexOf("6787270685") > -1 
        || doc.deliveredTo.indexOf("6787270667") > -1 || doc.deliveredTo.indexOf("6787270650") > -1 
        || doc.deliveredTo.indexOf("6787270690") > -1 || doc.deliveredTo.indexOf("6787271117") > -1
        ||doc.deliveredTo.indexOf("16789482549") > -1 ||doc.deliveredTo.indexOf("16789482549") > -1) { //abbvie Complete Intake (Skyrizi) (Risankizumab) fax lines
        
        zData.classification = "Complete Immunology";  //AN20190226 this is the Complete Immunology program (Skyrizi) (Risankizumab)
    }
    else {
            zData.classification = doc.deliveredTo; //ERS170626
    }
    alert("+++ ENDING zData.setGlobalVariables +++");
    alert("@@@ zData.classification = " + zData.classification);
        
}
    zData.generateTiff = true; // Updated to generate tiff PV022518
/* This function needs to be added to every rule to help assure that rules do not get accidentally triggered */
/* Add this functionality to the rules engine itself? */
zData.clearTriggerCondition = function(doc,triggerField) {  //ERS170512 moved to library
    var arrOfPairs = [];
    arrOfPairs.push(triggerField, "");
    updateDB(doc,arrOfPairs);
};
zData.initializeStack = function(doc, stackFolder, stackId) { //ERS170512 moved to library
    var arrOfPairs = [];
    var today = new Date();
    var curMonth = today.getMonth() + 1;
    var finalRootFolder = zData.classification+"-Archive"; //bates of the Archive folder
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
    //MSH171027 debugging
    alert("zData.countPages pageRange2 = " + pageRange2);
    var pages = pageRange2.split(",");
    if (!pages) pages=[pageRange2];
    alert("zData.countPages pages = " + pages);
    return pages.length;
};
//MSH170828
if (1==1) { //ERS170805 get the data from the DeploymentInfo
//CRN190724 Reworking code to work with new rules engine.
/*
    //alert("ERS170725 DI="+doc.kbData.deploymentInfo);
    var cs=(doc.kbData.deploymentInfo+""); //not ["Business_Process__c"];
    //alert("ERS170805 cs="+cs);
    if (cs) {
        if (cs.indexOf("zCustomSettings")>-1) cs=X(doc,"zCustomSettings",cs);
        if (cs !== "") eval(cs);
        //MSH170828 alert("ERS170805 HACK for "+zData.A360Incoming);
    }
*/   
    //alert("ERS170725 DI="+doc.kbData.deploymentInfo);
    var cs = XDeploymentInfo(doc, "Business_Process__c");
    alert("@@@ cs="+cs);
    if (cs) {
        if (cs.indexOf("zCustomSettings")>-1) { cs=X(doc,"zCustomSettings",cs); }
        if (cs !== "") { eval(cs); }
        //MSH170828 alert("ERS170805 HACK for "+zData.A360Incoming);
    }
}
zData.setGlobalVariables(doc); //call function to set variables
/* END */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
