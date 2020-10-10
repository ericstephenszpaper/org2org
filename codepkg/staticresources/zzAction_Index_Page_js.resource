<!--
// Name: Index Page
// Committer: judson.bruno@zpaper.com
// Update: JPBJPB200830 updated rule Sales Demo Org; JPB200830 added Order Entry
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-08-30 13:25:53","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"Ly9KUEJKUEIyMDA4MzAgdXBkYXRlZCBydWxlIFNhbGVzIERlbW8gT3JnCmFsZXJ0KCJAQEBAIEluZGV4IFJ1bGUgRmlyZWQgIiArIGRvYy5kYklEICsgIiBAQEAjIik7Ci8qIGRvdWJsZS1xdW90ZSwgbmV3bGluZSBjaGFyYWN0ZXJzICovCnZhciBkcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOwp2YXIgbmwgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDEwKTsKdmFyIGZvcm1hdE5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgbm90ZXMgPSBkb2Mua2JEYXRhLmNvbW1lbnRzICsgIiI7ICAgCmFsZXJ0KCJAQEAgTk9URVM6ICIgKyBub3Rlcyk7IAoKLyogZG91YmxlLXF1b3RlLCBuZXdsaW5lIGNoYXJhY3RlcnMgKi8KCnZhciBkcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOyAKdmFyIG5sID0gU3RyaW5nLmZyb21DaGFyQ29kZSgxMCk7CnZhciBmb3JtYXROb3c9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIG5vdGVzID0gZG9jLmtiRGF0YS5jb21tZW50cyArICIiOyAgIAphbGVydCgiQEBAIE5PVEVTOiAiICsgbm90ZXMpOwp2YXIgenA9IlpQQVBFUl9fIjsgCnZhciB6U3RhY2s9enArInpTdGFja19fYyI7IAoKdmFyIHBhcmVudEZvbGRlciA9IFgoZG9jLCJYX2N1ckZvbGRlciIpOyAKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsKdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCJYX3NmU3RhY2tJZCIpOwppZiAoc2ZTdGFja0lkID09PSIiKSB7IAogICAgWChkb2MsIlhfYXR0YWNoZWRUbyIpOwogICAgaWYgKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpID49IDApIHsKICAgICAgICBzZlN0YWNrSWQgPSBzZlN0YWNrSWQuc3Vic3RyaW5nKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpKzEpOwogICAgICAgIGlmIChzZlN0YWNrSWQuaW5kZXhPZignLCcpID49IDApIHsgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZygwLCBzZlN0YWNrSWQuaW5kZXhPZignLCcpKTsgfQogICAgfQp9CnZhciBwYXJlbnRkYklEID0gZG9jLmRiSUQ7IAphbGVydCgiQEBAQCBwYXJlbnQgc3RhY2sgaWQgPSAiICsgc2ZTdGFja0lkKTsKdmFyIHBhcmVudFN0YWNrTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsIHpTdGFjaywgIk5hbWUsWlBBUEVSX19Qcmlvcml0eV9fYyIsIG51bGwsIHNmU3RhY2tJZCk7IAphbGVydCgiIyMjIyBPdXIgcGFyZW50IHN0YWNrIG51bWJlciBpcyAiICsgcGFyZW50U3RhY2tOdW1iZXIpOwp2YXIgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CnZhciBjb21wYW55Q29kZSA9IGRvYy5kZWxpdmVyZWRUbzsKLy92YXIgcGFyZW50UHJpb3JpdHkgPSAKCi8qIENsZWFyIHRoZSB0cmlnZ2VyIHRoYXQgaW52b2tlZCB0aGlzIHJ1bGUgKi8KCnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwppZiAoIWluZGV4SW5pdGlhbGl6ZWQgfHwgMCA9PT0gaW5kZXhJbml0aWFsaXplZC5sZW5ndGgpIHsKICAgIHN0YWNrSWQgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CiAgICB6RGF0YS5pbml0aWFsaXplU3RhY2soZG9jLHN0YWNrRm9sZGVyLCBjb21wYW55Q29kZSwgc3RhY2tJZCk7Cn0KCi8vIERvZXMgdGhlIHVzZXIgd2FudCB0byBhdHRhY2ggaW5kZXhlZCBwYWdlcyB0byBDYXNlPwoKdmFyIGNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsKdmFyIGNvbnRhY3RJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRfX2MiKTsKdmFyIHBhdGllbnRJZD1jb250YWN0SWQ7IC8vVE9ETwp2YXIgcHJvdmlkZXJJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIik7CnZhciBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CnZhciBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwp2YXIgcGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwp2YXIgZmF4VHlwZSA9IFgoZG9jLCAiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsKYWxlcnQoIkBAQEAgUGFyZW50IFhfWlBBUEVSX19mYXhUeXBlX19jID0gIiArIGZheFR5cGUpOwoKLy8gR2V0IHRoZSBkb2N1bWVudCB0eXBlICh3aWxsIGJlIHVzZWQgdG8gcm91dGUgdG8gbmV4dCBmb2xkZXIpCnZhciBjaGFubmVsPSJGYXgiOyAvL1B2MTkwNDE2IHVwZGF0ZWQgZm9yIGNhc2UgdHlwZQppZiAoZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpPi0xIHx8IGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIi4iKT4tMSkge2NoYW5uZWw9IkVtYWlsIjt9IAogaWYgKGlzTmFOKGRvYy5kZWxpdmVyZWRUbykpIHsKICAgIGlmIChkb2MuZGVsaXZlcmVkVG8udG9Mb3dlckNhc2UoKS5pbmRleE9mKCJjb21tdW5pdHkiKSA+PSAwKSB7CiAgICBjaGFubmVsID0gImNvbW11bml0eSI7CiAgICB9IAogICAgZWxzZSB7CiAgICBjaGFubmVsPSJTY2FuIjsKICAgIH0KfSAgCgp2YXIgZG9jVHlwZSA9IFgoZG9jLCAiWF9Eb2N1bWVudF9UeXBlX19jIik7CmlmIChmYXhUeXBlICE9PSAiIiAmJiBmYXhUeXBlLnRvTG93ZXJDYXNlKCkgIT0gImZheCIpIGRvY1R5cGU9ZmF4VHlwZTsgCnZhciBwcmV2SW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pbmRleGVkUGFnZXMiKTsKdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKaWYgKHByZXZJbmRleFBhZ2VzICYmIHByZXZJbmRleFBhZ2VzLmxlbmd0aCA+IDAgJiYgY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICAgIHByZXZJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzID0gcHJldkluZGV4UGFnZXMgKyBjdXJJbmRleFBhZ2VzOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgY3VyWFJldmlld3MgPSBYKGRvYywgIlhfcmV2aWV3cyIpOwp2YXIgcGFyZW50SXNTaWduZWQgPSBjdXJYUmV2aWV3cyAmJiBjdXJYUmV2aWV3cy5pbmRleE9mKCJTaWduZWQgYnkgYWdlbnQiKSA+PSAwOwphcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhlZFBhZ2VzIiwgY3VySW5kZXhQYWdlcyk7CmlmICgxPT09MSkgeyAKICAgIHZhciBiYT1kb2MuWCgiWF9idXR0b25BY3Rpb24iKSsiIjsKICAgIGJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgaWYgKCFiYS5lbmRzV2l0aCgiZWQiKSAmJiBiYSAhPT0gIiIpIHsgYmErPSJlZCI7IH0gCiAgICBpZiAoYmEgIT09ICIiKSB7IAogICAgICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwovLyAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICB9Cn0KdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwovL0pQQjE5MTAwOCBNYWtlIHN1cmUgd2UgdXBkYXRlIHRoZSBTdGFnZQphcnJPZlBhaXJzID0gW107IAphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhZ2VfX2MiLCAiSW5kZXhlZCIpOyAKdXBkYXRlU0ZSZWNvcmQoZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCBzZlN0YWNrSWQsIGFyck9mUGFpcnMpOyAKCnZhciBhdHRhY2hQYXRoID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOwphbGVydCgiQEBAQEBAIEN1cnJlbnRseSBhdHRhY2hlZCB0byBaUEFQRVJfX3pTdGFja19fYyB3aXRoIElEOiAiICsgc2ZTdGFja0lkKTsKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IAoKLyogU1BMSVQgT0ZGIE5FVyBTTklQUEVUIEhFUkUgKi8KCnZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwp0cnkgewphbGVydCgiQEBAQCBQYXJlbnQgZGJJRCA9ICIgKyBkb2MuZGJJRCk7CiAgICBzcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiaW5kZXgiLCBwYWdlUmFuZ2UpOwogICAgYWxlcnQoIiMjIyMgQ2hpbGQgZGJJRCA9ICIgKyBkb2MuZGJJRCk7Cn0KY2F0Y2goZXJyKSB7CiAgICBhbGVydCgiRXJyb3Igd2hlbiBzcGxpdHRpbmcgZG9jdW1lbnQ6ICIgKyBlcnIgKyAiLiBBQk9SVElORy4uLiIpOwogICAgcmV0dXJuOwp9CmFsZXJ0KCJDYXNlICciK2Nhc2VJZCsiJyBhbmQgbGVuPSIrY2FzZUlkLmxlbmd0aCk7CgovLyoKLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgU1RBQ0sgU05JUFBFVCAqLwovLyoKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gYSBuZXcgQ2FzZSByZWNvcmQsIGlmIGl0IHdhc24ndCBwYXNzZWQgaW4gKi8KdmFyIHByaW9yaXR5PVgoZG9jLCJYX1pQQVBFUl9fUHJpb3JpdHlfX2MiKTsgCnZhciBsYWJlbDA9IiI7CnZhciB0cmlhZ2VUeXBlPWRvYy5kb2NUeXBlOwp2YXIgcGF0aWVudE5hbWU7CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENvbnRhY3QgcmVjb3JkIGlmIHJlcXVpcmVkICovCmFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBhIENvbnRhY3Q/IGNvbnRhY3RJZCA9ICIgKyBjb250YWN0SWQpOwppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CiAgICAKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7CiAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIGNvbnRhY3RJZCk7IAogICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgIHBhdGllbnROYW1lID0gcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZTsKICAgIGF0dGFjaChkb2MsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgY29udGFjdElkKTsKfQplbHNlIGlmIChwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRGaXJzdE5hbWUubGVuZ3RoID4gMCAmJiBwYXRpZW50TGFzdE5hbWUgJiYgcGF0aWVudExhc3ROYW1lLmxlbmd0aCA+IDAgJiYgcGF0aWVudERPQiAmJiBwYXRpZW50RE9CLmxlbmd0aCA+IDApIHsKICAgIHBhdGllbnROYW1lID0gcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZTsKICAgIHZhciBjdGNBcnJPZlBhaXJzID0gW107CiAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHBhdGllbnRGaXJzdE5hbWUpOwogICAgY3RjQXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHBhdGllbnRMYXN0TmFtZSk7CiAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkJpcnRoRGF0ZSIsIHBhdGllbnRET0IpOwogICAgY29udGFjdElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCBsYWJlbDArIkluZGV4ZWQtIiArIHBhdGllbnROYW1lICsgIi0iICsgZmF4VHlwZSArICItIiArIHN0YWNrSWQsIGN0Y0Fyck9mUGFpcnMpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjb250YWN0SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2NvbnRhY3RJZDsKICAgIAogICAgYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgY29udGFjdElkKTsKICAgIC8vIGNsZWFyIG91dCB0aGUgIk5ldyBQYXRpZW50IiBmaWVsZHMKICAgIAogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9GaXJzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0xhc3RfTmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9Eb0JfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwogICAgLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIGNvbnRhY3RJZCArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lICsgZHEgKyAiKTsgIik7Cn0KCmF0dGFjaChkb2MsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgc2ZTdGFja0lkKTsKdmFyIHNmVXNlcklEID0gZG9jLmtiRGF0YS5zZlVzZXJJRDsgLy8gUFYxOTA0MjEgdXBkYXRlZCBmb3IgcmVtb3RlIHVzZXIKaWYoIXNmVXNlcklEKXsKICAgIHNmVXNlcklEPSBnZXRTRkZpZWxkKGRvYywgIlVzZXIiLCJJZCIsInVzZXJuYW1lPSciK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiJyIpOwp9CmFsZXJ0KCJQVjE5MDQxNSBzZlVzZXJJRCA6ICIgK3NmVXNlcklEKTsKCmlmICghY2FzZUlkIHx8IDAgPT09IGNhc2VJZC5sZW5ndGgpIHsKICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyBDYXNlIik7CiAgICBhcnJPZlBhaXJzID0gW107CiAgICAKICAgIGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgY29udGFjdElkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgWChkb2MsIlhfU3RhdHVzIikpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIkVucm9sbG1lbnQiKTsgLy9QdjE5MDQxNiB1cGRhdGVkIGZvciBjYXNlIHR5cGUKICAgIAogICAgaWYgKHByb3ZpZGVySWQgJiYgcHJvdmlkZXJJZC5sZW5ndGggPiAwKSB7CiAgICAgICAgCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJBY2NvdW50SWQiLCBwcm92aWRlcklkKTsgCiAgICB9CgogICAgaWYgKDE9PTEpIHsgCiAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCiAgICAgICAgaWYgKHByaW9yaXR5ICE9ICJOb3JtYWwiKSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5Iixwcmlvcml0eSk7ICAKICAgICAgICBlbHNlIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLCJMb3ciKTsgLy9KUEIyMDA1MjQgY2hhbmdlZCB0byBMb3cKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsY2hhbm5lbCk7IC8vUFYxOTA0MTYgdXBkYXRlZCBmb3IgY2FzZSBvcmlnaW4KICAgIH0KICAgIAogICAgYWxlcnQoIlBWMTkwNDE1ICIgKyBhcnJPZlBhaXJzKTsgICAgCiAgICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHNmVXNlcklEKTsvLyBQdjE5MDQxNSB1cGRhdGVkIGZvciBvd25lciBpZCBhcyBjdXJyZW50IHVzZXIKICAgIGFsZXJ0KCJQVjE5MDQxNSBzZlVzZXJJRCA6ICIgKyBzZlVzZXJJRCk7CiAgICBhbGVydCgiUFYxOTA0MTUgIiArIGFyck9mUGFpcnMpOwogICAgLy9uYW1lPSJYX1pQQVBFUl9fUGF0aWVudF9fYyIKICAgIC8vbmFtZT0iWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIKICAgIC8vbmFtZT0iWF9aUEFQRVJfX0xhc3ROYW1lX19jIgogICAgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCBsYWJlbDArIkluZGV4ZWQtIiArIHBhdGllbnROYW1lICsgIi0iICsgZmF4VHlwZSArICItIiArIHN0YWNrSWQsIGFyck9mUGFpcnMpOwogICAgYWxlcnQoIkNyZWF0ZWQgQ2FzZSB3aXRoIElEOiAiICsgY2FzZUlkKTsKICAgIGlmIChjYXNlSWQgPT0gIm51bGwiIHx8IGNhc2VJZCA9PSAiTkVXIikgY2FzZUlkPW51bGw7IAp9CmVsc2UgewogICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIENhc2U6ICIgKyBjYXNlSWQpOwogICAgYXR0YWNoKGRvYywgbGFiZWwwKyJJbmRleGVkLSIgKyBwYXRpZW50TmFtZSArICItIiArIGZheFR5cGUgKyAiLSIgKyBzdGFja0lkLCBjYXNlSWQpOwp9Cgp2YXIgY2FzZU51bWJlciA9IG51bGw7CmlmIChjYXNlSWQpewogICAgdmFyIGNhc2VOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQ2FzZU51bWJlciIsIG51bGwsIGNhc2VJZCk7Cn0KCmlmIChhdHRhY2hQYXRoLmluZGV4T2YoY2FzZUlkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjYXNlSWQ7Cgp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgelR5cGU9IkZheCI7IAppZiAoZmF4VHlwZSAhPT0gIiIgJiYgZmF4VHlwZS50b0xvd2VyQ2FzZSgpICE9ICJmYXgiKSB6VHlwZT1mYXhUeXBlOyAKYWxlcnQoIkBAQEB6VHlwZT0iK3pUeXBlKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwgelR5cGUpOwphcnJPZlBhaXJzLnB1c2goenArIlN0YXR1c19fYyIsICJJbmRleGVkIERvY3VtZW50cyIpOyAKCmFsZXJ0KCJFUlMxODA1MDUgZG9jLmRlbGl2ZXJlZEZyb209Iitkb2MuZGVsaXZlcmVkRnJvbSk7CmFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsY2hhbm5lbCk7CmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwphcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CgppZiAoekRhdGEuY2F0ZWdvcml6ZWRRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLmNhdGVnb3JpemVkUXVldWVJZC50cmltKCkpOyAgCmFsZXJ0KCIjIyMjIHpEYXRhLnByb2dyYW1OYW1lPSoiICt6RGF0YS5wcm9ncmFtTmFtZSsiKiB6RGF0YS5QUk9HUkFNX1pDSEFSVEE9KiIrekRhdGEuUFJPR1JBTV9aQ0hBUlRBKyIqIHpEYXRhLlBST0dSQU1fWlBBUFlSVVM9KiIrekRhdGEuUFJPR1JBTV9aUEFQWVJVUysiKiB6RGF0YS5QUk9HUkFNX1pDQVJUQSsqIit6RGF0YS5QUk9HUkFNX1pDQVJUQSsiKiB6RGF0YS5QUk9HUkFNX09SVEhPUEVESUNTPSoiK3pEYXRhLlBST0dSQU1fT1JUSE9QRURJQ1MrIiogekRhdGEuUFJPR1JBTV9aUkVGRVJSQUw9KiIrekRhdGEuUFJPR1JBTV9aUkVGRVJSQUwpOyAvL0pQQjE4MDgwOCBBZGRpbmcgMiBEUlVHUyBGT1IgcHJvc3BlY3QgZGVtbyBwcm9ncmFtTmFtZQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKdmFyIGNsYXNzaWZpY2F0aW9uID0gWChkb2MsIlhfWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIpOyAvL1BWMTkwNDIzIHVwZGF0ZWQKIAppZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNIQVJUQSkgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVcmdlbnQiKTsgCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiU3BlY2lhbCIpOyAKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0FSVEEpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiQ3JpdGljYWwiKTsgCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fUkVGRVJSQUxTKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkhpZ2giKTsgLy9KUEIgY2hhbmdlZCB0byBSZWZlcnJhbHMKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9QUklPUkFVVEgpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiSW1tZWRpYXRlIik7IC8vSlBCMjAwNTI0IGNoYW5nZWQgdG8gUHJpb3JBdXRoCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fT1JUSE9QRURJQ1MpIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiU3RhbmRhcmQiKTsgCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fQ0FSRElPTE9HWSkgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJBdHRlbnRpb24gbmVlZGVkIik7ICAvL0pQQjIwMDUyNCBhZGRlZCBDYXJkaW9sb2d5Cn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fR1JJRVZBUFBFQUxTKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk1lZGl1bSIpOyAgLy9KUEIyMDA1MjQgYWRkZWQgR3JpZXZhbmNlcyAmIEFwcGVhbHMKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9NRURJQ0FMUkVDT1JEUykgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJSdXNoIik7ICAvL0pQQjIwMDYwNyBhZGRlZCBNZWRpY2FsIFJlY29yZHMKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9PUkRFUkVOVFJZKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkN1c3RvbSIpOyAgLy9KUEIyMDA4MzAgYWRkZWQgT3JkZXIgRW50cnkKfQplbHNlIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7Cn0KYWxlcnQoIiMjIyMgWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyA9IisgekRhdGEucHJvZ3JhbU5hbWUpOwovL0pQQjIwMDMwNSBhZGRlZCBPcnRob3BlZGljcwoKYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsIGNsYXNzaWZpY2F0aW9uICk7IC8vUHYxOTA0MjMgVXBkYXRlZAphcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsgCmFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIixkb2MuZGVsaXZlcmVkVG8pOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CmFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiSW5kZXhlZCIpOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJQYXJlbnRfX2MiLHNmU3RhY2tJZCk7IAovL2Fyck9mUGFpcnMucHVzaCgiUHJvdmlkZXJfRnVsbG5hbWVfX2MiLCBYKGRvYywgIlhfUHJvdmlkZXJfRnVsbG5hbWVfX2MiKSk7IAovL2Fyck9mUGFpcnMucHVzaCgiRmFjaWxpdHlfX2MiLCBYKGRvYywgIlhfRmFjaWxpdHlfX2MiKSk7IAovL2Fyck9mUGFpcnMucHVzaCgiQ2FzZV9OdW1iZXJfX2MiLCBYKGRvYywgIlhfQ2FzZV9OdW1iZXJfX2MiKSk7IAppZiAobm90ZXMpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiTm90ZXNfX2MiLCBub3Rlcyk7Cn0KaWYgKHByb3ZpZGVySWQgJiYgcHJvdmlkZXJJZC5sZW5ndGggPiAwKSB7CiAgICB2YXIgcHJvdmlkZXJGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQWNjb3VudCIsICJGYWNpbGl0eV9fYyxGYXgsUGhvbmUiLCBudWxsLCBwcm92aWRlcklkKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIkZhY2lsaXR5X19jIiwgWChkb2MsIkZhY2lsaXR5X19jIixwcm92aWRlckZsZHMpKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIkZheF9fYyIsIFgoZG9jLCJGYXgiLHByb3ZpZGVyRmxkcykpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QaG9uZV9fYyIsIFgoZG9jLCJQaG9uZSIscHJvdmlkZXJGbGRzKSk7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1Byb3ZpZGVyX19jIiwgcHJvdmlkZXJJZCk7IAogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZihwcm92aWRlcklkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitwcm92aWRlcklkOwp9CmlmIChwYXRpZW50SWQgJiYgcGF0aWVudElkLmxlbmd0aCA+IDApIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50X19jIiwgcGF0aWVudElkKTsKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YocGF0aWVudElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitwYXRpZW50SWQ7Cn0KaWYgKGNhc2VJZCAmJiBjYXNlSWQubGVuZ3RoID4gMCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0Nhc2VfX2MiLCBjYXNlSWQpOwp9Ci8vYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1ByaW9yaXR5X19jIiwgcGFyZW50UHJpb3JpdHkpOyAKYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIixzZlVzZXJJRCk7IC8vIFB2MTkwNDE1IHVwZGF0ZWQgZm9yIG93bmVyIGFzIGN1cnJlbnQgdXNlcgp2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpTdGFjaywgIkRvY3VtZW50cyBJbmRleGVkIG9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpICsgIiI7IAphbGVydCgiIyMjIyB6U3RhY2sgUmVjZWl2ZWQuIEF0dGFjaGVkIHRvOiAiICsgc2ZJZCk7CnZhciBjaGlsZFN0YWNrTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsIHpTdGFjaywgIk5hbWUiLCBudWxsLCBzZklkKTsgCi8vYXR0YWNoKGRvYywgIkluZGV4ZWQtIitmb3JtYXROb3crIi0iK3RyaWFnZVR5cGUsIHNmU3RhY2tJZCk7CmFsZXJ0KCJAQEBAIHVwZGF0ZWQgYW5kIGF0dGFjaGVkIHRvIHpTdGFjayBSZWNvcmQsIGlkID0gIiArIHNmU3RhY2tJZCk7CgphdHRhY2hQYXRoID0gYXR0YWNoUGF0aC5zdWJzdHJpbmcoMCwgYXR0YWNoUGF0aC5sYXN0SW5kZXhPZignLycpICsgMSkgKyBzZklkICsgIiwiICsgYXR0YWNoUGF0aC5zdWJzdHJpbmcoYXR0YWNoUGF0aC5sYXN0SW5kZXhPZignLycpICsgMSk7Cgp1bmxvY2tEb2N1bWVudChkb2MpOwoKYXJyT2ZQYWlycyA9IFtdOwoKaWYgKDE9PT0xICYmIDE9PT0wKSB7IAoKLy8gICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCJJbmRleGVkIik7Ci8vICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7Cn0KLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwppZiAoIXBhdGllbnRGaXJzdE5hbWUgfHwgMCA9PSBwYXRpZW50Rmlyc3ROYW1lLmxlbmd0aCkgeyBwYXRpZW50Rmlyc3ROYW1lID0gIlVua25vd24iOyB9CmlmICghcGF0aWVudExhc3ROYW1lIHx8IDAgPT0gcGF0aWVudExhc3ROYW1lLmxlbmd0aCkgeyBwYXRpZW50TGFzdE5hbWUgPSAiTmFtZSI7IH0KCmFsZXJ0ICgiQEBAQEAgekRhdGEucHJvZ3JhbU5hbWUgPSAiKyB6RGF0YS5wcm9ncmFtTmFtZSk7IAoKYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyAiICAtICAiICsgY2xhc3NpZmljYXRpb24gKyIgIC0gICIrICB6RGF0YS5kb2N1bWVudFR5cGVNYXBbZG9jVHlwZV0gICsiIC0gICIgKyBjaGlsZFN0YWNrTnVtYmVyKTsgLy9KUEIxOTA0MzAgdXBkYXRlZCBsYWJlbAphbGVydCgiQEBAQCBTZXR0aW5nIFhfZG9jVHlwZSB0bzogIiArIGZheFR5cGUpOwphcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsZmF4VHlwZSk7IAphcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19mYXhUeXBlX19jIixmYXhUeXBlKTsgCmFyck9mUGFpcnMucHVzaCgiWF9zZlN0YWNrSWQiLCBzZklkKTsgICAKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLGF0dGFjaFBhdGgpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCAiSW5kZXhlZCBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdHJhY2soZG9jLCAiRG9jIEluZGV4ZWQgIiwgIkRvY3VtZW50IHdpdGggSWQ6ICIgKyBkb2MuZGJJRCwgcGFnZUNvdW50KTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJuZXh0UGFnZSh+cmVhZHl+KTt1cGRhdGVERVN0YXR1cyh+aW5kZXhlZDoiICsgcGFnZVJhbmdlICsgIn4pOyIpOwoKaWYgKGNhc2VJZCAmJiBjYXNlTnVtYmVyKSB7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjskKH4jWlBBUEVSX19DYXNlX19jfikudmFsKH4iICsgY2FzZUlkICsgIn4pOyAkKH4jWlBBUEVSX19DYXNlX19jX0Nhc2VOdW1iZXJ+KS52YWwofiIgKyBjYXNlTnVtYmVyICsgIn4pOyAiKTsKfQoKCmlmIChjb250YWN0SWQgJiYgcGF0aWVudEZpcnN0TmFtZSAmJiBwYXRpZW50TGFzdE5hbWUpIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyQofiNaUEFQRVJfX1BhdGllbnRfX2N+KS52YWwofiIgKyBjb250YWN0SWQgKyAifik7ICQofiNaUEFQRVJfX1BhdGllbnRfX2NfTmFtZX4pLnZhbCh+IiArIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyAifik7ICIpOwp9CgovKiBlbmQgb2YgcnVsZSAqLwo="},"ordinal":7}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPBJPB200830 updated rule Sales Demo Org
alert("@@@@ Index Rule Fired " + doc.dbID + " @@@#");
/* double-quote, newline characters */
var dq = String.fromCharCode(34);
var nl = String.fromCharCode(10);
var formatNow=getCurDateAndTime(doc);
var notes = doc.kbData.comments + "";   
alert("@@@ NOTES: " + notes); 

