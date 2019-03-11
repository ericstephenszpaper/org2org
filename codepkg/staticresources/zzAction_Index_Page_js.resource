<!--
// Name: Index Page
// Committer: judson.bruno@zpaper.com
// Update: _ERS_ off
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-03-05 23:39:07","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7Ci8qIGRvdWJsZS1xdW90ZSwgbmV3bGluZSBjaGFyYWN0ZXJzICovCnZhciBkcSA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMzQpOwp2YXIgbmwgPSBTdHJpbmcuZnJvbUNoYXJDb2RlKDEwKTsKdmFyIGZvcm1hdE5vdz1nZXRDdXJEYXRlQW5kVGltZShkb2MpOwp2YXIgbm90ZXMgPSBkb2Mua2JEYXRhLmNvbW1lbnRzICsgIiI7ICAgLy9DUk4xODA2MTkgQ2FzZSAjNDk0MzcgU2F2ZSBhbnkgY29tbWVudHMgKG5vdGVzKSBpbnRvIHRoZSBOb3Rlc19fYyBmaWVsZCBpbiB0aGUgelN0YWNrCmFsZXJ0KCJAQEAgTk9URVM6ICIgKyBub3Rlcyk7IC8vSlBCMTgwNzExIGFkZGVkIE5PVEVTCgovKiBkb3VibGUtcXVvdGUsIG5ld2xpbmUgY2hhcmFjdGVycyAqLwoKdmFyIGRxID0gU3RyaW5nLmZyb21DaGFyQ29kZSgzNCk7IC8vSlBCMTgwNjI2IGFkZGVkIG5vdGVzIHNlY3Rpb24gbGluZSA5IHRob3VyZ2ggMTUKdmFyIG5sID0gU3RyaW5nLmZyb21DaGFyQ29kZSgxMCk7CnZhciBmb3JtYXROb3c9Z2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIG5vdGVzID0gZG9jLmtiRGF0YS5jb21tZW50cyArICIiOyAgIC8vQ1JOMTgwNjE5IENhc2UgIzQ5NDM3IFNhdmUgYW55IGNvbW1lbnRzIChub3RlcykgaW50byB0aGUgTm90ZXNfX2MgZmllbGQgaW4gdGhlIHpTdGFjawphbGVydCgiQEBAIE5PVEVTOiAiICsgbm90ZXMpOwp2YXIgenA9IlpQQVBFUl9fIjsgLy9FUlMxNzA2MjYgbm93IGluIHRoZSBwYWNrYWdlCnZhciB6U3RhY2s9enArInpTdGFja19fYyI7IC8vIlN0YWNrX19jIgoKdmFyIHBhcmVudEZvbGRlciA9IFgoZG9jLCJYX2N1ckZvbGRlciIpOyAvL0pQQjE4MDYyNiBhZGRlZCBwYXJlbnRGb2xkZXIKdmFyIHN0YWNrSWQgPSBYKGRvYywgIlhfc3RhY2siKTsKdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCJYX3NmU3RhY2tJZCIpOwppZiAoc2ZTdGFja0lkID09PSIiKSB7IC8vRVJTMTcwNzMxICM0MDU5MwogICAgWChkb2MsIlhfYXR0YWNoZWRUbyIpOwogICAgaWYgKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpID49IDApIHsKCQlzZlN0YWNrSWQgPSBzZlN0YWNrSWQuc3Vic3RyaW5nKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpKzEpOwoJCWlmIChzZlN0YWNrSWQuaW5kZXhPZignLCcpID49IDApIHsgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZygwLCBzZlN0YWNrSWQuaW5kZXhPZignLCcpKTsgfQogICAgfQp9CnZhciBwYXJlbnRkYklEID0gZG9jLmRiSUQ7IC8vSlBCMTgwNjI2IGFkZGVkIGRvYy5kYklECmFsZXJ0KCJAQEBAIHBhcmVudCBzdGFjayBpZCA9ICIgKyBzZlN0YWNrSWQpOwp2YXIgcGFyZW50U3RhY2tOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgelN0YWNrLCAiTmFtZSIsIG51bGwsIHNmU3RhY2tJZCk7IC8vSlBCMTgwNjI2IGFkZGVkIHBhcmVudFN0YWNrTnVtYmVyCmFsZXJ0KCIjIyMjIE91ciBwYXJlbnQgc3RhY2sgbnVtYmVyIGlzICIgKyBwYXJlbnRTdGFja051bWJlcik7CnZhciBzdGFja0ZvbGRlciA9IHN0YWNrSWQgKyAiLVNUQUNLIjsKdmFyIGNvbXBhbnlDb2RlID0gZG9jLmRlbGl2ZXJlZFRvOwoKLyogQ2xlYXIgdGhlIHRyaWdnZXIgdGhhdCBpbnZva2VkIHRoaXMgcnVsZSAqLwovL0VSUzE3MDkwOSB6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb24oZG9jLCJYX2J1dHRvbkFjdGlvbiIpOwp2YXIgaW5kZXhJbml0aWFsaXplZCA9IFgoZG9jLCJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CglzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKCXN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwoJekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYyxzdGFja0ZvbGRlciwgY29tcGFueUNvZGUsIHN0YWNrSWQpOwp9CgovLyBEb2VzIHRoZSB1c2VyIHdhbnQgdG8gYXR0YWNoIGluZGV4ZWQgcGFnZXMgdG8gQ2FzZT8KCnZhciBjYXNlSWQgPSBYKGRvYywgIlhfWlBBUEVSX19DYXNlX19jIik7CnZhciBjb250YWN0SWQgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50X19jIik7CnZhciBwYXRpZW50SWQ9Y29udGFjdElkOyAvL1RPRE8KdmFyIHByb3ZpZGVySWQgPSBYKGRvYywgIlhfWlBBUEVSX19Qcm92aWRlcl9fYyIpOwp2YXIgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX0ZpcnN0TmFtZV9fYyIpOwp2YXIgcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiKTsKdmFyIHBhdGllbnRET0IgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKCi8vQ1JOMTgwMjE0IEp1ZHNvbiB3YW50cyB0aGlzIHRvIGJlIHBhcnQgb2YgdGhlIGF0dGFjaG1lbnQgbGFiZWwKdmFyIGZheFR5cGUgPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7CmFsZXJ0KCJAQEBAIFBhcmVudCBYX1pQQVBFUl9fZmF4VHlwZV9fYyA9ICIgKyBmYXhUeXBlKTsKCi8vIEdldCB0aGUgZG9jdW1lbnQgdHlwZSAod2lsbCBiZSB1c2VkIHRvIHJvdXRlIHRvIG5leHQgZm9sZGVyKQoKdmFyIGRvY1R5cGUgPSBYKGRvYywgIlhfRG9jdW1lbnRfVHlwZV9fYyIpOwppZiAoZmF4VHlwZSAhPT0gIiIgJiYgZmF4VHlwZS50b0xvd2VyQ2FzZSgpICE9ICJmYXgiKSBkb2NUeXBlPWZheFR5cGU7IC8vSlBCMTgwMDgwMyAjNTAyMjEgaGVscHMgd2l0aCBzcGxpdHMKdmFyIG5leHRGb2xkZXIgPSAiMjA1MDBUcmlhZ2UtUzIiOwkJCQkvLyBPdGhlciBmb2xkZXIgaXMgdGhlIGRlZmF1bHQKdmFyIHByZXZJbmRleFBhZ2VzID0gWChkb2MsICJYX2luZGV4ZWRQYWdlcyIpOwp2YXIgY3VySW5kZXhQYWdlcyA9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwppZiAocHJldkluZGV4UGFnZXMgJiYgcHJldkluZGV4UGFnZXMubGVuZ3RoID4gMCAmJiBjdXJJbmRleFBhZ2VzICYmIGN1ckluZGV4UGFnZXMubGVuZ3RoID4gMCkgewoJcHJldkluZGV4UGFnZXMgKz0gIiwiOwp9CmN1ckluZGV4UGFnZXMgPSBwcmV2SW5kZXhQYWdlcyArIGN1ckluZGV4UGFnZXM7CnZhciBhcnJPZlBhaXJzID0gW107CnZhciBjdXJYUmV2aWV3cyA9IFgoZG9jLCAiWF9yZXZpZXdzIik7CnZhciBwYXJlbnRJc1NpZ25lZCA9IGN1clhSZXZpZXdzICYmIGN1clhSZXZpZXdzLmluZGV4T2YoIlNpZ25lZCBieSBhZ2VudCIpID49IDA7CS8vSlBCMTkwMTE3IFByZXNlcnZlIHRoZSBwYXJlbnQncyBzaWduZWQgc3RhdHVzCmFyck9mUGFpcnMucHVzaCgiWF9pbmRleGVkUGFnZXMiLCBjdXJJbmRleFBhZ2VzKTsKaWYgKDE9PT0xKSB7IC8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcwogICAgdmFyIGJhPWRvYy5YKCJYX2J1dHRvbkFjdGlvbiIpKyIiOwogICAgYmE9YmEuc3Vic3RyaW5nKDErYmEubGFzdEluZGV4T2YoIiAiKSk7CiAgICBpZiAoIWJhLmVuZHNXaXRoKCJlZCIpICYmIGJhICE9PSAiIikgeyBiYSs9ImVkIjsgfSAvL0VSUzE4MDEwMyAjNDExNTUKICAgIGlmIChiYSAhPT0gIiIpIHsgLy9FUlMxODAxMDMgIzQxMTU1CiAgICAgICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIixiYSk7Ci8vICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsWChkb2MsIlhfcmV2aWV3cyIpK2JhKyIgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vSlBCMTkwMTE3IFdlIGRvbid0IG5lZWQgdG8gbWFyayB0aGUgcGFyZW50IGFzICJJbmRleGVkIiAvL0VSUzE3MDkwOSAjNDA1OTIKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7CiAgICB9Cn0KdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCJYX3NmU3RhY2tJZCIpOwppZiAoc2ZTdGFja0lkID09PSIiKSB7IC8vRVJTMTcwNzMxICM0MDU5MwogICAgWChkb2MsIlhfYXR0YWNoZWRUbyIpOwogICAgaWYgKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpID49IDApIHsKCQlhcnJPZlBhaXJzID0gW107IC8vSlBCMTgwNjI2IGFkZGVkIGFyck9mUGFpcnMKCQlhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhdHVzX19jIiwgIkluZGV4ZWQiKTsgLy9KUEIxODA2MjYgYWRkZWQgaW5kZXhlZCB0byBzdGF0dXMKCQlhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fU3RhZ2VfX2MiLCAiSW5kZXhlZCIpOyAvL0pQQjE4MDYyNiBhZGRlZCBpbmRleGVkIHRvIHN0YWdlCgkJaWYgKG5vdGVzKSB7CgkJCWFyck9mUGFpcnMucHVzaCgiTm90ZXNfX2MiLCBub3Rlcyk7IC8vSlBCMTgwNjI2IGFkZGVkIG5vdGVzCgkJfSAgLy9KUEIxODA3MTEgYWRkZWQgY3VybHkgYnJhY2UKCQlzZlN0YWNrSWQgPSBzZlN0YWNrSWQuc3Vic3RyaW5nKHNmU3RhY2tJZC5sYXN0SW5kZXhPZignLycpKzEpOwoJCWlmIChzZlN0YWNrSWQuaW5kZXhPZignLCcpID49IDApIHsgc2ZTdGFja0lkID0gc2ZTdGFja0lkLnN1YnN0cmluZygwLCBzZlN0YWNrSWQuaW5kZXhPZignLCcpKTsgfQogICAgfQoJdXBkYXRlU0ZSZWNvcmQoZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCBzZlN0YWNrSWQsIGFyck9mUGFpcnMpOyAvL0pQQjE4MDYyNiBhZGRlZCB1cGRhdGVTRlJlY29yZAp9CnZhciBhdHRhY2hQYXRoID0gWChkb2MsIlhfYXR0YWNoZWRUbyIpOwphbGVydCgiQEBAQEBAIEN1cnJlbnRseSBhdHRhY2hlZCB0byBaUEFQRVJfX3pTdGFja19fYyB3aXRoIElEOiAiICsgc2ZTdGFja0lkKTsKekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7CS8vSlBCMTgwNzEyIE1ha2Ugc3VyZSB0aGUgcHJvZ3JhbSBuYW1lIGlzIHNldCBjb3JyZWN0bHkKCi8qIFNQTElUIE9GRiBORVcgU05JUFBFVCBIRVJFICovCgp2YXIgcGFnZVJhbmdlID0gWChkb2MsIlhfaWR4UGFnZXMiKTsKdHJ5IHsKYWxlcnQoIkBAQEAgUGFyZW50IGRiSUQgPSAiICsgZG9jLmRiSUQpOwoJc3BsaXREb2N1bWVudEZvckluZGV4KGRvYywgImluZGV4IiwgcGFnZVJhbmdlKTsKCWFsZXJ0KCIjIyMjIENoaWxkIGRiSUQgPSAiICsgZG9jLmRiSUQpOwp9CmNhdGNoKGVycikgewoJYWxlcnQoIkVycm9yIHdoZW4gc3BsaXR0aW5nIGRvY3VtZW50OiAiICsgZXJyICsgIi4gQUJPUlRJTkcuLi4iKTsKCXJldHVybjsKfQphbGVydCgiQ2FzZSAnIitjYXNlSWQrIicgYW5kIGxlbj0iK2Nhc2VJZC5sZW5ndGgpOwoKLy8qCi8qIEFGVEVSIFRISVMgUE9JTlQsIFRIRSBET0MgV0lMTCBIT0xEIERBVEEgRk9SIE5FVyBTTklQUEVULCBOT1QgVEhFIFNUQUNLIFNOSVBQRVQgKi8KLy8qCgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIGEgbmV3IENhc2UgcmVjb3JkLCBpZiBpdCB3YXNuJ3QgcGFzc2VkIGluICovCnZhciBwcmlvcml0eT1YKGRvYywiWF9aUEFQRVJfX1ByaW9yaXR5X19jIik7IC8vRVJTMTcwNjI2CnZhciBsYWJlbDA9IiI7CnZhciB0cmlhZ2VUeXBlPWRvYy5kb2NUeXBlOwp2YXIgcGF0aWVudE5hbWU7CgovKiBBdHRhY2ggdGhlIHNwbGl0IGRvY3VtZW50IHRvIENvbnRhY3QgcmVjb3JkIGlmIHJlcXVpcmVkICovCmFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBhIENvbnRhY3Q/IGNvbnRhY3RJZCA9ICIgKyBjb250YWN0SWQpOwppZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwKSB7CgkKCWlmIChhdHRhY2hQYXRoLmluZGV4T2YoY29udGFjdElkKT09LTEpIGF0dGFjaFBhdGgrPSIsIitjb250YWN0SWQ7Cgl2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIkZpcnN0TmFtZSxMYXN0TmFtZSIsIG51bGwsIGNvbnRhY3RJZCk7IC8vSlBCMTgwODIwIGFkZHMgUGF0aWVudCBuYW1lICM1MTc3NgoJcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwoJcGF0aWVudExhc3ROYW1lID0gWChkb2MsICJMYXN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKCXBhdGllbnROYW1lID0gcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZTsKCWF0dGFjaChkb2MsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgY29udGFjdElkKTsKfQplbHNlIGlmIChwYXRpZW50Rmlyc3ROYW1lICYmIHBhdGllbnRGaXJzdE5hbWUubGVuZ3RoID4gMCAmJiBwYXRpZW50TGFzdE5hbWUgJiYgcGF0aWVudExhc3ROYW1lLmxlbmd0aCA+IDAgJiYgcGF0aWVudERPQiAmJiBwYXRpZW50RE9CLmxlbmd0aCA+IDApIHsKCXBhdGllbnROYW1lID0gcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZTsKCXZhciBjdGNBcnJPZlBhaXJzID0gW107CgljdGNBcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsIHBhdGllbnRGaXJzdE5hbWUpOwoJY3RjQXJyT2ZQYWlycy5wdXNoKCJMYXN0TmFtZSIsIHBhdGllbnRMYXN0TmFtZSk7CgljdGNBcnJPZlBhaXJzLnB1c2goIkJpcnRoRGF0ZSIsIHBhdGllbnRET0IpOwoJY29udGFjdElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkNvbnRhY3QiLCBsYWJlbDArIkluZGV4ZWQtIiArIHBhdGllbnROYW1lICsgIi0iICsgZmF4VHlwZSArICItIiArIHN0YWNrSWQsIGN0Y0Fyck9mUGFpcnMpOwoJaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjb250YWN0SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2NvbnRhY3RJZDsKCQoJYWxlcnQoIkBAQEBAQEAgTkVXIENPTlRBQ1QgQ1JFQVRFRCBXSVRIIElEOiAiICsgY29udGFjdElkKTsKCS8vIGNsZWFyIG91dCB0aGUgIk5ldyBQYXRpZW50IiBmaWVsZHMKCQoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9GaXJzdF9OYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CglhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjTGFiZWxlcl9QYXRpZW50X0xhc3RfTmFtZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI0xhYmVsZXJfUGF0aWVudF9Eb0JfX2MiICsgZHEgKyAiKS52YWwoIiArIGRxICsgIiIgKyBkcSArICIpOyAiKTsKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNMYWJlbGVyX1BhdGllbnRfRG9CX19jX3JlYWRhYmxlIiArIGRxICsgIikudmFsKCIgKyBkcSArICJOT05FIiArIGRxICsgIik7ICIpOwoJLy8gc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKCWFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQYXRpZW50X19jIiArIGRxICsgIikudmFsKCIgKyBkcSArIGNvbnRhY3RJZCArIGRxICsgIik7ICIpOwoJYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BhdGllbnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwYXRpZW50Rmlyc3ROYW1lICsgIiAiICsgcGF0aWVudExhc3ROYW1lICsgZHEgKyAiKTsgIik7Cn0KLy9KUEIxODAyMTUgbm93IGF0dGFjaCB0byBzdGFjayByZWNvcmQKYXR0YWNoKGRvYywgbGFiZWwwKyJJbmRleGVkLSIgKyBwYXRpZW50TmFtZSArICItIiArIGZheFR5cGUgKyAiLSIgKyBzdGFja0lkLCBzZlN0YWNrSWQpOwoKCmlmICghY2FzZUlkIHx8IDAgPT09IGNhc2VJZC5sZW5ndGgpIHsKCWFsZXJ0KCJAQEBAIGNyZWF0aW5nIG5ldyBDYXNlIik7CglhcnJPZlBhaXJzID0gW107CgkvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKCWFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgY29udGFjdElkKTsKCWFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKCWFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgWChkb2MsIlhfU3RhdHVzIikpOwoJYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyBGYXgiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwoJCglpZiAocHJvdmlkZXJJZCAmJiBwcm92aWRlcklkLmxlbmd0aCA+IDApIHsKCSAgICAvL0VSUzE4MDIyMyBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvdmlkZXJfX2MiLCBwcm92aWRlcklkKTsKCSAgICBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIHByb3ZpZGVySWQpOyAvL0VSUzE4MDIyMyAjNDYwMzYgUFVUIFlPVVIgSU5JVElBTFMhISEKCX0KCglpZiAoMT09MSkgeyAvL0VSUzE3MDUyMyAjMzcxNjIgYWZ0ZXIgZHJ5cnVuCgkJLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCgkJaWYgKHByaW9yaXR5ICE9ICJOb3JtYWwiKSBhcnJPZlBhaXJzLnB1c2goIlByaW9yaXR5Iixwcmlvcml0eSk7ICAvL0VSUzE3MDUyNCAjMzcxNjIgcHJpb3JpdHkgb24gQ2FzZQoJCWVsc2UgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOwoJCWFyck9mUGFpcnMucHVzaCgiT3JpZ2luIiwiRmF4Iik7Cgl9CgkvL25hbWU9IlhfWlBBUEVSX19QYXRpZW50X19jIgoJLy9uYW1lPSJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIgoJLy9uYW1lPSJYX1pQQVBFUl9fTGFzdE5hbWVfX2MiCgljYXNlSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ2FzZSIsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgYXJyT2ZQYWlycyk7CglhbGVydCgiQ3JlYXRlZCBDYXNlIHdpdGggSUQ6ICIgKyBjYXNlSWQpOwoJaWYgKGNhc2VJZCA9PSAibnVsbCIgfHwgY2FzZUlkID09ICJORVciKSBjYXNlSWQ9bnVsbDsgLy9FUlMxNzA2MjEgVE9ETyBuZWVkIGEgc3RhbmRhcmQKfQplbHNlIHsKCWFsZXJ0KCJAQEBAIGF0dGFjaGluZyB0byBleGlzdGluZyBDYXNlOiAiICsgY2FzZUlkKTsKCWF0dGFjaChkb2MsIGxhYmVsMCsiSW5kZXhlZC0iICsgcGF0aWVudE5hbWUgKyAiLSIgKyBmYXhUeXBlICsgIi0iICsgc3RhY2tJZCwgY2FzZUlkKTsKfQoKLy9BTjIwMTgwMjIyIGdldCB0aGUgQ2FzZSBOdW1lYmVyCnZhciBjYXNlTnVtYmVyID0gbnVsbDsKaWYgKGNhc2VJZCl7CiAgICB2YXIgY2FzZU51bWJlciA9IGdldFNGRmllbGQoZG9jLCAiQ2FzZSIsICJDYXNlTnVtYmVyIiwgbnVsbCwgY2FzZUlkKTsKfQoKaWYgKGF0dGFjaFBhdGguaW5kZXhPZihjYXNlSWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK2Nhc2VJZDsKCnZhciBhcnJPZlBhaXJzID0gW107CnZhciB6VHlwZT0iRmF4IjsgLy9FUlMxODA2MTIKaWYgKGZheFR5cGUgIT09ICIiICYmIGZheFR5cGUudG9Mb3dlckNhc2UoKSAhPSAiZmF4IikgelR5cGU9ZmF4VHlwZTsgLy9KUEIxODA4MDMgIzUwMjIxIGhlbHBzIHdpdGggc3BsaXRzCmFsZXJ0KCJAQEBAelR5cGU9Iit6VHlwZSk7CmFyck9mUGFpcnMucHVzaCh6cCsiZmF4VHlwZV9fYyIsIHpUeXBlKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGF0dXNfX2MiLCAiU3BsaXQgelN0YWNrIik7IC8vSlBCMTgwNzExIGFkZGVkIHpTdGFjawoKYWxlcnQoIkVSUzE4MDUwNSBkb2MuZGVsaXZlcmVkRnJvbT0iK2RvYy5kZWxpdmVyZWRGcm9tKTsKdmFyIGNoYW5uZWw9IkZheCI7IAppZiAoZG9jLmRlbGl2ZXJlZEZyb20uaW5kZXhPZigiQCIpPi0xIHx8IGRvYy5kZWxpdmVyZWRGcm9tLmluZGV4T2YoIi4iKT4tMSkge2NoYW5uZWw9IkVtYWlsIjt9IC8vRVJTMTgwNTA1ICM0ODEwMQplbHNlIGlmIChpc05hTihkb2MuZGVsaXZlcmVkRnJvbSkpIHtjaGFubmVsPSJTY2FuIjt9IC8vSlBCMTgwNzExIGFkZGVkIGlzTmFOKGRvYy5kZWxpdmVyZWRGcm9tCgkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJICAgCgkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCSAgCgphcnJPZlBhaXJzLnB1c2goenArIkNoYW5uZWxfX2MiLGNoYW5uZWwpOwphcnJPZlBhaXJzLnB1c2goenArImxhdGVzdEZheF9fYyIsIGZvcm1hdE5vdyk7CmFyck9mUGFpcnMucHVzaCh6cCsicmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsKYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwphcnJPZlBhaXJzLnB1c2goenArIlBhZ2VzX19jIiwgWChkb2MsICJYX3BhZ2VzIikpOwoKaWYgKHpEYXRhLmNhdGVnb3JpemVkUXVldWVJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5jYXRlZ29yaXplZFF1ZXVlSWQudHJpbSgpKTsgLy9FUlMxODA2MTUgdHJpbSgpIGluc3VyYW5jZSAKYWxlcnQoIiMjIyMgekRhdGEucHJvZ3JhbU5hbWU9KiIgK3pEYXRhLnByb2dyYW1OYW1lKyIqIHpEYXRhLlBST0dSQU1fWkNIQVJUQT0qIit6RGF0YS5QUk9HUkFNX1pDSEFSVEErIiogekRhdGEuUFJPR1JBTV9aUEFQWVJVUz0qIit6RGF0YS5QUk9HUkFNX1pQQVBZUlVTKyIqIHpEYXRhLlBST0dSQU1fWkNBUlRBKyoiK3pEYXRhLlBST0dSQU1fWkNBUlRBKyIqIHpEYXRhLlBST0dSQU1fVEVDSEZJREVSQT0qIit6RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQSsiKiB6RGF0YS5QUk9HUkFNX1RZU0FCUkk9KiIrekRhdGEuUFJPR1JBTV9UWVNBQlJJKTsgLy9KUEIxODA4MDggQWRkaW5nIDIgRFJVR1MgRk9SIHByb3NwZWN0IGRlbW8gcHJvZ3JhbU5hbWUKCQkJCQkJCQkJCQkJCSAgCnpEYXRhLnByb2dyYW1OYW1lID0gWChkb2MsIlhfWlBBUEVSX19DbGFzc2lmaWNhdGlvbl9fYyIpOyAvL0pQQjE4MDgyMCBhZGRlZCBmb3IgQ2xhc3NpZmljYXRpb24gIzUxNzk5CiAKaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSB6RGF0YS5QUk9HUkFNX1pDSEFSVEEpIHsKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiVXJnZW50Iik7IC8vSlBCMTgwNzExIGNoYW5nZWQgUFJPR1JBTV9aQ0hBUlRBCn0KZWxzZSBpZiAoekRhdGEucHJvZ3JhbU5hbWUgPT09IHpEYXRhLlBST0dSQU1fWlBBUFlSVVMpIHsKCWFyck9mUGFpcnMucHVzaCh6cCsiUHJpb3JpdHlfX2MiLCAiTWVkaXVtIik7IC8vSlBCMTgwNzExIGNoYW5nZWQgUFJPR1JBTV9aUEFQWVJVUwp9CmVsc2UgaWYgKHpEYXRhLnByb2dyYW1OYW1lID09PSB6RGF0YS5QUk9HUkFNX1pDQVJUQSkgewoJYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJDcml0aWNhbCIpOyAvL0pQQjE4MDcxMSBjaGFuZ2VkIFBST0dSQU1fWkNBUlRBCn0KZWxzZSBpZiAoekRhdGEucHJvZ3JhbU5hbWUgPT09IHpEYXRhLlBST0dSQU1fVEVDRklERVJBKSB7CglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlNwZWNpYWwiKTsgIC8vSlBCMTgwODA2IGFkZGVkIGZvciBpbmRpdmlkdWFsIGRlbW8KfQplbHNlIGlmICh6RGF0YS5wcm9ncmFtTmFtZSA9PT0gekRhdGEuUFJPR1JBTV9UWVNBQlJJKSB7CglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlN0YW5kYXJkIik7ICAvL0pQQjE4MDgwOCBhZGRlZCBmb3IgaW5kaXZpZHVhbCBkZW1vCn0KZWxzZSB7CglhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIk5vcm1hbCIpOwp9CmFsZXJ0KCIjIyMjIFpQQVBFUl9fQ2xhc3NpZmljYXRpb25fX2MgPSIrIHpEYXRhLnByb2dyYW1OYW1lKTsKCQkJCQkJCQkJCQkJCQkJCQkJCQkJIAoKYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLnByb2dyYW1OYW1lKTsgLy9KUEIxODA4MjAgYWRkZWQgQ2xhc3NpZmljYXRpb25fX2MgIzUxNzk5CmFyck9mUGFpcnMucHVzaCh6cCsiUHJvZ3JhbV9OYW1lX19jIiwgekRhdGEucHJvZ3JhbU5hbWUpOyAvL0pQQjE4MDgyMCBhZGRlZCBQcm9ncmFtX05hbWVfX2MgIzUxNzk5CmFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIixkb2MuZGVsaXZlcmVkVG8pOyAvL0VSUzE3MDYyOCBjYWxsZXIgaWQKYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CmFyck9mUGFpcnMucHVzaCh6cCsiU3RhZ2VfX2MiLCAiU3BsaXQiKTsgLy9FUlMxNzA3MzEgIzQwNTkzIC8vRVJTMTgwNjEyICM0NjA0MAphcnJPZlBhaXJzLnB1c2goenArIlBhcmVudF9fYyIsc2ZTdGFja0lkKTsgLy8vL0VSUzE4MDYxMiAjNDYwNDAgWlBBUEVSX19QYXJlbnRfX2MKLy9hcnJPZlBhaXJzLnB1c2goIlByb3ZpZGVyX0Z1bGxuYW1lX19jIiwgWChkb2MsICJYX1Byb3ZpZGVyX0Z1bGxuYW1lX19jIikpOyAvL0pQQjE4MDYwOCBhZGRlZCBwcm92aWRlciBmdWxsbmFtZQovL2Fyck9mUGFpcnMucHVzaCgiRmFjaWxpdHlfX2MiLCBYKGRvYywgIlhfRmFjaWxpdHlfX2MiKSk7IC8vSlBCMTgwNjA4IGFkZGVkIGZhY2lsaXR5Ci8vYXJyT2ZQYWlycy5wdXNoKCJDYXNlX051bWJlcl9fYyIsIFgoZG9jLCAiWF9DYXNlX051bWJlcl9fYyIpKTsgLy9KUEIxODA2MTMgYWRkZWQgY2FzZSBudW1iZXIKaWYgKG5vdGVzKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIk5vdGVzX19jIiwgbm90ZXMpOwp9CmlmIChwcm92aWRlcklkICYmIHByb3ZpZGVySWQubGVuZ3RoID4gMCkgewoJdmFyIHByb3ZpZGVyRmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkFjY291bnQiLCAiRmFjaWxpdHlfX2MsRmF4LFBob25lIiwgbnVsbCwgcHJvdmlkZXJJZCk7IC8vSlBCMTgwODIwIGFkZGVkIGFjY291bnQgaW5mbyBwcm92aWRlcklkICM1MTc3NQoJYXJyT2ZQYWlycy5wdXNoKCJGYWNpbGl0eV9fYyIsIFgoZG9jLCJGYWNpbGl0eV9fYyIscHJvdmlkZXJGbGRzKSk7IC8vSlBCMTgwODIwIGFkZGVkIGFjY291bnQgaW5mbyBmYWNpbGl0eSAjNTE3NzUKCWFyck9mUGFpcnMucHVzaCgiRmF4X19jIiwgWChkb2MsIkZheCIscHJvdmlkZXJGbGRzKSk7IC8vSlBCMTgwODIwIGFkZGVkIGFjY291bnQgaW5mbyBmYXggIzUxNzc1CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUGhvbmVfX2MiLCBYKGRvYywiUGhvbmUiLHByb3ZpZGVyRmxkcykpOyAvL0pQQjE4MDgyMCBhZGRlZCBhY2NvdW50IGluZm8gcGhvbmUgIzUxNzc1CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fUHJvdmlkZXJfX2MiLCBwcm92aWRlcklkKTsgLy9KUEIxODA4MjAgYWRkZWQgYWNjb3VudCBpbmZvIHByb3ZpZGVyIC8vRVJTMTkwMzA1CglpZiAoYXR0YWNoUGF0aC5pbmRleE9mKHByb3ZpZGVySWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3Byb3ZpZGVySWQ7Cn0KaWYgKHBhdGllbnRJZCAmJiBwYXRpZW50SWQubGVuZ3RoID4gMCkgewoJYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhdGllbnRfX2MiLCBwYXRpZW50SWQpOwoJaWYgKGF0dGFjaFBhdGguaW5kZXhPZihwYXRpZW50SWQpPT0tMSkgYXR0YWNoUGF0aCs9IiwiK3BhdGllbnRJZDsKfQppZiAoY2FzZUlkICYmIGNhc2VJZC5sZW5ndGggPiAwKSB7CglhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQ2FzZV9fYyIsIGNhc2VJZCk7Cn0KCnZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgelN0YWNrLCAielN0YWNrIHNwbGl0IG9uICIgKyBmb3JtYXROb3csIGFyck9mUGFpcnMpICsgIiI7IC8vRVJTMTgwNjEyICM0NjA0MCBKUEIxODA2MTYgYWRkZWQgeiB0byBTdGFjawphbGVydCgiIyMjIyBTdGFjayBSZWNlaXZlZC4gQXR0YWNoZWQgdG86ICIgKyBzZklkKTsKdmFyIGNoaWxkU3RhY2tOdW1iZXIgPSBnZXRTRkZpZWxkKGRvYywgelN0YWNrLCAiTmFtZSIsIG51bGwsIHNmSWQpOyAvL0pQQjE4MDYxMyBhZGRlZCBjaGlsZHN0YWNrbnVtYmVyCi8vYXR0YWNoKGRvYywgIkluZGV4ZWQtIitmb3JtYXROb3crIi0iK3RyaWFnZVR5cGUsIHNmU3RhY2tJZCk7CmFsZXJ0KCJAQEBAIHVwZGF0ZWQgYW5kIGF0dGFjaGVkIHRvIHpTdGFjayBSZWNvcmQsIGlkID0gIiArIHNmU3RhY2tJZCk7CgppZiAoMT09PTApIHsgLy9FUlMxNzA2MjcgVE9ETyByZWZhY3RvcgogICAgLy9DUk4xNzAyMDggSWYgd2UgaGF2ZSBhIENvbnRhY3QgYW5kIHRoZSB1c2VyIHNlbnQgYSBQcm92aWRlciwgYWRkIHRoZSBwcm92aWRlciB0byB0aGUgQ29udGFjdC4KICAgIHZhciBwcm92aWRlciA9IFgoZG9jLCAiWF9QcmltYXJ5X0NhcmVfUGh5c2ljaWFuX19jIik7CiAgICBpZiAoY29udGFjdElkICYmIGNvbnRhY3RJZC5sZW5ndGggPiAwICYmIHByb3ZpZGVyICYmIHByb3ZpZGVyLmxlbmd0aCA+IDApIHsKICAgIAlhcnJPZlBhaXJzID0gW107CiAgICAJYXJyT2ZQYWlycy5wdXNoKCJQcmltYXJ5X0NhcmVfUGh5c2ljaWFuX19jIiwgcHJvdmlkZXIpOwogICAgCXVwZGF0ZVNGUmVjb3JkKGRvYywiQ29udGFjdCIsY29udGFjdElkLGFyck9mUGFpcnMpOwogICAgfQp9Ci8vSlBCMTgwNzEyIFRoZSBuZXcgaWQgbXVzdCBiZSBmaXJzdCBpbiB0aGUgWF9hdHRhY2hlZFRvIGxpc3QgIzAwMDUwMTIxCmF0dGFjaFBhdGggPSBhdHRhY2hQYXRoLnN1YnN0cmluZygwLCBhdHRhY2hQYXRoLmxhc3RJbmRleE9mKCcvJykgKyAxKSArIHNmSWQgKyAiLCIgKyBhdHRhY2hQYXRoLnN1YnN0cmluZyhhdHRhY2hQYXRoLmxhc3RJbmRleE9mKCcvJykgKyAxKTsKCnVubG9ja0RvY3VtZW50KGRvYyk7Cm1vdmVEb2N1bWVudChkb2MsIG51bGwsIHBhcmVudEZvbGRlcik7CgphcnJPZlBhaXJzID0gW107Ci8vRVJTMTcwOTA5IGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsICJJbmRleGVkIik7CmlmICgxPT09MSAmJiAxPT09MCkgeyAvL0VSUzE3MDkwOSAjNDA1OTIgZm9yIHpEb2NTZXQgc3RhdHVzZXMgLy9FUlMxODAxMDMgIzQxMTU1IHNldCBhYm92ZQoKLy8gICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7CglhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCJJbmRleGVkIik7Ci8vICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIixYKGRvYywiWF9yZXZpZXdzIikrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy9FUlMxNzA5MDkgIzQwNTkyCiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uIiwiIik7Cn0KLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCnZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwphbGVydCgiQEBAQCBwYWdlQ291bnQgPSAiICsgcGFnZUNvdW50KTsKYXJyT2ZQYWlycy5wdXNoKCJYX3BhZ2VzIixwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goImRiLXBhZ2VzIixwYWdlQ291bnQpOwppZiAoIXBhdGllbnRGaXJzdE5hbWUgfHwgMCA9PSBwYXRpZW50Rmlyc3ROYW1lLmxlbmd0aCkgeyBwYXRpZW50Rmlyc3ROYW1lID0gIlVua25vd24iOyB9CmlmICghcGF0aWVudExhc3ROYW1lIHx8IDAgPT0gcGF0aWVudExhc3ROYW1lLmxlbmd0aCkgeyBwYXRpZW50TGFzdE5hbWUgPSAiTmFtZSI7IH0KCmFsZXJ0ICgiQEBAQEAgekRhdGEucHJvZ3JhbU5hbWUgPSAiKyB6RGF0YS5wcm9ncmFtTmFtZSk7CgphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICIgLSAiICsgekRhdGEucHJvZ3JhbU5hbWUgKyAiIC0gU3BsaXQgelN0YWNrICIgKyBjaGlsZFN0YWNrTnVtYmVyKTsgLy9KUEIxODA3MTEgcmVtb3ZlZCArIGNvbXBhbnlDb2RlICsgIiAtICIgKyBzdGFja0lkIGFkZGVkIG5ldyBTcGxpdCB6U3RhY2sgYW5kICsgekRhdGEucHJvZ3JhbU5hbWUgLy9KUEIxODA3MTIgYWRkZWQgc3BhY2UgYmV0d2VlbiBuYW1lCi8vSlBCMTkwMTIzIHdlIGNhbid0IGN1cnJlbnRseSB0ZWxsIHdoYXQgcGFnZXMgYXJlIHNpZ25lZCBzbyBkb24ndCBtYXJrIGFueSBvZiB0aGUgYXMgInNpZ25lZCIKLy92YXIgc2lnbmVkUmV2aWV3ID0gcGFyZW50SXNTaWduZWQgPyAiU2lnbmVkIGJ5IGFnZW50IGF0ICIgKyBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSkgKyAiPGJyLz4iIDogIiI7CS8vSlBCMTkwMTE3IElmIHRoZSBwYXJlbnQgd2FzIHNpZ25lZCwgdGhlIGNoaWxkIGlzIHNpZ25lZCBhbHNvLgphbGVydCgiQEBAQCBTZXR0aW5nIFhfZG9jVHlwZSB0bzogIiArIGZheFR5cGUpOwphcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsZmF4VHlwZSk7IC8vSlBCMTgwMjE1IGNoYW5nZWQgZG9jdHlwZSBhbmQgZmF4dHlwZSBuYW1lCmFyck9mUGFpcnMucHVzaCgiWF9aUEFQRVJfX2ZheFR5cGVfX2MiLGZheFR5cGUpOyAvL0pQQjE4MDIxNSBjaGFuZ2VkIGRvY3R5cGUgYW5kIGZheHR5cGUgbmFtZQphcnJPZlBhaXJzLnB1c2goIlhfc2ZTdGFja0lkIiwgc2ZJZCk7CS8vSlBCMTgwNzEyIE1ha2Ugc3VyZSB3ZSBoYXZlIHRoZSBjb3JyZWN0IHN0YWNrIElkIGluIHdkZGF0YSwgbm90IHRoZSBwYXJlbnQncyAjMDAwNTAxMjEKYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLGF0dGFjaFBhdGgpOyAvL0VSUzE3MDYyOAovL2Fyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIkluZGV4ZWQgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+IiArIHNpZ25lZFJldmlldyk7IC8vSlBCMTkwMTE3IHByZXNlcnZlIHBhcmVudCdzIHNpZ25lZCBzdGF0dXMvL0VSUzE3MDkwOSAjNDA1OTIgIC8vSlBCMTkwMTAzIHJlbW92ZWQgQkEgYW5kIGNoYW5nZWQgdG8gSW5kZXhlZCBjb3BpZWQgZnJvbSBTRklETyBydWxlCmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdzIiwgIkluZGV4ZWQgYnkgIitkb2Mua2JEYXRhLnJlbW90ZVVzZXIrIiBhdCAiK25vdzArIjxici8+Iik7IC8vSlBCMTkwMTIzIHdlIGNhbid0IGN1cnJlbnRseSB0ZWxsIHdoYXQgcGFnZXMgYXJlIHNpZ25lZCBzbyBkb24ndCBtYXJrIGFueSBvZiB0aGUgYXMgInNpZ25lZCIvL0VSUzE3MDkwOSAjNDA1OTIgIC8vSlBCMTkwMTAzIHJlbW92ZWQgQkEgYW5kIGNoYW5nZWQgdG8gSW5kZXhlZCBjb3BpZWQgZnJvbSBTRklETyBydWxlCgkJCQkJCQkJICAKdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwoKdHJhY2soZG9jLCAiRG9jIEluZGV4ZWQgIiwgIkRvY3VtZW50IHdpdGggSWQ6ICIgKyBkb2MuZGJJRCwgcGFnZUNvdW50KTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJuZXh0UGFnZSh+cmVhZHl+KTt1cGRhdGVERVN0YXR1cyh+aW5kZXhlZDoiICsgcGFnZVJhbmdlICsgIn4pOyIpOwoKLy9BTjIwMTgwMjIyIGdyYWIgdGhlIG5ldyBDYXNlIG51bWJlcgppZiAoY2FzZUlkICYmIGNhc2VOdW1iZXIpIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyQofiNaUEFQRVJfX0Nhc2VfX2N+KS52YWwofiIgKyBjYXNlSWQgKyAifik7ICQofiNaUEFQRVJfX0Nhc2VfX2NfQ2FzZU51bWJlcn4pLnZhbCh+IiArIGNhc2VOdW1iZXIgKyAifik7ICIpOwp9CgovL0FOMTgwMjIyIGdyYWIgdGhlIG5ldyBDb250YWN0IElECmlmIChjb250YWN0SWQgJiYgcGF0aWVudEZpcnN0TmFtZSAmJiBwYXRpZW50TGFzdE5hbWUpIHsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiOyQofiNaUEFQRVJfX1BhdGllbnRfX2N+KS52YWwofiIgKyBjb250YWN0SWQgKyAifik7ICQofiNaUEFQRVJfX1BhdGllbnRfX2NfTmFtZX4pLnZhbCh+IiArIHBhdGllbnRGaXJzdE5hbWUgKyAiICIgKyBwYXRpZW50TGFzdE5hbWUgKyAifik7ICIpOwp9CgovKiBlbmQgb2YgcnVsZSAqLw=="},"ordinal":9}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Index Rule Fired @@@#");
/* double-quote, newline characters */
var dq = String.fromCharCode(34);
var nl = String.fromCharCode(10);
var formatNow=getCurDateAndTime(doc);
var notes = doc.kbData.comments + "";   //CRN180619 Case #49437 Save any comments (notes) into the Notes__c field in the zStack
alert("@@@ NOTES: " + notes); //JPB180711 added NOTES

