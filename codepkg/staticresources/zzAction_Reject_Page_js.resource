<!--
// Name: Reject Page
// Committer: judson.bruno@zpaper.com
// Update: JPB180712 added #50091; JPB180712 added #50091; JPB180712 added #50091; JPB180712 #50091; JPB180712 added #50091; JPB180712 added space between name; JPB180712 changed status
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2018-07-12 20:34:16","active":true,"button":"Reject","name":"Reject Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Reject","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgUmVqZWN0IFBhZ2UgUnVsZSBGaXJlZCBAQEAjIik7CnZhciBkcT0ifiI7CmZ1bmN0aW9uIGNvdW50UGFnZXMocGFnZVJhbmdlKSB7CiAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlLnNwbGl0KCIsIik7CiAgcmV0dXJuIHBhZ2VzLmxlbmd0aCArICIiOwp9Cgp2YXIgY2FzZUlkID0gWChkb2MsICJYX1pQQVBFUl9fQ2FzZV9fYyIpOwp2YXIgc3RhY2tJZCA9IFgoZG9jLCAiWF9zdGFjayIpOwp2YXIgc2ZTdGFja0lkID0gWChkb2MsICJYX3NmU3RhY2tJZCIpOwphbGVydCgiQEBAIHNmU3RhY2tJZCA9ICIgKyBzZlN0YWNrSWQpOwp2YXIgY29udGFjdElkID0gWChkb2MsICJYX1pQQVBFUl9fUGF0aWVudF9fYyIpOwp2YXIgcGF0aWVudElkPWNvbnRhY3RJZDsgLy9UT0RPCnZhciBwcm92aWRlcklkID0gWChkb2MsICJYX1pQQVBFUl9fUHJvdmlkZXJfX2MiKTsKdmFyIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKdmFyIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0xhc3ROYW1lX19jIik7CnZhciBwYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7CnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvOyAvL0pQQjE4MDcxMiBhZGRlZCAjNTAwOTEKdmFyIGRlbGl2ZXJlZEZyb20gPSBkb2MuZGVsaXZlcmVkRnJvbTsgLy9KUEIxODA3MTIgYWRkZWQgIzUwMDkxCgppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7Cgl2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIGNvbnRhY3RJZCk7CglwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBjb250YWN0Rmxkcyk7CglwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwp9CgovKiBDbGVhciB0aGUgdHJpZ2dlciB0aGF0IGludm9rZWQgdGhpcyBydWxlICovCi8vRVJTMTcwOTA5IHNlZSBYX3Jldmlld3Mgd29yayAKekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uKGRvYywiWF9idXR0b25BY3Rpb24iKTsKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwppZiAoIWluZGV4SW5pdGlhbGl6ZWQgfHwgMCA9PT0gaW5kZXhJbml0aWFsaXplZC5sZW5ndGgpIHsKCXN0YWNrSWQgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwoJc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7Cgl6RGF0YS5pbml0aWFsaXplU3RhY2soZG9jLHN0YWNrRm9sZGVyLCBkZWxpdmVyZWRUbywgc3RhY2tJZCk7Cn0KdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfcmVqZWN0ZWRQYWdlcyIpOwppZiAoY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICBjdXJJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzICs9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfcmVqZWN0ZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKdmFyIG5ld1NuaXBwZXRJRCA9IHNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJyZWplY3QiLCBwYWdlUmFuZ2UpOwovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSB6U1RBQ0sgU05JUFBFVCAqLwoKLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCnZhciBwYWdlQ291bnQgPSBjb3VudFBhZ2VzKHBhZ2VSYW5nZSk7CmFsZXJ0KCJAQEBAIHBhZ2VDb3VudCA9ICIgKyBwYWdlQ291bnQpOwoKdmFyIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTcwNjI2IG5vdyBpbiB0aGUgcGFja2FnZQphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOwphcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsZGVsaXZlcmVkVG8pOyAvL0VSUzE3MDYyOCBjYWxsZXIgaWQKYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkZWxpdmVyZWRGcm9tKTsgLy9KUEIxODA3MTIgYWRkZWQgIzUwMDkxCmFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVqZWN0ZWQiKTsgLy9FUlMxNzA3MzEgIzQwNTkzIC8vRVJTMTgwNjEyICM0NjA0MAphcnJPZlBhaXJzLnB1c2goenArIlBhcmVudF9fYyIsc2ZTdGFja0lkKTsgLy8vL0VSUzE4MDYxMiAjNDYwNDAgWlBBUEVSX19QYXJlbnRfX2MKdmFyIG5vdGVzID0gZG9jLmtiRGF0YS5jb21tZW50cyArICIiOyAgIC8vQ1JOMTgwNjE5IENhc2UgIzQ5NDM3IFNhdmUgYW55IGNvbW1lbnRzIChub3RlcykgaW50byB0aGUgTm90ZXNfX2MgZmllbGQgaW4gdGhlIHpTdGFjawppZiAobm90ZXMpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiTm90ZXNfX2MiLCBub3Rlcyk7Cn0KaWYgKHByb3ZpZGVySWQgJiYgcHJvdmlkZXJJZC5sZW5ndGggPiAwKSB7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvdmlkZXJfX2MiLCBwcm92aWRlcklkKTsKCS8vaWYgKGF0dGFjaFBhdGguaW5kZXhPZihwcm92aWRlcklkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitwcm92aWRlcklkOwp9CmlmIChwYXRpZW50SWQgJiYgcGF0aWVudElkLmxlbmd0aCA+IDApIHsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50X19jIiwgcGF0aWVudElkKTsKCS8vaWYgKGF0dGFjaFBhdGguaW5kZXhPZihwYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3BhdGllbnRJZDsKfQppZiAoY2FzZUlkICYmIGNhc2VJZC5sZW5ndGggPiAwKSB7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsIGNhc2VJZCk7Cn0gIC8vSlBCMTgwNzEyICM1MDA5MQp2YXIgelN0YWNrPXpwKyJ6U3RhY2tfX2MiOyAvLyJTdGFja19fYyIKdmFyIGZvcm1hdE5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpTdGFjaywgInpTdGFjayByZWplY3RlZCBvbiAiICsgZm9ybWF0Tm93LCBhcnJPZlBhaXJzKSArICIiOyAvL0VSUzE4MDYxMiAjNDYwNDAgSlBCMTgwNjE2IGFkZGVkIHogdG8gU3RhY2sKdmFyIGNoaWxkU3RhY2tOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgelN0YWNrLCAiTmFtZSIsIG51bGwsIHNmSWQpOyAvL0pQQjE4MDYxMyBhZGRlZCBjaGlsZHN0YWNrbnVtYmVyCgphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiWF9wYWdlcyIscGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJkYi1wYWdlcyIscGFnZUNvdW50KTsKaWYgKDE9PT0xKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcwogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCJSZWplY3RlZCIpOyAvL0pQQjE4MDcxMiBhZGRlZCAjNTAwOTEKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrIiBSZWplY3RlZCBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7Cn0KYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIHpEYXRhLnByb2dyYW1OYW1lICsgIiAtIFJlamVjdGVkIHpTdGFjayAiICsgY2hpbGRTdGFja051bWJlcik7IC8vSlBCMTgwNzExIHJlbW92ZWQgKyBjb21wYW55Q29kZSArICIgLSAiICsgc3RhY2tJZCBhZGRlZCBuZXcgU3BsaXQgelN0YWNrIGFuZCArIHpEYXRhLnByb2dyYW1OYW1lIC8vSlBCMTgwNzEyIGFkZGVkIHNwYWNlIGJldHdlZW4gbmFtZQp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENvbnRhY3QgcmVjb3JkIGlmIHJlcXVpcmVkICovCmFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBhIENvbnRhY3Q/IGNvbnRhY3RJZCA9ICIgKyBjb250YWN0SWQpOwppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CglhdHRhY2goZG9jLCAiUmVqZWN0ZWQtIiArIHN0YWNrSWQsIGNvbnRhY3RJZCk7Cn0KZWxzZSBpZiAocGF0aWVudEZpcnN0TmFtZSAmJiBwYXRpZW50Rmlyc3ROYW1lLmxlbmd0aCA+IDAgJiYgcGF0aWVudExhc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZS5sZW5ndGggPiAwICYmIHBhdGllbnRET0IgJiYgcGF0aWVudERPQi5sZW5ndGggPiAwKSB7Cgl2YXIgY3RjQXJyT2ZQYWlycyA9IFtdOwoJY3RjQXJyT2ZQYWlycy5wdXNoKCJGaXJzdE5hbWUiLCBwYXRpZW50Rmlyc3ROYW1lKTsKCWN0Y0Fyck9mUGFpcnMucHVzaCgiTGFzdE5hbWUiLCBwYXRpZW50TGFzdE5hbWUpOwoJY3RjQXJyT2ZQYWlycy5wdXNoKCJCaXJ0aERhdGUiLCBwYXRpZW50RE9CKTsKCWNvbnRhY3RJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDb250YWN0IiwgIlJlamVjdGVkLSIgKyBzdGFja0lkLCBjdGNBcnJPZlBhaXJzKTsKCWFsZXJ0KCJAQEBAQEBAIE5FVyBDT05UQUNUIENSRUFURUQgV0lUSCBJRDogIiArIGNvbnRhY3RJZCk7CgkvLyBjbGVhciBvdXQgdGhlICJOZXcgUGF0aWVudCIgZmllbGRzCglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19GaXJzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0xhc3ROYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19CaXJ0aGRhdGVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiTk9ORSIgKyBkcSArICIpOyAiKTsKCS8vIHNldCB0aGUgUGF0aWVudCBsb29rdXAgZmllbGRzCglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIGNvbnRhY3RJZCArIGRxICsgIik7ICIpOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fUGF0aWVudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyBkcSArICIpOyAiKTsKfQovL0NSTjE3MDIwOCBJZiB3ZSBoYXZlIGEgQ29udGFjdCBhbmQgdGhlIHVzZXIgc2VudCBhIFByb3ZpZGVyLCBhZGQgdGhlIHByb3ZpZGVyIHRvIHRoZSBDb250YWN0Lgp2YXIgcHJvdmlkZXJGaXJzdE5hbWUgPSAiIjsKdmFyIHByb3ZpZGVyTGFzdE5hbWUgPSAiIjsKdmFyIHByb3ZpZGVyID0gWChkb2MsICJYX1ByaW1hcnlfQ2FyZV9QaHlzaWNpYW5fX2MiKTsKaWYgKHByb3ZpZGVyICYmIHByb3ZpZGVyLmxlbmd0aCA+IDApIHsKCXZhciBwcm92aWRlckZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIHByb3ZpZGVyKTsKCXByb3ZpZGVyRmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBwcm92aWRlckZsZHMpOwoJcHJvdmlkZXJMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBwcm92aWRlckZsZHMpOwp9CmlmICgxPT09MCkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgbm90IHN0YW5kYXJkCi8qCmlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDAgJiYgcHJvdmlkZXIgJiYgcHJvdmlkZXIubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycyA9IFtdOwoJYXJyT2ZQYWlycy5wdXNoKCJQcmltYXJ5X0NhcmVfUGh5c2ljaWFuX19jIiwgcHJvdmlkZXIpOwoJdXBkYXRlU0ZSZWNvcmQoZG9jLCJDb250YWN0Iixjb250YWN0SWQsYXJyT2ZQYWlycyk7Cn0gKi8KfQoKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJOZXciKTsKYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCAiRmF4Iik7CmFyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLCBkb2Mua2JEYXRhLmNvbW1lbnRzKTsKYXJyT2ZQYWlycy5wdXNoKCJTdWJqZWN0IiwgIkRvY3VtZW50IFJlamVjdGVkIik7CmlmICgxPT09MCkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgbm90IHN0YW5kYXJkCi8qICAgIGFyck9mUGFpcnMucHVzaCgiTm90ZXNfX2MiLCBkb2Mua2JEYXRhLmNvbW1lbnRzKTsKICAgIGFyck9mUGFpcnMucHVzaCgiUHJvdmlkZXJfRmlyc3RfTmFtZV9fYyIsIHByb3ZpZGVyRmlyc3ROYW1lKTsKICAgIGFyck9mUGFpcnMucHVzaCgiUHJvdmlkZXJfTGFzdF9OYW1lX19jIiwgcHJvdmlkZXJMYXN0TmFtZSk7Ki8KfQphbGVydCgiQEBAQEBAQCBTRVRUSU5HIENvbnRhY3RJZCBvbiBDYXNlIGNyZWF0aW9uPyAiICsgY29udGFjdElkKTsKaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCBjb250YWN0SWQpOwp9CmFsZXJ0KCJAQEBAIENyZWF0aW5nIE5ldyBDYXNlIGZvciBTbmlwcGV0OiAiICsgbmV3U25pcHBldElEICsgIiwgZG9jLmRiSUQgPSAiICsgZG9jLmRiSUQpOwpjYXNlSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ2FzZSIsICJSZWplY3RlZC0iICsgKChwYXRpZW50Rmlyc3ROYW1lP3BhdGllbnRGaXJzdE5hbWU6IiIpICsgKHBhdGllbnRMYXN0TmFtZT9wYXRpZW50TGFzdE5hbWU6IiIpICsgIi0iKSArIHN0YWNrSWQsIGFyck9mUGFpcnMpOwphbGVydCgiQEBAQEAgY2FzZUlkIGZvciBSZWplY3RvbjogIiArIGNhc2VJZCk7CmlmIChjYXNlSWQgJiYgY2FzZUlkLmxlbmd0aCA+IDApIHsKCWFyck9mUGFpcnMgPSBbXTsKCWlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKCQlhcnJPZlBhaXJzLnB1c2goIldob0lkIiwgY29udGFjdElkKTsKCX0KCWFyck9mUGFpcnMucHVzaCgiV2hhdElkIiwgY2FzZUlkKTsKCWFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsICJJbmNvbWluZyBEb2N1bWVudCBSZWplY3RlZCIpOwoJYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCAiTm90IFN0YXJ0ZWQiKTsgLy9KUEIxODA3MTIgY2hhbmdlZCBzdGF0dXMKCXZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIlRhc2siLCAiUmVqZWN0ZWQtIiArICgocGF0aWVudEZpcnN0TmFtZT9wYXRpZW50Rmlyc3ROYW1lOiIiKSArIChwYXRpZW50TGFzdE5hbWU/cGF0aWVudExhc3ROYW1lOiIiKSArICItIikgKyBzdGFja0lkLCBhcnJPZlBhaXJzKTsKfQoKLyogUGxhY2UgdGhlIHNwbGl0IGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgcmVqZWN0ZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOy8vCi8vbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CnVubG9ja0RvY3VtZW50KGRvYyk7Cgp0cmFjayhkb2MsICJyZWplY3RlZCIsIGRvYy5CQVRFUywgcGFnZUNvdW50KTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJuZXh0UGFnZSh+cmVqZWN0ZWR+KTt1cGRhdGVERVN0YXR1cyh+cmVqZWN0ZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKCi8qIGVuZCBvZiBydWxlICovCgo="},"ordinal":5}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Reject Page Rule Fired @@@#");
var dq="~";
function countPages(pageRange) {
  var pages = pageRange.split(",");
  return pages.length + "";
}

