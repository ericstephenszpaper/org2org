<!--
// Name: zPaper OCR Library
// Committer: judson.bruno@zpaper.com
// Update: JPB190223 added PA for Prior Authorization
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-02-23 21:48:48","evalContinue":"true","active":true,"button":"","name":"zPaper OCR Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotOCR","operation":"ne"}]},"consequence":{"doit":"Ly9FUlMxNzAzMjggdXNlIE9DUmVkIHRleHQgdG8gaWRlbnRpZnkgZG9jdW1lbnQgdHlwZSBlc3BlY2lhbGx5IHdoZW4gbm8gYmFyY29kZXMKekRhdGEuZG9jVHlwZXI9ZnVuY3Rpb24oZG9jLGtleXdvcmRzKSB7CglhbGVydCgiZG9jVHlwZXI6IGtleXdvcmRzID0gIiArIGtleXdvcmRzKTsKICAgIHZhciBrZXl3b3JkczI9a2V5d29yZHM7CiAgICBpZiAoIWtleXdvcmRzICYmIHpEYXRhLmtleXdvcmRzKSBrZXl3b3JkczI9ekRhdGEua2V5d29yZHM7CiAgICBpZiAoIWtleXdvcmRzKSBrZXl3b3JkczI9WyJFTlJMOkVucm9sbG1lbnQiLCJQQTpQcmlvciBBdXRob3JpemF0aW9uIiwiVEVOUjpTdGFydCBGb3JtIiwiVEVOUjpURUNGSURFUkEiLCJURU5SOlRFQy1VUy0wMjk4IiwiU0VOUjpTUElOUkFaQSIsIlNFTlI6U1BaLVVTLTI2NlY1IiwiQ0hLO0NoZWNrbGlzdCIsIkNISzozNzUzMTI4IiwiQ0hLOmluZnVzaW9uIiwiQ09OOkNvbnNlbnQiLCJSRUY6UmVmZXJyYWwiLCJGSU46Vy0yIiwiSElQQUE6SElQQUF+IiwiSUM6TUVNQkVSIElEfiIsIk9USDpPdGhlciJdOyAvL0pQQjE4MDgyOCBjaGFuZ2VkIHRvIE9USCBPVEhFUiBOICM0ODMzNyBhbmQgIzQ4MzM4CglhbGVydCgiZG9jVHlwZXI6IGtleXdvcmRzID0gIiArIGtleXdvcmRzKTsKICAgIC8vSlBCMTgwODA4IGFkZGVkIENoZWNrbGlzdAogICAgLy9KUEIxODA4MDYgYWRkZWQgU3RhcnQgRm9ybSBUZWNmaWRlcmEgYW5kIGZvcm0gbnVtYmVyCiAgICAvL0pQQjE4MTAyMiBhZGRlZCBTcGlucmF6YQogICAgLy9hbGVydCgia2V5d29yZHMyLmxlbmd0aD0iK2tleXdvcmRzMi5sZW5ndGgpOwogICAgLy9hbGVydCgia2V5d29yZHMyID0gIitrZXl3b3JkczJbMF0rIiwiK2tleXdvcmRzMlsxXSsiLCIra2V5d29yZHMyWyJSRUYiXSk7CiAgICAvL0pQQjE4MTAyNSByZW1vdmVkIH4gZnJvbSBrZXl3b3JkcyBhbmQgbW92ZWQgRW5yb2xsbWVudCB0byB0aGUgZmlyc3QgcG9zaXRpb24KICAgIC8vSlBCMTkwMTE3IGNoYW5nZWQgU1RBUlQgdG8gVEVOUiBhbmQgU0VOUiB0byBtYXRjaCBFUlMgT0NSIHdvcmsKICAgIC8vSlBCMTkwMjIzIGFkZGVkIFBBIGZvciBQcmlvciBBdXRob3JpemF0aW9uCiAgICB6RGF0YS5rZXl3b3Jkcz1rZXl3b3JkczI7CiAgICAKICAgIGZvciAodmFyIGsgaW4ga2V5d29yZHMyKSB7CgkJYWxlcnQoImsgaW4ga2V5d29yZHMyID0gIiArIGspOwogICAgICAgIHZhciBwYXJ0cz1rZXl3b3JkczJba10uc3BsaXQoIjoiKTsKICAgICAgICB2YXIgdGVybT1wYXJ0c1sxXTsKCQlhbGVydCgia2V5d29yZCBhdCBrID0gIiArIGtleXdvcmRzMltrXSk7CgkJYWxlcnQoInBhcnRzID0gIiArIHBhcnRzKTsKICAgICAgICBhbGVydCgiT0NSIHN0aWxsIHNlYXJjaGluZyAiK3Rlcm0gKyAiIGEgIisgcGFydHNbMF0pOwogICAgICAgIGlmIChzZWFyY2hJbmRleChkb2MsZG9jLmRiSUQsdGVybSkuaW5kZXhPZihkb2MuZGJJRCk+LTEpIHsKCQkJYWxlcnQoIkBAQCByZXR1cm5pbmcgcGFydHNbMF06ICIgKyBwYXJ0c1swXSk7CgkJCXJldHVybiBwYXJ0c1swXTsKCQl9CiAgICB9CiAgICAKICAgIHJldHVybiAiVW5rbm93biI7IC8vSlBCMTgwNzEyIGNoYW5nZWQgdG8gVW5rbm93biBmcm9tIGZheCAjNDgzMzcgYW5kICM0ODMzOAp9OwoKekRhdGEuZG9jVHlwZU9DUj0iRkFYIjsgLy9FUlMxOTAxMTggaW5zdXJhbmNlIGFnYWluc3QgcnVuaW5nIHR3byBPQ1Igc3RyYXRlZ2llcwp6RGF0YS5kb2NUeXBlcjIwMTc9ZnVuY3Rpb24oZG9jLGtleXdvcmRzKSB7IHJldHVybiB6RGF0YS5kb2NUeXBlcihkb2Msa2V5d29yZHMpOyB9OwovL2Z1bmN0aW9uIHNob3cobykge3ZhciByPSIiOyBmb3IgKHZhciBpIGluIG8pIHtyKz1pKyI6JyIrb1tpXSsiJywiO30gcmV0dXJuIHI7fQpmdW5jdGlvbiBzaG93KG8pIHtKU09OLnN0cmluZ2lmeShvKTt9Cgp6RGF0YS56aXBwaUFQST1kb2Mua2JEYXRhLmdldFhBUElLZXkoKTsKYWxlcnQoIlVzaW5nIHpEYXRhLnppcHBpQVBJPSIrekRhdGEuemlwcGlBUEkpOwppZiAoIXpEYXRhLnppcHBpQVBJKSB7CiAgICB6RGF0YS56aXBwaUFQST0iSGZyMWVJVmFuNWFxQ0R4Qlpzd0VRWVo2MWtpSkMwTFhSYzhDRUdockRXaDJERXRZL2UxWDhPMk4zUHJkK1FQUCI7IC8vRVJTMTgxMjAxIHpwMDggVE9ETyBrYkRhdGEKfQp6RGF0YS5oZWFkZXJzPVsiWC1BUEktS2V5Iix6RGF0YS56aXBwaUFQSSwiWC1aLVNGdXNlciIsZG9jLmtiRGF0YS5yZW1vdGVVc2VyLCJBY2NlcHQiLCIqIl07IC8vRVJTMTgxMjAxIGZvciB3Z2V0IGNhbGxzIHRvIHppcHBpCi8vQ1JOMTgxMjA1IFVuZG9pbmcgaGVhZGVyIGNoYW5nZXMgKGNhbiBub3cgYXV0aGVudGljYXRlIHZpYSBPQXV0aCkKLy96RGF0YS5oZWFkZXJzPVsiQXV0aG9yaXphdGlvbiIsIkJlYXJlciAiICsgZG9jLmtiRGF0YS5zZlNlc3Npb25JRCwiQXV0aFVzZXIiLGRvYy5rYkRhdGEucmVtb3RlVXNlciwiQXV0aFNlcnZlciIsZG9jLmtiRGF0YS5zZlNlcnZlcl07IC8vRVJTMTgxMjAxIGZvciB3Z2V0IGNhbGxzIHRvIHppcHBpCgp6RGF0YS56aXBwaUNvbXBhcmU9ZnVuY3Rpb24oZG9jLEJBVEVTLHBhZ2UpIHsKLy8gICAgdmFyIHpVUkw9Imh0dHBzOi8vcmVkZGV2LnpwYXBlci5jb20vcmVkL3pDb21wYXJlLyI7Ci8vQ1JOMTgxMjA1IFVwZGF0aW5nIHNvIHRoYXQgdGhlIHJ1bGUgd29ya3Mgb24gZHYxOSBzZXJ2ZXIKICAgIHZhciB6VVJMPSJodHRwczovL25yMTkuenBhcGVyLmNvbS9yZWQvekNvbXBhcmUvIjsKICAgIHZhciB0MD1uZXcgRGF0ZSgpOwogICAgLy92YXIgcmVzdWx0cz13Z2V0KHpVUkwrQkFURVMrIi8iK2RvY0lkKyIvIitwYWdlKyIvKiIse30seyJYLUFQSS1rZXkiOnpEYXRhLnppcHBpQVBJfSk7CiAgICBpZiAocGFnZSA9PT0gImFsbCIgfHwgcGFnZT09PSIqIikgewogICAgICAgIHZhciBhbGxUZXh0PWRvYy5yZWFkRmlsZSgidHh0RmlsZXMiLGRvYy5kYklEKyIudHh0Iik7CiAgICAgICAgdmFyIHBhZ2VUZXh0PWFsbFRleHQuc3BsaXQoIi0tLS0tLS0tICBQQUdFICAtLS0tLS0tLSIpOwogICAgICAgIHBhZ2U9IjEiOwogICAgICAgIGlmIChwYWdlVGV4dC5sZW5ndGggPiAxKSB7CiAgICAgICAgICAgIHBhZ2U9IiI7IAogICAgICAgICAgICBmb3IgKHZhciBwIGluIHBhZ2VUZXh0KSB7IAogICAgICAgICAgICAgICAgaWYgKHBhZ2VUZXh0W3BdLmxlbmd0aCA+IDIwMCkge3BhZ2UrPXArIiwiO30gZWxzZSB7YWxlcnQoInBhZ2UgIitwKyIgaGFzIGxpdHRsZSB0ZXh0LiAiK3BhZ2VUZXh0W3BdLmxlbmd0aCk7fQogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQogICAgaWYgKCgiIitwYWdlKS5pbmRleE9mKCIsIik+LTEpIHsgLy9FUlMxODEyMTAgSEFDSyB1bnRpbCBOUiBpcyBmaXhlZAogICAgICAgIHZhciByZXN1bHRzMDA3PXdnZXQoZG9jLHpVUkwrQkFURVMrIi8iK2RvYy5kYklEKyIvIitwYWdlKyIvKiIsW10sekRhdGEuaGVhZGVycyk7CiAgICAgICAgcGFnZT1wYWdlLnNwbGl0KCIsIilbMF07CiAgICB9CiAgICB2YXIgcmVzdWx0cz13Z2V0KGRvYyx6VVJMK0JBVEVTKyIvIitkb2MuZGJJRCsiLyIrcGFnZSsiLyoiLFtdLHpEYXRhLmhlYWRlcnMpOyAvL2tiRGF0YS5nZXRYQVBJS2V5KCkgYWxyZWFkeSBpbiB3Z2V0IG9yIGZsb3cKICAgIHZhciB0MT1uZXcgRGF0ZSgpOwogICAgLy9FdmFsaW5nIHsiY29uZmlkZW5jZSI6OTYuODQ2MzA5ODg5Nzg4MTN9CiAgICAvL2lmIChyZXN1bHRzLmluZGV4T2YoInsiKT09PTApIHthbGVydCgiRXZhbGluZyAiK3Jlc3VsdHMpOyByZXN1bHRzPWV2YWwocmVzdWx0cy5yZXBsYWNlKCJ7XCIiLCJ7IikucmVwbGFjZSgiXCI6IiwiOiIpKTsgfQogICAgLy9pZiAocmVzdWx0cy5pbmRleE9mKCJ7Iik9PT0wKSB7cmVzdWx0cz1KU09OLnBhcnNlKHJlc3VsdHMpO30KICAgIHJlc3VsdHM9SlNPTi5wYXJzZShyZXN1bHRzKVswXTsgLy8gU0hSMTgxMjA2IGFsd2F5cyBwYXJzZSBqc29uIHJlc3VsdHMgKHNob3VsZCBiZSBhbiBhcnJheSBvZiByZXN1bHRzKQogICAgaWYgKCFyZXN1bHRzKSByZXN1bHRzPXsnZG9jVHlwZSc6J0ZBWCcsJ2NvbmZpZGVuY2UnOjAsJ3BhZ2UnOnBhZ2UsJ3RlbXBsYXRlJzonRkFYJ307IC8vVE9ETyBmaXggaW4gTlIKICAgIC8qaWYgKDE9PT0wICYmICFyZXN1bHRzLmNvbmZpZGVuY2UgJiYgcmVzdWx0cy5pbmRleE9mKCciY29uZmRlbmNlIjonKT4tMSkgewogICAgICAgIHZhciB2PTMxLjQ1OTI3OyAKICAgICAgICB2PShyZXN1bHRzLnN1YnN0cmluZyhyZXN1bHRzLmluZGV4T2YoIjoiKSsxKS5yZXBsYWNlKCJ9IiwiIikrIjAiKS8xLjAwOyAvL0VSUzE4MTEyNCBDUk4gVE9ETyBleHBsYWluIEpTT04vSlMgaXNzdWVzCiAgICAgICAgdj1NYXRoLnJvdW5kKHYqMTApLzEwLjA7CiAgICAgICAgcmVzdWx0cz17Y29uZmlkZW5jZTp2fTsKICAgIH0qLwogICAgLy9yZXN1bHRzLmNvbmZpZGVuY2U9TWF0aC5yb3VuZChyZXN1bHRzLmNvbmZpZGVuY2UqMTApLzEwLjA7CiAgICByZXN1bHRzLmNvbmZpZGVuY2U9TWF0aC5yb3VuZChyZXN1bHRzLmNvbmZpZGVuY2UqMTAwMCkvMTAwMC4wOwogICAgYWxlcnQoInBhZ2UgIitwYWdlKyIgd2dldDQzOiAiKyh0MS5nZXRUaW1lKCktdDAuZ2V0VGltZSgpKSsibXMgZm9yICIrSlNPTi5zdHJpbmdpZnkocmVzdWx0cykrIiBjb25maWRlbmNlPSIrcmVzdWx0cy5jb25maWRlbmNlKTsKICAgIC8vaWYgKHJlc3VsdHMuaW5kZXhPZigieyIpPT09MCkgcmV0dXJuIGV2YWwocmVzdWx0cykuY29uZmlkZW5jZTsKICAgIHJldHVybiByZXN1bHRzOwp9OwoKekRhdGEuZXh0cmFjdERhdGE9ZnVuY3Rpb24oZG9jLGZpZWxkcyxCQVRFUyxwYWdlKSB7Ci8vICAgIHZhciB6VVJMPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tL3JlZC96RXh0cmFjdC8iOwovLyAgICB6VVJMPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tL3JlZC96RmllbGRzLyI7CiAgICB6VVJMPSJodHRwczovL25yMTkuenBhcGVyLmNvbS9yZWQvekZpZWxkcy8iOwogICAgdmFyIHQwPW5ldyBEYXRlKCk7CiAgICAvL3ZhciByZXN1bHRzPXdnZXQoelVSTCtCQVRFUysiLyIrZG9jSWQrIi8iK3BhZ2UrIi8qIix7fSx7IlgtQVBJLWtleSI6ekRhdGEuemlwcGlBUEl9KTsKICAgIHZhciByZXN1bHRzPXdnZXQoZG9jLHpVUkwrQkFURVMrIi8iK2RvYy5kYklEKyIvIitwYWdlKyIvKj9maWx0ZXI9IitmaWVsZHMsW10sekRhdGEuaGVhZGVycyk7IC8va2JEYXRhLmdldFhBUElLZXkoKSBhbHJlYWR5IGluIHdnZXQgb3IgZmxvdwogICAgdmFyIHQxPW5ldyBEYXRlKCk7CiAgICBhbGVydCgid2dldDU0OiAiKyh0MS5nZXRUaW1lKCktdDAuZ2V0VGltZSgpKSsibXMgZm9yICIrcmVzdWx0cyk7CiAgICAvL2lmIChyZXN1bHRzLmluZGV4T2YoInsiKT09PTApIHJldHVybiBldmFsKHJlc3VsdHMpLmNvbmZpZGVuY2U7CiAgICByZXR1cm4gSlNPTi5wYXJzZShyZXN1bHRzKTsKfTsKCi8vRVJTMTgxMTIzICM0NzQwOCB6RGF0YS5kb2NUeXBlcihkb2MsY29uZmlkZW5jZSx0YXJnZXRzKSBUT0RPIGZpbmQgZG9jVHlwZSBmcm9tIHRlbXBsYXRlIG1ldGFkYXRhCi8vekRhdGEuZG9jVHlwZXIoZG9jLC43NSwgWyJURU5SOlRlY2lkZXJhRW5yb2xsbWVudF9Gb3JtIiwiRU5STDp6Q2hhcnRhbUVucm9sbG1lbnRDYXB0dXJlX0Zvcm0iLCJDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLCJGQVg6Il0pOwp6RGF0YS5kb2NUeXBlckFEPWZ1bmN0aW9uKGRvYyxjb25maWRlbmNlLHRlbXBsYXRlcyxwbWF4KSB7IC8vRVJTMTkwMTE4IEF1dG9Ecml2ZSBpcyBBRAogICAgekRhdGEucGFnZXM9WChkb2MsIlhfcGFnZXMiKTsgaWYgKCF6RGF0YS5wYWdlcykge3pEYXRhLnBhZ2VzPTE7fSAvL0VSUzE4MTEyNCBUT0RPIENSTiB0byBhZGQgdG8gZG9jCiAgICBpZiAoIXBtYXgpIHtwbWF4PTEwO30gaWYgKHpEYXRhLnBhZ2VzLzE8cG1heCkge3BtYXg9ekRhdGEucGFnZXMvMX0KICAgIHZhciBzdGFja0NvbnRlbnRzPVtdOwogICAgc3RhY2tDb250ZW50c1sxXT17J2RvY1R5cGUnOidGQVgnLCdjb25maWRlbmNlJzoxLCdwYWdlJzoxLCd0ZW1wbGF0ZSc6J0ZBWCd9OwogICAgdmFyIHAwPTE7ICBpZiAocG1heD4xNSkge3BtYXg9MTU7fSAvL0VSUzE4MTEyNCBmb3IgdGVzdGluZ3MgLy9FUlMxODEyMTAgaWYgPiA1IC8vRVJTMTkwMTE4IDUgdG8gMTUgcG1heAogICAgdmFyIGFsbFBhZ2VzPXAwOyBmb3IgKGk9cDArMTsgaTw9cG1heDsgaSsrKSB7YWxsUGFnZXMrPSIsIitpOyB9IC8vRVJTMTgxMjEwIFRPRE8gdHJ1c3QgYWxsUGFnZXM9ImFsbCI7CiAgICBmb3IgKHA9cDA7IHA8PXBtYXg7IHArKykgewogICAgICAgIGZvciAodmFyIHQgaW4gdGVtcGxhdGVzKSB7CiAgICAgICAgICAgIHZhciBwYXJ0cz10ZW1wbGF0ZXNbdF0uc3BsaXQoIjoiKTsKICAgICAgICAgICAgdmFyIEJBVEVTPXBhcnRzWzFdOwogICAgICAgICAgICAvL2FsZXJ0KCJPQ1Igc3RpbGwgc2VhcmNoaW5nICIrQkFURVMgKyAiIGEgIisgcGFydHNbMF0pOwogICAgICAgIAogICAgICAgICAgICAvL2lmICh6aXBwaUNvbXBhcmUoZG9jLEJBVEVTLHApPj1jb25maWRlbmNlKSByZXR1cm4gcGFydHNbMF07CiAgICAgICAgICAgIHZhciBjYWNoZWRQYWdlcz1wOyBpZiAocD09cDApIGNhY2hlZFBhZ2VzPWFsbFBhZ2VzOwogICAgICAgICAgICB2YXIgcj16RGF0YS56aXBwaUNvbXBhcmUoZG9jLEJBVEVTLGNhY2hlZFBhZ2VzKTsKICAgICAgICAgICAgYWxlcnQoIkpTT04gciAiK3IpOwogICAgICAgICAgICBpZiAociAmJiByLmNvbmZpZGVuY2UvMS4wID49IGNvbmZpZGVuY2UvMS4wKSB7CiAgICAgICAgICAgICAgICBhbGVydCgic2NbIitwKyJdPSIrcGFydHNbMV0pOwogICAgICAgICAgICAgICAgc3RhY2tDb250ZW50c1twXT17ZG9jVHlwZTpwYXJ0c1swXSxjb25maWRlbmNlOnIuY29uZmlkZW5jZSx0ZW1wbGF0ZTpwYXJ0c1sxXSwgcGFnZTpwfTsgLy9FUlMxODExMjQgVE9ETyBDUk4gc2luZ2xlIHF1b3Rlcz8KICAgICAgICAgICAgICAgIGJyZWFrOyAvL2dvdG8gdG8gbmV4dCBwYWdlCiAgICAgICAgICAgIH0gIC8vZWxzZSB7IGFsZXJ0KCJwYWdlICIrcCsiIHIuY29uZmlkZW5jZT0iK3IuY29uZmlkZW5jZSArIjwiK2NvbmZpZGVuY2UpOyB9CiAgICAgICAgfQogICAgfQogICAgCiAgICByZXR1cm4gc3RhY2tDb250ZW50czsKfTsKCg=="},"ordinal":1}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS170328 use OCRed text to identify document type especially when no barcodes
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

