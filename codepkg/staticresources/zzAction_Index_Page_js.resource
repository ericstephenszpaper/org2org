<!--
// Name: Index Page
// Committer: Prathyusha.vasireddy2zpaper.com
// Update: Updated the record type for person account Pv190718
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-07-19 23:34:38","active":true,"button":"Index","name":"Index Page","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Index","operation":"equals"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgSW5kZXggUnVsZSBGaXJlZCBAQEAjIik7IC8vRVJTMTkwNjE5IHVwZGF0ZSB0aGUgZmllbGRzIHVzZWQKLyogZG91YmxlLXF1b3RlLCBuZXdsaW5lIGNoYXJhY3RlcnMgKi8KdmFyIGRxID0gU3RyaW5nLmZyb21DaGFyQ29kZSgzNCk7CnZhciBubCA9IFN0cmluZy5mcm9tQ2hhckNvZGUoMTApOwp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKCi8qIE1TSDE3MTEzMCAjNDM2NDkgY3JlYXRlZCBkYXRlIGZvciBvcmlnaW5hbCBkb2MgKi8KdmFyIGRvY0NyZWF0ZWREYXRlID0gZ210Rm9ybWF0dGVkKGRvYywgImNyZWF0ZWQiKTsKdmFyIGF0dGFjaFBhdGggPSBYKGRvYywgIlhfYXR0YWNoZWRUbyIpOwoKdmFyIGFjY291bnRGaXJzdE5hbWU9IiI7CnZhciBhY2NvdW50TGFzdE5hbWUgPSIiOwp2YXIgcGF0aWVudERPQiA9ICIiOwp2YXIgcGF0aWVudElkID0gIiI7CnZhciBhY2NvdW50TmFtZSA9IiI7CnZhciBzdGFja0lkID0gWChkb2MsICJYX3N0YWNrIik7IC8velBhcGVyIGRiSUQKdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCAiWF9zZlN0YWNrSWQiKTsKdmFyIG9yZ0RvY0lkID0gZG9jLmRiSUQ7ICAvL1BWMDIyNjE4CmlmIChzZlN0YWNrSWQgPT09ICIiKSB7IC8vRVJTMTcwNzMxICM0MDU5MwogICAgLyogTVNIMTcwODE0IHRoaXMgZG9lc24ndCBkbyBhbnl0aGluZyB1c2VmdWwgWChkb2MsICJYX2F0dGFjaGVkVG8iKTsgKi8KICAgIC8qIE1TSDE3MTEyOSB3ZSBhbHJlYWR5IGdvdCBhdHRhY2hQYXRoLCB1c2UgaXQgc2ZTdGFja0lkID0gWChkb2MsICJYX2F0dGFjaGVkVG8iKTsgKi8KICAgIHNmU3RhY2tJZCA9IGF0dGFjaFBhdGg7CiAgICBpZiAoc2ZTdGFja0lkLmxhc3RJbmRleE9mKCcvJykgPj0gMCkgewogICAgICAgIHNmU3RhY2tJZCA9IHNmU3RhY2tJZC5zdWJzdHJpbmcoc2ZTdGFja0lkLmxhc3RJbmRleE9mKCcvJykgKyAxKTsKICAgICAgICBpZiAoc2ZTdGFja0lkLmluZGV4T2YoJywnKSA+PSAwKSB7IHNmU3RhY2tJZCA9IHNmU3RhY2tJZC5zdWJzdHJpbmcoMCwgc2ZTdGFja0lkLmluZGV4T2YoJywnKSk7IH0KICAgIH0KfQphbGVydCgiQEBAIEN1cnJlbnRseSBhdHRhY2hlZCB0byBaUEFQRVJfX3pTdGFja19fYyB3aXRoIHNmU3RhY2tJZDogIiArIHNmU3RhY2tJZCk7CgovL0FOMjAxODA3MTYgZm9yIGNvZGUgcmV2aWV3IC0gYXJlIHRoZXNlIHZhcmlhYmxlcyBhbmQgSUYgc3RhdGVtZW50IHN0aWxsIG5lZWRlZCwgc2luY2Ugd2UgYXJlIG5vIGxvbmdlciB1c2VyIGZvbGRlcnM/Cgp2YXIgc3RhY2tGb2xkZXIgPSBzdGFja0lkICsgIi1TVEFDSyI7Ci8qIENsZWFyIHRoZSB0cmlnZ2VyIHRoYXQgaW52b2tlZCB0aGlzIHJ1bGUgKi8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uKGRvYywgIlhfYnV0dG9uQWN0aW9uIik7CnZhciBpbmRleEluaXRpYWxpemVkID0gWChkb2MsICJYX2luZGV4SW5pdGlhbGl6ZWQiKTsKaWYgKCFpbmRleEluaXRpYWxpemVkIHx8IDAgPT09IGluZGV4SW5pdGlhbGl6ZWQubGVuZ3RoKSB7CiAgICBzdGFja0lkID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIHN0YWNrRm9sZGVyID0gc3RhY2tJZCArICItU1RBQ0siOwogICAgLyogTVNIMTcwODE0IG1pc21hdGNoZWQgcGFyYW0gbGlzdCAqLwogICAgLyogekRhdGEuaW5pdGlhbGl6ZVN0YWNrKGRvYywgc3RhY2tGb2xkZXIsIGNvbXBhbnlDb2RlLCBzdGFja0lkKTsgKi8KICAgIHpEYXRhLmluaXRpYWxpemVTdGFjayhkb2MsIHN0YWNrRm9sZGVyLCBzdGFja0lkKTsKfQoKdmFyIHBlcnNvbkFjY291bnRJZCA9IFgoZG9jLCAiWF9QZXJzb25fQWNjb3VudF9fYyIpOwoKYWxlcnQoIkBAQCBwZXJzb25BY2NvdW50SWQgPSAiICsgcGVyc29uQWNjb3VudElkKTsKLy8gUHYxOTA1MjAgYWRkZWQgdG8gY3JlYXRlIHBlcnNvbiBhY2NvdW50CmlmICghcGVyc29uQWNjb3VudElkKSB7CiAgICBhbGVydCgiQEBAIGNyZWF0aW5nIFBlcnNvbkFjY291bnQgQEBAIik7CiAgICBhY2NvdW50Rmlyc3ROYW1lID0gWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIik7CiAgICBhY2NvdW50TGFzdE5hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpOwogICAgdmFyIGFjY291bnRCaXJ0aERhdGUgPSBYKGRvYywgIlhfWlBBUEVSX19CaXJ0aGRhdGVfX2MiKTsKICAgIHZhciB6cEFyck9mUGFpcnMgPVtdOwogICAgenBBcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsICIwMTI2QTAwMDAwMEpFOHlRQUciKTsKICAgIC8venBBcnJPZlBhaXJzLnB1c2goIk5hbWUiLGFjY291bnRGaXJzdE5hbWUrIiAiK2FjY291bnRMYXN0TmFtZSk7Ly9QVjE5MDUzMAogICAgenBBcnJPZlBhaXJzLnB1c2goIkZpcnN0TmFtZSIsYWNjb3VudEZpcnN0TmFtZSk7Ly9QVjE5MDUzMAogICAgenBBcnJPZlBhaXJzLnB1c2goIkxhc3ROYW1lIixhY2NvdW50TGFzdE5hbWUpOy8vUFYxOTA1MzAKICAgIAogICAgenBBcnJPZlBhaXJzLnB1c2goIlBlcnNvbkJpcnRoZGF0ZSIsYWNjb3VudEJpcnRoRGF0ZSk7CgogICAgcGVyc29uQWNjb3VudElkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiQWNjb3VudCIsICJQZXJzb24gLSBBY2NvdW50IiwgenBBcnJPZlBhaXJzKTsKfQoKYWxlcnQoIkBAQCBBRlRFUiBDUkVBVElORyBQRVJTT05BQ0NPVU5UIik7CgogICAgdmFyIGFjY291bnRGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQWNjb3VudCIsICJOYW1lLFBlcnNvbkJpcnRoZGF0ZSIsIG51bGwsIHBlcnNvbkFjY291bnRJZCk7IC8vTVNIMTcwODE4IGFkZGVkIEJpcnRoZGF0ZQogICAgYWxlcnQoIkBAQCBjYWxsaW5nIFNGIGZvciBhY2NvdW50RmxkcyA6OiAiICsgYWNjb3VudEZsZHMpOwogICAgYWNjb3VudE5hbWUgPSBYKGRvYywgIk5hbWUiLCBhY2NvdW50Rmxkcyk7CiAgICAKICAgIHBhdGllbnRET0IgPSBYKGRvYywgIlBlcnNvbkJpcnRoZGF0ZSIsIGFjY291bnRGbGRzKTsKCnZhciBNTWRkWVlZWSA9IHpEYXRhLmZvcm1hdFRvZGF5TU1kZFlZWVkoKTsKLypNU0gxNzExMjkgd2UgYWxyZWFkeSBnb3QgZG9jVHlwZSwgdXNlIGl0IGF0dGFjaExhYmVsID0gcGF0aWVudEZpcnN0TmFtZSArIHBhdGllbnRMYXN0TmFtZSArICIgLSAiICsgWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikgKyAiIC0gIiArIE1NZGRZWVlZOyovCmF0dGFjaExhYmVsID0gYWNjb3VudE5hbWUgKyAiIC0gIiArIGRvY1R5cGUgKyAiIC0gIiArIE1NZGRZWVlZOwoKLyogR2V0IHRoZSBkb2N1bWVudCB0eXBlICh3aWxsIGJlIHVzZWQgdG8gcm91dGUgdG8gbmV4dCBmb2xkZXIpICovCnZhciBkb2NUeXBlID0gWChkb2MsICJYX2RvY1R5cGUiKTsKdmFyIGF0dGFjaExhYmVsID0gIiI7IC8qIE1TSDE3MDgxOCBmb3JtYXQgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiICovCgp2YXIgcHJldkluZGV4UGFnZXMgPSBYKGRvYywgIlhfaW5kZXhlZFBhZ2VzIik7CnZhciBjdXJJbmRleFBhZ2VzID0gWChkb2MsICJYX2lkeFBhZ2VzIik7CmlmIChwcmV2SW5kZXhQYWdlcyAmJiBwcmV2SW5kZXhQYWdlcy5sZW5ndGggPiAwICYmIGN1ckluZGV4UGFnZXMgJiYgY3VySW5kZXhQYWdlcy5sZW5ndGggPiAwKSB7CiAgICBwcmV2SW5kZXhQYWdlcyArPSAiLCI7Cn0KY3VySW5kZXhQYWdlcyA9IHByZXZJbmRleFBhZ2VzICsgY3VySW5kZXhQYWdlczsKdmFyIGFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4ZWRQYWdlcyIsIGN1ckluZGV4UGFnZXMpOwp1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwoKLyogU1BMSVQgT0ZGIE5FVyBTTklQUEVUIEhFUkUgKi8KdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCAiWF9pZHhQYWdlcyIpOwphbGVydCgiQEBAIHBhZ2VSYW5nZSA9ICIgKyBwYWdlUmFuZ2UpOwp2YXIgYXJyT2ZQYWlyczEgPSBbXTsgLy9QVjI4MDMxOSB1cGRhdGVkIGZvciBjb3B5IG9uIHNwbGl0CnZhciBwYWdlQ291bnQgPXpEYXRhLmNvdW50UGFnZXMoZG9jLCBwYWdlUmFuZ2UpOwovL3ZhciBwYWdlUmFuZ2UgPSAiMS0iICsgcGFnZUNvdW50OwogICAgYWxlcnQoIkBAQCBwYWdlUmFuZ2UgPT09ICIgKyBwYWdlUmFuZ2UpOwogICAKdmFyIG5ld0RiSWQgPSBzcGxpdERvY3VtZW50Rm9ySW5kZXgoZG9jLCAiaW5kZXgiLCBwYWdlUmFuZ2UsYXJyT2ZQYWlyczEpOwphbGVydCgiQEBAIGFmdGVyIHNwbGl0RG9jdW1lbnRGb3JJbmRleCIpOwphbGVydCgiQEBAIG5ld0RiSWQgPSAiICsgbmV3RGJJZCk7CgovKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCgovKiBNU0gxNzExMTUgIzQzNjEzICovCiBzZXREb2N1bWVudENvbnRleHQoZG9jLCBuZXdEYklkKTsKCmRvY1R5cGUgPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7CnpEYXRhLmRvY1R5cGUgPSBkb2NUeXBlOwphdHRhY2hMYWJlbCA9IHpEYXRhLm5hbWVGaWxlKGRvYyk7IC8vRVJTMTcwODI5ICM0MTI5OAoKYXR0YWNoTGFiZWwgPSBhY2NvdW50TmFtZSArICIgLSAiICsgZG9jVHlwZSArICIgLSAiICsgTU1kZFlZWVk7CgovL1BWMTkwNTI4IGNsZWFyIG91dCB0aGUgIk5ldyBQYXRpZW50IiBmaWVsZHMKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fRmlyc3ROYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0xhc3ROYW1lX19jIiArIGRxICsgIikudmFsKCIgKyBkcSArICIiICsgZHEgKyAiKTsgIik7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOy8vIFBWMTkwNTMxIHVwZGF0ZWQgdG8gY2xlYW4gdGhlIHRleHQgZmllbGRzCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNaUEFQRVJfX0JpcnRoZGF0ZV9fY19yZWFkYWJsZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyAiIiArIGRxICsgIik7ICIpOwoKLy9NU0gxNzA4Mjkgc2V0IHRoZSBQYXRpZW50IGxvb2t1cCBmaWVsZHMKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1pQQVBFUl9fUGF0aWVudF9fY19OYW1lIiArIGRxICsgIikudmFsKCIgKyBkcSArIGFjY291bnRGaXJzdE5hbWUgKyAiICIgKyBhY2NvdW50TGFzdE5hbWUgKyBkcSArICIpOyAiKTsKCmFyck9mUGFpcnMgPSBbXTsKCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19GaXJzdE5hbWVfX2MiLCBhY2NvdW50Rmlyc3ROYW1lKTsKYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0xhc3ROYW1lX19jIiwgYWNjb3VudExhc3ROYW1lKTsKaWYgKHBhdGllbnRET0IgJiYgcGF0aWVudERPQi5sZW5ndGggPiAwKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fQmlydGhkYXRlX19jIiwgcGF0aWVudERPQik7Cn0KCmFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgZG9jVHlwZSk7CgphbGVydCgiQEBAIHVwZGF0aW5nIG5ldyBzdGFjayB3aXRoIDo6ICIgKyBhcnJPZlBhaXJzKTsKdXBkYXRlU0ZSZWNvcmQoZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCBzZlN0YWNrSWQsIGFyck9mUGFpcnMpOwoKCmFyck9mUGFpcnMgPSBbXTsKCgphdHRhY2goZG9jLCBhdHRhY2hMYWJlbCwgcGVyc29uQWNjb3VudElkKTsKYXR0YWNoUGF0aCA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CmFyck9mUGFpcnMgPSBbXTsKLy9QdjE5MDUyMCB1cGRhdGUgcGVyc29uIGFjY291bnQgb24genN0YWNrCmlmIChwZXJzb25BY2NvdW50SWQgJiYgcGVyc29uQWNjb3VudElkLmxlbmd0aCA+IDApIHsKICAgIGFyck9mUGFpcnMucHVzaCgiUGVyc29uX0FjY291bnRfX2MiLCBwZXJzb25BY2NvdW50SWQpOwp9IAoKdXBkYXRlU0ZSZWNvcmQoZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCBzZlN0YWNrSWQsIGFyck9mUGFpcnMpOwoKYXR0YWNoKGRvYywgYXR0YWNoTGFiZWwsIHNmU3RhY2tJZCk7CmFsZXJ0KCJAQEAgdXBkYXRlZCBhbmQgYXR0YWNoZWQgdG8gelN0YWNrIFJlY29yZCwgaWQgPSAiICsgc2ZTdGFja0lkKTsKCmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBwZXJzb25BY2NvdW50SWQgKyBkcSArICIpOyAiKTsKYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICIgJCgiICsgZHEgKyAiI1BlcnNvbl9BY2NvdW50X19jX05hbWUiICsgZHEgKyAiKS52YWwoIiArIGRxICsgYWNjb3VudEZpcnN0TmFtZSArIiAiICthY2NvdW50TGFzdE5hbWUgKyBkcSArICIpOyAiKTsKCmFyck9mUGFpcnMgPSBbXTsKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIkluZGV4ZWQiKTsKLyogQ1JOMTYwODI1IFNldCB0aGUgcGFnZSBjb3VudCBzbyB0aGF0IGl0IGRvZXMgbm90IGhhdmUgdGhlIHBhcmVudCBwYWdlIGNvdW50ICovCiBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYywgcGFnZVJhbmdlKTsKYWxlcnQoIkBAQEAgcGFnZUNvdW50ID0gIiArIHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiWF9wYWdlcyIsIHBhZ2VDb3VudCk7CmFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgZG9jVHlwZSk7IC8qIE1TSDE3MDkyNyBnZXQgYWxsIHRoZSBkb2NUeXBlcyBhbGlnbmVkICovCmFyck9mUGFpcnMucHVzaCgiZGItcGFnZXMiLCBwYWdlQ291bnQpOwphcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsIGF0dGFjaFBhdGgpOyAvL0VSUzE3MDYyOAphcnJPZlBhaXJzLnB1c2goIlBlcnNvbl9BY2NvdW50X19jIiwgcGVyc29uQWNjb3VudElkKTsgLy8gUHYxOTA1MjAgdXBkYXRlIHBlcnNvbiBhY2NvdW50CmFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7IC8vQ1JOMTcxMTAyCgovL0NSTjE4MDcyNiBDYXNlICM1MDQ2OSAtLSBTZXQgdGhlICJJbmRleGVkIiBjaGVja2JveAp2YXIgYmEgPSAiSW5kZXhlZCI7IAp2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsKCmFyck9mUGFpcnMucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsYmEpOwphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIlJlY2VpdmVkIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIrYmErIiBieSAiK2RvYy5rYkRhdGEucmVtb3RlVXNlcisiIGF0ICIrbm93MCsiPGJyLz4iKTsgLy9QVjE5MDQyMCB1cGRhdGVkIGZvciBkb2Mgc2V0IGNvbXBvbmVudHMgdG8gY2hlY2sKdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKLy91bmxvY2tEb2N1bWVudChkb2MpOyAvLyBQVjE5MDYwMyB1cGRhdGVkIHRvIHVubG9jayB0aGUgZG9jCnRyYWNrKGRvYywgIkRvYyBJbmRleGVkICIsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHBhZ2VDb3VudCk7CmFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAibmV4dFBhZ2UofnJlYWR5fik7dXBkYXRlREVTdGF0dXMofmluZGV4ZWQ6IiArIHBhZ2VSYW5nZSArICJ+KTsiKTsKLyogZW5kIG9mIHJ1bGUgKi8="},"ordinal":6}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ Index Rule Fired @@@#"); //ERS190619 update the fields used
/* double-quote, newline characters */
var dq = String.fromCharCode(34);
var nl = String.fromCharCode(10);
var formatNow = getCurDateAndTime(doc);

