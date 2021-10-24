<!--
// Name: SSLFax Library
// Committer: eric.stephens@zpaper.com
// Update: ERS210912 PIN back on
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-09-12 22:02:05","evalContinue":"true","active":true,"button":"Stamp","name":"SSLFax Library","conditions":{"logic":"or","arguments":[{"name":"doc.status","value":"NoSSLFax","operation":"not-contains"},{"name":"doc.X(\"X_buttonAction\")","value":"ADD_STAMP","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMyMTA2MDUgY3JlYXRlIFFSIGNvZGUgYW5kIEJsb2NrY2hhaW4gY29udHJhY3QgdG8gZW5hYmxlIGZhc3RlciwgZGlnaXRhbCBhY2Nlc3MKaWYgKGRvYy5YKCJYX2J1dHRvbkFjdGlvbiIpID09ICJBRERfU1RBTVAiKSB7CiAgICByb29sLmV2YWxDb250aW51ZT1mYWxzZTsgLy9zdG9wcyB0aGUgYnVzIQp9CgovL21ha2UgYSBSRURJUkVDVCBzbmlwcGV0Ci8vY3JlYXRlIHRoZSAgYmxvY2tjaGFpbiBzbWFydCBjb250cmFjdAovLzFzdCBVUkwgaXMgb3BlbiB0aGVuIHJlcXVpcmUgYSBQSU4KLy9yZXR1cm4gYSBVUkwgZm9yIHRoZSBRUiBjb2RlCnpEYXRhLnN0YW1wTWFya3VwPSIiOyAvL0VSUzIxMDczMSAjODM3NjcgbWlnaHQgbmVlZCB0byBiZSBkaWZmZXJlbnQgZm9yIHNpZ25hdHVyZSBpbnZpdGUKekRhdGEuc3RhbXBNYXJrdXArPSJrYm0oJ0lNR1pTVEFNUF9SRUFMUERGQ09PUkRTJywnUEFHRTFJTUdaU1RBTVAnLCcva2IvanNwL3FyLmpzcD9jb2RlPXshcXJ9Jyw1NSw1NSwxMCwxMCwnJywnMTInLDQ1LDQ1LDE3LDc1MCk7IjsKekRhdGEuc3RhbXBNYXJrdXArPSJrYm0oJ0lNRzE2MjcxNDkzMTgwMzhfUkVBTFBERkNPT1JEUycsJ1BBR0UxSU1HMTYyNzE0OTMxODAzOCcsJ2FkZFRleHQnLDkzLDIyLDEwLDgzLCdmYXhtZC5vcmcnLCcxMCcsNzAsMTYsNyw3NTApOyI7Cgp6RGF0YS5hZGRTdGFtcD1mdW5jdGlvbihkb2MscmVxKSB7CiAgICB2YXIgc3RhbXBNYXJrdXA9ImtibSgnSU1HWlNUQU1QX1JFQUxQREZDT09SRFMnLCdQQUdFMUlNR1pTVEFNUCcsJy9rYi9qc3AvcXIuanNwP2NvZGU9eyFxcn0nLDU1LDU1LDEwLDEwLCcnLCcxMicsNDUsNDUsNyw3OTUpOyI7CiAgICBzdGFtcE1hcmt1cD0ia2JtKCdJTUdaU1RBTVBfUkVBTFBERkNPT1JEUycsJ1BBR0UxSU1HWlNUQU1QJywnL2tiL2pzcC9xci5qc3A/Y29kZT17IXFyfScsNTUsNTUsMTAsMTAsJycsJzEyJyw0NSw0NSw3LDc3NSk7IjsgLy9FUlMyMTA3MDIgY3JvcHBlZAogICAgc3RhbXBNYXJrdXA9ImtibSgnSU1HWlNUQU1QX1JFQUxQREZDT09SRFMnLCdQQUdFMUlNR1pTVEFNUCcsJy9rYi9qc3AvcXIuanNwP2NvZGU9eyFxcn0nLDU1LDU1LDEwLDEwLCcnLCcxMicsNDUsNDUsMjcsNzYwKTsiOyAvL0VSUzIxMDcyNCBzdGlsbCBjcm9wcGVkCiAgICBzdGFtcE1hcmt1cCs9ImtibSgnSU1HMTYyNzE0OTMxODAzOF9SRUFMUERGQ09PUkRTJywnUEFHRTFJTUcxNjI3MTQ5MzE4MDM4JywnYWRkVGV4dCcsOTMsMjIsMTAsODMsJ2ZheG1kLm9yZycsJzEwJyw3MCwxNiw3LDc1MCk7IjsKICAgIHN0YW1wTWFya3VwPXpEYXRhLnN0YW1wTWFya3VwOyAvL0VSUzIxMDczMQogICAgdmFyIHVzZXJFbWFpbD1kb2MuWE9yZygiWF9jcm1Vc2VyIik7CiAgICBpZiAodXNlckVtYWlsLmluZGV4T2YoIkAiKT09LTEpIHVzZXJFbWFpbD0ic3VwcG9ydCtzaWduQHpwYXBlci5jb20iOwogICAgLy90cmFjayhkb2MsImludml0ZSBzZW50IiwiaW52aXRpbmcgIitYKGRvYywiWF9pbnZpdGVFbWFpbCIrbikucmVwbGFjZSgvIC9nLCIrIiksIDApOwogICAgYWxlcnQoIkVSUzIwMTIwNy4wOSB6cFNlcnZlcj0iK2RvYy5rYkRhdGEuSE9TVCk7CiAgICB6RGF0YS56cFNlcnZlcj0oIiIrZG9jLmtiRGF0YS5IT1NUKS5yZXBsYWNlKCJodHRwOi8vIiwiIikucmVwbGFjZSgiOjgwODAiLCIiKS5yZXBsYWNlKCJodHRwczovLyIsIiIpOyAvL0VSUzIwMTIwNCAjNzczMDIgLy9FUlMyMDEyMDYgbW9yZSBlbmdpbmUgcmVwbGFjZXMKICAgIGlmICghekRhdGEuenBTZXJ2ZXIpIHpEYXRhLnpwU2VydmVyPSJlZGdlLnpwYXBlci5jb20iOyAvL0VSUzE5MTExMCAjNjQxNjAgVE9ETyBnZXQgYSBzZXJ2ZXIKICAgIGlmICgoIiIrekRhdGEuenBTZXJ2ZXIpLmluZGV4T2YoInpwYXBlci5jb20iKT09LTEpIHsgLy9FUlMgVE9ETyBkb2MuenBTZXJ2ZXIgbmVlZGVkIGZvciB6aXBwaQogICAgICAgIHpEYXRhLnpwU2VydmVyPSJlZGdlLnpwYXBlci5jb20iOwogICAgICAgIGFsZXJ0KCJaSVBQSSBCVVNURUQhISEiKTsKICAgIH0KICAgIGFsZXJ0KCJFUlMyMDEyMDQuMTEgenBTZXJ2ZXIgaXMgIit6RGF0YS56cFNlcnZlcik7CiAgICB2YXIgbWFya3VwWE1MPSIiK1goZG9jLCJYX21hcmt1cCIpOyAvL0VSUzIxMDYxMSBhZGRlZCAiIiBmb3IgTlBFCiAgICBhbGVydCgiRVJTMjEwNjEyIG1YTUw9IittYXJrdXBYTUwpOwogICAgaWYgKG1hcmt1cFhNTC5pbmRleE9mKCJaU1RBTVAiKSE9LTEpIHsKICAgICAgICBhbGVydCgiQUxSRUFEWSBaU1RBTVBFRCEiKTsKICAgICAgICB2YXIgenN0YW1wPSIiK1goZG9jLCJYX2RlbGl2ZXJTdGFtcCIpOwogICAgICAgIGlmICh6c3RhbXAuaW5kZXhPZigiLmNvbS8iKSA9PSAtMSkgewogICAgICAgICAgICBhbGVydCgiUkVESVJFQ1QgYnJva2VuPyAiK3pzdGFtcCk7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgcmV0dXJuIHpzdGFtcDsgLy9wcm9iYWJseSBzaG91bGQgYmUgc3RhbXBNYXJrdXAucmVwbGFjZSgieyFxcn0iLHpzdGFtcCk7CiAgICAgICAgfQogICAgfQogICAgCiAgICB2YXIgbj0xOwogICAgdmFyIGFyck9mUGFpcnM9W107CiAgICB2YXIgUElOPVgoZG9jLCJYX2ludml0ZVBJTiIrbik7IC8vRVJTMjEwMTE4IFRPRE8gc3VwcG9ydCBpbmxpbmUgaW4gSU5WSVRFbjpTTVM6ZW1haWw6UElOIHZhbHVlcwogICAgUElOPSIiK1goZG9jLCJDb250YWN0RmF4Iik7IC8vVE9ETyBjbGVhbiB1cCB0byAxMCBkaWdpdHMKICAgIHZhciB0bz1QSU47IC8vZmF4IG9yIFNNUyBudW1iZXIKICAgIGlmICghUElOKSB7IC8vbWFrZSBvbmUgdXAKICAgICAgICBQSU49IjMwMDc2IjsKICAgICAgICBpZiAoMT09PTEpIHsgUElOPTA7CXdoaWxlIChQSU48MTAwMDApIHsgUElOPU1hdGguZmxvb3IoMTAwMDAwKk1hdGgucmFuZG9tKCkpOyB9IH0gLy9FUlMyMTA5MTIgUElOIGJhY2sgb24KICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiWF9pbnZpdGVQSU4iK24sICgiIitQSU4pKTsKICAgIHZhciBzaWduSGludHM9IjxYX2ludml0ZVBJTiIrbisiPiIrUElOKyI8L1hfaW52aXRlUElOIituKyI+IjsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9zaWduSXQiLCBzaWduSGludHMpOwoKICAgIC8vY3JlYXRlIGEgb25lIHRpbWUgdXNlIHJlZGlyZWN0IChBKSB0byBkb3dubG9hZCBvciB2aWV3IHRoZSBQREYgb3IgZW1iZWRkZWQgZGF0YQogICAgLy9zdGFtcCBjb250YWlucyB0aGUgQSBsaW5rIGFzIGEgUVIgY29kZQogICAgLy9jcmVhdGUgYSBjb250cmFjdCByZWRpcmVjdCAoQikgd2l0aCBhIFBJTiB0byB2aWV3IC8gc2lnbiAvIG1hcmt1cCB0aGUgUERGIGFmdGVyd2FyZHMKICAgIC8vYWZ0ZXIgdGhlIDFzdCB0aW1lIEEgaXMgdXNlZCBjaGFuZ2UgdGhlIGZvcndhcmQgZnJvbSBBIHRvIGdvdG8gQgogICAgLy9FUlMyMTA2MTIgb25jZSBhIHJlZGlyZWN0IGlzIG91dCBvZiB2aWV3cyBpZiB0aGVyZSBpcyBhIDsgdGhlbiBmb3J3YXJkIHRvIGl0CiAgICAKICAgIGFsZXJ0KCJFUlMyMTA2MTIuNTQgZG9jLkJBVEVTIG1heSBiZSBudWxsIik7CiAgICB2YXIgbklkPSIiK1goZG9jLCJYX3pJdGVtSWQiKTsgaWYgKCFuSWQgJiYgKCIiK2RvYy5CQVRFUykuaW5kZXhPZigiX0Zvcm0iKT09LTEpIG5JZD1kb2MuZGJJRDsgLy9FUlMyMTA2MTEgMjA0MDA3ZTRaMWRram5pMmlsCiAgICBpZiAoIW5JZCkgeyByZXR1cm4gIkVSUk9SOiBUZW1wbGF0ZXMgZG8gbm90IG5lZWQgc3RhbXBzIjsgfQogICAgCiAgICB2YXIgbGlua0E9Imh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiL2tiL3BkZi8iK25JZCsiL3ppdGVtLnBkZiI7IC8vRVJTMjAxMDE0CiAgICB2YXIgbGlua0I9Imh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiL2tiL2pzcC9kb2NDaGF0LmpzcD9pbnZpdGU9IituKyImZGJJRD0iK25JZDsgLy9FUlMyMDEwMTQKICAgIHZhciBtb3JlRGF0YT0iJnBhZ2VzPSIrZG9jLm51bVBhZ2VzKyImc2VuZFRvPSIrWChkb2MsIkNvbnRhY3RGYXgiKTsgLy9FUlMyMTA3MDMgIzgzNzY3CiAgICBhbGVydCgiRVJTMjEwNzAzIG1vcmVEYXRhPSIrbW9yZURhdGEpOwoKICAgIC8qIFRPRE8gY2FsbCB6UmVkaXJlY3QuanNwIHRvIGdldCBzaG9ydCBVUkwgKi8KICAgIHZhciByZXN1bHRzQj13Z2V0KGRvYywgImh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9rYi9qc3AvelJlZGlyZWN0LmpzcD92aWV3cz0tMSZYX2ludml0ZVBJTjE9IitQSU4rbW9yZURhdGErIiZzYXZlPSIrbGlua0IucmVwbGFjZSgiJiIsIiUyNiIpKTsgLy9FUlMyMDEwMTMgVE9ETyBvdGhlciB6UmVkaXJlY3QgY29udHJvbHMgbW9yZSB0aGFuIGp1c3QgdGhlIFBJTgogICAgdmFyIGk9cmVzdWx0c0IuaW5kZXhPZigiVVJMIik7CiAgICB2YXIgc2hvcnRCPXJlc3VsdHNCLnN1YnN0cmluZyhpKzYscmVzdWx0c0IubGVuZ3RoKCktMyk7CiAgICBzaG9ydEI9c2hvcnRCLnJlcGxhY2UoImh0dHA6Ly9sb2NhbGhvc3Q6ODA4MDo4MDgwLyIsImh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiLyIpOwogICAgc2hvcnRCPXNob3J0Qi5yZXBsYWNlKCJodHRwczovL2xvY2FsaG9zdDo4MDgwLyIsImh0dHBzOi8vIit6RGF0YS56cFNlcnZlcisiLyIpOyAKICAgIHZhciBleHBpcmU9bmV3IERhdGUoKTsgZXhwaXJlLnNldFRpbWUoZXhwaXJlLmdldFRpbWUoKSsxMDAwKjM2MDAqMjQqNyk7IC8vMjAyMS0wNi0xMAogICAgdmFyIGV4cGlyZWQ9Zm9ybWF0RGF0ZShleHBpcmUsICJZWVlZLU1NLUREIik7CiAgICB2YXIgcmVzdWx0cz13Z2V0KGRvYywgImh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9rYi9qc3AvelJlZGlyZWN0LmpzcD91bnRpbD0iK2V4cGlyZWQrbW9yZURhdGErIiZ2aWV3cz0xJnNhdmU9IisobGlua0ErIjsiK3Nob3J0QikucmVwbGFjZSgiJiIsIiUyNiIpKTsKICAgIGk9cmVzdWx0cy5pbmRleE9mKCJVUkwiKTsKICAgIGFsZXJ0KCJFUlMyMDEwMTQgaT0iK2krIiByZXN1bHRzPSIrcmVzdWx0cyk7IC8vRVJTMjEwMjExICM3NzAzMiBhZGRlZCBYX2ludml0ZVBJTjEgdG8gcmVkaXJlY3QKICAgIGFsZXJ0KCJFUlMyMTA2MDkgaT0iK2krIiByZXN1bHRzQj0iK3Jlc3VsdHNCKTsgCiAgICAKICAgIHZhciBzdGFtcFhNTD0iIjsKICAgIGlmIChpPi0xICYmIHJlc3VsdHMuaW5kZXhPZigiRVJST1IiKT09LTEpIHsKICAgICAgIGxpbms9cmVzdWx0cy5zdWJzdHJpbmcoaSs2LHJlc3VsdHMubGVuZ3RoKCktMyk7CiAgICAgICBsaW5rPWxpbmsucmVwbGFjZSgiaHR0cDovL2xvY2FsaG9zdDo4MDgwOjgwODAvIiwiaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIvIik7IC8vRVJTMjAxMDE0IEhBQ0sgSk9LSU5HISEhIQogICAgICAgbGluaz1saW5rLnJlcGxhY2UoImh0dHBzOi8vbG9jYWxob3N0OjgwODAvIiwiaHR0cHM6Ly8iK3pEYXRhLnpwU2VydmVyKyIvIik7IAogICAgICAgLy9UT0RPIHNhdmUgdGhlIGxpbmsgaW50byBTRiBmaWVsZCBzbyB0aGF0IGNvbW11bmljYXRpb24gdGVtcGxhdGUgY2FuIGFjY2VzcyBpdCA1MC04MCBjaGFycyB1c2UgWlBBUEVSX19vdXRib3VuZEZheFRlbXBsYXRlX19jCiAgICAgICAvL1RPRE8gbWlnaHQgbmVlZCB0byBiZSB0aGUgaW52aXRlZCBwZXJzb24ncyBJZCBzdG9yZWQgaW4gK1goZG9jLCJYX2ludml0ZUlkIituKQogICAgICAgLy92YXIgbWFya3VwWE1MPVgoZG9jLCJYX21hcmt1cCIpOwogICAgICAgaWYgKG1hcmt1cFhNTC5pbmRleE9mKCJaU1RBTVAiKT09LTEpIHsgLy9jb2RlPWh0dHBzOi8vZWRnZS56cGFwZXIuY29tL2tiL3p6ei8wWDFldThzZTFzYiZ3PTE2CiAgICAgICAgICAgIHZhciBxcj1saW5rOyAvLyJodHRwczovLyIrekRhdGEuenBTZXJ2ZXIrIi9rYi96enovIitzaG9ydElEKyImdz0xNiI7CiAgICAgICAgICAgIHN0YW1wWE1MPXN0YW1wTWFya3VwLnJlcGxhY2UoInshcXJ9Iixxcik7CiAgICAgICAgICAgIC8vUkVBTFBERiBpbiBwYWdlX3BkZi5qc3AgYnV0IG1hcmt1cC5qc3AgcHJlZmVycyAxc3Qgc2V0CiAgICAgICAgICAgIGlmICgoIiIrZG9jLkJBVEVTKS5pbmRleE9mKCJfRm9ybSIpPT0tMSkgewogICAgICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX21hcmt1cCIsbWFya3VwWE1MK3N0YW1wWE1MKTsKICAgICAgICAgICAgICAgIC8vRVJTMjEwOTExIFRPRE8gc2V0IEJBVEVTIG9mIG5ldyBkb2N1bWVudCB0byBiZSBhbiBpbnRlcmFjdGl2ZSBvbmUgeyFzZklEfUB7IXNmT3JnfS17Zm9ybUlkfQogICAgICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIk5FRURTIFRPIEJFIHshc2ZJRH1AeyFzZk9yZ30te2Zvcm1JZH0iKTsKICAgICAgICAgICAgfQogICAgICAgfQogICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RlbGl2ZXJTdGFtcCIsbGlua0EpOyAvL0VSUzIxMDYwOSAjODM3NjcKICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9yZXRyaWV2ZVN0YW1wIixsaW5rQik7CiAgICAgICAKICAgICAgIC8vc2F2ZSB0aGUgUkVESVJFQ1QgSUQgYmFjayBpbnRvIHRoZSBvcmlnaW5hbAogICAgICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiRVJTMjAxMTEwLjIzIHNpZ25JdD0iK3NpZ25IaW50cyArICIgUElOIituKyI9IitQSU4pOwogICAgICAgIHRyYWNrKGRvYywgIlNUQU1QLkNSRUFURSIsIHRvICsiOiIrIFgoZG9jLCJYX2ludml0ZUVtYWlsIituKS5yZXBsYWNlKC8gL2csIisiKSwgMCk7IC8vRVJTMjEwMTEyIGludml0ZXMgdG9vCiAgICAgICAgLy9FUlMyMTA2MDUgcmV0dXJuIGxpbmsKICAgICAgICByZXR1cm4gc3RhbXBYTUw7IC8vRVJTMjEwNjExIFNGX3NlbmRGYXguanNwZiBjYWxscyB0aGlzIGFjdGlvbiBhbmQgbmVlZHMgdGhlIGFkZGl0aW9uYWwgbWFya3VwIFhNTCB0byBhZGQgdG8gdGhlIFBERiBub3QgeWV0IHN0b3JlZAogICAgfSBlbHNlIHsKICAgICAgICBhbGVydCgiU29tZXRoaW5nIHdlbnQgd3JvbmcgY3JlYXRpbmcgdGhlIHNlY3VyZSBsaW5rLiIpOwogICAgICAgIC8vcmV0dXJuIEVSUk9SCiAgICB9Cn0KCmlmIChkb2MuWCgiWF9idXR0b25BY3Rpb24iKSA9PSAiQUREX1NUQU1QIikgeyAKICAgIHZhciByZXM9ekRhdGEuYWRkU3RhbXAoZG9jLCIiKTsgCiAgICAvL3B1dCBpdCBpbiB0aGUgb3V0cHV0CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgcmVzKTsKfQ=="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS210605 create QR code and Blockchain contract to enable faster, digital access
if (doc.X("X_buttonAction") == "ADD_STAMP") {
    rool.evalContinue=false; //stops the bus!
}

//make a REDIRECT snippet
//create the  blockchain smart contract
//1st URL is open then require a PIN
//return a URL for the QR code
zData.stampMarkup=""; //ERS210731 #83767 might need to be different for signature invite
zData.stampMarkup+="kbm('IMGZSTAMP_REALPDFCOORDS','PAGE1IMGZSTAMP','/kb/jsp/qr.jsp?code={!qr}',55,55,10,10,'','12',45,45,17,750);";
zData.stampMarkup+="kbm('IMG1627149318038_REALPDFCOORDS','PAGE1IMG1627149318038','addText',93,22,10,83,'faxmd.org','10',70,16,7,750);";

zData.addStamp=function(doc,req) {
    var stampMarkup="kbm('IMGZSTAMP_REALPDFCOORDS','PAGE1IMGZSTAMP','/kb/jsp/qr.jsp?code={!qr}',55,55,10,10,'','12',45,45,7,795);";
    stampMarkup="kbm('IMGZSTAMP_REALPDFCOORDS','PAGE1IMGZSTAMP','/kb/jsp/qr.jsp?code={!qr}',55,55,10,10,'','12',45,45,7,775);"; //ERS210702 cropped
    stampMarkup="kbm('IMGZSTAMP_REALPDFCOORDS','PAGE1IMGZSTAMP','/kb/jsp/qr.jsp?code={!qr}',55,55,10,10,'','12',45,45,27,760);"; //ERS210724 still cropped
    stampMarkup+="kbm('IMG1627149318038_REALPDFCOORDS','PAGE1IMG1627149318038','addText',93,22,10,83,'faxmd.org','10',70,16,7,750);";
    stampMarkup=zData.stampMarkup; //ERS210731
    var userEmail=doc.XOrg("X_crmUser");
    if (userEmail.indexOf("@")==-1) userEmail="support+sign@zpaper.com";
    //track(doc,"invite sent","inviting "+X(doc,"X_inviteEmail"+n).replace(/ /g,"+"), 0);
    alert("ERS201207.09 zpServer="+doc.kbData.HOST);
    zData.zpServer=(""+doc.kbData.HOST).replace("http://","").replace(":8080","").replace("https://",""); //ERS201204 #77302 //ERS201206 more engine replaces
    if (!zData.zpServer) zData.zpServer="edge.zpaper.com"; //ERS191110 #64160 TODO get a server
    if ((""+zData.zpServer).indexOf("zpaper.com")==-1) { //ERS TODO doc.zpServer needed for zippi
        zData.zpServer="edge.zpaper.com";
        alert("ZIPPI BUSTED!!!");
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
    if (!PIN) { //make one up
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
    var nId=""+X(doc,"X_zItemId"); if (!nId && (""+doc.BATES).indexOf("_Form")==-1) nId=doc.dbID; //ERS210611 204007e4Z1dkjni2il
    if (!nId) { return "ERROR: Templates do not need stamps"; }
    
    var linkA="https://"+zData.zpServer+"/kb/pdf/"+nId+"/zitem.pdf"; //ERS201014
    var linkB="https://"+zData.zpServer+"/kb/jsp/docChat.jsp?invite="+n+"&dbID="+nId; //ERS201014
    var moreData="&pages="+doc.numPages+"&sendTo="+X(doc,"ContactFax"); //ERS210703 #83767
    alert("ERS210703 moreData="+moreData);

    /* TODO call zRedirect.jsp to get short URL */
    var resultsB=wget(doc, "http://localhost:8080/kb/jsp/zRedirect.jsp?views=-1&X_invitePIN1="+PIN+moreData+"&save="+linkB.replace("&","%26")); //ERS201013 TODO other zRedirect controls more than just the PIN
    var i=resultsB.indexOf("URL");
    var shortB=resultsB.substring(i+6,resultsB.length()-3);
    shortB=shortB.replace("http://localhost:8080:8080/","https://"+zData.zpServer+"/");
    shortB=shortB.replace("https://localhost:8080/","https://"+zData.zpServer+"/"); 
    var expire=new Date(); expire.setTime(expire.getTime()+1000*3600*24*7); //2021-06-10
    var expired=formatDate(expire, "YYYY-MM-DD");
    var results=wget(doc, "http://localhost:8080/kb/jsp/zRedirect.jsp?until="+expired+moreData+"&views=1&save="+(linkA+";"+shortB).replace("&","%26"));
    i=results.indexOf("URL");
    alert("ERS201014 i="+i+" results="+results); //ERS210211 #77032 added X_invitePIN1 to redirect
    alert("ERS210609 i="+i+" resultsB="+resultsB); 
    
    var stampXML="";
    if (i>-1 && results.indexOf("ERROR")==-1) {
       link=results.substring(i+6,results.length()-3);
       link=link.replace("http://localhost:8080:8080/","https://"+zData.zpServer+"/"); //ERS201014 HACK JOKING!!!!
       link=link.replace("https://localhost:8080/","https://"+zData.zpServer+"/"); 
       //TODO save the link into SF field so that communication template can access it 50-80 chars use ZPAPER__outboundFaxTemplate__c
       //TODO might need to be the invited person's Id stored in +X(doc,"X_inviteId"+n)
       //var markupXML=X(doc,"X_markup");
       if (markupXML.indexOf("ZSTAMP")==-1) { //code=https://edge.zpaper.com/kb/zzz/0X1eu8se1sb&w=16
            var qr=link; //"https://"+zData.zpServer+"/kb/zzz/"+shortID+"&w=16";
            stampXML=stampMarkup.replace("{!qr}",qr);
            //REALPDF in page_pdf.jsp but markup.jsp prefers 1st set
            if ((""+doc.BATES).indexOf("_Form")==-1) {
                arrOfPairs.push("X_markup",markupXML+stampXML);
                //ERS210911 TODO set BATES of new document to be an interactive one {!sfID}@{!sfOrg}-{formId}
                arrOfPairs.push("db-BATES","NEEDS TO BE {!sfID}@{!sfOrg}-{formId}");
            }
       }
       arrOfPairs.push("X_deliverStamp",linkA); //ERS210609 #83767
       arrOfPairs.push("X_retrieveStamp",linkB);
       
       //save the REDIRECT ID back into the original
        updateDB(doc,arrOfPairs);
        alert("ERS201110.23 signIt="+signHints + " PIN"+n+"="+PIN);
        track(doc, "STAMP.CREATE", to +":"+ X(doc,"X_inviteEmail"+n).replace(/ /g,"+"), 0); //ERS210112 invites too
        //ERS210605 return link
        return stampXML; //ERS210611 SF_sendFax.jspf calls this action and needs the additional markup XML to add to the PDF not yet stored
    } else {
        alert("Something went wrong creating the secure link.");
        //return ERROR
    }
}

if (doc.X("X_buttonAction") == "ADD_STAMP") { 
    var res=zData.addStamp(doc,""); 
    //put it in the output
    addPostExecutionScript(doc, res);
}
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