zData.zippiAPI=doc.kbData.getXAPIKey();
alert("Using zData.zippiAPI="+zData.zippiAPI);
if (!zData.zippiAPI) {
    zData.zippiAPI="Hfr1eIVan5aqCDxBZswEQYZ61kiJC0LXRc8CEGhrDWh2DEtY/e1X8O2N3Prd+QPP"; //ERS181201 zp08 TODO kbData
}
zData.headers=["X-API-Key",zData.zippiAPI,"X-Z-SFuser",doc.kbData.remoteUser,"Accept","*"]; //ERS181201 for wget calls to zippi
//CRN181205 Undoing header changes (can now authenticate via OAuth)
//zData.headers=["Authorization","Bearer " + doc.kbData.sfSessionID,"AuthUser",doc.kbData.remoteUser,"AuthServer",doc.kbData.sfServer]; //ERS181201 for wget calls to zippi

zData.zippiCompare=function(doc,BATES,page) {
//    var zURL="https://reddev.zpaper.com/red/zCompare/";
//CRN181205 Updating so that the rule works on dv19 server
    var zURL="https://nr19.zpaper.com/red/zCompare/";
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
    //Evaling {"confidence":96.84630988978813}
    //if (results.indexOf("{")===0) {alert("Evaling "+results); results=eval(results.replace("{\"","{").replace("\":",":")); }
    //if (results.indexOf("{")===0) {results=JSON.parse(results);}
    results=JSON.parse(results)[0]; // SHR181206 always parse json results (should be an array of results)
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
    var p0=1;  if (pmax>15) {pmax=15;} //ERS181124 for testings //ERS181210 if > 5 //ERS190118 5 to 15 pmax
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
