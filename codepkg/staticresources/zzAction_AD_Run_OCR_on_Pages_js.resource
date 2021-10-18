<!--
// Name: AD Run OCR on Pages
// Committer: eric.stephens@zpaper.com
// Update: ERS201019 ", " from wizard
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-10-20 00:46:58","evalContinue":"true","active":true,"button":"RunOCR","name":"AD Run OCR on Pages","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"RunOCR","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9URERPIGRldGVjdCBidXR0b24gYW5kIHRoZW4gcmV0dXJuCmlmICgxPT09MCB8fCBkb2MuWCgiWF9idXR0b25BY3Rpb24iKT09IlJ1bk9DUiIpIHtyb29sLmV2YWxDb250aW51ZT1mYWxzZTsgYWxlcnQoIk9DUiBBTEwgRE9ORSEiKTt9IC8vY29uZGl0aW9uYWwgbGlicmFyeT8KYWxlcnQoIkJVVFRPTiAiK2RvYy5YKCJYX2J1dHRvbkFjdGlvbiIpICsiIHN0YXR1cz0iK2RvYy5zdGF0dXMpOwoKdmFyIHQwPW5ldyBEYXRlKCk7CnpEYXRhLmRvY1R5cGVPQ1I9IkZBWCI7Ci8vRVJTMTkwODMxIGp1c3QgbmV3IHdvcmsgekRhdGEuZG9jVHlwZXIyMDE3KGRvYyx7IlBBUFAiOiJQYXRpZW50fiBBc3Npc3RhbmNlfiIsIlBBVVRIIjoiUHJpb3J+IEF1dGhvcml6YXRpb25+IiwiRU5STCI6IkVucm9sbG1lbnR+IiwiRkFYIjoiIn0pOwp2YXIgdDE9bmV3IERhdGUoKTsKYWxlcnQoImRvY1R5cGUgd2FzICIrZG9jLmRvY1R5cGUrIiBub3cgIisgekRhdGEuZG9jVHlwZU9DUik7Ci8vRVJTMTgxMTIzICM0NzQwOCB6RGF0YS5kb2NUeXBlcihkb2MsY29uZmlkZW5jZSx0YXJnZXRzKQovL3ZhciBzb21lVGVtcGxhdGVzPVsiVEVOUjpUZWNpZGVyYUVucm9sbG1lbnRfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIl07IC8vcWEwMQovL3ZhciBzb21lVGVtcGxhdGVzPVsiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQldfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIiwiREVNTzpQYXRpZW50RGVtb1NoZWV0X0Zvcm0iLCJISVBBQTpISVBBQV9Gb3JtIl07IC8vcGFwCnZhciBzb21lVGVtcGxhdGVzPVsiQ09OUzpDb3NlbnR5eFNlcnZpY2VSZXFfRm9ybSIsIkhJUFBBOkhJUFBBY29uc2VudF9Gb3JtIl07IC8vZHYxOSBFUlMxODEyMDcgIzU0MzMxCnNvbWVUZW1wbGF0ZXM9WyJERU1POlBhdGllbnREZW1vRm9ybV9Gb3JtIiwiRU5STDpFbnJvbGxtZW50X0Zvcm0iLCJURU5SOlRCVzIwMTlfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwKICAgICJDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLCJERU1POlBhdGllbnREZW1vU2hlZXRfRm9ybSIsIkhJUEFBOkhJUEFBX0Zvcm0iXTsgIC8vRVJTMTgxMjExIHVwZGF0ZWQgZnJvbSBkdjE5CiAgICAvL0pQQjE5MDExNyBjaGFuZ2VkIGZvcm1JZCB0byBoYXZlIDIwMTkKICAgIC8vRVJTMjAwMjE0ICM2OTMyNiBhZGRlZCBQQTpQZW5uTWVkaWNhaWRQQV9Gb3JtIHRvIHRvcCBvZiB0ZW1wbGF0ZSBsaXN0ICBTRUUgQkVMT1chISEKc29tZVRlbXBsYXRlcy5wdXNoKCJFTlJMOnpDQVJUYUVucm9sbG1lbnRfRm9ybSIpOyAvL0VSUzE4MTIxNwpzb21lVGVtcGxhdGVzLnB1c2goIlNFTlI6U0JXX0Zvcm0iKTsgLy9FUlMxOTAxMTUKLy9FUlMxOTAzMTggIzU3MDkwIGdldCB0aGUgTzJPIHNldHRpbmdzIGZvciB3aGljaCBmb3JtcyB0byBjb21wYXJlIHdpdGgKLy9zb21lVGVtcGxhdGVzPVsiUEE6MDAwMDUwMTRaMWQ0ODhlZXY2IiwiUEE6TVJYUEFfRm9ybSJdOyAvLywiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQlcyMDE5X0Zvcm0iXTsgLy9FUlMxOTAyMjggIzUzMDAwIFRPRE8gdGVhY2ggSnVkc29uCnZhciBvcmcyb3JnQ1M9ZG9jLmtiRGF0YS5jdXN0b21TZXR0aW5nczsKdmFyIGNvcnlUb0RvPVhDdXN0b21TZXR0aW5nKGRvYywiQXV0b0RyaXZlX19jIik7Ci8vQ1JOMTkwMzIwIEkgaGF2ZSB1cGRhdGVkIHRoZSB6aXBwaSBjb2RlIHRvIHN1cHBvcnQgdGhlIGRvYy5rYkRhdGEuY3VzdG9tU2V0dGluZ3MgYXMgdGhlIGxlZ2FjeSBjb2RlIGV4cGVjdHMuCi8vIEFzIHNvb24gYXMgbXkgY2hhbmdlIGlzIG1lcmdlZCBpbnRvIHRoZSBkZXZlbG9wIGJyYW5jaCwgd2UgY2FuIG1ha2UgYSBuZXcgV0FSIGZpbGUgYW5kIHRlc3QgdGhpcyBvdXQuCmFsZXJ0KCJFUlMxOTAzMTggY29yeVRvRG89Iitjb3J5VG9EbysiIG9yZzJvcmdDUz0iK29yZzJvcmdDUyk7CmlmICgxPT09MCAmJiBvcmcyb3JnQ1MgJiYgb3JnMm9yZ0NTLkF1dG9Ecml2ZV9fYyAmJiBvcmcyb3JnQ1MuQXV0b0RyaXZlX19jLmluZGV4T2YoIjoiKT4tMSApIHsgLy9FUlMxOTAzMTggIzU3MTk2CiAgICBzb21lVGVtcGxhdGVzPW9yZzJvcmdDUy5BdXRvRHJpdmVfX2Muc3BsaXQoIiwiKTsKfSBlbHNlIGlmICgxPT09MSAmJiBjb3J5VG9EbyAmJiBjb3J5VG9Eby5pbmRleE9mKCI6Iik+LTEgKSB7IC8vRVJTMTkwMzE4ICM1NzE5NgogICAgc29tZVRlbXBsYXRlcz1jb3J5VG9Eby5zcGxpdCgiLCIpOwp9IGVsc2UgewogICAgYWxlcnQoIkVSUzE5MDMxOCBPVkVSUklERSBOT1QgSU4gQ1VTVE9NIFNFVFRJTkciKTsKICAgIHNvbWVUZW1wbGF0ZXM9IlRFTlI6VEJXMjAxOV9Gb3JtLERFTU86UGF0aWVudERlbW9Gb3JtX0Zvcm0sSElQQUE6TWFrYW5hSGVhbHRoSElQQUFfRm9ybSxFTlJMOkVucm9sbG1lbnRfRm9ybSxFTlJMOnpDaGFydGFtRW5yb2xsbWVudENhcHR1cmVfRm9ybSxDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLnNwbGl0KCIsIik7Cn0KekRhdGEucGFnZXM9WChkb2MsIlhfcGFnZXMiKTsgaWYgKCF6RGF0YS5wYWdlcykge3pEYXRhLnBhZ2VzPTE7fSAvL0VSUzE4MTEyNCBUT0RPIENSTiB0byBhZGQgdG8gZG9jCnpEYXRhLmNvbmZpZGVuY2U9MC43NTsKekRhdGEuY29uZmlkZW5jZT0wLjgwOyAvL1NIUjE4MTIwNiBsb3dlcmVkIHRoZSBjb25maWRlbmNlIGxldmVsIGZvciB0ZXN0aW5nIHdhcyAuOQppZiAoMT09PTEpIHsgLy9FUlMxOTA4MzEgIzYxMTk2IHpwMDggdGVzdHMKICAgIHNvbWVUZW1wbGF0ZXM9WyJERU1POlBhdGllbnREZW1vRm9ybV9Gb3JtIiwiRU5STDpFbnJvbGxtZW50X0Zvcm0iLCJURU5SOlRCVzIwMTlfRm9ybSJdOyAKICAgIHNvbWVUZW1wbGF0ZXM9WyJJTlM6TWlzc2luZ0luc3VyYW5jZVJlZmVycmFsX0Zvcm0iLCAiRU5STDp6Q2hhcnRhbUVucm9sbG1lbnRfRm9ybSIsICJDT046ekNBUlRhSElQQUFfRm9ybSJdOyAvL0VSUzE5MDgzMSB0ZXN0IGZvciAwMDAwNTAxNFgxZDlkOTVqdmoKICAgIHNvbWVUZW1wbGF0ZXM9WyJJTlM6TWFrYW5hTWlzc2luZ0luc3VyYW5jZV9Gb3JtIiwgIkVOUkw6ekNBUlRhRW5yb2xsbWVudF9Gb3JtIiwgIkNPTjp6Q0FSVGFISVBBQV9Gb3JtIl07IC8vRVJTMTkwOTA5IGVkZ2UgdGVzdAogICAgc29tZVRlbXBsYXRlcz1bIkhJUEFBOnpDQVJUYUhJUEFBX0Zvcm0iLCJFTlJMOnpDQVJUYUVucm9sbG1lbnRfRm9ybSIsIkRFTTpQYXRpZW50RGVtb1RlbXBfRm9ybSJdOyAvL0VSUzE5MDkxMiB0ZXN0aW5nIENPTiBub3QgQ09OUwogICAgc29tZVRlbXBsYXRlcz1bIkhJUEFBOnpDQVJUYUhJUEFBMTlfRm9ybSIsIkVOUkw6QXV0b0RyaXZlRW5yb2xsbWVudF9Gb3JtIiwiREVNOlBhdGllbnREZW1vVGVtcF9Gb3JtIiwiQ09OOnpDQVJUYUNvbnNlbnQxOV9Gb3JtIl07IC8vRVJTMTkwOTE0IC8vU0hSMTkwOTE2IHVuaXF1ZSBDb25zZW50MTkgZm9ybQogICAgLy9FUlMyMDAyMTQgIzY5MzI2IGFkZGVkIFBBOlBlbm5NZWRpY2FpZFBBX0Zvcm0gCiAgICBzb21lVGVtcGxhdGVzPVsiT1JEOlBoeXNpY2lhbk9yZGVyX0Zvcm0iLCJQQTpQZW5uTWVkaWNhaWRQQV9Gb3JtIiwiSElQQUE6ekNBUlRhSElQQUExOV9Gb3JtIiwiRU5STDpBdXRvRHJpdmVFbnJvbGxtZW50X0Zvcm0iLCJERU06UGF0aWVudERlbW9UZW1wX0Zvcm0iLCJDT046ekNBUlRhQ29uc2VudDE5X0Zvcm0iXTsKICAgIC8vSlBCMjAwMjI2IGFkZGVkIE9SRDpQaHlzaWNpYW5PcmRlcl9Gb3JtCiAgICAvL0VSUzIwMDIyOCBIQUNLIHpEYXRhLnBhZ2VzPTY7CiAgICB6RGF0YS5jb25maWRlbmNlPTAuNzA7IC8vRVJTMTkwOTEyIGZvciBFTlIgd2l0aCB3b3JkIGNoYW5nZXMKICAgIHpEYXRhLmNvbmZpZGVuY2U9MC43NTsgLy9FUlMyMDAyMjcgIzYxMTk2IE9yZGVyIHBhZ2UgMiBpcyBzaW1pbGFyIHRvIHBhZ2UgMQp9Ci8vekRhdGEuYXV0b1RlbXBsYXRlcz0oIiIrWEN1c3RvbVNldHRpbmcoZG9jLCIiKyJBRHRlbXBsYXRlc19fYyIpKS5yZXBsYWNlKC8gL2csIiIpLnNwbGl0KCIsIik7IC8vRVJTMjAwMjI5ICM2MTM1NyBUT0RPIFBBQ0tBR0UgekRhdGEuenArCnpEYXRhLmF1dG9UZW1wbGF0ZXM9WyJBUE46dGVzdEF1dG9kcml2ZV9Gb3JtIl07IC8vRVJTMjAwNzA0IEhBQ0sgSEFDSyBNVVNUIEJFIEFOIEFSUkFZCnZhciB0PVhDdXN0b21TZXR0aW5nKGRvYywiIisiQUR0ZW1wbGF0ZXNfX2MiKTsKaWYgKHQuaW5kZXhPZigiWyIpID09IC0xKSB7dD0iWyIrdCsiXSI7fSAvL0VSUzIwMDcxNSAjNzQ3MjkgVE9ETyBmaW5kIG91dCB3aGVyZSB6aXBwaSBjYWNoZXMgWEN1c3RvbVNldHRpbmcKYWxlcnQoIkVSUzIwMDcxNSB0ZW1wbGF0ZXM9JyIrdCsiJyIpOwppZiAodC5pbmRleE9mKCInIik9PS0xICYmIHQuaW5kZXhPZignIicpPT0tMSkgeyAvL0VSUzIwMDkyOCAjNzY3ODgKICAgIHQ9dC5yZXBsYWNlKCJbIiwiWyciKS5yZXBsYWNlKCJdIiwiJ10iKS5yZXBsYWNlKC8sL2csIicsJyIpLnJlcGxhY2UoLywgL2csIiwiKTsgLy9FUlMyMDEwMTkgIiwgIiBmcm9tIHdpemFyZCAKICAgIGFsZXJ0KCJFUlMyMDA5MjcgdGVtcGxhdGVzPSciK3QrIiciKTsKfQp6RGF0YS5hdXRvVGVtcGxhdGVzPWV2YWwoIiIrdCk7IC8vRVJTMjAwNzE1ICM3NDcyOSB0YXggZGF5IHRyaWNrIHRvIHVzZSBbXSBpbiB0aGUgc2V0dGluZwovL0VSUzIwMDcwNCByb2xsYmFjayB6RGF0YS5hdXRvVGVtcGxhdGVzPSgiIit6RGF0YS5hdXRvVGVtcGxhdGVzKS5yZXBsYWNlKC8iL2csIiIpOyAvL0VSUzIwMDYzMCAjNzI0MzMgdGhlcmUgbWF5IGJlIHF1b3RlcyBpbiB0aGUgc2V0dGluZyB2YWx1ZQovL0VSUzIwMDkxNSAjNzUzODEgYmxlbmQgaW4gbGFzdGVzdCBjaGFuZ2VzCmlmICghekRhdGEuYXV0b1RlbXBsYXRlcykge2FsZXJ0KCJNaXNzaW5nIEFEVGVtcGxhdGVzIHNldHRpbmcuIik7IHpEYXRhLmF1dG9UZW1wbGF0ZXM9c29tZVRlbXBsYXRlczsgfQpzb21lVGVtcGxhdGVzPXpEYXRhLmF1dG9UZW1wbGF0ZXM7CmFsZXJ0KCJFUlMxOTAzMTggRVJTMjAwNzA0IHNvbWVUZW1wbGF0ZT0nIitzb21lVGVtcGxhdGVzKyInIik7CnpEYXRhLkFEdHlwZXM9IiwiOyBmb3IgKHZhciBpIGluIHpEYXRhLmF1dG9UZW1wbGF0ZXMpIHsgekRhdGEuQUR0eXBlcys9KCIiK3pEYXRhLmF1dG9UZW1wbGF0ZXNbaV0pLnNwbGl0KCI6IilbMF0udHJpbSgpKyIsIjsgfSAvL0VSUzIwMDYzMCAoIiIrKQp6RGF0YS5BRGRhdGE9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCIiKyJBRGRhdGFfX2MiKS50cmltKCk7CmFsZXJ0KCJFUlMyMDAyMjkgekRhdGEuQUR0eXBlcz0iK3pEYXRhLkFEdHlwZXMrIiBhbmQgQURkYXRhPSIrekRhdGEuQURkYXRhKTsKCi8vekRhdGEuY29uZmlkZW5jZT0wLjQwOyAvL0pQQjE5MDExNiBsb3dlcmVkIHRoZSBjb25maWRlbmNlIGxldmVsIGZvciB0ZXN0aW5nIHdhcyAuOCAvL0VSUzE5MDExOAppZiAoMT09PTEpIHsgLy9FUlMxOTA5MDkgZW5zdXJlIHdlIGhhdmUgdGhlIFBOR3MgdW50aWwgbGFtYmRhIHNlcnZpY2UgaXMgcmVhZHkgVE9ETyBBU01AMTkwOTEzCiAgICB2YXIgbm93Mz1uZXcgRGF0ZSgpOwogICAgelVSTD1nZXRVUkwoZG9jKTsKICAgIHpEYXRhLmZpbGVuYW1lPXpVUkwuc3Vic3RyaW5nKDErelVSTC5sYXN0SW5kZXhPZigiLyIpKTsgLy9FUlMxOTA5MDkgIzYxMTk2CiAgICB2YXIgUE5Hcz0iaHR0cDovL2xvY2FsaG9zdDo4MDgwL2tiL2FsbGZpbGVzLyIrZG9jLmRiSUQrIi8iK3pEYXRhLmZpbGVuYW1lKyItczAxLnBuZyI7CiAgICBhbGVydCgiekRhdGEuZmlsZW5hbWU9Iit6RGF0YS5maWxlbmFtZSsiIGhhcyAiK1BOR3MpOwogICAgLy9DUk4xOTA5MDkgY29udmVydGVkIHMwMS5wbmcgdG8gcDAyLnBuZzsgd2UgbmVlZCB0aGUgbGFyZ2UgaW1hZ2VzCiAgICB2YXIgZ2V0UE5Hcz0iIjsKICAgIHRyeSB7CiAgICAgICAgZ2V0UE5Hcz0iIit3Z2V0KGRvYyxQTkdzKTsgLy9FUlMxOTA5MDkgIzYxMTk2CiAgICB9IGNhdGNoIChlKSB7CiAgICAgICAgYWxlcnQoIndnZXQgIitQTkdzKyIgZmFpbGVkOiIrZSk7CiAgICB9CiAgICB2YXIgbm93ND1uZXcgRGF0ZSgpOwogICAgYWxlcnQoIlBOR3MgcmVhZHkgZm9yICIrZG9jLmRiSUQrIiAiK2dldFBOR3MubGVuZ3RoKyIgaW4gIisobm93NC5nZXRUaW1lKCktbm93My5nZXRUaW1lKCkpKyIgbXMiKTsKfQoKekRhdGEuemlwcGlDb21wYXJlPXpEYXRhLmRvY1R5cGVyQUQoZG9jLHpEYXRhLmNvbmZpZGVuY2Usc29tZVRlbXBsYXRlcyx6RGF0YS5wYWdlcyk7IC8vRVJTMTkwMTE4IEFEIHdhcyBtaXNzaW5nIC8vRVJTMTkwODMxIGFkZGVkIHBhZ2VzCmFsZXJ0KCJTdGFjayBoYXMgIit6RGF0YS56aXBwaUNvbXBhcmUubGVuZ3RoKyIgZG9jdW1lbnRzIGluICIrekRhdGEucGFnZXMrIiBwYWdlcyIpOwphbGVydCgiRG9jVHlwZXIgcmVzdWx0cyBhcnJheTpcbiIgKyBKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaUNvbXBhcmUpKTsKekRhdGEucmV2aWV3cz1YKGRvYywiWF9yZXZpZXdzIik7IHpEYXRhLnJldmlld2VkU3RhdHVzPSIiOyAvL0VSUzE5MDExOCAjNTMwMDAgVE9ETyBDUk4gdG8gY2hlY2sKdmFyIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwMTE4ICM1MzAwMCBUT0RPIEFTTSB0byBtb3ZlIHRvIExpYnJhcnkKdmFyIHQyPW5ldyBEYXRlKCk7CnpEYXRhLnppcHBpRGF0YT1bXTsgekRhdGEuemlwcGlEYXRhWzBdPW51bGw7IC8vRVJTMTkwOTE0IGhvbGQgdGhlIGRhdGEgZGV0YWlscwpmb3IgKHZhciBwPTE7IHA8PXpEYXRhLnBhZ2VzOyBwKyspIHsKICAgIGFsZXJ0KCJAQEAgRXhhbWluaW5nIFBhZ2UgIiArIHApOyAgIC8vSlBCMTkwMjI2IERlYnVnZ2luZy4uLgogICAgekRhdGEuemlwcGlEYXRhW3BdPW51bGw7CiAgICB2YXIgemQ9ekRhdGEuemlwcGlDb21wYXJlW3BdOwogICAgYWxlcnQoIkBAQCB6aXBwaUNvbXBhcmUgPSAiICsgemQpOwogICAgaWYgKHpkKSB7CiAgICAgICAgYWxlcnQoInBhZ2UgIit6ZC5wYWdlKyIgY29uZmlkZW5jZT0iKygxMDAuMCp6ZC5jb25maWRlbmNlKS50b0ZpeGVkKDEpKyIlIHN1cmUgaXQgaXMgYSAiK3pkLnRlbXBsYXRlKTsgLy9TSFIxOTA5MTYgcHJpbnQgMC0xMDAgcGVyY2VudAogICAgICAgIGlmICgremQuY29uZmlkZW5jZSA+PSB6RGF0YS5jb25maWRlbmNlKSB7CiAgICAgICAgICAgIHpEYXRhLmRvY1R5cGVPQ1I9emQuZG9jVHlwZTsKICAgICAgICAgICAgLy8gU0hSMTgxMjA2IHRyeSB0byBleHRyYWN0IGZpZWxkcyBmb3IgRU5SLCBISVBBQSwgYW5kIERFTU8gdHlwZXMKICAgICAgICAgICAgdmFyIEFEdHlwZXM9IixQQSxFTlJMLEhJUEFBLERFTSxDT04sIjsgLy9FUlMxOTAyMjggIzUzMDAwIGEgYml0IHNtYXJ0ZXIgVE9ETyBUZW1wbGF0ZSB0YWcgLy9FUlMxOTA5MTIgREVNIG5vdCBERU1PCiAgICAgICAgICAgIHZhciBBRGRhdGE9IixFTlJMLCI7IC8vRVJTMTkwOTE0IGdldCB0aGUgZmllbGQgZGF0YSB0b28KICAgICAgICAgICAgQURkYXRhKz0iUEEsREVNLCI7IC8vRVJTMjAwMjE0ICM2OTMyNgogICAgICAgICAgICBBRGRhdGErPSJPUkQsIjsgLy9KUEIyMDAyMjYgYWRkZWQgUGh5c2ljaWFuIE9yZGVyCiAgICAgICAgICAgIEFEdHlwZXMrPSJPUkQsIjsgLy9FUlMyMDAyMjcKICAgICAgICAgICAgaWYgKHpEYXRhLkFEdHlwZXMpIEFEdHlwZXM9ekRhdGEuQUR0eXBlczsgLy9FUlMyMDAyMjkKICAgICAgICAgICAgaWYgKHpEYXRhLkFEZGF0YSkgQURkYXRhPXpEYXRhLkFEZGF0YTsgLy9FUlMyMDAyMjkKICAgICAgICAgICAgCiAgICAgICAgICAgIGlmKEFEdHlwZXMuaW5kZXhPZigiLCIremQuZG9jVHlwZSsiLCIpPi0xIHx8IHpkLmRvY1R5cGUuaW5kZXhPZigiRU5SIik+LTEgfHwgemQuZG9jVHlwZS5pbmRleE9mKCJDT05TIik+LTEgfHwgemQuZG9jVHlwZS5pbmRleE9mKCJDT05TIik+LTEpIHsKLy8gICAgICAgICAgICAgICAgekRhdGEucmV2aWV3cys9Ijxici8+UGFnZSAiK3pkLnBhZ2UrIiBhICIremQuZG9jVHlwZTsgLy9FUlMxOTA5MTYgc2hvdyBpbiByZXZpZXdzCi8vQ1JOMjAwMzA5IElmIHdlJ3JlIGdvaW5nIHRvIHB1dCBodG1sIGluIG91ciB4bWwgZmllbGRzLCBwbGVhc2UgbWFrZSBzdXJlIGl0IGlzIHZhbGlkLiA8L2JyPiBpcyBub3QgdmFsaWQgYmVjYXVzZSBpdCBpcwovLyBhIGNsb3NlIHRhZyB3aXRob3V0IGFuIG9wZW4gPGJyPiB0YWcuIDxici8+IGlzIGNvcnJlY3Qgc2luY2UgaXQgaXMgdGhlIGVxdWl2YWxlbnQgb2YgdGhpczogPGJyPjwvYnI+LgogICAgICAgICAgICAgICAgekRhdGEucmV2aWV3cys9Ijxici8+UGFnZSAiK3pkLnBhZ2UrIiBhICIremQuZG9jVHlwZTsgLy9FUlMxOTA5MTYgc2hvdyBpbiByZXZpZXdzCiAgICAgICAgICAgICAgICB2YXIgbW9kZT0ic2lnbmF0dXJlIjsgaWYgKEFEZGF0YS5pbmRleE9mKCIsIit6ZC5kb2NUeXBlKyIsIik+LTEpIHsgbW9kZT0iYWxsIjt9IC8vRVJTMTkwOTE0CiAgICAgICAgICAgICAgICB6RGF0YS56aXBwaVNpZ25hdHVyZXM9e307CiAgICAgICAgICAgICAgICB0cnkgewogICAgICAgICAgICAgICAgICAgIGFsZXJ0KCJFUlMyMDAyMjkuMTA3IGV4dHJhY3REYXRhKGRvYywiK21vZGUrIiwiK3pkLnRlbXBsYXRlKyIscGFnZSAiK3pkLnBhZ2UpOwogICAgICAgICAgICAgICAgICAgIHpEYXRhLnppcHBpU2lnbmF0dXJlcz16RGF0YS5leHRyYWN0RGF0YShkb2MsbW9kZSx6ZC50ZW1wbGF0ZSx6ZC5wYWdlKTsgLy97InNpZ24xIix7d2V3ZXdlfQogICAgICAgICAgICAgICAgfSBjYXRjaCAoZSkgewogICAgICAgICAgICAgICAgICAgIGFsZXJ0KCJTSFIxOTA5MTYgZXJyb3IgaW4gZXh0cmFjdERhdGE6IitlKTsgICAgLy9TSFIxOTA5MTYgb24gZXJyb3IsIHJldHVybiBhbiBlbXB0eSBvYmplY3QKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIHpEYXRhLnppcHBpRGF0YVt6ZC5wYWdlXT16RGF0YS56aXBwaVNpZ25hdHVyZXM7IC8vRVJTMTkwOTE0CiAgICAgICAgICAgICAgICAvL1RPRE8gZmluZCBhIGNvbmZpZGVuY2UgdGhhdCBpdCBpcyBzaWduZWQKICAgICAgICAgICAgICAgIGZvciAodmFyIHMgaW4gekRhdGEuemlwcGlTaWduYXR1cmVzKSB7CiAgICAgICAgICAgICAgICAgICAgaWYgKHpEYXRhLnppcHBpU2lnbmF0dXJlc1tzXS5maWxsZWQgPiAwLjAyOCAmJiB6RGF0YS56aXBwaVNpZ25hdHVyZXNbc10udHlwZT09InNpZ25hdHVyZSIpIHsKICAgICAgICAgICAgICAgICAgICAgICAgekRhdGEucmV2aWV3ZWRTdGF0dXM9IlNpZ25lZCI7CiAgICAgICAgICAgICAgICAgICAgICAgIGlmICh6RGF0YS5yZXZpZXdzLmluZGV4T2YoemQuZG9jVHlwZSsiICIrekRhdGEucmV2aWV3ZWRTdGF0dXMpID09IC0xKSB7IC8vRVJTMTkwMTE4ICM1MzAwMCAvL0VSUzE5MDkxNCByZW9yZGVyZWQKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOyAvL0VSUzE5MDExOSBkb2NTZXQgaXMgdmVyeSBwaWNreQogICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFyIGhpc3RvcnlQYXJzZXI9IiBieSBhZ2VudCBvciBwYXRpZW50IGEgIjsgLy9FUlMxOTAxMjEgIzUzMDAwIENSTiB0byBleHBsYWluCiAgICAgICAgICAgICAgICAgICAgICAgICAgICB6RGF0YS5yZXZpZXdzKz0iICIrekRhdGEucmV2aWV3ZWRTdGF0dXMraGlzdG9yeVBhcnNlcisiIGF0ICIrbm93MCsiIjsgLy9FUlMxOTAxMTkgIzUzMDAwIG1ha2UgZG9jU2V0IGhhcHB5CiAgICAgICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgICAgICAgICAgLy9hbGVydCgic2lnbmVkMTYgIitKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaVNpZ25hdHVyZXMpKTsKICAgICAgICAgICAgICAgICAgICAgICAgYWxlcnQoIlBhZ2UgIit6ZC5wYWdlKyIgU2lnbmVkIik7CiAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOyAvL0VSUzE5MDkxNiBUT0RPIGRlY2lkZSBob3cgdG8gd29yayBvbiBtdWx0aXBsZSBzaWduYXR1cmVzCiAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgLy9FUlMxOTAxMTggVE9ETyBzZXQgdGhlIFpTdGFjay5zdGFnZV9fYz1TaWduZWQKICAgICAgICAgICAgICAgIHZhciBzZlN0YWNrSWQgPSBYKGRvYywiWF9zZlN0YWNrSWQiKTsKICAgICAgICAgICAgICAgIGlmIChzZlN0YWNrSWQgIT09ICIiICYmIHpEYXRhLnJldmlld2VkU3RhdHVzIT09IiIpIHsgLy9FUlMxOTAxMTggIzUzMDAwCiAgICAgICAgICAgICAgICAgICAgdmFyIGFycj1benArIlN0YWdlX19jIix6RGF0YS5yZXZpZXdlZFN0YXR1cyx6cCsib3V0Ym91bmRGYXhUZW1wbGF0ZV9fYyIsekRhdGEucmV2aWV3c107CiAgICAgICAgICAgICAgICAgICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCB6cCsielN0YWNrX19jIiwgc2ZTdGFja0lkLCBhcnIpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICB9CiAgICAgICAgICAgIGVsc2UgeyBhbGVydCgiSWdub3JlICIremQuZG9jVHlwZSsiIGRhdGEgbm90IGluICIrQUR0eXBlcyk7IH0KICAgICAgICB9CiAgICB9Cn0KdmFyIHQzPW5ldyBEYXRlKCk7CmFsZXJ0KCJPQ1IgcmFjZSAiK3pEYXRhLmRvY1R5cGVPQ1IrIiBpbiAiKyh0MS5nZXRUaW1lKCktdDAuZ2V0VGltZSgpKSsiIHRoZW4gIisgKHQyLmdldFRpbWUoKS10MS5nZXRUaW1lKCkpKyIgdGhlbiAiKyAodDMuZ2V0VGltZSgpLXQyLmdldFRpbWUoKSkpOwp2YXIgelR5cGU9ZG9jLlgoIlhfZG9jVHlwZSIpOwppZiAoMT09PTEgfHwgZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgdmFyIGFyck9mUGFpcnMwID0gW107CiAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLHpEYXRhLmRvY1R5cGVPQ1IpOwoJYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIix6RGF0YS5kb2NUeXBlT0NSKTsKCWFyck9mUGFpcnMwLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLHpEYXRhLnJldmlld2VkU3RhdHVzKTsKCWlmICh6RGF0YS5yZXZpZXdzICE9PSAiIikgeyBhcnJPZlBhaXJzMC5wdXNoKCJYX3Jldmlld3MiLHpEYXRhLnJldmlld3MpOyB9IC8vRVJTMTkwMTE4IGZvciB0aGUgZG9jU2V0IGNoZWNrYm94ZXMKCWFyck9mUGFpcnMwLnB1c2goIlhfemlwcGlDb21wYXJlIixKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaUNvbXBhcmUpKTsgLy9FUlMxODExMjMgVE9ETyBKU09OIGluIFhNTD8KCWFyck9mUGFpcnMwLnB1c2goIlhfemlwcGlEYXRhIixKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaURhdGEpKTsgLy9FUlMxOTA5MTQgaGFzIGFsbCBkb3RhIGZyb20gYWxsIHJlY29nbml6ZWQgcGFnZXMKICAgIHpUeXBlPXpEYXRhLmRvY1R5cGVPQ1I7IC8vRVJTMTcwMzMwIHNhdmVkIGJlbG93IGludG8gU0YgZmF4VHlwZV9fYyBmaWVsZAogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7Cn0="},"ordinal":16}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//TDDO detect button and then return
if (1===0 || doc.X("X_buttonAction")=="RunOCR") {rool.evalContinue=false; alert("OCR ALL DONE!");} //conditional library?
alert("BUTTON "+doc.X("X_buttonAction") +" status="+doc.status);

