<!--
// Name: SSLFax Library
// Committer: eric.stephens@zpaper.com
// Update: no way to get more template metadata into zaction tonight
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2023-03-19 00:31:46","evalContinue":"true","active":true,"button":"Stamp","name":"SSLFax Library","conditions":{"logic":"or","arguments":[{"name":"doc.status","value":"NoSSLFax","operation":"not-contains"},{"name":"doc.X(\"X_buttonAction\")","value":"ADD_STAMP","operation":"equals"},{"name":"doc.X(\"X_buttonAction\")","value":"NOTIFY","operation":"starts-with"}]},"consequence":{"doit":"Ly9FUlMyMTA2MDUgY3JlYXRlIFFSIGNvZGUgYW5kIEJsb2NrY2hhaW4gY29udHJhY3QgdG8gZW5hYmxlIGZhc3RlciwgZGlnaXRhbCBhY2Nlc3MKaWYgKGRvYy5YKCJYX2J1dHRvbkFjdGlvbiIpID09ICJBRERfU1RBTVAiKSB7CiAgICByb29sLmV2YWxDb250aW51ZT1mYWxzZTsgLy9zdG9wcyB0aGUgYnVzIQp9CmlmIChkb2MuWCgiWF9idXR0b25BY3Rpb24iKS5pbmRleE9mKCJOT1RJRlkiKT09PTApIHsgLy9FUlMyMjA0MDkgIzkwODgyCiAgICByb29sLmV2YWxDb250aW51ZT1mYWxzZTsgLy9zdG9wcyB0aGUgYnVzIQp9CgovL21ha2UgYSBSRURJUkVDVCBzbmlwcGV0Ci8vY3JlYXRlIHRoZSAgYmxvY2tjaGFpbiBzbWFydCBjb250cmFjdAovLzFzdCBVUkwgaXMgb3BlbiB0aGVuIHJlcXVpcmUgYSBQSU4KLy9yZXR1cm4gYSBVUkwgZm9yIHRoZSBRUiBjb2RlCmlmICgoIiIrekRhdGEuZG9jVHlwZSkuaW5kZXhPZigiWkNBUkQiKSAhPSAtMSkge3pEYXRhLnN0YW1wWT01MDsgekRhdGEuc3RhbXBYPTE3OyB9IAovL1RPRE8gaW4gdGVtcGxhdGUgc2V0IC0xIGZvciBubyBzdGFtcHMgb3IgdXNlIHpEYXRhLmRvY1R5cGUKaWYgKCF6RGF0YS5zdGFtcFgpIHsgekRhdGEuc3RhbXBYPTE3OyB9CmlmICghekRhdGEuc3RhbXBZKSB7IHpEYXRhLnN0YW1wWT03NTA7IH0KLy96RGF0YS5zdGFtcFg9Mzc7IC8vRVJTMjMwMzE4IHRlc3RpbmcgbW92ZW1lbnQgIzk2ODIyCnZhciBTWT16RGF0YS5zdGFtcFkvMTsgdmFyIFNYPXpEYXRhLnN0YW1wWC8xOwp6RGF0YS5zdGFtcE1hcmt1cD0iIjsgLy9FUlMyMTA3MzEgIzgzNzY3IG1pZ2h0IG5lZWQgdG8gYmUgZGlmZmVyZW50IGZvciBzaWduYXR1cmUgaW52aXRlCnpEYXRhLnN0YW1wTWFya3VwKz0ia2JtKCdJTUdaU1RBTVBfUkVBTFBERkNPT1JEUycsJ1BBR0UxSU1HWlNUQU1QJywnL2tiL2pzcC9xci5qc3A/Y29kZT17IXFyfScsNTUsNTUsMTAsMTAsJycsJzEyJyw0NSw0NSwiK1NYKyIsIitTWSsiKTsiOwovL0VSUzIyMTEyOSAjOTE1NTIgekRhdGEuc3RhbXBNYXJrdXArPSJrYm0oJ0lNRzE2MjcxNDkzMTgwMzhfUkVBTFBERkNPT1JEUycsJ1BBR0UxSU1HMTYyNzE0OTMxODAzOCcsJ2FkZFRleHQnLDkzLDIyLDEwLDgzLCdmYXhNRC5vcmcnLCcxMCcsNzAsMTYsNyw3NTApOyI7CnpEYXRhLnN0YW1wTWFya3VwKz0ia2JtKCdJTUcxNjI3MTQ5MzE4MDM4X1JFQUxQREZDT09SRFMnLCdQQUdFMUlNRzE2MjcxNDkzMTgwMzgnLCdhZGRUZXh0Jyw5MywyMiwxMCw4MywncXIubWQvJywnNycsNzAsMTYsIitTWCsiLCIrU1krIik7IjsgLy9FUlMyMzAyMTYganVzdCBxci5tZCBub3QgenFyLm1kCnpEYXRhLnN0YW1wTWFya3VwKz0ia2JtKCdJTUcxNjI3MTQ5MzE4MDM5X1JFQUxQREZDT09SRFMnLCdQQUdFMUlNRzE2MjcxNDkzMTgwMzknLCdhZGRUZXh0Jyw5MywyMiwxMCw4MywneyF6enpbMCw0XX0nLCc3Jyw3MCwxNiwiK1NYKyIsIisoU1ktMTUpKyIpOyI7CnpEYXRhLnN0YW1wTWFya3VwKz0ia2JtKCdJTUcxNjI3MTQ5MzE4MDQwX1JFQUxQREZDT09SRFMnLCdQQUdFMUlNRzE2MjcxNDkzMTgwNDAnLCdhZGRUZXh0Jyw5MywyMiwxMCw4MywneyF6enpbNSwxMF19JywnNycsNzAsMTYsIitTWCsiLCIrKFNZLTMwKSsiKTsiOyAvL0VSUzIzMDEwNAppZiAoekRhdGEuc3RhbXBYPDAgfHwgekRhdGEuc3RhbXBZPDApIHsgekRhdGEuc3RhbXBNYXJrdXA9IiI7IHpEYXRhLnNzbEZheD1mYWxzZTsgYWxlcnQoIkVSUzIzMDMxOC4yMSB0dXJuZWQgb2ZmIHN0YW1wcyBmb3IgdGhpcyBwZGYiKTsgfQoKekRhdGEuYWRkU3RhbXA9ZnVuY3Rpb24oZG9jLHJlcSkgewogICAgdmFyIHN0YW1wTWFya3VwPSJnZXQgZnJvbSB6RGF0YSI7IC8vRVJTMjExMTIwIGNsZWFuaW5nIHVwCiAgICAvL0VSUzIxMTEyMCBmYXhtZCB0byBmYXhNRCBhbmQgbG9va2luZyBmb3IgcGxhY2UgZm9yIFpRUiB1cmwgdG8ga2VlcCBmb3JldmVyCiAgICBzdGFtcE1hcmt1cD16RGF0YS5zdGFtcE1hcmt1cDsgLy9FUlMyMTA3MzEKICAgIGlmICghekRhdGEuc3NsRmF4KSB7IGFsZXJ0KCJFUlMyMzAzMTggbm90IHN0YW1waW5nISIpOyB9IC8vRVJTMjMwMzE4ICM5NjgyMiBuZWVkIGFub3RoZXIgY2FzZQogICAgdmFyIHVzZXJFbWFpbD1kb2MuWE9yZygiWF9jcm1Vc2VyIik7CiAgICBpZiAodXNlckVtYWlsLmluZGV4T2YoIkAiKT09LTEpIHVzZXJFbWFpbD0ic3VwcG9ydCtzaWduQHpwYXBlci5jb20iOwogICAgLy90cmFjayhkb2MsImludml0ZSBzZW50IiwiaW52aXRpbmcgIitYKGRvYywiWF9pbnZpdGVFbWFpbCIrbikucmVwbGFjZSgvIC9nLCIrIiksIDApOwogICAgYWxlcnQoIkVSUzIwMTIwNy4wOSB6cFNlcnZlcj0iK2RvYy5rYkRhdGEuSE9TVCk7CiAgICB6RGF0YS56cFNlcnZlcj0oIiIrZG9jLmtiRGF0YS5IT1NUKS5yZXBsYWNlKCJodHRwOi8vIiwiIikucmVwbGFjZSgiOjgwODAiLCIiKS5yZXBsYWNlKCJodHRwczovLyIsIiIpOyAvL0VSUzIwMTIwNCAjNzczMDIgLy9FUlMyMDEyMDYgbW9yZSBlbmdpbmUgcmVwbGFjZXMKICAgIGlmICghekRhdGEuenBTZXJ2ZXIpIHpEYXRhLnpwU2VydmVyPSJlZGdlLnpwYXBlci5jb20iOyAvL0VSUzE5MTExMCAjNjQxNjAgVE9ETyBnZXQgYSBzZXJ2ZXIKICAgIGlmICgoIiIrekRhdGEuenBTZXJ2ZXIpLmluZGV4T2YoInpwYXBlci5jb20iKT09LTEpIHsgLy9FUlMgVE9ETyBkb2MuenBTZXJ2ZXIgbmVlZGVkIGZvciB6aXBwaQogICAgICAgIHpEYXRhLnpwU2VydmVyPSJlZGdlLnpwYXBlci5jb20iOwogICAgICAgIGFsZXJ0KCJFUlMyMzAyMTIuMzIgWklQUEkgQlVTVEVEISEhIik7CiAgICAgICAgZG9jLmtiRGF0YS5IT1NUPXpEYXRhLnpwU2VydmVyOwogICAgfQogICAgYWxlcnQoIkVSUzIwMTIwNC4xMSB6cFNlcnZlciBpcyAiK3pEYXRhLnpwU2VydmVyKTsKICAgIHZhciBtYXJrdXBYTUw9IiIrWChkb2MsIlhfbWFya3VwIik7IC8vRVJTMjEwNjExIGFkZGVkICIiIGZvciBOUEUKICAgIGFsZXJ0KCJFUlMyMTA2MTIgbVhNTD0iK21hcmt1cFhNTCk7CiAgICBpZiAobWFya3VwWE1MLmluZGV4T2YoIlpTVEFNUCIpIT0tMSkgewogICAgICAgIGFsZXJ0KCJBTFJFQURZIFpTVEFNUEVEISIpOwogICAgICAgIHZhciB6c3RhbXA9IiIrWChkb2MsIlhfZGVsaXZlclN0YW1wIik7CiAgICAgICAgaWYgKHpzdGFtcC5pbmRleE9mKCIuY29tLyIpID09IC0xKSB7CiAgICAgICAgICAgIGFsZXJ0KCJSRURJUkVDVCBicm9rZW4/ICIrenN0YW1wKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICByZXR1cm4genN0YW1wOyAvL3Byb2JhYmx5IHNob3VsZCBiZSBzdGFtcE1hcmt1cC5yZXBsYWNlKCJ7IXFyfSIsenN0YW1wKTsKICAgICAgICB9CiAgICB9CiAgICAKICAgIHZhciBuPTE7CiAgICB2YXIgYXJyT2ZQYWlycz1bXTsKICAgIHZhciBQSU49WChkb2MsIlhfaW52aXRlUElOIituKTsgLy9FUlMyMTAxMTggVE9ETyBzdXBwb3J0IGlubGluZSBpbiBJTlZJVEVuOlNNUzplbWFpbDpQSU4gdmFsdWVzCiAgICBQSU49IiIrWChkb2MsIkNvbnRhY3RGYXgiKTsgLy9UT0RPIGNsZWFuIHVwIHRvIDEwIGRpZ2l0cwogICAgdmFyIHRvPVBJTjsgLy9mYXggb3IgU01TIG51bWJlcgogICAgaWYgKCFQSU4gfHwgKCIiK1BJTikuaW5kZXhPZigiUERGIikgIT0gLTEgfHwgKCIiK1BJTikuaW5kZXhPZigiOiIpICE9IC0xKSB7IC8vbWFrZSBvbmUgdXAgLy9FUlMyMTExMjAgUERGIC8vRVJTMjMwMjEyIGNoZWNrIHN0cmluZyAmICI6IgogICAgICAgIFBJTj0iMzAwNzYiOwogICAgICAgIGlmICgxPT09MSkgeyBQSU49MDsJd2hpbGUgKFBJTjwxMDAwMCkgeyBQSU49TWF0aC5mbG9vcigxMDAwMDAqTWF0aC5yYW5kb20oKSk7IH0gfSAvL0VSUzIxMDkxMiBQSU4gYmFjayBvbgogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2ludml0ZVBJTiIrbiwgKCIiK1BJTikpOwogICAgdmFyIHNpZ25IaW50cz0iPFhfaW52aXRlUElOIituKyI+IitQSU4rIjwvWF9pbnZpdGVQSU4iK24rIj4iOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3NpZ25JdCIsIHNpZ25IaW50cyk7CgogICAgLy9jcmVhdGUgYSBvbmUgdGltZSB1c2UgcmVkaXJlY3QgKEEpIHRvIGRvd25sb2FkIG9yIHZpZXcgdGhlIFBERiBvciBlbWJlZGRlZCBkYXRhCiAgICAvL3N0YW1wIGNvbnRhaW5zIHRoZSBBIGxpbmsgYXMgYSBRUiBjb2RlCiAgICAvL2NyZWF0ZSBhIGNvbnRyYWN0IHJlZGlyZWN0IChCKSB3aXRoIGEgUElOIHRvIHZpZXcgLyBzaWduIC8gbWFya3VwIHRoZSBQREYgYWZ0ZXJ3YXJkcwogICAgLy9hZnRlciB0aGUgMXN0IHRpbWUgQSBpcyB1c2VkIGNoYW5nZSB0aGUgZm9yd2FyZCBmcm9tIEEgdG8gZ290byBCCiAgICAvL0VSUzIxMDYxMiBvbmNlIGEgcmVkaXJlY3QgaXMgb3V0IG9mIHZpZXdzIGlmIHRoZXJlIGlzIGEgOyB0aGVuIGZvcndhcmQgdG8gaXQKICAgIAogICAgYWxlcnQoIkVSUzIxMDYxMi41NCBkb2MuQkFURVMgbWF5IGJlIG51bGwiKTsKICAgIC8vRVJTMjIxMTA3IHZhciBuSWQ9IiIrWChkb2MsIlhfekl0ZW1JZCIpOyBpZiAoIW5JZCAmJiAoIiIrZG9jLkJBVEVTKS5pbmRleE9mKCJfRm9ybSIpPT0tMSkgbklkPWRvYy5kYklEOyAvL0VSUzIxMDYxMSAyMDQwMDdlNFoxZGtqbmkyaWwKICAgIHZhciBuSWQ9IiIrWChkb2MsIlhfekl0ZW1JZCIpOyAgaWYgKCFuSWQpIG5JZD1kb2MuZGJJRDsgLy9FUlMyMTA2MTEgVE9ETyBjaGVjayBpZiB6RGF0YS5zc2xGYXggdGhlbiAgKCIiK2RvYy5CQVRFUykuaW5kZXhPZigiX0Zvcm0iKT09LTEKICAgIGFsZXJ0KCJFUlMyMjExMDcuNjYgY2hlY2sgekRhdGEuc3NsRmF4PSIrekRhdGEuc3NsRmF4ICsiIHpEYXRhLnppcHBpTW9kZT0iK3pEYXRhLnppcHBpTW9kZSk7CiAgICBpZiAoIW5JZCkgeyByZXR1cm4gIkVSUk9SOiBUZW1wbGF0ZXMgZG8gbm90IG5lZWQgc3RhbXBzIjsgfQogICAgCiAgICB2YXIgbGlua0E9Imh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiL2tiL3BkZi8iK25JZCsiL3ppdGVtLnBkZiI7IC8vRVJTMjAxMDE0CiAgICB2YXIgbGlua0I9Imh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiL2tiL2pzcC9kb2NDaGF0LmpzcD9pbnZpdGU9IituKyImZGJJRD0iK25JZDsgLy9FUlMyMDEwMTQKICAgIHZhciBtb3JlRGF0YT0iJnBhZ2VzPSIrZG9jLm51bVBhZ2VzKyImc2VuZFRvPSIrWChkb2MsIkNvbnRhY3RGYXgiKTsgLy9FUlMyMTA3MDMgIzgzNzY3CiAgICBhbGVydCgiRVJTMjEwNzAzIG1vcmVEYXRhPSIrbW9yZURhdGEpOwoKICAgIC8qIFRPRE8gY2FsbCB6UmVkaXJlY3QuanNwIHRvIGdldCBzaG9ydCBVUkwgKi8KICAgIHZhciByZXN1bHRzQj0iIiwgaT0tMSwgc2hvcnRCPSIiLCBzVVJMPSIiLCByZXN1bHRzPSIiOwogICAgdmFyIHRlbXBsYXRlPVgoZG9jLCJ0ZW1wbGF0ZVVSTDEiKTsgLy88dGVtcGxhdGVVUkwxPjAwMDA1ZGMwWjFnbHYzY2ppNDpBY2N0Q2FyZF9Gb3JtPC90ZW1wbGF0ZVVSTDE+IAogICAgdGVtcGxhdGU9ZG9jLkJBVEVTOyAvLzAwMTR4MDAwMDFrMW1OekFBSS1hdC0wMEQ0eDAwMDAwNVF4NTktQWNjdENhcmRfRm9ybQogICAgaT10ZW1wbGF0ZS5sYXN0SW5kZXhPZigiLSIpOyBpZiAoaT4tMSAmJiB0ZW1wbGF0ZS5pbmRleE9mKCJfRm9ybSIpPi0xKSB7CiAgICAgICAgekRhdGEuZG9jVHlwZT10ZW1wbGF0ZS5zdWJzdHJpbmcoaSsxKS5yZXBsYWNlKCJfRm9ybSIsIiIpOwogICAgICAgIGlmICh6RGF0YS5kb2NUeXBlLmluZGV4T2YoIkNhcmQiKT4tMSkgekRhdGEuZG9jVHlwZT0iWkNBUkQiOyAvL0VSUzIzMDEwNyBUT0RPIG5vdCBzdWNoIGEgaGFjawogICAgICAgIGFsZXJ0KCJFUlMyMzAxMDcgbm93IHpEYXRhLmRvY1R5cGUgaXMgIit6RGF0YS5kb2NUeXBlKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsekRhdGEuZG9jVHlwZSk7CiAgICB9IGVsc2UgewogICAgICAgIGFsZXJ0KCJFUlMyMzAxMDcgbm8gam95IHdpdGggIit0ZW1wbGF0ZSsiIGluICIrZG9jLkJBVEVTKyIgb3IgIitkb2Mud2RkYXRhKTsKICAgIH0KICAgIHZhciBzdGFtcFVybD0iaHR0cDovL2xvY2FsaG9zdDoxODgwMC9yZWQvc3RhbXAiOwogICAgc3RhbXBVcmw9Imh0dHBzOi8vcXIubWQvcmVkL3N0YW1wIjsgLy9FUlMyMzAzMTMgIzk2ODIyIGVuYWJsZSBxYTkwIGFuZCBjbGllbnQgc3RhbXBpbmcKICAgIGlmICgxPT0xICYmICAoIiIrekRhdGEuZG9jVHlwZSkuaW5kZXhPZigiWkNBUkQiKSA9PSAtMSkgeyAvL0VSUzIzMDEwNyAjOTY4MjIgWkNBUkQgMT09MCB0ZXN0CiAgICAgICAgLy9FUlMyMzAyMTMgcmVzdWx0c0I9d2dldChkb2MsICJodHRwOi8vbG9jYWxob3N0OjgwODAva2IvanNwL3pSZWRpcmVjdC5qc3A/dmlld3M9LTEmWF9pbnZpdGVQSU4xPSIrUElOK21vcmVEYXRhKyImc2F2ZT0iK2xpbmtCLnJlcGxhY2UoIiYiLCIlMjYiKSk7IC8vRVJTMjAxMDEzIFRPRE8gb3RoZXIgelJlZGlyZWN0IGNvbnRyb2xzIG1vcmUgdGhhbiBqdXN0IHRoZSBQSU4KICAgICAgICByZXN1bHRzQj13Z2V0KGRvYywgc3RhbXBVcmwrIj92aWV3cz0tMSZYX2ludml0ZVBJTjE9IitQSU4rbW9yZURhdGErIiZzYXZlPSIrbGlua0IucmVwbGFjZSgiJiIsIiUyNiIpKTsgLy9FUlMyMDEwMTMgVE9ETyBvdGhlciB6UmVkaXJlY3QgY29udHJvbHMgbW9yZSB0aGFuIGp1c3QgdGhlIFBJTgogCiAgICAgICAgaT1yZXN1bHRzQi5pbmRleE9mKCJVUkwiKTsgCiAgICAgICAgLy9FUlMyMzAxMDcgaWYgKGk9PS0xKSBpPXJlc3VsdHNCLmluZGV4T2YoIlVybCIpOyAvL0VSUzIzMDEwNCB6aXBwaSBpcyBVcmwgbm90IFVSTCBhbmQgd2dldCBpcyBub3QgYSBwdXJlIHN0cmluZz8KICAgICAgICBzaG9ydEI9cmVzdWx0c0Iuc3Vic3RyaW5nKGkrNixyZXN1bHRzQi5sZW5ndGgoKS0zKzEpOyAvL0VSUzIzMDExMSArMSBmb3Igc29tZSBzdHJhbmdlIHJlYXNvbgogICAgICAgIAogICAgICAgIGlmIChzaG9ydEIuaW5kZXhPZigiLCIpPi0xKSBzaG9ydEI9c2hvcnRCLnN1YnN0cmluZygwLHNob3J0Qi5pbmRleE9mKCIsIikpOyAvL0VSUzIzMDMwOCBibG9ja2NoYWluIGFuZCBuZXcgcGF0aWVudHMgVE9ETyBKU09OIHJlc3VsdHNCLlVSTAogICAgICAgIGFsZXJ0KCJFUlMyMzAyMTEuOTQgcmVzdWx0c0I9IityZXN1bHRzQisiIHNob3J0Qj0iK3Nob3J0Qik7CiAgICAgICAgaWYgKDE9PTEpIHsKICAgICAgICAgICAgc2hvcnRCPXJlc3VsdHNCLnN1YnN0cmluZyhpKzYscmVzdWx0c0IubGVuZ3RoKCktMysyKTsgLy9ub3cgKzIKICAgICAgICAgICAgaWYgKHNob3J0Qi5pbmRleE9mKCIsIik+LTEpIHNob3J0Qj1zaG9ydEIuc3Vic3RyaW5nKDAsc2hvcnRCLmluZGV4T2YoIiwiKSk7IC8vRVJTMjMwMzA4IGJsb2NrY2hhaW4gYW5kIG5ldyBwYXRpZW50cyBUT0RPIEpTT04gcmVzdWx0c0IuVVJMCiAgICAgICAgICAgIHNob3J0Qj1zaG9ydEIucmVwbGFjZSgiJiIsIiIpLnJlcGxhY2UoIlwiIiwiIik7CiAgICAgICAgICAgIGFsZXJ0KCJFUlMyMzAyMTEuOTggcmVzdWx0c0I9IityZXN1bHRzQisiIHNob3J0Qj0iK3Nob3J0Qik7CiAgICAgICAgfQogICAgICAgIHNob3J0Qj1zaG9ydEIucmVwbGFjZSgiaHR0cDovL2xvY2FsaG9zdDo4MDgwOjgwODAvIiwiaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIvIik7CiAgICAgICAgc2hvcnRCPXNob3J0Qi5yZXBsYWNlKCJodHRwczovL2xvY2FsaG9zdDo4MDgwLyIsImh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiLyIpOwogICAgICAgIHNob3J0Qj1zaG9ydEIucmVwbGFjZSh6RGF0YS56cFNlcnZlcisiL2tiL3p6ei8iLCJxci5tZC9rYi96enovIik7IC8vRVJTMjMwMzEzIGFsbCBzdGFtcHMgb24gcXIubWQgVE9ETyAvci96LyBvciAvCiAgICAgICAgdmFyIGV4cGlyZT1uZXcgRGF0ZSgpOyBleHBpcmUuc2V0VGltZShleHBpcmUuZ2V0VGltZSgpKzEwMDAqMzYwMCoyNCo3KTsgLy8yMDIxLTA2LTEwCiAgICAgICAgdmFyIGV4cGlyZWQ9Zm9ybWF0RGF0ZShleHBpcmUsICJZWVlZLU1NLUREIik7CiAgICAgICAgYWxlcnQoIkVSUzIzMDEwNCBzaG9ydEI9IitzaG9ydEIrIiBmcm9tICIrcmVzdWx0cyk7CiAgICAgICAgLy9FUlMyMzAyMTMgc1VSTD0iaHR0cDovL2xvY2FsaG9zdDo4MDgwL2tiL2pzcC96UmVkaXJlY3QuanNwP3VudGlsPSIrZXhwaXJlZCttb3JlRGF0YSsiJnZpZXdzPTEmc2F2ZT0iKyhsaW5rQSsiOyIrc2hvcnRCKS5yZXBsYWNlKCImIiwiJTI2Iik7CiAgICAgICAgc1VSTD1zdGFtcFVybCsiP3VudGlsPSIrZXhwaXJlZCttb3JlRGF0YSsiJnZpZXdzPTEmc2F2ZT0iKyhsaW5rQSsiOyIrc2hvcnRCKS5yZXBsYWNlKCImIiwiJTI2Iik7CiAgICAgICAgc1VSTCs9IiZzYXZlMD0iK2xpbmtCLnJlcGxhY2UoIiYiLCIlMjYiKTsgLy9FUlMyMzAyMTMgZm9yIHNtYXJ0ZXIgY29udHJhY3RzCiAgICAgICAgYWxlcnQoIkVSUzIzMDEwNCBzVVJMPSIrc1VSTCk7CiAgICAgICAgcmVzdWx0cz13Z2V0KGRvYywgc1VSTCk7CiAgICAgICAgaT1yZXN1bHRzLmluZGV4T2YoIlVSTCIpOwogICAgICAgIC8vRVJTMjMwMTA3IGlmIChpPT0tMSkgaT1yZXN1bHRzLmluZGV4T2YoIlVybCIpOyAvL0VSUzIzMDEwNCB6aXBwaSBpcyBVcmwgbm90IFVSTAogICAgfSBlbHNlIHsgLy9FUlMyMzAxMDcgWkNBUkQgaXMgYSBRUiBjb2RlIHRoYXQgYWx3YXlzIGhhcyBhIHB1YmxpYyBsYW5kaW5nIHBhZ2UKICAgICAgICAvL0VSUzIzMDIxNiBzVVJMPSJodHRwOi8vbG9jYWxob3N0OjgwODAva2IvanNwL3pSZWRpcmVjdC5qc3A/dmlld3M9LTEmc2F2ZT0iKyhsaW5rQSsiOyIrbGlua0EpLnJlcGxhY2UoIiYiLCIlMjYiKTsKICAgICAgICBzVVJMPXN0YW1wVXJsKyI/dmlld3M9LTEmc2F2ZT0iKyhsaW5rQSsiOyIrbGlua0EpLnJlcGxhY2UoIiYiLCIlMjYiKTsKICAgICAgICBhbGVydCgiRVJTMjMwMTA3IGRvY1R5cGU9Iit6RGF0YS5kb2NUeXBlKyIgc1VSTD0iK3NVUkwpOwogICAgICAgIHJlc3VsdHM9d2dldChkb2MsIHNVUkwpOwogICAgICAgIGk9cmVzdWx0cy5pbmRleE9mKCJVUkwiKTsKICAgIH0KICAgIGFsZXJ0KCJFUlMyMDEwMTQgaT0iK2krIiByZXN1bHRzPSIrcmVzdWx0cyk7IC8vRVJTMjEwMjExICM3NzAzMiBhZGRlZCBYX2ludml0ZVBJTjEgdG8gcmVkaXJlY3QKICAgIGFsZXJ0KCJFUlMyMTA2MDkgaT0iK2krIiByZXN1bHRzQj0iK3Jlc3VsdHNCKTsgCiAgICAKICAgIHZhciBzdGFtcFhNTD0iIjsKICAgIGlmIChpPi0xICYmIHJlc3VsdHMuaW5kZXhPZigiRVJST1IiKT09LTEpIHsKICAgICAgIGxpbms9cmVzdWx0cy5zdWJzdHJpbmcoaSs2LHJlc3VsdHMubGVuZ3RoKCktMysxKTsgIC8vRVJTMjMwMTExICsxIGZvciBzb21lIHN0cmFuZ2UgcmVhc29uCiAgICAgICBpZiAobGluay5pbmRleE9mKCIsIik+LTEpIGxpbms9bGluay5zdWJzdHJpbmcoMCxsaW5rLmluZGV4T2YoIiwiKSk7IC8vRVJTMjMwMzA4IGJsb2NrY2hhaW4gYW5kIG5ldyBwYXRpZW50cyBUT0RPIEpTT04gcmVzdWx0c0IuVVJMCiAgICAgICAgYWxlcnQoIkVSUzIzMDIxMS4xMjIgcmVzdWx0cz0iK3Jlc3VsdHMrIiBsaW5rPSIrbGluayk7CiAgICAgICAgaWYgKDE9PTEpIHsKICAgICAgICAgICAgbGluaz1yZXN1bHRzLnN1YnN0cmluZyhpKzYscmVzdWx0cy5sZW5ndGgoKS0zKzIpOyAvL25vdyArMgogICAgICAgICAgICBpZiAobGluay5pbmRleE9mKCIsIik+LTEpIGxpbms9bGluay5zdWJzdHJpbmcoMCxsaW5rLmluZGV4T2YoIiwiKSk7IC8vRVJTMjMwMzA4IGJsb2NrY2hhaW4gYW5kIG5ldyBwYXRpZW50cyBUT0RPIEpTT04gcmVzdWx0c0IuVVJMCiAgICAgICAgICAgIGxpbms9bGluay5yZXBsYWNlKCImIiwiIikucmVwbGFjZSgiXCIiLCIiKTsKICAgICAgICAgICAgYWxlcnQoIkVSUzIzMDIxMS45OCByZXN1bHRzPSIrcmVzdWx0cysiIGxpbms9IitsaW5rKTsKICAgICAgICB9CiAgICAgICBsaW5rPWxpbmsucmVwbGFjZSgiaHR0cDovL2xvY2FsaG9zdDo4MDgwOjgwODAvIiwiaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIvIik7IC8vRVJTMjAxMDE0IEhBQ0sgSk9LSU5HISEhIQogICAgICAgbGluaz1saW5rLnJlcGxhY2UoImh0dHBzOi8vbG9jYWxob3N0OjgwODAvIiwiaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIvIik7IAogICAgICAgLy9UT0RPIHNhdmUgdGhlIGxpbmsgaW50byBTRiBmaWVsZCBzbyB0aGF0IGNvbW11bmljYXRpb24gdGVtcGxhdGUgY2FuIGFjY2VzcyBpdCA1MC04MCBjaGFycyB1c2UgWlBBUEVSX19vdXRib3VuZEZheFRlbXBsYXRlX19jCiAgICAgICAvL1RPRE8gbWlnaHQgbmVlZCB0byBiZSB0aGUgaW52aXRlZCBwZXJzb24ncyBJZCBzdG9yZWQgaW4gK1goZG9jLCJYX2ludml0ZUlkIituKQogICAgICAgLy92YXIgbWFya3VwWE1MPVgoZG9jLCJYX21hcmt1cCIpOwogICAgICAgdmFyIHFyPWxpbms7IC8vRVJTMjMwMTIzICM5NjgyMgogICAgICAgaWYgKG1hcmt1cFhNTC5pbmRleE9mKCJaU1RBTVAiKT09LTEpIHsgLy9jb2RlPWh0dHBzOi8vZWRnZS56cGFwZXIuY29tL2tiL3p6ei8wWDFldThzZTFzYiZ3PTE2CiAgICAgICAgICAgIHFyPWxpbms7IC8vImh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiL2tiL3p6ei8iK3Nob3J0SUQrIiZ3PTE2IjsKICAgICAgICAgICAgLy9SRUFMUERGIGluIHBhZ2VfcGRmLmpzcCBidXQgbWFya3VwLmpzcCBwcmVmZXJzIDFzdCBzZXQKICAgICAgICAgICAgaWYgKCgiIit6RGF0YS5kb2NUeXBlKS5pbmRleE9mKCJaQ0FSRCIpICE9IC0xKSB7IC8vRVJTMjMwMTA3IFpDQVJEICM5NjgyMgogICAgICAgICAgICAgICAgdmFyIFNNUz1YKGRvYywiQ29udGFjdEZheCIpOyAvL0VSUzIxMDExOCBUT0RPIHN1cHBvcnQgaW5saW5lIGluIElOVklURW46U01TOmVtYWlsOlBJTiB2YWx1ZXMKICAgICAgICAgICAgICAgIHZhciBmYXg9WChkb2MsIkNvbnRhY3RGYXgiKTsKICAgICAgICAgICAgICAgIGFsZXJ0KCJFUlMyMzAxMDcgQ29udGFjdEZheD0iK2ZheCsgIiBmcm9tICIrZG9jLndkZGF0YSk7CiAgICAgICAgICAgICAgICAvL1RPRE8gRVJTMjMwMzE4IG1heWJlIGdldCBmcm9tIHNlbmRUbyBpZiBDb250YWN0RmF4IGlzIGVtcHR5CiAgICAgICAgICAgICAgICBpZiAoZmF4LmluZGV4T2YoIjEiKT09MCkgeyAvL0VSUzIzMDEwNyBUT0RPIENNQSBpZGVhcyBvciBwdXNoIHRvIE5vZGVSZWQKICAgICAgICAgICAgICAgICAgICB2YXIgbmV3UHJvdmlkZXI9d3Bvc3QoZG9jLCJodHRwczovL2VkZ2UuenBhcGVyLmNvbS9yZWQvenFyL3Byb3ZpZGVyP2ZheD0iK2ZheCk7CiAgICAgICAgICAgICAgICAgICAgYWxlcnQoIkVSUzIzMDEwNyBtYWRlIG9yIGZvdW5kICIrbmV3UHJvdmlkZXIpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgaWYgKFNNUy5pbmRleE9mKCJJTlZJVEUiKT09MCkgeyAvL0VSUzIzMDEwNyBUT0RPIENNQSBpZGVhcyBvciBwdXNoIHRvIE5vZGVSZWQKICAgICAgICAgICAgICAgICAgICBTTVM9U01TLnNwbGl0KCI6IilbMV07CiAgICAgICAgICAgICAgICAgICAgdmFyIG5ld1BhdGllbnQ9d3Bvc3QoZG9jLCJodHRwczovL2VkZ2UuenBhcGVyLmNvbS9yZWQvenFyL3BhdGllbnQ/c21zPSIrU01TKTsKICAgICAgICAgICAgICAgICAgICBhbGVydCgiRVJTMjMwMTA3IG1hZGUgb3IgZm91bmQgcGF0aWVudCAiK25ld1BhdGllbnQpOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIHN0YW1wTWFya3VwPSIiOyAvL0VSUzIxMDczMSAjODM3NjcgbWlnaHQgbmVlZCB0byBiZSBkaWZmZXJlbnQgZm9yIHNpZ25hdHVyZSBpbnZpdGUKICAgICAgICAgICAgICAgIHZhciBTWTE9NTA7CiAgICAgICAgICAgICAgICBzdGFtcE1hcmt1cCs9ImtibSgnSU1HWlNUQU1QX1JFQUxQREZDT09SRFMnLCdQQUdFMUlNR1pTVEFNUCcsJy9rYi9qc3AvcXIuanNwP2NvZGU9eyFxcn0nLDU1LDU1LDEwLDEwLCcnLCcxMicsNDUsNDUsIitTWCsiLCIrU1kxKyIpOyI7CiAgICAgICAgICAgICAgICAvL0VSUzIyMTEyOSAjOTE1NTIgekRhdGEuc3RhbXBNYXJrdXArPSJrYm0oJ0lNRzE2MjcxNDkzMTgwMzhfUkVBTFBERkNPT1JEUycsJ1BBR0UxSU1HMTYyNzE0OTMxODAzOCcsJ2FkZFRleHQnLDkzLDIyLDEwLDgzLCdmYXhNRC5vcmcnLCcxMCcsNzAsMTYsNyw3NTApOyI7CiAgICAgICAgICAgICAgICBzdGFtcE1hcmt1cCs9ImtibSgnSU1HMTYyNzE0OTMxODAzOF9SRUFMUERGQ09PUkRTJywnUEFHRTFJTUcxNjI3MTQ5MzE4MDM4JywnYWRkVGV4dCcsOTMsMjIsMTAsODMsJ3FyLm1kLycsJzcnLDcwLDE2LCIrU1grIiwiK1NZMSsiKTsiOyAvL0VSUzIzMDIxNiBqdXN0IHFyLm1kIG5vdCB6cXIubWQKICAgICAgICAgICAgICAgIHN0YW1wTWFya3VwKz0ia2JtKCdJTUcxNjI3MTQ5MzE4MDM5X1JFQUxQREZDT09SRFMnLCdQQUdFMUlNRzE2MjcxNDkzMTgwMzknLCdhZGRUZXh0Jyw5MywyMiwxMCw4MywneyF6enpbMCw0XX0nLCc3Jyw3MCwxNiwiK1NYKyIsIisoU1kxLTE1KSsiKTsiOwogICAgICAgICAgICAgICAgc3RhbXBNYXJrdXArPSJrYm0oJ0lNRzE2MjcxNDkzMTgwNDBfUkVBTFBERkNPT1JEUycsJ1BBR0UxSU1HMTYyNzE0OTMxODA0MCcsJ2FkZFRleHQnLDkzLDIyLDEwLDgzLCd7IXp6els1LDEwXX0nLCc3Jyw3MCwxNiwiK1NYKyIsIisoU1kxLTMwKSsiKTsiOyAvL0VSUzIzMDEwNAoKICAgICAgICAgICAgfQogICAgICAgICAgICBpZiAoMT09MSkgeyAvL0VSUzIzMDIxNiBhbGwgelBhcGVyIHN0YW1wcyBjb21lIGZyb20gcXIubWQKICAgICAgICAgICAgICAgIHZhciByej0iIjsgLy9ET05PVCBwdXQgYSAvIGluIGEgZG9jVGl0bGUgRVZFUiAtICJyZWQvei8iOyAvL2NvdWxkIG5vdCBnZXQgZW1wdHkgdG8gd29yayBkb3duc3RyZWFtCiAgICAgICAgICAgICAgICBxcj1xci5yZXBsYWNlKCJlZGdlLnpwYXBlci5jb20va2Ivenp6LyIsInFyLm1kLyIrcnopOyAvLyAiL3JlZC96LyIgRVJTMjMwMzE4IG5leHQgMyBsaW5lcyB0b28KICAgICAgICAgICAgICAgIGxpbms9bGluay5yZXBsYWNlKCJlZGdlLnpwYXBlci5jb20va2Ivenp6LyIsInFyLm1kLyIrcnopOyAvL0VSUzIzMDExMSAjOTY4MjIgbWlnaHQgbm90IGJlIG5lZWRlZAogICAgICAgICAgICAgICAgbGlua0E9bGlua0EucmVwbGFjZSgiZWRnZS56cGFwZXIuY29tL2tiL3p6ei8iLCJxci5tZC8iK3J6KTsKICAgICAgICAgICAgICAgIGxpbmtCPWxpbmtCLnJlcGxhY2UoImVkZ2UuenBhcGVyLmNvbS9rYi96enovIiwicXIubWQvIityeik7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIAogICAgICAgICAgICBhbGVydCgiRVJTMjMwMTExIHFyPSIrcXIpOyAvLy9odHRwczovL3FyLm1kLzJYMWdycmZqdGtzCiAgICAgICAgICAgIHN0YW1wWE1MPXN0YW1wTWFya3VwLnJlcGxhY2UoInshcXJ9Iixxcik7CiAgICAgICAgICAgIHZhciB6eno9cXIudG9VcHBlckNhc2UoKTsgCiAgICAgICAgICAgIHp6ej16enouc3Vic3RyaW5nKDErenp6Lmxhc3RJbmRleE9mKCIvIikpOyAvL0VSUzIzMDMxOCAvcmVkL3ovIHRvIC8KICAgICAgICAgICAgCiAgICAgICAgICAgIHN0YW1wWE1MPXN0YW1wWE1MLnJlcGxhY2UoInshenp6fSIsenp6KTsgLy9FUlMyMjExMjkgIzkxNTUyCiAgICAgICAgICAgIHN0YW1wWE1MPXN0YW1wWE1MLnJlcGxhY2UoInshenp6WzAsNF19Iix6enouc3Vic3RyaW5nKDAsNSkpOyAvL0VSUzIzMDEwNCAjOTE1NTIKICAgICAgICAgICAgc3RhbXBYTUw9c3RhbXBYTUwucmVwbGFjZSgieyF6enpbNSwxMF19Iix6enouc3Vic3RyaW5nKDUpKTsgLy9FUlMyMzAxMDQgIzkxNTUyCiAgICAgICAgICAgIAogICAgICAgICAgICBpZiAoMT09MSkgYXJyT2ZQYWlycy5wdXNoKCJYX21hcmt1cCIsbWFya3VwWE1MK3N0YW1wWE1MKTsgLy9FUlMyMzAxMTAgaW4gemlwcGkgX0Zvcm0gaXMgbm90IGEgcmlzayBidXQgbm90IHN1cmUgaW4ga2IgSEFDSyBFT0oKICAgICAgICAgICAgaWYgKCgiIitkb2MuQkFURVMpLmluZGV4T2YoIl9Gb3JtIik9PS0xKSB7IC8vRVJTMjMwMTEwIG1vdmVkIGJlbG93IFpDQVJEIGJ1dCBleHBlY3RpbmcgdGhlIGNhbGxpbmcgY29kZSB0byBzYXZlIHRoZSBtYXJrdXAKICAgICAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9tYXJrdXAiLG1hcmt1cFhNTCtzdGFtcFhNTCk7CiAgICAgICAgICAgICAgICAvL0VSUzIxMDkxMSBUT0RPIHNldCBCQVRFUyBvZiBuZXcgZG9jdW1lbnQgdG8gYmUgYW4gaW50ZXJhY3RpdmUgb25lIHshc2ZJRH1AeyFzZk9yZ30te2Zvcm1JZH0KICAgICAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCJORUVEUyBUTyBCRSB7IXNmSUR9QHshc2ZPcmd9LXtmb3JtSWR9Iik7CiAgICAgICAgICAgIH0KICAgICAgIAogICAgICAgICAgIGlmICgxPT0xKSB7ICAvL0VSUzIzMDIxNiAjOTY4MjIgb25seSBpZiBzdGFtcCBhZGRlZAogICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZGVsaXZlclN0YW1wIixsaW5rQSk7IC8vRVJTMjEwNjA5ICM4Mzc2NwogICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV0cmlldmVTdGFtcCIsbGlua0IpOwogICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfc2VudFN0YW1wIixxcik7IC8vRVJTMjMwMTIzICM5NjgyMiBodHRwczovL3FyLm1kL3JlZC96LzJYMWduZm9sMXNtCiAgICAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF96UVIiLHFyKTsgLy9FUlMyMzAxMjMgIzk2ODIyIGh0dHBzOi8vcXIubWQvcmVkL3ovMlgxZ25mb2wxc20KICAgICAgICAgICAgICAgaWYgKGRvYy5sYWJlbC5pbmRleE9mKCIxREQiKSA+IC0xKSB7IC8vRVJTMjMwMjE2IDFERCBoYWNrCiAgICAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkJBVEVTIixkb2MuQkFURVMucmVwbGFjZSgiQCIsIi0tYXQtLSIpKTsgCiAgICAgICAgICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkJBVEVTIixkb2MuQkFURVMucmVwbGFjZSgiLWF0LSIsIkAiKSk7IAogICAgICAgICAgICAgICB9IAogICAgICAgICAgICAgICBhbGVydCgiRVJTMjMwMjEyLjE3OSBBTFdBWVMgYWRkIHN0YW1wIHRoaXMgd2F5IFhfelFSPSIrcXIrIiBpbiAiK2RvYy5kYklEKyIgZml4ZWQgIitkb2MuQkFURVMpOwogICAgICAgICAgIH0KICAgICAgIH0KICAgICAgIAogICAgICAgCiAgICAgICAvL3NhdmUgdGhlIFJFRElSRUNUIElEIGJhY2sgaW50byB0aGUgb3JpZ2luYWwKICAgICAgICAvL0VSUzIzMDIxMiB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICAgICAgaWYgKDE9PTEgJiYgZG9jLmRiSUQgIT0gIkRVTU1ZIiAmJiBkb2MubGFiZWwuaW5kZXhPZigiRFVNTVkiKSA9PSAtMSkgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOy8vSEFDSyBUTyBERU1PCiAgICAgICAgZWxzZSBhbGVydCgiRVJTMjMwMjEyLjE4NiBkbyBub3Qgc2F2ZSB6UVIgZm9yICIrZG9jLmxhYmVsKyIgKCIrZG9jLmRiSUQrIikgdHJ1c3QgdGhlIGZsb3cgdG8gZG8gaXQiKTsKICAgICAgICAKICAgICAgICBhbGVydCgiRVJTMjAxMTEwLjIzIHNpZ25JdD0iK3NpZ25IaW50cyArICIgUElOIituKyI9IitQSU4pOwogICAgICAgIC8vRVJTMjExMTIwIGFkZGVkIGxpbmsgdG8gdHJhY2sKICAgICAgICB0cmFjayhkb2MsICJTVEFNUC5DUkVBVEUiLGxpbmsrIiB0byAiKyB0byArIjoiKyBYKGRvYywiWF9pbnZpdGVFbWFpbCIrbikucmVwbGFjZSgvIC9nLCIrIiksIDApOyAvL0VSUzIxMDExMiBpbnZpdGVzIHRvbwogICAgICAgIC8vRVJTMjEwNjA1IHJldHVybiBsaW5rCiAgICAgICAgcmV0dXJuIHN0YW1wWE1MOyAvL0VSUzIxMDYxMSBTRl9zZW5kRmF4LmpzcGYgY2FsbHMgdGhpcyBhY3Rpb24gYW5kIG5lZWRzIHRoZSBhZGRpdGlvbmFsIG1hcmt1cCBYTUwgdG8gYWRkIHRvIHRoZSBQREYgbm90IHlldCBzdG9yZWQKICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIlNvbWV0aGluZyB3ZW50IHdyb25nIGNyZWF0aW5nIHRoZSBzZWN1cmUgbGluay4iKTsKICAgICAgICAvL3JldHVybiBFUlJPUgogICAgfQp9OwoKekRhdGEubm90aWZ5PWZ1bmN0aW9uKGRvYyxyZXEpIHsgLy9FUlMyMjA0MDkgIzkwODgyIGlmIChkb2MuWCgiWF9idXR0b25BY3Rpb24iKS5pbmRleE9mKCJOT1RJRlkiKSkKICAgIHZhciBuPTE7CiAgICB2YXIgdG89WChkb2MsIlhfaW52aXRlUGhvbmUiK24pOwogICAgdmFyIFBJTj1YKGRvYywiWF9pbnZpdGVQSU4iK24pOwogICAgdmFyIGxpbms9WChkb2MsIlhfelFSIik7CiAgICB0bz1YKGRvYywiWF9pbnZpdGVQaG9uZSIrbik7CiAgICB2YXIgZnJvbT0iKzE1NzEyOTcyNzM3IjsKICAgIHZhciBjaGFubmVsPVgoZG9jLCJYX25vdGlmeUNoYW5uZWwiKTsKICAgIHZhciBzZW5kVG89WChkb2MsIlhfc2VuZFRvIik7CiAgICBpZiAoIXNlbmRUbykgc2VuZFRvPVgoZG9jLCJzZW5kVG8iKTsgLy9FUlMyMzAxMjMgIzk2ODIyCiAgICBpZiAoc2VuZFRvICYmIHNlbmRUbyAhPSB0bykgewogICAgICAgIGlmIChzZW5kVG8uaW5kZXhPZigiOiIpPi0xKSB7IHRvPXNlbmRUby5zcGxpdCgiOiIpWzFdOyB9IC8vRVJTMjMwMTIzCiAgICAgICAgZWxzZSB0bz1zZW5kVG87CiAgICAgICAgYWxlcnQoIk5vdGlmeSBkYklEPSIrZG9jLmRiSUQrIiBUT0RPIHNlZSBpZiBzZW5kVG8gb2YgIitzZW5kVG8rIiBpcyBhcHByb3ZlZCBmb3IgIitjaGFubmVsKTsKICAgICAgICAvL3RvPXNlbmRUbzsKICAgIH0gZWxzZSBhbGVydCgiUmVOb3RpZnkgZGJJRD0iK2RvYy5kYklEKyIgdG8gIit0bysiIGlzIGFscmVhZHkgYXBwcm92ZWQgZm9yICIrY2hhbm5lbCk7CiAgICAKICAgIGlmICghY2hhbm5lbCkgY2hhbm5lbD0iU01TIjsKICAgIGlmIChjaGFubmVsID09ICJTTVMiKSB7CiAgICAgICAgdmFyIGJvZHk9IlVzZSBQSU4gb2YgIitQSU4rICIgdG8gc2lnbiAiICsgZG9jLmxhYmVsOwogICAgICAgIGJvZHkrPSIgdXNpbmcgeW91ciBlbWFpbCBvciAiK2xpbms7CiAgICAgICAgaWYgKDE9PTEpIHNlbmRTTVMoZG9jLCBmcm9tLCB0bywgYm9keSk7CiAgICAgICAgdHJhY2soZG9jLCAiU0lHTi5JTlZJVEUiLCB0byArIjoiKyBYKGRvYywiWF9pbnZpdGVFbWFpbCIrbikucmVwbGFjZSgvIC9nLCIrIiksIDApOyAvL0VSUzIxMDExMiBpbnZpdGVzIHRvbwogICAgICAgIGFsZXJ0KCJzZW5kU01TIGFuZCBUUkFDSyBmb3IgU0lHTi5JTlZJVEUgdG8gIit0byk7IC8vRVJTMjMwMjE2IHNlbmRTTVMgc2VlbXMgdG8gYmUgaWdub3JlZAogICAgfQogICAgaWYgKGNoYW5uZWwgPT0gIkZBWCIpIHsKICAgICAgICBhbGVydCgiRmluZCB0aGUgb2xkIGZheCB3aXRoIEtCaW5QcmludCBhbmQgcmVzZW5kIGl0IHRvIHRoZSBuZXcgbnVtYmVyIik7CiAgICAgICAgLy9UT0RPIG5ldyBlbnZlbG9wZSB3aXRoIHNhbWUgUERGIGNyZWF0aW5nIG5ldyB6SXRlbQogICAgfQogICAgcmV0dXJuIHRvOwp9OwoKaWYgKGRvYy5YKCJYX2J1dHRvbkFjdGlvbiIpID09ICJBRERfU1RBTVAiKSB7IAogICAgdmFyIHJlcz16RGF0YS5hZGRTdGFtcChkb2MsIiIpOyAKICAgIC8vcHV0IGl0IGluIHRoZSBvdXRwdXQKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCByZXMpOwogICAgaWYgKDE9PTEpIHsgLy9FUlMyMzAyMTIgbm90IHN1cmUgaWYgdXBkYXRlREIgaXMgcmVhbGx5IHdvcmtpbmcKICAgICAgICBhbGVydCgiRW5kIG9mICIrZG9jLmRiSUQrIiBhZGRTdGFtcDogIityZXMpOwogICAgICAgIGlmICgxPT0xICYmIGRvYy5kYklEICE9ICJEVU1NWSIgJiYgZG9jLmxhYmVsLmluZGV4T2YoIkRVTU1ZIikgPT0gLTEpIHsKICAgICAgICAgICAgekRhdGEubm90aWZ5KGRvYywiIik7IC8vSEFDSyBUTyBERU1PCiAgICAgICAgICAgIC8vVE9ETyBzZW5kIHRoZSBlbWFpbCBmb3IgSU5WSVRFIGNhbGxzIC8vRVJTMjMwMjE3IEVPSiB3b3JrICM5NjgyMgogICAgICAgICAgICB2YXIgbGluaz1YKGRvYywiWF96UVIiKTsKICAgICAgICAgICAgdmFyIGJvZHk9IkNoZWNrIHlvdXIgcGhvbmUgZm9yIHRoZSBQSU4gbmVlZGVkIHRvIHNpZ24gdGhpcyBkb2N1bWVudC4gIE9uY2UgeW91IHJlY2VpdmUgaXQgdGhlbiBjbGljayAiK2xpbmsKICAgICAgICAgICAgKyIgZnJvbSBhbnkgd2ViIGJyb3dzZXIgb3IgbW9iaWxlIGRldmljZSB0byB2aWV3IG9yIHNpZ24gdGhlIGRvY3VtZW50LiI7CiAgICAgICAgICAgIHZhciBzZW5kVG89WChkb2MsIlhfc2VuZFRvIik7CiAgICAgICAgICAgIGlmICghc2VuZFRvKSBzZW5kVG89WChkb2MsInNlbmRUbyIpOwogICAgICAgICAgICB2YXIgdG9FbWFpbD1zZW5kVG8uc3BsaXQoIjoiKVsyXTsgCiAgICAgICAgICAgIHRvRW1haWw9dG9FbWFpbC5yZXBsYWNlKC8gL2csIisiKTsKICAgICAgICAgICAgdmFyIHVzZXJFbWFpbD0ic3VwcG9ydCtxcm1kQHpwYXBlci5jb20iOwogICAgICAgICAgICBpZiAodG9FbWFpbC5pbmRleE9mKCJAIik+LTEpIHsKICAgICAgICAgICAgICAgIHZhciByMT1zZW5kRW1haWwoZG9jLHVzZXJFbWFpbCx0b0VtYWlsLCJ6UGFwZXIgU2hhcmUgYW5kIFNpZ25pbmciLGJvZHkpOwogICAgICAgICAgICAgICAgYWxlcnQoIkVtYWlsIGZvciAiK3IxKTsKICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgIGFsZXJ0KCJNaXNzaW5nIGVtYWlsIGluICIrc2VuZFRvKTsKICAgICAgICAgICAgfQogICAgICAgIH0gZWxzZSBhbGVydCgiRVJTMjMwMjEyIGRvIG5vdCBzdGFtcC1ub3RpZnkgZm9yICIrZG9jLmxhYmVsKyIgKCIrZG9jLmRiSUQrIikiKTsKICAgICAgICByZXR1cm4gcmVzOwogICAgfQp9CgppZiAoZG9jLlgoIlhfYnV0dG9uQWN0aW9uIikuaW5kZXhPZigiTk9USUZZIik9PT0wKSB7IC8vRVJTMjIwNDA5ICM5MDg4MgogICAgdmFyIHJlcz16RGF0YS5ub3RpZnkoZG9jLCIiKTsKICAgIGFsZXJ0KCJFbmQgb2YgTm90aWZ5OiAiK3Jlcyk7CiAgICByZXR1cm4gcmVzOwogICAgLy9hZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgcmVzKTsKfQo="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS210605 create QR code and Blockchain contract to enable faster, digital access
if (doc.X("X_buttonAction") == "ADD_STAMP") {
    rool.evalContinue=false; //stops the bus!
}
if (doc.X("X_buttonAction").indexOf("NOTIFY")===0) { //ERS220409 #90882
    rool.evalContinue=false; //stops the bus!
}

//make a REDIRECT snippet
//create the  blockchain smart contract
//1st URL is open then require a PIN
//return a URL for the QR code
if ((""+zData.docType).indexOf("ZCARD") != -1) {zData.stampY=50; zData.stampX=17; } 
//TODO in template set -1 for no stamps or use zData.docType
if (!zData.stampX) { zData.stampX=17; }
if (!zData.stampY) { zData.stampY=750; }
//zData.stampX=37; //ERS230318 testing movement #96822
var SY=zData.stampY/1; var SX=zData.stampX/1;
zData.stampMarkup=""; //ERS210731 #83767 might need to be different for signature invite
zData.stampMarkup+="kbm('IMGZSTAMP_REALPDFCOORDS','PAGE1IMGZSTAMP','/kb/jsp/qr.jsp?code={!qr}',55,55,10,10,'','12',45,45,"+SX+","+SY+");";
//ERS221129 #91552 zData.stampMarkup+="kbm('IMG1627149318038_REALPDFCOORDS','PAGE1IMG1627149318038','addText',93,22,10,83,'faxMD.org','10',70,16,7,750);";
zData.stampMarkup+="kbm('IMG1627149318038_REALPDFCOORDS','PAGE1IMG1627149318038','addText',93,22,10,83,'qr.md/','7',70,16,"+SX+","+SY+");"; //ERS230216 just qr.md not zqr.md
zData.stampMarkup+="kbm('IMG1627149318039_REALPDFCOORDS','PAGE1IMG1627149318039','addText',93,22,10,83,'{!zzz[0,4]}','7',70,16,"+SX+","+(SY-15)+");";
zData.stampMarkup+="kbm('IMG1627149318040_REALPDFCOORDS','PAGE1IMG1627149318040','addText',93,22,10,83,'{!zzz[5,10]}','7',70,16,"+SX+","+(SY-30)+");"; //ERS230104
if (zData.stampX<0 || zData.stampY<0) { zData.stampMarkup=""; zData.sslFax=false; alert("ERS230318.21 turned off stamps for this pdf"); }

zData.addStamp=function(doc,req) {
    var stampMarkup="get from zData"; //ERS211120 cleaning up
    //ERS211120 faxmd to faxMD and looking for place for ZQR url to keep forever
    stampMarkup=zData.stampMarkup; //ERS210731
    if (!zData.sslFax) { alert("ERS230318 not stamping!"); } //ERS230318 #96822 need another case
    var userEmail=doc.XOrg("X_crmUser");
    if (userEmail.indexOf("@")==-1) userEmail="support+sign@zpaper.com";
    //track(doc,"invite sent","inviting "+X(doc,"X_inviteEmail"+n).replace(/ /g,"+"), 0);
    alert("ERS201207.09 zpServer="+doc.kbData.HOST);
    zData.zpServer=(""+doc.kbData.HOST).replace("http://","").replace(":8080","").replace("https://",""); //ERS201204 #77302 //ERS201206 more engine replaces
    if (!zData.zpServer) zData.zpServer="edge.zpaper.com"; //ERS191110 #64160 TODO get a server
    if ((""+zData.zpServer).indexOf("zpaper.com")==-1) { //ERS TODO doc.zpServer needed for zippi
        zData.zpServer="edge.zpaper.com";
        alert("ERS230212.32 ZIPPI BUSTED!!!");
        doc.kbData.HOST=zData.zpServer;
    }
    alert("ERS201204.11 zpServer is "+zData.zpServer);
    var markupXML=""+X(doc,"X_markup"); //ERS210611 added "" for NPE
    alert("ERS210612 mXML="+markupXML);
    if (markupXML.indexOf("ZSTAMP")!=-1) {
        alert("ALREADY ZSTAMPED!");
        var zstamp=""+X(doc,"X_deliverStamp");
        if (zstamp.indexOf(".com/") == -1) {
            alert("REDIRECT broken? "+zstamp);
        } else {
            return zstamp; //probably should be stampMarkup.replace("{!qr}",zstamp);
        }
    }
    
    var n=1;
    var arrOfPairs=[];
    var PIN=X(doc,"X_invitePIN"+n); //ERS210118 TODO support inline in INVITEn:SMS:email:PIN values
    PIN=""+X(doc,"ContactFax"); //TODO clean up to 10 digits
    var to=PIN; //fax or SMS number
    if (!PIN || (""+PIN).indexOf("PDF") != -1 || (""+PIN).indexOf(":") != -1) { //make one up //ERS211120 PDF //ERS230212 check string & ":"
        PIN="30076";
        if (1===1) { PIN=0;	while (PIN<10000) { PIN=Math.floor(100000*Math.random()); } } //ERS210912 PIN back on
    }
    arrOfPairs.push("X_invitePIN"+n, (""+PIN));
    var signHints="<X_invitePIN"+n+">"+PIN+"</X_invitePIN"+n+">";
    arrOfPairs.push("X_signIt", signHints);

    //create a one time use redirect (A) to download or view the PDF or embedded data
    //stamp contains the A link as a QR code
    //create a contract redirect (B) with a PIN to view / sign / markup the PDF afterwards
    //after the 1st time A is used change the forward from A to goto B
    //ERS210612 once a redirect is out of views if there is a ; then forward to it
    
    alert("ERS210612.54 doc.BATES may be null");
    //ERS221107 var nId=""+X(doc,"X_zItemId"); if (!nId && (""+doc.BATES).indexOf("_Form")==-1) nId=doc.dbID; //ERS210611 204007e4Z1dkjni2il
    var nId=""+X(doc,"X_zItemId");  if (!nId) nId=doc.dbID; //ERS210611 TODO check if zData.sslFax then  (""+doc.BATES).indexOf("_Form")==-1
    alert("ERS221107.66 check zData.sslFax="+zData.sslFax +" zData.zippiMode="+zData.zippiMode);
    if (!nId) { return "ERROR: Templates do not need stamps"; }
    
    var linkA="https://"+zData.zpServer+"/kb/pdf/"+nId+"/zitem.pdf"; //ERS201014
    var linkB="https://"+zData.zpServer+"/kb/jsp/docChat.jsp?invite="+n+"&dbID="+nId; //ERS201014
    var moreData="&pages="+doc.numPages+"&sendTo="+X(doc,"ContactFax"); //ERS210703 #83767
    alert("ERS210703 moreData="+moreData);

    /* TODO call zRedirect.jsp to get short URL */
    var resultsB="", i=-1, shortB="", sURL="", results="";
    var template=X(doc,"templateURL1"); //<templateURL1>00005dc0Z1glv3cji4:AcctCard_Form</templateURL1> 
    template=doc.BATES; //0014x00001k1mNzAAI-at-00D4x000005Qx59-AcctCard_Form
    i=template.lastIndexOf("-"); if (i>-1 && template.indexOf("_Form")>-1) {
        zData.docType=template.substring(i+1).replace("_Form","");
        if (zData.docType.indexOf("Card")>-1) zData.docType="ZCARD"; //ERS230107 TODO not such a hack
        alert("ERS230107 now zData.docType is "+zData.docType);
        arrOfPairs.push("X_docType",zData.docType);
    } else {
        alert("ERS230107 no joy with "+template+" in "+doc.BATES+" or "+doc.wddata);
    }
    var stampUrl="http://localhost:18800/red/stamp";
    stampUrl="https://qr.md/red/stamp"; //ERS230313 #96822 enable qa90 and client stamping
    if (1==1 &&  (""+zData.docType).indexOf("ZCARD") == -1) { //ERS230107 #96822 ZCARD 1==0 test
        //ERS230213 resultsB=wget(doc, "http://localhost:8080/kb/jsp/zRedirect.jsp?views=-1&X_invitePIN1="+PIN+moreData+"&save="+linkB.replace("&","%26")); //ERS201013 TODO other zRedirect controls more than just the PIN
        resultsB=wget(doc, stampUrl+"?views=-1&X_invitePIN1="+PIN+moreData+"&save="+linkB.replace("&","%26")); //ERS201013 TODO other zRedirect controls more than just the PIN
 
        i=resultsB.indexOf("URL"); 
        //ERS230107 if (i==-1) i=resultsB.indexOf("Url"); //ERS230104 zippi is Url not URL and wget is not a pure string?
        shortB=resultsB.substring(i+6,resultsB.length()-3+1); //ERS230111 +1 for some strange reason
        
        if (shortB.indexOf(",")>-1) shortB=shortB.substring(0,shortB.indexOf(",")); //ERS230308 blockchain and new patients TODO JSON resultsB.URL
        alert("ERS230211.94 resultsB="+resultsB+" shortB="+shortB);
        if (1==1) {
            shortB=resultsB.substring(i+6,resultsB.length()-3+2); //now +2
            if (shortB.indexOf(",")>-1) shortB=shortB.substring(0,shortB.indexOf(",")); //ERS230308 blockchain and new patients TODO JSON resultsB.URL
            shortB=shortB.replace("&","").replace("\"","");
            alert("ERS230211.98 resultsB="+resultsB+" shortB="+shortB);
        }
        shortB=shortB.replace("http://localhost:8080:8080/","https://"+zData.zpServer+"/");
        shortB=shortB.replace("https://localhost:8080/","https://"+zData.zpServer+"/");
        shortB=shortB.replace(zData.zpServer+"/kb/zzz/","qr.md/kb/zzz/"); //ERS230313 all stamps on qr.md TODO /r/z/ or /
        var expire=new Date(); expire.setTime(expire.getTime()+1000*3600*24*7); //2021-06-10
        var expired=formatDate(expire, "YYYY-MM-DD");
        alert("ERS230104 shortB="+shortB+" from "+results);
        //ERS230213 sURL="http://localhost:8080/kb/jsp/zRedirect.jsp?until="+expired+moreData+"&views=1&save="+(linkA+";"+shortB).replace("&","%26");
        sURL=stampUrl+"?until="+expired+moreData+"&views=1&save="+(linkA+";"+shortB).replace("&","%26");
        sURL+="&save0="+linkB.replace("&","%26"); //ERS230213 for smarter contracts
        alert("ERS230104 sURL="+sURL);
        results=wget(doc, sURL);
        i=results.indexOf("URL");
        //ERS230107 if (i==-1) i=results.indexOf("Url"); //ERS230104 zippi is Url not URL
    } else { //ERS230107 ZCARD is a QR code that always has a public landing page
        //ERS230216 sURL="http://localhost:8080/kb/jsp/zRedirect.jsp?views=-1&save="+(linkA+";"+linkA).replace("&","%26");
        sURL=stampUrl+"?views=-1&save="+(linkA+";"+linkA).replace("&","%26");
        alert("ERS230107 docType="+zData.docType+" sURL="+sURL);
        results=wget(doc, sURL);
        i=results.indexOf("URL");
    }
    alert("ERS201014 i="+i+" results="+results); //ERS210211 #77032 added X_invitePIN1 to redirect
    alert("ERS210609 i="+i+" resultsB="+resultsB); 
    
    var stampXML="";
    if (i>-1 && results.indexOf("ERROR")==-1) {
       link=results.substring(i+6,results.length()-3+1);  //ERS230111 +1 for some strange reason
       if (link.indexOf(",")>-1) link=link.substring(0,link.indexOf(",")); //ERS230308 blockchain and new patients TODO JSON resultsB.URL
        alert("ERS230211.122 results="+results+" link="+link);
        if (1==1) {
            link=results.substring(i+6,results.length()-3+2); //now +2
            if (link.indexOf(",")>-1) link=link.substring(0,link.indexOf(",")); //ERS230308 blockchain and new patients TODO JSON resultsB.URL
            link=link.replace("&","").replace("\"","");
            alert("ERS230211.98 results="+results+" link="+link);
        }
       link=link.replace("http://localhost:8080:8080/","https://"+zData.zpServer+"/"); //ERS201014 HACK JOKING!!!!
       link=link.replace("https://localhost:8080/","https://"+zData.zpServer+"/"); 
       //TODO save the link into SF field so that communication template can access it 50-80 chars use ZPAPER__outboundFaxTemplate__c
       //TODO might need to be the invited person's Id stored in +X(doc,"X_inviteId"+n)
       //var markupXML=X(doc,"X_markup");
       var qr=link; //ERS230123 #96822
       if (markupXML.indexOf("ZSTAMP")==-1) { //code=https://edge.zpaper.com/kb/zzz/0X1eu8se1sb&w=16
            qr=link; //"https://"+zData.zpServer+"/kb/zzz/"+shortID+"&w=16";
            //REALPDF in page_pdf.jsp but markup.jsp prefers 1st set
            if ((""+zData.docType).indexOf("ZCARD") != -1) { //ERS230107 ZCARD #96822
                var SMS=X(doc,"ContactFax"); //ERS210118 TODO support inline in INVITEn:SMS:email:PIN values
                var fax=X(doc,"ContactFax");
                alert("ERS230107 ContactFax="+fax+ " from "+doc.wddata);
                //TODO ERS230318 maybe get from sendTo if ContactFax is empty
                if (fax.indexOf("1")==0) { //ERS230107 TODO CMA ideas or push to NodeRed
                    var newProvider=wpost(doc,"https://edge.zpaper.com/red/zqr/provider?fax="+fax);
                    alert("ERS230107 made or found "+newProvider);
                }
                if (SMS.indexOf("INVITE")==0) { //ERS230107 TODO CMA ideas or push to NodeRed
                    SMS=SMS.split(":")[1];
                    var newPatient=wpost(doc,"https://edge.zpaper.com/red/zqr/patient?sms="+SMS);
                    alert("ERS230107 made or found patient "+newPatient);
                }

                stampMarkup=""; //ERS210731 #83767 might need to be different for signature invite
                var SY1=50;
                stampMarkup+="kbm('IMGZSTAMP_REALPDFCOORDS','PAGE1IMGZSTAMP','/kb/jsp/qr.jsp?code={!qr}',55,55,10,10,'','12',45,45,"+SX+","+SY1+");";
                //ERS221129 #91552 zData.stampMarkup+="kbm('IMG1627149318038_REALPDFCOORDS','PAGE1IMG1627149318038','addText',93,22,10,83,'faxMD.org','10',70,16,7,750);";
                stampMarkup+="kbm('IMG1627149318038_REALPDFCOORDS','PAGE1IMG1627149318038','addText',93,22,10,83,'qr.md/','7',70,16,"+SX+","+SY1+");"; //ERS230216 just qr.md not zqr.md
                stampMarkup+="kbm('IMG1627149318039_REALPDFCOORDS','PAGE1IMG1627149318039','addText',93,22,10,83,'{!zzz[0,4]}','7',70,16,"+SX+","+(SY1-15)+");";
                stampMarkup+="kbm('IMG1627149318040_REALPDFCOORDS','PAGE1IMG1627149318040','addText',93,22,10,83,'{!zzz[5,10]}','7',70,16,"+SX+","+(SY1-30)+");"; //ERS230104

            }
            if (1==1) { //ERS230216 all zPaper stamps come from qr.md
                var rz=""; //DONOT put a / in a docTitle EVER - "red/z/"; //could not get empty to work downstream
                qr=qr.replace("edge.zpaper.com/kb/zzz/","qr.md/"+rz); // "/red/z/" ERS230318 next 3 lines too
                link=link.replace("edge.zpaper.com/kb/zzz/","qr.md/"+rz); //ERS230111 #96822 might not be needed
                linkA=linkA.replace("edge.zpaper.com/kb/zzz/","qr.md/"+rz);
                linkB=linkB.replace("edge.zpaper.com/kb/zzz/","qr.md/"+rz);
            }
                
            alert("ERS230111 qr="+qr); ///https://qr.md/2X1grrfjtks
            stampXML=stampMarkup.replace("{!qr}",qr);
            var zzz=qr.toUpperCase(); 
            zzz=zzz.substring(1+zzz.lastIndexOf("/")); //ERS230318 /red/z/ to /
            
            stampXML=stampXML.replace("{!zzz}",zzz); //ERS221129 #91552
            stampXML=stampXML.replace("{!zzz[0,4]}",zzz.substring(0,5)); //ERS230104 #91552
            stampXML=stampXML.replace("{!zzz[5,10]}",zzz.substring(5)); //ERS230104 #91552
            
            if (1==1) arrOfPairs.push("X_markup",markupXML+stampXML); //ERS230110 in zippi _Form is not a risk but not sure in kb HACK EOJ
            if ((""+doc.BATES).indexOf("_Form")==-1) { //ERS230110 moved below ZCARD but expecting the calling code to save the markup
                arrOfPairs.push("X_markup",markupXML+stampXML);
                //ERS210911 TODO set BATES of new document to be an interactive one {!sfID}@{!sfOrg}-{formId}
                arrOfPairs.push("db-BATES","NEEDS TO BE {!sfID}@{!sfOrg}-{formId}");
            }
       
           if (1==1) {  //ERS230216 #96822 only if stamp added
               arrOfPairs.push("X_deliverStamp",linkA); //ERS210609 #83767
               arrOfPairs.push("X_retrieveStamp",linkB);
               arrOfPairs.push("X_sentStamp",qr); //ERS230123 #96822 https://qr.md/red/z/2X1gnfol1sm
               arrOfPairs.push("X_zQR",qr); //ERS230123 #96822 https://qr.md/red/z/2X1gnfol1sm
               if (doc.label.indexOf("1DD") > -1) { //ERS230216 1DD hack
                   arrOfPairs.push("BATES",doc.BATES.replace("@","--at--")); 
               } else {
                   arrOfPairs.push("BATES",doc.BATES.replace("-at-","@")); 
               } 
               alert("ERS230212.179 ALWAYS add stamp this way X_zQR="+qr+" in "+doc.dbID+" fixed "+doc.BATES);
           }
       }
       
       
       //save the REDIRECT ID back into the original
        //ERS230212 updateDB(doc,arrOfPairs);
        if (1==1 && doc.dbID != "DUMMY" && doc.label.indexOf("DUMMY") == -1) updateDB(doc,arrOfPairs);//HACK TO DEMO
        else alert("ERS230212.186 do not save zQR for "+doc.label+" ("+doc.dbID+") trust the flow to do it");
        
        alert("ERS201110.23 signIt="+signHints + " PIN"+n+"="+PIN);
        //ERS211120 added link to track
        track(doc, "STAMP.CREATE",link+" to "+ to +":"+ X(doc,"X_inviteEmail"+n).replace(/ /g,"+"), 0); //ERS210112 invites too
        //ERS210605 return link
        return stampXML; //ERS210611 SF_sendFax.jspf calls this action and needs the additional markup XML to add to the PDF not yet stored
    } else {
        alert("Something went wrong creating the secure link.");
        //return ERROR
    }
};

zData.notify=function(doc,req) { //ERS220409 #90882 if (doc.X("X_buttonAction").indexOf("NOTIFY"))
    var n=1;
    var to=X(doc,"X_invitePhone"+n);
    var PIN=X(doc,"X_invitePIN"+n);
    var link=X(doc,"X_zQR");
    to=X(doc,"X_invitePhone"+n);
    var from="+15712972737";
    var channel=X(doc,"X_notifyChannel");
    var sendTo=X(doc,"X_sendTo");
    if (!sendTo) sendTo=X(doc,"sendTo"); //ERS230123 #96822
    if (sendTo && sendTo != to) {
        if (sendTo.indexOf(":")>-1) { to=sendTo.split(":")[1]; } //ERS230123
        else to=sendTo;
        alert("Notify dbID="+doc.dbID+" TODO see if sendTo of "+sendTo+" is approved for "+channel);
        //to=sendTo;
    } else alert("ReNotify dbID="+doc.dbID+" to "+to+" is already approved for "+channel);
    
    if (!channel) channel="SMS";
    if (channel == "SMS") {
        var body="Use PIN of "+PIN+ " to sign " + doc.label;
        body+=" using your email or "+link;
        if (1==1) sendSMS(doc, from, to, body);
        track(doc, "SIGN.INVITE", to +":"+ X(doc,"X_inviteEmail"+n).replace(/ /g,"+"), 0); //ERS210112 invites too
        alert("sendSMS and TRACK for SIGN.INVITE to "+to); //ERS230216 sendSMS seems to be ignored
    }
    if (channel == "FAX") {
        alert("Find the old fax with KBinPrint and resend it to the new number");
        //TODO new envelope with same PDF creating new zItem
    }
    return to;
};

if (doc.X("X_buttonAction") == "ADD_STAMP") { 
    var res=zData.addStamp(doc,""); 
    //put it in the output
    addPostExecutionScript(doc, res);
    if (1==1) { //ERS230212 not sure if updateDB is really working
        alert("End of "+doc.dbID+" addStamp: "+res);
        if (1==1 && doc.dbID != "DUMMY" && doc.label.indexOf("DUMMY") == -1) {
            zData.notify(doc,""); //HACK TO DEMO
            //TODO send the email for INVITE calls //ERS230217 EOJ work #96822
            var link=X(doc,"X_zQR");
            var body="Check your phone for the PIN needed to sign this document.  Once you receive it then click "+link
            +" from any web browser or mobile device to view or sign the document.";
            var sendTo=X(doc,"X_sendTo");
            if (!sendTo) sendTo=X(doc,"sendTo");
            var toEmail=sendTo.split(":")[2]; 
            toEmail=toEmail.replace(/ /g,"+");
            var userEmail="support+qrmd@zpaper.com";
            if (toEmail.indexOf("@")>-1) {
                var r1=sendEmail(doc,userEmail,toEmail,"zPaper Share and Signing",body);
                alert("Email for "+r1);
            } else {
                alert("Missing email in "+sendTo);
            }
        } else alert("ERS230212 do not stamp-notify for "+doc.label+" ("+doc.dbID+")");
        return res;
    }
}

if (doc.X("X_buttonAction").indexOf("NOTIFY")===0) { //ERS220409 #90882
    var res=zData.notify(doc,"");
    alert("End of Notify: "+res);
    return res;
    //addPostExecutionScript(doc, res);
}

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