/* double-quote, newline characters */

var dq = String.fromCharCode(34); 
var nl = String.fromCharCode(10);
var formatNow=getCurDateAndTime(doc);
var notes = doc.kbData.comments + "";   
alert("@@@ NOTES: " + notes);
var zp="ZPAPER__"; 
var zStack=zp+"zStack__c"; 

var parentFolder = X(doc,"X_curFolder"); 
var stackId = X(doc, "X_stack");
var sfStackId = X(doc,"X_sfStackId");
if (sfStackId ==="") { 
    X(doc,"X_attachedTo");
    if (sfStackId.lastIndexOf('/') >= 0) {
        sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/')+1);
        if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
}
var parentdbID = doc.dbID; 
alert("@@@@ parent stack id = " + sfStackId);
var parentStackNumber = getSFField(doc, zStack, "Name,ZPAPER__Priority__c", null, sfStackId); 
alert("#### Our parent stack number is " + parentStackNumber);
var stackFolder = stackId + "-STACK";
var companyCode = doc.deliveredTo;
//var parentPriority = 

/* Clear the trigger that invoked this rule */

var indexInitialized = X(doc,"X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
    stackId = new Date().getTime() + "";
    stackFolder = stackId + "-STACK";
    zData.initializeStack(doc,stackFolder, companyCode, stackId);
}

// Does the user want to attach indexed pages to Case?

var caseId = X(doc, "X_ZPAPER__Case__c");
var contactId = X(doc, "X_ZPAPER__Patient__c");
var patientId=contactId; //TODO
var providerId = X(doc, "X_ZPAPER__Provider__c");
var patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
var patientLastName = X(doc, "X_ZPAPER__LastName__c");
var patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
var faxType = X(doc, "X_ZPAPER__faxType__c");
alert("@@@@ Parent X_ZPAPER__faxType__c = " + faxType);

// Get the document type (will be used to route to next folder)
var channel="Fax"; //Pv190416 updated for case type
if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {channel="Email";} 
 if (isNaN(doc.deliveredTo)) {
    if (doc.deliveredTo.toLowerCase().indexOf("community") >= 0) {
    channel = "community";
    } 
    else {
    channel="Scan";
    }
}  

var docType = X(doc, "X_Document_Type__c");
if (faxType !== "" && faxType.toLowerCase() != "fax") docType=faxType; 
var prevIndexPages = X(doc, "X_indexedPages");
var curIndexPages = X(doc, "X_idxPages");
if (prevIndexPages && prevIndexPages.length > 0 && curIndexPages && curIndexPages.length > 0) {
    prevIndexPages += ",";
}
curIndexPages = prevIndexPages + curIndexPages;
var arrOfPairs = [];
var curXReviews = X(doc, "X_reviews");
var parentIsSigned = curXReviews && curXReviews.indexOf("Signed by agent") >= 0;
arrOfPairs.push("X_indexedPages", curIndexPages);
if (1===1) { 
    var ba=doc.X("X_buttonAction")+"";
    ba=ba.substring(1+ba.lastIndexOf(" "));
    if (!ba.endsWith("ed") && ba !== "") { ba+="ed"; } 
    if (ba !== "") { 
        var now0 = getCurDateAndTime(doc,false,true);
        arrOfPairs.push("X_reviewedStatus",ba);
//        arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); 
        arrOfPairs.push("X_buttonAction","");
    }
}
updateDB(doc,arrOfPairs);
//JPB191008 Make sure we update the Stage
arrOfPairs = []; 
arrOfPairs.push("ZPAPER__Stage__c", "Indexed"); 
updateSFRecord(doc, "ZPAPER__zStack__c", sfStackId, arrOfPairs); 

var attachPath = X(doc,"X_attachedTo");
alert("@@@@@@ Currently attached to ZPAPER__zStack__c with ID: " + sfStackId);
zData.setbrandprogram(doc); 

/* SPLIT OFF NEW SNIPPET HERE */

var pageRange = X(doc,"X_idxPages");
try {
alert("@@@@ Parent dbID = " + doc.dbID);
    splitDocumentForIndex(doc, "index", pageRange);
    alert("#### Child dbID = " + doc.dbID);
}
catch(err) {
    alert("Error when splitting document: " + err + ". ABORTING...");
    return;
}
alert("Case '"+caseId+"' and len="+caseId.length);

//*
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
//*

/* Attach the split document to a new Case record, if it wasn't passed in */
var priority=X(doc,"X_ZPAPER__Priority__c"); 
var label0="";
var triageType=doc.docType;
var patientName;

/* Attach the split document to Contact record if required */
alert("@@@@ attaching to a Contact? contactId = " + contactId);
if (contactId && contactId.length > 0) {
    
    if (attachPath.indexOf(contactId)==-1) attachPath+=","+contactId;
    var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, contactId); 
    patientFirstName = X(doc, "FirstName", contactFlds);
    patientLastName = X(doc, "LastName", contactFlds);
    patientName = patientFirstName + " " + patientLastName;
    attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, contactId);
}
else if (patientFirstName && patientFirstName.length > 0 && patientLastName && patientLastName.length > 0 && patientDOB && patientDOB.length > 0) {
    patientName = patientFirstName + " " + patientLastName;
    var ctcArrOfPairs = [];
    ctcArrOfPairs.push("FirstName", patientFirstName);
    ctcArrOfPairs.push("LastName", patientLastName);
    ctcArrOfPairs.push("BirthDate", patientDOB);
    contactId = createAndAttach(doc, "Contact", label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, ctcArrOfPairs);
    if (attachPath.indexOf(contactId)==-1) attachPath+=","+contactId;
    
    alert("@@@@@@@ NEW CONTACT CREATED WITH ID: " + contactId);
    // clear out the "New Patient" fields
    
    addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_First_Name__c" + dq + ").val(" + dq + "" + dq + "); ");
    addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_Last_Name__c" + dq + ").val(" + dq + "" + dq + "); ");
    addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_DoB__c" + dq + ").val(" + dq + "" + dq + "); ");
    addPostExecutionScript(doc, " $(" + dq + "#Labeler_Patient_DoB__c_readable" + dq + ").val(" + dq + "NONE" + dq + "); ");
    // set the Patient lookup fields
    addPostExecutionScript(doc, " $(" + dq + "#Patient__c" + dq + ").val(" + dq + contactId + dq + "); ");
    addPostExecutionScript(doc, " $(" + dq + "#Patient__c_Name" + dq + ").val(" + dq + patientFirstName + " " + patientLastName + dq + "); ");
}

attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, sfStackId);
var sfUserID = doc.kbData.sfUserID; // PV190421 updated for remote user
if(!sfUserID){
    sfUserID= getSFField(doc, "User","Id","username='"+doc.kbData.remoteUser+"'");
}
alert("PV190415 sfUserID : " +sfUserID);

if (!caseId || 0 === caseId.length) {
    alert("@@@@ creating new Case");
    arrOfPairs = [];
    
    arrOfPairs.push("ContactId", contactId);
    arrOfPairs.push("ZPAPER__newFax__c", "true"); 
    arrOfPairs.push("ZPAPER__latestFax__c", formatNow); 
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); 
    arrOfPairs.push("Status", X(doc,"X_Status"));
    arrOfPairs.push("Type", "Enrollment"); //Pv190416 updated for case type
    
    if (providerId && providerId.length > 0) {
        
        arrOfPairs.push("AccountId", providerId); 
    }

    if (1==1) { 
        //arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
        if (priority != "Normal") arrOfPairs.push("Priority",priority);  
        else arrOfPairs.push("Priority","Low"); //JPB200524 changed to Low
        arrOfPairs.push("Origin",channel); //PV190416 updated for case origin
    }
    
    alert("PV190415 " + arrOfPairs);    
    arrOfPairs.push("OwnerId",sfUserID);// Pv190415 updated for owner id as current user
    alert("PV190415 sfUserID : " + sfUserID);
    alert("PV190415 " + arrOfPairs);
    //name="X_ZPAPER__Patient__c"
    //name="X_ZPAPER__FirstName__c"
    //name="X_ZPAPER__LastName__c"
    caseId = createAndAttach(doc, "Case", label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, arrOfPairs);
    alert("Created Case with ID: " + caseId);
    if (caseId == "null" || caseId == "NEW") caseId=null; 
}
else {
    alert("@@@@ attaching to existing Case: " + caseId);
    attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, caseId);
}

