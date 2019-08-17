<!--
// Name: DELIVERY_COMPLETE
// Committer: andrew@zpaper.com
// Update: adding 2 new fields
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-07-19 13:19:55","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9UUE0xODA4MDMgc3RhcnRpbmcgREVMSVZFUllfQ09NUExFVEUgcnVsZQp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgY292ZXJJRCA9IFgoZG9jLCAiY292ZXJJRCIpOwp2YXIgZG9jVGl0bGUgPSBYKGRvYywgImRvY1RpdGxlIik7Ci8vdmFyIGRlbGl2ZXJlZFRvID0gWChkb2MsICJkZWxpdmVyZWRUbyIpOwp2YXIgZGVsaXZlcmVkVG8gPSBYKGRvYywgIkNvbnRhY3RGYXgiLCBkb2Mud2RkYXRhKTsgLy9BTjIwMTkwNzE2ICM2MDc1NCBkb2MuZGVsaXZlcmVkVG8gaXMgY29taW5nIG92ZXIgYXMgbnVsbCAtIHdhcyBzdWdnZXN0ZWQgdG8gdXNlIENvbnRhY3RGYXgKCmFsZXJ0KCJjb3ZlcklEOiAiICsgY292ZXJJRCk7CmFsZXJ0KCJkb2NUaXRsZTogIiArIGRvY1RpdGxlKTsKCi8qIE1TSDE4MDIwNyBkZWZpbmUgb25jZSBoZXJlICovCnZhciBhcnJPZlBhaXJzID0gW107CnZhciBzZkNhc2VJZCA9ICIiOwp2YXIgc2ZDb250YWN0SWQgPSAiIjsKdmFyIHNmVHlwZSA9IFgoZG9jLCAic2ZUeXBlIik7CnZhciBwYXRpZW50Rmlyc3ROYW1lID0gIiI7CnZhciBwYXRpZW50TGFzdE5hbWUgPSAiIjsKdmFyIHBhdGllbnRJZCA9ICIiOwp2YXIgT3duZXJJZCA9ICIiOwoKLy9UUE0xODA4MDMgQmVsb3cgSUYgc3RhdGVtZW50IGlzIG9ubHkgZm9yIFBBT1MgaW50ZWdyYXRpb24uICBPdGhlciBERUxJVkVSWV9DT01QTEVURSBmdW5jdGlvbmFsaXR5IGlzIGJlbG93IHRoYXQuCi8vQU4xODA3MDkgVGhpcyBJRiBzdGF0ZW1lbnQgY29udGFpbnMgbG9naWMgZm9yIFBBT1MgZnVuY3Rpb25hbGl0eS4gUEFPUyBoYXMgMyB1c2UgY2FzZXMsIGVhY2ggdHJpZ2dlcmVkIGJ5IGEgZGlmZmVyZW50IG91dGJvdW5kIG1lc3NhZ2UuICBTZWUgVG9tIGZvciBkZXRhaWxzLgoKdmFyIHVzZUNhc2UgPSBYKGRvYywgInpQQU9TVXNlQ2FzZV9fYyIpOyAvL3RvZG86IGNsZWFuIHRoaXMgdXAgLSB3ZSBubyBsb25nZXIgaGF2ZSBQQU9TIHVzZSBjYXNlcwppZiAodXNlQ2FzZSAmJiB1c2VDYXNlLmxlbmd0aCA+IDApIHsKICAgIAogICAgYWxlcnQoInVzZUNhc2U6ICIgKyB1c2VDYXNlKTsKCiAgICB2YXIgc2ZBY3Rpdml0eU9uSWQgPSBYKGRvYywgIlhfYWN0aXZpdHlPbklEIik7IC8vZGVwZW5kaW5nIG9uIHRoZSBVc2UgQ2FzZSB0aGlzIG1heSBiZSBhbiBQU19BcHBsaWNhdGlvbl9fYyByZWNvcmQsIGEgQ29udGFjdCwgb3IgYW4gQWNjb3VudAogICAgYWxlcnQoInNmQWN0aXZpdHlPbklkOiAiICsgc2ZBY3Rpdml0eU9uSWQpOwogICAgCiAgICB2YXIgbWFzdGVySUQgPSAoZG9jLmtiRGF0YS5ncm91cElEKS5zdWJzdHJpbmcoMSwoZG9jLmtiRGF0YS5ncm91cElEKS5sZW5ndGgoKSk7IC8vZ2V0IHRoZSB6UGFwZXIgTWFzdGVyIElECiAgICBhbGVydCgiQEBAIG1hc3RlcklEOiAiICsgbWFzdGVySUQpOwoKICAgIHNmQ2FzZUlkID0gWChkb2MsICJQU19Qb3J0YWxDYXNlX19jIik7CiAgICBzZkNvbnRhY3RJZCA9IFgoZG9jLCAiUFNfQ29udGFjdF9fYyIpOwogICAgYWxlcnQoImZvdW5kIHNmQ2FzZUlkOiAiICsgc2ZDYXNlSWQpOwogICAgYWxlcnQoImZvdW5kIHNmQ29udGFjdElkOiAiICsgc2ZDb250YWN0SWQpOwoKICAgIGlmICghc2ZDYXNlSWQpIHsKICAgICAgICAvKiBBTjIwMTkwMTE1IGFzIG9mIEphbiAyMDE5IHdlIG5vIGxvbmdlciBuZWVkIHRvIGNyZWF0ZSBhIGNhc2UgLSBjbGVhbiB0aGlzIGNvZGUgdXAgbGF0ZXIKICAgICAgICBzZkNhc2VJZCA9IHpEYXRhLmNyZWF0ZUNhc2UoZG9jLCBzZkFjdGl2aXR5T25JZCk7CiAgICAgICAgYWxlcnQoImNyZWF0ZWQgc2ZDYXNlSWQ6ICIgKyBzZkNhc2VJZCk7CiAgICAgICAgKi8KICAgIH0gZWxzZSB7CgovL0FOMjAxOTAxMTUgdGhpcyBpcyB3aGVyZSB3ZSBhdHRhY2ggYSBkb2MgdG8gdGhlIGNhc2UKICAgICAgICBhbGVydCgiY2FsbGluZyBhdHRhY2ggd2l0aCBzZkNhc2VJZCA9ICIgKyBzZkNhc2VJZCk7IC8qIE1TSDE3MTAyMCBkZWJ1Z2dpbmcgKi8KICAgICAgICB2YXIgYXR0UmVzdWx0ID0gYXR0YWNoKGRvYywgIk5ldyBTdGFjayByZWNlaXZlZCBvbiAiICsgZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKSwgc2ZDYXNlSWQsIGZhbHNlKTsKICAgICAgICBhbGVydCgiYXR0UmVzdWx0ID0gICIgKyBhdHRSZXN1bHQpOyAvKiBNU0gxNzEwMjAgZGVidWdnaW5nICovCiAgICAgICAgaWYgKGF0dFJlc3VsdC5pbmRleE9mKCJFUlJPUiIpID49IDApIHsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI8RVJST1I+Iik7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgYWxlcnQoIlN1Y2Nlc3NmdWwgYXR0YWNoIGNvbXBsZXRlLiBDYXNlIElkOiAiICsgc2ZDYXNlSWQpOwogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjxTVUNDRVNTPiIpOwogICAgICAgIH0KICAgIH0KCi8vQU4yMDE5MDExNSBzZXQgdGhlIGxhYmVsIG9mIHRoZSBmaWxlIG9uIHRoZSBQU19BcHBsaWNhdGlvbl9fYyBvYmplY3QKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCAiUEFPUyBTdXBwb3J0aW5nIERvY3VtZW50Iik7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOyAgICAgIAogICAgCi8vQU4yMDE5MDExNSB3ZSBzaG91bGQgc3RpbGwgY3JlYXRlIGEgc3RhY2sgICAgICAgCiAgICB2YXIgc3RhY2tJZCA9IHpEYXRhLmNyZWF0ZVN0YWNrKGRvYywgc2ZDb250YWN0SWQsIHNmQ2FzZUlkLCAiQ29tcGxldGUiKTsKICAgIGFsZXJ0KCJzdGFja0lEOiAiICsgc3RhY2tJZCk7CiAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIk5hbWUiLCBudWxsLCBzZkFjdGl2aXR5T25JZCk7CiAgICBjb250YWN0RmxkcyArPSAiIjsKICAgIHZhciBwYXRpZW50bmFtZSA9IFgoZG9jLCAiTmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgIAogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgdmFyIGF0dGFjaFBhdGggPSBzZkNhc2VJZCArICIsIiArIHN0YWNrSWQ7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsIGF0dGFjaFBhdGgpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1pQQVBFUl9fQ2FzZV9fYyIsIHNmQ2FzZUlkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBwYXRpZW50bmFtZSArICIgUEFPUyBTdXBwb3J0aW5nIERvY3VtZW50Iik7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKICAgIG1vdmVEb2N1bWVudChkb2MsIG1hc3RlcklEICsgIk91dCIsIG1hc3RlcklEICsgIkluIik7CgogICAgLyogTVNIMTcxMDIwICovCiAgICB6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24oZG9jLCJYX2J1dHRvbkFjdGlvbiIpOwogICAgcmV0dXJuOwp9Ci8vVFBNMTgwODAzICBFTkQgb2YgUEFPUyBpbnRlZ3JhdGlvbiBjb2RlCgoKLyogIERFTElWRVJZX0NPTVBMRVRFIHJ1bGUgZm9yIGFueXRoaW5nIE5PVCBQQU9TKi8KCnZhciBhdHRhY2hMYWJlbCA9ICJTZW50IG9uICIgKyBmb3JtYXROb3c7IC8qIE1TSDE3MDkwNSAqLwp2YXIgc2ZJZCA9IFgoZG9jLCAiWF9hY3Rpdml0eU9uSUQiKTsKdmFyIGF0dGFjaGVkVG8gPSBYKGRvYywgInNmU2VydmVyIik7CmF0dGFjaGVkVG8gKz0gIi8iICsgc2ZJZDsKCgp2YXIgZG9jVHlwZT1YKGRvYywgIlhfZG9jVHlwZVNlbnQiKTsgLy9FUlMxODAzMjggIzQ2MzczCmFsZXJ0KCJAQEAgZmlyc3QgZG9jVHlwZSA9ICIgKyBkb2NUeXBlKTsKaWYgKGRvY1R5cGU9PT0iIikgeyBkb2NUeXBlID0gWChkb2MsIlhfZG9jVHlwZSIpOyB9ICAvL0VSUzE4MDMyOCAjNDYzNzMKYWxlcnQoIkBAQCBzZWNvbmQgZG9jVHlwZSA9ICIgKyBkb2NUeXBlKTsKaWYgKGRvY1R5cGU9PT0iIikgeyBkb2NUeXBlID0gZG9jLmRvY1R5cGU7IH0KYWxlcnQoIkBAQCB0aGlyZCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOwppZiAoZG9jVHlwZT09PSIiKSB7IGRvY1R5cGUgPSBYKGRvYywiQ29udGFjdE5hbWUiKTsgfSAvL0VSUzE4MDMyOCAjNDYzNzMKYWxlcnQoIkBAQCBmb3J0aCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOwppZiAoZG9jVHlwZT09PSIiKSB7IGRvY1R5cGUgPSAiRkFYIjsgfQphbGVydCgiQEBAIGZpZnRoIGRvY1R5cGUgPSAiICsgZG9jVHlwZSk7CmRvYy5kb2NUeXBlPWRvY1R5cGU7IC8vRVJTMTgwMzI4ICM0NjM3MwoKdmFyIGxhYmVsRG9jVHlwZSA9IGRvY1R5cGU7CgphbGVydCgiQEBAIGRvY1R5cGUgPSAiICsgZG9jVHlwZSk7IAphbGVydCgiQEBAIFgoZG9jLCBzZlNlcnZlcikgPSAiICsgYXR0YWNoZWRUbyk7CgppZiAoc2ZUeXBlID09ICJDYXNlIikgewogICAgCiAgICB2YXIgY2FzZUZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDYXNlIiwgIlJlY29yZFR5cGVJZCxDb250YWN0SWQsQWNjb3VudElkLE93bmVySWQiLCBudWxsLCBzZklkKTsgLy9BTjIwMTgwNzE4IGdldCB0aGUgZmllbGRzIGZyb20gdGhlIENhc2UgdGhhdCB3ZSB3aWxsIG5lZWQKICAgICAKICAgIHZhciByZWNUeXBlSWQgPSBYKGRvYywgIlJlY29yZFR5cGVJZCIsIGNhc2VGbGRzKTsKICAgIHZhciByZWNUeXBlTmFtZSA9IGdldFNGRmllbGQoZG9jLCAiUmVjb3JkVHlwZSIsICJOYW1lIiwgbnVsbCwgcmVjVHlwZUlkKTsgLy9BTjIwMTgwNzE4IGdldCB0aGUgbmFtZSBvZiB0aGUgY3VycmVudCBDYXNlIHJlY29yZCB0eXBlCiAgICBPd25lcklkID0gWChkb2MsICJPd25lcklkIiwgY2FzZUZsZHMpOwogICAgYWxlcnQoIkBAQCBPd25lcklkIiArIE93bmVySWQpOwogICAgYWxlcnQoIkBAQCBjdXJyZW50IENhc2UgUmVjb3JkIFR5cGUgTmFtZTogIiArIHJlY1R5cGVOYW1lKTsKICAgIAogICAgCiAgICBpZiAocmVjVHlwZU5hbWUgPT09ICJOZXcvUmVuZXdhbC9ZRUMvT24tZ29pbmcgUHJlc2NyaXB0aW9uIil7IC8vdGhpcyBpcyBhIFBBUCBjYXNlCiAgICAgIGFsZXJ0KCJAQEAgZ2V0dGluZyBQQVAgQ2FzZSBkZXRhaWxzIik7CiAgICAgIHBhdGllbnRJZCA9ICBYKGRvYywgIkNvbnRhY3RJZCIsIGNhc2VGbGRzKTsgLy9nZXQgdGhlIENvbnRhY3QgSUQgc2luY2UgUEFQIHVzZXMgdGhlIENvbnRhY3Qgb2JqZWN0IGZvciBQYXRpZW50cwogICAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIHBhdGllbnRJZCk7IAogICAgICBhbGVydCgiQEBAIGNhbGxpbmcgU0YgZm9yIGNvbnRhY3RGbGRzIDo6ICIgKyBjb250YWN0Rmxkcyk7CiAgICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgIH0KCiAgICBlbHNlIGlmIChyZWNUeXBlTmFtZSA9PT0gIkJlbmVmaXQgVmVyaWZpY2F0aW9uIiB8fCByZWNUeXBlTmFtZSA9PT0gIkRlbmlhbCBTdXBwb3J0Iil7IC8vdGhpcyBpcyBhbiBSSC1JbW11bm9sb2d5IGNhc2UKICAgICAgYWxlcnQoIkBAQCBnZXR0aW5nIFJIIENhc2UgZGV0YWlscyIpOwogICAgICBwYXRpZW50SWQgPSBYKGRvYywgIkFjY291bnRJZCIsIGNhc2VGbGRzKTsgLy9nZXQgdGhlIEFjY291bnQgSUQgc2luY2UgUkggdXNlcyB0aGUgQWNjb3VudCBvYmplY3QgZm9yIFBhdGllbnRzCiAgICAgIHZhciBhY2NvdW50RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkFjY291bnQiLCAiUFNfUGF0aWVudEZpcnN0TmFtZV9fYyxQU19QYXRpZW50TGFzdE5hbWVfX2MiLCBudWxsLCBwYXRpZW50SWQpOyAKICAgICAgYWxlcnQoIkBAQCBjYWxsaW5nIFNGIGZvciBhY2NvdW50RmxkcyA6OiAiICsgYWNjb3VudEZsZHMpOwogICAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJQU19QYXRpZW50Rmlyc3ROYW1lX19jIiwgYWNjb3VudEZsZHMpOwogICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlBTX1BhdGllbnRMYXN0TmFtZV9fYyIsIGFjY291bnRGbGRzKTsKICAgIH0KCiAgICBhbGVydCgiQEBAIHBhdGllbnRJZCA6OiAiICsgcGF0aWVudElkKTsKICAgIGFsZXJ0KCJAQEAgcGF0aWVudEZpcnN0TmFtZSA6OiAiICsgcGF0aWVudEZpcnN0TmFtZSk7CiAgICBhbGVydCgiQEBAIHBhdGllbnRMYXN0TmFtZSA6OiAiICsgcGF0aWVudExhc3ROYW1lKTsKICAgIAogICAgLyogY3JlYXRlIGF0dGFjaExhYmVsIFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpICsgWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKSArICIgLSAiICsgWChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpICsgIiAtICIgKyBNTWRkWVlZWTsgKi8gICAgCiAgICBhdHRhY2hMYWJlbCA9IHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIGRvY1RpdGxlICsgIiAtIFNlbnQgIiArIHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgIGFsZXJ0KCJAQEBAIGF0dGFjaExhYmVsOiAiICsgYXR0YWNoTGFiZWwpOwogICAgCiAgICAvL2Fyck9mUGFpcnMgPSBbXTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CiAgICAKICAgIAogICAgLy8gRm9yIEFiYnZpZSdzIEJ1bGsgcHJpbnRpbmcgY2FwYWJpbGl0eQogICAgLyogTVNIMTgwMjI4ICM0NjI5NCAqLwogICAgdmFyIGJ1bGtQcmludCA9IChYKGRvYywgIm1haWxvbmRlbWFuZCIsICIiKS5sZW5ndGggPiAwKTsKICAgIGlmIChidWxrUHJpbnQpIHsKICAgICAgICAvKiBNU0gxODAyMDcgYXNzdW1pbmcgaXQgZ290IHNlbnQgdG8gcHJpbnQgcHJvY2VzcyAqLwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBkb2NUeXBlID0gIkJQIjsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0J1bGtwcmludF9EYXRlX3RpbWVfX2MiLCBmb3JtYXROb3cpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQnVsa3ByaW50X3N0YXR1c19fYyIsIFgoZG9jLCAiWF9mYXhTdGF0dXMiKSk7CiAgICAgICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCAiQ2FzZSIsIFgoZG9jLCAic2ZJZCIpLCBhcnJPZlBhaXJzKTsKICAgIH0KfQoKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uMCIsIFgoZG9jLCAiWF9idXR0b25BY3Rpb24iKSk7CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCAiIik7Ci8qIE1TSDE3MDkwNSBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgIlNlbnQgb24gIiArIGZvcm1hdE5vdyk7ICovCmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CmFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi0iICsgZG9jLmRvY1R5cGUpOyAvKiBFUlMxNzA2MjUgdG9kbyBnZXQgZG9jVHlwZSBmcm9tIHRlbXBsYXRlIHVzZWQgKi8KYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLCBhdHRhY2hlZFRvKTsgLyogRVJTMTcwNjI4IGRvY1NldCBuZWVkcyB0aGlzICovCmlmIChkb2NUeXBlICE9PSAiIikgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLGRvY1R5cGUpOyAvL0VSUzE4MDMyOCAjNDYzNzMKCi8vVFBNMTgwODAzIEZvciBzZXR0aW5nIGNoZWNrYm94ZXMgb24gdGhlIHpkb2NzZXQKaWYgKDE9PT0xKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcwogICAgdmFyIGJhPWRvYy5YKCJYX2ZheFN0YXR1cyIpKyIiOwogICAgaWYgKCJEZWxpdmVyZWQiICE9PSBiYSkgeyBiYT0iRmFpbGVkIjsgfSAvL0pQQjE4MDgwMyAjNTAxNzgKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vRVJTMTcwOTA5ICM0MDU5MgogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwp9CgoKCmFsZXJ0KCJAQEAgbWFzdGVyIElEIGlzID0gIiArIGRvYy5rYkRhdGEuZ3JvdXBJRCk7CmFsZXJ0KCJAQEAgUEFQIGdyb3VwIElEIGlzID0gIiArIHpEYXRhLnBhcEdyb3VwSWQpOwphbGVydCgiQEBAIFJILUltbXVub2xvZ3kgZ3JvdXAgSUQgaXMgPSAiICsgekRhdGEuaW1tdW5Hcm91cElkKTsKYWxlcnQoIkBAQCBDb21wbGV0ZSBJbnRha2UgZ3JvdXAgSUQgaXMgPSAiICsgekRhdGEuY29tcEludEdyb3VwSWQpOwoKaWYgKHNmVHlwZSA9PSAiQ2FzZSIpIHsKCiAgICB2YXIgY2FzZUZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDYXNlIiwgIlJlY29yZFR5cGVJZCxDbGFzc2lmaWNhdGlvbl9fYyxPd25lcklkIiwgbnVsbCwgc2ZJZCk7IC8vQU4yMDE4MDcxOCBnZXQgdGhlIGZpZWxkcyBmcm9tIHRoZSBDYXNlIHRoYXQgd2Ugd2lsbCBuZWVkCgogICAgdmFyIHJlY1R5cGVJZCA9IFgoZG9jLCAiUmVjb3JkVHlwZUlkIiwgY2FzZUZsZHMpOwogICAgdmFyIHJlY1R5cGVOYW1lID0gZ2V0U0ZGaWVsZChkb2MsICJSZWNvcmRUeXBlIiwgIk5hbWUiLCBudWxsLCByZWNUeXBlSWQpOyAvL0FOMjAxODA3MTggZ2V0IHRoZSBuYW1lIG9mIHRoZSBjdXJyZW50IENhc2UgcmVjb3JkIHR5cGUKICAgIE93bmVySWQgPSBYKGRvYywgIk93bmVySWQiLCBjYXNlRmxkcyk7CiAgICBhbGVydCgiQEBAIHJlY1R5cGVOYW1lIGlzID0gIiArIHJlY1R5cGVOYW1lKTsKCiAgICB2YXIgY2FzZUNsYXNzaWZpY2F0aW9uID0gIFgoZG9jLCAiQ2xhc3NpZmljYXRpb25fX2MiLCBjYXNlRmxkcyk7IAogICAgYWxlcnQoIkBAQCBjYXNlQ2xhc3NpZmljYXRpb24gaXMgPSAiICsgY2FzZUNsYXNzaWZpY2F0aW9uKTsKICAgIAogICAgLy9zZXQgdGhlIEdyb3VwIHNlY3VyaXR5IHRvIFBBUCwgUkgtSW1tdW5vbG9neSwgb3IgQ29tcGxldGUgSW50YWtlLiBXZSBsb29rIGF0IGJvdGggdGhlIFJlY29yZCBUeXBlIGFuZCB0aGUgQ2xhc3NpZmljYXRpb24gdG8gZGV0ZXJtaW5lIHRoaXMuCiAgICBpZiAocmVjVHlwZU5hbWUgPT09ICJOZXcvUmVuZXdhbC9ZRUMvT24tZ29pbmcgUHJlc2NyaXB0aW9uIiB8fCBjYXNlQ2xhc3NpZmljYXRpb24gPT09ICJQQVAiKSB7IC8vQU4yMDE4MDYwNCBzZXQgUEFQIHNlY3VyaXR5CiAgICAgICAgYWxlcnQoIkBAQCBzZXR0aW5nIGRvY3VtZW50IHNlY3VyaXR5IGZvciBQQVAgZ3JvdXAiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEucGFwR3JvdXBJZCArICI6Iik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEucGFwR3JvdXBJZCArICI6Iik7CiAgICB9CiAgICBlbHNlIGlmIChyZWNUeXBlTmFtZSA9PT0gIkJlbmVmaXQgVmVyaWZpY2F0aW9uIiB8fCBjYXNlQ2xhc3NpZmljYXRpb24gPT09ICJSSC1JbW11bm9sb2d5Iikgey8vQU4yMDE4MDYwNCBzZXQgUkgtSW1tdW5vbG9neSBncm91cCBzZWN1cml0eQogICAgICAgIGFsZXJ0KCJAQEAgc2V0dGluZyBkb2N1bWVudCBzZWN1cml0eSBmb3IgUkgtSW1tdW5vbG9neSIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS5pbW11bkdyb3VwSWQgKyAiOiIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsICI6IiArIHpEYXRhLmltbXVuR3JvdXBJZCArICI6Iik7CiAgICB9CiAgICBlbHNlIGlmIChyZWNUeXBlTmFtZSA9PT0gIkNvbXBsZXRlIEludGFrZSIgfHwgY2FzZUNsYXNzaWZpY2F0aW9uID09PSAiQ29tcGxldGUgSW1tdW5vbG9neSIpIHsvL0FOMjAxOTAzMDEgc2V0IENvbXBsZXRlIEludGFrZSBncm91cCBzZWN1cml0eQogICAgICAgIGFsZXJ0KCJAQEAgc2V0dGluZyBkb2N1bWVudCBzZWN1cml0eSBmb3IgQ29tcGxldGUgSW50YWtlIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsICI6IiArIHpEYXRhLmNvbXBJbnRHcm91cElkICsgIjoiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS5jb21wSW50R3JvdXBJZCArICI6Iik7CiAgICB9Cn0KZWxzZSBpZiAoc2ZUeXBlID09ICJDb250YWN0IikgewogICAgYWxlcnQoIkBAQCBwcm9jZXNzaW5nIG91dGJvdW5kIGZvciBhIFBBUCBjb250YWN0IHJlY29yZCIpOwogICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJSZWNvcmRUeXBlSWQiLCBudWxsLCBzZklkKTsgLy9UUE0xODA4MDYgZ2V0IHRoZSBmaWVsZHMgZnJvbSB0aGUgQ29udGFjdCB0aGF0IHdlIHdpbGwgbmVlZAogICAgdmFyIHJlY1R5cGVJZCA9IFgoZG9jLCAiUmVjb3JkVHlwZUlkIiwgY29udGFjdEZsZHMpOwogICAgdmFyIHJlY1R5cGVOYW1lID0gZ2V0U0ZGaWVsZChkb2MsICJSZWNvcmRUeXBlIiwgIk5hbWUiLCBudWxsLCByZWNUeXBlSWQpOyAvL1RQTTE4MDgwNiBnZXQgdGhlIG5hbWUgb2YgdGhlIGN1cnJlbnQgQ29udGFjdCByZWNvcmQgdHlwZQogICAgYWxlcnQoIkBAQCByZWNUeXBlTmFtZSBpcyA9ICIgKyByZWNUeXBlTmFtZSk7CiAgICAKICAgIC8vc2V0IHRoZSBHcm91cCBzZWN1cml0eSBmb3IgUEFQIChSSCBkb2VzIG5vdCBzZW5kIG91dGJvdW5kIGZyb20gYSBjb250YWN0IHJlY29yZCkKICAgIGlmIChyZWNUeXBlTmFtZSA9PT0gIkluZGl2aWR1YWwiKSB7IC8vVFBNMTgwODA2IHNldCBncm91cCBzZWN1cml0eSBhbmQgYXR0YWNobGFiZWwgZm9yIFBBUCwgbm90IGZvciBSSAogICAgICAgIGFsZXJ0KCJAQEAgc2V0dGluZyBkb2N1bWVudCBzZWN1cml0eSBmb3IgUEFQIGdyb3VwIik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsICI6IiArIHpEYXRhLnBhcEdyb3VwSWQgKyAiOiIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsICI6IiArIHpEYXRhLnBhcEdyb3VwSWQgKyAiOiIpOwogICAgICAgIAogICAgICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgc2ZJZCk7IAogICAgICAgIGFsZXJ0KCJAQEAgY2FsbGluZyBTRiBmb3IgY29udGFjdEZsZHMgOjogIiArIGNvbnRhY3RGbGRzKTsKICAgICAgICBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CiAgICAgICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgICAgICAKICAgICAgICBhdHRhY2hMYWJlbCA9IHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIGRvY1RpdGxlICsgIiAtIFNlbnQgIiArIHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKICAgICAgICBhbGVydCgiQEBAQCBhdHRhY2hMYWJlbDogIiArIGF0dGFjaExhYmVsKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwogICAgfQp9CgovKiBNU0gxODAyMjggIzQ2Mjk0ICovCmlmIChidWxrUHJpbnQpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgZG9jVHlwZSk7Cn0KICAgIAp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwp2YXIgZmF4U3RhdHVzPWRvYy5YKCJYX2ZheFN0YXR1cyIpKyIiOwp2YXIgZmF4U3RhdHVzRGV0YWlsID0gWChkb2MsICJYX2ZheFN0YXR1c0RldGFpbCIpOwp2YXIgc3VjY2Vzc2Z1bFhNaXNzaW9uID0gZmFsc2U7CmlmKGZheFN0YXR1cz09PSJEZWxpdmVyZWQiKXsKICAgIHN1Y2Nlc3NmdWxYTWlzc2lvbiA9IHRydWU7Cn0KCi8vQ1JOMTkwNDA0IElmIHdlIGdldCBoZXJlLCB0aGUgZmF4IHN1Ym1pc3Npb24gZmFpbGVkLiBGaW5kIHRoZSBDYXNlIHRoYXQgc2VudCB0aGlzIGZheCBhbmQgY3JlYXRlIGFuIG9wZW4gIkZhaWxlZCIgdGFzayBmb3IgaXQKdmFyIGF0dGFjaGVkVG8gPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOwppZiAoIWF0dGFjaGVkVG8pIHsKICAgIGFsZXJ0KCJFUlJPUjogV2UgY291bGRuJ3QgY3JlYXRlIHRoZSBUYXNrIEFjdGl2aXR5IGJlY2F1c2Ugd2UgZG9uJ3QgaGF2ZSBhbnkgU2FsZXNmb3JjZSByZWNvcmQgdGhhdCB3ZSBhcmUgYXR0YWNoZWQgdG8uIik7CiAgICByZXR1cm47Cn0KLy8gaHR0cHM6Ly9wYXAtLXBzZGV2Lm15LnNhbGVzZm9yY2UuY29tLzUwMDFoMDAwMDA0N0FsMywwMFQxaDAwMDAwNXdLRlBFQTIKYXR0YWNoZWRUbyA9IGF0dGFjaGVkVG8uc3Vic3RyaW5nKGF0dGFjaGVkVG8ubGFzdEluZGV4T2YoJy8nKSArIDEpOyAgICAgLy8gc3RyaXAgb2ZmIGh0dHBzOi8vLi4uCnZhciBwYXJ0cyA9IGF0dGFjaGVkVG8uc3BsaXQoIiwiKTsKYXR0YWNoZWRUbyA9IHBhcnRzWzBdLnRyaW0oKTsKYWxlcnQoIkBAQCBDcmVhdGluZyBvcGVuIGFjdGl2aXR5IGZvciByZWNvcmQgd2l0aCBpZDogIiArIGF0dGFjaGVkVG8pOwoKdmFyIGFyck9mUGFpcnMgPSBbXTsKCnZhciBob3N0ID0gZG9jLmtiRGF0YS5IT1NUOwppZiAoaG9zdC5pbmRleE9mKCc6Ly8nKSA+IDApICAgIHsgaG9zdCA9IGhvc3Quc3Vic3RyaW5nKGhvc3QuaW5kZXhPZignOi8vJykrMyk7IH0KaWYgKGhvc3QuaW5kZXhPZignOicpID4gMCkgICAgICB7IGhvc3QgPSBob3N0LnN1YnN0cmluZygwLCBob3N0LmluZGV4T2YoJzonKSk7ICB9CmVsc2UgaWYgKGhvc3QuaW5kZXhPZignLycpID4gMCkgeyBob3N0ID0gaG9zdC5zdWJzdHJpbmcoMCwgaG9zdC5pbmRleE9mKCcvJykpOyAgfQp2YXIgdmlld0xpbmsgPSAiaHR0cHM6Ly8iICsgaG9zdCArICIva2IvanNwL1NGX2ZpbmQuanNwP3NraW49U0ZiYXJlJmRiSUQ9IiArIGRvYy5kYklEICsgIiZTRm9yZz0iICsgZG9jLnNmT3JnICsgIiZTRmlkPSIgKyBzZklkOwoKLy8gQWRkIGFuIEFjdGl2aXR5IHRvIHRoZSBleGlzdGluZyBTYWxlc2ZvcmNlIHJlY29yZC4KCi8vUFYxOTA0MDQgdXBkYXRlZCB0byBvdmVycmlkZSBhY3Rpdml0eSBoaXN0b3J5IHN0YXR1cwp2YXIgZm9ybWF0Tm93ID0gZ2V0U0ZQcmVmZXJyZWRDdXJEYXRlQW5kVGltZShkb2MpOwphcnJPZlBhaXJzLnB1c2goIldoYXRJZCIsIGF0dGFjaGVkVG8pOwppZiAoIWZheFN0YXR1c0RldGFpbCkgeyBmYXhTdGF0dXNEZXRhaWwgPSBzdWNjZXNzZnVsWE1pc3Npb24gPyAiRmF4IHN1Y2Nlc3NmdWxseSBkZWxpdmVyZWQiIDogIlVua25vd24gZXJyb3IiOyB9CmZheFN0YXR1c0RldGFpbCA9IChzdWNjZXNzZnVsWE1pc3Npb24gPyAiRGVsaXZlcmVkIiA6ICJGYWlsZWQiKSArICI6ICIgKyBkb2NUaXRsZSArICIgIiArIGZheFN0YXR1c0RldGFpbCArICIgdG8gIiArIGRlbGl2ZXJlZFRvOwoKYWxlcnQoIkBAQCBkZWxpdmVyZWRUbyA9ICIgKyBkZWxpdmVyZWRUbyk7CgovL2ZheFN0YXR1c0RldGFpbCA9ICJEZWxpdmVyZWQ6IEEgMS1wYWdlIGZheCB3YXMgZGVsaXZlcmVkIHRvICIgKyBkb2MuZGVsaXZlcmRUbzsgLy8gUFYxOTA3MDkgVXBkYXRlZCBmb3IgRGVsaXZlcmQgdG8KLy9BTjIwMTkwNzAyIENhc2UjNjA3NTQgbmVlZCBEZWxpdmVyZWQgVG8gaW5mbyBpbiBBY3Rpdml0eSBIaXN0b3J5Ci8vZmF4U3RhdHVzRGV0YWlsID0gIkZheCBzdWJtaXNzaW9uIHRvICIgKyBkZWxpdmVyZWRUbyArICIgIiArIChzdWNjZXNzZnVsWE1pc3Npb24gPyAic3VjY2VlZGVkIiA6ICJmYWlsZWQiKSArICI6ICIgKyBmYXhTdGF0dXNEZXRhaWw7CmFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsIGZheFN0YXR1c0RldGFpbCk7CmFyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLCBmYXhTdGF0dXNEZXRhaWwgKyAiLiBWaWV3IHRoZSBkb2N1bWVudCBhdCAiICsgdmlld0xpbmspOwphcnJPZlBhaXJzLnB1c2goIkFjdGl2aXR5RGF0ZSIsIGZvcm1hdE5vdyk7CgovL0FOMjAxODA3MTkgIzYwNzU0IHNhdmluZyB0aGVzZSBhZGRpdGlvbmFsIGZpZWxkcyBvbiB0aGUgdGFzayBwZXIgVmVua2F0CmFyck9mUGFpcnMucHVzaCgiRE5JU19fYyIsIGRlbGl2ZXJlZFRvKTsKYXJyT2ZQYWlycy5wdXNoKCJUYXNrX1N1YmplY3RfX2MiLCBkb2NUaXRsZSk7CgovL1BWMTkwNDMwIHNldCBPd25lcklkICBvbmx5IGlmIGl0IGlzIGEgdXNlcgppZihPd25lcklkLnN0YXJ0c1dpdGgoIjAwNSIpKXsKYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgT3duZXJJZCk7Cn0KZWxzZXsKIHZhciByZW1vdGVVc2VySWQ9IGdldFNGRmllbGQoZG9jLCAiVXNlciIsIklkIiwidXNlcm5hbWU9JyIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyInIik7CiBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCByZW1vdGVVc2VySWQpOyAgIAp9CgovL1BWMTkwNDExIEZpbmQgdGhlIENhc2UgdGhhdCBzZW50IHRoaXMgZmF4IGFuZCBjcmVhdGUgYW4gb3BlbiAiRmFpbGVkIiB0YXNrIGZvciBpdAphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgJ3sic3RhdHVzIjoic3VjY2VzcyIsIm1lc3NhZ2UiOiJFWElUIExPR0ZBWCJ9Jyk7CmFyck9mUGFpcnMucHVzaCgiU3RhdHVzIixzdWNjZXNzZnVsWE1pc3Npb24gPyAiQ29tcGxldGVkIiA6ICJGYWlsZWQiKTsKYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIkRvY3VtZW50Iik7CmFsZXJ0KCJAQEBAQEAgUFYxOTA0MjU6ICIgKyBPd25lcklkKTsKdmFyIHNmSWQgPSBjcmVhdGVTRlJlY29yZChkb2MsICJUYXNrIiwgZmF4U3RhdHVzRGV0YWlsLCBhcnJPZlBhaXJzKTsKYWxlcnQoIkBAQEBAQCBBZGRpbmcgQWN0aXZpdHkgdG86ICIgKyBzZklkKTsKLyogRU5EIERFTElWRVJZX0NPTVBMRVRFIHpBY3Rpb24gKi8="},"ordinal":5}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//TPM180803 starting DELIVERY_COMPLETE rule
var formatNow = getCurDateAndTime(doc);
var nowTimeStamp = new Date().getTime() + ""; 
var coverID = X(doc, "coverID");
var docTitle = X(doc, "docTitle");
//var deliveredTo = X(doc, "deliveredTo");
var deliveredTo = X(doc, "ContactFax", doc.wddata); //AN20190716 #60754 doc.deliveredTo is coming over as null - was suggested to use ContactFax

