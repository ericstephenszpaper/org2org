<!--
// Name: Reject Page
// Committer: eric.stephens@zpaper.com
// Update: ERS190326 #57472 missing zData. and needs doc
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-03-26 18:20:15","active":true,"button":"Reject","name":"Reject Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Reject","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTAzMTkgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwphbGVydCgiQEBAQCBSZWplY3QgUGFnZSBSdWxlIEZpcmVkIEBAQCMiKTsKdmFyIGRxPSJ+IjsKZnVuY3Rpb24gY291bnRQYWdlcyhwYWdlUmFuZ2UpIHsKICB2YXIgcGFnZXMgPSBwYWdlUmFuZ2Uuc3BsaXQoIiwiKTsKICByZXR1cm4gcGFnZXMubGVuZ3RoICsgIiI7Cn0KCnZhciBjYXNlSWQgPSBYKGRvYywgIlhfWlBBUEVSX19DYXNlX19jIik7CnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7CnZhciBzZlN0YWNrSWQgPSBYKGRvYywgIlhfc2ZTdGFja0lkIik7CmFsZXJ0KCJAQEAgc2ZTdGFja0lkID0gIiArIHNmU3RhY2tJZCk7CnZhciBjb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7CnZhciBwYXRpZW50SWQ9Y29udGFjdElkOyAvL1RPRE8KdmFyIHByb3ZpZGVySWQgPSBYKGRvYywgIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOwp2YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwp2YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKdmFyIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwp2YXIgZGVsaXZlcmVkVG8gPSBkb2MuZGVsaXZlcmVkVG87IAp2YXIgZGVsaXZlcmVkRnJvbSA9IGRvYy5kZWxpdmVyZWRGcm9tOwoKaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewoJdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCBjb250YWN0SWQpOwoJcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwoJcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKfQoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwoKekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uKGRvYywiWF9idXR0b25BY3Rpb24iKTsKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwppZiAoIWluZGV4SW5pdGlhbGl6ZWQgfHwgMCA9PT0gaW5kZXhJbml0aWFsaXplZC5sZW5ndGgpIHsKCXN0YWNrSWQgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwoJc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7Cgl6RGF0YS5pbml0aWFsaXplU3RhY2soZG9jLHN0YWNrRm9sZGVyLCBkZWxpdmVyZWRUbywgc3RhY2tJZCk7Cn0KdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfcmVqZWN0ZWRQYWdlcyIpOwppZiAoY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICBjdXJJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzICs9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfcmVqZWN0ZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cgp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKdmFyIG5ld1NuaXBwZXRJRCA9IHNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJyZWplY3QiLCBwYWdlUmFuZ2UpOwovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSB6U1RBQ0sgU05JUFBFVCAqLwoKLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOyAvL0VSUzE5MDMyNiAjNTc0NzIgbWlzc2luZyB6RGF0YS4gYW5kIG5lZWRzIGRvYwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKCnZhciB6cD0iWlBBUEVSX18iOyAKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJzZW50RmF4VG9fX2MiLGRlbGl2ZXJlZFRvKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiRnJvbV9fYyIsZGVsaXZlcmVkRnJvbSk7IAphcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlamVjdGVkIik7IAphcnJPZlBhaXJzLnB1c2goenArIlBhcmVudF9fYyIsc2ZTdGFja0lkKTsgCnZhciBub3RlcyA9IGRvYy5rYkRhdGEuY29tbWVudHMgKyAiIjsgICAKaWYgKG5vdGVzKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIk5vdGVzX19jIiwgbm90ZXMpOwp9CmlmIChwcm92aWRlcklkICYmIHByb3ZpZGVySWQubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1Byb3ZpZGVyX19jIiwgcHJvdmlkZXJJZCk7CgkvL2lmIChhdHRhY2hQYXRoLmluZGV4T2YocHJvdmlkZXJJZCk9PS0xKSBhdHRhY2hQYXRoKz0iLCIrcHJvdmlkZXJJZDsKfQppZiAocGF0aWVudElkICYmIHBhdGllbnRJZC5sZW5ndGggPiAwKSB7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudF9fYyIsIHBhdGllbnRJZCk7CgkvL2lmIChhdHRhY2hQYXRoLmluZGV4T2YocGF0aWVudElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitwYXRpZW50SWQ7Cn0KaWYgKGNhc2VJZCAmJiBjYXNlSWQubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0Nhc2VfX2MiLCBjYXNlSWQpOwp9ICAvLwp2YXIgelN0YWNrPXpwKyJ6U3RhY2tfX2MiOyAKdmFyIGZvcm1hdE5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpTdGFjaywgInpTdGFjayByZWplY3RlZCBvbiAiICsgZm9ybWF0Tm93LCBhcnJPZlBhaXJzKSArICIiOyAKdmFyIGNoaWxkU3RhY2tOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgelN0YWNrLCAiTmFtZSIsIG51bGwsIHNmSWQpOyAKCmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwppZiAoMT09PTEpIHsgCiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsIlJlamVjdGVkIik7IAogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKSsiIFJlamVjdGVkIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKfQphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICIgLSAiICsgekRhdGEucHJvZ3JhbU5hbWUgKyAiIC0gUmVqZWN0ZWQgelN0YWNrICIgKyBjaGlsZFN0YWNrTnVtYmVyKTsgCnVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKCi8qIEF0dGFjaCB0aGUgc3BsaXQgZG9jdW1lbnQgdG8gQ29udGFjdCByZWNvcmQgaWYgcmVxdWlyZWQgKi8KYWxlcnQoIkBAQEAgYXR0YWNoaW5nIHRvIGEgQ29udGFjdD8gY29udGFjdElkID0gIiArIGNvbnRhY3RJZCk7CmlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKCWF0dGFjaChkb2MsICJSZWplY3RlZC0iICsgc3RhY2tJZCwgY29udGFjdElkKTsKfQplbHNlIGlmIChwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRGaXJzdE5hbWUubGVuZ3RoID4gMCAmJiBwYXRpZW50TGFzdE5hbWUgJiYgcGF0aWVudExhc3ROYW1lLmxlbmd0aCA+IDAgJiYgcGF0aWVudERPQiAmJiBwYXRpZW50RE9CLmxlbmd0aCA+IDApIHsKCXZhciBjdGNBcnJPZlBhaXJzID0gW107CgljdGNBcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHBhdGllbnRGaXJzdE5hbWUpOwoJY3RjQXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHBhdGllbnRMYXN0TmFtZSk7CgljdGNBcnJPZlBhaXJzLnB1c2goIkJpcnRoRGF0ZSIsIHBhdGllbnRET0IpOwoJY29udGFjdElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCAiUmVqZWN0ZWQtIiArIHN0YWNrSWQsIGN0Y0Fyck9mUGFpcnMpOwoJYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgY29udGFjdElkKTsKCS8vIGNsZWFyIG91dCB0aGUgIk5ldyBQYXRpZW50IiBmaWVsZHMKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0ZpcnN0TmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fTGFzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQmlydGhkYXRlX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwoJLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgY29udGFjdElkICsgZHEgKyAiKTsgIik7CglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArIGRxICsgIik7ICIpOwp9Cgp2YXIgcHJvdmlkZXJGaXJzdE5hbWUgPSAiIjsKdmFyIHByb3ZpZGVyTGFzdE5hbWUgPSAiIjsKdmFyIHByb3ZpZGVyID0gWChkb2MsICJYX1ByaW1hcnlfQ2FyZV9QaHlzaWNpYW5fX2MiKTsKaWYgKHByb3ZpZGVyICYmIHByb3ZpZGVyLmxlbmd0aCA+IDApIHsKCXZhciBwcm92aWRlckZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIHByb3ZpZGVyKTsKCXByb3ZpZGVyRmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBwcm92aWRlckZsZHMpOwoJcHJvdmlkZXJMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBwcm92aWRlckZsZHMpOwp9CmlmICgxPT09MCkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgbm90IHN0YW5kYXJkCi8qCmlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDAgJiYgcHJvdmlkZXIgJiYgcHJvdmlkZXIubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycyA9IFtdOwoJYXJyT2ZQYWlycy5wdXNoKCJQcmltYXJ5X0NhcmVfUGh5c2ljaWFuX19jIiwgcHJvdmlkZXIpOwoJdXBkYXRlU0ZSZWNvcmQoZG9jLCJDb250YWN0Iixjb250YWN0SWQsYXJyT2ZQYWlycyk7Cn0gKi8KfQoKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJOZXciKTsKYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCAiRmF4Iik7CmFyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLCBkb2Mua2JEYXRhLmNvbW1lbnRzKTsKYXJyT2ZQYWlycy5wdXNoKCJTdWJqZWN0IiwgIkRvY3VtZW50IFJlamVjdGVkIik7CmlmICgxPT09MCkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgbm90IHN0YW5kYXJkCi8qICAgIGFyck9mUGFpcnMucHVzaCgiTm90ZXNfX2MiLCBkb2Mua2JEYXRhLmNvbW1lbnRzKTsKICAgIGFyck9mUGFpcnMucHVzaCgiUHJvdmlkZXJfRmlyc3RfTmFtZV9fYyIsIHByb3ZpZGVyRmlyc3ROYW1lKTsKICAgIGFyck9mUGFpcnMucHVzaCgiUHJvdmlkZXJfTGFzdF9OYW1lX19jIiwgcHJvdmlkZXJMYXN0TmFtZSk7Ki8KfQphbGVydCgiQEBAQEBAQCBTRVRUSU5HIENvbnRhY3RJZCBvbiBDYXNlIGNyZWF0aW9uPyAiICsgY29udGFjdElkKTsKaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycy5wdXNoKCJDb250YWN0SWQiLCBjb250YWN0SWQpOwp9CmFsZXJ0KCJAQEBAIENyZWF0aW5nIE5ldyBDYXNlIGZvciBTbmlwcGV0OiAiICsgbmV3U25pcHBldElEICsgIiwgZG9jLmRiSUQgPSAiICsgZG9jLmRiSUQpOwpjYXNlSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ2FzZSIsICJSZWplY3RlZC0iICsgKChwYXRpZW50Rmlyc3ROYW1lP3BhdGllbnRGaXJzdE5hbWU6IiIpICsgKHBhdGllbnRMYXN0TmFtZT9wYXRpZW50TGFzdE5hbWU6IiIpICsgIi0iKSArIHN0YWNrSWQsIGFyck9mUGFpcnMpOwphbGVydCgiQEBAQEAgY2FzZUlkIGZvciBSZWplY3RvbjogIiArIGNhc2VJZCk7CmlmIChjYXNlSWQgJiYgY2FzZUlkLmxlbmd0aCA+IDApIHsKCWFyck9mUGFpcnMgPSBbXTsKCWlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKCQlhcnJPZlBhaXJzLnB1c2goIldob0lkIiwgY29udGFjdElkKTsKCX0KCWFyck9mUGFpcnMucHVzaCgiV2hhdElkIiwgY2FzZUlkKTsKCWFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsICJJbmNvbWluZyBEb2N1bWVudCBSZWplY3RlZCIpOwoJYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCAiTm90IFN0YXJ0ZWQiKTsgCgl2YXIgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJUYXNrIiwgIlJlamVjdGVkLSIgKyAoKHBhdGllbnRGaXJzdE5hbWU/cGF0aWVudEZpcnN0TmFtZToiIikgKyAocGF0aWVudExhc3ROYW1lP3BhdGllbnRMYXN0TmFtZToiIikgKyAiLSIpICsgc3RhY2tJZCwgYXJyT2ZQYWlycyk7Cn0KCi8qIFBsYWNlIHRoZSBzcGxpdCBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXIgKi8KYWxlcnQoIkBAQEBAQCBNb3ZpbmcgdGhlIHJlamVjdGVkIHBhZ2VzIGRvY3VtZW50IGludG8gdGhlIGZpbmFsIHN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsvLwovL21vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwp1bmxvY2tEb2N1bWVudChkb2MpOwoKdHJhY2soZG9jLCAicmVqZWN0ZWQiLCBkb2MuQkFURVMsIHBhZ2VDb3VudCk7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibmV4dFBhZ2UofnJlamVjdGVkfik7dXBkYXRlREVTdGF0dXMofnJlamVjdGVkOiIgKyBwYWdlUmFuZ2UgKyAifik7Iik7CgovKiBlbmQgb2YgcnVsZSAqLwoK"},"ordinal":8}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190319 updated rule for Sales Demo Org
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
var deliveredTo = doc.deliveredTo; 
var deliveredFrom = doc.deliveredFrom;

