<!--
// Name: AD 2020 OCR Library
// Committer: eric.stephens@zpaper.com
// Update: ERS201022 #76788 not the button you are looking for
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-10-22 17:58:37","evalContinue":"true","active":true,"button":"","name":"AD 2020 OCR Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotOCR","operation":"ne"}]},"consequence":{"doit":"Ly9FUlMxNzAzMjggdXNlIE9DUmVkIHRleHQgdG8gaWRlbnRpZnkgZG9jdW1lbnQgdHlwZSBlc3BlY2lhbGx5IHdoZW4gbm8gYmFyY29kZXMKLy9FUlMxOTA1MTMgQXV0b0RyaXZlICM1ODI4Nwp6RGF0YS5kb2NUeXBlcj1mdW5jdGlvbihkb2Msa2V5d29yZHMpIHsKCWFsZXJ0KCJkb2NUeXBlcjoga2V5d29yZHMgPSAiICsga2V5d29yZHMpOwogICAgdmFyIGtleXdvcmRzMj1rZXl3b3JkczsKICAgIGlmICgha2V5d29yZHMgJiYgekRhdGEua2V5d29yZHMpIGtleXdvcmRzMj16RGF0YS5rZXl3b3JkczsKICAgIGlmICgha2V5d29yZHMpIGtleXdvcmRzMj1bIkVOUkw6RW5yb2xsbWVudCIsIlBBOlByaW9yIEF1dGhvcml6YXRpb24iLCJURU5SOlN0YXJ0IEZvcm0iLCJURU5SOlRFQ0ZJREVSQSIsIlRFTlI6VEVDLVVTLTAyOTgiLCJTRU5SOlNQSU5SQVpBIiwiU0VOUjpTUFotVVMtMjY2VjUiLCJDSEs7Q2hlY2tsaXN0IiwiQ0hLOjM3NTMxMjgiLCJDSEs6aW5mdXNpb24iLCJDT046Q29uc2VudCIsIlJFRjpSZWZlcnJhbCIsIkZJTjpXLTIiLCJISVBBQTpISVBBQX4iLCJJQzpNRU1CRVIgSUR+IiwiT1RIOk90aGVyIl07IC8vSlBCMTgwODI4IGNoYW5nZWQgdG8gT1RIIE9USEVSIE4gIzQ4MzM3IGFuZCAjNDgzMzgKCWFsZXJ0KCJkb2NUeXBlcjoga2V5d29yZHMgPSAiICsga2V5d29yZHMpOwogICAgLy9KUEIxODA4MDggYWRkZWQgQ2hlY2tsaXN0CiAgICAvL0pQQjE4MDgwNiBhZGRlZCBTdGFydCBGb3JtIFRlY2ZpZGVyYSBhbmQgZm9ybSBudW1iZXIKICAgIC8vSlBCMTgxMDIyIGFkZGVkIFNwaW5yYXphCiAgICAvL2FsZXJ0KCJrZXl3b3JkczIubGVuZ3RoPSIra2V5d29yZHMyLmxlbmd0aCk7CiAgICAvL2FsZXJ0KCJrZXl3b3JkczIgPSAiK2tleXdvcmRzMlswXSsiLCIra2V5d29yZHMyWzFdKyIsIitrZXl3b3JkczJbIlJFRiJdKTsKICAgIC8vSlBCMTgxMDI1IHJlbW92ZWQgfiBmcm9tIGtleXdvcmRzIGFuZCBtb3ZlZCBFbnJvbGxtZW50IHRvIHRoZSBmaXJzdCBwb3NpdGlvbgogICAgLy9KUEIxOTAxMTcgY2hhbmdlZCBTVEFSVCB0byBURU5SIGFuZCBTRU5SIHRvIG1hdGNoIEVSUyBPQ1Igd29yawogICAgLy9KUEIxOTAyMjMgYWRkZWQgUEEgZm9yIFByaW9yIEF1dGhvcml6YXRpb24KICAgIHpEYXRhLmtleXdvcmRzPWtleXdvcmRzMjsKICAgIAogICAgZm9yICh2YXIgayBpbiBrZXl3b3JkczIpIHsKCQlhbGVydCgiayBpbiBrZXl3b3JkczIgPSAiICsgayk7CiAgICAgICAgdmFyIHBhcnRzPWtleXdvcmRzMltrXS5zcGxpdCgiOiIpOwogICAgICAgIHZhciB0ZXJtPXBhcnRzWzFdOwoJCWFsZXJ0KCJrZXl3b3JkIGF0IGsgPSAiICsga2V5d29yZHMyW2tdKTsKCQlhbGVydCgicGFydHMgPSAiICsgcGFydHMpOwogICAgICAgIGFsZXJ0KCJPQ1Igc3RpbGwgc2VhcmNoaW5nICIrdGVybSArICIgYSAiKyBwYXJ0c1swXSk7CiAgICAgICAgaWYgKHNlYXJjaEluZGV4KGRvYyxkb2MuZGJJRCx0ZXJtKS5pbmRleE9mKGRvYy5kYklEKT4tMSkgewoJCQlhbGVydCgiQEBAIHJldHVybmluZyBwYXJ0c1swXTogIiArIHBhcnRzWzBdKTsKCQkJcmV0dXJuIHBhcnRzWzBdOwoJCX0KICAgIH0KICAgIAogICAgcmV0dXJuICJVbmtub3duIjsgLy9KUEIxODA3MTIgY2hhbmdlZCB0byBVbmtub3duIGZyb20gZmF4ICM0ODMzNyBhbmQgIzQ4MzM4Cn07Cgp6RGF0YS5kb2NUeXBlT0NSPSJGQVgiOyAvL0VSUzE5MDExOCBpbnN1cmFuY2UgYWdhaW5zdCBydW5pbmcgdHdvIE9DUiBzdHJhdGVnaWVzCnpEYXRhLmRvY1R5cGVyMjAxNz1mdW5jdGlvbihkb2Msa2V5d29yZHMpIHsgcmV0dXJuIHpEYXRhLmRvY1R5cGVyKGRvYyxrZXl3b3Jkcyk7IH07Ci8vZnVuY3Rpb24gc2hvdyhvKSB7dmFyIHI9IiI7IGZvciAodmFyIGkgaW4gbykge3IrPWkrIjonIitvW2ldKyInLCI7fSByZXR1cm4gcjt9CmZ1bmN0aW9uIHNob3cobykge0pTT04uc3RyaW5naWZ5KG8pO30KCi8vRVJTMTkwMzA1IEhBQ0sgZm9yIHppcHBpIHRlc3RzIHpEYXRhLnppcHBpQVBJPWRvYy5rYkRhdGEuZ2V0WEFQSUtleSgpOwphbGVydCgiVXNpbmcgekRhdGEuemlwcGlBUEk9Iit6RGF0YS56aXBwaUFQSSk7CmlmICghekRhdGEuemlwcGlBUEkpIHsKICAgIC8vekRhdGEuemlwcGlBUEk9IkhmcjFlSVZhbjVhcUNEeEJac3dFUVlaNjFraUpDMExYUmM4Q0VHaHJEV2gyREV0WS9lMVg4TzJOM1ByZCtRUFAiOyAvL0VSUzE4MTIwMSB6cDA4IFRPRE8ga2JEYXRhCiAgICB6RGF0YS56aXBwaUFQST1kb2Mua2JEYXRhLnhBUElLZXk7IC8vU0hSMTkwOTAzIHVzZSB0aGUgYWN0dWFsIEFQSSBrZXkgZnJvbSBrYkRhdGEKfQppZiAoMT09PTAgfHwgIXpEYXRhLnppcHBpQVBJKSB7IC8vRVJTMTkwOTE2IHNob3VsZCBub3QgYmUgSFg0Ny9NbUtCL0h3RW1xa21HUDZmWXhMaDBQeWp3angKICAgIHpEYXRhLnppcHBpQVBJPSJIWDQ3L01tS0IvR3o4V0JjdXk1RGo1TVN0ZWRONE5ianJrcWRMQno5VjR3YTh5VW5ZZlZiRmc9PSI7IC8vRVJTMTkwOTEyIGdldCBTSFIgdG8gZXhwbGFpbiEhIQogICAgYWxlcnQoIkVSUzE5MDkxMiBTSFIgVE9ETyBnZXQgQVBJIGtleSBiZXN0IHByYWN0aWNlLiAgVXNpbmcgIit6RGF0YS56aXBwaUFQSSk7Cn0KaWYgKDE9PT0wKSB7IC8vRVJTMjAwOTE1ICM3NTM4MQogICAgekRhdGEuemlwcGlBUEk9Ii9rU1VWTnhzdVlUSGZKbEVVMUNaemVOYXFXWnlUOEVnbTRWK2RLNThKWUVhT2VTbmFiWnhIOG9jZnR6azRJblgiOyAvL0VSUzIwMDIyOSBIQUNLIEZPUiBISU1TUyAjNjEzNTcKfQoKekRhdGEuaGVhZGVycz1bIlgtQVBJLUtleSIsekRhdGEuemlwcGlBUEksIlgtWi1TRnVzZXIiLGRvYy5rYkRhdGEucmVtb3RlVXNlciwiQWNjZXB0IiwiKiJdOyAvL0VSUzE4MTIwMSBmb3Igd2dldCBjYWxscyB0byB6aXBwaQp6RGF0YS5oZWFkZXJzPVsiWC1BUEktS2V5Iix6RGF0YS56aXBwaUFQSSwiWC1aLVNGdXNlciIsZG9jLmtiRGF0YS5yZW1vdGVVc2VyLCJBdXRob3JpemF0aW9uIiwiQmVhcmVyICIgKyBkb2Mua2JEYXRhLnNmU2Vzc2lvbklEXTsgLy9FUlMyMDEwMjAgIzc1MzgxCi8vekRhdGEuaGVhZGVycz1bIlgtQVBJLUtleSIsekRhdGEuemlwcGlBUEksIlgtWi1TRnVzZXIiLGRvYy5rYkRhdGEucmVtb3RlVXNlciwiQWNjZXB0IiwiKiIsIkF1dGhvcml6YXRpb24iLCJCZWFyZXIgIiArIGRvYy5rYkRhdGEuc2ZTZXNzaW9uSURdOyAvL1NIUjE5MDkwMyBhZGRlZCByZWRkZXYgdG8gd2hpdGVsaXN0Ci8vRVJTMTkwOTAzICM2MTE5NiBhbHNvIGFkZCAiQXV0aG9yaXphdGlvbiIsIkJlYXJlciAiICsgZG9jLmtiRGF0YS5zZlNlc3Npb25JRAovL0NSTjE4MTIwNSBVbmRvaW5nIGhlYWRlciBjaGFuZ2VzIChjYW4gbm93IGF1dGhlbnRpY2F0ZSB2aWEgT0F1dGgpCi8vekRhdGEuaGVhZGVycz1bIkF1dGhvcml6YXRpb24iLCJCZWFyZXIgIiArIGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQsIkF1dGhVc2VyIixkb2Mua2JEYXRhLnJlbW90ZVVzZXIsIkF1dGhTZXJ2ZXIiLGRvYy5rYkRhdGEuc2ZTZXJ2ZXJdOyAvL0VSUzE4MTIwMSBmb3Igd2dldCBjYWxscyB0byB6aXBwaQp6RGF0YS5uclNlcnZlcj0iaHR0cHM6Ly9ucjE5LnpwYXBlci5jb20iOyAvL0VSUzE5MDMxOCBUT0RPIGludG8gY3VzdG9tIHNldHRpbmcgTzJPCnpEYXRhLm5yU2VydmVyPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tIjsgLy9FUlMxOTAzMTggVE9ETyBpbnRvIGN1c3RvbSBzZXR0aW5nIE8yTwp6RGF0YS5uclNlcnZlcj0iaHR0cHM6Ly9lZGdlLnpwYXBlci5jb20iOyAvL0VSUzE5MDkwOSBUT0RPIGdldCBmcm9tIFhfb3JnIHNldHRpbmdzCgp6RGF0YS56aXBwaUNvbXBhcmU9ZnVuY3Rpb24oZG9jLEJBVEVTLHBhZ2UpIHsKLy8gICAgdmFyIHpVUkw9Imh0dHBzOi8vcmVkZGV2LnpwYXBlci5jb20vcmVkL3pDb21wYXJlLyI7Ci8vQ1JOMTgxMjA1IFVwZGF0aW5nIHNvIHRoYXQgdGhlIHJ1bGUgd29ya3Mgb24gZHYxOSBzZXJ2ZXIKICAgIHZhciB6VVJMPSJodHRwczovL25yMTkuenBhcGVyLmNvbS9yZWQvekNvbXBhcmUvIjsKICAgIHpVUkw9ekRhdGEubnJTZXJ2ZXIrIi9yZWQvekNvbXBhcmUvIjsgLy9FUlMxOTAzMTggVE9ETyBhc2sgU3RldmUgd2hpY2ggL3pDb21wb3JlIHRvIHVzZQogICAgdmFyIHQwPW5ldyBEYXRlKCk7CiAgICAvL3ZhciByZXN1bHRzPXdnZXQoelVSTCtCQVRFUysiLyIrZG9jSWQrIi8iK3BhZ2UrIi8qIix7fSx7IlgtQVBJLWtleSI6ekRhdGEuemlwcGlBUEl9KTsKICAgIGlmIChwYWdlID09PSAiYWxsIiB8fCBwYWdlPT09IioiKSB7CiAgICAgICAgdmFyIGFsbFRleHQ9ZG9jLnJlYWRGaWxlKCJ0eHRGaWxlcyIsZG9jLmRiSUQrIi50eHQiKTsKICAgICAgICB2YXIgcGFnZVRleHQ9YWxsVGV4dC5zcGxpdCgiLS0tLS0tLS0gIFBBR0UgIC0tLS0tLS0tIik7CiAgICAgICAgcGFnZT0iMSI7CiAgICAgICAgaWYgKHBhZ2VUZXh0Lmxlbmd0aCA+IDEpIHsKICAgICAgICAgICAgcGFnZT0iIjsgCiAgICAgICAgICAgIGZvciAodmFyIHAgaW4gcGFnZVRleHQpIHsgCiAgICAgICAgICAgICAgICBpZiAocGFnZVRleHRbcF0ubGVuZ3RoID4gMjAwKSB7cGFnZSs9cCsiLCI7fSBlbHNlIHthbGVydCgicGFnZSAiK3ArIiBoYXMgbGl0dGxlIHRleHQuICIrcGFnZVRleHRbcF0ubGVuZ3RoKTt9CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICBpZiAoKCIiK3BhZ2UpLmluZGV4T2YoIiwiKT4tMSkgeyAvL0VSUzE4MTIxMCBIQUNLIHVudGlsIE5SIGlzIGZpeGVkCiAgICAgICAgdmFyIHJlc3VsdHMwMDc9d2dldChkb2MselVSTCtCQVRFUysiLyIrZG9jLmRiSUQrIi8iK3BhZ2UrIi8qIixbXSx6RGF0YS5oZWFkZXJzKTsKICAgICAgICBwYWdlPXBhZ2Uuc3BsaXQoIiwiKVswXTsKICAgIH0KICAgIHZhciByZXN1bHRzPXdnZXQoZG9jLHpVUkwrQkFURVMrIi8iK2RvYy5kYklEKyIvIitwYWdlKyIvKiIsW10sekRhdGEuaGVhZGVycyk7IC8va2JEYXRhLmdldFhBUElLZXkoKSBhbHJlYWR5IGluIHdnZXQgb3IgZmxvdwogICAgdmFyIHQxPW5ldyBEYXRlKCk7CiAgICBhbGVydCgiRVJTMTkwOTAzIHJlc3VsdHM9IityZXN1bHRzKyIgaGVhZGVycz0iK3pEYXRhLmhlYWRlcnMpOyAvL0VSUzE5MDkwMyBjaGVjayBoZWFkZXJzCiAgICAvL0V2YWxpbmcgeyJjb25maWRlbmNlIjo5Ni44NDYzMDk4ODk3ODgxM30KICAgIC8vaWYgKHJlc3VsdHMuaW5kZXhPZigieyIpPT09MCkge2FsZXJ0KCJFdmFsaW5nICIrcmVzdWx0cyk7IHJlc3VsdHM9ZXZhbChyZXN1bHRzLnJlcGxhY2UoIntcIiIsInsiKS5yZXBsYWNlKCJcIjoiLCI6IikpOyB9CiAgICAvL2lmIChyZXN1bHRzLmluZGV4T2YoInsiKT09PTApIHtyZXN1bHRzPUpTT04ucGFyc2UocmVzdWx0cyk7fQogICAgaWYgKHJlc3VsdHMpIHsgLy9TSFIxOTA5MDMgbWFrZSBzdXJlIHdlIGdvdCBiYWNrIHNvbWV0aGluZyBiZWZvcmUgcGFyc2luZwogICAgICAgIHJlc3VsdHM9SlNPTi5wYXJzZShyZXN1bHRzKTsgLy9TSFIxODEyMDYgYWx3YXlzIHBhcnNlIGpzb24gcmVzdWx0cyAoc2hvdWxkIGJlIGFuIGFycmF5IG9mIHJlc3VsdHMpCiAgICAgICAgYWxlcnQoIkBAQCByZXN1bHRzIGZyb20gd2dldCA9ICIgKyByZXN1bHRzKTsKCQlyZXN1bHRzPXJlc3VsdHNbMF07IC8vU0hSMTgxMjA2IGFsd2F5cyBwYXJzZSBqc29uIHJlc3VsdHMgKHNob3VsZCBiZSBhbiBhcnJheSBvZiByZXN1bHRzKQogICAgfQogICAgaWYgKCFyZXN1bHRzKSByZXN1bHRzPXsnZG9jVHlwZSc6J0ZBWCcsJ2NvbmZpZGVuY2UnOjAsJ3BhZ2UnOnBhZ2UsJ3RlbXBsYXRlJzonRkFYJ307IC8vVE9ETyBmaXggaW4gTlIKICAgIC8qaWYgKDE9PT0wICYmICFyZXN1bHRzLmNvbmZpZGVuY2UgJiYgcmVzdWx0cy5pbmRleE9mKCciY29uZmRlbmNlIjonKT4tMSkgewogICAgICAgIHZhciB2PTMxLjQ1OTI3OyAKICAgICAgICB2PShyZXN1bHRzLnN1YnN0cmluZyhyZXN1bHRzLmluZGV4T2YoIjoiKSsxKS5yZXBsYWNlKCJ9IiwiIikrIjAiKS8xLjAwOyAvL0VSUzE4MTEyNCBDUk4gVE9ETyBleHBsYWluIEpTT04vSlMgaXNzdWVzCiAgICAgICAgdj1NYXRoLnJvdW5kKHYqMTApLzEwLjA7CiAgICAgICAgcmVzdWx0cz17Y29uZmlkZW5jZTp2fTsKICAgIH0qLwogICAgLy9yZXN1bHRzLmNvbmZpZGVuY2U9TWF0aC5yb3VuZChyZXN1bHRzLmNvbmZpZGVuY2UqMTApLzEwLjA7CiAgICByZXN1bHRzLmNvbmZpZGVuY2U9TWF0aC5yb3VuZChyZXN1bHRzLmNvbmZpZGVuY2UqMTAwMCkvMTAwMC4wOwogICAgcmVzdWx0cy5vcmllbnQ9MDsKICAgIGlmIChyZXN1bHRzLmNvbmZpZGVuY2UgPiAwLjUgJiYgcmVzdWx0cy50cmFuc2Zvcm0gJiYgcmVzdWx0cy50cmFuc2Zvcm1bMF0gJiYgcmVzdWx0cy50cmFuc2Zvcm1bMF1bMF0pIHsgLy9FUlMyMDA3MTUgIzc0NzI5CiAgICAgICAgcmVzdWx0cy5vcmllbnQ9cmVzdWx0cy50cmFuc2Zvcm1bMF1bMF07CiAgICB9CiAgICBhbGVydCgiRVJTMjAwNzA0IG9yaWVudD0iK3Jlc3VsdHMub3JpZW50KTsgLy9FUlMyMDA3MDQgIzcyNDMzIC8vRVJTMjAwOTE1ICM3NTM4MQogICAgYWxlcnQoInBhZ2UgIitwYWdlKyIgd2dldDQzOiAiKyh0MS5nZXRUaW1lKCktdDAuZ2V0VGltZSgpKSsibXMgZm9yICIrSlNPTi5zdHJpbmdpZnkocmVzdWx0cykrIiBjb25maWRlbmNlPSIrcmVzdWx0cy5jb25maWRlbmNlKTsKICAgIC8vaWYgKHJlc3VsdHMuaW5kZXhPZigieyIpPT09MCkgcmV0dXJuIGV2YWwocmVzdWx0cykuY29uZmlkZW5jZTsKICAgIHJldHVybiByZXN1bHRzOwp9OwoKekRhdGEuZXh0cmFjdERhdGE9ZnVuY3Rpb24oZG9jLGZpZWxkcyxCQVRFUyxwYWdlKSB7Ci8vICAgIHZhciB6VVJMPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tL3JlZC96RXh0cmFjdC8iOwovLyAgICB6VVJMPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tL3JlZC96RmllbGRzLyI7CiAgICB6VVJMPSJodHRwczovL25yMTkuenBhcGVyLmNvbS9yZWQvekZpZWxkcy8iOwogICAgelVSTD16RGF0YS5uclNlcnZlcisiL3JlZC96RmllbGRzLyI7IC8vRVJTMTkwMzE4IFRPRE8gYXNrIFN0ZXZlIHdoaWNoIC9yZWQgdG8gdXNlIFRISVMgSlVTVCBUSEUgREFUQSAvL0VSUzIwMTAyMiAjNzY3ODgKICAgIC8vVEhJUyBJUyBNT1JFIFRIRSBCVVRUT04gelVSTD16RGF0YS5uclNlcnZlcisiL3JlZC96RXh0cmFjdC8iOyAvL0VSUzIwMTAxOSAjNzUzODEgdG90YWwgY29uZnVzZWQgekZpZWxkcyBpcyBqdXN0IG1ldGFkYXRhCiAgICB2YXIgdDA9bmV3IERhdGUoKTsKICAgIC8vdmFyIHJlc3VsdHM9d2dldCh6VVJMK0JBVEVTKyIvIitkb2NJZCsiLyIrcGFnZSsiLyoiLHt9LHsiWC1BUEkta2V5Ijp6RGF0YS56aXBwaUFQSX0pOwogICAgLy9pZiAoQkFURVM9PT0iQXV0b0RyaXZlRW5yb2xsbWVudF9Gb3JtIikgeyBCQVRFUz0iMjA0MDA3ZTRaMWRraml0MXI1IjsgfSAvL0VSUzIwMTAxOSBIQUNLIFNIUiB0byBmaXggIzc1MzgxCiAgICAvL2lmIChCQVRFUz09PSJ6Q0FSVGFISVBBQTE5X0Zvcm0iKSB7IEJBVEVTPSIyMDQwMDdlNFoxZGtqcGowaWgiOyB9IC8vRVJTMjAxMDE5IEhBQ0sgU0hSIHRvIGZpeCAjNzUzODEKICAgIHZhciByZXN1bHRzPXdnZXQoZG9jLHpVUkwrQkFURVMrIi8iK2RvYy5kYklEKyIvIitwYWdlKyIvKj9maWx0ZXI9IitmaWVsZHMsW10sekRhdGEuaGVhZGVycyk7IC8va2JEYXRhLmdldFhBUElLZXkoKSBhbHJlYWR5IGluIHdnZXQgb3IgZmxvdwogICAgdmFyIHQxPW5ldyBEYXRlKCk7CiAgICBhbGVydCgid2dldDU0OiAiKyh0MS5nZXRUaW1lKCktdDAuZ2V0VGltZSgpKSsibXMgZm9yICIrcmVzdWx0cy5zdWJzdHJpbmcoMCw1MCkpOyAvL0VSUzE5MDkxNiBqdXN0IDUwIGNoYXJhY3RlcnMKICAgIGFsZXJ0KCJ3Z2V0NTQuMTI3IHJlc3VsdHM9IityZXN1bHRzKTsgLy9FUlMyMDEwMTkgSEFDSyBTSFIgdG8gZml4ICM3NTM4MQogICAgLy9pZiAocmVzdWx0cy5pbmRleE9mKCJ7Iik9PT0wKSByZXR1cm4gZXZhbChyZXN1bHRzKS5jb25maWRlbmNlOwogICAgcmV0dXJuIEpTT04ucGFyc2UocmVzdWx0cyk7Cn07CgovL0VSUzE4MTEyMyAjNDc0MDggekRhdGEuZG9jVHlwZXIoZG9jLGNvbmZpZGVuY2UsdGFyZ2V0cykgVE9ETyBmaW5kIGRvY1R5cGUgZnJvbSB0ZW1wbGF0ZSBtZXRhZGF0YQovL3pEYXRhLmRvY1R5cGVyKGRvYywuNzUsIFsiVEVOUjpUZWNpZGVyYUVucm9sbG1lbnRfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIiwiRkFYOiJdKTsKekRhdGEuZG9jVHlwZXJBRD1mdW5jdGlvbihkb2MsY29uZmlkZW5jZSx0ZW1wbGF0ZXMscG1heCkgeyAvL0VSUzE5MDExOCBBdXRvRHJpdmUgaXMgQUQKICAgIHpEYXRhLnBhZ2VzPVgoZG9jLCJYX3BhZ2VzIik7IGlmICghekRhdGEucGFnZXMpIHt6RGF0YS5wYWdlcz0xO30gLy9FUlMxODExMjQgVE9ETyBDUk4gdG8gYWRkIHRvIGRvYwogICAgaWYgKCFwbWF4KSB7cG1heD0xMDt9IGlmICh6RGF0YS5wYWdlcy8xPHBtYXgpIHtwbWF4PXpEYXRhLnBhZ2VzLzF9CiAgICB2YXIgc3RhY2tDb250ZW50cz1bXTsKICAgIHN0YWNrQ29udGVudHNbMV09eydkb2NUeXBlJzonRkFYJywnY29uZmlkZW5jZSc6MSwncGFnZSc6MSwndGVtcGxhdGUnOidGQVgnLCAnb3JpZW50JzowfTsgLy9FUlMyMDA3MDQgYWRkZWQgb3JpZW50CiAgICB2YXIgcDA9MTsgIGlmIChwbWF4PjE1KSB7cG1heD03O30gLy9FUlMxODExMjQgZm9yIHRlc3RpbmdzIC8vRVJTMTgxMjEwIGlmID4gNSAvL0VSUzE5MDExOCA1IHRvIDE1IHBtYXggLy9FUlMxOTAzMTkgdG8gNwogICAgdmFyIGFsbFBhZ2VzPXAwOyBmb3IgKGk9cDArMTsgaTw9cG1heDsgaSsrKSB7YWxsUGFnZXMrPSIsIitpOyB9IC8vRVJTMTgxMjEwIFRPRE8gdHJ1c3QgYWxsUGFnZXM9ImFsbCI7CiAgICBhbGVydCgiRVJTMjAwMjI4IGFsbFBhZ2VzPSIrYWxsUGFnZXMpOyAvL0VSUzIwMDIyNyAjNjQxNjAgd2h5IG5vdCBhbGwgNyBwYWdlcwogICAgZm9yIChwPXAwOyBwPD1wbWF4OyBwKyspIHsKICAgICAgICBmb3IgKHZhciB0IGluIHRlbXBsYXRlcykgewogICAgICAgICAgICAvL0VSUzIwMDcwNCByb2xsYmFjayB0ZW1wbGF0ZXNbdF09IiIrdGVtcGxhdGVzW3RdOyAvL0VSUzIwMDYzMCAjNzI0MzMgZm9yY2UgdG8gc3RyaW5nCiAgICAgICAgICBpZiAodGVtcGxhdGVzW3RdKSB7IC8vRVJTMjAwNzA0IHN0aWxsIGZpZ3VyaW5nIG91dCB0aGUgY3VzdG9tIHNldHRpbmdzICM3MjQzMwogICAgICAgICAgICB2YXIgcGFydHM9KCIiK3RlbXBsYXRlc1t0XSkuc3BsaXQoIjoiKTsgLy9FUlMyMDA3MDQgcm9sbGJhY2sgKCsiIikKICAgICAgICAgICAgcGFydHNbMF09cGFydHNbMF0udHJpbSgpOyBwYXJ0c1sxXT1wYXJ0c1sxXS50cmltKCk7IC8vRVJTMjAxMDE5ICM3NTM4MQogICAgICAgICAgICB2YXIgQkFURVM9cGFydHNbMV07CiAgICAgICAgICAgIC8vYWxlcnQoIk9DUiBzdGlsbCBzZWFyY2hpbmcgIitCQVRFUyArICIgYSAiKyBwYXJ0c1swXSk7CiAgICAgICAgCiAgICAgICAgICAgIC8vaWYgKHppcHBpQ29tcGFyZShkb2MsQkFURVMscCk+PWNvbmZpZGVuY2UpIHJldHVybiBwYXJ0c1swXTsKICAgICAgICAgICAgdmFyIGNhY2hlZFBhZ2VzPXA7IGlmIChwPT1wMCkgY2FjaGVkUGFnZXM9YWxsUGFnZXM7CiAgICAgICAgICAgIHZhciByPXpEYXRhLnppcHBpQ29tcGFyZShkb2MsQkFURVMsY2FjaGVkUGFnZXMpOwogICAgICAgICAgICBhbGVydCgiSlNPTiByICIrcik7CiAgICAgICAgICAgIGlmIChyICYmIHIuY29uZmlkZW5jZS8xLjAgPj0gY29uZmlkZW5jZS8xLjApIHsKICAgICAgICAgICAgICAgIGFsZXJ0KCJzY1siK3ArIl09IitwYXJ0c1sxXSk7CiAgICAgICAgICAgICAgICBpZiAoKHIub3JpZW50LzEuMCkgPD0gLTAuOSkge3Iub3JpZW50PTE4MDt9IGVsc2Uge3Iub3JpZW50PTA7fSAvL0VSUzIwMDcwNCAjNzI0MzMKICAgICAgICAgICAgICAgIHN0YWNrQ29udGVudHNbcF09e2RvY1R5cGU6cGFydHNbMF0sY29uZmlkZW5jZTpyLmNvbmZpZGVuY2UsdGVtcGxhdGU6cGFydHNbMV0sIHBhZ2U6cCwgb3JpZW50OnIub3JpZW50fTsgLy9FUlMxODExMjQgVE9ETyBDUk4gc2luZ2xlIHF1b3Rlcz8KICAgICAgICAgICAgICAgIGJyZWFrOyAvL2dvdG8gdG8gbmV4dCBwYWdlCiAgICAgICAgICAgIH0gIC8vZWxzZSB7IGFsZXJ0KCJwYWdlICIrcCsiIHIuY29uZmlkZW5jZT0iK3IuY29uZmlkZW5jZSArIjwiK2NvbmZpZGVuY2UpOyB9CiAgICAgICAgICB9CiAgICAgICAgfQogICAgfQogICAgCiAgICByZXR1cm4gc3RhY2tDb250ZW50czsKfTsKCi8vRVJTMTkwOTA3IGxvb2tpbmcgZm9yIGltcG9ydCBlcnJvcg=="},"ordinal":2}

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
if (1===0 || !zData.zippiAPI) { //ERS190916 should not be HX47/MmKB/HwEmqkmGP6fYxLh0Pyjwjx
    zData.zippiAPI="HX47/MmKB/Gz8WBcuy5Dj5MStedN4NbjrkqdLBz9V4wa8yUnYfVbFg=="; //ERS190912 get SHR to explain!!!
    alert("ERS190912 SHR TODO get API key best practice.  Using "+zData.zippiAPI);
}
if (1===0) { //ERS200915 #75381
    zData.zippiAPI="/kSUVNxsuYTHfJlEU1CZzeNaqWZyT8Egm4V+dK58JYEaOeSnabZxH8ocftzk4InX"; //ERS200229 HACK FOR HIMSS #61357
}

