<!--
// Name: zStack Library
// Committer: andrew@zpaper.com
// Update: update static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-12-21 18:11:39","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnVwbG9hZERpciA9ICJpbnRlZ3JhdGlvbkRpciI7IC8qUFYwMjE2MTggaW5zdGFsbGF0aW9uIGRpcmVjdG9yeSBmb3IgdGlmZiAqLwp6RGF0YS5hY2NvdW50SWQgPSAiIjsgLypNU0gxNzExMjgqLwp6RGF0YS5jYXNlRmllbGRzOyAvKmFycmF5IHVzZWQgdG8gc2V0IHRoZSBxdWV1ZSBJRCBiYXNlZCBvbiB0aGUgdHlwZSBvZiBjYXNlKi8KCi8vQ29udGFjdCByZWNvcmQgdHlwZSBJRHMKekRhdGEuY29udGFjdFJlY29yZFR5cGVJZCA9ICIiOyAvKk1TSDE3MDkxNSBJbmRpdmlkdWFsKi8KCmFsZXJ0KCJAQEAgekRhdGE9PT09IitKU09OLnN0cmluZ2lmeSh6RGF0YSkpOwphbGVydCgiQEBAIGNsYXNzaWZpY2F0aW9uPT09IisgekRhdGEuY2xhc3NpZmljYXRpb24pOwphbGVydCgiQEBAIGNsYXNzaWZpY2F0aW9uPT09IisgekRhdGFbIiZhcG9zO2NsYXNzaWZpY2F0aW9uJmFwb3M7Il0pOwoKekRhdGEubmFtZUZpbGUgPSBmdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgZG9jLmxhYmVsPVgoZG9jLCJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIikrWChkb2MsIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpKyIgLSAiK1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKyIgLSAiK01NZGRZWVlZOwogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwovL01TSDE3MDgzMSBleHRyYWN0IGRhdGUgZm9ybWF0IGZyb20gekRhdGEubmFtZUZpbGUKekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSA9IGZ1bmN0aW9uKGRvYykgewogICAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICAgIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogICAgLy9NU0gxNzA5MDYgcGFkIGRheSB3aXRoIHplcm8KICAgIHZhciBjdXJEYXkgPSB0b2RheS5nZXREYXRlKCk7CiAgICAvL01TSDE3MDkwNiB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrIiIrdG9kYXkuZ2V0RGF0ZSgpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKygiIisoY3VyRGF5ID4gOSA/IGN1ckRheSsiIiA6ICIwIitjdXJEYXkpKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIC8vYWxlcnQoIk1NZGRZWVlZID09ICIgKyBNTWRkWVlZWSk7CiAgICByZXR1cm4gTU1kZFlZWVk7Cn07Ci8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmUgPSBmdW5jdGlvbihkb2MpIHsKICAgIHZhciBkb2MwID0gW107CiAgICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXSA9IGRvY1tpXTsKICAgIHJldHVybiBkb2MwOwp9OwovL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzID0gZnVuY3Rpb24oZG9jKSB7CiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2MzQiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjMzIikgPiAtMSAvL2FiYnZpZSBQQVAgZmF4IGxpbmVzIC8vRVJTNzA0MjEgaW5kZXhPZiBpcyBzYWZlciAjMzY0MTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTA0MyIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzEwMzciKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzEwMTMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2NzgyMzU2NTk3IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMjc0IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTEwNiIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1MzMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg5NDgyNTMzIikgPiAtMSkgewogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIlBBUCI7CiAgICAgICAgCiAgICB9CiAgICBlbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY0NiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2MzgiKSA+IC0xIC8vYWJidmllIFJILUltbXVub2xvZ3kgZmF4IGxpbmVzCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NzAiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjgzIikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjYyIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDQ2MyIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY4NiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzExMDkiKSA+IC0xCiAgICAgICAgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4OTQ4MjU0NCIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1NDQiKSA+IC0xKXsKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJSSC1JbW11bm9sb2d5IjsKICAgIH0KICAgIGVsc2UgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNDg3IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDQ4OSIpID4gLTEgLy9hYmJ2aWUgQ29tcGxldGUgSW50YWtlIChTa3lyaXppKSAoUmlzYW5raXp1bWFiKSBmYXggbGluZXMKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDUwMiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA1MDYiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA1MTEiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNDk0IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIxNjc4OTQ4OTk4OSIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4OTQ4OTk4OSIpID4gLTEpIHsKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJBUkNDIjsgIC8vQU4yMDE5MDMxNSB0aGlzIGlzIEFSQ0MKCiAgICB9CiAgICBlbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzMzNCIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzMzNyIpID4gLTEgLy9BUkNDIE9yaVggLyBXb21lbidzIEhlYWx0aCBsaW5lCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNDEiKSA+IC0xIHx8ZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNTAiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNjAiKSA+IC0xKSB7CiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiQVJDQyBPUklBSE5OIjsgIC8vQU4yMDE5MDMxNSB0aGlzIGlzIEFSQ0MgT1JJQUhOTiAvIFdvbWVuJ3MgSGVhbHRoCiAgICAgICAgCiAgICB9CgogICAgZWxzZSBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NTUiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjI2IikgPiAtMSAvL0NvbXBsZXRlIEludGFrZSBsaW5lICMxIChTa3lyaXppKSAoUmlzYW5raXp1bWFiKQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjc0IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY4NSIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY2NyIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NTAiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2OTAiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMTE3IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIxNjc4OTQ4MjU0OSIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1NDkiKSA+IC0xCgkJCgkJfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NzYiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTc0IikgPiAtMSAvL0NvbXBsZXRlIEludGFrZSBsaW5lICMyIChwcm9ncmFtIHVua25vd24pCgkJfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NzMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTY2IikgPiAtMQoJCXx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTY5IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNDA0OTYxMTk2MyIpID4gLTEKCgkJfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NjEiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTY0IikgPiAtMSAvL0NvbXBsZXRlIEludGFrZSBsaW5lICMzIChwcm9ncmFtIHVua25vd24pCgkJfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NzUiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTY3IikgPiAtMQoJCXx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTcwIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNDA0OTYxMTk3MiIpID4gLTEpewogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIkNvbXBsZXRlIEltbXVub2xvZ3kiOyAgLy9BTjIwMTkwMjI2IHRoaXMgaXMgdGhlIENvbXBsZXRlIEltbXVub2xvZ3kgKEludGFrZSkgcHJvZ3JhbSAKICAgIH0KICAgICAgICBlbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM2MiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNjMiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNjQiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzY1IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzY2IikgPiAtMSApIHsgLy9hYmJ2aWUgQ29tcGxldGUgSW50YWtlIChTa3lyaXppKSAoUmlzYW5raXp1bWFiKSBmYXggbGluZXMKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJJbnRha2UgT1JJQUhOTiI7ICAvL0FOMjAyMDA0MDggdGhpcyBpcyB0aGUgSW50YWtlIFdvbWVuJ3MgSGVhbHRoIC8gT3JpWCAvIE9SSUFITk4gcHJvZ3JhbQogICAgfQogICAgCgllbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNDA0OTYxMTk2MiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NjUiKSA+IC0xIC8vYWJidmllIENvbXBsZXRlIEludGFrZSAoU2t5cml6aSkgKFJpc2Fua2l6dW1hYikgZmF4IGxpbmVzCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjQwNDk2MTE5NzciKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTY4IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ5NjExOTcxIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNDA0OTYxMTk0OSIpID4gLTEpIHsKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJPbmNvbG9neSBBdXRoIjsgIC8vQU4yMDIwMTEyMCB0aGlzIGlzIE9uY29sb2d5IEF1dGhvcml6YXRpb24gLSBWYWxldCBMaW5lIDMKICAgIAogICAgICAgIH0KCQogICAgZWxzZSB7CiAgICAgICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gZG9jLmRlbGl2ZXJlZFRvOyAvL0VSUzE3MDYyNgogICAgfQogICAgYWxlcnQoIisrKyBFTkRJTkcgekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzICsrKyIpOwogICAgYWxlcnQoIkBAQCB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CiAgICAgICAgCn07CgogICAgekRhdGEuZ2VuZXJhdGVUaWZmID0gdHJ1ZTsgLy8gVXBkYXRlZCB0byBnZW5lcmF0ZSB0aWZmIFBWMDIyNTE4Ci8qIFRoaXMgZnVuY3Rpb24gbmVlZHMgdG8gYmUgYWRkZWQgdG8gZXZlcnkgcnVsZSB0byBoZWxwIGFzc3VyZSB0aGF0IHJ1bGVzIGRvIG5vdCBnZXQgYWNjaWRlbnRhbGx5IHRyaWdnZXJlZCAqLwovKiBBZGQgdGhpcyBmdW5jdGlvbmFsaXR5IHRvIHRoZSBydWxlcyBlbmdpbmUgaXRzZWxmPyAqLwp6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24gPSBmdW5jdGlvbihkb2MsdHJpZ2dlckZpZWxkKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKHRyaWdnZXJGaWVsZCwgIiIpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9Owp6RGF0YS5pbml0aWFsaXplU3RhY2sgPSBmdW5jdGlvbihkb2MsIHN0YWNrRm9sZGVyLCBzdGFja0lkKSB7IC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogICAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgICB2YXIgZmluYWxSb290Rm9sZGVyID0gekRhdGEuY2xhc3NpZmljYXRpb24rIi1BcmNoaXZlIjsgLy9iYXRlcyBvZiB0aGUgQXJjaGl2ZSBmb2xkZXIKICAgIHZhciB5eXl5TU1Gb2xkZXJOYW1lID0gdG9kYXkuZ2V0RnVsbFllYXIoKSArIChjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCk7CiAgICB2YXIgeXl5eU1NRm9sZGVyID0gZmluYWxSb290Rm9sZGVyICsgIi0iICsgeXl5eU1NRm9sZGVyTmFtZTsKICAgIGFsZXJ0KCJAQEAgc3RhY2tGb2xkZXIgaXMgLSAiICsgc3RhY2tGb2xkZXIpOwogICAgYWxlcnQoIkBAQCBmaW5hbFJvb3RGb2xkZXIgaXMgLSAiICsgZmluYWxSb290Rm9sZGVyKTsKICAgIGFsZXJ0KCJAQEAgeXlNTUZvbGRlciBpcyAtICIgKyB5eXl5TU1Gb2xkZXIpOwogICAgYWxlcnQoIkBAQCBjcmVhdGluZyBuZXcgc3RhY2sgZGVzdGluYWlvbiBmb2xkZXIgd2l0aCBuYW1lIC0gIiArIHN0YWNrRm9sZGVyKTsKICAgIC8qIFJlZnJlc2ggdGhlIGN1cnJlbnQgZm9sZGVyICovCiAgICByZWxvYWRCeUlkKGRvYywgWChkb2MsIlhfY3VyRm9sZGVyIikpOwogICAgLyogc2FtZSB2YWx1ZSBmb3IgQkFURVMgYW5kIGxhYmVsICovCiAgICAvKiBUaGUgZm9sZGVyIHN0cnVjdHVyZSB3aWxsIGxvb2sgbGlrZSB0aGlzOiAvMjAxNjA4LzNDWDNDWC8xMjM0NTY3ODktU1RBQ0sgKi8KICAgIGNyZWF0ZUZvbGRlcihkb2MsIGZpbmFsUm9vdEZvbGRlciwgeXl5eU1NRm9sZGVyLCB5eXl5TU1Gb2xkZXJOYW1lKTsKICAgIGNyZWF0ZUZvbGRlcihkb2MsIHl5eXlNTUZvbGRlciwgc3RhY2tGb2xkZXIsIHN0YWNrRm9sZGVyKTsKICAgIGFsZXJ0KCJAQEBAIE1vdmluZyB0aGUgc3RhY2sgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwogICAgbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhJbml0aWFsaXplZCIsICJ0cnVlIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzdGFja0lkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBkb2Mua2JEYXRhLmdyb3VwSUQuc3Vic3RyaW5nKDEpICsgIi0iICsgc3RhY2tJZCArICItU1RBQ0siKTsKICAgIC8qIFN0YWNrIExhYmVsbGluZyBDaGFuZ2UgKi8KICAgIHZhciBkdFN0YW1wID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSk7CiAgICAvKiBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwiU3RhY2sgLSAiICsgZHRTdGFtcCk7ICovCiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07Cgp6RGF0YS5jb3VudFBhZ2VzID0gZnVuY3Rpb24oZG9jLCBwYWdlUmFuZ2UyKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICAvL01TSDE3MTAyNyBkZWJ1Z2dpbmcKICAgIGFsZXJ0KCJ6RGF0YS5jb3VudFBhZ2VzIHBhZ2VSYW5nZTIgPSAiICsgcGFnZVJhbmdlMik7CiAgICBwYWdlUmFuZ2UyPXBhZ2VSYW5nZTIucmVwbGFjZSgidSIsIiIpLnJlcGxhY2UoInIiLCIiKS5yZXBsYWNlKCJjIiwiIik7IC8vRVJTMjAwNzExICM3MjQzMwogICAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlMi5zcGxpdCgiLCIpOwogICAgaWYgKCFwYWdlcykgcGFnZXM9W3BhZ2VSYW5nZTJdOwogICAgYWxlcnQoInpEYXRhLmNvdW50UGFnZXMgcGFnZXMgPSAiICsgcGFnZXMpOwogICAgcmV0dXJuIHBhZ2VzLmxlbmd0aDsKfTsKCnpEYXRhLmFkZFN0YWdlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHN0YWdlKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcyAvL0VSUzIwMDcxMSAjNzI0MzMgVE9ETyByZWNvbmNpbGUgbGlicmFyeQoJaWYgKCFzdGFnZSkgewogICAgCXZhciBiYT1kb2MuWCgiWF9idXR0b25BY3Rpb24iKSsiZWQiOwogICAgCWJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgCXN0YWdlPWJhOyBpZiAoc3RhZ2UubGVuZ3RoKCk8NCkge3N0YWdlPSJSZWNlaXZlZCI7fQogICAgfSBlbHNlIHsKICAgICAgICBiYT1zdGFnZTsgLy9FUlMxOTA4MDIKICAgIH0KICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5MgogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn07IC8vRVJTMjAwNzExICM3MjQzMyB0aGlzIDsgbWF0dGVycyB0byBLQiBjb3JlIGJ1dCBub3QgdG8gemlwcGkKCnpEYXRhLmdldFN0YWNrSWQ9ZnVuY3Rpb24oZG9jLGlkcyxzdGFja1R5cGVOYW1lKSB7IC8vRVJTMTkwNjE3IGZyb20gVU5MT0NLIC8vVE9ETyBFUlMxOTA2MjQgZmluZCBzdGFja1R5cGVOYW1lIG5lZWRlZCBkb2MgLy9FUlMyMDA3MTEgIzcyNDMzCiAgICBpZiAoIWlkcyB8fCBpZHM9PT0iIikgaWRzID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOyAvL0VSUzE5MDYxOCBUT0RPIGNvbmZpcm0gZG9jIGluIHNjb3BlCiAgICBpZHMgPSBpZHMgKyAiIjsKCWlmIChpZHMubGFzdEluZGV4T2YoJy8nKSA+PSAwKSB7IC8vRVJTMTkwNjE4IGdldCBmaXJzdCBJZCBpZiAvIGlzIHBhc3NlZCBpbgoJCWlkcyA9IGlkcy5zdWJzdHJpbmcoaWRzLmxhc3RJbmRleE9mKCcvJykrMSk7CgkJaWYgKGlkcy5pbmRleE9mKCcsJykgPj0gMCkgeyBpZHMgPSBpZHMuc3Vic3RyaW5nKDAsIGlkcy5pbmRleE9mKCcsJykpOyB9CgkJcmV0dXJuIGlkczsKCX0KICAgIAogICAgaWYgKCFzdGFja1R5cGVOYW1lKSBzdGFja1R5cGVOYW1lPSJaUEFQRVJfX3pTdGFja19fYyI7IC8vRVJTMTkwNjI0IGd1ZXNzaW5nIFRPRE8gZmluZCBleGFtcGxlcwogICAgdmFyIHBhcnRzID0gaWRzLnNwbGl0KCcsJyk7CiAgICBmb3IgKHZhciBpPTA7IGk8cGFydHMubGVuZ3RoOyBpKyspIHsgLy9nZXQga2FzdCBJZCBpZiAvIGlzIE5PVCBwYXNzZWQgaW4KICAgICAgICB2YXIgaWQgPSBwYXJ0c1tpXS50cmltKCk7CiAgICAgICAgaWYgKGlkLmxlbmd0aCA+IDApIHsKICAgICAgICAgICAgYWxlcnQoIkBAQEAgcHVsbGluZyB0eXBlIGZvciBpZDogIiArIGlkKTsKICAgICAgICAgICAgaWYgKHN0YWNrVHlwZU5hbWUgPT09IGdldFNGVHlwZShkb2MsIGlkKSkgewogICAgICAgICAgICAgICAgcmV0dXJuIGlkOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQogICAgcmV0dXJuIG51bGw7Cn07CgovL0VSUzE3MDgwNSBnZXQgdGhlIGRhdGEgZnJvbSB0aGUgRGVwbG95bWVudEluZm8KLy9DUk4xOTA3MjQgUmV3b3JraW5nIGNvZGUgdG8gd29yayB3aXRoIG5ldyBydWxlcyBlbmdpbmUuCnZhciBjcyA9IFhEZXBsb3ltZW50SW5mbyhkb2MsICJCdXNpbmVzc19Qcm9jZXNzX19jIik7CmFsZXJ0KCJAQEAgY3M9Iitjcyk7CmlmIChjcykgewoJaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpPi0xKSB7IGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsgfQoJaWYgKGNzICE9PSAiIikgeyBldmFsKGNzKTsgfQoJLy9NU0gxNzA4MjggYWxlcnQoIkVSUzE3MDgwNSBIQUNLIGZvciAiK3pEYXRhLkEzNjBJbmNvbWluZyk7Cn0KekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzKGRvYyk7IC8vY2FsbCBmdW5jdGlvbiB0byBzZXQgdmFyaWFibGVzCi8qIEVORCAqLw=="},"ordinal":0}

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
        || doc.deliveredTo.indexOf("16789482533") > -1 || doc.deliveredTo.indexOf("6789482533") > -1) {
        
        zData.classification = "PAP";
        
    }
    else if (doc.deliveredTo.indexOf("6787270646") > -1 || doc.deliveredTo.indexOf("6787270638") > -1 //abbvie RH-Immunology fax lines
        || doc.deliveredTo.indexOf("6787270670") > -1 || doc.deliveredTo.indexOf("6787270683") > -1
        || doc.deliveredTo.indexOf("6787270662") > -1 || doc.deliveredTo.indexOf("6787270463") > -1
        || doc.deliveredTo.indexOf("6787270686") > -1 || doc.deliveredTo.indexOf("6787271109") > -1
        ||doc.deliveredTo.indexOf("6789482544") > -1 ||doc.deliveredTo.indexOf("16789482544") > -1){
        
        zData.classification = "RH-Immunology";
    }
    else if (doc.deliveredTo.indexOf("6787270487") > -1 || doc.deliveredTo.indexOf("6787270489") > -1 //abbvie Complete Intake (Skyrizi) (Risankizumab) fax lines
        || doc.deliveredTo.indexOf("6787270502") > -1 || doc.deliveredTo.indexOf("6787270506") > -1
        || doc.deliveredTo.indexOf("6787270511") > -1 || doc.deliveredTo.indexOf("6787270494") > -1
        || doc.deliveredTo.indexOf("16789489989") > -1 ||doc.deliveredTo.indexOf("6789489989") > -1) {
        
        zData.classification = "ARCC";  //AN20190315 this is ARCC

    }
    else if (doc.deliveredTo.indexOf("3147103334") > -1 ||doc.deliveredTo.indexOf("3147103337") > -1 //ARCC OriX / Women's Health line
        || doc.deliveredTo.indexOf("3147103341") > -1 ||doc.deliveredTo.indexOf("3147103350") > -1
        || doc.deliveredTo.indexOf("3147103360") > -1) {
        
        zData.classification = "ARCC ORIAHNN";  //AN20190315 this is ARCC ORIAHNN / Women's Health
        
    }

    else if (doc.deliveredTo.indexOf("6787270655") > -1 || doc.deliveredTo.indexOf("6787270626") > -1 //Complete Intake line #1 (Skyrizi) (Risankizumab)
        || doc.deliveredTo.indexOf("6787270674") > -1 || doc.deliveredTo.indexOf("6787270685") > -1
        || doc.deliveredTo.indexOf("6787270667") > -1 || doc.deliveredTo.indexOf("6787270650") > -1
        || doc.deliveredTo.indexOf("6787270690") > -1 || doc.deliveredTo.indexOf("6787271117") > -1
        || doc.deliveredTo.indexOf("16789482549") > -1 ||doc.deliveredTo.indexOf("16789482549") > -1
		
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
        || doc.deliveredTo.indexOf("3147103366") > -1 ) { //abbvie Complete Intake (Skyrizi) (Risankizumab) fax lines
        
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