/* MSH171130 #43649 created date for original doc */
var docCreatedDate = gmtFormatted(doc, "created");
var attachPath = X(doc, "X_attachedTo");

var accountFirstName="";
var accountLastName ="";
var patientDOB = "";
var patientId = "";
var accountName ="";
var stackId = X(doc, "X_stack"); //zPaper dbID
var sfStackId = X(doc, "X_sfStackId");
var orgDocId = doc.dbID;  //PV022618
if (sfStackId === "") { //ERS170731 #40593
    /* MSH170814 this doesn't do anything useful X(doc, "X_attachedTo"); */
    /* MSH171129 we already got attachPath, use it sfStackId = X(doc, "X_attachedTo"); */
    sfStackId = attachPath;
    if (sfStackId.lastIndexOf('/') >= 0) {
        sfStackId = sfStackId.substring(sfStackId.lastIndexOf('/') + 1);
        if (sfStackId.indexOf(',') >= 0) { sfStackId = sfStackId.substring(0, sfStackId.indexOf(',')); }
    }
}
alert("@@@ Currently attached to ZPAPER__zStack__c with sfStackId: " + sfStackId);

//AN20180716 for code review - are these variables and IF statement still needed, since we are no longer user folders?

var stackFolder = stackId + "-STACK";
/* Clear the trigger that invoked this rule */
zData.clearTriggerCondition(doc, "X_buttonAction");
var indexInitialized = X(doc, "X_indexInitialized");
if (!indexInitialized || 0 === indexInitialized.length) {
    stackId = new Date().getTime() + "";
    stackFolder = stackId + "-STACK";
    /* MSH170814 mismatched param list */
    /* zData.initializeStack(doc, stackFolder, companyCode, stackId); */
    zData.initializeStack(doc, stackFolder, stackId);
}

