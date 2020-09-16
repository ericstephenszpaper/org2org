<!--
// Name: AD 2020 OCR Library
// Committer: eric.stephens@zpaper.com
// Update: ERS200915 #75381; ERS200915 #75381
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-09-15 17:12:47","evalContinue":"true","active":true,"button":"","name":"AD 2020 OCR Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotOCR","operation":"ne"}]},"consequence":{"doit":"Ly9FUlMxNzAzMjggdXNlIE9DUmVkIHRleHQgdG8gaWRlbnRpZnkgZG9jdW1lbnQgdHlwZSBlc3BlY2lhbGx5IHdoZW4gbm8gYmFyY29kZXMKLy9FUlMxOTA1MTMgQXV0b0RyaXZlICM1ODI4Nwp6RGF0YS5kb2NUeXBlcj1mdW5jdGlvbihkb2Msa2V5d29yZHMpIHsKCWFsZXJ0KCJkb2NUeXBlcjoga2V5d29yZHMgPSAiICsga2V5d29yZHMpOwogICAgdmFyIGtleXdvcmRzMj1rZXl3b3JkczsKICAgIGlmICgha2V5d29yZHMgJiYgekRhdGEua2V5d29yZHMpIGtleXdvcmRzMj16RGF0YS5rZXl3b3JkczsKICAgIGlmICgha2V5d29yZHMpIGtleXdvcmRzMj1bIkVOUkw6RW5yb2xsbWVudCIsIlBBOlByaW9yIEF1dGhvcml6YXRpb24iLCJURU5SOlN0YXJ0IEZvcm0iLCJURU5SOlRFQ0ZJREVSQSIsIlRFTlI6VEVDLVVTLTAyOTgiLCJTRU5SOlNQSU5SQVpBIiwiU0VOUjpTUFotVVMtMjY2VjUiLCJDSEs7Q2hlY2tsaXN0IiwiQ0hLOjM3NTMxMjgiLCJDSEs6aW5mdXNpb24iLCJDT046Q29uc2VudCIsIlJFRjpSZWZlcnJhbCIsIkZJTjpXLTIiLCJISVBBQTpISVBBQX4iLCJJQzpNRU1CRVIgSUR+IiwiT1RIOk90aGVyIl07IC8vSlBCMTgwODI4IGNoYW5nZWQgdG8gT1RIIE9USEVSIE4gIzQ4MzM3IGFuZCAjNDgzMzgKCWFsZXJ0KCJkb2NUeXBlcjoga2V5d29yZHMgPSAiICsga2V5d29yZHMpOwogICAgLy9KUEIxODA4MDggYWRkZWQgQ2hlY2tsaXN0CiAgICAvL0pQQjE4MDgwNiBhZGRlZCBTdGFydCBGb3JtIFRlY2ZpZGVyYSBhbmQgZm9ybSBudW1iZXIKICAgIC8vSlBCMTgxMDIyIGFkZGVkIFNwaW5yYXphCiAgICAvL2FsZXJ0KCJrZXl3b3JkczIubGVuZ3RoPSIra2V5d29yZHMyLmxlbmd0aCk7CiAgICAvL2FsZXJ0KCJrZXl3b3JkczIgPSAiK2tleXdvcmRzMlswXSsiLCIra2V5d29yZHMyWzFdKyIsIitrZXl3b3JkczJbIlJFRiJdKTsKICAgIC8vSlBCMTgxMDI1IHJlbW92ZWQgfiBmcm9tIGtleXdvcmRzIGFuZCBtb3ZlZCBFbnJvbGxtZW50IHRvIHRoZSBmaXJzdCBwb3NpdGlvbgogICAgLy9KUEIxOTAxMTcgY2hhbmdlZCBTVEFSVCB0byBURU5SIGFuZCBTRU5SIHRvIG1hdGNoIEVSUyBPQ1Igd29yawogICAgLy9KUEIxOTAyMjMgYWRkZWQgUEEgZm9yIFByaW9yIEF1dGhvcml6YXRpb24KICAgIHpEYXRhLmtleXdvcmRzPWtleXdvcmRzMjsKICAgIAogICAgZm9yICh2YXIgayBpbiBrZXl3b3JkczIpIHsKCQlhbGVydCgiayBpbiBrZXl3b3JkczIgPSAiICsgayk7CiAgICAgICAgdmFyIHBhcnRzPWtleXdvcmRzMltrXS5zcGxpdCgiOiIpOwogICAgICAgIHZhciB0ZXJtPXBhcnRzWzFdOwoJCWFsZXJ0KCJrZXl3b3JkIGF0IGsgPSAiICsga2V5d29yZHMyW2tdKTsKCQlhbGVydCgicGFydHMgPSAiICsgcGFydHMpOwogICAgICAgIGFsZXJ0KCJPQ1Igc3RpbGwgc2VhcmNoaW5nICIrdGVybSArICIgYSAiKyBwYXJ0c1swXSk7CiAgICAgICAgaWYgKHNlYXJjaEluZGV4KGRvYyxkb2MuZGJJRCx0ZXJtKS5pbmRleE9mKGRvYy5kYklEKT4tMSkgewoJCQlhbGVydCgiQEBAIHJldHVybmluZyBwYXJ0c1swXTogIiArIHBhcnRzWzBdKTsKCQkJcmV0dXJuIHBhcnRzWzBdOwoJCX0KICAgIH0KICAgIAogICAgcmV0dXJuICJVbmtub3duIjsgLy9KUEIxODA3MTIgY2hhbmdlZCB0byBVbmtub3duIGZyb20gZmF4ICM0ODMzNyBhbmQgIzQ4MzM4Cn07Cgp6RGF0YS5kb2NUeXBlT0NSPSJGQVgiOyAvL0VSUzE5MDExOCBpbnN1cmFuY2UgYWdhaW5zdCBydW5pbmcgdHdvIE9DUiBzdHJhdGVnaWVzCnpEYXRhLmRvY1R5cGVyMjAxNz1mdW5jdGlvbihkb2Msa2V5d29yZHMpIHsgcmV0dXJuIHpEYXRhLmRvY1R5cGVyKGRvYyxrZXl3b3Jkcyk7IH07Ci8vZnVuY3Rpb24gc2hvdyhvKSB7dmFyIHI9IiI7IGZvciAodmFyIGkgaW4gbykge3IrPWkrIjonIitvW2ldKyInLCI7fSByZXR1cm4gcjt9CmZ1bmN0aW9uIHNob3cobykge0pTT04uc3RyaW5naWZ5KG8pO30KCi8vRVJTMTkwMzA1IEhBQ0sgZm9yIHppcHBpIHRlc3RzIHpEYXRhLnppcHBpQVBJPWRvYy5rYkRhdGEuZ2V0WEFQSUtleSgpOwphbGVydCgiVXNpbmcgekRhdGEuemlwcGlBUEk9Iit6RGF0YS56aXBwaUFQSSk7CmlmICghekRhdGEuemlwcGlBUEkpIHsKICAgIC8vekRhdGEuemlwcGlBUEk9IkhmcjFlSVZhbjVhcUNEeEJac3dFUVlaNjFraUpDMExYUmM4Q0VHaHJEV2gyREV0WS9lMVg4TzJOM1ByZCtRUFAiOyAvL0VSUzE4MTIwMSB6cDA4IFRPRE8ga2JEYXRhCiAgICB6RGF0YS56aXBwaUFQST1kb2Mua2JEYXRhLnhBUElLZXk7IC8vU0hSMTkwOTAzIHVzZSB0aGUgYWN0dWFsIEFQSSBrZXkgZnJvbSBrYkRhdGEKfQppZiAoMT09PTAgfHwgIXpEYXRhLnppcHBpQVBJKSB7IC8vRVJTMTkwOTE2IHNob3VsZCBub3QgYmUgSFg0Ny9NbUtCL0h3RW1xa21HUDZmWXhMaDBQeWp3angKICAgIHpEYXRhLnppcHBpQVBJPSJIWDQ3L01tS0IvR3o4V0JjdXk1RGo1TVN0ZWRONE5ianJrcWRMQno5VjR3YTh5VW5ZZlZiRmc9PSI7IC8vRVJTMTkwOTEyIGdldCBTSFIgdG8gZXhwbGFpbiEhIQogICAgYWxlcnQoIkVSUzE5MDkxMiBTSFIgVE9ETyBnZXQgQVBJIGtleSBiZXN0IHByYWN0aWNlLiAgVXNpbmcgIit6RGF0YS56aXBwaUFQSSk7Cn0KaWYgKDE9PT0wKSB7IC8vRVJTMjAwOTE1ICM3NTM4MQogICAgekRhdGEuemlwcGlBUEk9Ii9rU1VWTnhzdVlUSGZKbEVVMUNaemVOYXFXWnlUOEVnbTRWK2RLNThKWUVhT2VTbmFiWnhIOG9jZnR6azRJblgiOyAvL0VSUzIwMDIyOSBIQUNLIEZPUiBISU1TUyAjNjEzNTcKfQoKekRhdGEuaGVhZGVycz1bIlgtQVBJLUtleSIsekRhdGEuemlwcGlBUEksIlgtWi1TRnVzZXIiLGRvYy5rYkRhdGEucmVtb3RlVXNlciwiQWNjZXB0IiwiKiJdOyAvL0VSUzE4MTIwMSBmb3Igd2dldCBjYWxscyB0byB6aXBwaQovL3pEYXRhLmhlYWRlcnM9WyJYLUFQSS1LZXkiLHpEYXRhLnppcHBpQVBJLCJYLVotU0Z1c2VyIixkb2Mua2JEYXRhLnJlbW90ZVVzZXIsIkFjY2VwdCIsIioiLCJBdXRob3JpemF0aW9uIiwiQmVhcmVyICIgKyBkb2Mua2JEYXRhLnNmU2Vzc2lvbklEXTsgLy9TSFIxOTA5MDMgYWRkZWQgcmVkZGV2IHRvIHdoaXRlbGlzdAovL0VSUzE5MDkwMyAjNjExOTYgYWxzbyBhZGQgIkF1dGhvcml6YXRpb24iLCJCZWFyZXIgIiArIGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQKLy9DUk4xODEyMDUgVW5kb2luZyBoZWFkZXIgY2hhbmdlcyAoY2FuIG5vdyBhdXRoZW50aWNhdGUgdmlhIE9BdXRoKQovL3pEYXRhLmhlYWRlcnM9WyJBdXRob3JpemF0aW9uIiwiQmVhcmVyICIgKyBkb2Mua2JEYXRhLnNmU2Vzc2lvbklELCJBdXRoVXNlciIsZG9jLmtiRGF0YS5yZW1vdGVVc2VyLCJBdXRoU2VydmVyIixkb2Mua2JEYXRhLnNmU2VydmVyXTsgLy9FUlMxODEyMDEgZm9yIHdnZXQgY2FsbHMgdG8gemlwcGkKekRhdGEubnJTZXJ2ZXI9Imh0dHBzOi8vbnIxOS56cGFwZXIuY29tIjsgLy9FUlMxOTAzMTggVE9ETyBpbnRvIGN1c3RvbSBzZXR0aW5nIE8yTwp6RGF0YS5uclNlcnZlcj0iaHR0cHM6Ly9yZWRkZXYuenBhcGVyLmNvbSI7IC8vRVJTMTkwMzE4IFRPRE8gaW50byBjdXN0b20gc2V0dGluZyBPMk8KekRhdGEubnJTZXJ2ZXI9Imh0dHBzOi8vZWRnZS56cGFwZXIuY29tIjsgLy9FUlMxOTA5MDkgVE9ETyBnZXQgZnJvbSBYX29yZyBzZXR0aW5ncwoKekRhdGEuemlwcGlDb21wYXJlPWZ1bmN0aW9uKGRvYyxCQVRFUyxwYWdlKSB7Ci8vICAgIHZhciB6VVJMPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tL3JlZC96Q29tcGFyZS8iOwovL0NSTjE4MTIwNSBVcGRhdGluZyBzbyB0aGF0IHRoZSBydWxlIHdvcmtzIG9uIGR2MTkgc2VydmVyCiAgICB2YXIgelVSTD0iaHR0cHM6Ly9ucjE5LnpwYXBlci5jb20vcmVkL3pDb21wYXJlLyI7CiAgICB6VVJMPXpEYXRhLm5yU2VydmVyKyIvcmVkL3pDb21wYXJlLyI7IC8vRVJTMTkwMzE4IFRPRE8gYXNrIFN0ZXZlIHdoaWNoIC96Q29tcG9yZSB0byB1c2UKICAgIHZhciB0MD1uZXcgRGF0ZSgpOwogICAgLy92YXIgcmVzdWx0cz13Z2V0KHpVUkwrQkFURVMrIi8iK2RvY0lkKyIvIitwYWdlKyIvKiIse30seyJYLUFQSS1rZXkiOnpEYXRhLnppcHBpQVBJfSk7CiAgICBpZiAocGFnZSA9PT0gImFsbCIgfHwgcGFnZT09PSIqIikgewogICAgICAgIHZhciBhbGxUZXh0PWRvYy5yZWFkRmlsZSgidHh0RmlsZXMiLGRvYy5kYklEKyIudHh0Iik7CiAgICAgICAgdmFyIHBhZ2VUZXh0PWFsbFRleHQuc3BsaXQoIi0tLS0tLS0tICBQQUdFICAtLS0tLS0tLSIpOwogICAgICAgIHBhZ2U9IjEiOwogICAgICAgIGlmIChwYWdlVGV4dC5sZW5ndGggPiAxKSB7CiAgICAgICAgICAgIHBhZ2U9IiI7IAogICAgICAgICAgICBmb3IgKHZhciBwIGluIHBhZ2VUZXh0KSB7IAogICAgICAgICAgICAgICAgaWYgKHBhZ2VUZXh0W3BdLmxlbmd0aCA+IDIwMCkge3BhZ2UrPXArIiwiO30gZWxzZSB7YWxlcnQoInBhZ2UgIitwKyIgaGFzIGxpdHRsZSB0ZXh0LiAiK3BhZ2VUZXh0W3BdLmxlbmd0aCk7fQogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQogICAgaWYgKCgiIitwYWdlKS5pbmRleE9mKCIsIik+LTEpIHsgLy9FUlMxODEyMTAgSEFDSyB1bnRpbCBOUiBpcyBmaXhlZAogICAgICAgIHZhciByZXN1bHRzMDA3PXdnZXQoZG9jLHpVUkwrQkFURVMrIi8iK2RvYy5kYklEKyIvIitwYWdlKyIvKiIsW10sekRhdGEuaGVhZGVycyk7CiAgICAgICAgcGFnZT1wYWdlLnNwbGl0KCIsIilbMF07CiAgICB9CiAgICB2YXIgcmVzdWx0cz13Z2V0KGRvYyx6VVJMK0JBVEVTKyIvIitkb2MuZGJJRCsiLyIrcGFnZSsiLyoiLFtdLHpEYXRhLmhlYWRlcnMpOyAvL2tiRGF0YS5nZXRYQVBJS2V5KCkgYWxyZWFkeSBpbiB3Z2V0IG9yIGZsb3cKICAgIHZhciB0MT1uZXcgRGF0ZSgpOwogICAgYWxlcnQoIkVSUzE5MDkwMyByZXN1bHRzPSIrcmVzdWx0cysiIGhlYWRlcnM9Iit6RGF0YS5oZWFkZXJzKTsgLy9FUlMxOTA5MDMgY2hlY2sgaGVhZGVycwogICAgLy9FdmFsaW5nIHsiY29uZmlkZW5jZSI6OTYuODQ2MzA5ODg5Nzg4MTN9CiAgICAvL2lmIChyZXN1bHRzLmluZGV4T2YoInsiKT09PTApIHthbGVydCgiRXZhbGluZyAiK3Jlc3VsdHMpOyByZXN1bHRzPWV2YWwocmVzdWx0cy5yZXBsYWNlKCJ7XCIiLCJ7IikucmVwbGFjZSgiXCI6IiwiOiIpKTsgfQogICAgLy9pZiAocmVzdWx0cy5pbmRleE9mKCJ7Iik9PT0wKSB7cmVzdWx0cz1KU09OLnBhcnNlKHJlc3VsdHMpO30KICAgIGlmIChyZXN1bHRzKSB7IC8vU0hSMTkwOTAzIG1ha2Ugc3VyZSB3ZSBnb3QgYmFjayBzb21ldGhpbmcgYmVmb3JlIHBhcnNpbmcKICAgICAgICByZXN1bHRzPUpTT04ucGFyc2UocmVzdWx0cyk7IC8vU0hSMTgxMjA2IGFsd2F5cyBwYXJzZSBqc29uIHJlc3VsdHMgKHNob3VsZCBiZSBhbiBhcnJheSBvZiByZXN1bHRzKQogICAgICAgIGFsZXJ0KCJAQEAgcmVzdWx0cyBmcm9tIHdnZXQgPSAiICsgcmVzdWx0cyk7CgkJcmVzdWx0cz1yZXN1bHRzWzBdOyAvL1NIUjE4MTIwNiBhbHdheXMgcGFyc2UganNvbiByZXN1bHRzIChzaG91bGQgYmUgYW4gYXJyYXkgb2YgcmVzdWx0cykKICAgIH0KICAgIGlmICghcmVzdWx0cykgcmVzdWx0cz17J2RvY1R5cGUnOidGQVgnLCdjb25maWRlbmNlJzowLCdwYWdlJzpwYWdlLCd0ZW1wbGF0ZSc6J0ZBWCd9OyAvL1RPRE8gZml4IGluIE5SCiAgICAvKmlmICgxPT09MCAmJiAhcmVzdWx0cy5jb25maWRlbmNlICYmIHJlc3VsdHMuaW5kZXhPZignImNvbmZkZW5jZSI6Jyk+LTEpIHsKICAgICAgICB2YXIgdj0zMS40NTkyNzsgCiAgICAgICAgdj0ocmVzdWx0cy5zdWJzdHJpbmcocmVzdWx0cy5pbmRleE9mKCI6IikrMSkucmVwbGFjZSgifSIsIiIpKyIwIikvMS4wMDsgLy9FUlMxODExMjQgQ1JOIFRPRE8gZXhwbGFpbiBKU09OL0pTIGlzc3VlcwogICAgICAgIHY9TWF0aC5yb3VuZCh2KjEwKS8xMC4wOwogICAgICAgIHJlc3VsdHM9e2NvbmZpZGVuY2U6dn07CiAgICB9Ki8KICAgIC8vcmVzdWx0cy5jb25maWRlbmNlPU1hdGgucm91bmQocmVzdWx0cy5jb25maWRlbmNlKjEwKS8xMC4wOwogICAgcmVzdWx0cy5jb25maWRlbmNlPU1hdGgucm91bmQocmVzdWx0cy5jb25maWRlbmNlKjEwMDApLzEwMDAuMDsKICAgIHJlc3VsdHMub3JpZW50PTA7CiAgICBpZiAocmVzdWx0cy5jb25maWRlbmNlID4gMC41ICYmIHJlc3VsdHMudHJhbnNmb3JtICYmIHJlc3VsdHMudHJhbnNmb3JtWzBdICYmIHJlc3VsdHMudHJhbnNmb3JtWzBdWzBdKSB7IC8vRVJTMjAwNzE1ICM3NDcyOQogICAgICAgIHJlc3VsdHMub3JpZW50PXJlc3VsdHMudHJhbnNmb3JtWzBdWzBdOwogICAgfQogICAgYWxlcnQoIkVSUzIwMDcwNCBvcmllbnQ9IityZXN1bHRzLm9yaWVudCk7IC8vRVJTMjAwNzA0ICM3MjQzMyAvL0VSUzIwMDkxNSAjNzUzODEKICAgIGFsZXJ0KCJwYWdlICIrcGFnZSsiIHdnZXQ0MzogIisodDEuZ2V0VGltZSgpLXQwLmdldFRpbWUoKSkrIm1zIGZvciAiK0pTT04uc3RyaW5naWZ5KHJlc3VsdHMpKyIgY29uZmlkZW5jZT0iK3Jlc3VsdHMuY29uZmlkZW5jZSk7CiAgICAvL2lmIChyZXN1bHRzLmluZGV4T2YoInsiKT09PTApIHJldHVybiBldmFsKHJlc3VsdHMpLmNvbmZpZGVuY2U7CiAgICByZXR1cm4gcmVzdWx0czsKfTsKCnpEYXRhLmV4dHJhY3REYXRhPWZ1bmN0aW9uKGRvYyxmaWVsZHMsQkFURVMscGFnZSkgewovLyAgICB2YXIgelVSTD0iaHR0cHM6Ly9yZWRkZXYuenBhcGVyLmNvbS9yZWQvekV4dHJhY3QvIjsKLy8gICAgelVSTD0iaHR0cHM6Ly9yZWRkZXYuenBhcGVyLmNvbS9yZWQvekZpZWxkcy8iOwogICAgelVSTD0iaHR0cHM6Ly9ucjE5LnpwYXBlci5jb20vcmVkL3pGaWVsZHMvIjsKICAgIHpVUkw9ekRhdGEubnJTZXJ2ZXIrIi9yZWQvekZpZWxkcy8iOyAvL0VSUzE5MDMxOCBUT0RPIGFzayBTdGV2ZSB3aGljaCAvcmVkIHRvIHVzZQogICAgdmFyIHQwPW5ldyBEYXRlKCk7CiAgICAvL3ZhciByZXN1bHRzPXdnZXQoelVSTCtCQVRFUysiLyIrZG9jSWQrIi8iK3BhZ2UrIi8qIix7fSx7IlgtQVBJLWtleSI6ekRhdGEuemlwcGlBUEl9KTsKICAgIHZhciByZXN1bHRzPXdnZXQoZG9jLHpVUkwrQkFURVMrIi8iK2RvYy5kYklEKyIvIitwYWdlKyIvKj9maWx0ZXI9IitmaWVsZHMsW10sekRhdGEuaGVhZGVycyk7IC8va2JEYXRhLmdldFhBUElLZXkoKSBhbHJlYWR5IGluIHdnZXQgb3IgZmxvdwogICAgdmFyIHQxPW5ldyBEYXRlKCk7CiAgICBhbGVydCgid2dldDU0OiAiKyh0MS5nZXRUaW1lKCktdDAuZ2V0VGltZSgpKSsibXMgZm9yICIrcmVzdWx0cy5zdWJzdHJpbmcoMCw1MCkpOyAvL0VSUzE5MDkxNiBqdXN0IDUwIGNoYXJhY3RlcnMKICAgIC8vaWYgKHJlc3VsdHMuaW5kZXhPZigieyIpPT09MCkgcmV0dXJuIGV2YWwocmVzdWx0cykuY29uZmlkZW5jZTsKICAgIHJldHVybiBKU09OLnBhcnNlKHJlc3VsdHMpOwp9OwoKLy9FUlMxODExMjMgIzQ3NDA4IHpEYXRhLmRvY1R5cGVyKGRvYyxjb25maWRlbmNlLHRhcmdldHMpIFRPRE8gZmluZCBkb2NUeXBlIGZyb20gdGVtcGxhdGUgbWV0YWRhdGEKLy96RGF0YS5kb2NUeXBlcihkb2MsLjc1LCBbIlRFTlI6VGVjaWRlcmFFbnJvbGxtZW50X0Zvcm0iLCJFTlJMOnpDaGFydGFtRW5yb2xsbWVudENhcHR1cmVfRm9ybSIsIkNPTjp6Q2hhcnRhbUNvbnNlbnRfRm9ybSIsIkZBWDoiXSk7CnpEYXRhLmRvY1R5cGVyQUQ9ZnVuY3Rpb24oZG9jLGNvbmZpZGVuY2UsdGVtcGxhdGVzLHBtYXgpIHsgLy9FUlMxOTAxMTggQXV0b0RyaXZlIGlzIEFECiAgICB6RGF0YS5wYWdlcz1YKGRvYywiWF9wYWdlcyIpOyBpZiAoIXpEYXRhLnBhZ2VzKSB7ekRhdGEucGFnZXM9MTt9IC8vRVJTMTgxMTI0IFRPRE8gQ1JOIHRvIGFkZCB0byBkb2MKICAgIGlmICghcG1heCkge3BtYXg9MTA7fSBpZiAoekRhdGEucGFnZXMvMTxwbWF4KSB7cG1heD16RGF0YS5wYWdlcy8xfQogICAgdmFyIHN0YWNrQ29udGVudHM9W107CiAgICBzdGFja0NvbnRlbnRzWzFdPXsnZG9jVHlwZSc6J0ZBWCcsJ2NvbmZpZGVuY2UnOjEsJ3BhZ2UnOjEsJ3RlbXBsYXRlJzonRkFYJywgJ29yaWVudCc6MH07IC8vRVJTMjAwNzA0IGFkZGVkIG9yaWVudAogICAgdmFyIHAwPTE7ICBpZiAocG1heD4xNSkge3BtYXg9Nzt9IC8vRVJTMTgxMTI0IGZvciB0ZXN0aW5ncyAvL0VSUzE4MTIxMCBpZiA+IDUgLy9FUlMxOTAxMTggNSB0byAxNSBwbWF4IC8vRVJTMTkwMzE5IHRvIDcKICAgIHZhciBhbGxQYWdlcz1wMDsgZm9yIChpPXAwKzE7IGk8PXBtYXg7IGkrKykge2FsbFBhZ2VzKz0iLCIraTsgfSAvL0VSUzE4MTIxMCBUT0RPIHRydXN0IGFsbFBhZ2VzPSJhbGwiOwogICAgYWxlcnQoIkVSUzIwMDIyOCBhbGxQYWdlcz0iK2FsbFBhZ2VzKTsgLy9FUlMyMDAyMjcgIzY0MTYwIHdoeSBub3QgYWxsIDcgcGFnZXMKICAgIGZvciAocD1wMDsgcDw9cG1heDsgcCsrKSB7CiAgICAgICAgZm9yICh2YXIgdCBpbiB0ZW1wbGF0ZXMpIHsKICAgICAgICAgICAgLy9FUlMyMDA3MDQgcm9sbGJhY2sgdGVtcGxhdGVzW3RdPSIiK3RlbXBsYXRlc1t0XTsgLy9FUlMyMDA2MzAgIzcyNDMzIGZvcmNlIHRvIHN0cmluZwogICAgICAgICAgaWYgKHRlbXBsYXRlc1t0XSkgeyAvL0VSUzIwMDcwNCBzdGlsbCBmaWd1cmluZyBvdXQgdGhlIGN1c3RvbSBzZXR0aW5ncyAjNzI0MzMKICAgICAgICAgICAgdmFyIHBhcnRzPSgiIit0ZW1wbGF0ZXNbdF0pLnNwbGl0KCI6Iik7IC8vRVJTMjAwNzA0IHJvbGxiYWNrICgrIiIpCiAgICAgICAgICAgIHZhciBCQVRFUz1wYXJ0c1sxXTsKICAgICAgICAgICAgLy9hbGVydCgiT0NSIHN0aWxsIHNlYXJjaGluZyAiK0JBVEVTICsgIiBhICIrIHBhcnRzWzBdKTsKICAgICAgICAKICAgICAgICAgICAgLy9pZiAoemlwcGlDb21wYXJlKGRvYyxCQVRFUyxwKT49Y29uZmlkZW5jZSkgcmV0dXJuIHBhcnRzWzBdOwogICAgICAgICAgICB2YXIgY2FjaGVkUGFnZXM9cDsgaWYgKHA9PXAwKSBjYWNoZWRQYWdlcz1hbGxQYWdlczsKICAgICAgICAgICAgdmFyIHI9ekRhdGEuemlwcGlDb21wYXJlKGRvYyxCQVRFUyxjYWNoZWRQYWdlcyk7CiAgICAgICAgICAgIGFsZXJ0KCJKU09OIHIgIityKTsKICAgICAgICAgICAgaWYgKHIgJiYgci5jb25maWRlbmNlLzEuMCA+PSBjb25maWRlbmNlLzEuMCkgewogICAgICAgICAgICAgICAgYWxlcnQoInNjWyIrcCsiXT0iK3BhcnRzWzFdKTsKICAgICAgICAgICAgICAgIGlmICgoci5vcmllbnQvMS4wKSA8PSAtMC45KSB7ci5vcmllbnQ9MTgwO30gZWxzZSB7ci5vcmllbnQ9MDt9IC8vRVJTMjAwNzA0ICM3MjQzMwogICAgICAgICAgICAgICAgc3RhY2tDb250ZW50c1twXT17ZG9jVHlwZTpwYXJ0c1swXSxjb25maWRlbmNlOnIuY29uZmlkZW5jZSx0ZW1wbGF0ZTpwYXJ0c1sxXSwgcGFnZTpwLCBvcmllbnQ6ci5vcmllbnR9OyAvL0VSUzE4MTEyNCBUT0RPIENSTiBzaW5nbGUgcXVvdGVzPwogICAgICAgICAgICAgICAgYnJlYWs7IC8vZ290byB0byBuZXh0IHBhZ2UKICAgICAgICAgICAgfSAgLy9lbHNlIHsgYWxlcnQoInBhZ2UgIitwKyIgci5jb25maWRlbmNlPSIrci5jb25maWRlbmNlICsiPCIrY29uZmlkZW5jZSk7IH0KICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICAKICAgIHJldHVybiBzdGFja0NvbnRlbnRzOwp9OwoKLy9FUlMxOTA5MDcgbG9va2luZyBmb3IgaW1wb3J0IGVycm9y"},"ordinal":2}

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
    zURL=zData.nrServer+"/red/zFields/"; //ERS190318 TODO ask Steve which /red to use
    var t0=new Date();
    //var results=wget(zURL+BATES+"/"+docId+"/"+page+"/*",{},{"X-API-key":zData.zippiAPI});
    var results=wget(doc,zURL+BATES+"/"+doc.dbID+"/"+page+"/*?filter="+fields,[],zData.headers); //kbData.getXAPIKey() already in wget or flow
    var t1=new Date();
    alert("wget54: "+(t1.getTime()-t0.getTime())+"ms for "+results.substring(0,50)); //ERS190916 just 50 characters
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