zData.headers=["X-API-Key",zData.zippiAPI,"X-Z-SFuser",doc.kbData.remoteUser,"Accept","*"]; //ERS181201 for wget calls to zippi
zData.headers=["X-API-Key",zData.zippiAPI,"X-Z-SFuser",doc.kbData.remoteUser,"Authorization","Bearer " + doc.kbData.sfSessionID]; //ERS201020 #75381
//zData.headers=["X-API-Key",zData.zippiAPI,"X-Z-SFuser",doc.kbData.remoteUser,"Accept","*","Authorization","Bearer " + doc.kbData.sfSessionID]; //SHR190903 added reddev to whitelist
//ERS190903 #61196 also add "Authorization","Bearer " + doc.kbData.sfSessionID
//CRN181205 Undoing header changes (can now authenticate via OAuth)
//zData.headers=["Authorization","Bearer " + doc.kbData.sfSessionID,"AuthUser",doc.kbData.remoteUser,"AuthServer",doc.kbData.sfServer]; //ERS181201 for wget calls to zippi
zData.nrServer="https://nr19.zpaper.com"; //ERS190318 TODO into custom setting O2O
zData.nrServer="https://reddev.zpaper.com"; //ERS190318 TODO into custom setting O2O
zData.nrServer="https://edge.zpaper.com"; //ERS190909 TODO get from X_org settings

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
        results=JSON.parse(results); //SHR181206 always parse json results (should be an array of results)
        alert("@@@ results from wget = " + results);
		results=results[0]; //SHR181206 always parse json results (should be an array of results)
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
    results.orient=0;
    if (results.confidence > 0.5 && results.transform && results.transform[0] && results.transform[0][0]) { //ERS200715 #74729
        results.orient=results.transform[0][0];
    }
    alert("ERS200704 orient="+results.orient); //ERS200704 #72433 //ERS200915 #75381
    alert("page "+page+" wget43: "+(t1.getTime()-t0.getTime())+"ms for "+JSON.stringify(results)+" confidence="+results.confidence);
    //if (results.indexOf("{")===0) return eval(results).confidence;
    return results;
};

