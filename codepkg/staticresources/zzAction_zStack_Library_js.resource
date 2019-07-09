<!--
// Name: zStack Library
// Committer: andrew@zpaper.com
// Update: updating comment
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-07-01 21:45:58","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCnpEYXRhLnVwbG9hZERpciA9ICJpbnRlZ3JhdGlvbkRpciI7IC8qUFYwMjE2MTggaW5zdGFsbGF0aW9uIGRpcmVjdG9yeSBmb3IgdGlmZiAqLwp6RGF0YS5hY2NvdW50SWQgPSAiIjsgLypNU0gxNzExMjgqLwp6RGF0YS5jYXNlRmllbGRzOyAvKmFycmF5IHVzZWQgdG8gc2V0IHRoZSBxdWV1ZSBJRCBiYXNlZCBvbiB0aGUgdHlwZSBvZiBjYXNlKi8KLy9Db250YWN0IHJlY29yZCB0eXBlIElEcwp6RGF0YS5jb250YWN0UmVjb3JkVHlwZUlkID0gIiI7IC8qTVNIMTcwOTE1IEluZGl2aWR1YWwqLwovKnZhciBzZWFyY2hGaWVsZHNKU09OID0gW107Ly8gUHYxOTA1MTAgdXBkYXRlZCBmb3IgY3VzdG9tIGNvbmZpZwpzZWFyY2hGaWVsZHNKU09OLnB1c2goIkZheF9OdW1iZXJfX2MiLCIxNjc4NzI3MDY1MCIpOwp2YXIgc2ZSZWNvcmRDb25maWdJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCAiekRhdGFfQ29uZmlnX19jIiwgeyJGYXhfTnVtYmVyX19jIjoiMTY3ODcyNzA2NTAifSk7CmFsZXJ0KCJzZlJlY29yZENvbmZpZ0lkPT09IitzZlJlY29yZENvbmZpZ0lkKTsKdmFyIHNmUmVjb3JkQ29uZmlnID0gZ2V0U0ZGaWVsZHMoZG9jLCAiekRhdGFfQ29uZmlnX19jIiwgIkNvbmZpZ19TdHJpbmdfX2MiLCBudWxsLCBzZlJlY29yZENvbmZpZ0lkKTsKdmFyIGNvbmZpZ2pzb24gPSBYKGRvYywgIkNvbmZpZ19TdHJpbmdfX2MiLCBzZlJlY29yZENvbmZpZyApOwpjb25maWdqc29uID0gY29uZmlnanNvbi5yZXBsYWNlKC8mYXBvczsvZywiIikucmVwbGFjZSgvJnF1b3Q7L2csJyInKTsKYWxlcnQoIkBAQCBjb25maWdqc29uPT09PSIrY29uZmlnanNvbik7CnZhciB6RGF0YU5ldyA9IEpTT04ucGFyc2UoY29uZmlnanNvbixmdW5jdGlvbiAoa2V5LCB2YWx1ZSkgewogICAgekRhdGFba2V5XSA9IHZhbHVlOyAgICAKICAgIGFsZXJ0KGtleSArIiBAQEA9PT09Iit2YWx1ZSk7Cn0pOwphbGVydCgiQEBAIHpEYXRhTmV3PT09PSIrekRhdGFOZXcpOwoqLwphbGVydCgiQEBAIHpEYXRhPT09PSIrSlNPTi5zdHJpbmdpZnkoekRhdGEpKTsKYWxlcnQoIkBAQCBjbGFzc2lmaWNhdGlvbj09PSIrIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKYWxlcnQoIkBAQCBjbGFzc2lmaWNhdGlvbj09PSIrIHpEYXRhWyImYXBvcztjbGFzc2lmaWNhdGlvbiZhcG9zOyJdKTsKLy9BTjIwMTgwNzExIGZ1bmN0aW9uIHRvIHJldHJpZXZlIGEgcmVjb3JkdHlwZUlELiBEaXNjdXNzIHdpdGggRXJpYyB0aGUgQVBJIGltcGxpY2F0aW9ucwovL3pEYXRhLnRlc3RSZWNvcmRUeXBlID0gZ2V0U0ZGaWVsZChkb2MsICJSZWNvcmRUeXBlIiwgIklkIiwgIlNvYmplY3RUeXBlID0gJ0Nhc2UnIGFuZCBOYW1lID0gJ05ldy9SZW5ld2FsL1lFQy9Pbi1nb2luZyBQcmVzY3JpcHRpb24nIiwgbnVsbCk7Ci8vYWxlcnQoIkBAQCB0ZXN0UmVjb3JkVHlwZSA9ICIgKyB6RGF0YS50ZXN0UmVjb3JkVHlwZSk7CnpEYXRhLm5hbWVGaWxlID0gZnVuY3Rpb24oZG9jKSB7IC8vRVJTMTcwODI5ICM0MTI5OCByZXR1cm5zIGEgbGFiZWwgdG8gYmUgdXNlZCBpbiBhbnkgYXR0YWNoZXMgYW5kIGZpeGVzIHRoZSBkb2MKICAgIC8vRG9jdW1lbnQgYXR0YWNobWVudCBsYWJlbCBzaG91bGQgYmUgIlBhdGllbnQgTmFtZSAtIERvYyBUeXBlIC0gRGF0ZSIuICBDb25maXJtZWQgZm9yIHpQYXBlciBGaWxlIGFuZCBTRkRDIEF0dGFjaG1lbnQKICAgIHZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgIGRvYy5sYWJlbD1YKGRvYywiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpK1goZG9jLCJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKSsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsKICAgIGFsZXJ0KCJFUlMxNzA4MjkgZGJJRD0iK2RvYy5kYklEKyIgbGFiZWw9Iitkb2MubGFiZWwpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBkb2MubGFiZWwpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGRvYy5sYWJlbDsKfTsKLy9NU0gxNzA4MzEgZXh0cmFjdCBkYXRlIGZvcm1hdCBmcm9tIHpEYXRhLm5hbWVGaWxlCnpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkgPSBmdW5jdGlvbihkb2MpIHsKICAgIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICAgIC8vTVNIMTcwOTA2IHBhZCBkYXkgd2l0aCB6ZXJvCiAgICB2YXIgY3VyRGF5ID0gdG9kYXkuZ2V0RGF0ZSgpOwogICAgLy9NU0gxNzA5MDYgdmFyIE1NZGRZWVlZID0gICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKyIiK3RvZGF5LmdldERhdGUoKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKICAgIHZhciBNTWRkWVlZWSA9ICAoIiIrKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKSsoIiIrKGN1ckRheSA+IDkgPyBjdXJEYXkrIiIgOiAiMCIrY3VyRGF5KSkrIiIrdG9kYXkuZ2V0RnVsbFllYXIoKSk7CiAgICAvL2FsZXJ0KCJNTWRkWVlZWSA9PSAiICsgTU1kZFlZWVkpOwogICAgcmV0dXJuIE1NZGRZWVlZOwp9OwovL0NSTjE3MDMyNCBUT0RPIGRvYy5jbG9uZSgpIGRvbmUgcmlnaHQ7CnpEYXRhLmNsb25lID0gZnVuY3Rpb24oZG9jKSB7CiAgICB2YXIgZG9jMCA9IFtdOwogICAgZm9yICh2YXIgaSBpbiBkb2MpIGRvYzBbaV0gPSBkb2NbaV07CiAgICByZXR1cm4gZG9jMDsKfTsKLy9NU0gxNzEwMDUgZ2V0IGFsbCB0aGUgb3JncyBpbiBoZXJlCnpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyA9IGZ1bmN0aW9uKGRvYykgewogICAgYWxlcnQoIisrKyBTVEFSVElORyB6RGF0YS5zZXRHbG9iYWxWYXJpYWJsZXMgKysrIik7CiAgICBhbGVydCgiQEBAIGRvYy5kZWxpdmVyZWRUbyA9ICIgKyBkb2MuZGVsaXZlcmVkVG8pOwogICAgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjM0IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDYzMyIpID4gLTEgCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzEwNDMiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMDM3IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMDEzIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4MjM1NjU5NyIpID4gLTEgCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzEyNzQiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcxMTA2IikgPiAtMQogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIxNjc4OTQ4MjUzMyIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODk0ODI1MzMiKSA+IC0xKSB7IC8vYWJidmllIFBBUCBmYXggbGluZXMgLy9FUlM3MDQyMSBpbmRleE9mIGlzIHNhZmVyICMzNjQxMQogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIlBBUCI7CiAgICAgICAgCiAgICB9CiAgICBlbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY0NiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2MzgiKSA+IC0xIAogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjcwIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY4MyIpID4gLTEgCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NjIiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNDYzIikgPiAtMSAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY4NiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzExMDkiKSA+IC0xCiAgICAgICAgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4OTQ4MjU0NCIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1NDQiKSA+IC0xKSB7IC8vYWJidmllIFJILUltbXVub2xvZ3kgZmF4IGxpbmVzCiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiUkgtSW1tdW5vbG9neSI7IAogICAgfQogICAgZWxzZSBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA0ODciKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNDg5IikgPiAtMSAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDUwMiIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA1MDYiKSA+IC0xIAogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNTExIikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDQ5NCIpID4gLTEKICAgICAgICB8fGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCIxNjc4OTQ4OTk4OSIpID4gLTEgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODk5ODkiKSA+IC0xKSB7IC8vYWJidmllIENvbXBsZXRlIEludGFrZSAoU2t5cml6aSkgKFJpc2Fua2l6dW1hYikgZmF4IGxpbmVzCiAgICAgICAgCiAgICAgICAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiQVJDQyI7ICAvL0FOMjAxOTAzMTUgdGhpcyBpcyBBUkNDIC0gdGhpbmsgd2UgYXJlIHN0aWxsIG1pc3NpbmcgMiBudW1iZXJzIHNpbmNlIHdlIG9ubHkgaGF2ZSA2CiAgICAgICAgCiAgICB9CiAgICBlbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY1NSIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2MjYiKSA+IC0xIAogICAgICAgIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjc0IikgPiAtMSB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY4NSIpID4gLTEgCiAgICAgICAgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzA2NjciKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI2Nzg3MjcwNjUwIikgPiAtMSAKICAgICAgICB8fCBkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiNjc4NzI3MDY5MCIpID4gLTEgfHwgZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjY3ODcyNzExMTciKSA+IC0xCiAgICAgICAgfHxkb2MuZGVsaXZlcmVkVG8uaW5kZXhPZigiMTY3ODk0ODI1NDkiKSA+IC0xIHx8ZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoIjE2Nzg5NDgyNTQ5IikgPiAtMSkgeyAvL2FiYnZpZSBDb21wbGV0ZSBJbnRha2UgKFNreXJpemkpIChSaXNhbmtpenVtYWIpIGZheCBsaW5lcwogICAgICAgIAogICAgICAgIHpEYXRhLmNsYXNzaWZpY2F0aW9uID0gIkNvbXBsZXRlIEltbXVub2xvZ3kiOyAgLy9BTjIwMTkwMjI2IHRoaXMgaXMgdGhlIENvbXBsZXRlIEltbXVub2xvZ3kgcHJvZ3JhbSAoU2t5cml6aSkgKFJpc2Fua2l6dW1hYikKICAgIH0KICAgIGVsc2UgewogICAgICAgICAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9IGRvYy5kZWxpdmVyZWRUbzsgLy9FUlMxNzA2MjYKICAgIH0KICAgIGFsZXJ0KCIrKysgRU5ESU5HIHpEYXRhLnNldEdsb2JhbFZhcmlhYmxlcyArKysiKTsKICAgIGFsZXJ0KCJAQEAgekRhdGEuY2xhc3NpZmljYXRpb24gPSAiICsgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgICAgIAp9CiAgICB6RGF0YS5nZW5lcmF0ZVRpZmYgPSB0cnVlOyAvLyBVcGRhdGVkIHRvIGdlbmVyYXRlIHRpZmYgUFYwMjI1MTgKLyogVGhpcyBmdW5jdGlvbiBuZWVkcyB0byBiZSBhZGRlZCB0byBldmVyeSBydWxlIHRvIGhlbHAgYXNzdXJlIHRoYXQgcnVsZXMgZG8gbm90IGdldCBhY2NpZGVudGFsbHkgdHJpZ2dlcmVkICovCi8qIEFkZCB0aGlzIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIHJ1bGVzIGVuZ2luZSBpdHNlbGY/ICovCnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbiA9IGZ1bmN0aW9uKGRvYyx0cmlnZ2VyRmllbGQpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICAgIHZhciBhcnJPZlBhaXJzID0gW107CiAgICBhcnJPZlBhaXJzLnB1c2godHJpZ2dlckZpZWxkLCAiIik7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn07CnpEYXRhLmluaXRpYWxpemVTdGFjayA9IGZ1bmN0aW9uKGRvYywgc3RhY2tGb2xkZXIsIHN0YWNrSWQpIHsgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICAgIHZhciBmaW5hbFJvb3RGb2xkZXIgPSB6RGF0YS5jbGFzc2lmaWNhdGlvbisiLUFyY2hpdmUiOyAvL2JhdGVzIG9mIHRoZSBBcmNoaXZlIGZvbGRlcgogICAgdmFyIHl5eXlNTUZvbGRlck5hbWUgPSB0b2RheS5nZXRGdWxsWWVhcigpICsgKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKTsKICAgIHZhciB5eXl5TU1Gb2xkZXIgPSBmaW5hbFJvb3RGb2xkZXIgKyAiLSIgKyB5eXl5TU1Gb2xkZXJOYW1lOwogICAgYWxlcnQoIkBAQCBzdGFja0ZvbGRlciBpcyAtICIgKyBzdGFja0ZvbGRlcik7CiAgICBhbGVydCgiQEBAIGZpbmFsUm9vdEZvbGRlciBpcyAtICIgKyBmaW5hbFJvb3RGb2xkZXIpOwogICAgYWxlcnQoIkBAQCB5eU1NRm9sZGVyIGlzIC0gIiArIHl5eXlNTUZvbGRlcik7CiAgICBhbGVydCgiQEBAIGNyZWF0aW5nIG5ldyBzdGFjayBkZXN0aW5haW9uIGZvbGRlciB3aXRoIG5hbWUgLSAiICsgc3RhY2tGb2xkZXIpOwogICAgLyogUmVmcmVzaCB0aGUgY3VycmVudCBmb2xkZXIgKi8KICAgIHJlbG9hZEJ5SWQoZG9jLCBYKGRvYywiWF9jdXJGb2xkZXIiKSk7CiAgICAvKiBzYW1lIHZhbHVlIGZvciBCQVRFUyBhbmQgbGFiZWwgKi8KICAgIC8qIFRoZSBmb2xkZXIgc3RydWN0dXJlIHdpbGwgbG9vayBsaWtlIHRoaXM6IC8yMDE2MDgvM0NYM0NYLzEyMzQ1Njc4OS1TVEFDSyAqLwogICAgY3JlYXRlRm9sZGVyKGRvYywgZmluYWxSb290Rm9sZGVyLCB5eXl5TU1Gb2xkZXIsIHl5eXlNTUZvbGRlck5hbWUpOwogICAgY3JlYXRlRm9sZGVyKGRvYywgeXl5eU1NRm9sZGVyLCBzdGFja0ZvbGRlciwgc3RhY2tGb2xkZXIpOwogICAgYWxlcnQoIkBAQEAgTW92aW5nIHRoZSBzdGFjayBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7CiAgICBtb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9pbmRleEluaXRpYWxpemVkIiwgInRydWUiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9zdGFjayIsIHN0YWNrSWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiLSIgKyBzdGFja0lkICsgIi1TVEFDSyIpOwogICAgLyogU3RhY2sgTGFiZWxsaW5nIENoYW5nZSAqLwogICAgdmFyIGR0U3RhbXAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlKTsKICAgIC8qIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCJTdGFjayAtICIgKyBkdFN0YW1wKTsgKi8KICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfTsKekRhdGEuY291bnRQYWdlcyA9IGZ1bmN0aW9uKGRvYywgcGFnZVJhbmdlMikgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogICAgLy9NU0gxNzEwMjcgZGVidWdnaW5nCiAgICBhbGVydCgiekRhdGEuY291bnRQYWdlcyBwYWdlUmFuZ2UyID0gIiArIHBhZ2VSYW5nZTIpOwogICAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlMi5zcGxpdCgiLCIpOwogICAgaWYgKCFwYWdlcykgcGFnZXM9W3BhZ2VSYW5nZTJdOwogICAgYWxlcnQoInpEYXRhLmNvdW50UGFnZXMgcGFnZXMgPSAiICsgcGFnZXMpOwogICAgcmV0dXJuIHBhZ2VzLmxlbmd0aDsKfTsKLy9NU0gxNzA4MjgKaWYgKDE9PTEpIHsgLy9FUlMxNzA4MDUgZ2V0IHRoZSBkYXRhIGZyb20gdGhlIERlcGxveW1lbnRJbmZvCiAgICAvL2FsZXJ0KCJFUlMxNzA3MjUgREk9Iitkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKTsKICAgIHZhciBjcz0oZG9jLmtiRGF0YS5kZXBsb3ltZW50SW5mbysiIik7IC8vbm90IFsiQnVzaW5lc3NfUHJvY2Vzc19fYyJdOwogICAgLy9hbGVydCgiRVJTMTcwODA1IGNzPSIrY3MpOwogICAgaWYgKGNzKSB7CiAgICAgICAgaWYgKGNzLmluZGV4T2YoInpDdXN0b21TZXR0aW5ncyIpPi0xKSBjcz1YKGRvYywiekN1c3RvbVNldHRpbmdzIixjcyk7CiAgICAgICAgaWYgKGNzICE9PSAiIikgZXZhbChjcyk7CiAgICAgICAgLy9NU0gxNzA4MjggYWxlcnQoIkVSUzE3MDgwNSBIQUNLIGZvciAiK3pEYXRhLkEzNjBJbmNvbWluZyk7CiAgICB9Cn0KekRhdGEuc2V0R2xvYmFsVmFyaWFibGVzKGRvYyk7IC8vY2FsbCBmdW5jdGlvbiB0byBzZXQgdmFyaWFibGVzCi8qIEVORCAqLwo="},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//global variables
zData.uploadDir = "integrationDir"; /*PV021618 installation directory for tiff */
zData.accountId = ""; /*MSH171128*/
zData.caseFields; /*array used to set the queue ID based on the type of case*/
//Contact record type IDs
zData.contactRecordTypeId = ""; /*MSH170915 Individual*/
/*var searchFieldsJSON = [];// Pv190510 updated for custom config
searchFieldsJSON.push("Fax_Number__c","16787270650");
var sfRecordConfigId = getSFRecordID(doc, "zData_Config__c", {"Fax_Number__c":"16787270650"});
alert("sfRecordConfigId==="+sfRecordConfigId);
var sfRecordConfig = getSFFields(doc, "zData_Config__c", "Config_String__c", null, sfRecordConfigId);
var configjson = X(doc, "Config_String__c", sfRecordConfig );
configjson = configjson.replace(/&apos;/g,"").replace(/&quot;/g,'"');
alert("@@@ configjson===="+configjson);
var zDataNew = JSON.parse(configjson,function (key, value) {
    zData[key] = value;    
    alert(key +" @@@===="+value);
});
alert("@@@ zDataNew===="+zDataNew);
*/
alert("@@@ zData===="+JSON.stringify(zData));
alert("@@@ classification==="+ zData.classification);
alert("@@@ classification==="+ zData["&apos;classification&apos;"]);
//AN20180711 function to retrieve a recordtypeID. Discuss with Eric the API implications
//zData.testRecordType = getSFField(doc, "RecordType", "Id", "SobjectType = 'Case' and Name = 'New/Renewal/YEC/On-going Prescription'", null);
//alert("@@@ testRecordType = " + zData.testRecordType);
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
    //alert("ERS170725 DI="+doc.kbData.deploymentInfo);
    var cs=(doc.kbData.deploymentInfo+""); //not ["Business_Process__c"];
    //alert("ERS170805 cs="+cs);
    if (cs) {
        if (cs.indexOf("zCustomSettings")>-1) cs=X(doc,"zCustomSettings",cs);
        if (cs !== "") eval(cs);
        //MSH170828 alert("ERS170805 HACK for "+zData.A360Incoming);
    }
}
zData.setGlobalVariables(doc); //call function to set variables
/* END */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