var caseId = X(doc, "X_ZPAPER__Case__c");
var stackId = X(doc, "X_stack");
var sfStackId = X(doc, "X_sfStackId");
alert("@@@ sfStackId = " + sfStackId);
var contactId = X(doc, "X_ZPAPER__Patient__c");
var patientId=contactId; //TODO
var providerId = X(doc, "X_ZPAPER__Provider__c");
var patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
var patientLastName = X(doc, "X_ZPAPER__LastName__c");
var patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
var stackFolder = stackId + "-STACK";
var deliveredTo = doc.deliveredTo; //JPB180712 added #50091
var deliveredFrom = doc.deliveredFrom; //JPB180712 added #50091

if (contactId && contactId.length > 0) {
	var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, contactId);
	patientFirstName = X(doc, "FirstName", contactFlds);
	patientLastName = X(doc, "LastName", contactFlds);
}

/* Clear the trigger that invoked this rule */
//ERS170909 see X_reviews work 
zData.clearTriggerCondition(doc,"X_buttonAction");
zData.setbrandprogram(doc);
var indexInitialized = X(doc,"X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
	stackId = new Date().getTime() + "";
	stackFolder = stackId + "-STACK";
	zData.initializeStack(doc,stackFolder, deliveredTo, stackId);
}
var curIndexPages = X(doc, "X_rejectedPages");
if (curIndexPages && curIndexPages.length > 0) {
  curIndexPages += ",";
}
curIndexPages += X(doc, "X_idxPages");
var arrOfPairs = [];
arrOfPairs.push("X_rejectedPages", curIndexPages);
updateDB(doc,arrOfPairs);