zData.extractData=function(doc,fields,BATES,page) {
//    var zURL="https://reddev.zpaper.com/red/zExtract/";
//    zURL="https://reddev.zpaper.com/red/zFields/";
    zURL="https://nr19.zpaper.com/red/zFields/";
    zURL=zData.nrServer+"/red/zFields/"; //ERS190318 TODO ask Steve which /red to use THIS JUST THE DATA //ERS201022 #76788
    //THIS IS MORE THE BUTTON zURL=zData.nrServer+"/red/zExtract/"; //ERS201019 #75381 total confused zFields is just metadata
    var t0=new Date();
    //var results=wget(zURL+BATES+"/"+docId+"/"+page+"/*",{},{"X-API-key":zData.zippiAPI});
    //if (BATES==="AutoDriveEnrollment_Form") { BATES="204007e4Z1dkjit1r5"; } //ERS201019 HACK SHR to fix #75381
    //if (BATES==="zCARTaHIPAA19_Form") { BATES="204007e4Z1dkjpj0ih"; } //ERS201019 HACK SHR to fix #75381
    var results=wget(doc,zURL+BATES+"/"+doc.dbID+"/"+page+"/*?filter="+fields,[],zData.headers); //kbData.getXAPIKey() already in wget or flow
    var t1=new Date();
    alert("wget54: "+(t1.getTime()-t0.getTime())+"ms for "+results.substring(0,50)); //ERS190916 just 50 characters
    alert("wget54.127 results="+results); //ERS201019 HACK SHR to fix #75381
    //if (results.indexOf("{")===0) return eval(results).confidence;
    return JSON.parse(results);
};