alert("coverID: " + coverID);
alert("docTitle: " + docTitle);

/* MSH180207 define once here */
var arrOfPairs = [];
var sfCaseId = "";
var sfContactId = "";
var sfType = X(doc, "sfType");
var patientFirstName = "";
var patientLastName = "";
var patientId = "";
var OwnerId = "";

//TPM180803 Below IF statement is only for PAOS integration.  Other DELIVERY_COMPLETE functionality is below that.
//AN180709 This IF statement contains logic for PAOS functionality. PAOS has 3 use cases, each triggered by a different outbound message.  See Tom for details.

var useCase = X(doc, "zPAOSUseCase__c"); //todo: clean this up - we no longer have PAOS use cases
if (useCase && useCase.length > 0) {
    
    alert("useCase: " + useCase);

    var sfActivityOnId = X(doc, "X_activityOnID"); //depending on the Use Case this may be an PS_Application__c record, a Contact, or an Account
    alert("sfActivityOnId: " + sfActivityOnId);
    
    var masterID = (doc.kbData.groupID).substring(1,(doc.kbData.groupID).length()); //get the zPaper Master ID
    alert("@@@ masterID: " + masterID);

    sfCaseId = X(doc, "PS_PortalCase__c");
    sfContactId = X(doc, "PS_Contact__c");
    alert("found sfCaseId: " + sfCaseId);
    alert("found sfContactId: " + sfContactId);

    if (!sfCaseId) {
        /* AN20190115 as of Jan 2019 we no longer need to create a case - clean this code up later
        sfCaseId = zData.createCase(doc, sfActivityOnId);
        alert("created sfCaseId: " + sfCaseId);
        */
    } else {

//AN20190115 this is where we attach a doc to the case
        alert("calling attach with sfCaseId = " + sfCaseId); /* MSH171020 debugging */
        var attResult = attach(doc, "New Stack received on " + getCurDateAndTime(doc), sfCaseId, false);
        alert("attResult =  " + attResult); /* MSH171020 debugging */
        if (attResult.indexOf("ERROR") >= 0) {
            addPostExecutionScript(doc, "<ERROR>");
        } else {
            alert("Successful attach complete. Case Id: " + sfCaseId);
            addPostExecutionScript(doc, "<SUCCESS>");
        }
    }

//AN20190115 set the label of the file on the PS_Application__c object
    arrOfPairs = [];
    arrOfPairs.push("db-label", "PAOS Supporting Document");
    updateDB(doc, arrOfPairs);      
    
//AN20190115 we should still create a stack       
    var stackId = zData.createStack(doc, sfContactId, sfCaseId, "Complete");
    alert("stackID: " + stackId);
    var contactFlds = getSFFields(doc, "Contact", "Name", null, sfActivityOnId);
    contactFlds += "";
    var patientname = X(doc, "Name", contactFlds);
    
    arrOfPairs = [];
    var attachPath = sfCaseId + "," + stackId;
    arrOfPairs.push("X_attachedTo", attachPath);
    arrOfPairs.push("X_ZPAPER__Case__c", sfCaseId);
    arrOfPairs.push("db-label", patientname + " PAOS Supporting Document");
    updateDB(doc, arrOfPairs);

    moveDocument(doc, masterID + "Out", masterID + "In");

    /* MSH171020 */
    zData.clearTriggerCondition(doc,"X_buttonAction");
    return;
}
//TPM180803  END of PAOS integration code


