<!--
// Name: zPaper OCRAD Library
// Committer: steve.rickus@zpaper.com
// Update: SHR190903 use the actual API key from kbData
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-09-03 17:41:27","evalContinue":"true","active":true,"button":"","name":"zPaper OCRAD Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotOCR","operation":"ne"}]},"consequence":{"doit":"Ly9FUlMxNzAzMjggdXNlIE9DUmVkIHRleHQgdG8gaWRlbnRpZnkgZG9jdW1lbnQgdHlwZSBlc3BlY2lhbGx5IHdoZW4gbm8gYmFyY29kZXMKLy9FUlMxOTA1MTMgQXV0b0RyaXZlICM1ODI4Nwp6RGF0YS5kb2NUeXBlcj1mdW5jdGlvbihkb2Msa2V5d29yZHMpIHsKCWFsZXJ0KCJkb2NUeXBlcjoga2V5d29yZHMgPSAiICsga2V5d29yZHMpOwogICAgdmFyIGtleXdvcmRzMj1rZXl3b3JkczsKICAgIGlmICgha2V5d29yZHMgJiYgekRhdGEua2V5d29yZHMpIGtleXdvcmRzMj16RGF0YS5rZXl3b3JkczsKICAgIGlmICgha2V5d29yZHMpIGtleXdvcmRzMj1bIkVOUkw6RW5yb2xsbWVudCIsIlBBOlByaW9yIEF1dGhvcml6YXRpb24iLCJURU5SOlN0YXJ0IEZvcm0iLCJURU5SOlRFQ0ZJREVSQSIsIlRFTlI6VEVDLVVTLTAyOTgiLCJTRU5SOlNQSU5SQVpBIiwiU0VOUjpTUFotVVMtMjY2VjUiLCJDSEs7Q2hlY2tsaXN0IiwiQ0hLOjM3NTMxMjgiLCJDSEs6aW5mdXNpb24iLCJDT046Q29uc2VudCIsIlJFRjpSZWZlcnJhbCIsIkZJTjpXLTIiLCJISVBBQTpISVBBQX4iLCJJQzpNRU1CRVIgSUR+IiwiT1RIOk90aGVyIl07IC8vSlBCMTgwODI4IGNoYW5nZWQgdG8gT1RIIE9USEVSIE4gIzQ4MzM3IGFuZCAjNDgzMzgKCWFsZXJ0KCJkb2NUeXBlcjoga2V5d29yZHMgPSAiICsga2V5d29yZHMpOwogICAgLy9KUEIxODA4MDggYWRkZWQgQ2hlY2tsaXN0CiAgICAvL0pQQjE4MDgwNiBhZGRlZCBTdGFydCBGb3JtIFRlY2ZpZGVyYSBhbmQgZm9ybSBudW1iZXIKICAgIC8vSlBCMTgxMDIyIGFkZGVkIFNwaW5yYXphCiAgICAvL2FsZXJ0KCJrZXl3b3JkczIubGVuZ3RoPSIra2V5d29yZHMyLmxlbmd0aCk7CiAgICAvL2FsZXJ0KCJrZXl3b3JkczIgPSAiK2tleXdvcmRzMlswXSsiLCIra2V5d29yZHMyWzFdKyIsIitrZXl3b3JkczJbIlJFRiJdKTsKICAgIC8vSlBCMTgxMDI1IHJlbW92ZWQgfiBmcm9tIGtleXdvcmRzIGFuZCBtb3ZlZCBFbnJvbGxtZW50IHRvIHRoZSBmaXJzdCBwb3NpdGlvbgogICAgLy9KUEIxOTAxMTcgY2hhbmdlZCBTVEFSVCB0byBURU5SIGFuZCBTRU5SIHRvIG1hdGNoIEVSUyBPQ1Igd29yawogICAgLy9KUEIxOTAyMjMgYWRkZWQgUEEgZm9yIFByaW9yIEF1dGhvcml6YXRpb24KICAgIHpEYXRhLmtleXdvcmRzPWtleXdvcmRzMjsKICAgIAogICAgZm9yICh2YXIgayBpbiBrZXl3b3JkczIpIHsKCQlhbGVydCgiayBpbiBrZXl3b3JkczIgPSAiICsgayk7CiAgICAgICAgdmFyIHBhcnRzPWtleXdvcmRzMltrXS5zcGxpdCgiOiIpOwogICAgICAgIHZhciB0ZXJtPXBhcnRzWzFdOwoJCWFsZXJ0KCJrZXl3b3JkIGF0IGsgPSAiICsga2V5d29yZHMyW2tdKTsKCQlhbGVydCgicGFydHMgPSAiICsgcGFydHMpOwogICAgICAgIGFsZXJ0KCJPQ1Igc3RpbGwgc2VhcmNoaW5nICIrdGVybSArICIgYSAiKyBwYXJ0c1swXSk7CiAgICAgICAgaWYgKHNlYXJjaEluZGV4KGRvYyxkb2MuZGJJRCx0ZXJtKS5pbmRleE9mKGRvYy5kYklEKT4tMSkgewoJCQlhbGVydCgiQEBAIHJldHVybmluZyBwYXJ0c1swXTogIiArIHBhcnRzWzBdKTsKCQkJcmV0dXJuIHBhcnRzWzBdOwoJCX0KICAgIH0KICAgIAogICAgcmV0dXJuICJVbmtub3duIjsgLy9KUEIxODA3MTIgY2hhbmdlZCB0byBVbmtub3duIGZyb20gZmF4ICM0ODMzNyBhbmQgIzQ4MzM4Cn07Cgp6RGF0YS5kb2NUeXBlT0NSPSJGQVgiOyAvL0VSUzE5MDExOCBpbnN1cmFuY2UgYWdhaW5zdCBydW5pbmcgdHdvIE9DUiBzdHJhdGVnaWVzCnpEYXRhLmRvY1R5cGVyMjAxNz1mdW5jdGlvbihkb2Msa2V5d29yZHMpIHsgcmV0dXJuIHpEYXRhLmRvY1R5cGVyKGRvYyxrZXl3b3Jkcyk7IH07Ci8vZnVuY3Rpb24gc2hvdyhvKSB7dmFyIHI9IiI7IGZvciAodmFyIGkgaW4gbykge3IrPWkrIjonIitvW2ldKyInLCI7fSByZXR1cm4gcjt9CmZ1bmN0aW9uIHNob3cobykge0pTT04uc3RyaW5naWZ5KG8pO30KCi8vRVJTMTkwMzA1IEhBQ0sgZm9yIHppcHBpIHRlc3RzIHpEYXRhLnppcHBpQVBJPWRvYy5rYkRhdGEuZ2V0WEFQSUtleSgpOwphbGVydCgiVXNpbmcgekRhdGEuemlwcGlBUEk9Iit6RGF0YS56aXBwaUFQSSk7CmlmICghekRhdGEuemlwcGlBUEkpIHsKICAgIC8vekRhdGEuemlwcGlBUEk9IkhmcjFlSVZhbjVhcUNEeEJac3dFUVlaNjFraUpDMExYUmM4Q0VHaHJEV2gyREV0WS9lMVg4TzJOM1ByZCtRUFAiOyAvL0VSUzE4MTIwMSB6cDA4IFRPRE8ga2JEYXRhCiAgICB6RGF0YS56aXBwaUFQST1kb2Mua2JEYXRhLnhBUElLZXk7IC8vU0hSMTkwOTAzIHVzZSB0aGUgYWN0dWFsIEFQSSBrZXkgZnJvbSBrYkRhdGEKfQp6RGF0YS5oZWFkZXJzPVsiWC1BUEktS2V5Iix6RGF0YS56aXBwaUFQSSwiWC1aLVNGdXNlciIsZG9jLmtiRGF0YS5yZW1vdGVVc2VyLCJBY2NlcHQiLCIqIl07IC8vRVJTMTgxMjAxIGZvciB3Z2V0IGNhbGxzIHRvIHppcHBpCi8vekRhdGEuaGVhZGVycz1bIlgtQVBJLUtleSIsekRhdGEuemlwcGlBUEksIlgtWi1TRnVzZXIiLGRvYy5rYkRhdGEucmVtb3RlVXNlciwiQWNjZXB0IiwiKiIsIkF1dGhvcml6YXRpb24iLCJCZWFyZXIgIiArIGRvYy5rYkRhdGEuc2ZTZXNzaW9uSURdOyAvL1NIUjE5MDkwMyBhZGRlZCByZWRkZXYgdG8gd2hpdGVsaXN0Ci8vRVJTMTkwOTAzICM2MTE5NiBhbHNvIGFkZCAiQXV0aG9yaXphdGlvbiIsIkJlYXJlciAiICsgZG9jLmtiRGF0YS5zZlNlc3Npb25JRAovL0NSTjE4MTIwNSBVbmRvaW5nIGhlYWRlciBjaGFuZ2VzIChjYW4gbm93IGF1dGhlbnRpY2F0ZSB2aWEgT0F1dGgpCi8vekRhdGEuaGVhZGVycz1bIkF1dGhvcml6YXRpb24iLCJCZWFyZXIgIiArIGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQsIkF1dGhVc2VyIixkb2Mua2JEYXRhLnJlbW90ZVVzZXIsIkF1dGhTZXJ2ZXIiLGRvYy5rYkRhdGEuc2ZTZXJ2ZXJdOyAvL0VSUzE4MTIwMSBmb3Igd2dldCBjYWxscyB0byB6aXBwaQp6RGF0YS5uclNlcnZlcj0iaHR0cHM6Ly9ucjE5LnpwYXBlci5jb20iOyAvL0VSUzE5MDMxOCBUT0RPIGludG8gY3VzdG9tIHNldHRpbmcgTzJPCnpEYXRhLm5yU2VydmVyPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tIjsgLy9FUlMxOTAzMTggVE9ETyBpbnRvIGN1c3RvbSBzZXR0aW5nIE8yTwoKekRhdGEuemlwcGlDb21wYXJlPWZ1bmN0aW9uKGRvYyxCQVRFUyxwYWdlKSB7Ci8vICAgIHZhciB6VVJMPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tL3JlZC96Q29tcGFyZS8iOwovL0NSTjE4MTIwNSBVcGRhdGluZyBzbyB0aGF0IHRoZSBydWxlIHdvcmtzIG9uIGR2MTkgc2VydmVyCiAgICB2YXIgelVSTD0iaHR0cHM6Ly9ucjE5LnpwYXBlci5jb20vcmVkL3pDb21wYXJlLyI7CiAgICB6VVJMPXpEYXRhLm5yU2VydmVyKyIvcmVkL3pDb21wYXJlLyI7IC8vRVJTMTkwMzE4IFRPRE8gYXNrIFN0ZXZlIHdoaWNoIC96Q29tcG9yZSB0byB1c2UKICAgIHZhciB0MD1uZXcgRGF0ZSgpOwogICAgLy92YXIgcmVzdWx0cz13Z2V0KHpVUkwrQkFURVMrIi8iK2RvY0lkKyIvIitwYWdlKyIvKiIse30seyJYLUFQSS1rZXkiOnpEYXRhLnppcHBpQVBJfSk7CiAgICBpZiAocGFnZSA9PT0gImFsbCIgfHwgcGFnZT09PSIqIikgewogICAgICAgIHZhciBhbGxUZXh0PWRvYy5yZWFkRmlsZSgidHh0RmlsZXMiLGRvYy5kYklEKyIudHh0Iik7CiAgICAgICAgdmFyIHBhZ2VUZXh0PWFsbFRleHQuc3BsaXQoIi0tLS0tLS0tICBQQUdFICAtLS0tLS0tLSIpOwogICAgICAgIHBhZ2U9IjEiOwogICAgICAgIGlmIChwYWdlVGV4dC5sZW5ndGggPiAxKSB7CiAgICAgICAgICAgIHBhZ2U9IiI7IAogICAgICAgICAgICBmb3IgKHZhciBwIGluIHBhZ2VUZXh0KSB7IAogICAgICAgICAgICAgICAgaWYgKHBhZ2VUZXh0W3BdLmxlbmd0aCA+IDIwMCkge3BhZ2UrPXArIiwiO30gZWxzZSB7YWxlcnQoInBhZ2UgIitwKyIgaGFzIGxpdHRsZSB0ZXh0LiAiK3BhZ2VUZXh0W3BdLmxlbmd0aCk7fQogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQogICAgaWYgKCgiIitwYWdlKS5pbmRleE9mKCIsIik+LTEpIHsgLy9FUlMxODEyMTAgSEFDSyB1bnRpbCBOUiBpcyBmaXhlZAogICAgICAgIHZhciByZXN1bHRzMDA3PXdnZXQoZG9jLHpVUkwrQkFURVMrIi8iK2RvYy5kYklEKyIvIitwYWdlKyIvKiIsW10sekRhdGEuaGVhZGVycyk7CiAgICAgICAgcGFnZT1wYWdlLnNwbGl0KCIsIilbMF07CiAgICB9CiAgICB2YXIgcmVzdWx0cz13Z2V0KGRvYyx6VVJMK0JBVEVTKyIvIitkb2MuZGJJRCsiLyIrcGFnZSsiLyoiLFtdLHpEYXRhLmhlYWRlcnMpOyAvL2tiRGF0YS5nZXRYQVBJS2V5KCkgYWxyZWFkeSBpbiB3Z2V0IG9yIGZsb3cKICAgIHZhciB0MT1uZXcgRGF0ZSgpOwogICAgYWxlcnQoIkVSUzE5MDkwMyByZXN1bHRzPSIrcmVzdWx0cysiIGhlYWRlcnM9Iit6RGF0YS5oZWFkZXJzKTsgLy9FUlMxOTA5MDMgY2hlY2sgaGVhZGVycwogICAgLy9FdmFsaW5nIHsiY29uZmlkZW5jZSI6OTYuODQ2MzA5ODg5Nzg4MTN9CiAgICAvL2lmIChyZXN1bHRzLmluZGV4T2YoInsiKT09PTApIHthbGVydCgiRXZhbGluZyAiK3Jlc3VsdHMpOyByZXN1bHRzPWV2YWwocmVzdWx0cy5yZXBsYWNlKCJ7XCIiLCJ7IikucmVwbGFjZSgiXCI6IiwiOiIpKTsgfQogICAgLy9pZiAocmVzdWx0cy5pbmRleE9mKCJ7Iik9PT0wKSB7cmVzdWx0cz1KU09OLnBhcnNlKHJlc3VsdHMpO30KICAgIGlmIChyZXN1bHRzKSB7IC8vU0hSMTkwOTAzIG1ha2Ugc3VyZSB3ZSBnb3QgYmFjayBzb21ldGhpbmcgYmVmb3JlIHBhcnNpbmcKICAgICAgICByZXN1bHRzPUpTT04ucGFyc2UocmVzdWx0cylbMF07IC8vU0hSMTgxMjA2IGFsd2F5cyBwYXJzZSBqc29uIHJlc3VsdHMgKHNob3VsZCBiZSBhbiBhcnJheSBvZiByZXN1bHRzKQogICAgfQogICAgaWYgKCFyZXN1bHRzKSByZXN1bHRzPXsnZG9jVHlwZSc6J0ZBWCcsJ2NvbmZpZGVuY2UnOjAsJ3BhZ2UnOnBhZ2UsJ3RlbXBsYXRlJzonRkFYJ307IC8vVE9ETyBmaXggaW4gTlIKICAgIC8qaWYgKDE9PT0wICYmICFyZXN1bHRzLmNvbmZpZGVuY2UgJiYgcmVzdWx0cy5pbmRleE9mKCciY29uZmRlbmNlIjonKT4tMSkgewogICAgICAgIHZhciB2PTMxLjQ1OTI3OyAKICAgICAgICB2PShyZXN1bHRzLnN1YnN0cmluZyhyZXN1bHRzLmluZGV4T2YoIjoiKSsxKS5yZXBsYWNlKCJ9IiwiIikrIjAiKS8xLjAwOyAvL0VSUzE4MTEyNCBDUk4gVE9ETyBleHBsYWluIEpTT04vSlMgaXNzdWVzCiAgICAgICAgdj1NYXRoLnJvdW5kKHYqMTApLzEwLjA7CiAgICAgICAgcmVzdWx0cz17Y29uZmlkZW5jZTp2fTsKICAgIH0qLwogICAgLy9yZXN1bHRzLmNvbmZpZGVuY2U9TWF0aC5yb3VuZChyZXN1bHRzLmNvbmZpZGVuY2UqMTApLzEwLjA7CiAgICByZXN1bHRzLmNvbmZpZGVuY2U9TWF0aC5yb3VuZChyZXN1bHRzLmNvbmZpZGVuY2UqMTAwMCkvMTAwMC4wOwogICAgYWxlcnQoInBhZ2UgIitwYWdlKyIgd2dldDQzOiAiKyh0MS5nZXRUaW1lKCktdDAuZ2V0VGltZSgpKSsibXMgZm9yICIrSlNPTi5zdHJpbmdpZnkocmVzdWx0cykrIiBjb25maWRlbmNlPSIrcmVzdWx0cy5jb25maWRlbmNlKTsKICAgIC8vaWYgKHJlc3VsdHMuaW5kZXhPZigieyIpPT09MCkgcmV0dXJuIGV2YWwocmVzdWx0cykuY29uZmlkZW5jZTsKICAgIHJldHVybiByZXN1bHRzOwp9OwoKekRhdGEuZXh0cmFjdERhdGE9ZnVuY3Rpb24oZG9jLGZpZWxkcyxCQVRFUyxwYWdlKSB7Ci8vICAgIHZhciB6VVJMPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tL3JlZC96RXh0cmFjdC8iOwovLyAgICB6VVJMPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tL3JlZC96RmllbGRzLyI7CiAgICB6VVJMPSJodHRwczovL25yMTkuenBhcGVyLmNvbS9yZWQvekZpZWxkcy8iOwogICAgelVSTD16RGF0YS5uclNlcnZlcisiL3JlZC96RmllbGRzLyI7IC8vRVJTMTkwMzE4IFRPRE8gYXNrIFN0ZXZlIHdoaWNoIC9yZWQgdG8gdXNlCiAgICB2YXIgdDA9bmV3IERhdGUoKTsKICAgIC8vdmFyIHJlc3VsdHM9d2dldCh6VVJMK0JBVEVTKyIvIitkb2NJZCsiLyIrcGFnZSsiLyoiLHt9LHsiWC1BUEkta2V5Ijp6RGF0YS56aXBwaUFQSX0pOwogICAgdmFyIHJlc3VsdHM9d2dldChkb2MselVSTCtCQVRFUysiLyIrZG9jLmRiSUQrIi8iK3BhZ2UrIi8qP2ZpbHRlcj0iK2ZpZWxkcyxbXSx6RGF0YS5oZWFkZXJzKTsgLy9rYkRhdGEuZ2V0WEFQSUtleSgpIGFscmVhZHkgaW4gd2dldCBvciBmbG93CiAgICB2YXIgdDE9bmV3IERhdGUoKTsKICAgIGFsZXJ0KCJ3Z2V0NTQ6ICIrKHQxLmdldFRpbWUoKS10MC5nZXRUaW1lKCkpKyJtcyBmb3IgIityZXN1bHRzKTsKICAgIC8vaWYgKHJlc3VsdHMuaW5kZXhPZigieyIpPT09MCkgcmV0dXJuIGV2YWwocmVzdWx0cykuY29uZmlkZW5jZTsKICAgIHJldHVybiBKU09OLnBhcnNlKHJlc3VsdHMpOwp9OwoKLy9FUlMxODExMjMgIzQ3NDA4IHpEYXRhLmRvY1R5cGVyKGRvYyxjb25maWRlbmNlLHRhcmdldHMpIFRPRE8gZmluZCBkb2NUeXBlIGZyb20gdGVtcGxhdGUgbWV0YWRhdGEKLy96RGF0YS5kb2NUeXBlcihkb2MsLjc1LCBbIlRFTlI6VGVjaWRlcmFFbnJvbGxtZW50X0Zvcm0iLCJFTlJMOnpDaGFydGFtRW5yb2xsbWVudENhcHR1cmVfRm9ybSIsIkNPTjp6Q2hhcnRhbUNvbnNlbnRfRm9ybSIsIkZBWDoiXSk7CnpEYXRhLmRvY1R5cGVyQUQ9ZnVuY3Rpb24oZG9jLGNvbmZpZGVuY2UsdGVtcGxhdGVzLHBtYXgpIHsgLy9FUlMxOTAxMTggQXV0b0RyaXZlIGlzIEFECiAgICB6RGF0YS5wYWdlcz1YKGRvYywiWF9wYWdlcyIpOyBpZiAoIXpEYXRhLnBhZ2VzKSB7ekRhdGEucGFnZXM9MTt9IC8vRVJTMTgxMTI0IFRPRE8gQ1JOIHRvIGFkZCB0byBkb2MKICAgIGlmICghcG1heCkge3BtYXg9MTA7fSBpZiAoekRhdGEucGFnZXMvMTxwbWF4KSB7cG1heD16RGF0YS5wYWdlcy8xfQogICAgdmFyIHN0YWNrQ29udGVudHM9W107CiAgICBzdGFja0NvbnRlbnRzWzFdPXsnZG9jVHlwZSc6J0ZBWCcsJ2NvbmZpZGVuY2UnOjEsJ3BhZ2UnOjEsJ3RlbXBsYXRlJzonRkFYJ307CiAgICB2YXIgcDA9MTsgIGlmIChwbWF4PjE1KSB7cG1heD03O30gLy9FUlMxODExMjQgZm9yIHRlc3RpbmdzIC8vRVJTMTgxMjEwIGlmID4gNSAvL0VSUzE5MDExOCA1IHRvIDE1IHBtYXggLy9FUlMxOTAzMTkgdG8gNwogICAgdmFyIGFsbFBhZ2VzPXAwOyBmb3IgKGk9cDArMTsgaTw9cG1heDsgaSsrKSB7YWxsUGFnZXMrPSIsIitpOyB9IC8vRVJTMTgxMjEwIFRPRE8gdHJ1c3QgYWxsUGFnZXM9ImFsbCI7CiAgICBmb3IgKHA9cDA7IHA8PXBtYXg7IHArKykgewogICAgICAgIGZvciAodmFyIHQgaW4gdGVtcGxhdGVzKSB7CiAgICAgICAgICAgIHZhciBwYXJ0cz10ZW1wbGF0ZXNbdF0uc3BsaXQoIjoiKTsKICAgICAgICAgICAgdmFyIEJBVEVTPXBhcnRzWzFdOwogICAgICAgICAgICAvL2FsZXJ0KCJPQ1Igc3RpbGwgc2VhcmNoaW5nICIrQkFURVMgKyAiIGEgIisgcGFydHNbMF0pOwogICAgICAgIAogICAgICAgICAgICAvL2lmICh6aXBwaUNvbXBhcmUoZG9jLEJBVEVTLHApPj1jb25maWRlbmNlKSByZXR1cm4gcGFydHNbMF07CiAgICAgICAgICAgIHZhciBjYWNoZWRQYWdlcz1wOyBpZiAocD09cDApIGNhY2hlZFBhZ2VzPWFsbFBhZ2VzOwogICAgICAgICAgICB2YXIgcj16RGF0YS56aXBwaUNvbXBhcmUoZG9jLEJBVEVTLGNhY2hlZFBhZ2VzKTsKICAgICAgICAgICAgYWxlcnQoIkpTT04gciAiK3IpOwogICAgICAgICAgICBpZiAociAmJiByLmNvbmZpZGVuY2UvMS4wID49IGNvbmZpZGVuY2UvMS4wKSB7CiAgICAgICAgICAgICAgICBhbGVydCgic2NbIitwKyJdPSIrcGFydHNbMV0pOwogICAgICAgICAgICAgICAgc3RhY2tDb250ZW50c1twXT17ZG9jVHlwZTpwYXJ0c1swXSxjb25maWRlbmNlOnIuY29uZmlkZW5jZSx0ZW1wbGF0ZTpwYXJ0c1sxXSwgcGFnZTpwfTsgLy9FUlMxODExMjQgVE9ETyBDUk4gc2luZ2xlIHF1b3Rlcz8KICAgICAgICAgICAgICAgIGJyZWFrOyAvL2dvdG8gdG8gbmV4dCBwYWdlCiAgICAgICAgICAgIH0gIC8vZWxzZSB7IGFsZXJ0KCJwYWdlICIrcCsiIHIuY29uZmlkZW5jZT0iK3IuY29uZmlkZW5jZSArIjwiK2NvbmZpZGVuY2UpOyB9CiAgICAgICAgfQogICAgfQogICAgCiAgICByZXR1cm4gc3RhY2tDb250ZW50czsKfTsK"},"ordinal":1}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS170328 use OCRed text to identify document type especially when no barcodes
//ERS190513 AutoDrive #58287
zData.docTyper=function(doc,keywords) {
	alert("docTyper: keywords = " + keywords);
    var keywords2=keywords;
    if (!keywords && zData.keywords) keywords2=zData.keywords;
    if (!keywords) keywords2=["ENRL:Enrollment","PA:Prior Authorization","TENR:Start Form","TENR:TECFIDERA","TENR:TEC-US-0298","SENR:SPINRAZA","SENR:SPZ-US-266V5","CHK;Checklist","CHK:3753128","CHK:infusion","CON:Consent","REF:Referral","FIN:W-2","HIPAA:HIPAA~","IC:MEMBER ID~","OTH:Other"]; //JPB180828 changed to OTH OTHER N #48337 and #48338
	alert("docTyper: keywords = " + keywords);
    //JPB180808 added Checklist
    //JPB180806 added Start Form Tecfidera and form number
    //JPB181022 added Spinraza
    //alert("keywords2.length="+keywords2.length);
    //alert("keywords2 = "+keywords2[0]+","+keywords2[1]+","+keywords2["REF"]);
    //JPB181025 removed ~ from keywords and moved Enrollment to the first position
    //JPB190117 changed START to TENR and SENR to match ERS OCR work
    //JPB190223 added PA for Prior Authorization
    zData.keywords=keywords2;
    
    for (var k in keywords2) {
		alert("k in keywords2 = " + k);
        var parts=keywords2[k].split(":");
        var term=parts[1];
		alert("keyword at k = " + keywords2[k]);
		alert("parts = " + parts);
        alert("OCR still searching "+term + " a "+ parts[0]);
        if (searchIndex(doc,doc.dbID,term).indexOf(doc.dbID)>-1) {
			alert("@@@ returning parts[0]: " + parts[0]);
			return parts[0];
		}
    }
    
    return "Unknown"; //JPB180712 changed to Unknown from fax #48337 and #48338
};