if (contactId && contactId.length > 0) {
	var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, contactId);
	patientFirstName = X(doc, "FirstName", contactFlds);
	patientLastName = X(doc, "LastName", contactFlds);
}

/* Clear the trigger that invoked this rule */

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
var pageCount = zData.countPages(doc,pageRange); //ERS190326 #57472 missing zData. and needs doc
alert("@@@@ pageCount = " + pageCount);

var zp="ZPAPER__"; 
arrOfPairs = [];
arrOfPairs.push(zp+"Program_Name__c", zData.programName);
arrOfPairs.push(zp+"sentFaxTo__c",deliveredTo); 
arrOfPairs.push(zp+"From__c",deliveredFrom); 
arrOfPairs.push(zp+"Stage__c", "Rejected"); 
arrOfPairs.push(zp+"Parent__c",sfStackId); 
var notes = doc.kbData.comments + "";   
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
}  //
var zStack=zp+"zStack__c"; 
var formatNow=getCurDateAndTime(doc);
var sfId = createAndAttach(doc, zStack, "zStack rejected on " + formatNow, arrOfPairs) + ""; 
var childStackNumber = getSFField(doc, zStack, "Name", null, sfId); 

arrOfPairs = [];
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
if (1===1) { 
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus","Rejected"); 
    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+" Rejected by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); 
    arrOfPairs.push("X_buttonAction","");
}
arrOfPairs.push("db-label", patientFirstName + " " + patientLastName + " - " + zData.programName + " - Rejected zStack " + childStackNumber); 
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
	arrOfPairs.push("Status", "Not Started"); 
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