var caseNumber = null;
if (caseId){
    var caseNumber = getSFField(doc, "Case", "CaseNumber", null, caseId);
}

if (attachPath.indexOf(caseId)==-1) attachPath+=","+caseId;

var arrOfPairs = [];
var zType="Fax"; 
if (faxType !== "" && faxType.toLowerCase() != "fax") zType=faxType; 
alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", zType);
arrOfPairs.push(zp+"Status__c", "Indexed Documents"); 

alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);
arrOfPairs.push(zp+"Channel__c",channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));

if (zData.categorizedQueueId) arrOfPairs.push("OwnerId",zData.categorizedQueueId.trim());  
alert("#### zData.programName=*" +zData.programName+"* zData.PROGRAM_ZCHARTA=*"+zData.PROGRAM_ZCHARTA+"* zData.PROGRAM_ZPAPYRUS=*"+zData.PROGRAM_ZPAPYRUS+"* zData.PROGRAM_ZCARTA+*"+zData.PROGRAM_ZCARTA+"* zData.PROGRAM_ORTHOPEDICS=*"+zData.PROGRAM_ORTHOPEDICS+"* zData.PROGRAM_ZREFERRAL=*"+zData.PROGRAM_ZREFERRAL); //JPB180808 Adding 2 DRUGS FOR prospect demo programName
                                                      
