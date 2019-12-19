<!--
// Name: Reject Page
// Committer: marty.harvey@zpaper.com
// Update: messed around with caseNumber
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-12-18 22:43:15","active":true,"button":"Reject","name":"Reject Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Reject","operation":"equals"}]},"consequence":{"doit":"LyogQkVHSU4gUmVqZWN0IFBhZ2UgekFjdGlvbiAqLwovL0pQQjE5MTIxOCB1cGRhdGVkIHJ1bGUgZm9yIFNhbGVzIERlbW8gT3JnCi8vSlBCMTkxMjE4IG1lc3NlZCBhcm91bmQgd2l0aCBzdHVmZgphbGVydCgiQEBAQCBSZWplY3QgUGFnZSBSdWxlIEZpcmVkIEBAQCMiKTsKdmFyIGRxID0gIn4iOwpmdW5jdGlvbiBjb3VudFBhZ2VzKHBhZ2VSYW5nZSkgewogICAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlLnNwbGl0KCIsIik7CiAgICByZXR1cm4gcGFnZXMubGVuZ3RoICsgIiI7Cn0KCi8vRVJTMTkwNTA0IHRlc3RpbmcgZm9yIHp6QWN0aW9uIHN0YXRpYyByZXNvdXJjZXMKdmFyIGNhc2VJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX0Nhc2VfX2MiKTsKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsKdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCAiWF9zZlN0YWNrSWQiKTsKYWxlcnQoIkBAQCBzZlN0YWNrSWQgPSAiICsgc2ZTdGFja0lkKTsKdmFyIGNvbnRhY3RJZCA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRfX2MiKTsKdmFyIHBhdGllbnRJZCA9IGNvbnRhY3RJZDsgLy9UT0RPCnZhciBwcm92aWRlcklkID0gWChkb2MsICJYX1pQQVBFUl9fUHJvdmlkZXJfX2MiKTsKdmFyIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19GaXJzdE5hbWVfX2MiKTsKdmFyIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0xhc3ROYW1lX19jIik7CnZhciBwYXRpZW50RE9CID0gWChkb2MsICJYX1pQQVBFUl9fQmlydGhkYXRlX19jIik7CnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGRlbGl2ZXJlZFRvID0gZG9jLmRlbGl2ZXJlZFRvOwp2YXIgZGVsaXZlcmVkRnJvbSA9IGRvYy5kZWxpdmVyZWRGcm9tOwp2YXIgZmF4VHlwZSA9IFgoZG9jLCAiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsKCnZhciBzZlVzZXJJRCA9IGRvYy5rYkRhdGEuc2ZVc2VySUQ7CmlmICghc2ZVc2VySUQpIHsKICAgIHNmVXNlcklEID0gZ2V0U0ZGaWVsZChkb2MsICJVc2VyIiwgIklkIiwgInVzZXJuYW1lPSciICsgZG9jLmtiRGF0YS5yZW1vdGVVc2VyICsgIiciKTsKfQphbGVydCgiUFYxOTA0MTUgc2ZVc2VySUQgOiAiICsgc2ZVc2VySUQpOwoKaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewogICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCBjb250YWN0SWQpOwogICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKfQoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwp6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24oZG9jLCAiWF9idXR0b25BY3Rpb24iKTsKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7Cgp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCAiWF9pbmRleEluaXRpYWxpemVkIik7CmlmICghaW5kZXhJbml0aWFsaXplZCB8fCAwID09PSBpbmRleEluaXRpYWxpemVkLmxlbmd0aCkgewogICAgc3RhY2tJZCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgICBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKICAgIHpEYXRhLmluaXRpYWxpemVTdGFjayhkb2MsIHN0YWNrRm9sZGVyLCBkZWxpdmVyZWRUbywgc3RhY2tJZCk7Cn0KCnZhciBjdXJJbmRleFBhZ2VzID0gWChkb2MsICJYX3JlamVjdGVkUGFnZXMiKTsKaWYgKGN1ckluZGV4UGFnZXMgJiYgY3VySW5kZXhQYWdlcy5sZW5ndGggPiAwKSB7CiAgICBjdXJJbmRleFBhZ2VzICs9ICIsIjsKfQpjdXJJbmRleFBhZ2VzICs9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwoKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX3JlamVjdGVkUGFnZXMiLCBjdXJJbmRleFBhZ2VzKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlamVjdGVkIik7CmFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgZmF4VHlwZSk7CmFsZXJ0KCJAQEBAIFBhcmVudCBYX1pQQVBFUl9fZmF4VHlwZV9fYyA9ICIgKyBmYXhUeXBlKTsKCnZhciBwYWdlUmFuZ2UgPSBYKGRvYywgIlhfaWR4UGFnZXMiKTsKdmFyIG5ld1NuaXBwZXRJRCA9IHNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJyZWplY3QiLCBwYWdlUmFuZ2UsIGFyck9mUGFpcnMpOwoKLyogQUZURVIgVEhJUyBQT0lOVCwgVEhFIERPQyBXSUxMIEhPTEQgREFUQSBGT1IgTkVXIFNOSVBQRVQsIE5PVCBUSEUgelNUQUNLIFNOSVBQRVQgKi8KCi8qIENSTjE2MDgyNSBTZXQgdGhlIHBhZ2UgY291bnQgc28gdGhhdCBpdCBkb2VzIG5vdCBoYXZlIHRoZSBwYXJlbnQgcGFnZSBjb3VudCAqLwp2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MsIHBhZ2VSYW5nZSk7IC8vRVJTMTkwMzI2ICM1NzQ3MiBtaXNzaW5nIHpEYXRhLiBhbmQgbmVlZHMgZG9jCmFsZXJ0KCJAQEBAIHBhZ2VDb3VudCA9ICIgKyBwYWdlQ291bnQpOwoKdmFyIGNoYW5uZWwgPSAiRmF4IjsgLy9QdjE5MDQxNiB1cGRhdGVkIGZvciBjYXNlIHR5cGUKaWYgKGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIkAiKSA+IC0xIHx8IGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIi4iKSA+IC0xKSB7CiAgICBjaGFubmVsID0gIkVtYWlsIjsKfSBlbHNlIGlmIChpc05hTihkb2MuZGVsaXZlcmVkRnJvbSkpIHsKICAgIGNoYW5uZWwgPSAiU2NhbiI7Cn0KCnZhciB6cCA9ICJaUEFQRVJfXyI7CmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKHpwICsgIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsKYXJyT2ZQYWlycy5wdXNoKHpwICsgInNlbnRGYXhUb19fYyIsIGRlbGl2ZXJlZFRvKTsKYXJyT2ZQYWlycy5wdXNoKHpwICsgIkZyb21fX2MiLCBkZWxpdmVyZWRGcm9tKTsKYXJyT2ZQYWlycy5wdXNoKHpwICsgIlN0YWdlX19jIiwgIlJlamVjdGVkIik7CmFyck9mUGFpcnMucHVzaCh6cCArICJQYXJlbnRfX2MiLCBzZlN0YWNrSWQpOwphcnJPZlBhaXJzLnB1c2goenAgKyAiQ2hhbm5lbF9fYyIsIGNoYW5uZWwpOwoKdmFyIG5vdGVzID0gZG9jLmtiRGF0YS5jb21tZW50cyArICIiOwppZiAobm90ZXMpIHsKICAgIGFyck9mUGFpcnMucHVzaCgiTm90ZXNfX2MiLCBub3Rlcyk7Cn0KaWYgKHByb3ZpZGVySWQgJiYgcHJvdmlkZXJJZC5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvdmlkZXJfX2MiLCBwcm92aWRlcklkKTsKfQppZiAocGF0aWVudElkICYmIHBhdGllbnRJZC5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGF0aWVudF9fYyIsIHBhdGllbnRJZCk7Cn0KaWYgKGNhc2VJZCAmJiBjYXNlSWQubGVuZ3RoID4gMCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0Nhc2VfX2MiLCBjYXNlSWQpOwp9CmFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgZmF4VHlwZSk7CmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX2ZheFR5cGVfX2MiLCBmYXhUeXBlLnRyaW0oKSk7CmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX1ByaW9yaXR5X19jIiwgIkltbWVkaWF0ZSIpOwoKekRhdGEucHJvZ3JhbU5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIpOwphcnJPZlBhaXJzLnB1c2goenAgKyAiQ2xhc3NpZmljYXRpb25fX2MiLCB6RGF0YS5wcm9ncmFtTmFtZSk7CmFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHNmVXNlcklEKTsgIC8vVWRhdGVkIGZvciByZW1vdGUgdXNlciBQVjE5MDQyMAphcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIlJlamVjdGVkIik7IC8vUFYxOTA0MjIgVXBkYXRlZCBmb3IgaW5jb21pbmcgc3RhdHVzIHRvIGJlIFJlamVjdGVkCnZhciB6U3RhY2sgPSB6cCArICJ6U3RhY2tfX2MiOwp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCAiRG9jdW1lbnQgUmVqZWN0ZWQgb24gIiArIGZvcm1hdE5vdywgYXJyT2ZQYWlycykgKyAiIjsKdmFyIGNoaWxkU3RhY2tOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgelN0YWNrLCAiTmFtZSIsIG51bGwsIHNmSWQpOwp2YXIgY2hpbGRTdGFja0lkID0gc2ZJZDsKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfcGFnZXMiLCBwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIiwgcGFnZUNvdW50KTsKaWYgKDEgPT09IDEpIHsKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSwgdHJ1ZSk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiUmVqZWN0ZWQiKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCArICJTdGF0dXNfX2MiLCAiUmVqZWN0ZWQiKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIlJlamVjdGVkIGJ5ICIgKyBkb2Mua2JEYXRhLnJlbW90ZVVzZXIgKyAiIGF0ICIgKyBub3cwICsgIjxici8+Iik7IC8vIFBWMTkwNDE3IHVwZGF0ZWQgZm9yIGRvYyBzZXQgY29tcG9uZW50IGNoZWNrIGJveAogICAgYXJyT2ZQYWlycy5wdXNoKCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIsIGZheFR5cGUpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsICIiKTsKfQoKYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyAiIC0gIiArIHpEYXRhLnByb2dyYW1OYW1lICsgIiAiICsgekRhdGEuZG9jdW1lbnRUeXBlTWFwW2ZheFR5cGVdICsgIiAtICAiICsgY2hpbGRTdGFja051bWJlcik7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgphdHRhY2goZG9jLCAiUmVqZWN0ZWQtIiArIHN0YWNrSWQsIHNmU3RhY2tJZCk7IC8vIFBWMTkwNDE4IHVwZGF0ZWQgdG8gdXBkYXRlIGRvYyBvbiBkb2Mgc2V0IGNvbXBvbmVudAoKLyogQXR0YWNoIHRoZSBzcGxpdCBkb2N1bWVudCB0byBDb250YWN0IHJlY29yZCBpZiByZXF1aXJlZCAqLwphbGVydCgiQEBAQCBhdHRhY2hpbmcgdG8gYSBDb250YWN0PyBjb250YWN0SWQgPSAiICsgY29udGFjdElkKTsKaWYgKGNvbnRhY3RJZCAmJiBjb250YWN0SWQubGVuZ3RoID4gMCkgewogICAgYXR0YWNoKGRvYywgIlJlamVjdGVkLSIgKyBzdGFja0lkLCBjb250YWN0SWQpOwp9IGVsc2UgaWYgKHBhdGllbnRGaXJzdE5hbWUgJiYgcGF0aWVudEZpcnN0TmFtZS5sZW5ndGggPiAwICYmIHBhdGllbnRMYXN0TmFtZSAmJiBwYXRpZW50TGFzdE5hbWUubGVuZ3RoID4gMCAmJiBwYXRpZW50RE9CICYmIHBhdGllbnRET0IubGVuZ3RoID4gMCkgewogICAgdmFyIGN0Y0Fyck9mUGFpcnMgPSBbXTsKICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiRmlyc3ROYW1lIiwgcGF0aWVudEZpcnN0TmFtZSk7CiAgICBjdGNBcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIiwgcGF0aWVudExhc3ROYW1lKTsKICAgIGN0Y0Fyck9mUGFpcnMucHVzaCgiQmlydGhEYXRlIiwgcGF0aWVudERPQik7CiAgICBjdGNBcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBzZlVzZXJJRCk7CiAgICBjb250YWN0SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ29udGFjdCIsICJSZWplY3RlZC0iICsgc3RhY2tJZCwgY3RjQXJyT2ZQYWlycyk7CiAgICBhbGVydCgiQEBAQEBAQCBORVcgQ09OVEFDVCBDUkVBVEVEIFdJVEggSUQ6ICIgKyBjb250YWN0SWQpOwogICAgLy8gY2xlYXIgb3V0IHRoZSAiTmV3IFBhdGllbnQiIGZpZWxkcwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fRmlyc3ROYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19MYXN0TmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fQmlydGhkYXRlX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjWlBBUEVSX19CaXJ0aGRhdGVfX2NfcmVhZGFibGUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIk5PTkUiICsgZHEgKyAiKTsgIik7CiAgICAvLyBzZXQgdGhlIFBhdGllbnQgbG9va3VwIGZpZWxkcwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fUGF0aWVudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBjb250YWN0SWQgKyBkcSArICIpOyAiKTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lICsgZHEgKyAiKTsgIik7Cn0KCnZhciBwcm92aWRlckZpcnN0TmFtZSA9ICIiOwp2YXIgcHJvdmlkZXJMYXN0TmFtZSA9ICIiOwp2YXIgcHJvdmlkZXIgPSBYKGRvYywgIlhfUHJpbWFyeV9DYXJlX1BoeXNpY2lhbl9fYyIpOwppZiAocHJvdmlkZXIgJiYgcHJvdmlkZXIubGVuZ3RoID4gMCkgewogICAgdmFyIHByb3ZpZGVyRmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgcHJvdmlkZXIpOwogICAgcHJvdmlkZXJGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIHByb3ZpZGVyRmxkcyk7CiAgICBwcm92aWRlckxhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIHByb3ZpZGVyRmxkcyk7Cn0KCmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJTdGF0dXMiLCAiTmV3Iik7CmFyck9mUGFpcnMucHVzaCgiT3JpZ2luIiwgY2hhbm5lbCk7CmFyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLCBkb2Mua2JEYXRhLmNvbW1lbnRzKTsKYXJyT2ZQYWlycy5wdXNoKCJTdWJqZWN0IiwgIkRvY3VtZW50IFJlamVjdGVkIik7CmFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHNmVXNlcklEKTsKCmFsZXJ0KCJAQEBAQEBAIFNFVFRJTkcgQ29udGFjdElkIG9uIENhc2UgY3JlYXRpb24/ICIgKyBjb250YWN0SWQpOwppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIGNvbnRhY3RJZCk7Cn0KaWYgKHByb3ZpZGVySWQgJiYgcHJvdmlkZXJJZC5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIHByb3ZpZGVySWQpOwp9CgphbGVydCgiQEBAQCBDcmVhdGluZyBOZXcgQ2FzZSBmb3IgU25pcHBldDogIiArIG5ld1NuaXBwZXRJRCArICIsIGRvYy5kYklEID0gIiArIGRvYy5kYklEKTsKY2FzZUlkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNhc2UiLCAiUmVqZWN0ZWQtIiArICgocGF0aWVudEZpcnN0TmFtZSA/IHBhdGllbnRGaXJzdE5hbWUgOiAiIikgKyAocGF0aWVudExhc3ROYW1lID8gcGF0aWVudExhc3ROYW1lIDogIiIpICsgIi0iKSArIHN0YWNrSWQsIGFyck9mUGFpcnMpOwphbGVydCgiQEBAQEAgY2FzZUlkIGZvciBSZWplY3Rpb246ICIgKyBjYXNlSWQpOwp2YXIgY2FzZU51bWJlciA9IG51bGw7CmlmIChjYXNlSWQgJiYgY2FzZUlkLmxlbmd0aCA+IDApIHsKICAgIHZhciBhcnJPZlBhaXJzMSA9IFtdOwogICAgYXJyT2ZQYWlyczEucHVzaCgiWlBBUEVSX19DYXNlX19jIiwgY2FzZUlkKTsKICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgIlpQQVBFUl9felN0YWNrX19jIiwgY2hpbGRTdGFja0lkLCBhcnJPZlBhaXJzMSk7CiAgICBhcnJPZlBhaXJzMS5wdXNoKCJYX1pQQVBFUl9fQ2FzZV9fYyIsIGNhc2VJZCk7CiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMxKTsKCiAgICBjYXNlTnVtYmVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkNhc2VOdW1iZXIiLCBudWxsLCBjYXNlSWQpOwoKICAgIGFyck9mUGFpcnMgPSBbXTsKICAgIGlmIChjb250YWN0SWQgJiYgY29udGFjdElkLmxlbmd0aCA+IDApIHsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIldob0lkIiwgY29udGFjdElkKTsKICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiV2hhdElkIiwgY2FzZUlkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsICJJbmRleGVkIERvY3VtZW50IFJlamVjdGVkIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlN0YXR1cyIsICJOb3QgU3RhcnRlZCIpOwogICAgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJUYXNrIiwgIlJlamVjdGVkIERvY3VtZW50IC0iICsgKChwYXRpZW50Rmlyc3ROYW1lID8gcGF0aWVudEZpcnN0TmFtZSA6ICIiKSArIChwYXRpZW50TGFzdE5hbWUgPyBwYXRpZW50TGFzdE5hbWUgOiAiIikgKyAiLSIpICsgc3RhY2tJZCwgYXJyT2ZQYWlycyk7Cn0KLyogUGxhY2UgdGhlIHNwbGl0IGRvY3VtZW50IGludG8gdGhlIHN0YWNrIGZvbGRlciAqLwphbGVydCgiQEBAQEBAIE1vdmluZyB0aGUgcmVqZWN0ZWQgcGFnZXMgZG9jdW1lbnQgaW50byB0aGUgZmluYWwgc3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOwoKdW5sb2NrRG9jdW1lbnQoZG9jKTsKCnRyYWNrKGRvYywgInJlamVjdGVkIiwgZG9jLkJBVEVTLCBwYWdlQ291bnQpOwphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIm5leHRQYWdlKH5yZWplY3RlZH4pO3VwZGF0ZURFU3RhdHVzKH5yZWplY3RlZDoiICsgcGFnZVJhbmdlICsgIn4pOyIpOwoKaWYgKGNhc2VJZCAmJiBjYXNlTnVtYmVyKSB7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjskKH4jWlBBUEVSX19DYXNlX19jfikudmFsKH4iICsgY2FzZUlkICsgIn4pOyAkKH4jWlBBUEVSX19DYXNlX19jX0Nhc2VOdW1iZXJ+KS52YWwofiIgKyBjYXNlTnVtYmVyICsgIn4pOyAiKTsKfQovKiBFTkQgUmVqZWN0IFBhZ2UgekFjdGlvbiAqLwo="},"ordinal":8}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
/* BEGIN Reject Page zAction */
//JPB191218 updated rule for Sales Demo Org
//JPB191218 messed around with stuff
alert("@@@@ Reject Page Rule Fired @@@#");
var dq = "~";
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
var patientId = contactId; //TODO
var providerId = X(doc, "X_ZPAPER__Provider__c");
var patientFirstName = X(doc, "X_ZPAPER__FirstName__c");
var patientLastName = X(doc, "X_ZPAPER__LastName__c");
var patientDOB = X(doc, "X_ZPAPER__Birthdate__c");
var stackFolder = stackId + "-STACK";
var deliveredTo = doc.deliveredTo;
var deliveredFrom = doc.deliveredFrom;
var faxType = X(doc, "X_ZPAPER__faxType__c");