zData.docTypeOCR="FAX"; //ERS190118 insurance against runing two OCR strategies
zData.docTyper2017=function(doc,keywords) { return zData.docTyper(doc,keywords); };
//function show(o) {var r=""; for (var i in o) {r+=i+":'"+o[i]+"',";} return r;}
function show(o) {JSON.stringify(o);}

//ERS190305 HACK for zippi tests zData.zippiAPI=doc.kbData.getXAPIKey();
alert("Using zData.zippiAPI="+zData.zippiAPI);
if (!zData.zippiAPI) {
    //zData.zippiAPI="Hfr1eIVan5aqCDxBZswEQYZ61kiJC0LXRc8CEGhrDWh2DEtY/e1X8O2N3Prd+QPP"; //ERS181201 zp08 TODO kbData
    zData.zippiAPI=doc.kbData.xAPIKey; //SHR190903 use the actual API key from kbData
}
zData.headers=["X-API-Key",zData.zippiAPI,"X-Z-SFuser",doc.kbData.remoteUser,"Accept","*"]; //ERS181201 for wget calls to zippi
//zData.headers=["X-API-Key",zData.zippiAPI,"X-Z-SFuser",doc.kbData.remoteUser,"Accept","*","Authorization","Bearer " + doc.kbData.sfSessionID]; //SHR190903 added reddev to whitelist
//ERS190903 #61196 also add "Authorization","Bearer " + doc.kbData.sfSessionID
//CRN181205 Undoing header changes (can now authenticate via OAuth)
//zData.headers=["Authorization","Bearer " + doc.kbData.sfSessionID,"AuthUser",doc.kbData.remoteUser,"AuthServer",doc.kbData.sfServer]; //ERS181201 for wget calls to zippi
zData.nrServer="https://nr19.zpaper.com"; //ERS190318 TODO into custom setting O2O
zData.nrServer="https://reddev.zpaper.com"; //ERS190318 TODO into custom setting O2O