//ERS181123 #47408 zData.docTyper(doc,confidence,targets) TODO find docType from template metadata
//zData.docTyper(doc,.75, ["TENR:TecideraEnrollment_Form","ENRL:zChartamEnrollmentCapture_Form","CON:zChartamConsent_Form","FAX:"]);
zData.docTyperAD=function(doc,confidence,templates,pmax) { //ERS190118 AutoDrive is AD
    zData.pages=X(doc,"X_pages"); if (!zData.pages) {zData.pages=1;} //ERS181124 TODO CRN to add to doc
    if (!pmax) {pmax=10;} if (zData.pages/1<pmax) {pmax=zData.pages/1}
    var stackContents=[];
    stackContents[1]={'docType':'FAX','confidence':1,'page':1,'template':'FAX', 'orient':0}; //ERS200704 added orient
    var p0=1;  if (pmax>15) {pmax=7;} //ERS181124 for testings //ERS181210 if > 5 //ERS190118 5 to 15 pmax //ERS190319 to 7
    var allPages=p0; for (i=p0+1; i<=pmax; i++) {allPages+=","+i; } //ERS181210 TODO trust allPages="all";
    alert("ERS200228 allPages="+allPages); //ERS200227 #64160 why not all 7 pages
    for (p=p0; p<=pmax; p++) {
        for (var t in templates) {
            //ERS200704 rollback templates[t]=""+templates[t]; //ERS200630 #72433 force to string
          if (templates[t]) { //ERS200704 still figuring out the custom settings #72433
            var parts=(""+templates[t]).split(":"); //ERS200704 rollback (+"")
            parts[0]=parts[0].trim(); parts[1]=parts[1].trim(); //ERS201019 #75381
            var BATES=parts[1];
            //alert("OCR still searching "+BATES + " a "+ parts[0]);
        
            //if (zippiCompare(doc,BATES,p)>=confidence) return parts[0];
            var cachedPages=p; if (p==p0) cachedPages=allPages;
            var r=zData.zippiCompare(doc,BATES,cachedPages);
            alert("JSON r "+r);
            if (r && r.confidence/1.0 >= confidence/1.0) {
                alert("sc["+p+"]="+parts[1]);
                if ((r.orient/1.0) <= -0.9) {r.orient=180;} else {r.orient=0;} //ERS200704 #72433
                stackContents[p]={docType:parts[0],confidence:r.confidence,template:parts[1], page:p, orient:r.orient}; //ERS181124 TODO CRN single quotes?
                break; //goto to next page
            }  //else { alert("page "+p+" r.confidence="+r.confidence +"<"+confidence); }
          }
        }
    }
    
    return stackContents;
};

//ERS190907 looking for import error
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