var t0=new Date();
zData.docTypeOCR="FAX";
//ERS190831 just new work zData.docTyper2017(doc,{"PAPP":"Patient~ Assistance~","PAUTH":"Prior~ Authorization~","ENRL":"Enrollment~","FAX":""});
var t1=new Date();
alert("docType was "+doc.docType+" now "+ zData.docTypeOCR);
//ERS181123 #47408 zData.docTyper(doc,confidence,targets)
//var someTemplates=["TENR:TecideraEnrollment_Form","ENRL:zChartamEnrollmentCapture_Form","CON:zChartamConsent_Form"]; //qa01
//var someTemplates=["DEMO:PatientDemoForm_Form","ENRL:Enrollment_Form","TENR:TBW_Form","ENRL:zChartamEnrollmentCapture_Form","CON:zChartamConsent_Form","DEMO:PatientDemoSheet_Form","HIPAA:HIPAA_Form"]; //pap
var someTemplates=["CONS:CosentyxServiceReq_Form","HIPPA:HIPPAconsent_Form"]; //dv19 ERS181207 #54331
someTemplates=["DEMO:PatientDemoForm_Form","ENRL:Enrollment_Form","TENR:TBW2019_Form","ENRL:zChartamEnrollmentCapture_Form",
    "CON:zChartamConsent_Form","DEMO:PatientDemoSheet_Form","HIPAA:HIPAA_Form"];  //ERS181211 updated from dv19
    //JPB190117 changed formId to have 2019
    //ERS200214 #69326 added PA:PennMedicaidPA_Form to top of template list  SEE BELOW!!!