/*  DELIVERY_COMPLETE rule for anything NOT PAOS*/

var attachLabel = "Sent on " + formatNow; /* MSH170905 */
var sfId = X(doc, "X_activityOnID");
var attachedTo = X(doc, "sfServer");
attachedTo += "/" + sfId;


var docType=X(doc, "X_docTypeSent"); //ERS180328 #46373
alert("@@@ first docType = " + docType);
if (docType==="") { docType = X(doc,"X_docType"); }  //ERS180328 #46373
alert("@@@ second docType = " + docType);
if (docType==="") { docType = doc.docType; }
alert("@@@ third docType = " + docType);
if (docType==="") { docType = X(doc,"ContactName"); } //ERS180328 #46373
alert("@@@ forth docType = " + docType);
if (docType==="") { docType = "FAX"; }
alert("@@@ fifth docType = " + docType);
doc.docType=docType; //ERS180328 #46373

var labelDocType = docType;

alert("@@@ docType = " + docType); 
alert("@@@ X(doc, sfServer) = " + attachedTo);

if (sfType == "Case") {
    
    var caseFlds = getSFFields(doc, "Case", "RecordTypeId,ContactId,AccountId,OwnerId", null, sfId); //AN20180718 get the fields from the Case that we will need
     
    var recTypeId = X(doc, "RecordTypeId", caseFlds);
    var recTypeName = getSFField(doc, "RecordType", "Name", null, recTypeId); //AN20180718 get the name of the current Case record type
    OwnerId = X(doc, "OwnerId", caseFlds);
    alert("@@@ OwnerId" + OwnerId);
    alert("@@@ current Case Record Type Name: " + recTypeName);
    
    
    if (recTypeName === "New/Renewal/YEC/On-going Prescription"){ //this is a PAP case
      alert("@@@ getting PAP Case details");
      patientId =  X(doc, "ContactId", caseFlds); //get the Contact ID since PAP uses the Contact object for Patients
      var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, patientId); 
      alert("@@@ calling SF for contactFlds :: " + contactFlds);
      patientFirstName = X(doc, "FirstName", contactFlds);
      patientLastName = X(doc, "LastName", contactFlds);
    }

    else if (recTypeName === "Benefit Verification" || recTypeName === "Denial Support"){ //this is an RH-Immunology case
      alert("@@@ getting RH Case details");
      patientId = X(doc, "AccountId", caseFlds); //get the Account ID since RH uses the Account object for Patients
      var accountFlds = getSFFields(doc, "Account", "PS_PatientFirstName__c,PS_PatientLastName__c", null, patientId); 
      alert("@@@ calling SF for accountFlds :: " + accountFlds);
      patientFirstName = X(doc, "PS_PatientFirstName__c", accountFlds);
      patientLastName = X(doc, "PS_PatientLastName__c", accountFlds);
    }

    alert("@@@ patientId :: " + patientId);
    alert("@@@ patientFirstName :: " + patientFirstName);
    alert("@@@ patientLastName :: " + patientLastName);
    
    /* create attachLabel X(doc, "X_ZPAPER__FirstName__c") + X(doc, "X_ZPAPER__LastName__c") + " - " + X(doc, "X_ZPAPER__faxType__c") + " - " + MMddYYYY; */    
    attachLabel = patientFirstName + " " + patientLastName + " - " + docTitle + " - Sent " + zData.formatTodayMMddYYYY();
    alert("@@@@ attachLabel: " + attachLabel);
    
    //arrOfPairs = [];
    arrOfPairs.push("db-label", attachLabel);
    
    
    // For Abbvie's Bulk printing capability
    /* MSH180228 #46294 */
    var bulkPrint = (X(doc, "mailondemand", "").length > 0);
    if (bulkPrint) {
        /* MSH180207 assuming it got sent to print process */
        arrOfPairs = [];
        docType = "BP";
        arrOfPairs.push("PS_Bulkprint_Date_time__c", formatNow);
        arrOfPairs.push("PS_Bulkprint_status__c", X(doc, "X_faxStatus"));
        updateSFRecord(doc, "Case", X(doc, "sfId"), arrOfPairs);
    }
}

