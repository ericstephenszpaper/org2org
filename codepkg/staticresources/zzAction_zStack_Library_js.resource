<!--
// Name: zStack Library
// Committer: sruthi.potru@zpaper.com
// Update: Added PSQAnew Fax numbers
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-02-11 00:46:35","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnVwbG9hZERpciA9ICJpbnRlZ3JhdGlvbkRpciI7IC8qUFYwMjE2MTggaW5zdGFsbGF0aW9uIGRpcmVjdG9yeSBmb3IgdGlmZiAqLwp6RGF0YS5hY2NvdW50SWQgPSAiIjsgLypNU0gxNzExMjgqLwp6RGF0YS5jYXNlRmllbGRzOyAvKmFycmF5IHVzZWQgdG8gc2V0IHRoZSBxdWV1ZSBJRCBiYXNlZCBvbiB0aGUgdHlwZSBvZiBjYXNlKi8KCi8vQ29udGFjdCByZWNvcmQgdHlwZSBJRHMKekRhdGEuY29udGFjdFJlY29yZFR5cGVJZCA9ICIiOyAvKk1TSDE3MDkxNSBJbmRpdmlkdWFsKi8KCmFsZXJ0KCJAQEAgekRhdGE9PT09IitKU09OLnN0cmluZ2lmeSh6RGF0YSkpOwphbGVydCgiQEBAIGNsYXNzaWZpY2F0aW9uPT09IisgekRhdGEuY2xhc3NpZmljYXRpb24pOwphbGVydCgiQEBAIGNsYXNzaWZpY2F0aW9uPT09IisgekRhdGFbIiZhcG9zO2NsYXNzaWZpY2F0aW9uJmFwb3M7Il0pOwoKekRhdGEubmFtZUZpbGUgPSBmdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgZG9jLmxhYmVsPVgoZG9jLCJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIikrWChkb2MsIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpKyIgLSAiK1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKyIgLSAiK01NZGRZWVlZOwogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwovL01TSDE3MDgzMSBleHRyYWN0IGRhdGUgZm9ybWF0IGZyb20gekRhdGEubmFtZUZpbGUKekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSA9IGZ1bmN0aW9uKGRvYykgewogICAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICAgIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogICAgLy9NU0gxNzA5MDYgcGFkIGRheSB3aXRoIHplcm8KICAgIHZhciBjdXJEYXkgPSB0b2RheS5nZXREYXRlKCk7CiAgICAvL01TSDE3MDkwNiB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrIiIrdG9kYXkuZ2V0RGF0ZSgpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKygiIisoY3VyRGF5ID4gOSA/IGN1ckRheSsiIiA6ICIwIitjdXJEYXkpKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIC8vYWxlcnQoIk1NZGRZWVlZID09ICIgKyBNTWRkWVlZWSk7CiAgICByZXR1cm4gTU1kZFlZWVk7Cn07Ci8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmUgPSBmdW5jdGlvbihkb2MpIHsKICAgIHZhciBkb2MwID0gW107CiAgICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXSA9IGRvY1tpXTsKICAgIHJldHVybiBkb2MwOwp9OwovL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzID0gZnVuY3Rpb24oZG9jKSB7CiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2MzQiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjMzIikgPiAtMSAvL2FiYnZpZSBQQVAgZmF4IGxpbmVzIC8vRVJTNzA0MjEgaW5kZXhPZiBpcyBzYWZlciAjMzY0MTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTA0MyIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzEwMzciKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzEwMTMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2NzgyMzU2NTk3IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMjc0IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTEwNiIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1MzMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg5NDgyNTMzIikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzQzIikgPiAtMSkgewogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIlBBUCI7CiAgICAgICAgCiAgICB9CiAgICBlbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY0NiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2MzgiKSA+IC0xIC8vYWJidmllIFJILUltbXVub2xvZ3kgZmF4IGxpbmVzCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NzAiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjgzIikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjYyIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDQ2MyIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY4NiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzExMDkiKSA+IC0xCiAgICAgICAgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4OTQ4MjU0NCIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1NDQiKSA+IC0xCiAgICAgICAgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM0NCIpID4gLTEpewogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIlJILUltbXVub2xvZ3kiOwogICAgfQogICAgZWxzZSBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA0ODciKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNDg5IikgPiAtMSAvL2FiYnZpZSBDb21wbGV0ZSBJbnRha2UgKFNreXJpemkpIChSaXNhbmtpenVtYWIpIGZheCBsaW5lcwogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNTAyIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDUwNiIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDUxMSIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA0OTQiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjE2Nzg5NDg5OTg5IikgPiAtMSB8fGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg5NDg5OTg5IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzQ5IikgPiAtMSkgewogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIkFSQ0MiOyAgLy9BTjIwMTkwMzE1IHRoaXMgaXMgQVJDQwoKICAgIH0KICAgIGVsc2UgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzM0IikgPiAtMSB8fGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzM3IikgPiAtMSAvL0FSQ0MgT3JpWCAvIFdvbWVuJ3MgSGVhbHRoIGxpbmUKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM0MSIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM1MCIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM2MCIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNTMiKSA+IC0xKSB7CiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiQVJDQyBPUklBSE5OIjsgIC8vQU4yMDE5MDMxNSB0aGlzIGlzIEFSQ0MgT1JJQUhOTiAvIFdvbWVuJ3MgSGVhbHRoCiAgICAgICAgCiAgICB9CgogICAgZWxzZSBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NTUiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjI2IikgPiAtMSAvL0NvbXBsZXRlIEludGFrZSBsaW5lICMxIChTa3lyaXppKSAoUmlzYW5raXp1bWFiKQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjc0IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY4NSIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY2NyIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NTAiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2OTAiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMTE3IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIxNjc4OTQ4MjU0OSIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1NDkiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNDUiKSA+IC0xCgkJCgkJfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NzYiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTc0IikgPiAtMSAvL0NvbXBsZXRlIEludGFrZSBsaW5lICMyIChwcm9ncmFtIHVua25vd24pCgkJfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NzMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTY2IikgPiAtMQoJCXx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTY5IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNDA0OTYxMTk2MyIpID4gLTEKCgkJfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NjEiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTY0IikgPiAtMSAvL0NvbXBsZXRlIEludGFrZSBsaW5lICMzIChwcm9ncmFtIHVua25vd24pCgkJfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NzUiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTY3IikgPiAtMQoJCXx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTcwIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNDA0OTYxMTk3MiIpID4gLTEpewogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIkNvbXBsZXRlIEltbXVub2xvZ3kiOyAgLy9BTjIwMTkwMjI2IHRoaXMgaXMgdGhlIENvbXBsZXRlIEltbXVub2xvZ3kgKEludGFrZSkgcHJvZ3JhbSAKICAgIH0KICAgICAgICBlbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM2MiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNjMiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNjQiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzY1IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzY2IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM1MiIpID4gLTEgKSB7IC8vYWJidmllIENvbXBsZXRlIEludGFrZSAoU2t5cml6aSkgKFJpc2Fua2l6dW1hYikgZmF4IGxpbmVzCiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiSW50YWtlIE9SSUFITk4iOyAgLy9BTjIwMjAwNDA4IHRoaXMgaXMgdGhlIEludGFrZSBXb21lbidzIEhlYWx0aCAvIE9yaVggLyBPUklBSE5OIHByb2dyYW0KICAgIH0KICAgIAoJZWxzZSBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NjIiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTY1IikgPiAtMSAvL2FiYnZpZSBDb21wbGV0ZSBJbnRha2UgKFNreXJpemkpIChSaXNhbmtpenVtYWIpIGZheCBsaW5lcwogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTc3IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNDA0OTYxMTk2OCIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNDA0OTYxMTk3MSIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NDkiKSA+IC0xKSB7CiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiT25jb2xvZ3kgQXV0aCI7ICAvL0FOMjAyMDExMjAgdGhpcyBpcyBPbmNvbG9neSBBdXRob3JpemF0aW9uIC0gVmFsZXQgTGluZSAzCiAgICAKICAgICAgICB9CgkKICAgIGVsc2UgewogICAgICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9IGRvYy5kZWxpdmVyZWRUbzsgLy9FUlMxNzA2MjYKICAgIH0KICAgIGFsZXJ0KCIrKysgRU5ESU5HIHpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyArKysiKTsKICAgIGFsZXJ0KCJAQEAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiICsgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgICAgIAp9OwoKICAgIHpEYXRhLmdlbmVyYXRlVGlmZiA9IHRydWU7IC8vIFVwZGF0ZWQgdG8gZ2VuZXJhdGUgdGlmZiBQVjAyMjUxOAovKiBUaGlzIGZ1bmN0aW9uIG5lZWRzIHRvIGJlIGFkZGVkIHRvIGV2ZXJ5IHJ1bGUgdG8gaGVscCBhc3N1cmUgdGhhdCBydWxlcyBkbyBub3QgZ2V0IGFjY2lkZW50YWxseSB0cmlnZ2VyZWQgKi8KLyogQWRkIHRoaXMgZnVuY3Rpb25hbGl0eSB0byB0aGUgcnVsZXMgZW5naW5lIGl0c2VsZj8gKi8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uID0gZnVuY3Rpb24oZG9jLHRyaWdnZXJGaWVsZCkgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh0cmlnZ2VyRmllbGQsICIiKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKekRhdGEuaW5pdGlhbGl6ZVN0YWNrID0gZnVuY3Rpb24oZG9jLCBzdGFja0ZvbGRlciwgc3RhY2tJZCkgeyAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICAgIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogICAgdmFyIGZpbmFsUm9vdEZvbGRlciA9IHpEYXRhLmNsYXNzaWZpY2F0aW9uKyItQXJjaGl2ZSI7IC8vYmF0ZXMgb2YgdGhlIEFyY2hpdmUgZm9sZGVyCiAgICB2YXIgeXl5eU1NRm9sZGVyTmFtZSA9IHRvZGF5LmdldEZ1bGxZZWFyKCkgKyAoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpOwogICAgdmFyIHl5eXlNTUZvbGRlciA9IGZpbmFsUm9vdEZvbGRlciArICItIiArIHl5eXlNTUZvbGRlck5hbWU7CiAgICBhbGVydCgiQEBAIHN0YWNrRm9sZGVyIGlzIC0gIiArIHN0YWNrRm9sZGVyKTsKICAgIGFsZXJ0KCJAQEAgZmluYWxSb290Rm9sZGVyIGlzIC0gIiArIGZpbmFsUm9vdEZvbGRlcik7CiAgICBhbGVydCgiQEBAIHl5TU1Gb2xkZXIgaXMgLSAiICsgeXl5eU1NRm9sZGVyKTsKICAgIGFsZXJ0KCJAQEAgY3JlYXRpbmcgbmV3IHN0YWNrIGRlc3RpbmFpb24gZm9sZGVyIHdpdGggbmFtZSAtICIgKyBzdGFja0ZvbGRlcik7CiAgICAvKiBSZWZyZXNoIHRoZSBjdXJyZW50IGZvbGRlciAqLwogICAgcmVsb2FkQnlJZChkb2MsIFgoZG9jLCJYX2N1ckZvbGRlciIpKTsKICAgIC8qIHNhbWUgdmFsdWUgZm9yIEJBVEVTIGFuZCBsYWJlbCAqLwogICAgLyogVGhlIGZvbGRlciBzdHJ1Y3R1cmUgd2lsbCBsb29rIGxpa2UgdGhpczogLzIwMTYwOC8zQ1gzQ1gvMTIzNDU2Nzg5LVNUQUNLICovCiAgICBjcmVhdGVGb2xkZXIoZG9jLCBmaW5hbFJvb3RGb2xkZXIsIHl5eXlNTUZvbGRlciwgeXl5eU1NRm9sZGVyTmFtZSk7CiAgICBjcmVhdGVGb2xkZXIoZG9jLCB5eXl5TU1Gb2xkZXIsIHN0YWNrRm9sZGVyLCBzdGFja0ZvbGRlcik7CiAgICBhbGVydCgiQEBAQCBNb3ZpbmcgdGhlIHN0YWNrIGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKICAgIG1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4SW5pdGlhbGl6ZWQiLCAidHJ1ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc3RhY2tJZCk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgZG9jLmtiRGF0YS5ncm91cElELnN1YnN0cmluZygxKSArICItIiArIHN0YWNrSWQgKyAiLVNUQUNLIik7CiAgICAvKiBTdGFjayBMYWJlbGxpbmcgQ2hhbmdlICovCiAgICB2YXIgZHRTdGFtcCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UpOwogICAgLyogYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIlN0YWNrIC0gIiArIGR0U3RhbXApOyAqLwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9OwoKekRhdGEuY291bnRQYWdlcyA9IGZ1bmN0aW9uKGRvYywgcGFnZVJhbmdlMikgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgLy9NU0gxNzEwMjcgZGVidWdnaW5nCiAgICBhbGVydCgiekRhdGEuY291bnRQYWdlcyBwYWdlUmFuZ2UyID0gIiArIHBhZ2VSYW5nZTIpOwogICAgcGFnZVJhbmdlMj1wYWdlUmFuZ2UyLnJlcGxhY2UoInUiLCIiKS5yZXBsYWNlKCJyIiwiIikucmVwbGFjZSgiYyIsIiIpOyAvL0VSUzIwMDcxMSAjNzI0MzMKICAgIHZhciBwYWdlcyA9IHBhZ2VSYW5nZTIuc3BsaXQoIiwiKTsKICAgIGlmICghcGFnZXMpIHBhZ2VzPVtwYWdlUmFuZ2UyXTsKICAgIGFsZXJ0KCJ6RGF0YS5jb3VudFBhZ2VzIHBhZ2VzID0gIiArIHBhZ2VzKTsKICAgIHJldHVybiBwYWdlcy5sZW5ndGg7Cn07Cgp6RGF0YS5hZGRTdGFnZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxzdGFnZSkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMgLy9FUlMyMDA3MTEgIzcyNDMzIFRPRE8gcmVjb25jaWxlIGxpYnJhcnkKCWlmICghc3RhZ2UpIHsKICAgIAl2YXIgYmE9ZG9jLlgoIlhfYnV0dG9uQWN0aW9uIikrImVkIjsKICAgIAliYT1iYS5zdWJzdHJpbmcoMStiYS5sYXN0SW5kZXhPZigiICIpKTsKICAgIAlzdGFnZT1iYTsgaWYgKHN0YWdlLmxlbmd0aCgpPDQpIHtzdGFnZT0iUmVjZWl2ZWQiO30KICAgIH0gZWxzZSB7CiAgICAgICAgYmE9c3RhZ2U7IC8vRVJTMTkwODAyCiAgICB9CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKICAgIHJldHVybiBhcnJPZlBhaXJzOwp9OyAvL0VSUzIwMDcxMSAjNzI0MzMgdGhpcyA7IG1hdHRlcnMgdG8gS0IgY29yZSBidXQgbm90IHRvIHppcHBpCgp6RGF0YS5nZXRTdGFja0lkPWZ1bmN0aW9uKGRvYyxpZHMsc3RhY2tUeXBlTmFtZSkgeyAvL0VSUzE5MDYxNyBmcm9tIFVOTE9DSyAvL1RPRE8gRVJTMTkwNjI0IGZpbmQgc3RhY2tUeXBlTmFtZSBuZWVkZWQgZG9jIC8vRVJTMjAwNzExICM3MjQzMwogICAgaWYgKCFpZHMgfHwgaWRzPT09IiIpIGlkcyA9IFgoZG9jLCJYX2F0dGFjaGVkVG8iKTsgLy9FUlMxOTA2MTggVE9ETyBjb25maXJtIGRvYyBpbiBzY29wZQogICAgaWRzID0gaWRzICsgIiI7CglpZiAoaWRzLmxhc3RJbmRleE9mKCcvJykgPj0gMCkgeyAvL0VSUzE5MDYxOCBnZXQgZmlyc3QgSWQgaWYgLyBpcyBwYXNzZWQgaW4KCQlpZHMgPSBpZHMuc3Vic3RyaW5nKGlkcy5sYXN0SW5kZXhPZignLycpKzEpOwoJCWlmIChpZHMuaW5kZXhPZignLCcpID49IDApIHsgaWRzID0gaWRzLnN1YnN0cmluZygwLCBpZHMuaW5kZXhPZignLCcpKTsgfQoJCXJldHVybiBpZHM7Cgl9CiAgICAKICAgIGlmICghc3RhY2tUeXBlTmFtZSkgc3RhY2tUeXBlTmFtZT0iWlBBUEVSX196U3RhY2tfX2MiOyAvL0VSUzE5MDYyNCBndWVzc2luZyBUT0RPIGZpbmQgZXhhbXBsZXMKICAgIHZhciBwYXJ0cyA9IGlkcy5zcGxpdCgnLCcpOwogICAgZm9yICh2YXIgaT0wOyBpPHBhcnRzLmxlbmd0aDsgaSsrKSB7IC8vZ2V0IGthc3QgSWQgaWYgLyBpcyBOT1QgcGFzc2VkIGluCiAgICAgICAgdmFyIGlkID0gcGFydHNbaV0udHJpbSgpOwogICAgICAgIGlmIChpZC5sZW5ndGggPiAwKSB7CiAgICAgICAgICAgIGFsZXJ0KCJAQEBAIHB1bGxpbmcgdHlwZSBmb3IgaWQ6ICIgKyBpZCk7CiAgICAgICAgICAgIGlmIChzdGFja1R5cGVOYW1lID09PSBnZXRTRlR5cGUoZG9jLCBpZCkpIHsKICAgICAgICAgICAgICAgIHJldHVybiBpZDsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KICAgIHJldHVybiBudWxsOwp9OwoKLy9FUlMxNzA4MDUgZ2V0IHRoZSBkYXRhIGZyb20gdGhlIERlcGxveW1lbnRJbmZvCi8vQ1JOMTkwNzI0IFJld29ya2luZyBjb2RlIHRvIHdvcmsgd2l0aCBuZXcgcnVsZXMgZW5naW5lLgp2YXIgY3MgPSBYRGVwbG95bWVudEluZm8oZG9jLCAiQnVzaW5lc3NfUHJvY2Vzc19fYyIpOwphbGVydCgiQEBAIGNzPSIrY3MpOwppZiAoY3MpIHsKCWlmIChjcy5pbmRleE9mKCJ6Q3VzdG9tU2V0dGluZ3MiKT4tMSkgeyBjcz1YKGRvYywiekN1c3RvbVNldHRpbmdzIixjcyk7IH0KCWlmIChjcyAhPT0gIiIpIHsgZXZhbChjcyk7IH0KCS8vTVNIMTcwODI4IGFsZXJ0KCJFUlMxNzA4MDUgSEFDSyBmb3IgIit6RGF0YS5BMzYwSW5jb21pbmcpOwp9CnpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyhkb2MpOyAvL2NhbGwgZnVuY3Rpb24gdG8gc2V0IHZhcmlhYmxlcwovKiBFTkQgKi8="},"ordinal":0}

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
    if (doc.deliveredTo.indexOf("6787270634") > -1 || doc.deliveredTo.indexOf("6787270633") > -1 //abbvie PAP fax lines //ERS70421 indexOf is safer #36411
        || doc.deliveredTo.indexOf("6787271043") > -1 || doc.deliveredTo.indexOf("6787271037") > -1
        || doc.deliveredTo.indexOf("6787271013") > -1 || doc.deliveredTo.indexOf("6782356597") > -1
        || doc.deliveredTo.indexOf("6787271274") > -1 || doc.deliveredTo.indexOf("6787271106") > -1
        || doc.deliveredTo.indexOf("16789482533") > -1 || doc.deliveredTo.indexOf("6789482533") > -1
        || doc.deliveredTo.indexOf("3147103343") > -1) {
        
        zData.classification = "PAP";
        
    }
    else if (doc.deliveredTo.indexOf("6787270646") > -1 || doc.deliveredTo.indexOf("6787270638") > -1 //abbvie RH-Immunology fax lines
        || doc.deliveredTo.indexOf("6787270670") > -1 || doc.deliveredTo.indexOf("6787270683") > -1
        || doc.deliveredTo.indexOf("6787270662") > -1 || doc.deliveredTo.indexOf("6787270463") > -1
        || doc.deliveredTo.indexOf("6787270686") > -1 || doc.deliveredTo.indexOf("6787271109") > -1
        ||doc.deliveredTo.indexOf("6789482544") > -1 ||doc.deliveredTo.indexOf("16789482544") > -1
        ||doc.deliveredTo.indexOf("3147103344") > -1){
        
        zData.classification = "RH-Immunology";
    }
    else if (doc.deliveredTo.indexOf("6787270487") > -1 || doc.deliveredTo.indexOf("6787270489") > -1 //abbvie Complete Intake (Skyrizi) (Risankizumab) fax lines
        || doc.deliveredTo.indexOf("6787270502") > -1 || doc.deliveredTo.indexOf("6787270506") > -1
        || doc.deliveredTo.indexOf("6787270511") > -1 || doc.deliveredTo.indexOf("6787270494") > -1
        || doc.deliveredTo.indexOf("16789489989") > -1 ||doc.deliveredTo.indexOf("6789489989") > -1
        || doc.deliveredTo.indexOf("3147103349") > -1) {
        
        zData.classification = "ARCC";  //AN20190315 this is ARCC

    }
    else if (doc.deliveredTo.indexOf("3147103334") > -1 ||doc.deliveredTo.indexOf("3147103337") > -1 //ARCC OriX / Women's Health line
        || doc.deliveredTo.indexOf("3147103341") > -1 ||doc.deliveredTo.indexOf("3147103350") > -1
        || doc.deliveredTo.indexOf("3147103360") > -1 || doc.deliveredTo.indexOf("3147103353") > -1) {
        
        zData.classification = "ARCC ORIAHNN";  //AN20190315 this is ARCC ORIAHNN / Women's Health
        
    }

    else if (doc.deliveredTo.indexOf("6787270655") > -1 || doc.deliveredTo.indexOf("6787270626") > -1 //Complete Intake line #1 (Skyrizi) (Risankizumab)
        || doc.deliveredTo.indexOf("6787270674") > -1 || doc.deliveredTo.indexOf("6787270685") > -1
        || doc.deliveredTo.indexOf("6787270667") > -1 || doc.deliveredTo.indexOf("6787270650") > -1
        || doc.deliveredTo.indexOf("6787270690") > -1 || doc.deliveredTo.indexOf("6787271117") > -1
        || doc.deliveredTo.indexOf("16789482549") > -1 ||doc.deliveredTo.indexOf("16789482549") > -1
        || doc.deliveredTo.indexOf("3147103345") > -1
		
		|| doc.deliveredTo.indexOf("4049611976") > -1 || doc.deliveredTo.indexOf("4049611974") > -1 //Complete Intake line #2 (program unknown)
		|| doc.deliveredTo.indexOf("4049611973") > -1 || doc.deliveredTo.indexOf("4049611966") > -1
		|| doc.deliveredTo.indexOf("4049611969") > -1 || doc.deliveredTo.indexOf("4049611963") > -1

		|| doc.deliveredTo.indexOf("4049611961") > -1 || doc.deliveredTo.indexOf("4049611964") > -1 //Complete Intake line #3 (program unknown)
		|| doc.deliveredTo.indexOf("4049611975") > -1 || doc.deliveredTo.indexOf("4049611967") > -1
		|| doc.deliveredTo.indexOf("4049611970") > -1 || doc.deliveredTo.indexOf("4049611972") > -1){
        
        zData.classification = "Complete Immunology";  //AN20190226 this is the Complete Immunology (Intake) program 
    }
        else if (doc.deliveredTo.indexOf("3147103362") > -1 || doc.deliveredTo.indexOf("3147103363") > -1
        || doc.deliveredTo.indexOf("3147103364") > -1 || doc.deliveredTo.indexOf("3147103365") > -1
        || doc.deliveredTo.indexOf("3147103366") > -1 || doc.deliveredTo.indexOf("3147103352") > -1 ) { //abbvie Complete Intake (Skyrizi) (Risankizumab) fax lines
        
        zData.classification = "Intake ORIAHNN";  //AN20200408 this is the Intake Women's Health / OriX / ORIAHNN program
    }
    
	else if (doc.deliveredTo.indexOf("4049611962") > -1 || doc.deliveredTo.indexOf("4049611965") > -1 //abbvie Complete Intake (Skyrizi) (Risankizumab) fax lines
        || doc.deliveredTo.indexOf("4049611977") > -1 || doc.deliveredTo.indexOf("4049611968") > -1
        || doc.deliveredTo.indexOf("4049611971") > -1 || doc.deliveredTo.indexOf("4049611949") > -1) {
        
        zData.classification = "Oncology Auth";  //AN20201120 this is Oncology Authorization - Valet Line 3
    
        }
	
    else {
            zData.classification = doc.deliveredTo; //ERS170626
    }
    alert("+++ ENDING zData.setGlobalVariables +++");
    alert("@@@ zData.classification = " + zData.classification);
        
};

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
    pageRange2=pageRange2.replace("u","").replace("r","").replace("c",""); //ERS200711 #72433
    var pages = pageRange2.split(",");
    if (!pages) pages=[pageRange2];
    alert("zData.countPages pages = " + pages);
    return pages.length;
};

zData.addStage=function(doc,arrOfPairs,stage) { //ERS170909 #40592 for zDocSet statuses //ERS200711 #72433 TODO reconcile library
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
}; //ERS200711 #72433 this ; matters to KB core but not to zippi

zData.getStackId=function(doc,ids,stackTypeName) { //ERS190617 from UNLOCK //TODO ERS190624 find stackTypeName needed doc //ERS200711 #72433
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

//ERS170805 get the data from the DeploymentInfo
//CRN190724 Reworking code to work with new rules engine.
var cs = XDeploymentInfo(doc, "Business_Process__c");
alert("@@@ cs="+cs);
if (cs) {
	if (cs.indexOf("zCustomSettings")>-1) { cs=X(doc,"zCustomSettings",cs); }
	if (cs !== "") { eval(cs); }
	//MSH170828 alert("ERS170805 HACK for "+zData.A360Incoming);
}
zData.setGlobalVariables(doc); //call function to set variables
/* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