var pageRange = X(doc,"X_idxPages");
var newSnippetID = splitDocumentForIndex(doc, "reject", pageRange);
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE zSTACK SNIPPET */

/* CRN160825 Set the page count so that it does not have the parent page count */
var pageCount = countPages(pageRange);
alert("@@@@ pageCount = " + pageCount);

var zp="ZPAPER__"; //ERS170626 now in the package
arrOfPairs = [];
arrOfPairs.push(zp+"Program_Name__c", zData.programName);
arrOfPairs.push(zp+"sentFaxTo__c",deliveredTo); //ERS170628 caller id
arrOfPairs.push(zp+"From__c",deliveredFrom); //JPB180712 added #50091
arrOfPairs.push(zp+"Stage__c", "Rejected"); //ERS170731 #40593 //ERS180612 #46040
arrOfPairs.push(zp+"Parent__c",sfStackId); ////ERS180612 #46040 ZPAPER__Parent__c
var notes = doc.kbData.comments + "";   //CRN180619 Case #49437 Save any comments (notes) into the Notes__c field in the zStack
if (notes) {
    arrOfPairs.push("Notes__c", notes);
}
if (providerId && providerId.length > 0) {
	arrOfPairs.push("ZPAPER__Provider__c", providerId);
	//if (attachPath.indexOf(providerId)==-1) attachPath+=","+providerId;
}
if (patientId && patientId.length > 0) {
	arrOfPairs.push("ZPAPER__Patient__c", patientId);
	//if (attachPath.indexOf(patientId)==-1) attachPath+=","+patientId;
}
if (caseId && caseId.length > 0) {
	arrOfPairs.push("ZPAPER__Case__c", caseId);
}  //JPB180712 #50091
var zStack=zp+"zStack__c"; //"Stack__c"
var formatNow=getCurDateAndTime(doc);
var sfId = createAndAttach(doc, zStack, "zStack rejected on " + formatNow, arrOfPairs) + ""; //ERS180612 #46040 JPB180616 added z to Stack
var childStackNumber = getSFField(doc, zStack, "Name", null, sfId); //JPB180613 added childstacknumber