someTemplates.push("ENRL:zCARTaEnrollment_Form"); //ERS181217
someTemplates.push("SENR:SBW_Form"); //ERS190115
//ERS190318 #57090 get the O2O settings for which forms to compare with
//someTemplates=["PA:00005014Z1d488eev6","PA:MRXPA_Form"]; //,"DEMO:PatientDemoForm_Form","ENRL:Enrollment_Form","TENR:TBW2019_Form"]; //ERS190228 #53000 TODO teach Judson
var org2orgCS=doc.kbData.customSettings;
var coryToDo=XCustomSetting(doc,"AutoDrive__c");
//CRN190320 I have updated the zippi code to support the doc.kbData.customSettings as the legacy code expects.
// As soon as my change is merged into the develop branch, we can make a new WAR file and test this out.
alert("ERS190318 coryToDo="+coryToDo+" org2orgCS="+org2orgCS);
if (1===0 && org2orgCS && org2orgCS.AutoDrive__c && org2orgCS.AutoDrive__c.indexOf(":")>-1 ) { //ERS190318 #57196
    someTemplates=org2orgCS.AutoDrive__c.split(",");
} else if (1===1 && coryToDo && coryToDo.indexOf(":")>-1 ) { //ERS190318 #57196
    someTemplates=coryToDo.split(",");
} else {
    alert("ERS190318 OVERRIDE NOT IN CUSTOM SETTING");
    someTemplates="TENR:TBW2019_Form,DEMO:PatientDemoForm_Form,HIPAA:MakanaHealthHIPAA_Form,ENRL:Enrollment_Form,ENRL:zChartamEnrollmentCapture_Form,CON:zChartamConsent_Form".split(",");
}
zData.pages=X(doc,"X_pages"); if (!zData.pages) {zData.pages=1;} //ERS181124 TODO CRN to add to doc
zData.confidence=0.75;
zData.confidence=0.80; //SHR181206 lowered the confidence level for testing was .9
if (1===1) { //ERS190831 #61196 zp08 tests
    someTemplates=["DEMO:PatientDemoForm_Form","ENRL:Enrollment_Form","TENR:TBW2019_Form"]; 
    someTemplates=["INS:MissingInsuranceReferral_Form", "ENRL:zChartamEnrollment_Form", "CON:zCARTaHIPAA_Form"]; //ERS190831 test for 00005014X1d9d95jvj
    someTemplates=["INS:MakanaMissingInsurance_Form", "ENRL:zCARTaEnrollment_Form", "CON:zCARTaHIPAA_Form"]; //ERS190909 edge test
    someTemplates=["HIPAA:zCARTaHIPAA_Form","ENRL:zCARTaEnrollment_Form","DEM:PatientDemoTemp_Form"]; //ERS190912 testing CON not CONS
    someTemplates=["HIPAA:zCARTaHIPAA19_Form","ENRL:AutoDriveEnrollment_Form","DEM:PatientDemoTemp_Form","CON:zCARTaConsent19_Form"]; //ERS190914 //SHR190916 unique Consent19 form
    //ERS200214 #69326 added PA:PennMedicaidPA_Form 
    someTemplates=["ORD:PhysicianOrder_Form","PA:PennMedicaidPA_Form","HIPAA:zCARTaHIPAA19_Form","ENRL:AutoDriveEnrollment_Form","DEM:PatientDemoTemp_Form","CON:zCARTaConsent19_Form"];
    //JPB200226 added ORD:PhysicianOrder_Form
    //ERS200228 HACK zData.pages=6;
    zData.confidence=0.70; //ERS190912 for ENR with word changes
    zData.confidence=0.75; //ERS200227 #61196 Order page 2 is similar to page 1
}
//zData.autoTemplates=(""+XCustomSetting(doc,""+"ADtemplates__c")).replace(/ /g,"").split(","); //ERS200229 #61357 TODO PACKAGE zData.zp+
zData.autoTemplates=["APN:testAutodrive_Form"]; //ERS200704 HACK HACK MUST BE AN ARRAY
var t=XCustomSetting(doc,""+"ADtemplates__c");
if (t.indexOf("[") == -1) {t="["+t+"]";} //ERS200715 #74729 TODO find out where zippi caches XCustomSetting
alert("ERS200715 templates='"+t+"'");
if (t.indexOf("'")==-1 && t.indexOf('"')==-1) { //ERS200928 #76788
    t=t.replace("[","['").replace("]","']").replace(/,/g,"','").replace(/, /g,","); //ERS201019 ", " from wizard 
    alert("ERS200927 templates='"+t+"'");
}
zData.autoTemplates=eval(""+t); //ERS200715 #74729 tax day trick to use [] in the setting
//ERS200704 rollback zData.autoTemplates=(""+zData.autoTemplates).replace(/"/g,""); //ERS200630 #72433 there may be quotes in the setting value
//ERS200915 #75381 blend in lastest changes
if (!zData.autoTemplates) {alert("Missing ADTemplates setting."); zData.autoTemplates=someTemplates; }
someTemplates=zData.autoTemplates;
alert("ERS190318 ERS200704 someTemplate='"+someTemplates+"'");
zData.ADtypes=","; for (var i in zData.autoTemplates) { zData.ADtypes+=(""+zData.autoTemplates[i]).split(":")[0].trim()+","; } //ERS200630 (""+)
zData.ADdata=""+XCustomSetting(doc,""+"ADdata__c").trim();
alert("ERS200229 zData.ADtypes="+zData.ADtypes+" and ADdata="+zData.ADdata);