zData.zippiCompare=function(doc,BATES,page) {
//    var zURL="https://reddev.zpaper.com/red/zCompare/";
//CRN181205 Updating so that the rule works on dv19 server
    var zURL="https://nr19.zpaper.com/red/zCompare/";
    zURL=zData.nrServer+"/red/zCompare/"; //ERS190318 TODO ask Steve which /zCompore to use
    var t0=new Date();
    //var results=wget(zURL+BATES+"/"+docId+"/"+page+"/*",{},{"X-API-key":zData.zippiAPI});
    if (page === "all" || page==="*") {
        var allText=doc.readFile("txtFiles",doc.dbID+".txt");
        var pageText=allText.split("--------  PAGE  --------");
        page="1";
        if (pageText.length > 1) {
            page=""; 
            for (var p in pageText) { 
                if (pageText[p].length > 200) {page+=p+",";} else {alert("page "+p+" has little text. "+pageText[p].length);}
            }
        }
    }
    if ((""+page).indexOf(",")>-1) { //ERS181210 HACK until NR is fixed
        var results007=wget(doc,zURL+BATES+"/"+doc.dbID+"/"+page+"/*",[],zData.headers);
        page=page.split(",")[0];
    }
    var results=wget(doc,zURL+BATES+"/"+doc.dbID+"/"+page+"/*",[],zData.headers); //kbData.getXAPIKey() already in wget or flow
    var t1=new Date();
    alert("ERS190903 results="+results+" headers="+zData.headers); //ERS190903 check headers
    //Evaling {"confidence":96.84630988978813}
    //if (results.indexOf("{")===0) {alert("Evaling "+results); results=eval(results.replace("{\"","{").replace("\":",":")); }
    //if (results.indexOf("{")===0) {results=JSON.parse(results);}
    if (results) { //SHR190903 make sure we got back something before parsing
        results=JSON.parse(results)[0]; //SHR181206 always parse json results (should be an array of results)
    }
    if (!results) results={'docType':'FAX','confidence':0,'page':page,'template':'FAX'}; //TODO fix in NR
    /*if (1===0 && !results.confidence && results.indexOf('"confdence":')>-1) {
        var v=31.45927; 
        v=(results.substring(results.indexOf(":")+1).replace("}","")+"0")/1.00; //ERS181124 CRN TODO explain JSON/JS issues
        v=Math.round(v*10)/10.0;
        results={confidence:v};
    }*/
    //results.confidence=Math.round(results.confidence*10)/10.0;
    results.confidence=Math.round(results.confidence*1000)/1000.0;
    alert("page "+page+" wget43: "+(t1.getTime()-t0.getTime())+"ms for "+JSON.stringify(results)+" confidence="+results.confidence);
    //if (results.indexOf("{")===0) return eval(results).confidence;
    return results;
};

