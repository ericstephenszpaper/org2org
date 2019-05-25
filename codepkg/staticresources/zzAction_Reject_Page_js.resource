<!--
// Name: Reject Page
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: updated
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-05-15 18:50:28","active":true,"button":"Reject","name":"Reject Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Reject","operation":"equals"}]},"consequence":{"doit":"Ly9KUEIxOTA1MDYgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwphbGVydCgiQEBAQCBSZWplY3QgUGFnZSBSdWxlIEZpcmVkIEBAQCMiKTsKdmFyIGRxPSJ+IjsKZnVuY3Rpb24gY291bnRQYWdlcyhwYWdlUmFuZ2UpIHsKICB2YXIgcGFnZXMgPSBwYWdlUmFuZ2Uuc3BsaXQoIiwiKTsKICByZXR1cm4gcGFnZXMubGVuZ3RoICsgIiI7Cn0KLy9FUlMxOTA1MDQgdGVzdGluZyBmb3IgenpBY3Rpb24gc3RhdGljIHJlc291cmNlcwoKdmFyIGNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsKdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCAiWF9zZlN0YWNrSWQiKTsKYWxlcnQoIkBAQCBzZlN0YWNrSWQgPSAiICsgc2ZTdGFja0lkKTsKdmFyIGNvbnRhY3RJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRfX2MiKTsKdmFyIHBhdGllbnRJZD1jb250YWN0SWQ7IC8vVE9ETwp2YXIgcHJvdmlkZXJJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1Byb3ZpZGVyX19jIik7CnZhciBwYXRpZW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CnZhciBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwp2YXIgcGF0aWVudERPQiA9IFgoZG9jLCAiWF9aUEFQRVJfX0JpcnRoZGF0ZV9fYyIpOwp2YXIgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CnZhciBkZWxpdmVyZWRUbyA9IGRvYy5kZWxpdmVyZWRUbzsgCnZhciBkZWxpdmVyZWRGcm9tID0gZG9jLmRlbGl2ZXJlZEZyb207CnZhciBmYXhUeXBlID0gWChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOwp2YXIgc2ZVc2VySUQgPSBkb2Mua2JEYXRhLnNmVXNlcklEOyAKaWYoIXNmVXNlcklEKXsKICAgIHNmVXNlcklEPSBnZXRTRkZpZWxkKGRvYywgIlVzZXIiLCJJZCIsInVzZXJuYW1lPSciK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiJyIpOwp9CmFsZXJ0KCJQVjE5MDQxNSBzZlVzZXJJRCA6ICIgK3NmVXNlcklEKTsKaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewogICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCBjb250YWN0SWQpOwogICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKfQoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwoKekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uKGRvYywiWF9idXR0b25BY3Rpb24iKTsKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsIlhfaW5kZXhJbml0aWFsaXplZCIpOwppZiAoIWluZGV4SW5pdGlhbGl6ZWQgfHwgMCA9PT0gaW5kZXhJbml0aWFsaXplZC5sZW5ndGgpIHsKICAgIHN0YWNrSWQgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7CiAgICB6RGF0YS5pbml0aWFsaXplU3RhY2soZG9jLHN0YWNrRm9sZGVyLCBkZWxpdmVyZWRUbywgc3RhY2tJZCk7Cn0KdmFyIGN1ckluZGV4UGFnZXMgPSBYKGRvYywgIlhfcmVqZWN0ZWRQYWdlcyIpOwppZiAoY3VySW5kZXhQYWdlcyAmJiBjdXJJbmRleFBhZ2VzLmxlbmd0aCA+IDApIHsKICBjdXJJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzICs9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwp2YXIgYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfcmVqZWN0ZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCJSZWplY3RlZCIpOwphcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsZmF4VHlwZSk7IAphbGVydCgiQEBAQCBQYXJlbnQgWF9aUEFQRVJfX2ZheFR5cGVfX2MgPSAiICsgZmF4VHlwZSk7Ci8vdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CnZhciBuZXdTbmlwcGV0SUQgPSBzcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAicmVqZWN0IiwgcGFnZVJhbmdlLGFyck9mUGFpcnMpOwovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSB6U1RBQ0sgU05JUFBFVCAqLwoKLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOyAvL0VSUzE5MDMyNiAjNTc0NzIgbWlzc2luZyB6RGF0YS4gYW5kIG5lZWRzIGRvYwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKCnZhciBjaGFubmVsPSJGYXgiOyAvL1B2MTkwNDE2IHVwZGF0ZWQgZm9yIGNhc2UgdHlwZQppZiAoZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpPi0xIHx8IGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIi4iKT4tMSkge2NoYW5uZWw9IkVtYWlsIjt9IAplbHNlIGlmIChpc05hTihkb2MuZGVsaXZlcmVkRnJvbSkpIHtjaGFubmVsPSJTY2FuIjt9IAoKdmFyIHpwPSJaUEFQRVJfXyI7IAphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOwphcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsZGVsaXZlcmVkVG8pOyAKYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkZWxpdmVyZWRGcm9tKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiUmVqZWN0ZWQiKTsgCmFyck9mUGFpcnMucHVzaCh6cCsiUGFyZW50X19jIixzZlN0YWNrSWQpOwphcnJPZlBhaXJzLnB1c2goenArIkNoYW5uZWxfX2MiLGNoYW5uZWwpOwoKdmFyIG5vdGVzID0gZG9jLmtiRGF0YS5jb21tZW50cyArICIiOyAgIAppZiAobm90ZXMpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiTm90ZXNfX2MiLCBub3Rlcyk7Cn0KaWYgKHByb3ZpZGVySWQgJiYgcHJvdmlkZXJJZC5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvdmlkZXJfX2MiLCBwcm92aWRlcklkKTsKICAgIC8vaWYgKGF0dGFjaFBhdGguaW5kZXhPZihwcm92aWRlcklkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitwcm92aWRlcklkOwp9CmlmIChwYXRpZW50SWQgJiYgcGF0aWVudElkLmxlbmd0aCA+IDApIHsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50X19jIiwgcGF0aWVudElkKTsKICAgIC8vaWYgKGF0dGFjaFBhdGguaW5kZXhPZihwYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3BhdGllbnRJZDsKfQppZiAoY2FzZUlkICYmIGNhc2VJZC5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsIGNhc2VJZCk7Cn0gIAphcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsZmF4VHlwZSk7IAphcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19mYXhUeXBlX19jIixmYXhUeXBlLnRyaW0oKSk7CmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX1ByaW9yaXR5X19jIiwgIkltbWVkaWF0ZSIpOwoKekRhdGEucHJvZ3JhbU5hbWUgPSBYKGRvYywiWF9aUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIik7IAphcnJPZlBhaXJzLnB1c2goenArIkNsYXNzaWZpY2F0aW9uX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOwphcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHNmVXNlcklEKTsgIC8vVWRhdGVkIGZvciByZW1vdGUgdXNlciBQVjE5MDQyMAphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIlJlamVjdGVkIik7IC8vUFYxOTA0MjIgVXBkYXRlZCBmb3IgaW5jb21pbmcgc3RhdHVzIHRvIGJlIFJlamVjdGVkCnZhciB6U3RhY2s9enArInpTdGFja19fYyI7IAp2YXIgZm9ybWF0Tm93PWdldEN1ckRhdGVBbmRUaW1lKGRvYyk7CnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCAiRG9jdW1lbnQgUmVqZWN0ZWQgb24gIiArIGZvcm1hdE5vdywgYXJyT2ZQYWlycykgKyAiIjsgLy9KUEIxOTA0MTkgY2hhbmdlZCBsYWJlbAp2YXIgY2hpbGRTdGFja051bWJlciA9IGdldFNGRmllbGQoZG9jLCB6U3RhY2ssICJOYW1lIiwgbnVsbCwgc2ZJZCk7IAp2YXIgY2hpbGRTdGFja0lkID0gc2ZJZDsKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiZGItcGFnZXMiLHBhZ2VDb3VudCk7CmlmICgxPT09MSkgeyAKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwiUmVqZWN0ZWQiKTsgCiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YXR1c19fYyIsICJSZWplY3RlZCIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCJSZWplY3RlZCBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy8gUFYxOTA0MTcgdXBkYXRlZCBmb3IgZG9jIHNldCBjb21wb25lbnQgY2hlY2sgYm94CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19mYXhUeXBlX19jIixmYXhUeXBlKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsKfQphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICIgLSAiICsgekRhdGEucHJvZ3JhbU5hbWUgKyAiICIrIHpEYXRhLmRvY3VtZW50VHlwZU1hcFtmYXhUeXBlXSArIiAtIERvY3VtZW50ICIgKyBjaGlsZFN0YWNrTnVtYmVyKTsgLy9KUEIxOTA0MTkgY2hhbmdlZCBsYWJlbAp1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CgphdHRhY2goZG9jLCAiUmVqZWN0ZWQtIiArc3RhY2tJZCwgc2ZTdGFja0lkKTsgLy8gUFYxOTA0MTggdXBkYXRlZCB0byB1cGRhdGUgZG9jIG9uIGRvYyBzZXQgY29tcG9uZW50CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENvbnRhY3QgcmVjb3JkIGlmIHJlcXVpcmVkICovCmFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBhIENvbnRhY3Q/IGNvbnRhY3RJZCA9ICIgKyBjb250YWN0SWQpOwppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CiAgICBhdHRhY2goZG9jLCAiUmVqZWN0ZWQtIiArIHN0YWNrSWQsIGNvbnRhY3RJZCk7Cn0KZWxzZSBpZiAocGF0aWVudEZpcnN0TmFtZSAmJiBwYXRpZW50Rmlyc3ROYW1lLmxlbmd0aCA+IDAgJiYgcGF0aWVudExhc3ROYW1lICYmIHBhdGllbnRMYXN0TmFtZS5sZW5ndGggPiAwICYmIHBhdGllbnRET0IgJiYgcGF0aWVudERPQi5sZW5ndGggPiAwKSB7CiAgICB2YXIgY3RjQXJyT2ZQYWlycyA9IFtdOwogICAgY3RjQXJyT2ZQYWlycy5wdXNoKCJGaXJzdE5hbWUiLCBwYXRpZW50Rmlyc3ROYW1lKTsKICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiTGFzdE5hbWUiLCBwYXRpZW50TGFzdE5hbWUpOwogICAgY3RjQXJyT2ZQYWlycy5wdXNoKCJCaXJ0aERhdGUiLCBwYXRpZW50RE9CKTsKICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsc2ZVc2VySUQpOwogICAgY29udGFjdElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCAiUmVqZWN0ZWQtIiArIHN0YWNrSWQsIGN0Y0Fyck9mUGFpcnMpOwogICAgYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgY29udGFjdElkKTsKICAgIC8vIGNsZWFyIG91dCB0aGUgIk5ldyBQYXRpZW50IiBmaWVsZHMKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0ZpcnN0TmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fTGFzdE5hbWVfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQmlydGhkYXRlX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwogICAgLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgY29udGFjdElkICsgZHEgKyAiKTsgIik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19QYXRpZW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArIGRxICsgIik7ICIpOwp9Cgp2YXIgcHJvdmlkZXJGaXJzdE5hbWUgPSAiIjsKdmFyIHByb3ZpZGVyTGFzdE5hbWUgPSAiIjsKdmFyIHByb3ZpZGVyID0gWChkb2MsICJYX1ByaW1hcnlfQ2FyZV9QaHlzaWNpYW5fX2MiKTsKaWYgKHByb3ZpZGVyICYmIHByb3ZpZGVyLmxlbmd0aCA+IDApIHsKICAgIHZhciBwcm92aWRlckZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIHByb3ZpZGVyKTsKICAgIHByb3ZpZGVyRmlyc3ROYW1lID0gWChkb2MsICJGaXJzdE5hbWUiLCBwcm92aWRlckZsZHMpOwogICAgcHJvdmlkZXJMYXN0TmFtZSA9IFgoZG9jLCAiTGFzdE5hbWUiLCBwcm92aWRlckZsZHMpOwp9CmlmICgxPT09MCkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgbm90IHN0YW5kYXJkCi8qCmlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDAgJiYgcHJvdmlkZXIgJiYgcHJvdmlkZXIubGVuZ3RoID4gMCkgewogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJQcmltYXJ5X0NhcmVfUGh5c2ljaWFuX19jIiwgcHJvdmlkZXIpOwogICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCJDb250YWN0Iixjb250YWN0SWQsYXJyT2ZQYWlycyk7Cn0gKi8KfQphcnJPZlBhaXJzID0gW107CmFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgIk5ldyIpOwphcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsIGNoYW5uZWwpOwphcnJPZlBhaXJzLnB1c2goIkRlc2NyaXB0aW9uIiwgZG9jLmtiRGF0YS5jb21tZW50cyk7CmFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsICJEb2N1bWVudCBSZWplY3RlZCIpOwphcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHNmVXNlcklEKTsKaWYgKDE9PT0wKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBub3Qgc3RhbmRhcmQKLyogICAgYXJyT2ZQYWlycy5wdXNoKCJOb3Rlc19fYyIsIGRvYy5rYkRhdGEuY29tbWVudHMpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJQcm92aWRlcl9GaXJzdF9OYW1lX19jIiwgcHJvdmlkZXJGaXJzdE5hbWUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJQcm92aWRlcl9MYXN0X05hbWVfX2MiLCBwcm92aWRlckxhc3ROYW1lKTsqLwp9CmFsZXJ0KCJAQEBAQEBAIFNFVFRJTkcgQ29udGFjdElkIG9uIENhc2UgY3JlYXRpb24/ICIgKyBjb250YWN0SWQpOwppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIGNvbnRhY3RJZCk7Cn0KaWYgKHByb3ZpZGVySWQgJiYgcHJvdmlkZXJJZC5sZW5ndGggPiAwKSB7CiAgICAgICAgCiAgICBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIHByb3ZpZGVySWQpOyAKfQoKYWxlcnQoIkBAQEAgQ3JlYXRpbmcgTmV3IENhc2UgZm9yIFNuaXBwZXQ6ICIgKyBuZXdTbmlwcGV0SUQgKyAiLCBkb2MuZGJJRCA9ICIgKyBkb2MuZGJJRCk7CmNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgIlJlamVjdGVkLSIgKyAoKHBhdGllbnRGaXJzdE5hbWU/cGF0aWVudEZpcnN0TmFtZToiIikgKyAocGF0aWVudExhc3ROYW1lP3BhdGllbnRMYXN0TmFtZToiIikgKyAiLSIpICsgc3RhY2tJZCwgYXJyT2ZQYWlycyk7CmFsZXJ0KCJAQEBAQCBjYXNlSWQgZm9yIFJlamVjdG9uOiAiICsgY2FzZUlkKTsKaWYgKGNhc2VJZCAmJiBjYXNlSWQubGVuZ3RoID4gMCkgewogICAgYXJyT2ZQYWlyczE9W107CiAgICBhcnJPZlBhaXJzMS5wdXNoKCJaUEFQRVJfX0Nhc2VfX2MiLCBjYXNlSWQpOwogICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCJaUEFQRVJfX3pTdGFja19fYyIsY2hpbGRTdGFja0lkLGFyck9mUGFpcnMxKTsKCiAgICBhcnJPZlBhaXJzID0gW107CiAgICBpZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJXaG9JZCIsIGNvbnRhY3RJZCk7CiAgICB9CiAgICBhcnJPZlBhaXJzLnB1c2goIldoYXRJZCIsIGNhc2VJZCk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlN1YmplY3QiLCAiSW5kZXhlZCBEb2N1bWVudCBSZWplY3RlZCIpOyAvL0pQQjE5MDQxOSBjaGFuZ2VkIGxhYmVsCiAgICBhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJOb3QgU3RhcnRlZCIpOyAKICAgIHZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIlRhc2siLCAiUmVqZWN0ZWQgRG9jdW1lbnQgLSIgKyAoKHBhdGllbnRGaXJzdE5hbWU/cGF0aWVudEZpcnN0TmFtZToiIikgKyAocGF0aWVudExhc3ROYW1lP3BhdGllbnRMYXN0TmFtZToiIikgKyAiLSIpICsgc3RhY2tJZCwgYXJyT2ZQYWlycyk7Cn0vL0pQQjE5MDQxOSB1cGRhdGVkIGxhYmVsCgovKiBQbGFjZSB0aGUgc3BsaXQgZG9jdW1lbnQgaW50byB0aGUgc3RhY2sgZm9sZGVyICovCmFsZXJ0KCJAQEBAQEAgTW92aW5nIHRoZSByZWplY3RlZCBwYWdlcyBkb2N1bWVudCBpbnRvIHRoZSBmaW5hbCBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7Ly8KLy9tb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKCnVubG9ja0RvY3VtZW50KGRvYyk7Cgp0cmFjayhkb2MsICJyZWplY3RlZCIsIGRvYy5CQVRFUywgcGFnZUNvdW50KTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJuZXh0UGFnZSh+cmVqZWN0ZWR+KTt1cGRhdGVERVN0YXR1cyh+cmVqZWN0ZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKCi8qIGVuZCBvZiBydWxlICovCg=="},"ordinal":8}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190506 updated rule for Sales Demo Org
alert("@@@@ Reject Page Rule Fired @@@#");
var dq="~";
function countPages(pageRange) {
  var pages = pageRange.split(",");
  return pages.length + "";
}
//ERS190504 testing for zzAction static resources

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
var faxType = X(doc, "X_ZPAPER__faxType__c");
var sfUserID = doc.kbData.sfUserID; 
if(!sfUserID){
    sfUserID= getSFField(doc, "User","Id","username='"+doc.kbData.remoteUser+"'");
}
alert("PV190415 sfUserID : " +sfUserID);
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
arrOfPairs.push("X_reviewedStatus","Rejected");
arrOfPairs.push("X_docType",faxType); 
alert("@@@@ Parent X_ZPAPER__faxType__c = " + faxType);
//updateDB(doc,arrOfPairs);

