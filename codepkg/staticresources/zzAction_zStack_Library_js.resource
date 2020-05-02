<!--
// Name: zStack Library
// Committer: andrew@zpaper.com
// Update: bye
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-04-27 21:29:31","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnVwbG9hZERpciA9ICJpbnRlZ3JhdGlvbkRpciI7IC8qUFYwMjE2MTggaW5zdGFsbGF0aW9uIGRpcmVjdG9yeSBmb3IgdGlmZiAqLwp6RGF0YS5hY2NvdW50SWQgPSAiIjsgLypNU0gxNzExMjgqLwp6RGF0YS5jYXNlRmllbGRzOyAvKmFycmF5IHVzZWQgdG8gc2V0IHRoZSBxdWV1ZSBJRCBiYXNlZCBvbiB0aGUgdHlwZSBvZiBjYXNlKi8KCi8vQ29udGFjdCByZWNvcmQgdHlwZSBJRHMKekRhdGEuY29udGFjdFJlY29yZFR5cGVJZCA9ICIiOyAvKk1TSDE3MDkxNSBJbmRpdmlkdWFsKi8KCmFsZXJ0KCJAQEAgekRhdGE9PT09IitKU09OLnN0cmluZ2lmeSh6RGF0YSkpOwphbGVydCgiQEBAIGNsYXNzaWZpY2F0aW9uPT09IisgekRhdGEuY2xhc3NpZmljYXRpb24pOwphbGVydCgiQEBAIGNsYXNzaWZpY2F0aW9uPT09IisgekRhdGFbIiZhcG9zO2NsYXNzaWZpY2F0aW9uJmFwb3M7Il0pOwoKekRhdGEubmFtZUZpbGUgPSBmdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgZG9jLmxhYmVsPVgoZG9jLCJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIikrWChkb2MsIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpKyIgLSAiK1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKyIgLSAiK01NZGRZWVlZOwogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwovL01TSDE3MDgzMSBleHRyYWN0IGRhdGUgZm9ybWF0IGZyb20gekRhdGEubmFtZUZpbGUKekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSA9IGZ1bmN0aW9uKGRvYykgewogICAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICAgIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogICAgLy9NU0gxNzA5MDYgcGFkIGRheSB3aXRoIHplcm8KICAgIHZhciBjdXJEYXkgPSB0b2RheS5nZXREYXRlKCk7CiAgICAvL01TSDE3MDkwNiB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrIiIrdG9kYXkuZ2V0RGF0ZSgpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKygiIisoY3VyRGF5ID4gOSA/IGN1ckRheSsiIiA6ICIwIitjdXJEYXkpKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIC8vYWxlcnQoIk1NZGRZWVlZID09ICIgKyBNTWRkWVlZWSk7CiAgICByZXR1cm4gTU1kZFlZWVk7Cn07Ci8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmUgPSBmdW5jdGlvbihkb2MpIHsKICAgIHZhciBkb2MwID0gW107CiAgICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXSA9IGRvY1tpXTsKICAgIHJldHVybiBkb2MwOwp9OwovL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzID0gZnVuY3Rpb24oZG9jKSB7CiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2MzQiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjMzIikgPiAtMSAvL2FiYnZpZSBQQVAgZmF4IGxpbmVzIC8vRVJTNzA0MjEgaW5kZXhPZiBpcyBzYWZlciAjMzY0MTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTA0MyIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzEwMzciKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzEwMTMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2NzgyMzU2NTk3IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMjc0IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTEwNiIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1MzMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg5NDgyNTMzIikgPiAtMSkgewogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIlBBUCI7CiAgICAgICAgCiAgICB9CiAgICBlbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY0NiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2MzgiKSA+IC0xIC8vYWJidmllIFJILUltbXVub2xvZ3kgZmF4IGxpbmVzCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NzAiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjgzIikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjYyIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDQ2MyIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY4NiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzExMDkiKSA+IC0xCiAgICAgICAgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4OTQ4MjU0NCIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1NDQiKSA+IC0xKXsKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJSSC1JbW11bm9sb2d5IjsKICAgIH0KICAgIGVsc2UgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNDg3IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDQ4OSIpID4gLTEgLy9hYmJ2aWUgQ29tcGxldGUgSW50YWtlIChTa3lyaXppKSAoUmlzYW5raXp1bWFiKSBmYXggbGluZXMKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDUwMiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA1MDYiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA1MTEiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNDk0IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIxNjc4OTQ4OTk4OSIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4OTQ4OTk4OSIpID4gLTEpIHsKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJBUkNDIjsgIC8vQU4yMDE5MDMxNSB0aGlzIGlzIEFSQ0MKCiAgICB9CiAgICBlbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzMzNCIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzMzNyIpID4gLTEgLy9BUkNDIE9yaVggLyBXb21lbidzIEhlYWx0aCBsaW5lCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNDEiKSA+IC0xIHx8ZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNTAiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNjAiKSA+IC0xKSB7CiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiQVJDQyBPUklBSE5OIjsgIC8vQU4yMDE5MDMxNSB0aGlzIGlzIEFSQ0MgT1JJQUhOTiAvIFdvbWVuJ3MgSGVhbHRoCiAgICAgICAgCiAgICB9CgogICAgZWxzZSBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NTUiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjI2IikgPiAtMSAvL2FiYnZpZSBDb21wbGV0ZSBJbnRha2UgKFNreXJpemkpIChSaXNhbmtpenVtYWIpIGZheCBsaW5lcwogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjc0IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY4NSIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY2NyIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NTAiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2OTAiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMTE3IikgPiAtMQogICAgICAgIHx8ZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjE2Nzg5NDgyNTQ5IikgPiAtMSB8fGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIxNjc4OTQ4MjU0OSIpID4gLTEpIHsKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJDb21wbGV0ZSBJbW11bm9sb2d5IjsgIC8vQU4yMDE5MDIyNiB0aGlzIGlzIHRoZSBDb21wbGV0ZSBJbW11bm9sb2d5IHByb2dyYW0gKFNreXJpemkpIChSaXNhbmtpenVtYWIpCiAgICB9CiAgICAgICAgZWxzZSBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNjIiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzYzIikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzY0IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM2NSIpID4gLTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM2NiIpID4gLTEgKSB7IC8vYWJidmllIENvbXBsZXRlIEludGFrZSAoU2t5cml6aSkgKFJpc2Fua2l6dW1hYikgZmF4IGxpbmVzCiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiSW50YWtlIE9SSUFITk4iOyAgLy9BTjIwMjAwNDA4IHRoaXMgaXMgdGhlIEludGFrZSBXb21lbidzIEhlYWx0aCAvIE9yaVggLyBPUklBSE5OIHByb2dyYW0KICAgIH0KICAgIAogICAgZWxzZSB7CiAgICAgICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gZG9jLmRlbGl2ZXJlZFRvOyAvL0VSUzE3MDYyNgogICAgfQogICAgYWxlcnQoIisrKyBFTkRJTkcgekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzICsrKyIpOwogICAgYWxlcnQoIkBAQCB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICIgKyB6RGF0YS5jbGFzc2lmaWNhdGlvbik7CiAgICAgICAgCn0KICAgIHpEYXRhLmdlbmVyYXRlVGlmZiA9IHRydWU7IC8vIFVwZGF0ZWQgdG8gZ2VuZXJhdGUgdGlmZiBQVjAyMjUxOAovKiBUaGlzIGZ1bmN0aW9uIG5lZWRzIHRvIGJlIGFkZGVkIHRvIGV2ZXJ5IHJ1bGUgdG8gaGVscCBhc3N1cmUgdGhhdCBydWxlcyBkbyBub3QgZ2V0IGFjY2lkZW50YWxseSB0cmlnZ2VyZWQgKi8KLyogQWRkIHRoaXMgZnVuY3Rpb25hbGl0eSB0byB0aGUgcnVsZXMgZW5naW5lIGl0c2VsZj8gKi8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uID0gZnVuY3Rpb24oZG9jLHRyaWdnZXJGaWVsZCkgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCh0cmlnZ2VyRmllbGQsICIiKTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKekRhdGEuaW5pdGlhbGl6ZVN0YWNrID0gZnVuY3Rpb24oZG9jLCBzdGFja0ZvbGRlciwgc3RhY2tJZCkgeyAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICAgIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogICAgdmFyIGZpbmFsUm9vdEZvbGRlciA9IHpEYXRhLmNsYXNzaWZpY2F0aW9uKyItQXJjaGl2ZSI7IC8vYmF0ZXMgb2YgdGhlIEFyY2hpdmUgZm9sZGVyCiAgICB2YXIgeXl5eU1NRm9sZGVyTmFtZSA9IHRvZGF5LmdldEZ1bGxZZWFyKCkgKyAoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpOwogICAgdmFyIHl5eXlNTUZvbGRlciA9IGZpbmFsUm9vdEZvbGRlciArICItIiArIHl5eXlNTUZvbGRlck5hbWU7CiAgICBhbGVydCgiQEBAIHN0YWNrRm9sZGVyIGlzIC0gIiArIHN0YWNrRm9sZGVyKTsKICAgIGFsZXJ0KCJAQEAgZmluYWxSb290Rm9sZGVyIGlzIC0gIiArIGZpbmFsUm9vdEZvbGRlcik7CiAgICBhbGVydCgiQEBAIHl5TU1Gb2xkZXIgaXMgLSAiICsgeXl5eU1NRm9sZGVyKTsKICAgIGFsZXJ0KCJAQEAgY3JlYXRpbmcgbmV3IHN0YWNrIGRlc3RpbmFpb24gZm9sZGVyIHdpdGggbmFtZSAtICIgKyBzdGFja0ZvbGRlcik7CiAgICAvKiBSZWZyZXNoIHRoZSBjdXJyZW50IGZvbGRlciAqLwogICAgcmVsb2FkQnlJZChkb2MsIFgoZG9jLCJYX2N1ckZvbGRlciIpKTsKICAgIC8qIHNhbWUgdmFsdWUgZm9yIEJBVEVTIGFuZCBsYWJlbCAqLwogICAgLyogVGhlIGZvbGRlciBzdHJ1Y3R1cmUgd2lsbCBsb29rIGxpa2UgdGhpczogLzIwMTYwOC8zQ1gzQ1gvMTIzNDU2Nzg5LVNUQUNLICovCiAgICBjcmVhdGVGb2xkZXIoZG9jLCBmaW5hbFJvb3RGb2xkZXIsIHl5eXlNTUZvbGRlciwgeXl5eU1NRm9sZGVyTmFtZSk7CiAgICBjcmVhdGVGb2xkZXIoZG9jLCB5eXl5TU1Gb2xkZXIsIHN0YWNrRm9sZGVyLCBzdGFja0ZvbGRlcik7CiAgICBhbGVydCgiQEBAQCBNb3ZpbmcgdGhlIHN0YWNrIGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsKICAgIG1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4SW5pdGlhbGl6ZWQiLCAidHJ1ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc3RhY2tJZCk7CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgZG9jLmtiRGF0YS5ncm91cElELnN1YnN0cmluZygxKSArICItIiArIHN0YWNrSWQgKyAiLVNUQUNLIik7CiAgICAvKiBTdGFjayBMYWJlbGxpbmcgQ2hhbmdlICovCiAgICB2YXIgZHRTdGFtcCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UpOwogICAgLyogYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIlN0YWNrIC0gIiArIGR0U3RhbXApOyAqLwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9Owp6RGF0YS5jb3VudFBhZ2VzID0gZnVuY3Rpb24oZG9jLCBwYWdlUmFuZ2UyKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgICAvL01TSDE3MTAyNyBkZWJ1Z2dpbmcKICAgIGFsZXJ0KCJ6RGF0YS5jb3VudFBhZ2VzIHBhZ2VSYW5nZTIgPSAiICsgcGFnZVJhbmdlMik7CiAgICB2YXIgcGFnZXMgPSBwYWdlUmFuZ2UyLnNwbGl0KCIsIik7CiAgICBpZiAoIXBhZ2VzKSBwYWdlcz1bcGFnZVJhbmdlMl07CiAgICBhbGVydCgiekRhdGEuY291bnRQYWdlcyBwYWdlcyA9ICIgKyBwYWdlcyk7CiAgICByZXR1cm4gcGFnZXMubGVuZ3RoOwp9OwoKLy9FUlMxNzA4MDUgZ2V0IHRoZSBkYXRhIGZyb20gdGhlIERlcGxveW1lbnRJbmZvCi8vQ1JOMTkwNzI0IFJld29ya2luZyBjb2RlIHRvIHdvcmsgd2l0aCBuZXcgcnVsZXMgZW5naW5lLgp2YXIgY3MgPSBYRGVwbG95bWVudEluZm8oZG9jLCAiQnVzaW5lc3NfUHJvY2Vzc19fYyIpOwphbGVydCgiQEBAIGNzPSIrY3MpOwppZiAoY3MpIHsKCWlmIChjcy5pbmRleE9mKCJ6Q3VzdG9tU2V0dGluZ3MiKT4tMSkgeyBjcz1YKGRvYywiekN1c3RvbVNldHRpbmdzIixjcyk7IH0KCWlmIChjcyAhPT0gIiIpIHsgZXZhbChjcyk7IH0KCS8vTVNIMTcwODI4IGFsZXJ0KCJFUlMxNzA4MDUgSEFDSyBmb3IgIit6RGF0YS5BMzYwSW5jb21pbmcpOwp9Cgp6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMoZG9jKTsgLy9jYWxsIGZ1bmN0aW9uIHRvIHNldCB2YXJpYWJsZXMKLyogRU5EICov"},"ordinal":0}

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

    else if (doc.deliveredTo.indexOf("6787270655") > -1 || doc.deliveredTo.indexOf("6787270626") > -1 //abbvie Complete Intake (Skyrizi) (Risankizumab) fax lines
        || doc.deliveredTo.indexOf("6787270674") > -1 || doc.deliveredTo.indexOf("6787270685") > -1
        || doc.deliveredTo.indexOf("6787270667") > -1 || doc.deliveredTo.indexOf("6787270650") > -1
        || doc.deliveredTo.indexOf("6787270690") > -1 || doc.deliveredTo.indexOf("6787271117") > -1
        ||doc.deliveredTo.indexOf("16789482549") > -1 ||doc.deliveredTo.indexOf("16789482549") > -1) {
        
        zData.classification = "Complete Immunology";  //AN20190226 this is the Complete Immunology program (Skyrizi) (Risankizumab)
    }
        else if (doc.deliveredTo.indexOf("3147103362") > -1 || doc.deliveredTo.indexOf("3147103363") > -1
        || doc.deliveredTo.indexOf("3147103364") > -1 || doc.deliveredTo.indexOf("3147103365") > -1
        || doc.deliveredTo.indexOf("3147103366") > -1 ) { //abbvie Complete Intake (Skyrizi) (Risankizumab) fax lines
        
        zData.classification = "Intake ORIAHNN";  //AN20200408 this is the Intake Women's Health / OriX / ORIAHNN program
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