var personAccountId = X(doc, "X_Person_Account__c");

alert("@@@ personAccountId = " + personAccountId);
// Pv190520 added to create person account
if (!personAccountId) {
    alert("@@@ creating PersonAccount @@@");
    accountFirstName = X(doc, "X_ZPAPER__FirstName__c");
    accountLastName = X(doc, "X_ZPAPER__LastName__c");
    var accountBirthDate = X(doc, "X_ZPAPER__Birthdate__c");
    var zpArrOfPairs =[];
    zpArrOfPairs.push("RecordTypeId", "0126A000000JE8yQAG");
    //zpArrOfPairs.push("Name",accountFirstName+" "+accountLastName);//PV190530
    zpArrOfPairs.push("FirstName",accountFirstName);//PV190530
    zpArrOfPairs.push("LastName",accountLastName);//PV190530
    
    zpArrOfPairs.push("PersonBirthdate",accountBirthDate);

    personAccountId = createSFRecord(doc, "Account", "Person - Account", zpArrOfPairs);
}

alert("@@@ AFTER CREATING PERSONACCOUNT");

    var accountFlds = getSFFields(doc, "Account", "Name,PersonBirthdate", null, personAccountId); //MSH170818 added Birthdate
    alert("@@@ calling SF for accountFlds :: " + accountFlds);
    accountName = X(doc, "Name", accountFlds);
    
    patientDOB = X(doc, "PersonBirthdate", accountFlds);