var pageRange = X(doc,"X_idxPages");
var newSnippetID = splitDocumentForIndex(doc, "reject", pageRange,arrOfPairs);
/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE zSTACK SNIPPET */

/* CRN160825 Set the page count so that it does not have the parent page count */
var pageCount = zData.countPages(doc,pageRange); //ERS190326 #57472 missing zData. and needs doc
alert("@@@@ pageCount = " + pageCount);

var channel="Fax"; //Pv190416 updated for case type
if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {channel="Email";} 
else if (isNaN(doc.deliveredFrom)) {channel="Scan";} 

var zp="ZPAPER__"; 
arrOfPairs = [];
arrOfPairs.push(zp+"Program_Name__c", zData.programName);
arrOfPairs.push(zp+"sentFaxTo__c",deliveredTo); 
arrOfPairs.push(zp+"From__c",deliveredFrom); 
arrOfPairs.push(zp+"Stage__c", "Rejected"); 
arrOfPairs.push(zp+"Parent__c",sfStackId);
arrOfPairs.push(zp+"Channel__c",channel);

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
}  
arrOfPairs.push("X_docType",faxType); 
arrOfPairs.push("X_ZPAPER__faxType__c",faxType.trim());
arrOfPairs.push("X_ZPAPER__Priority__c", "Immediate");