var sfUserID = doc.kbData.sfUserID;
if (!sfUserID) {
    sfUserID = getSFField(doc, "User", "Id", "username='" + doc.kbData.remoteUser + "'");
}
alert("PV190415 sfUserID : " + sfUserID);

if (contactId && contactId.length > 0) {
    var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, contactId);
    patientFirstName = X(doc, "FirstName", contactFlds);
    patientLastName = X(doc, "LastName", contactFlds);
}

/* Clear the trigger that invoked this rule */
zData.clearTriggerCondition(doc, "X_buttonAction");
zData.setbrandprogram(doc);

var indexInitialized = X(doc, "X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
    stackId = new Date().getTime() + "";
    stackFolder = stackId + "-STACK";
    zData.initializeStack(doc, stackFolder, deliveredTo, stackId);
}

var curIndexPages = X(doc, "X_rejectedPages");
if (curIndexPages && curIndexPages.length > 0) {
    curIndexPages += ",";
}
curIndexPages += X(doc, "X_idxPages");

var arrOfPairs = [];
arrOfPairs.push("X_rejectedPages", curIndexPages);
arrOfPairs.push("X_reviewedStatus", "Rejected");
arrOfPairs.push("X_docType", faxType);
alert("@@@@ Parent X_ZPAPER__faxType__c = " + faxType);