var MMddYYYY = zData.formatTodayMMddYYYY();
/*MSH171129 we already got docType, use it attachLabel = patientFirstName + patientLastName + " - " + X(doc,"X_ZPAPER__faxType__c") + " - " + MMddYYYY;*/
attachLabel = accountName + " - " + docType + " - " + MMddYYYY;

/* Get the document type (will be used to route to next folder) */
var docType = X(doc, "X_docType");
var attachLabel = ""; /* MSH170818 format should be "Patient Name - Doc Type - Date" */

var prevIndexPages = X(doc, "X_indexedPages");
var curIndexPages = X(doc, "X_idxPages");
if (prevIndexPages && prevIndexPages.length > 0 && curIndexPages && curIndexPages.length > 0) {
    prevIndexPages += ",";
}
curIndexPages = prevIndexPages + curIndexPages;
var arrOfPairs = [];
arrOfPairs.push("X_indexedPages", curIndexPages);
updateDB(doc, arrOfPairs);

/* SPLIT OFF NEW SNIPPET HERE */
var pageRange = X(doc, "X_idxPages");
alert("@@@ pageRange = " + pageRange);
var arrOfPairs1 = []; //PV280319 updated for copy on split
var pageCount =zData.countPages(doc, pageRange);
//var pageRange = "1-" + pageCount;
    alert("@@@ pageRange === " + pageRange);
   
