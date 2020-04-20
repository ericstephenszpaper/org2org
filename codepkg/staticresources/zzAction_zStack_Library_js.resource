<!--
// Name: zStack Library
// Committer: andrew@zpaper.com
// Update: updating static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-04-08 20:47:43","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnVwbG9hZERpciA9ICJpbnRlZ3JhdGlvbkRpciI7IC8qUFYwMjE2MTggaW5zdGFsbGF0aW9uIGRpcmVjdG9yeSBmb3IgdGlmZiAqLwp6RGF0YS5hY2NvdW50SWQgPSAiIjsgLypNU0gxNzExMjgqLwp6RGF0YS5jYXNlRmllbGRzOyAvKmFycmF5IHVzZWQgdG8gc2V0IHRoZSBxdWV1ZSBJRCBiYXNlZCBvbiB0aGUgdHlwZSBvZiBjYXNlKi8KCi8vQ29udGFjdCByZWNvcmQgdHlwZSBJRHMKekRhdGEuY29udGFjdFJlY29yZFR5cGVJZCA9ICIiOyAvKk1TSDE3MDkxNSBJbmRpdmlkdWFsKi8KCmFsZXJ0KCJAQEAgekRhdGE9PT09IitKU09OLnN0cmluZ2lmeSh6RGF0YSkpOwphbGVydCgiQEBAIGNsYXNzaWZpY2F0aW9uPT09IisgekRhdGEuY2xhc3NpZmljYXRpb24pOwphbGVydCgiQEBAIGNsYXNzaWZpY2F0aW9uPT09IisgekRhdGFbIiZhcG9zO2NsYXNzaWZpY2F0aW9uJmFwb3M7Il0pOwoKekRhdGEubmFtZUZpbGUgPSBmdW5jdGlvbihkb2MpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgZG9jLmxhYmVsPVgoZG9jLCJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIikrWChkb2MsIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpKyIgLSAiK1goZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKyIgLSAiK01NZGRZWVlZOwogICAgYWxlcnQoIkVSUzE3MDgyOSBkYklEPSIrZG9jLmRiSUQrIiBsYWJlbD0iK2RvYy5sYWJlbCk7CiAgICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwovL01TSDE3MDgzMSBleHRyYWN0IGRhdGUgZm9ybWF0IGZyb20gekRhdGEubmFtZUZpbGUKekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSA9IGZ1bmN0aW9uKGRvYykgewogICAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICAgIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogICAgLy9NU0gxNzA5MDYgcGFkIGRheSB3aXRoIHplcm8KICAgIHZhciBjdXJEYXkgPSB0b2RheS5nZXREYXRlKCk7CiAgICAvL01TSDE3MDkwNiB2YXIgTU1kZFlZWVkgPSAgKCIiKyhjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCkrIiIrdG9kYXkuZ2V0RGF0ZSgpKyIiK3RvZGF5LmdldEZ1bGxZZWFyKCkpOwogICAgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKygiIisoY3VyRGF5ID4gOSA/IGN1ckRheSsiIiA6ICIwIitjdXJEYXkpKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIC8vYWxlcnQoIk1NZGRZWVlZID09ICIgKyBNTWRkWVlZWSk7CiAgICByZXR1cm4gTU1kZFlZWVk7Cn07Ci8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmUgPSBmdW5jdGlvbihkb2MpIHsKICAgIHZhciBkb2MwID0gW107CiAgICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXSA9IGRvY1tpXTsKICAgIHJldHVybiBkb2MwOwp9OwovL01TSDE3MTAwNSBnZXQgYWxsIHRoZSBvcmdzIGluIGhlcmUKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzID0gZnVuY3Rpb24oZG9jKSB7CiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2MzQiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjMzIikgPiAtMSAvL2FiYnZpZSBQQVAgZmF4IGxpbmVzIC8vRVJTNzA0MjEgaW5kZXhPZiBpcyBzYWZlciAjMzY0MTEKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTA0MyIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzEwMzciKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzEwMTMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2NzgyMzU2NTk3IikgPiAtMSAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTI3NCIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzExMDYiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjE2Nzg5NDgyNTMzIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4OTQ4MjUzMyIpID4gLTEpIHsgCiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiUEFQIjsKICAgICAgICAKICAgIH0KICAgIGVsc2UgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjQ2IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDYzOCIpID4gLTEgLy9hYmJ2aWUgUkgtSW1tdW5vbG9neSBmYXggbGluZXMgCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NzAiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjgzIikgPiAtMSAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY2MiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA0NjMiKSA+IC0xIAogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjg2IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MTEwOSIpID4gLTEKICAgICAgICB8fGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg5NDgyNTQ0IikgPiAtMSB8fGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIxNjc4OTQ4MjU0NCIpID4gLTEpeyAKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJSSC1JbW11bm9sb2d5IjsgCiAgICB9CiAgICBlbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDQ4NyIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA0ODkiKSA+IC0xIC8vYWJidmllIENvbXBsZXRlIEludGFrZSAoU2t5cml6aSkgKFJpc2Fua2l6dW1hYikgZmF4IGxpbmVzCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA1MDIiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNTA2IikgPiAtMSAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDUxMSIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA0OTQiKSA+IC0xCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjE2Nzg5NDg5OTg5IikgPiAtMSB8fGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg5NDg5OTg5IikgPiAtMSAKICAgICAgICAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzMzNCIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzMzNyIpID4gLTEgLy9BUkNDIE9yaVggLyBXb21lbidzIEhlYWx0aCBsaW5lCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNDEiKSA+IC0xIHx8ZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNTAiKSA+IC0xIAogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzYwIikgPiAtMSkgeyAKICAgICAgICAKICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9ICJBUkNDIjsgIC8vQU4yMDE5MDMxNSB0aGlzIGlzIEFSQ0MgLSB0aGluayB3ZSBhcmUgc3RpbGwgbWlzc2luZyAyIG51bWJlcnMgc2luY2Ugd2Ugb25seSBoYXZlIDYKICAgICAgICAKICAgIH0KICAgIGVsc2UgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjU1IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDYyNiIpID4gLTEgLy9hYmJ2aWUgQ29tcGxldGUgSW50YWtlIChTa3lyaXppKSAoUmlzYW5raXp1bWFiKSBmYXggbGluZXMKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY3NCIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2ODUiKSA+IC0xIAogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjY3IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY1MCIpID4gLTEgCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2OTAiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMTE3IikgPiAtMQogICAgICAgIHx8ZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjE2Nzg5NDgyNTQ5IikgPiAtMSB8fGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIxNjc4OTQ4MjU0OSIpID4gLTEpIHsgCiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiQ29tcGxldGUgSW1tdW5vbG9neSI7ICAvL0FOMjAxOTAyMjYgdGhpcyBpcyB0aGUgQ29tcGxldGUgSW1tdW5vbG9neSBwcm9ncmFtIChTa3lyaXppKSAoUmlzYW5raXp1bWFiKQogICAgfQogICAgICAgIGVsc2UgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzYyIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM2MyIpID4gLTEgCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjMxNDcxMDMzNjQiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIzMTQ3MTAzMzY1IikgPiAtMSAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMzE0NzEwMzM2NiIpID4gLTEgKSB7IC8vYWJidmllIENvbXBsZXRlIEludGFrZSAoU2t5cml6aSkgKFJpc2Fua2l6dW1hYikgZmF4IGxpbmVzCiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiT3JpYWhubiI7ICAvL0FOMjAyMDA0MDggdGhpcyBpcyB0aGUgV29tZW4ncyBIZWFsdGggLyBPcmlYIC8gT1JJQUhOTiBwcm9ncmFtCiAgICB9CiAgICAKICAgIGVsc2UgewogICAgICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9IGRvYy5kZWxpdmVyZWRUbzsgLy9FUlMxNzA2MjYKICAgIH0KICAgIGFsZXJ0KCIrKysgRU5ESU5HIHpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyArKysiKTsKICAgIGFsZXJ0KCJAQEAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiICsgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgICAgIAp9CiAgICB6RGF0YS5nZW5lcmF0ZVRpZmYgPSB0cnVlOyAvLyBVcGRhdGVkIHRvIGdlbmVyYXRlIHRpZmYgUFYwMjI1MTgKLyogVGhpcyBmdW5jdGlvbiBuZWVkcyB0byBiZSBhZGRlZCB0byBldmVyeSBydWxlIHRvIGhlbHAgYXNzdXJlIHRoYXQgcnVsZXMgZG8gbm90IGdldCBhY2NpZGVudGFsbHkgdHJpZ2dlcmVkICovCi8qIEFkZCB0aGlzIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIHJ1bGVzIGVuZ2luZSBpdHNlbGY/ICovCnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbiA9IGZ1bmN0aW9uKGRvYyx0cmlnZ2VyRmllbGQpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2godHJpZ2dlckZpZWxkLCAiIik7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07CnpEYXRhLmluaXRpYWxpemVTdGFjayA9IGZ1bmN0aW9uKGRvYywgc3RhY2tGb2xkZXIsIHN0YWNrSWQpIHsgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICAgIHZhciBmaW5hbFJvb3RGb2xkZXIgPSB6RGF0YS5jbGFzc2lmaWNhdGlvbisiLUFyY2hpdmUiOyAvL2JhdGVzIG9mIHRoZSBBcmNoaXZlIGZvbGRlcgogICAgdmFyIHl5eXlNTUZvbGRlck5hbWUgPSB0b2RheS5nZXRGdWxsWWVhcigpICsgKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKTsKICAgIHZhciB5eXl5TU1Gb2xkZXIgPSBmaW5hbFJvb3RGb2xkZXIgKyAiLSIgKyB5eXl5TU1Gb2xkZXJOYW1lOwogICAgYWxlcnQoIkBAQCBzdGFja0ZvbGRlciBpcyAtICIgKyBzdGFja0ZvbGRlcik7CiAgICBhbGVydCgiQEBAIGZpbmFsUm9vdEZvbGRlciBpcyAtICIgKyBmaW5hbFJvb3RGb2xkZXIpOwogICAgYWxlcnQoIkBAQCB5eU1NRm9sZGVyIGlzIC0gIiArIHl5eXlNTUZvbGRlcik7CiAgICBhbGVydCgiQEBAIGNyZWF0aW5nIG5ldyBzdGFjayBkZXN0aW5haW9uIGZvbGRlciB3aXRoIG5hbWUgLSAiICsgc3RhY2tGb2xkZXIpOwogICAgLyogUmVmcmVzaCB0aGUgY3VycmVudCBmb2xkZXIgKi8KICAgIHJlbG9hZEJ5SWQoZG9jLCBYKGRvYywiWF9jdXJGb2xkZXIiKSk7CiAgICAvKiBzYW1lIHZhbHVlIGZvciBCQVRFUyBhbmQgbGFiZWwgKi8KICAgIC8qIFRoZSBmb2xkZXIgc3RydWN0dXJlIHdpbGwgbG9vayBsaWtlIHRoaXM6IC8yMDE2MDgvM0NYM0NYLzEyMzQ1Njc4OS1TVEFDSyAqLwogICAgY3JlYXRlRm9sZGVyKGRvYywgZmluYWxSb290Rm9sZGVyLCB5eXl5TU1Gb2xkZXIsIHl5eXlNTUZvbGRlck5hbWUpOwogICAgY3JlYXRlRm9sZGVyKGRvYywgeXl5eU1NRm9sZGVyLCBzdGFja0ZvbGRlciwgc3RhY2tGb2xkZXIpOwogICAgYWxlcnQoIkBAQEAgTW92aW5nIHRoZSBzdGFjayBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7CiAgICBtb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9pbmRleEluaXRpYWxpemVkIiwgInRydWUiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9zdGFjayIsIHN0YWNrSWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiLSIgKyBzdGFja0lkICsgIi1TVEFDSyIpOwogICAgLyogU3RhY2sgTGFiZWxsaW5nIENoYW5nZSAqLwogICAgdmFyIGR0U3RhbXAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlKTsKICAgIC8qIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCJTdGFjayAtICIgKyBkdFN0YW1wKTsgKi8KICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKekRhdGEuY291bnRQYWdlcyA9IGZ1bmN0aW9uKGRvYywgcGFnZVJhbmdlMikgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgLy9NU0gxNzEwMjcgZGVidWdnaW5nCiAgICBhbGVydCgiekRhdGEuY291bnRQYWdlcyBwYWdlUmFuZ2UyID0gIiArIHBhZ2VSYW5nZTIpOwogICAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlMi5zcGxpdCgiLCIpOwogICAgaWYgKCFwYWdlcykgcGFnZXM9W3BhZ2VSYW5nZTJdOwogICAgYWxlcnQoInpEYXRhLmNvdW50UGFnZXMgcGFnZXMgPSAiICsgcGFnZXMpOwogICAgcmV0dXJuIHBhZ2VzLmxlbmd0aDsKfTsKCi8vRVJTMTcwODA1IGdldCB0aGUgZGF0YSBmcm9tIHRoZSBEZXBsb3ltZW50SW5mbwovL0NSTjE5MDcyNCBSZXdvcmtpbmcgY29kZSB0byB3b3JrIHdpdGggbmV3IHJ1bGVzIGVuZ2luZS4KdmFyIGNzID0gWERlcGxveW1lbnRJbmZvKGRvYywgIkJ1c2luZXNzX1Byb2Nlc3NfX2MiKTsKYWxlcnQoIkBAQCBjcz0iK2NzKTsKaWYgKGNzKSB7CglpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIHsgY3M9WChkb2MsInpDdXN0b21TZXR0aW5ncyIsY3MpOyB9CglpZiAoY3MgIT09ICIiKSB7IGV2YWwoY3MpOyB9CgkvL01TSDE3MDgyOCBhbGVydCgiRVJTMTcwODA1IEhBQ0sgZm9yICIrekRhdGEuQTM2MEluY29taW5nKTsKfQoKekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzKGRvYyk7IC8vY2FsbCBmdW5jdGlvbiB0byBzZXQgdmFyaWFibGVzCi8qIEVORCAqLwo="},"ordinal":0}

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
        || doc.deliveredTo.indexOf("16789489989") > -1 ||doc.deliveredTo.indexOf("6789489989") > -1 
        
        || doc.deliveredTo.indexOf("3147103334") > -1 ||doc.deliveredTo.indexOf("3147103337") > -1 //ARCC OriX / Women's Health line
        || doc.deliveredTo.indexOf("3147103341") > -1 ||doc.deliveredTo.indexOf("3147103350") > -1 
        || doc.deliveredTo.indexOf("3147103360") > -1) { 
        
        zData.classification = "ARCC";  //AN20190315 this is ARCC - think we are still missing 2 numbers since we only have 6
        
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
        
        zData.classification = "Oriahnn";  //AN20200408 this is the Women's Health / OriX / ORIAHNN program
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