//zData.confidence=0.40; //JPB190116 lowered the confidence level for testing was .8 //ERS190118
if (1===1) { //ERS190909 ensure we have the PNGs until lambda service is ready TODO ASM@190913
    var now3=new Date();
    zURL=getURL(doc);
    zData.filename=zURL.substring(1+zURL.lastIndexOf("/")); //ERS190909 #61196
    var PNGs="http://localhost:8080/kb/allfiles/"+doc.dbID+"/"+zData.filename+"-s01.png";
    alert("zData.filename="+zData.filename+" has "+PNGs);
    //CRN190909 converted s01.png to p02.png; we need the large images
    var getPNGs="";
    try {
        getPNGs=""+wget(doc,PNGs); //ERS190909 #61196
    } catch (e) {
        alert("wget "+PNGs+" failed:"+e);
    }
    var now4=new Date();
    alert("PNGs ready for "+doc.dbID+" "+getPNGs.length+" in "+(now4.getTime()-now3.getTime())+" ms");
}

zData.zippiCompare=zData.docTyperAD(doc,zData.confidence,someTemplates,zData.pages); //ERS190118 AD was missing //ERS190831 added pages
alert("Stack has "+zData.zippiCompare.length+" documents in "+zData.pages+" pages");
alert("DocTyper results array:\n" + JSON.stringify(zData.zippiCompare));
zData.reviews=X(doc,"X_reviews"); zData.reviewedStatus=""; //ERS190118 #53000 TODO CRN to check
var zp="ZPAPER__"; //ERS190118 #53000 TODO ASM to move to Library
var t2=new Date();
zData.zippiData=[]; zData.zippiData[0]=null; //ERS190914 hold the data details
for (var p=1; p<=zData.pages; p++) {
    alert("@@@ Examining Page " + p);   //JPB190226 Debugging...
    zData.zippiData[p]=null;
    var zd=zData.zippiCompare[p];
    alert("@@@ zippiCompare = " + zd);
    if (zd) {
        alert("page "+zd.page+" confidence="+(100.0*zd.confidence).toFixed(1)+"% sure it is a "+zd.template); //SHR190916 print 0-100 percent
        if (+zd.confidence >= zData.confidence) {
            zData.docTypeOCR=zd.docType;
            // SHR181206 try to extract fields for ENR, HIPAA, and DEMO types
            var ADtypes=",PA,ENRL,HIPAA,DEM,CON,"; //ERS190228 #53000 a bit smarter TODO Template tag //ERS190912 DEM not DEMO
            var ADdata=",ENRL,"; //ERS190914 get the field data too
            ADdata+="PA,DEM,"; //ERS200214 #69326
            ADdata+="ORD,"; //JPB200226 added Physician Order
            ADtypes+="ORD,"; //ERS200227
            if (zData.ADtypes) ADtypes=zData.ADtypes; //ERS200229
            if (zData.ADdata) ADdata=zData.ADdata; //ERS200229
            
            if(ADtypes.indexOf(","+zd.docType+",")>-1 || zd.docType.indexOf("ENR")>-1 || zd.docType.indexOf("CONS")>-1 || zd.docType.indexOf("CONS")>-1) {
//                zData.reviews+="<br/>Page "+zd.page+" a "+zd.docType; //ERS190916 show in reviews
//CRN200309 If we're going to put html in our xml fields, please make sure it is valid. </br> is not valid because it is
// a close tag without an open <br> tag. <br/> is correct since it is the equivalent of this: <br></br>.
                zData.reviews+="<br/>Page "+zd.page+" a "+zd.docType; //ERS190916 show in reviews
                var mode="signature"; if (ADdata.indexOf(","+zd.docType+",")>-1) { mode="all";} //ERS190914
                zData.zippiSignatures={};
                try {
                    alert("ERS200229.107 extractData(doc,"+mode+","+zd.template+",page "+zd.page);
                    zData.zippiSignatures=zData.extractData(doc,mode,zd.template,zd.page); //{"sign1",{wewewe}
                } catch (e) {
                    alert("SHR190916 error in extractData:"+e);    //SHR190916 on error, return an empty object
                }
                zData.zippiData[zd.page]=zData.zippiSignatures; //ERS190914
                //TODO find a confidence that it is signed
                for (var s in zData.zippiSignatures) {
                    if (zData.zippiSignatures[s].filled > 0.028 && zData.zippiSignatures[s].type=="signature") {
                        zData.reviewedStatus="Signed";
                        if (zData.reviews.indexOf(zd.docType+" "+zData.reviewedStatus) == -1) { //ERS190118 #53000 //ERS190914 reordered
                            var now0 = getCurDateAndTime(doc,false,true); //ERS190119 docSet is very picky
                            var historyParser=" by agent or patient a "; //ERS190121 #53000 CRN to explain
                            zData.reviews+=" "+zData.reviewedStatus+historyParser+" at "+now0+""; //ERS190119 #53000 make docSet happy
                        }
                        //alert("signed16 "+JSON.stringify(zData.zippiSignatures));
                        alert("Page "+zd.page+" Signed");
                        break; //ERS190916 TODO decide how to work on multiple signatures
                    }
                }
                //ERS190118 TODO set the ZStack.stage__c=Signed
                var sfStackId = X(doc,"X_sfStackId");
                if (sfStackId !== "" && zData.reviewedStatus!=="") { //ERS190118 #53000
                    var arr=[zp+"Stage__c",zData.reviewedStatus,zp+"outboundFaxTemplate__c",zData.reviews];
                    updateSFRecord(doc, zp+"zStack__c", sfStackId, arr);
                }
            }
            else { alert("Ignore "+zd.docType+" data not in "+ADtypes); }
        }
    }
}
var t3=new Date();
alert("OCR race "+zData.docTypeOCR+" in "+(t1.getTime()-t0.getTime())+" then "+ (t2.getTime()-t1.getTime())+" then "+ (t3.getTime()-t2.getTime()));
var zType=doc.X("X_docType");
if (1===1 || doc.docType != zData.docTypeOCR) {
    var arrOfPairs0 = [];
    arrOfPairs0.push("X_docTypeOCR",zData.docTypeOCR);
	arrOfPairs0.push("X_docType",zData.docTypeOCR);
	arrOfPairs0.push("X_reviewedStatus",zData.reviewedStatus);
	if (zData.reviews !== "") { arrOfPairs0.push("X_reviews",zData.reviews); } //ERS190118 for the docSet checkboxes
	arrOfPairs0.push("X_zippiCompare",JSON.stringify(zData.zippiCompare)); //ERS181123 TODO JSON in XML?
	arrOfPairs0.push("X_zippiData",JSON.stringify(zData.zippiData)); //ERS190914 has all dota from all recognized pages
    zType=zData.docTypeOCR; //ERS170330 saved below into SF faxType__c field
    updateDB(doc, arrOfPairs0);
}
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