arrOfPairs = [];
arrOfPairs.push("X_buttonAction0", X(doc, "X_buttonAction"));
arrOfPairs.push("X_buttonAction", "");
/* MSH170905 arrOfPairs.push("db-label", "Sent on " + formatNow); */
arrOfPairs.push("db-label", attachLabel);
arrOfPairs.push("db-BATES", sfId + "-" + doc.docType); /* ERS170625 todo get docType from template used */
arrOfPairs.push("X_attachedTo", attachedTo); /* ERS170628 docSet needs this */
if (docType !== "") arrOfPairs.push("X_docType",docType); //ERS180328 #46373

//TPM180803 For setting checkboxes on the zdocset
if (1===1) { //ERS170909 #40592 for zDocSet statuses
    var ba=doc.X("X_faxStatus")+"";
    if ("Delivered" !== ba) { ba="Failed"; } //JPB180803 #50178
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus",ba);
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
    arrOfPairs.push("X_buttonAction","");
}



alert("@@@ master ID is = " + doc.kbData.groupID);
alert("@@@ PAP group ID is = " + zData.papGroupId);
alert("@@@ RH-Immunology group ID is = " + zData.immunGroupId);
alert("@@@ Complete Intake group ID is = " + zData.compIntGroupId);

if (sfType == "Case") {

    var caseFlds = getSFFields(doc, "Case", "RecordTypeId,Classification__c,OwnerId", null, sfId); //AN20180718 get the fields from the Case that we will need

    var recTypeId = X(doc, "RecordTypeId", caseFlds);
    var recTypeName = getSFField(doc, "RecordType", "Name", null, recTypeId); //AN20180718 get the name of the current Case record type
    OwnerId = X(doc, "OwnerId", caseFlds);
    alert("@@@ recTypeName is = " + recTypeName);

    var caseClassification =  X(doc, "Classification__c", caseFlds); 
    alert("@@@ caseClassification is = " + caseClassification);
    
    //set the Group security to PAP, RH-Immunology, or Complete Intake. We look at both the Record Type and the Classification to determine this.
    if (recTypeName === "New/Renewal/YEC/On-going Prescription" || caseClassification === "PAP") { //AN20180604 set PAP security
        alert("@@@ setting document security for PAP group");
        arrOfPairs.push("db-users", ":" + zData.papGroupId + ":");
        arrOfPairs.push("db-readers", ":" + zData.papGroupId + ":");
    }
    else if (recTypeName === "Benefit Verification" || caseClassification === "RH-Immunology") {//AN20180604 set RH-Immunology group security
        alert("@@@ setting document security for RH-Immunology");
        arrOfPairs.push("db-users", ":" + zData.immunGroupId + ":");
        arrOfPairs.push("db-readers", ":" + zData.immunGroupId + ":");
    }
    else if (recTypeName === "Complete Intake" || caseClassification === "Complete Immunology") {//AN20190301 set Complete Intake group security
        alert("@@@ setting document security for Complete Intake");
        arrOfPairs.push("db-users", ":" + zData.compIntGroupId + ":");
        arrOfPairs.push("db-readers", ":" + zData.compIntGroupId + ":");
    }
}
else if (sfType == "Contact") {
    alert("@@@ processing outbound for a PAP contact record");
    var contactFlds = getSFFields(doc, "Contact", "RecordTypeId", null, sfId); //TPM180806 get the fields from the Contact that we will need
    var recTypeId = X(doc, "RecordTypeId", contactFlds);
    var recTypeName = getSFField(doc, "RecordType", "Name", null, recTypeId); //TPM180806 get the name of the current Contact record type
    alert("@@@ recTypeName is = " + recTypeName);
    
    //set the Group security for PAP (RH does not send outbound from a contact record)
    if (recTypeName === "Individual") { //TPM180806 set group security and attachlabel for PAP, not for RH
        alert("@@@ setting document security for PAP group");
        arrOfPairs.push("db-users", ":" + zData.papGroupId + ":");
        arrOfPairs.push("db-readers", ":" + zData.papGroupId + ":");
        
        var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, sfId); 
        alert("@@@ calling SF for contactFlds :: " + contactFlds);
        patientFirstName = X(doc, "FirstName", contactFlds);
        patientLastName = X(doc, "LastName", contactFlds);
        
        attachLabel = patientFirstName + " " + patientLastName + " - " + docTitle + " - Sent " + zData.formatTodayMMddYYYY();
        alert("@@@@ attachLabel: " + attachLabel);
        arrOfPairs.push("db-label", attachLabel);
    }
}