var classification = X(doc,"X_ZPAPER__Classification__c"); //PV190423 updated
 
if (zData.classification === zData.PROGRAM_ZCHARTA) {
    arrOfPairs.push(zp+"Priority__c", "Urgent"); 
}
else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {
    arrOfPairs.push(zp+"Priority__c", "Special"); 
}
else if (zData.classification === zData.PROGRAM_ZCARTA) {
    arrOfPairs.push(zp+"Priority__c", "Critical"); 
}
else if (zData.classification === zData.PROGRAM_REFERRALS) {
    arrOfPairs.push(zp+"Priority__c", "High"); //JPB changed to Referrals
}
else if (zData.classification === zData.PROGRAM_PRIORAUTH) {
    arrOfPairs.push(zp+"Priority__c", "Immediate"); //JPB200524 changed to PriorAuth
}
else if (zData.classification === zData.PROGRAM_ORTHOPEDICS) {
    arrOfPairs.push(zp+"Priority__c", "Standard"); 
}
else if (zData.classification === zData.PROGRAM_CARDIOLOGY) {
    arrOfPairs.push(zp+"Priority__c", "Attention needed");  //JPB200524 added Cardiology
}
else if (zData.classification === zData.PROGRAM_GRIEVAPPEALS) {
    arrOfPairs.push(zp+"Priority__c", "Medium");  //JPB200524 added Grievances & Appeals
}
else if (zData.classification === zData.PROGRAM_MEDICALRECORDS) {
    arrOfPairs.push(zp+"Priority__c", "Rush");  //JPB200607 added Medical Records
}
else if (zData.classification === zData.PROGRAM_ORDERENTRY) {
    arrOfPairs.push(zp+"Priority__c", "Custom");  //JPB200830 added Order Entry
}
else {
    arrOfPairs.push(zp+"Priority__c", "Normal");
}
alert("#### ZPAPER__Classification__c ="+ zData.programName);
//JPB200305 added Orthopedics