arrOfPairs = [];
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
if (1===1) { //ERS170909 #40592 for zDocSet statuses
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus","Rejected"); //JPB180712 added #50091
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+" Rejected by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
    arrOfPairs.push("X_buttonAction","");
}
arrOfPairs.push("db-label", patientFirstName + " " + patientLastName + " - " + zData.programName + " - Rejected zStack " + childStackNumber); //JPB180711 removed + companyCode + " - " + stackId added new Split zStack and + zData.programName //JPB180712 added space between name
updateDB(doc,arrOfPairs);

/* Attach the split document to Contact record if required */
alert("@@@@ attaching to a Contact? contactId = " + contactId);
if (contactId && contactId.length > 0) {
	attach(doc, "Rejected-" + stackId, contactId);
}
else if (patientFirstName && patientFirstName.length > 0 && patientLastName && patientLastName.length > 0 && patientDOB && patientDOB.length > 0) {
	var ctcArrOfPairs = [];
	ctcArrOfPairs.push("FirstName", patientFirstName);
	ctcArrOfPairs.push("LastName", patientLastName);
	ctcArrOfPairs.push("BirthDate", patientDOB);
	contactId = createAndAttach(doc, "Contact", "Rejected-" + stackId, ctcArrOfPairs);
	alert("@@@@@@@ NEW CONTACT CREATED WITH ID: " + contactId);
	// clear out the "New Patient" fields
	addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__FirstName__c" + dq + ").val(" + dq + "" + dq + "); ");
	addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__LastName__c" + dq + ").val(" + dq + "" + dq + "); ");
	addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Birthdate__c" + dq + ").val(" + dq + "" + dq + "); ");
	addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Birthdate__c_readable" + dq + ").val(" + dq + "NONE" + dq + "); ");
	// set the Patient lookup fields
	addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c" + dq + ").val(" + dq + contactId + dq + "); ");
	addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c_Name" + dq + ").val(" + dq + patientFirstName + " " + patientLastName + dq + "); ");
}
//CRN170208 If we have a Contact and the user sent a Provider, add the provider to the Contact.
var providerFirstName = "";
var providerLastName = "";
var provider = X(doc, "X_Primary_Care_Physician__c");
if (provider && provider.length > 0) {
	var providerFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, provider);
	providerFirstName = X(doc, "FirstName", providerFlds);
	providerLastName = X(doc, "LastName", providerFlds);
}
if (1===0) { //ERS170909 #40592 not standard
/*
if (contactId && contactId.length > 0 && provider && provider.length > 0) {
	arrOfPairs = [];
	arrOfPairs.push("Primary_Care_Physician__c", provider);
	updateSFRecord(doc,"Contact",contactId,arrOfPairs);
} */
}