/* MSH180228 #46294 */
if (bulkPrint) {
    arrOfPairs.push("X_docType", docType);
}
    
updateDB(doc, arrOfPairs);
var faxStatus=doc.X("X_faxStatus")+"";
var faxStatusDetail = X(doc, "X_faxStatusDetail");
var successfulXMission = false;
if(faxStatus==="Delivered"){
    successfulXMission = true;
}

//CRN190404 If we get here, the fax submission failed. Find the Case that sent this fax and create an open "Failed" task for it
var attachedTo = X(doc, "X_attachedTo");
if (!attachedTo) {
    alert("ERROR: We couldn't create the Task Activity because we don't have any Salesforce record that we are attached to.");
    return;
}
// https://pap--psdev.my.salesforce.com/5001h0000047Al3,00T1h000005wKFPEA2
attachedTo = attachedTo.substring(attachedTo.lastIndexOf('/') + 1);     // strip off https://...
var parts = attachedTo.split(",");
attachedTo = parts[0].trim();
alert("@@@ Creating open activity for record with id: " + attachedTo);

var arrOfPairs = [];

var host = doc.kbData.HOST;
if (host.indexOf('://') > 0)    { host = host.substring(host.indexOf('://')+3); }
if (host.indexOf(':') > 0)      { host = host.substring(0, host.indexOf(':'));  }
else if (host.indexOf('/') > 0) { host = host.substring(0, host.indexOf('/'));  }
var viewLink = "https://" + host + "/kb/jsp/SF_find.jsp?skin=SFbare&dbID=" + doc.dbID + "&SForg=" + doc.sfOrg + "&SFid=" + sfId;