var pageRange = X(doc, "X_idxPages");
var newSnippetID = splitDocumentForIndex(doc, "reject", pageRange, arrOfPairs);

/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE zSTACK SNIPPET */

/* CRN160825 Set the page count so that it does not have the parent page count */
var pageCount = zData.countPages(doc, pageRange); //ERS190326 #57472 missing zData. and needs doc
alert("@@@@ pageCount = " + pageCount);

var channel = "Fax"; //Pv190416 updated for case type
if (doc.deliveredFrom.indexOf("@") > -1 || doc.deliveredFrom.indexOf(".") > -1) {
    channel = "Email";
} else if (isNaN(doc.deliveredFrom)) {
    channel = "Scan";
}

var zp = "ZPAPER__";
arrOfPairs = [];
arrOfPairs.push(zp + "Program_Name__c", zData.programName);
arrOfPairs.push(zp + "sentFaxTo__c", deliveredTo);
arrOfPairs.push(zp + "From__c", deliveredFrom);
arrOfPairs.push(zp + "Stage__c", "Rejected");
arrOfPairs.push(zp + "Parent__c", sfStackId);
arrOfPairs.push(zp + "Channel__c", channel);

var notes = doc.kbData.comments + "";
if (notes) {
    arrOfPairs.push("Notes__c", notes);
}
if (providerId && providerId.length > 0) {
    arrOfPairs.push("ZPAPER__Provider__c", providerId);
}
if (patientId && patientId.length > 0) {
    arrOfPairs.push("ZPAPER__Patient__c", patientId);
}
if (caseId && caseId.length > 0) {
    arrOfPairs.push("ZPAPER__Case__c", caseId);
}
arrOfPairs.push("X_docType", faxType);
arrOfPairs.push("X_ZPAPER__faxType__c", faxType.trim());
arrOfPairs.push("X_ZPAPER__Priority__c", "Immediate");