arrOfPairs.push(zp+"Classification__c", classification ); //Pv190423 Updated
arrOfPairs.push(zp+"Program_Name__c", zData.programName); 
arrOfPairs.push(zp+"sentFaxTo__c",doc.deliveredTo); 
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
arrOfPairs.push(zp+"Stage__c", "Indexed"); 
arrOfPairs.push(zp+"Parent__c",sfStackId); 
//arrOfPairs.push("Provider_Fullname__c", X(doc, "X_Provider_Fullname__c")); 
//arrOfPairs.push("Facility__c", X(doc, "X_Facility__c")); 
//arrOfPairs.push("Case_Number__c", X(doc, "X_Case_Number__c")); 
if (notes) {
    arrOfPairs.push("Notes__c", notes);
}
if (providerId && providerId.length > 0) {
    var providerFlds = getSFFields(doc, "Account", "Facility__c,Fax,Phone", null, providerId); 
    arrOfPairs.push("Facility__c", X(doc,"Facility__c",providerFlds)); 
    arrOfPairs.push("Fax__c", X(doc,"Fax",providerFlds)); 
    arrOfPairs.push("ZPAPER__Phone__c", X(doc,"Phone",providerFlds)); 
    arrOfPairs.push("ZPAPER__Provider__c", providerId); 
    if (attachPath.indexOf(providerId)==-1) attachPath+=","+providerId;
}
if (patientId && patientId.length > 0) {
    arrOfPairs.push("ZPAPER__Patient__c", patientId);
    if (attachPath.indexOf(patientId)==-1) attachPath+=","+patientId;
}
if (caseId && caseId.length > 0) {
    arrOfPairs.push("ZPAPER__Case__c", caseId);
}
//arrOfPairs.push("ZPAPER__Priority__c", parentPriority); 
arrOfPairs.push("OwnerId",sfUserID); // Pv190415 updated for owner as current user
var sfId = createAndAttach(doc, zStack, "Documents Indexed on " + formatNow, arrOfPairs) + ""; 
alert("#### zStack Received. Attached to: " + sfId);
var childStackNumber = getSFField(doc, zStack, "Name", null, sfId); 
//attach(doc, "Indexed-"+formatNow+"-"+triageType, sfStackId);
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId);