// Add an Activity to the existing Salesforce record.

//PV190404 updated to override activity history status
var formatNow = getSFPreferredCurDateAndTime(doc);
arrOfPairs.push("WhatId", attachedTo);
if (!faxStatusDetail) { faxStatusDetail = successfulXMission ? "Fax successfully delivered" : "Unknown error"; }
faxStatusDetail = (successfulXMission ? "Delivered" : "Failed") + ": " + docTitle + " " + faxStatusDetail + " to " + deliveredTo;

alert("@@@ deliveredTo = " + deliveredTo);

//faxStatusDetail = "Delivered: A 1-page fax was delivered to " + doc.deliverdTo; // PV190709 Updated for Deliverd to
//AN20190702 Case#60754 need Delivered To info in Activity History
//faxStatusDetail = "Fax submission to " + deliveredTo + " " + (successfulXMission ? "succeeded" : "failed") + ": " + faxStatusDetail;
arrOfPairs.push("Subject", faxStatusDetail);
arrOfPairs.push("Description", faxStatusDetail + ". View the document at " + viewLink);
arrOfPairs.push("ActivityDate", formatNow);

//AN20180719 #60754 saving these additional fields on the task per Venkat
arrOfPairs.push("DNIS__c", deliveredTo);
arrOfPairs.push("Task_Subject__c", docTitle);

//PV190430 set OwnerId  only if it is a user
if(OwnerId.startsWith("005")){
arrOfPairs.push("OwnerId", OwnerId);
}
else{
 var remoteUserId= getSFField(doc, "User","Id","username='"+doc.kbData.remoteUser+"'");
 arrOfPairs.push("OwnerId", remoteUserId);   
}

//PV190411 Find the Case that sent this fax and create an open "Failed" task for it
addPostExecutionScript(doc, '{"status":"success","message":"EXIT LOGFAX"}');
arrOfPairs.push("Status",successfulXMission ? "Completed" : "Failed");
arrOfPairs.push("Type", "Document");
alert("@@@@@@ PV190425: " + OwnerId);
var sfId = createSFRecord(doc, "Task", faxStatusDetail, arrOfPairs);
alert("@@@@@@ Adding Activity to: " + sfId);
/* END DELIVERY_COMPLETE zAction */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