zData.programName = X(doc, "X_ZPAPER__Classification__c");
arrOfPairs.push(zp + "Classification__c", zData.programName);
arrOfPairs.push("OwnerId", sfUserID);  //Udated for remote user PV190420
arrOfPairs.push("ZPAPER__Status__c", "Rejected"); //PV190422 Updated for incoming status to be Rejected
var zStack = zp + "zStack__c";
var formatNow = getCurDateAndTime(doc);

var sfId = createAndAttach(doc, zStack, "Document Rejected on " + formatNow, arrOfPairs) + "";
var childStackNumber = getSFField(doc, zStack, "Name", null, sfId);
var childStackId = sfId;
arrOfPairs = [];
arrOfPairs.push("X_pages", pageCount);
arrOfPairs.push("db-pages", pageCount);
if (1 === 1) {
    var now0 = getCurDateAndTime(doc, false, true);
    arrOfPairs.push("X_reviewedStatus", "Rejected");
    arrOfPairs.push(zp + "Status__c", "Rejected");
    arrOfPairs.push("X_reviews", "Rejected by " + doc.kbData.remoteUser + " at " + now0 + "<br/>"); // PV190417 updated for doc set component check box
    arrOfPairs.push("X_ZPAPER__faxType__c", faxType);
    arrOfPairs.push("X_buttonAction", "");
}