var newDbId = splitDocumentForIndex(doc, "index", pageRange,arrOfPairs1);
alert("@@@ after splitDocumentForIndex");
alert("@@@ newDbId = " + newDbId);

/* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */

/* MSH171115 #43613 */
 setDocumentContext(doc, newDbId);

docType = X(doc, "X_ZPAPER__faxType__c");
zData.docType = docType;
attachLabel = zData.nameFile(doc); //ERS170829 #41298

attachLabel = accountName + " - " + docType + " - " + MMddYYYY;

//PV190528 clear out the "New Patient" fields
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__FirstName__c" + dq + ").val(" + dq + "" + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__LastName__c" + dq + ").val(" + dq + "" + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Birthdate__c" + dq + ").val(" + dq + "" + dq + "); ");// PV190531 updated to clean the text fields
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Birthdate__c_readable" + dq + ").val(" + dq + "" + dq + "); ");

//MSH170829 set the Patient lookup fields
addPostExecutionScript(doc, " $(" + dq + "#ZPAPER__Patient__c_Name" + dq + ").val(" + dq + accountFirstName + " " + accountLastName + dq + "); ");

arrOfPairs = [];

arrOfPairs.push("ZPAPER__FirstName__c", accountFirstName);
arrOfPairs.push("ZPAPER__LastName__c", accountLastName);
if (patientDOB && patientDOB.length > 0) {
    arrOfPairs.push("ZPAPER__Birthdate__c", patientDOB);
}