zData.programName = X(doc,"X_ZPAPER__Classification__c"); 
arrOfPairs.push(zp+"Classification__c", zData.programName);
arrOfPairs.push("OwnerId",sfUserID);  //Udated for remote user PV190420
arrOfPairs.push("ZPAPER__Status__c", "Rejected"); //PV190422 Updated for incoming status to be Rejected
var zStack=zp+"zStack__c"; 
var formatNow=getCurDateAndTime(doc);
var sfId = createAndAttach(doc, zStack, "Document Rejected on " + formatNow, arrOfPairs) + ""; //JPB190419 changed label
var childStackNumber = getSFField(doc, zStack, "Name", null, sfId); 
var childStackId = sfId;
arrOfPairs = [];
arrOfPairs.push("X_pages",pageCount);
arrOfPairs.push("db-pages",pageCount);
if (1===1) { 
    var now0 = getCurDateAndTime(doc,false,true);
    arrOfPairs.push("X_reviewedStatus","Rejected"); 
    arrOfPairs.push(zp+"Status__c", "Rejected");
    arrOfPairs.push("X_reviews","Rejected by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); // PV190417 updated for doc set component check box
    arrOfPairs.push("X_ZPAPER__faxType__c",faxType);
    arrOfPairs.push("X_buttonAction","");
}
arrOfPairs.push("db-label", patientFirstName + " " + patientLastName + " - " + zData.programName + " "+ zData.documentTypeMap[faxType] +" - Document " + childStackNumber); //JPB190419 changed label
updateDB(doc,arrOfPairs);

attach(doc, "Rejected-" +stackId, sfStackId); // PV190418 updated to update doc on doc set component

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
    ctcArrOfPairs.push("OwnerId",sfUserID);
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
arrOfPairs.push("Origin", channel);
arrOfPairs.push("Description", doc.kbData.comments);
arrOfPairs.push("Subject", "Document Rejected");
arrOfPairs.push("OwnerId",sfUserID);
if (1===0) { //ERS170909 #40592 not standard
/*    arrOfPairs.push("Notes__c", doc.kbData.comments);
    arrOfPairs.push("Provider_First_Name__c", providerFirstName);
    arrOfPairs.push("Provider_Last_Name__c", providerLastName);*/
}
alert("@@@@@@@ SETTING ContactId on Case creation? " + contactId);
if (contactId && contactId.length > 0) {
    arrOfPairs.push("ContactId", contactId);
}
if (providerId && providerId.length > 0) {
        
    arrOfPairs.push("AccountId", providerId); 
}

alert("@@@@ Creating New Case for Snippet: " + newSnippetID + ", doc.dbID = " + doc.dbID);
caseId = createAndAttach(doc, "Case", "Rejected-" + ((patientFirstName?patientFirstName:"") + (patientLastName?patientLastName:"") + "-") + stackId, arrOfPairs);
alert("@@@@@ caseId for Rejecton: " + caseId);
if (caseId && caseId.length > 0) {
    arrOfPairs1=[];
    arrOfPairs1.push("ZPAPER__Case__c", caseId);
    updateSFRecord(doc,"ZPAPER__zStack__c",childStackId,arrOfPairs1);

    arrOfPairs = [];
    if (contactId && contactId.length > 0) {
        arrOfPairs.push("WhoId", contactId);
    }
    arrOfPairs.push("WhatId", caseId);
    arrOfPairs.push("Subject", "Indexed Document Rejected"); //JPB190419 changed label
    arrOfPairs.push("Status", "Not Started"); 
    var sfId = createAndAttach(doc, "Task", "Rejected Document -" + ((patientFirstName?patientFirstName:"") + (patientLastName?patientLastName:"") + "-") + stackId, arrOfPairs);
}//JPB190419 updated label

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
