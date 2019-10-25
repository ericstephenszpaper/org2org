<!--
// Name: Index Page
// Committer: judson.bruno@zpaper.com
// Update: JPB191008 updated rule Sales Demo Org; JPB191008 Make sure we update the Stage
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-10-08 15:22:14","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTEwMDggdXBkYXRlZCBydWxlIFNhbGVzIERlbW8gT3JnCmFsZXJ0KCJAQEBAIEluZGV4IFJ1bGUgRmlyZWQgIiArIGRvYy5kYklEICsgIiBAQEAjIik7Ci8qIGRvdWJsZS1xdW90ZSwgbmV3bGluZSBjaGFyYWN0ZXJzICovCnZhciBkcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOwp2YXIgbmwgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDEwKTsKdmFyIGZvcm1hdE5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgbm90ZXMgPSBkb2Mua2JEYXRhLmNvbW1lbnRzICsgIiI7ICAgCmFsZXJ0KCJAQEAgTk9URVM6ICIgKyBub3Rlcyk7IAoKLyogZG91YmxlLXF1b3RlLCBuZXdsaW5lIGNoYXJhY3RlcnMgKi8KCnZhciBkcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOyAKdmFyIG5sID0gU3RyaW5nLmZyb21DaGFyQ29kZSgxMCk7CnZhciBmb3JtYXROb3c9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIG5vdGVzID0gZG9jLmtiRGF0YS5jb21tZW50cyArICIiOyAgIAphbGVydCgiQEBAIE5PVEVTOiAiICsgbm90ZXMpOwp2YXIgenA9IlpQQVBFUl9fIjsgCnZhciB6U3RhY2s9enArInpTdGFja19fYyI7IAoKdmFyIHBhcmVudEZvbGRlciA9IFgoZG9jLCJYX2N1ckZvbGRlciIpOyAKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsKdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCJYX3NmU3RhY2tJZCIpOwppZiAoc2ZTdGFja0lkID09PSIiKSB7IAogICAgWChkb2MsIlhfYXR0YWNoZWRUbyIpOwogICAgaWYgKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpID49IDApIHsKICAgICAgICBzZlN0YWNrSWQgPSBzZlN0YWNrSWQuc3Vic3RyaW5nKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpKzEpOwogICAgICAgIGlmIChzZlN0YWNrSWQuaW5kZXhPZignLCcpID49IDApIHsgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZygwLCBzZlN0YWNrSWQuaW5kZXhPZignLCcpKTsgfQogICAgfQp9CnZhciBwYXJlbnRkYklEID0gZG9jLmRiSUQ7IAphbGVydCgiQEBAQCBwYXJlbnQgc3RhY2sgaWQgPSAiICsgc2ZTdGFja0lkKTsKdmFyIHBhcmVudFN0YWNrTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsIHpTdGFjaywgIk5hbWUsWlBBUEVSX19Qcmlvcml0eV9fYyIsIG51bGwsIHNmU3RhY2tJZCk7IAphbGVydCgiIyMjIyBPdXIgcGFyZW50IHN0YWNrIG51bWJlciBpcyAiICsgcGFyZW50U3RhY2tOdW1iZXIpOwp2YXIgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CnZhciBjb21wYW55Q29kZSA9IGRvYy5kZWxpdmVyZWRUbzsKLy92YXIgcGFyZW50UHJpb3JpdHkgPSAKCi8qIENsZWFyIHRoZSB0cmlnZ2VyIHRoYXQgaW52b2tlZCB0aGlzIHJ1bGUgKi8KCnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwppZiAoIWluZGV4SW5pdGlhbGl6ZWQgfHwgMCA9PT0gaW5kZXhJbml0aWFsaXplZC5sZW5ndGgpIHsKICAgIHN0YWNrSWQgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CiAgICB6RGF0YS5pbml0aWFsaXplU3RhY2soZG9jLHN0YWNrRm9sZGVyLCBjb21wYW55Q29kZSwgc3RhY2tJZCk7Cn0KCi8vIERvZXMgdGhlIHVzZXIgd2FudCB0byBhdHRhY2ggaW5kZXhlZCBwYWdlcyB0byBDYXNlPwoKdmFyIGNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsKdmFyIGNvbnRhY3RJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRfX2MiKTsKdmFyIHBhdGllbnRJZD1jb250YWN0SWQ7IC8vVE9ETwp2YXIgcHJvdmlkZXJJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIik7CnZhciBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CnZhciBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwp2YXIgcGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwp2YXIgZmF4VHlwZSA9IFgoZG9jLCAiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsKYWxlcnQoIkBAQEAgUGFyZW50IFhfWlBBUEVSX19mYXhUeXBlX19jID0gIiArIGZheFR5cGUpOwoKLy8gR2V0IHRoZSBkb2N1bWVudCB0eXBlICh3aWxsIGJlIHVzZWQgdG8gcm91dGUgdG8gbmV4dCBmb2xkZXIpCnZhciBjaGFubmVsPSJGYXgiOyAvL1B2MTkwNDE2IHVwZGF0ZWQgZm9yIGNhc2UgdHlwZQppZiAoZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpPi0xIHx8IGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIi4iKT4tMSkge2NoYW5uZWw9IkVtYWlsIjt9IAogaWYgKGlzTmFOKGRvYy5kZWxpdmVyZWRUbykpIHsKICAgIGlmIChkb2MuZGVsaXZlcmVkVG8udG9Mb3dlckNhc2UoKS5pbmRleE9mKCJjb21tdW5pdHkiKSA+PSAwKSB7CiAgICBjaGFubmVsID0gImNvbW11bml0eSI7CiAgICB9IAogICAgZWxzZSB7CiAgICBjaGFubmVsPSJTY2FuIjsKICAgIH0KfSAgCgp2YXIgZG9jVHlwZSA9IFgoZG9jLCAiWF9Eb2N1bWVudF9UeXBlX19jIik7CmlmIChmYXhUeXBlICE9PSAiIiAmJiBmYXhUeXBlLnRvTG93ZXJDYXNlKCkgIT0gImZheCIpIGRvY1R5cGU9ZmF4VHlwZTsgCnZhciBwcmV2SW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pbmRleGVkUGFnZXMiKTsKdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKaWYgKHByZXZJbmRleFBhZ2VzICYmIHByZXZJbmRleFBhZ2VzLmxlbmd0aCA+IDAgJiYgY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICAgIHByZXZJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzID0gcHJldkluZGV4UGFnZXMgKyBjdXJJbmRleFBhZ2VzOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgY3VyWFJldmlld3MgPSBYKGRvYywgIlhfcmV2aWV3cyIpOwp2YXIgcGFyZW50SXNTaWduZWQgPSBjdXJYUmV2aWV3cyAmJiBjdXJYUmV2aWV3cy5pbmRleE9mKCJTaWduZWQgYnkgYWdlbnQiKSA+PSAwOwphcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhlZFBhZ2VzIiwgY3VySW5kZXhQYWdlcyk7CmlmICgxPT09MSkgeyAKICAgIHZhciBiYT1kb2MuWCgiWF9idXR0b25BY3Rpb24iKSsiIjsKICAgIGJhPWJhLnN1YnN0cmluZygxK2JhLmxhc3RJbmRleE9mKCIgIikpOwogICAgaWYgKCFiYS5lbmRzV2l0aCgiZWQiKSAmJiBiYSAhPT0gIiIpIHsgYmErPSJlZCI7IH0gCiAgICBpZiAoYmEgIT09ICIiKSB7IAogICAgICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwovLyAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICB9Cn0KdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwovL0pQQjE5MTAwOCBNYWtlIHN1cmUgd2UgdXBkYXRlIHRoZSBTdGFnZQphcnJPZlBhaXJzID0gW107IAphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhZ2VfX2MiLCAiSW5kZXhlZCIpOyAKdXBkYXRlU0ZSZWNvcmQoZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCBzZlN0YWNrSWQsIGFyck9mUGFpcnMpOyAKCnZhciBhdHRhY2hQYXRoID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOwphbGVydCgiQEBAQEBAIEN1cnJlbnRseSBhdHRhY2hlZCB0byBaUEFQRVJfX3pTdGFja19fYyB3aXRoIElEOiAiICsgc2ZTdGFja0lkKTsKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IAoKLyogU1BMSVQgT0ZGIE5FVyBTTklQUEVUIEhFUkUgKi8KCnZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwp0cnkgewphbGVydCgiQEBAQCBQYXJlbnQgZGJJRCA9ICIgKyBkb2MuZGJJRCk7CiAgICBzcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiaW5kZXgiLCBwYWdlUmFuZ2UpOwogICAgYWxlcnQoIiMjIyMgQ2hpbGQgZGJJRCA9ICIgKyBkb2MuZGJJRCk7Cn0KY2F0Y2goZXJyKSB7CiAgICBhbGVydCgiRXJyb3Igd2hlbiBzcGxpdHRpbmcgZG9jdW1lbnQ6ICIgKyBlcnIgKyAiLiBBQk9SVElORy4uLiIpOwogICAgcmV0dXJuOwp9CmFsZXJ0KCJDYXNlICciK2Nhc2VJZCsiJyBhbmQgbGVuPSIrY2FzZUlkLmxlbmd0aCk7CgovLyoKLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgU1RBQ0sgU05JUFBFVCAqLwovLyoKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gYSBuZXcgQ2FzZSByZWNvcmQsIGlmIGl0IHdhc24ndCBwYXNzZWQgaW4gKi8KdmFyIHByaW9yaXR5PVgoZG9jLCJYX1pQQVBFUl9fUHJpb3JpdHlfX2MiKTsgCnZhciBsYWJlbDA9IiI7CnZhciB0cmlhZ2VUeXBlPWRvYy5kb2NUeXBlOwp2YXIgcGF0aWVudE5hbWU7CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENvbnRhY3QgcmVjb3JkIGlmIHJlcXVpcmVkICovCmFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBhIENvbnRhY3Q/IGNvbnRhY3RJZCA9ICIgKyBjb250YWN0SWQpOwppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CiAgICAKICAgIGlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7CiAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIGNvbnRhY3RJZCk7IAogICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgIHBhdGllbnROYW1lID0gcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZTsKICAgIGF0dGFjaChkb2MsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgY29udGFjdElkKTsKfQplbHNlIGlmIChwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRGaXJzdE5hbWUubGVuZ3RoID4gMCAmJiBwYXRpZW50TGFzdE5hbWUgJiYgcGF0aWVudExhc3ROYW1lLmxlbmd0aCA+IDAgJiYgcGF0aWVudERPQiAmJiBwYXRpZW50RE9CLmxlbmd0aCA+IDApIHsKICAgIHBhdGllbnROYW1lID0gcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZTsKICAgIHZhciBjdGNBcnJPZlBhaXJzID0gW107CiAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHBhdGllbnRGaXJzdE5hbWUpOwogICAgY3RjQXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHBhdGllbnRMYXN0TmFtZSk7CiAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkJpcnRoRGF0ZSIsIHBhdGllbnRET0IpOwogICAgY29udGFjdElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCBsYWJlbDArIkluZGV4ZWQtIiArIHBhdGllbnROYW1lICsgIi0iICsgZmF4VHlwZSArICItIiArIHN0YWNrSWQsIGN0Y0Fyck9mUGFpcnMpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjb250YWN0SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2NvbnRhY3RJZDsKICAgIAogICAgYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgY29udGFjdElkKTsKICAgIC8vIGNsZWFyIG91dCB0aGUgIk5ldyBQYXRpZW50IiBmaWVsZHMKICAgIAogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9GaXJzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0xhc3RfTmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9Eb0JfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwogICAgLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIGNvbnRhY3RJZCArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lICsgZHEgKyAiKTsgIik7Cn0KCmF0dGFjaChkb2MsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgc2ZTdGFja0lkKTsKdmFyIHNmVXNlcklEID0gZG9jLmtiRGF0YS5zZlVzZXJJRDsgLy8gUFYxOTA0MjEgdXBkYXRlZCBmb3IgcmVtb3RlIHVzZXIKaWYoIXNmVXNlcklEKXsKICAgIHNmVXNlcklEPSBnZXRTRkZpZWxkKGRvYywgIlVzZXIiLCJJZCIsInVzZXJuYW1lPSciK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiJyIpOwp9CmFsZXJ0KCJQVjE5MDQxNSBzZlVzZXJJRCA6ICIgK3NmVXNlcklEKTsKCmlmICghY2FzZUlkIHx8IDAgPT09IGNhc2VJZC5sZW5ndGgpIHsKICAgIGFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyBDYXNlIik7CiAgICBhcnJPZlBhaXJzID0gW107CiAgICAKICAgIGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgY29udGFjdElkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCBmb3JtYXROb3cpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgWChkb2MsIlhfU3RhdHVzIikpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIkVucm9sbG1lbnQiKTsgLy9QdjE5MDQxNiB1cGRhdGVkIGZvciBjYXNlIHR5cGUKICAgIAogICAgaWYgKHByb3ZpZGVySWQgJiYgcHJvdmlkZXJJZC5sZW5ndGggPiAwKSB7CiAgICAgICAgCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJBY2NvdW50SWQiLCBwcm92aWRlcklkKTsgCiAgICB9CgogICAgaWYgKDE9PTEpIHsgCiAgICAgICAgLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCiAgICAgICAgaWYgKHByaW9yaXR5ICE9ICJOb3JtYWwiKSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5Iixwcmlvcml0eSk7ICAKICAgICAgICBlbHNlIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLCJNZWRpdW0iKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsY2hhbm5lbCk7IC8vUFYxOTA0MTYgdXBkYXRlZCBmb3IgY2FzZSBvcmlnaW4KICAgIH0KICAgIAogICAgYWxlcnQoIlBWMTkwNDE1ICIgKyBhcnJPZlBhaXJzKTsgICAgCiAgICBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHNmVXNlcklEKTsvLyBQdjE5MDQxNSB1cGRhdGVkIGZvciBvd25lciBpZCBhcyBjdXJyZW50IHVzZXIKICAgIGFsZXJ0KCJQVjE5MDQxNSBzZlVzZXJJRCA6ICIgKyBzZlVzZXJJRCk7CiAgICBhbGVydCgiUFYxOTA0MTUgIiArIGFyck9mUGFpcnMpOwogICAgLy9uYW1lPSJYX1pQQVBFUl9fUGF0aWVudF9fYyIKICAgIC8vbmFtZT0iWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIKICAgIC8vbmFtZT0iWF9aUEFQRVJfX0xhc3ROYW1lX19jIgogICAgY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCBsYWJlbDArIkluZGV4ZWQtIiArIHBhdGllbnROYW1lICsgIi0iICsgZmF4VHlwZSArICItIiArIHN0YWNrSWQsIGFyck9mUGFpcnMpOwogICAgYWxlcnQoIkNyZWF0ZWQgQ2FzZSB3aXRoIElEOiAiICsgY2FzZUlkKTsKICAgIGlmIChjYXNlSWQgPT0gIm51bGwiIHx8IGNhc2VJZCA9PSAiTkVXIikgY2FzZUlkPW51bGw7IAp9CmVsc2UgewogICAgYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGV4aXN0aW5nIENhc2U6ICIgKyBjYXNlSWQpOwogICAgYXR0YWNoKGRvYywgbGFiZWwwKyJJbmRleGVkLSIgKyBwYXRpZW50TmFtZSArICItIiArIGZheFR5cGUgKyAiLSIgKyBzdGFja0lkLCBjYXNlSWQpOwp9Cgp2YXIgY2FzZU51bWJlciA9IG51bGw7CmlmIChjYXNlSWQpewogICAgdmFyIGNhc2VOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgIkNhc2UiLCAiQ2FzZU51bWJlciIsIG51bGwsIGNhc2VJZCk7Cn0KCmlmIChhdHRhY2hQYXRoLmluZGV4T2YoY2FzZUlkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjYXNlSWQ7Cgp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgelR5cGU9IkZheCI7IAppZiAoZmF4VHlwZSAhPT0gIiIgJiYgZmF4VHlwZS50b0xvd2VyQ2FzZSgpICE9ICJmYXgiKSB6VHlwZT1mYXhUeXBlOyAKYWxlcnQoIkBAQEB6VHlwZT0iK3pUeXBlKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwgelR5cGUpOwphcnJPZlBhaXJzLnB1c2goenArIlN0YXR1c19fYyIsICJJbmRleGVkIERvY3VtZW50cyIpOyAKCmFsZXJ0KCJFUlMxODA1MDUgZG9jLmRlbGl2ZXJlZEZyb209Iitkb2MuZGVsaXZlcmVkRnJvbSk7CmFyck9mUGFpcnMucHVzaCh6cCsiQ2hhbm5lbF9fYyIsY2hhbm5lbCk7CmFyck9mUGFpcnMucHVzaCh6cCsibGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwphcnJPZlBhaXJzLnB1c2goenArIm5ld0ZheF9fYyIsICJ0cnVlIik7CmFyck9mUGFpcnMucHVzaCh6cCsiUGFnZXNfX2MiLCBYKGRvYywgIlhfcGFnZXMiKSk7CgppZiAoekRhdGEuY2F0ZWdvcml6ZWRRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLmNhdGVnb3JpemVkUXVldWVJZC50cmltKCkpOyAgCmFsZXJ0KCIjIyMjIHpEYXRhLnByb2dyYW1OYW1lPSoiICt6RGF0YS5wcm9ncmFtTmFtZSsiKiB6RGF0YS5QUk9HUkFNX1pDSEFSVEE9KiIrekRhdGEuUFJPR1JBTV9aQ0hBUlRBKyIqIHpEYXRhLlBST0dSQU1fWlBBUFlSVVM9KiIrekRhdGEuUFJPR1JBTV9aUEFQWVJVUysiKiB6RGF0YS5QUk9HUkFNX1pDQVJUQSsqIit6RGF0YS5QUk9HUkFNX1pDQVJUQSsiKiB6RGF0YS5QUk9HUkFNX1RFQ0hGSURFUkE9KiIrekRhdGEuUFJPR1JBTV9URUNGSURFUkErIiogekRhdGEuUFJPR1JBTV9UWVNBQlJJPSoiK3pEYXRhLlBST0dSQU1fVFlTQUJSSSk7IC8vSlBCMTgwODA4IEFkZGluZyAyIERSVUdTIEZPUiBwcm9zcGVjdCBkZW1vIHByb2dyYW1OYW1lCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAp2YXIgY2xhc3NpZmljYXRpb24gPSBYKGRvYywiWF9aUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIik7IC8vUFYxOTA0MjMgdXBkYXRlZAogCmlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVyZ2VudCIpOyAKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUykgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsgCn0KZWxzZSBpZiAoekRhdGEuY2xhc3NpZmljYXRpb24gPT09IHpEYXRhLlBST0dSQU1fWkNBUlRBKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIkNyaXRpY2FsIik7IAp9CmVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1BBTFZFTykgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJTcGVjaWFsIik7ICAKfQplbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9WSU5ESUNPKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlN0YW5kYXJkIik7ICAKfQplbHNlIHsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTm9ybWFsIik7Cn0KYWxlcnQoIiMjIyMgWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyA9IisgekRhdGEucHJvZ3JhbU5hbWUpOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCgphcnJPZlBhaXJzLnB1c2goenArIkNsYXNzaWZpY2F0aW9uX19jIiwgY2xhc3NpZmljYXRpb24gKTsgLy9QdjE5MDQyMyBVcGRhdGVkCmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLGRvYy5kZWxpdmVyZWRUbyk7IAphcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLGRvYy5kZWxpdmVyZWRGcm9tKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJJbmRleGVkIik7IAphcnJPZlBhaXJzLnB1c2goenArIlBhcmVudF9fYyIsc2ZTdGFja0lkKTsgCi8vYXJyT2ZQYWlycy5wdXNoKCJQcm92aWRlcl9GdWxsbmFtZV9fYyIsIFgoZG9jLCAiWF9Qcm92aWRlcl9GdWxsbmFtZV9fYyIpKTsgCi8vYXJyT2ZQYWlycy5wdXNoKCJGYWNpbGl0eV9fYyIsIFgoZG9jLCAiWF9GYWNpbGl0eV9fYyIpKTsgCi8vYXJyT2ZQYWlycy5wdXNoKCJDYXNlX051bWJlcl9fYyIsIFgoZG9jLCAiWF9DYXNlX051bWJlcl9fYyIpKTsgCmlmIChub3RlcykgewogICAgYXJyT2ZQYWlycy5wdXNoKCJOb3Rlc19fYyIsIG5vdGVzKTsKfQppZiAocHJvdmlkZXJJZCAmJiBwcm92aWRlcklkLmxlbmd0aCA+IDApIHsKICAgIHZhciBwcm92aWRlckZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJBY2NvdW50IiwgIkZhY2lsaXR5X19jLEZheCxQaG9uZSIsIG51bGwsIHByb3ZpZGVySWQpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiRmFjaWxpdHlfX2MiLCBYKGRvYywiRmFjaWxpdHlfX2MiLHByb3ZpZGVyRmxkcykpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiRmF4X19jIiwgWChkb2MsIkZheCIscHJvdmlkZXJGbGRzKSk7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1Bob25lX19jIiwgWChkb2MsIlBob25lIixwcm92aWRlckZsZHMpKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvdmlkZXJfX2MiLCBwcm92aWRlcklkKTsgCiAgICBpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHByb3ZpZGVySWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3Byb3ZpZGVySWQ7Cn0KaWYgKHBhdGllbnRJZCAmJiBwYXRpZW50SWQubGVuZ3RoID4gMCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRfX2MiLCBwYXRpZW50SWQpOwogICAgaWYgKGF0dGFjaFBhdGguaW5kZXhPZihwYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3BhdGllbnRJZDsKfQppZiAoY2FzZUlkICYmIGNhc2VJZC5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsIGNhc2VJZCk7Cn0KLy9hcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJpb3JpdHlfX2MiLCBwYXJlbnRQcmlvcml0eSk7IAphcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHNmVXNlcklEKTsgLy8gUHYxOTA0MTUgdXBkYXRlZCBmb3Igb3duZXIgYXMgY3VycmVudCB1c2VyCnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCAiRG9jdW1lbnRzIEluZGV4ZWQgb24gIiArIGZvcm1hdE5vdywgYXJyT2ZQYWlycykgKyAiIjsgCmFsZXJ0KCIjIyMjIHpTdGFjayBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKdmFyIGNoaWxkU3RhY2tOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgelN0YWNrLCAiTmFtZSIsIG51bGwsIHNmSWQpOyAKLy9hdHRhY2goZG9jLCAiSW5kZXhlZC0iK2Zvcm1hdE5vdysiLSIrdHJpYWdlVHlwZSwgc2ZTdGFja0lkKTsKYWxlcnQoIkBAQEAgdXBkYXRlZCBhbmQgYXR0YWNoZWQgdG8gelN0YWNrIFJlY29yZCwgaWQgPSAiICsgc2ZTdGFja0lkKTsKCmF0dGFjaFBhdGggPSBhdHRhY2hQYXRoLnN1YnN0cmluZygwLCBhdHRhY2hQYXRoLmxhc3RJbmRleE9mKCcvJykgKyAxKSArIHNmSWQgKyAiLCIgKyBhdHRhY2hQYXRoLnN1YnN0cmluZyhhdHRhY2hQYXRoLmxhc3RJbmRleE9mKCcvJykgKyAxKTsKCnVubG9ja0RvY3VtZW50KGRvYyk7CgphcnJPZlBhaXJzID0gW107CgppZiAoMT09PTEgJiYgMT09PTApIHsgCgovLyAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsIkluZGV4ZWQiKTsKLy8gICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKfQovKiBDUk4xNjA4MjUgU2V0IHRoZSBwYWdlIGNvdW50IHNvIHRoYXQgaXQgZG9lcyBub3QgaGF2ZSB0aGUgcGFyZW50IHBhZ2UgY291bnQgKi8KdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLHBhZ2VSYW5nZSk7CmFsZXJ0KCJAQEBAIHBhZ2VDb3VudCA9ICIgKyBwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiZGItcGFnZXMiLHBhZ2VDb3VudCk7CmlmICghcGF0aWVudEZpcnN0TmFtZSB8fCAwID09IHBhdGllbnRGaXJzdE5hbWUubGVuZ3RoKSB7IHBhdGllbnRGaXJzdE5hbWUgPSAiVW5rbm93biI7IH0KaWYgKCFwYXRpZW50TGFzdE5hbWUgfHwgMCA9PSBwYXRpZW50TGFzdE5hbWUubGVuZ3RoKSB7IHBhdGllbnRMYXN0TmFtZSA9ICJOYW1lIjsgfQoKYWxlcnQgKCJAQEBAQCB6RGF0YS5wcm9ncmFtTmFtZSA9ICIrIHpEYXRhLnByb2dyYW1OYW1lKTsgCgphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICIgIC0gICIgKyBjbGFzc2lmaWNhdGlvbiArIiAgLSAgIisgIHpEYXRhLmRvY3VtZW50VHlwZU1hcFtkb2NUeXBlXSAgKyIgLSAgIiArIGNoaWxkU3RhY2tOdW1iZXIpOyAvL0pQQjE5MDQzMCB1cGRhdGVkIGxhYmVsCmFsZXJ0KCJAQEBAIFNldHRpbmcgWF9kb2NUeXBlIHRvOiAiICsgZmF4VHlwZSk7CmFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIixmYXhUeXBlKTsgCmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX2ZheFR5cGVfX2MiLGZheFR5cGUpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX3NmU3RhY2tJZCIsIHNmSWQpOyAgIAphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsYXR0YWNoUGF0aCk7IAphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJJbmRleGVkIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp0cmFjayhkb2MsICJEb2MgSW5kZXhlZCAiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5yZWFkeX4pO3VwZGF0ZURFU3RhdHVzKH5pbmRleGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7CgppZiAoY2FzZUlkICYmIGNhc2VOdW1iZXIpIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyQofiNaUEFQRVJfX0Nhc2VfX2N+KS52YWwofiIgKyBjYXNlSWQgKyAifik7ICQofiNaUEFQRVJfX0Nhc2VfX2NfQ2FzZU51bWJlcn4pLnZhbCh+IiArIGNhc2VOdW1iZXIgKyAifik7ICIpOwp9CgoKaWYgKGNvbnRhY3RJZCAmJiBwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZSkgewogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICI7JCh+I1pQQVBFUl9fUGF0aWVudF9fY34pLnZhbCh+IiArIGNvbnRhY3RJZCArICJ+KTsgJCh+I1pQQVBFUl9fUGF0aWVudF9fY19OYW1lfikudmFsKH4iICsgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICJ+KTsgIik7Cn0KCi8qIGVuZCBvZiBydWxlICov"},"ordinal":7}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB191008 updated rule Sales Demo Org
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
        else arrOfPairs.push("Priority","Medium");
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
alert("#### zData.programName=*" +zData.programName+"* zData.PROGRAM_ZCHARTA=*"+zData.PROGRAM_ZCHARTA+"* zData.PROGRAM_ZPAPYRUS=*"+zData.PROGRAM_ZPAPYRUS+"* zData.PROGRAM_ZCARTA+*"+zData.PROGRAM_ZCARTA+"* zData.PROGRAM_TECHFIDERA=*"+zData.PROGRAM_TECFIDERA+"* zData.PROGRAM_TYSABRI=*"+zData.PROGRAM_TYSABRI); //JPB180808 Adding 2 DRUGS FOR prospect demo programName
                                                      
var classification = X(doc,"X_ZPAPER__Classification__c"); //PV190423 updated
 
if (zData.classification === zData.PROGRAM_ZCHARTA) {
    arrOfPairs.push(zp+"Priority__c", "Urgent"); 
}
else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {
    arrOfPairs.push(zp+"Priority__c", "Medium"); 
}
else if (zData.classification === zData.PROGRAM_ZCARTA) {
    arrOfPairs.push(zp+"Priority__c", "Critical"); 
}
else if (zData.classification === zData.PROGRAM_PALVEO) {
    arrOfPairs.push(zp+"Priority__c", "Special");  
}
else if (zData.classification === zData.PROGRAM_VINDICO) {
    arrOfPairs.push(zp+"Priority__c", "Standard");  
}
else {
    arrOfPairs.push(zp+"Priority__c", "Normal");
}
alert("#### ZPAPER__Classification__c ="+ zData.programName);
                                                                                     

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
