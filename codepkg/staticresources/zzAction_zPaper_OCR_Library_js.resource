<!--
// Name: zPaper OCR Library
// Committer: eric.stephens@zpaper.com
// Update: page 7
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-03-18 23:07:42","evalContinue":"true","active":true,"button":"","name":"zPaper OCR Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotOCR","operation":"ne"}]},"consequence":{"doit":"Ly9FUlMxNzAzMjggdXNlIE9DUmVkIHRleHQgdG8gaWRlbnRpZnkgZG9jdW1lbnQgdHlwZSBlc3BlY2lhbGx5IHdoZW4gbm8gYmFyY29kZXMKekRhdGEuZG9jVHlwZXI9ZnVuY3Rpb24oZG9jLGtleXdvcmRzKSB7CglhbGVydCgiZG9jVHlwZXI6IGtleXdvcmRzID0gIiArIGtleXdvcmRzKTsKICAgIHZhciBrZXl3b3JkczI9a2V5d29yZHM7CiAgICBpZiAoIWtleXdvcmRzICYmIHpEYXRhLmtleXdvcmRzKSBrZXl3b3JkczI9ekRhdGEua2V5d29yZHM7CiAgICBpZiAoIWtleXdvcmRzKSBrZXl3b3JkczI9WyJFTlJMOkVucm9sbG1lbnQiLCJQQTpQcmlvciBBdXRob3JpemF0aW9uIiwiVEVOUjpTdGFydCBGb3JtIiwiVEVOUjpURUNGSURFUkEiLCJURU5SOlRFQy1VUy0wMjk4IiwiU0VOUjpTUElOUkFaQSIsIlNFTlI6U1BaLVVTLTI2NlY1IiwiQ0hLO0NoZWNrbGlzdCIsIkNISzozNzUzMTI4IiwiQ0hLOmluZnVzaW9uIiwiQ09OOkNvbnNlbnQiLCJSRUY6UmVmZXJyYWwiLCJGSU46Vy0yIiwiSElQQUE6SElQQUF+IiwiSUM6TUVNQkVSIElEfiIsIk9USDpPdGhlciJdOyAvL0pQQjE4MDgyOCBjaGFuZ2VkIHRvIE9USCBPVEhFUiBOICM0ODMzNyBhbmQgIzQ4MzM4CglhbGVydCgiZG9jVHlwZXI6IGtleXdvcmRzID0gIiArIGtleXdvcmRzKTsKICAgIC8vSlBCMTgwODA4IGFkZGVkIENoZWNrbGlzdAogICAgLy9KUEIxODA4MDYgYWRkZWQgU3RhcnQgRm9ybSBUZWNmaWRlcmEgYW5kIGZvcm0gbnVtYmVyCiAgICAvL0pQQjE4MTAyMiBhZGRlZCBTcGlucmF6YQogICAgLy9hbGVydCgia2V5d29yZHMyLmxlbmd0aD0iK2tleXdvcmRzMi5sZW5ndGgpOwogICAgLy9hbGVydCgia2V5d29yZHMyID0gIitrZXl3b3JkczJbMF0rIiwiK2tleXdvcmRzMlsxXSsiLCIra2V5d29yZHMyWyJSRUYiXSk7CiAgICAvL0pQQjE4MTAyNSByZW1vdmVkIH4gZnJvbSBrZXl3b3JkcyBhbmQgbW92ZWQgRW5yb2xsbWVudCB0byB0aGUgZmlyc3QgcG9zaXRpb24KICAgIC8vSlBCMTkwMTE3IGNoYW5nZWQgU1RBUlQgdG8gVEVOUiBhbmQgU0VOUiB0byBtYXRjaCBFUlMgT0NSIHdvcmsKICAgIC8vSlBCMTkwMjIzIGFkZGVkIFBBIGZvciBQcmlvciBBdXRob3JpemF0aW9uCiAgICB6RGF0YS5rZXl3b3Jkcz1rZXl3b3JkczI7CiAgICAKICAgIGZvciAodmFyIGsgaW4ga2V5d29yZHMyKSB7CgkJYWxlcnQoImsgaW4ga2V5d29yZHMyID0gIiArIGspOwogICAgICAgIHZhciBwYXJ0cz1rZXl3b3JkczJba10uc3BsaXQoIjoiKTsKICAgICAgICB2YXIgdGVybT1wYXJ0c1sxXTsKCQlhbGVydCgia2V5d29yZCBhdCBrID0gIiArIGtleXdvcmRzMltrXSk7CgkJYWxlcnQoInBhcnRzID0gIiArIHBhcnRzKTsKICAgICAgICBhbGVydCgiT0NSIHN0aWxsIHNlYXJjaGluZyAiK3Rlcm0gKyAiIGEgIisgcGFydHNbMF0pOwogICAgICAgIGlmIChzZWFyY2hJbmRleChkb2MsZG9jLmRiSUQsdGVybSkuaW5kZXhPZihkb2MuZGJJRCk+LTEpIHsKCQkJYWxlcnQoIkBAQCByZXR1cm5pbmcgcGFydHNbMF06ICIgKyBwYXJ0c1swXSk7CgkJCXJldHVybiBwYXJ0c1swXTsKCQl9CiAgICB9CiAgICAKICAgIHJldHVybiAiVW5rbm93biI7IC8vSlBCMTgwNzEyIGNoYW5nZWQgdG8gVW5rbm93biBmcm9tIGZheCAjNDgzMzcgYW5kICM0ODMzOAp9OwoKekRhdGEuZG9jVHlwZU9DUj0iRkFYIjsgLy9FUlMxOTAxMTggaW5zdXJhbmNlIGFnYWluc3QgcnVuaW5nIHR3byBPQ1Igc3RyYXRlZ2llcwp6RGF0YS5kb2NUeXBlcjIwMTc9ZnVuY3Rpb24oZG9jLGtleXdvcmRzKSB7IHJldHVybiB6RGF0YS5kb2NUeXBlcihkb2Msa2V5d29yZHMpOyB9OwovL2Z1bmN0aW9uIHNob3cobykge3ZhciByPSIiOyBmb3IgKHZhciBpIGluIG8pIHtyKz1pKyI6JyIrb1tpXSsiJywiO30gcmV0dXJuIHI7fQpmdW5jdGlvbiBzaG93KG8pIHtKU09OLnN0cmluZ2lmeShvKTt9CgovL0VSUzE5MDMwNSBIQUNLIGZvciB6aXBwaSB0ZXN0cyB6RGF0YS56aXBwaUFQST1kb2Mua2JEYXRhLmdldFhBUElLZXkoKTsKYWxlcnQoIlVzaW5nIHpEYXRhLnppcHBpQVBJPSIrekRhdGEuemlwcGlBUEkpOwppZiAoIXpEYXRhLnppcHBpQVBJKSB7CiAgICB6RGF0YS56aXBwaUFQST0iSGZyMWVJVmFuNWFxQ0R4Qlpzd0VRWVo2MWtpSkMwTFhSYzhDRUdockRXaDJERXRZL2UxWDhPMk4zUHJkK1FQUCI7IC8vRVJTMTgxMjAxIHpwMDggVE9ETyBrYkRhdGEKfQp6RGF0YS5oZWFkZXJzPVsiWC1BUEktS2V5Iix6RGF0YS56aXBwaUFQSSwiWC1aLVNGdXNlciIsZG9jLmtiRGF0YS5yZW1vdGVVc2VyLCJBY2NlcHQiLCIqIl07IC8vRVJTMTgxMjAxIGZvciB3Z2V0IGNhbGxzIHRvIHppcHBpCi8vQ1JOMTgxMjA1IFVuZG9pbmcgaGVhZGVyIGNoYW5nZXMgKGNhbiBub3cgYXV0aGVudGljYXRlIHZpYSBPQXV0aCkKLy96RGF0YS5oZWFkZXJzPVsiQXV0aG9yaXphdGlvbiIsIkJlYXJlciAiICsgZG9jLmtiRGF0YS5zZlNlc3Npb25JRCwiQXV0aFVzZXIiLGRvYy5rYkRhdGEucmVtb3RlVXNlciwiQXV0aFNlcnZlciIsZG9jLmtiRGF0YS5zZlNlcnZlcl07IC8vRVJTMTgxMjAxIGZvciB3Z2V0IGNhbGxzIHRvIHppcHBpCnpEYXRhLm5yU2VydmVyPSJodHRwczovL25yMTkuenBhcGVyLmNvbSI7IC8vRVJTMTkwMzE4IFRPRE8gaW50byBjdXN0b20gc2V0dGluZyBPMk8KekRhdGEubnJTZXJ2ZXI9Imh0dHBzOi8vcmVkZGV2LnpwYXBlci5jb20iOyAvL0VSUzE5MDMxOCBUT0RPIGludG8gY3VzdG9tIHNldHRpbmcgTzJPCgp6RGF0YS56aXBwaUNvbXBhcmU9ZnVuY3Rpb24oZG9jLEJBVEVTLHBhZ2UpIHsKLy8gICAgdmFyIHpVUkw9Imh0dHBzOi8vcmVkZGV2LnpwYXBlci5jb20vcmVkL3pDb21wYXJlLyI7Ci8vQ1JOMTgxMjA1IFVwZGF0aW5nIHNvIHRoYXQgdGhlIHJ1bGUgd29ya3Mgb24gZHYxOSBzZXJ2ZXIKICAgIHZhciB6VVJMPSJodHRwczovL25yMTkuenBhcGVyLmNvbS9yZWQvekNvbXBhcmUvIjsKICAgIHpVUkw9ekRhdGEubnJTZXJ2ZXIrIi9yZWQvekNvbXBhcmUvIjsgLy9FUlMxOTAzMTggVE9ETyBhc2sgU3RldmUgd2hpY2ggL3pDb21wb3JlIHRvIHVzZQogICAgdmFyIHQwPW5ldyBEYXRlKCk7CiAgICAvL3ZhciByZXN1bHRzPXdnZXQoelVSTCtCQVRFUysiLyIrZG9jSWQrIi8iK3BhZ2UrIi8qIix7fSx7IlgtQVBJLWtleSI6ekRhdGEuemlwcGlBUEl9KTsKICAgIGlmIChwYWdlID09PSAiYWxsIiB8fCBwYWdlPT09IioiKSB7CiAgICAgICAgdmFyIGFsbFRleHQ9ZG9jLnJlYWRGaWxlKCJ0eHRGaWxlcyIsZG9jLmRiSUQrIi50eHQiKTsKICAgICAgICB2YXIgcGFnZVRleHQ9YWxsVGV4dC5zcGxpdCgiLS0tLS0tLS0gIFBBR0UgIC0tLS0tLS0tIik7CiAgICAgICAgcGFnZT0iMSI7CiAgICAgICAgaWYgKHBhZ2VUZXh0Lmxlbmd0aCA+IDEpIHsKICAgICAgICAgICAgcGFnZT0iIjsgCiAgICAgICAgICAgIGZvciAodmFyIHAgaW4gcGFnZVRleHQpIHsgCiAgICAgICAgICAgICAgICBpZiAocGFnZVRleHRbcF0ubGVuZ3RoID4gMjAwKSB7cGFnZSs9cCsiLCI7fSBlbHNlIHthbGVydCgicGFnZSAiK3ArIiBoYXMgbGl0dGxlIHRleHQuICIrcGFnZVRleHRbcF0ubGVuZ3RoKTt9CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9CiAgICBpZiAoKCIiK3BhZ2UpLmluZGV4T2YoIiwiKT4tMSkgeyAvL0VSUzE4MTIxMCBIQUNLIHVudGlsIE5SIGlzIGZpeGVkCiAgICAgICAgdmFyIHJlc3VsdHMwMDc9d2dldChkb2MselVSTCtCQVRFUysiLyIrZG9jLmRiSUQrIi8iK3BhZ2UrIi8qIixbXSx6RGF0YS5oZWFkZXJzKTsKICAgICAgICBwYWdlPXBhZ2Uuc3BsaXQoIiwiKVswXTsKICAgIH0KICAgIHZhciByZXN1bHRzPXdnZXQoZG9jLHpVUkwrQkFURVMrIi8iK2RvYy5kYklEKyIvIitwYWdlKyIvKiIsW10sekRhdGEuaGVhZGVycyk7IC8va2JEYXRhLmdldFhBUElLZXkoKSBhbHJlYWR5IGluIHdnZXQgb3IgZmxvdwogICAgdmFyIHQxPW5ldyBEYXRlKCk7CiAgICAvL0V2YWxpbmcgeyJjb25maWRlbmNlIjo5Ni44NDYzMDk4ODk3ODgxM30KICAgIC8vaWYgKHJlc3VsdHMuaW5kZXhPZigieyIpPT09MCkge2FsZXJ0KCJFdmFsaW5nICIrcmVzdWx0cyk7IHJlc3VsdHM9ZXZhbChyZXN1bHRzLnJlcGxhY2UoIntcIiIsInsiKS5yZXBsYWNlKCJcIjoiLCI6IikpOyB9CiAgICAvL2lmIChyZXN1bHRzLmluZGV4T2YoInsiKT09PTApIHtyZXN1bHRzPUpTT04ucGFyc2UocmVzdWx0cyk7fQogICAgcmVzdWx0cz1KU09OLnBhcnNlKHJlc3VsdHMpWzBdOyAvLyBTSFIxODEyMDYgYWx3YXlzIHBhcnNlIGpzb24gcmVzdWx0cyAoc2hvdWxkIGJlIGFuIGFycmF5IG9mIHJlc3VsdHMpCiAgICBpZiAoIXJlc3VsdHMpIHJlc3VsdHM9eydkb2NUeXBlJzonRkFYJywnY29uZmlkZW5jZSc6MCwncGFnZSc6cGFnZSwndGVtcGxhdGUnOidGQVgnfTsgLy9UT0RPIGZpeCBpbiBOUgogICAgLyppZiAoMT09PTAgJiYgIXJlc3VsdHMuY29uZmlkZW5jZSAmJiByZXN1bHRzLmluZGV4T2YoJyJjb25mZGVuY2UiOicpPi0xKSB7CiAgICAgICAgdmFyIHY9MzEuNDU5Mjc7IAogICAgICAgIHY9KHJlc3VsdHMuc3Vic3RyaW5nKHJlc3VsdHMuaW5kZXhPZigiOiIpKzEpLnJlcGxhY2UoIn0iLCIiKSsiMCIpLzEuMDA7IC8vRVJTMTgxMTI0IENSTiBUT0RPIGV4cGxhaW4gSlNPTi9KUyBpc3N1ZXMKICAgICAgICB2PU1hdGgucm91bmQodioxMCkvMTAuMDsKICAgICAgICByZXN1bHRzPXtjb25maWRlbmNlOnZ9OwogICAgfSovCiAgICAvL3Jlc3VsdHMuY29uZmlkZW5jZT1NYXRoLnJvdW5kKHJlc3VsdHMuY29uZmlkZW5jZSoxMCkvMTAuMDsKICAgIHJlc3VsdHMuY29uZmlkZW5jZT1NYXRoLnJvdW5kKHJlc3VsdHMuY29uZmlkZW5jZSoxMDAwKS8xMDAwLjA7CiAgICBhbGVydCgicGFnZSAiK3BhZ2UrIiB3Z2V0NDM6ICIrKHQxLmdldFRpbWUoKS10MC5nZXRUaW1lKCkpKyJtcyBmb3IgIitKU09OLnN0cmluZ2lmeShyZXN1bHRzKSsiIGNvbmZpZGVuY2U9IityZXN1bHRzLmNvbmZpZGVuY2UpOwogICAgLy9pZiAocmVzdWx0cy5pbmRleE9mKCJ7Iik9PT0wKSByZXR1cm4gZXZhbChyZXN1bHRzKS5jb25maWRlbmNlOwogICAgcmV0dXJuIHJlc3VsdHM7Cn07Cgp6RGF0YS5leHRyYWN0RGF0YT1mdW5jdGlvbihkb2MsZmllbGRzLEJBVEVTLHBhZ2UpIHsKLy8gICAgdmFyIHpVUkw9Imh0dHBzOi8vcmVkZGV2LnpwYXBlci5jb20vcmVkL3pFeHRyYWN0LyI7Ci8vICAgIHpVUkw9Imh0dHBzOi8vcmVkZGV2LnpwYXBlci5jb20vcmVkL3pGaWVsZHMvIjsKICAgIHpVUkw9Imh0dHBzOi8vbnIxOS56cGFwZXIuY29tL3JlZC96RmllbGRzLyI7CiAgICB6VVJMPXpEYXRhLm5yU2VydmVyKyIvcmVkL3pGaWVsZHMvIjsgLy9FUlMxOTAzMTggVE9ETyBhc2sgU3RldmUgd2hpY2ggL3JlZCB0byB1c2UKICAgIHZhciB0MD1uZXcgRGF0ZSgpOwogICAgLy92YXIgcmVzdWx0cz13Z2V0KHpVUkwrQkFURVMrIi8iK2RvY0lkKyIvIitwYWdlKyIvKiIse30seyJYLUFQSS1rZXkiOnpEYXRhLnppcHBpQVBJfSk7CiAgICB2YXIgcmVzdWx0cz13Z2V0KGRvYyx6VVJMK0JBVEVTKyIvIitkb2MuZGJJRCsiLyIrcGFnZSsiLyo/ZmlsdGVyPSIrZmllbGRzLFtdLHpEYXRhLmhlYWRlcnMpOyAvL2tiRGF0YS5nZXRYQVBJS2V5KCkgYWxyZWFkeSBpbiB3Z2V0IG9yIGZsb3cKICAgIHZhciB0MT1uZXcgRGF0ZSgpOwogICAgYWxlcnQoIndnZXQ1NDogIisodDEuZ2V0VGltZSgpLXQwLmdldFRpbWUoKSkrIm1zIGZvciAiK3Jlc3VsdHMpOwogICAgLy9pZiAocmVzdWx0cy5pbmRleE9mKCJ7Iik9PT0wKSByZXR1cm4gZXZhbChyZXN1bHRzKS5jb25maWRlbmNlOwogICAgcmV0dXJuIEpTT04ucGFyc2UocmVzdWx0cyk7Cn07CgovL0VSUzE4MTEyMyAjNDc0MDggekRhdGEuZG9jVHlwZXIoZG9jLGNvbmZpZGVuY2UsdGFyZ2V0cykgVE9ETyBmaW5kIGRvY1R5cGUgZnJvbSB0ZW1wbGF0ZSBtZXRhZGF0YQovL3pEYXRhLmRvY1R5cGVyKGRvYywuNzUsIFsiVEVOUjpUZWNpZGVyYUVucm9sbG1lbnRfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIiwiRkFYOiJdKTsKekRhdGEuZG9jVHlwZXJBRD1mdW5jdGlvbihkb2MsY29uZmlkZW5jZSx0ZW1wbGF0ZXMscG1heCkgeyAvL0VSUzE5MDExOCBBdXRvRHJpdmUgaXMgQUQKICAgIHpEYXRhLnBhZ2VzPVgoZG9jLCJYX3BhZ2VzIik7IGlmICghekRhdGEucGFnZXMpIHt6RGF0YS5wYWdlcz0xO30gLy9FUlMxODExMjQgVE9ETyBDUk4gdG8gYWRkIHRvIGRvYwogICAgaWYgKCFwbWF4KSB7cG1heD0xMDt9IGlmICh6RGF0YS5wYWdlcy8xPHBtYXgpIHtwbWF4PXpEYXRhLnBhZ2VzLzF9CiAgICB2YXIgc3RhY2tDb250ZW50cz1bXTsKICAgIHN0YWNrQ29udGVudHNbMV09eydkb2NUeXBlJzonRkFYJywnY29uZmlkZW5jZSc6MSwncGFnZSc6MSwndGVtcGxhdGUnOidGQVgnfTsKICAgIHZhciBwMD0xOyAgaWYgKHBtYXg+MTUpIHtwbWF4PTc7fSAvL0VSUzE4MTEyNCBmb3IgdGVzdGluZ3MgLy9FUlMxODEyMTAgaWYgPiA1IC8vRVJTMTkwMTE4IDUgdG8gMTUgcG1heCAvL0VSUzE5MDMxOSB0byA3CiAgICB2YXIgYWxsUGFnZXM9cDA7IGZvciAoaT1wMCsxOyBpPD1wbWF4OyBpKyspIHthbGxQYWdlcys9IiwiK2k7IH0gLy9FUlMxODEyMTAgVE9ETyB0cnVzdCBhbGxQYWdlcz0iYWxsIjsKICAgIGZvciAocD1wMDsgcDw9cG1heDsgcCsrKSB7CiAgICAgICAgZm9yICh2YXIgdCBpbiB0ZW1wbGF0ZXMpIHsKICAgICAgICAgICAgdmFyIHBhcnRzPXRlbXBsYXRlc1t0XS5zcGxpdCgiOiIpOwogICAgICAgICAgICB2YXIgQkFURVM9cGFydHNbMV07CiAgICAgICAgICAgIC8vYWxlcnQoIk9DUiBzdGlsbCBzZWFyY2hpbmcgIitCQVRFUyArICIgYSAiKyBwYXJ0c1swXSk7CiAgICAgICAgCiAgICAgICAgICAgIC8vaWYgKHppcHBpQ29tcGFyZShkb2MsQkFURVMscCk+PWNvbmZpZGVuY2UpIHJldHVybiBwYXJ0c1swXTsKICAgICAgICAgICAgdmFyIGNhY2hlZFBhZ2VzPXA7IGlmIChwPT1wMCkgY2FjaGVkUGFnZXM9YWxsUGFnZXM7CiAgICAgICAgICAgIHZhciByPXpEYXRhLnppcHBpQ29tcGFyZShkb2MsQkFURVMsY2FjaGVkUGFnZXMpOwogICAgICAgICAgICBhbGVydCgiSlNPTiByICIrcik7CiAgICAgICAgICAgIGlmIChyICYmIHIuY29uZmlkZW5jZS8xLjAgPj0gY29uZmlkZW5jZS8xLjApIHsKICAgICAgICAgICAgICAgIGFsZXJ0KCJzY1siK3ArIl09IitwYXJ0c1sxXSk7CiAgICAgICAgICAgICAgICBzdGFja0NvbnRlbnRzW3BdPXtkb2NUeXBlOnBhcnRzWzBdLGNvbmZpZGVuY2U6ci5jb25maWRlbmNlLHRlbXBsYXRlOnBhcnRzWzFdLCBwYWdlOnB9OyAvL0VSUzE4MTEyNCBUT0RPIENSTiBzaW5nbGUgcXVvdGVzPwogICAgICAgICAgICAgICAgYnJlYWs7IC8vZ290byB0byBuZXh0IHBhZ2UKICAgICAgICAgICAgfSAgLy9lbHNlIHsgYWxlcnQoInBhZ2UgIitwKyIgci5jb25maWRlbmNlPSIrci5jb25maWRlbmNlICsiPCIrY29uZmlkZW5jZSk7IH0KICAgICAgICB9CiAgICB9CiAgICAKICAgIHJldHVybiBzdGFja0NvbnRlbnRzOwp9OwoK"},"ordinal":1}

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

//ERS190305 HACK for zippi tests zData.zippiAPI=doc.kbData.getXAPIKey();
alert("Using zData.zippiAPI="+zData.zippiAPI);
if (!zData.zippiAPI) {
    zData.zippiAPI="Hfr1eIVan5aqCDxBZswEQYZ61kiJC0LXRc8CEGhrDWh2DEtY/e1X8O2N3Prd+QPP"; //ERS181201 zp08 TODO kbData
}
zData.headers=["X-API-Key",zData.zippiAPI,"X-Z-SFuser",doc.kbData.remoteUser,"Accept","*"]; //ERS181201 for wget calls to zippi
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