attachPath = attachPath.substring(0, attachPath.lastIndexOf('/') + 1) + sfId + "," + attachPath.substring(attachPath.lastIndexOf('/') + 1);

unlockDocument(doc);

arrOfPairs = [];

if (1===1 && 1===0) { 

//    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus","Indexed");
//    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); 
    arrOfPairs.push("X_buttonAction","");
}
/* CRN160825 Set the page count so that it does not have the parent page count */
var pageCount = zData.countPages(doc,pageRange);
alert("@@@@ pageCount = " + pageCount);
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
if (!patientFirstName || 0 == patientFirstName.length) { patientFirstName = "Unknown"; }
if (!patientLastName || 0 == patientLastName.length) { patientLastName = "Name"; }

alert ("@@@@@ zData.programName = "+ zData.programName); 

arrOfPairs.push("db-label", patientFirstName + " " + patientLastName + "  -  " + classification +"  -  "+  zData.documentTypeMap[docType]  +" -  " + childStackNumber); //JPB190430 updated label
alert("@@@@ Setting X_docType to: " + faxType);
arrOfPairs.push("X_docType",faxType); 
arrOfPairs.push("X_ZPAPER__faxType__c",faxType); 
arrOfPairs.push("X_sfStackId", sfId);   
arrOfPairs.push("X_attachedTo",attachPath); 
arrOfPairs.push("X_reviews", "Indexed by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); 
                                  
updateDB(doc,arrOfPairs);

track(doc, "Doc Indexed ", "Document with Id: " + doc.dbID, pageCount);
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");

if (caseId && caseNumber) {
    addPostExecutionScript(doc, ";$(~#ZPAPER__Case__c~).val(~" + caseId + "~); $(~#ZPAPER__Case__c_CaseNumber~).val(~" + caseNumber + "~); ");
}


if (contactId && patientFirstName && patientLastName) {
    addPostExecutionScript(doc, ";$(~#ZPAPER__Patient__c~).val(~" + contactId + "~); $(~#ZPAPER__Patient__c_Name~).val(~" + patientFirstName + " " + patientLastName + "~); ");
}

/* end of rule */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
ZnVuY3Rpb24gekluc3RhbGwoKSB7IC8vRVJTMTcwNzIyIHNldCBvbiB0aGUgaW1wb3J0CiAgICAkKCJbbmFtZT0nZGItQkFURVMnXSIpLnZhbCgiIik7CiAgICAkKCIjWF9idXR0b25BY3Rpb25zIikudmFsKCJJbmRleCxJZ25vcmUsUmVqZWN0LFN0YWNrIENvbXBsZXRlIik7CiAgICAkKCIjWF9mb2xkZXJGb3JtcyIpLnZhbCgiMjAyMDAyMDE3MTEyNTA5MTExNV9EYXRhMl9XZWJfRm9ybSIpOwp9IC8vRVJTMTcwNzIyIGVuZCBvZiBmdW5jdGlvbgoKZnVuY3Rpb24gZG9WYWxpZGF0aW9uKCkgewogICAgLy9DUk4xNzA3MTkgRHJ1ZyBuYW1lIGlzIHJlcXVpcmVkCiAgICAvL0VSUzE3MDcxOSBtb3JlIGZpZWxkcyBmcm9tIEtlbgogICAgdmFyIGNhc2VJZCA9ICQoJ1tuYW1lPSJYX0Nhc2VfX2MiXScpLnZhbCgpOwogICAgLy9FUlMxNzA3MjcgZGVidWcgb25seSBhbGVydCgiQ2FzZSAiK2Nhc2VJZCk7CiAgICAKICAgIHZhciByZXFCdWZmZXIgPSAiIjsKICAgIAogICAgbj0iWF9aUEFQRVJfX2ZheFR5cGVfX2MiOyBsPSJEb2N1bWVudCBUeXBlIjsKICAgIGU9JCgnW25hbWU9IicrbisnIl0nKTsKICAgIGlmICghZS52YWwoKSB8fCAwID09PSBlLnZhbCgpLmxlbmd0aCB8fCAiRE9OT1RfU0FWRSIgPT09IGUudmFsKCkpIHsKICAgICAgICBlLmNzcygnYm9yZGVyJywnM3B4IHNvbGlkIHJlZCcpOwogICAgICAgIGlmIChyZXFCdWZmZXIubGVuZ3RoID4gMCkgeyByZXFCdWZmZXIgKz0gIiwgIjsgfQogICAgICAgIHJlcUJ1ZmZlciArPSBsOwogICAgfSBlbHNlIGUuY3NzKCdib3JkZXInLCczcHggc29saWQgZ3JlZW4nKTsKICAgIAogICAgbj0iWF9aUEFQRVJfX1ByaW9yaXR5X19jIjsgbD0iUHJpb3JpdHkiOwogICAgZT0kKCdbbmFtZT0iJytuKyciXScpOwogICAgaWYgKCFlLnZhbCgpIHx8IDAgPT09IGUudmFsKCkubGVuZ3RoIHx8ICJET05PVF9TQVZFIiA9PT0gZS52YWwoKSkgewogICAgICAgIGUuY3NzKCdib3JkZXInLCczcHggc29saWQgcmVkJyk7CiAgICAgICAgaWYgKHJlcUJ1ZmZlci5sZW5ndGggPiAwKSB7IHJlcUJ1ZmZlciArPSAiLCAiOyB9CiAgICAgICAgcmVxQnVmZmVyICs9IGw7CiAgICB9IGVsc2UgZS5jc3MoJ2JvcmRlcicsJzNweCBzb2xpZCBncmVlbicpOwogICAgCiAgICBpZiAocmVxQnVmZmVyLmxlbmd0aCA+IDApIHsKICAgICAgICBhbGVydCgiRVJST1I6IFRoZSBmb2xsb3dpbmcgZmllbGRzIGFyZSByZXF1aXJlZDogIiArIHJlcUJ1ZmZlcik7CiAgICAgICAgcmV0dXJuIGZhbHNlOyAgIC8vQ1JOMTcwNzE5IG9uZSBvciBtb3JlIGZpZWxkIGlzIG1pc3NpbmcsIGRvbid0IHNlbmQgdG8gdGhlIHJ1bGVzIGVuZ2luZQogICAgfQogICAgcmV0dXJuIHRydWU7ICAgICAgICAvL0NSTjE3MDcxOSBBbGwgcmVxdWlyZWQgZmllbGRzIGhhdmUgYmVlbiBzdXBwbGllZCwgbGV0IHRoZSBydWxlcyBlbmdpbmUgYmUgbm90aWZpZWQKfQoKcmV0dXJuIGRvVmFsaWRhdGlvbigpOw==
//--- RULE VALIDATION CODE - END ---

</script>