arrOfPairs = [];
arrOfPairs.push("Status", "New");
arrOfPairs.push("Origin", "Fax");
arrOfPairs.push("Description", doc.kbData.comments);
arrOfPairs.push("Subject", "Document Rejected");
if (1===0) { //ERS170909 #40592 not standard
/*    arrOfPairs.push("Notes__c", doc.kbData.comments);
    arrOfPairs.push("Provider_First_Name__c", providerFirstName);
    arrOfPairs.push("Provider_Last_Name__c", providerLastName);*/
}
alert("@@@@@@@ SETTING ContactId on Case creation? " + contactId);
if (contactId && contactId.length > 0) {
	arrOfPairs.push("ContactId", contactId);
}
alert("@@@@ Creating New Case for Snippet: " + newSnippetID + ", doc.dbID = " + doc.dbID);
caseId = createAndAttach(doc, "Case", "Rejected-" + ((patientFirstName?patientFirstName:"") + (patientLastName?patientLastName:"") + "-") + stackId, arrOfPairs);
alert("@@@@@ caseId for Rejecton: " + caseId);
if (caseId && caseId.length > 0) {
	arrOfPairs = [];
	if (contactId && contactId.length > 0) {
		arrOfPairs.push("WhoId", contactId);
	}
	arrOfPairs.push("WhatId", caseId);
	arrOfPairs.push("Subject", "Incoming Document Rejected");
	arrOfPairs.push("Status", "Not Started"); //JPB180712 changed status
	var sfId = createAndAttach(doc, "Task", "Rejected-" + ((patientFirstName?patientFirstName:"") + (patientLastName?patientLastName:"") + "-") + stackId, arrOfPairs);
}

/* Place the split document into the stack folder */
alert("@@@@@@ Moving the rejected pages document into the final stack folder: " + stackFolder);//
//moveDocument(doc,"",stackFolder);
unlockDocument(doc);

track(doc, "rejected", doc.BATES, pageCount);
addPostExecutionScript(doc, "nextPage(~rejected~);updateDEStatus(~rejected:" + pageRange + "~);");

/* end of rule */


//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