zData.extractData=function(doc,fields,BATES,page) {
//    var zURL="https://reddev.zpaper.com/red/zExtract/";
//    zURL="https://reddev.zpaper.com/red/zFields/";
    zURL="https://nr19.zpaper.com/red/zFields/";
    zURL=zData.nrServer+"/red/zFields/"; //ERS190318 TODO ask Steve which /red to use
    var t0=new Date();
    //var results=wget(zURL+BATES+"/"+docId+"/"+page+"/*",{},{"X-API-key":zData.zippiAPI});
    var results=wget(doc,zURL+BATES+"/"+doc.dbID+"/"+page+"/*?filter="+fields,[],zData.headers); //kbData.getXAPIKey() already in wget or flow
    var t1=new Date();
    alert("wget54: "+(t1.getTime()-t0.getTime())+"ms for "+results);
    //if (results.indexOf("{")===0) return eval(results).confidence;
    return JSON.parse(results);
};

//ERS181123 #47408 zData.docTyper(doc,confidence,targets) TODO find docType from template metadata
//zData.docTyper(doc,.75, ["TENR:TecideraEnrollment_Form","ENRL:zChartamEnrollmentCapture_Form","CON:zChartamConsent_Form","FAX:"]);
zData.docTyperAD=function(doc,confidence,templates,pmax) { //ERS190118 AutoDrive is AD
    zData.pages=X(doc,"X_pages"); if (!zData.pages) {zData.pages=1;} //ERS181124 TODO CRN to add to doc
    if (!pmax) {pmax=10;} if (zData.pages/1<pmax) {pmax=zData.pages/1}
    var stackContents=[];
    stackContents[1]={'docType':'FAX','confidence':1,'page':1,'template':'FAX'};
    var p0=1;  if (pmax>15) {pmax=7;} //ERS181124 for testings //ERS181210 if > 5 //ERS190118 5 to 15 pmax //ERS190319 to 7
    var allPages=p0; for (i=p0+1; i<=pmax; i++) {allPages+=","+i; } //ERS181210 TODO trust allPages="all";
    for (p=p0; p<=pmax; p++) {
        for (var t in templates) {
            var parts=templates[t].split(":");
            var BATES=parts[1];
            //alert("OCR still searching "+BATES + " a "+ parts[0]);
        
            //if (zippiCompare(doc,BATES,p)>=confidence) return parts[0];
            var cachedPages=p; if (p==p0) cachedPages=allPages;
            var r=zData.zippiCompare(doc,BATES,cachedPages);
            alert("JSON r "+r);
            if (r && r.confidence/1.0 >= confidence/1.0) {
                alert("sc["+p+"]="+parts[1]);
                stackContents[p]={docType:parts[0],confidence:r.confidence,template:parts[1], page:p}; //ERS181124 TODO CRN single quotes?
                break; //goto to next page
            }  //else { alert("page "+p+" r.confidence="+r.confidence +"<"+confidence); }
        }
    }
    
    return stackContents;
};

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