/* double-quote, newline characters */

var dq = String.fromCharCode(34); //JPB180626 added notes section line 9 thourgh 15
var nl = String.fromCharCode(10);
var formatNow=getCurDateAndTime(doc);
var notes = doc.kbData.comments + "";   //CRN180619 Case #49437 Save any comments (notes) into the Notes__c field in the zStack
alert("@@@ NOTES: " + notes);
var zp="ZPAPER__"; //ERS170626 now in the package
var zStack=zp+"zStack__c"; //"Stack__c"

var parentFolder = X(doc,"X_curFolder"); //JPB180626 added parentFolder
var stackId = X(doc, "X_stack");
var sfStackId = X(doc,"X_sfStackId");
if (sfStackId ==="") { //ERS170731 #40593
    X(doc,"X_attachedTo");
    if (sfStackId.lastIndexOf('/') >= 0) {
		sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/')+1);
		if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
}
var parentdbID = doc.dbID; //JPB180626 added doc.dbID
alert("@@@@ parent stack id = " + sfStackId);
var parentStackNumber = getSFField(doc, zStack, "Name", null, sfStackId); //JPB180626 added parentStackNumber
alert("#### Our parent stack number is " + parentStackNumber);
var stackFolder = stackId + "-STACK";
var companyCode = doc.deliveredTo;

/* Clear the trigger that invoked this rule */
//ERS170909 zData.clearTriggerCondition(doc,"X_buttonAction");
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

//CRN180214 Judson wants this to be part of the attachment label
var faxType = X(doc, "X_ZPAPER__faxType__c");
alert("@@@@ Parent X_ZPAPER__faxType__c = " + faxType);

// Get the document type (will be used to route to next folder)

var docType = X(doc, "X_Document_Type__c");
if (faxType !== "" && faxType.toLowerCase() != "fax") docType=faxType; //JPB1800803 #50221 helps with splits
var nextFolder = "20500Triage-S2";				// Other folder is the default
var prevIndexPages = X(doc, "X_indexedPages");
var curIndexPages = X(doc, "X_idxPages");
if (prevIndexPages && prevIndexPages.length > 0 && curIndexPages && curIndexPages.length > 0) {
	prevIndexPages += ",";
}
curIndexPages = prevIndexPages + curIndexPages;
var arrOfPairs = [];
var curXReviews = X(doc, "X_reviews");
var parentIsSigned = curXReviews && curXReviews.indexOf("Signed by agent") >= 0;	//JPB190117 Preserve the parent's signed status
arrOfPairs.push("X_indexedPages", curIndexPages);
if (1===1) { //ERS170909 #40592 for zDocSet statuses
    var ba=doc.X("X_buttonAction")+"";
    ba=ba.substring(1+ba.lastIndexOf(" "));
    if (!ba.endsWith("ed") && ba !== "") { ba+="ed"; } //ERS180103 #41155
    if (ba !== "") { //ERS180103 #41155
        var now0 = getCurDateAndTime(doc,false,true);
        arrOfPairs.push("X_reviewedStatus",ba);
//        arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //JPB190117 We don't need to mark the parent as "Indexed" //ERS170909 #40592
        arrOfPairs.push("X_buttonAction","");
    }
}
updateDB(doc,arrOfPairs);

var sfStackId = X(doc,"X_sfStackId");
if (sfStackId ==="") { //ERS170731 #40593
    X(doc,"X_attachedTo");
    if (sfStackId.lastIndexOf('/') >= 0) {
		arrOfPairs = []; //JPB180626 added arrOfPairs
		arrOfPairs.push("ZPAPER__Status__c", "Indexed"); //JPB180626 added indexed to status
		arrOfPairs.push("ZPAPER__Stage__c", "Indexed"); //JPB180626 added indexed to stage
		if (notes) {
			arrOfPairs.push("Notes__c", notes); //JPB180626 added notes
		}  //JPB180711 added curly brace
		sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/')+1);
		if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
	updateSFRecord(doc, "ZPAPER__zStack__c", sfStackId, arrOfPairs); //JPB180626 added updateSFRecord
}
var attachPath = X(doc,"X_attachedTo");
alert("@@@@@@ Currently attached to ZPAPER__zStack__c with ID: " + sfStackId);
zData.setbrandprogram(doc);	//JPB180712 Make sure the program name is set correctly

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
var priority=X(doc,"X_ZPAPER__Priority__c"); //ERS170626
var label0="";
var triageType=doc.docType;
var patientName;

/* Attach the split document to Contact record if required */
alert("@@@@ attaching to a Contact? contactId = " + contactId);
if (contactId && contactId.length > 0) {
	
	if (attachPath.indexOf(contactId)==-1) attachPath+=","+contactId;
	var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, contactId); //JPB180820 adds Patient name #51776
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
//JPB180215 now attach to stack record
attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, sfStackId);


if (!caseId || 0 === caseId.length) {
	alert("@@@@ creating new Case");
	arrOfPairs = [];
	//ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
	arrOfPairs.push("ContactId", contactId);
	arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__latestFax__c", formatNow); //JPB 170512 added these workflow fields
	arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //JPB 170512 added these workflow fields
	arrOfPairs.push("Status", X(doc,"X_Status"));
	arrOfPairs.push("Type", "New Fax"); //JPB 170512 added these workflow fields
	
	if (providerId && providerId.length > 0) {
	    //ERS180223 arrOfPairs.push("ZPAPER__Provider__c", providerId);
	    arrOfPairs.push("AccountId", providerId); //ERS180223 #46036 PUT YOUR INITIALS!!!
	}

	if (1==1) { //ERS170523 #37162 after dryrun
		//arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
		if (priority != "Normal") arrOfPairs.push("Priority",priority);  //ERS170524 #37162 priority on Case
		else arrOfPairs.push("Priority","Medium");
		arrOfPairs.push("Origin","Fax");
	}
	//name="X_ZPAPER__Patient__c"
	//name="X_ZPAPER__FirstName__c"
	//name="X_ZPAPER__LastName__c"
	caseId = createAndAttach(doc, "Case", label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, arrOfPairs);
	alert("Created Case with ID: " + caseId);
	if (caseId == "null" || caseId == "NEW") caseId=null; //ERS170621 TODO need a standard
}
else {
	alert("@@@@ attaching to existing Case: " + caseId);
	attach(doc, label0+"Indexed-" + patientName + "-" + faxType + "-" + stackId, caseId);
}

//AN20180222 get the Case Numeber
var caseNumber = null;
if (caseId){
    var caseNumber = getSFField(doc, "Case", "CaseNumber", null, caseId);
}

if (attachPath.indexOf(caseId)==-1) attachPath+=","+caseId;

var arrOfPairs = [];
var zType="Fax"; //ERS180612
if (faxType !== "" && faxType.toLowerCase() != "fax") zType=faxType; //JPB180803 #50221 helps with splits
alert("@@@@zType="+zType);
arrOfPairs.push(zp+"faxType__c", zType);
arrOfPairs.push(zp+"Status__c", "Split zStack"); //JPB180711 added zStack

alert("ERS180505 doc.deliveredFrom="+doc.deliveredFrom);
var channel="Fax"; 
if (doc.deliveredFrom.indexOf("@")>-1 || doc.deliveredFrom.indexOf(".")>-1) {channel="Email";} //ERS180505 #48101
else if (isNaN(doc.deliveredFrom)) {channel="Scan";} //JPB180711 added isNaN(doc.deliveredFrom
																													   
																																																																																													  

arrOfPairs.push(zp+"Channel__c",channel);
arrOfPairs.push(zp+"latestFax__c", formatNow);
arrOfPairs.push(zp+"receivedId__c", doc.dbID);
arrOfPairs.push(zp+"newFax__c", "true");
arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages"));

if (zData.categorizedQueueId) arrOfPairs.push("OwnerId",zData.categorizedQueueId.trim()); //ERS180615 trim() insurance 
alert("#### zData.programName=*" +zData.programName+"* zData.PROGRAM_ZCHARTA=*"+zData.PROGRAM_ZCHARTA+"* zData.PROGRAM_ZPAPYRUS=*"+zData.PROGRAM_ZPAPYRUS+"* zData.PROGRAM_ZCARTA+*"+zData.PROGRAM_ZCARTA+"* zData.PROGRAM_TECHFIDERA=*"+zData.PROGRAM_TECFIDERA+"* zData.PROGRAM_TYSABRI=*"+zData.PROGRAM_TYSABRI); //JPB180808 Adding 2 DRUGS FOR prospect demo programName
													  
zData.programName = X(doc,"X_ZPAPER__Classification__c"); //JPB180820 added for Classification #51799
 
if (zData.programName === zData.PROGRAM_ZCHARTA) {
	arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB180711 changed PROGRAM_ZCHARTA
}
else if (zData.programName === zData.PROGRAM_ZPAPYRUS) {
	arrOfPairs.push(zp+"Priority__c", "Medium"); //JPB180711 changed PROGRAM_ZPAPYRUS
}
else if (zData.programName === zData.PROGRAM_ZCARTA) {
	arrOfPairs.push(zp+"Priority__c", "Critical"); //JPB180711 changed PROGRAM_ZCARTA
}
else if (zData.programName === zData.PROGRAM_TECFIDERA) {
	arrOfPairs.push(zp+"Priority__c", "Special");  //JPB180806 added for individual demo
}
else if (zData.programName === zData.PROGRAM_TYSABRI) {
	arrOfPairs.push(zp+"Priority__c", "Standard");  //JPB180808 added for individual demo
}
else {
	arrOfPairs.push(zp+"Priority__c", "Normal");
}
alert("#### ZPAPER__Classification__c ="+ zData.programName);
																					 

arrOfPairs.push(zp+"Classification__c", zData.programName); //JPB180820 added Classification__c #51799
arrOfPairs.push(zp+"Program_Name__c", zData.programName); //JPB180820 added Program_Name__c #51799
arrOfPairs.push(zp+"sentFaxTo__c",doc.deliveredTo); //ERS170628 caller id
arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
arrOfPairs.push(zp+"Stage__c", "Split"); //ERS170731 #40593 //ERS180612 #46040
arrOfPairs.push(zp+"Parent__c",sfStackId); ////ERS180612 #46040 ZPAPER__Parent__c
//arrOfPairs.push("Provider_Fullname__c", X(doc, "X_Provider_Fullname__c")); //JPB180608 added provider fullname
//arrOfPairs.push("Facility__c", X(doc, "X_Facility__c")); //JPB180608 added facility
//arrOfPairs.push("Case_Number__c", X(doc, "X_Case_Number__c")); //JPB180613 added case number
if (notes) {
    arrOfPairs.push("Notes__c", notes);
}
if (providerId && providerId.length > 0) {
	var providerFlds = getSFFields(doc, "Account", "Facility__c,Fax,Phone", null, providerId); //JPB180820 added account info providerId #51775
	arrOfPairs.push("Facility__c", X(doc,"Facility__c",providerFlds)); //JPB180820 added account info facility #51775
	arrOfPairs.push("Fax__c", X(doc,"Fax",providerFlds)); //JPB180820 added account info fax #51775
	arrOfPairs.push("ZPAPER__Phone__c", X(doc,"Phone",providerFlds)); //JPB180820 added account info phone #51775
	arrOfPairs.push("ZPAPER__Provider__c", providerId); //JPB180820 added account info provider //ERS190305
	if (attachPath.indexOf(providerId)==-1) attachPath+=","+providerId;
}
if (patientId && patientId.length > 0) {
	arrOfPairs.push("ZPAPER__Patient__c", patientId);
	if (attachPath.indexOf(patientId)==-1) attachPath+=","+patientId;
}
if (caseId && caseId.length > 0) {
	arrOfPairs.push("ZPAPER__Case__c", caseId);
}

var sfId = createAndAttach(doc, zStack, "zStack split on " + formatNow, arrOfPairs) + ""; //ERS180612 #46040 JPB180616 added z to Stack
alert("#### Stack Received. Attached to: " + sfId);
var childStackNumber = getSFField(doc, zStack, "Name", null, sfId); //JPB180613 added childstacknumber
//attach(doc, "Indexed-"+formatNow+"-"+triageType, sfStackId);
alert("@@@@ updated and attached to zStack Record, id = " + sfStackId);

if (1===0) { //ERS170627 TODO refactor
    //CRN170208 If we have a Contact and the user sent a Provider, add the provider to the Contact.
    var provider = X(doc, "X_Primary_Care_Physician__c");
    if (contactId && contactId.length > 0 && provider && provider.length > 0) {
    	arrOfPairs = [];
    	arrOfPairs.push("Primary_Care_Physician__c", provider);
    	updateSFRecord(doc,"Contact",contactId,arrOfPairs);
    }
}
//JPB180712 The new id must be first in the X_attachedTo list #00050121
attachPath = attachPath.substring(0, attachPath.lastIndexOf('/') + 1) + sfId + "," + attachPath.substring(attachPath.lastIndexOf('/') + 1);

unlockDocument(doc);
moveDocument(doc, null, parentFolder);

arrOfPairs = [];
//ERS170909 arrOfPairs.push("X_reviewedStatus", "Indexed");
if (1===1 && 1===0) { //ERS170909 #40592 for zDocSet statuses //ERS180103 #41155 set above

//    var now0 = getCurDateAndTime(doc,false,true);
	arrOfPairs.push("X_reviewedStatus","Indexed");
//    arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
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

arrOfPairs.push("db-label", patientFirstName + " " + patientLastName + " - " + zData.programName + " - Split zStack " + childStackNumber); //JPB180711 removed + companyCode + " - " + stackId added new Split zStack and + zData.programName //JPB180712 added space between name
//JPB190123 we can't currently tell what pages are signed so don't mark any of the as "signed"
//var signedReview = parentIsSigned ? "Signed by agent at " + getCurDateAndTime(doc,false,true) + "<br/>" : "";	//JPB190117 If the parent was signed, the child is signed also.
alert("@@@@ Setting X_docType to: " + faxType);
arrOfPairs.push("X_docType",faxType); //JPB180215 changed doctype and faxtype name
arrOfPairs.push("X_ZPAPER__faxType__c",faxType); //JPB180215 changed doctype and faxtype name
arrOfPairs.push("X_sfStackId", sfId);	//JPB180712 Make sure we have the correct stack Id in wddata, not the parent's #00050121
arrOfPairs.push("X_attachedTo",attachPath); //ERS170628
//arrOfPairs.push("X_reviews", "Indexed by "+doc.kbData.remoteUser+" at "+now0+"<br/>" + signedReview); //JPB190117 preserve parent's signed status//ERS170909 #40592  //JPB190103 removed BA and changed to Indexed copied from SFIDO rule
arrOfPairs.push("X_reviews", "Indexed by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //JPB190123 we can't currently tell what pages are signed so don't mark any of the as "signed"//ERS170909 #40592  //JPB190103 removed BA and changed to Indexed copied from SFIDO rule
								  
updateDB(doc,arrOfPairs);

track(doc, "Doc Indexed ", "Document with Id: " + doc.dbID, pageCount);
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");

//AN20180222 grab the new Case number
if (caseId && caseNumber) {
    addPostExecutionScript(doc, ";$(~#ZPAPER__Case__c~).val(~" + caseId + "~); $(~#ZPAPER__Case__c_CaseNumber~).val(~" + caseNumber + "~); ");
}

//AN180222 grab the new Contact ID
if (contactId && patientFirstName && patientLastName) {
    addPostExecutionScript(doc, ";$(~#ZPAPER__Patient__c~).val(~" + contactId + "~); $(~#ZPAPER__Patient__c_Name~).val(~" + patientFirstName + " " + patientLastName + "~); ");
}

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