arrOfPairs.push("db-label", patientFirstName + " " + patientLastName + " - " + zData.programName + " " + zData.documentTypeMap[faxType] + " -  " + childStackNumber);
updateDB(doc, arrOfPairs);

attach(doc, "Rejected-" + stackId, sfStackId); // PV190418 updated to update doc on doc set component

/* Attach the split document to Contact record if required */
alert("@@@@ attaching to a Contact? contactId = " + contactId);
if (contactId && contactId.length > 0) {
    attach(doc, "Rejected-" + stackId, contactId);
} else if (patientFirstName && patientFirstName.length > 0 && patientLastName && patientLastName.length > 0 && patientDOB && patientDOB.length > 0) {
    var ctcArrOfPairs = [];
    ctcArrOfPairs.push("FirstName", patientFirstName);
    ctcArrOfPairs.push("LastName", patientLastName);
    ctcArrOfPairs.push("BirthDate", patientDOB);
    ctcArrOfPairs.push("OwnerId", sfUserID);
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

arrOfPairs = [];
arrOfPairs.push("Status", "New");
arrOfPairs.push("Origin", channel);
arrOfPairs.push("Description", doc.kbData.comments);
arrOfPairs.push("Subject", "Document Rejected");
arrOfPairs.push("OwnerId", sfUserID);

alert("@@@@@@@ SETTING ContactId on Case creation? " + contactId);
if (contactId && contactId.length > 0) {
    arrOfPairs.push("ContactId", contactId);
}
if (providerId && providerId.length > 0) {
    arrOfPairs.push("AccountId", providerId);
}

alert("@@@@ Creating New Case for Snippet: " + newSnippetID + ", doc.dbID = " + doc.dbID);
caseId = createAndAttach(doc, "Case", "Rejected-" + ((patientFirstName ? patientFirstName : "") + (patientLastName ? patientLastName : "") + "-") + stackId, arrOfPairs);
alert("@@@@@ caseId for Rejection: " + caseId);
var caseNumber = null;
if (caseId && caseId.length > 0) {
    var arrOfPairs1 = [];
    arrOfPairs1.push("ZPAPER__Case__c", caseId);
    updateSFRecord(doc, "ZPAPER__zStack__c", childStackId, arrOfPairs1);
    arrOfPairs1.push("X_ZPAPER__Case__c", caseId);
    updateDB(doc, arrOfPairs1);

    caseNumber = getSFField(doc, "Case", "CaseNumber", null, caseId);

    arrOfPairs = [];
    if (contactId && contactId.length > 0) {
        arrOfPairs.push("WhoId", contactId);
    }
    arrOfPairs.push("WhatId", caseId);
    arrOfPairs.push("Subject", "Indexed Document Rejected");
    arrOfPairs.push("Status", "Not Started");
    sfId = createAndAttach(doc, "Task", "Rejected Document -" + ((patientFirstName ? patientFirstName : "") + (patientLastName ? patientLastName : "") + "-") + stackId, arrOfPairs);
}
/* Place the split document into the stack folder */
alert("@@@@@@ Moving the rejected pages document into the final stack folder: " + stackFolder);

unlockDocument(doc);

track(doc, "rejected", doc.BATES, pageCount);
addPostExecutionScript(doc, "nextPage(~rejected~);updateDEStatus(~rejected:" + pageRange + "~);");

if (caseId && caseNumber) {
    addPostExecutionScript(doc, ";$(~#ZPAPER__Case__c~).val(~" + caseId + "~); $(~#ZPAPER__Case__c_CaseNumber~).val(~" + caseNumber + "~); ");
}
/* END Reject Page zAction */

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