arrOfPairs.push("ZPAPER__faxType__c", docType);

alert("@@@ updating new stack with :: " + arrOfPairs);
updateSFRecord(doc, "ZPAPER__zStack__c", sfStackId, arrOfPairs);


arrOfPairs = [];


attach(doc, attachLabel, personAccountId);
attachPath = X(doc, "X_attachedTo");
arrOfPairs = [];
//Pv190520 update person account on zstack
if (personAccountId && personAccountId.length > 0) {
    arrOfPairs.push("Person_Account__c", personAccountId);
} 

updateSFRecord(doc, "ZPAPER__zStack__c", sfStackId, arrOfPairs);

attach(doc, attachLabel, sfStackId);
alert("@@@ updated and attached to zStack Record, id = " + sfStackId);

addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c" + dq + ").val(" + dq + personAccountId + dq + "); ");
addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c_Name" + dq + ").val(" + dq + accountFirstName +" " +accountLastName + dq + "); ");

arrOfPairs = [];
arrOfPairs.push("X_reviewedStatus", "Indexed");
/* CRN160825 Set the page count so that it does not have the parent page count */
 pageCount = zData.countPages(doc, pageRange);
alert("@@@@ pageCount = " + pageCount);
arrOfPairs.push("X_pages", pageCount);
arrOfPairs.push("X_docType", docType); /* MSH170927 get all the docTypes aligned */
arrOfPairs.push("db-pages", pageCount);
arrOfPairs.push("X_attachedTo", attachPath); //ERS170628
arrOfPairs.push("Person_Account__c", personAccountId); // Pv190520 update person account
arrOfPairs.push("db-label", attachLabel); //CRN171102

//CRN180726 Case #50469 -- Set the "Indexed" checkbox
var ba = "Indexed"; 
var now0 = getCurDateAndTime(doc,false,true);

arrOfPairs.push("X_reviewedStatus",ba);
arrOfPairs.push("X_reviews","Received by "+doc.kbData.remoteUser+" at "+now0+"<br/>"+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //PV190420 updated for doc set components to check
updateDB(doc, arrOfPairs);
//unlockDocument(doc); // PV190603 updated to unlock the doc
track(doc, "Doc Indexed ", "Document with Id: " + doc.dbID, pageCount);
addPostExecutionScript(doc, "nextPage(~ready~);updateDEStatus(~indexed:" + pageRange + "~);");
/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
