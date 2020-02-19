<!--
// Name: Run OCR on Fax Page
// Committer: eric.stephens@zpaper.com
// Update: PA and DEM for data too
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-14 20:34:29","evalContinue":"true","active":true,"button":"RunOCR","name":"Run OCR on Fax Page","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"RunOCR","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9URERPIGRldGVjdCBidXR0b24gYW5kIHRoZW4gcmV0dXJuCmlmICgxPT09MCB8fCBkb2MuWCgiWF9idXR0b25BY3Rpb24iKT09IlJ1bk9DUiIpIHtyb29sLmV2YWxDb250aW51ZT1mYWxzZTsgYWxlcnQoIk9DUiBBTEwgRE9ORSEiKTt9IC8vY29uZGl0aW9uYWwgbGlicmFyeT8KYWxlcnQoIkJVVFRPTiAiK2RvYy5YKCJYX2J1dHRvbkFjdGlvbiIpICsiIHN0YXR1cz0iK2RvYy5zdGF0dXMpOwoKdmFyIHQwPW5ldyBEYXRlKCk7CnpEYXRhLmRvY1R5cGVPQ1I9IkZBWCI7Ci8vRVJTMTkwODMxIGp1c3QgbmV3IHdvcmsgekRhdGEuZG9jVHlwZXIyMDE3KGRvYyx7IlBBUFAiOiJQYXRpZW50fiBBc3Npc3RhbmNlfiIsIlBBVVRIIjoiUHJpb3J+IEF1dGhvcml6YXRpb25+IiwiRU5STCI6IkVucm9sbG1lbnR+IiwiRkFYIjoiIn0pOwp2YXIgdDE9bmV3IERhdGUoKTsKYWxlcnQoImRvY1R5cGUgd2FzICIrZG9jLmRvY1R5cGUrIiBub3cgIisgekRhdGEuZG9jVHlwZU9DUik7Ci8vRVJTMTgxMTIzICM0NzQwOCB6RGF0YS5kb2NUeXBlcihkb2MsY29uZmlkZW5jZSx0YXJnZXRzKQovL3ZhciBzb21lVGVtcGxhdGVzPVsiVEVOUjpUZWNpZGVyYUVucm9sbG1lbnRfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIl07IC8vcWEwMQovL3ZhciBzb21lVGVtcGxhdGVzPVsiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQldfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIiwiREVNTzpQYXRpZW50RGVtb1NoZWV0X0Zvcm0iLCJISVBBQTpISVBBQV9Gb3JtIl07IC8vcGFwCnZhciBzb21lVGVtcGxhdGVzPVsiQ09OUzpDb3NlbnR5eFNlcnZpY2VSZXFfRm9ybSIsIkhJUFBBOkhJUFBBY29uc2VudF9Gb3JtIl07IC8vZHYxOSBFUlMxODEyMDcgIzU0MzMxCnNvbWVUZW1wbGF0ZXM9WyJERU1POlBhdGllbnREZW1vRm9ybV9Gb3JtIiwiRU5STDpFbnJvbGxtZW50X0Zvcm0iLCJURU5SOlRCVzIwMTlfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwKICAgICJDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLCJERU1POlBhdGllbnREZW1vU2hlZXRfRm9ybSIsIkhJUEFBOkhJUEFBX0Zvcm0iXTsgIC8vRVJTMTgxMjExIHVwZGF0ZWQgZnJvbSBkdjE5CiAgICAvL0pQQjE5MDExNyBjaGFuZ2VkIGZvcm1JZCB0byBoYXZlIDIwMTkKICAgIC8vRVJTMjAwMjE0ICM2OTMyNiBhZGRlZCBQQTpQZW5uTWVkaWNhaWRQQV9Gb3JtIHRvIHRvcCBvZiB0ZW1wbGF0ZSBsaXN0ICBTRUUgQkVMT1chISEKc29tZVRlbXBsYXRlcy5wdXNoKCJFTlJMOnpDQVJUYUVucm9sbG1lbnRfRm9ybSIpOyAvL0VSUzE4MTIxNwpzb21lVGVtcGxhdGVzLnB1c2goIlNFTlI6U0JXX0Zvcm0iKTsgLy9FUlMxOTAxMTUKLy9FUlMxOTAzMTggIzU3MDkwIGdldCB0aGUgTzJPIHNldHRpbmdzIGZvciB3aGljaCBmb3JtcyB0byBjb21wYXJlIHdpdGgKLy9zb21lVGVtcGxhdGVzPVsiUEE6MDAwMDUwMTRaMWQ0ODhlZXY2IiwiUEE6TVJYUEFfRm9ybSJdOyAvLywiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQlcyMDE5X0Zvcm0iXTsgLy9FUlMxOTAyMjggIzUzMDAwIFRPRE8gdGVhY2ggSnVkc29uCnZhciBvcmcyb3JnQ1M9ZG9jLmtiRGF0YS5jdXN0b21TZXR0aW5nczsKdmFyIGNvcnlUb0RvPVhDdXN0b21TZXR0aW5nKGRvYywiQXV0b0RyaXZlX19jIik7Ci8vQ1JOMTkwMzIwIEkgaGF2ZSB1cGRhdGVkIHRoZSB6aXBwaSBjb2RlIHRvIHN1cHBvcnQgdGhlIGRvYy5rYkRhdGEuY3VzdG9tU2V0dGluZ3MgYXMgdGhlIGxlZ2FjeSBjb2RlIGV4cGVjdHMuCi8vIEFzIHNvb24gYXMgbXkgY2hhbmdlIGlzIG1lcmdlZCBpbnRvIHRoZSBkZXZlbG9wIGJyYW5jaCwgd2UgY2FuIG1ha2UgYSBuZXcgV0FSIGZpbGUgYW5kIHRlc3QgdGhpcyBvdXQuCmFsZXJ0KCJFUlMxOTAzMTggY29yeVRvRG89Iitjb3J5VG9EbysiIG9yZzJvcmdDUz0iK29yZzJvcmdDUyk7CmlmICgxPT09MCAmJiBvcmcyb3JnQ1MgJiYgb3JnMm9yZ0NTLkF1dG9Ecml2ZV9fYyAmJiBvcmcyb3JnQ1MuQXV0b0RyaXZlX19jLmluZGV4T2YoIjoiKT4tMSApIHsgLy9FUlMxOTAzMTggIzU3MTk2CiAgICBzb21lVGVtcGxhdGVzPW9yZzJvcmdDUy5BdXRvRHJpdmVfX2Muc3BsaXQoIiwiKTsKfSBlbHNlIGlmICgxPT09MSAmJiBjb3J5VG9EbyAmJiBjb3J5VG9Eby5pbmRleE9mKCI6Iik+LTEgKSB7IC8vRVJTMTkwMzE4ICM1NzE5NgogICAgc29tZVRlbXBsYXRlcz1jb3J5VG9Eby5zcGxpdCgiLCIpOwp9IGVsc2UgewogICAgYWxlcnQoIkVSUzE5MDMxOCBPVkVSUklERSBOT1QgSU4gQ1VTVE9NIFNFVFRJTkciKTsKICAgIHNvbWVUZW1wbGF0ZXM9IlRFTlI6VEJXMjAxOV9Gb3JtLERFTU86UGF0aWVudERlbW9Gb3JtX0Zvcm0sSElQQUE6TWFrYW5hSGVhbHRoSElQQUFfRm9ybSxFTlJMOkVucm9sbG1lbnRfRm9ybSxFTlJMOnpDaGFydGFtRW5yb2xsbWVudENhcHR1cmVfRm9ybSxDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLnNwbGl0KCIsIik7Cn0KekRhdGEucGFnZXM9WChkb2MsIlhfcGFnZXMiKTsgaWYgKCF6RGF0YS5wYWdlcykge3pEYXRhLnBhZ2VzPTE7fSAvL0VSUzE4MTEyNCBUT0RPIENSTiB0byBhZGQgdG8gZG9jCnpEYXRhLmNvbmZpZGVuY2U9MC43NTsKekRhdGEuY29uZmlkZW5jZT0wLjgwOyAvL1NIUjE4MTIwNiBsb3dlcmVkIHRoZSBjb25maWRlbmNlIGxldmVsIGZvciB0ZXN0aW5nIHdhcyAuOQppZiAoMT09PTEpIHsgLy9FUlMxOTA4MzEgIzYxMTk2IHpwMDggdGVzdHMKICAgIHNvbWVUZW1wbGF0ZXM9WyJERU1POlBhdGllbnREZW1vRm9ybV9Gb3JtIiwiRU5STDpFbnJvbGxtZW50X0Zvcm0iLCJURU5SOlRCVzIwMTlfRm9ybSJdOyAKICAgIHNvbWVUZW1wbGF0ZXM9WyJJTlM6TWlzc2luZ0luc3VyYW5jZVJlZmVycmFsX0Zvcm0iLCAiRU5STDp6Q2hhcnRhbUVucm9sbG1lbnRfRm9ybSIsICJDT046ekNBUlRhSElQQUFfRm9ybSJdOyAvL0VSUzE5MDgzMSB0ZXN0IGZvciAwMDAwNTAxNFgxZDlkOTVqdmoKICAgIHNvbWVUZW1wbGF0ZXM9WyJJTlM6TWFrYW5hTWlzc2luZ0luc3VyYW5jZV9Gb3JtIiwgIkVOUkw6ekNBUlRhRW5yb2xsbWVudF9Gb3JtIiwgIkNPTjp6Q0FSVGFISVBBQV9Gb3JtIl07IC8vRVJTMTkwOTA5IGVkZ2UgdGVzdAogICAgc29tZVRlbXBsYXRlcz1bIkhJUEFBOnpDQVJUYUhJUEFBX0Zvcm0iLCJFTlJMOnpDQVJUYUVucm9sbG1lbnRfRm9ybSIsIkRFTTpQYXRpZW50RGVtb1RlbXBfRm9ybSJdOyAvL0VSUzE5MDkxMiB0ZXN0aW5nIENPTiBub3QgQ09OUwogICAgc29tZVRlbXBsYXRlcz1bIkhJUEFBOnpDQVJUYUhJUEFBMTlfRm9ybSIsIkVOUkw6QXV0b0RyaXZlRW5yb2xsbWVudF9Gb3JtIiwiREVNOlBhdGllbnREZW1vVGVtcF9Gb3JtIiwiQ09OOnpDQVJUYUNvbnNlbnQxOV9Gb3JtIl07IC8vRVJTMTkwOTE0IC8vU0hSMTkwOTE2IHVuaXF1ZSBDb25zZW50MTkgZm9ybQogICAgLy9FUlMyMDAyMTQgIzY5MzI2IGFkZGVkIFBBOlBlbm5NZWRpY2FpZFBBX0Zvcm0gCiAgICBzb21lVGVtcGxhdGVzPVsiUEE6UGVubk1lZGljYWlkUEFfRm9ybSIsIkhJUEFBOnpDQVJUYUhJUEFBMTlfRm9ybSIsIkVOUkw6QXV0b0RyaXZlRW5yb2xsbWVudF9Gb3JtIiwiREVNOlBhdGllbnREZW1vVGVtcF9Gb3JtIiwiQ09OOnpDQVJUYUNvbnNlbnQxOV9Gb3JtIl07CiAgICB6RGF0YS5wYWdlcz02OwogICAgekRhdGEuY29uZmlkZW5jZT0wLjcwOyAvL0VSUzE5MDkxMiBmb3IgRU5SIHdpdGggd29yZCBjaGFuZ2VzCn0KYWxlcnQoIkVSUzE5MDMxOCBzb21lVGVtcGxhdGU9Iitzb21lVGVtcGxhdGVzKTsKCi8vekRhdGEuY29uZmlkZW5jZT0wLjQwOyAvL0pQQjE5MDExNiBsb3dlcmVkIHRoZSBjb25maWRlbmNlIGxldmVsIGZvciB0ZXN0aW5nIHdhcyAuOCAvL0VSUzE5MDExOAppZiAoMT09PTEpIHsgLy9FUlMxOTA5MDkgZW5zdXJlIHdlIGhhdmUgdGhlIFBOR3MgdW50aWwgbGFtYmRhIHNlcnZpY2UgaXMgcmVhZHkgVE9ETyBBU01AMTkwOTEzCiAgICB2YXIgbm93Mz1uZXcgRGF0ZSgpOwogICAgelVSTD1nZXRVUkwoZG9jKTsKICAgIHpEYXRhLmZpbGVuYW1lPXpVUkwuc3Vic3RyaW5nKDErelVSTC5sYXN0SW5kZXhPZigiLyIpKTsgLy9FUlMxOTA5MDkgIzYxMTk2CiAgICB2YXIgUE5Hcz0iaHR0cDovL2xvY2FsaG9zdDo4MDgwL2tiL2FsbGZpbGVzLyIrZG9jLmRiSUQrIi8iK3pEYXRhLmZpbGVuYW1lKyItczAxLnBuZyI7CiAgICBhbGVydCgiekRhdGEuZmlsZW5hbWU9Iit6RGF0YS5maWxlbmFtZSsiIGhhcyAiK1BOR3MpOwogICAgLy9DUk4xOTA5MDkgY29udmVydGVkIHMwMS5wbmcgdG8gcDAyLnBuZzsgd2UgbmVlZCB0aGUgbGFyZ2UgaW1hZ2VzCiAgICB2YXIgZ2V0UE5Hcz0iIjsKICAgIHRyeSB7CiAgICAgICAgZ2V0UE5Hcz0iIit3Z2V0KGRvYyxQTkdzKTsgLy9FUlMxOTA5MDkgIzYxMTk2CiAgICB9IGNhdGNoIChlKSB7CiAgICAgICAgYWxlcnQoIndnZXQgIitQTkdzKyIgZmFpbGVkOiIrZSk7CiAgICB9CiAgICB2YXIgbm93ND1uZXcgRGF0ZSgpOwogICAgYWxlcnQoIlBOR3MgcmVhZHkgZm9yICIrZG9jLmRiSUQrIiAiK2dldFBOR3MubGVuZ3RoKyIgaW4gIisobm93NC5nZXRUaW1lKCktbm93My5nZXRUaW1lKCkpKyIgbXMiKTsKfQoKekRhdGEuemlwcGlDb21wYXJlPXpEYXRhLmRvY1R5cGVyQUQoZG9jLHpEYXRhLmNvbmZpZGVuY2Usc29tZVRlbXBsYXRlcyx6RGF0YS5wYWdlcyk7IC8vRVJTMTkwMTE4IEFEIHdhcyBtaXNzaW5nIC8vRVJTMTkwODMxIGFkZGVkIHBhZ2VzCmFsZXJ0KCJTdGFjayBoYXMgIit6RGF0YS56aXBwaUNvbXBhcmUubGVuZ3RoKyIgZG9jdW1lbnRzIGluICIrekRhdGEucGFnZXMrIiBwYWdlcyIpOwphbGVydCgiRG9jVHlwZXIgcmVzdWx0cyBhcnJheTpcbiIgKyBKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaUNvbXBhcmUpKTsKekRhdGEucmV2aWV3cz1YKGRvYywiWF9yZXZpZXdzIik7IHpEYXRhLnJldmlld2VkU3RhdHVzPSIiOyAvL0VSUzE5MDExOCAjNTMwMDAgVE9ETyBDUk4gdG8gY2hlY2sKdmFyIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwMTE4ICM1MzAwMCBUT0RPIEFTTSB0byBtb3ZlIHRvIExpYnJhcnkKdmFyIHQyPW5ldyBEYXRlKCk7CnpEYXRhLnppcHBpRGF0YT1bXTsgekRhdGEuemlwcGlEYXRhWzBdPW51bGw7IC8vRVJTMTkwOTE0IGhvbGQgdGhlIGRhdGEgZGV0YWlscwpmb3IgKHZhciBwPTE7IHA8PXpEYXRhLnBhZ2VzOyBwKyspIHsKICAgIGFsZXJ0KCJAQEAgRXhhbWluaW5nIFBhZ2UgIiArIHApOyAgIC8vSlBCMTkwMjI2IERlYnVnZ2luZy4uLgogICAgekRhdGEuemlwcGlEYXRhW3BdPW51bGw7CiAgICB2YXIgemQ9ekRhdGEuemlwcGlDb21wYXJlW3BdOwogICAgYWxlcnQoIkBAQCB6aXBwaUNvbXBhcmUgPSAiICsgemQpOwogICAgaWYgKHpkKSB7CiAgICAgICAgYWxlcnQoInBhZ2UgIit6ZC5wYWdlKyIgY29uZmlkZW5jZT0iKygxMDAuMCp6ZC5jb25maWRlbmNlKS50b0ZpeGVkKDEpKyIlIHN1cmUgaXQgaXMgYSAiK3pkLnRlbXBsYXRlKTsgLy9TSFIxOTA5MTYgcHJpbnQgMC0xMDAgcGVyY2VudAogICAgICAgIGlmICgremQuY29uZmlkZW5jZSA+PSB6RGF0YS5jb25maWRlbmNlKSB7CiAgICAgICAgICAgIHpEYXRhLmRvY1R5cGVPQ1I9emQuZG9jVHlwZTsKICAgICAgICAgICAgLy8gU0hSMTgxMjA2IHRyeSB0byBleHRyYWN0IGZpZWxkcyBmb3IgRU5SLCBISVBBQSwgYW5kIERFTU8gdHlwZXMKICAgICAgICAgICAgdmFyIEFEdHlwZXM9IixQQSxFTlJMLEhJUEFBLERFTSxDT04sIjsgLy9FUlMxOTAyMjggIzUzMDAwIGEgYml0IHNtYXJ0ZXIgVE9ETyBUZW1wbGF0ZSB0YWcgLy9FUlMxOTA5MTIgREVNIG5vdCBERU1PCiAgICAgICAgICAgIHZhciBBRGRhdGE9IixFTlJMLCI7IC8vRVJTMTkwOTE0IGdldCB0aGUgZmllbGQgZGF0YSB0b28KICAgICAgICAgICAgQURkYXRhKyJQQSxERU0sIjsgLy9FUlMyMDAyMTQgIzY5MzI2CiAgICAgICAgICAgIGlmKEFEdHlwZXMuaW5kZXhPZigiLCIremQuZG9jVHlwZSsiLCIpPi0xIHx8IHpkLmRvY1R5cGUuaW5kZXhPZigiRU5SIik+LTEgfHwgemQuZG9jVHlwZS5pbmRleE9mKCJDT05TIik+LTEgfHwgemQuZG9jVHlwZS5pbmRleE9mKCJDT05TIik+LTEpIHsKICAgICAgICAgICAgICAgIHpEYXRhLnJldmlld3MrPSI8L2JyPlBhZ2UgIit6ZC5wYWdlKyIgYSAiK3pkLmRvY1R5cGU7IC8vRVJTMTkwOTE2IHNob3cgaW4gcmV2aWV3cwogICAgICAgICAgICAgICAgdmFyIG1vZGU9InNpZ25hdHVyZSI7IGlmIChBRGRhdGEuaW5kZXhPZigiLCIremQuZG9jVHlwZSsiLCIpPi0xKSB7IG1vZGU9ImFsbCI7fSAvL0VSUzE5MDkxNAogICAgICAgICAgICAgICAgekRhdGEuemlwcGlTaWduYXR1cmVzPXt9OwogICAgICAgICAgICAgICAgdHJ5IHsKICAgICAgICAgICAgICAgICAgICB6RGF0YS56aXBwaVNpZ25hdHVyZXM9ekRhdGEuZXh0cmFjdERhdGEoZG9jLG1vZGUsemQudGVtcGxhdGUsemQucGFnZSk7IC8veyJzaWduMSIse3dld2V3ZX0KICAgICAgICAgICAgICAgIH0gY2F0Y2ggKGUpIHsKICAgICAgICAgICAgICAgICAgICBhbGVydCgiU0hSMTkwOTE2IGVycm9yIGluIGV4dHJhY3REYXRhOiIrZSk7ICAgIC8vU0hSMTkwOTE2IG9uIGVycm9yLCByZXR1cm4gYW4gZW1wdHkgb2JqZWN0CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB6RGF0YS56aXBwaURhdGFbemQucGFnZV09ekRhdGEuemlwcGlTaWduYXR1cmVzOyAvL0VSUzE5MDkxNAogICAgICAgICAgICAgICAgLy9UT0RPIGZpbmQgYSBjb25maWRlbmNlIHRoYXQgaXQgaXMgc2lnbmVkCiAgICAgICAgICAgICAgICBmb3IgKHZhciBzIGluIHpEYXRhLnppcHBpU2lnbmF0dXJlcykgewogICAgICAgICAgICAgICAgICAgIGlmICh6RGF0YS56aXBwaVNpZ25hdHVyZXNbc10uZmlsbGVkID4gMC4wMjggJiYgekRhdGEuemlwcGlTaWduYXR1cmVzW3NdLnR5cGU9PSJzaWduYXR1cmUiKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHpEYXRhLnJldmlld2VkU3RhdHVzPSJTaWduZWQiOwogICAgICAgICAgICAgICAgICAgICAgICBpZiAoekRhdGEucmV2aWV3cy5pbmRleE9mKHpkLmRvY1R5cGUrIiAiK3pEYXRhLnJldmlld2VkU3RhdHVzKSA9PSAtMSkgeyAvL0VSUzE5MDExOCAjNTMwMDAgLy9FUlMxOTA5MTQgcmVvcmRlcmVkCiAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsgLy9FUlMxOTAxMTkgZG9jU2V0IGlzIHZlcnkgcGlja3kKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciBoaXN0b3J5UGFyc2VyPSIgYnkgYWdlbnQgb3IgcGF0aWVudCBhICI7IC8vRVJTMTkwMTIxICM1MzAwMCBDUk4gdG8gZXhwbGFpbgogICAgICAgICAgICAgICAgICAgICAgICAgICAgekRhdGEucmV2aWV3cys9IiAiK3pEYXRhLnJldmlld2VkU3RhdHVzK2hpc3RvcnlQYXJzZXIrIiBhdCAiK25vdzArIiI7IC8vRVJTMTkwMTE5ICM1MzAwMCBtYWtlIGRvY1NldCBoYXBweQogICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgICAgIC8vYWxlcnQoInNpZ25lZDE2ICIrSlNPTi5zdHJpbmdpZnkoekRhdGEuemlwcGlTaWduYXR1cmVzKSk7CiAgICAgICAgICAgICAgICAgICAgICAgIGFsZXJ0KCJQYWdlICIremQucGFnZSsiIFNpZ25lZCIpOwogICAgICAgICAgICAgICAgICAgICAgICBicmVhazsgLy9FUlMxOTA5MTYgVE9ETyBkZWNpZGUgaG93IHRvIHdvcmsgb24gbXVsdGlwbGUgc2lnbmF0dXJlcwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIC8vRVJTMTkwMTE4IFRPRE8gc2V0IHRoZSBaU3RhY2suc3RhZ2VfX2M9U2lnbmVkCiAgICAgICAgICAgICAgICB2YXIgc2ZTdGFja0lkID0gWChkb2MsIlhfc2ZTdGFja0lkIik7CiAgICAgICAgICAgICAgICBpZiAoc2ZTdGFja0lkICE9PSAiIiAmJiB6RGF0YS5yZXZpZXdlZFN0YXR1cyE9PSIiKSB7IC8vRVJTMTkwMTE4ICM1MzAwMAogICAgICAgICAgICAgICAgICAgIHZhciBhcnI9W3pwKyJTdGFnZV9fYyIsekRhdGEucmV2aWV3ZWRTdGF0dXMsenArIm91dGJvdW5kRmF4VGVtcGxhdGVfX2MiLHpEYXRhLnJldmlld3NdOwogICAgICAgICAgICAgICAgICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgenArInpTdGFja19fYyIsIHNmU3RhY2tJZCwgYXJyKTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KfQp2YXIgdDM9bmV3IERhdGUoKTsKYWxlcnQoIk9DUiByYWNlICIrekRhdGEuZG9jVHlwZU9DUisiIGluICIrKHQxLmdldFRpbWUoKS10MC5nZXRUaW1lKCkpKyIgdGhlbiAiKyAodDIuZ2V0VGltZSgpLXQxLmdldFRpbWUoKSkrIiB0aGVuICIrICh0My5nZXRUaW1lKCktdDIuZ2V0VGltZSgpKSk7CnZhciB6VHlwZT1kb2MuWCgiWF9kb2NUeXBlIik7CmlmICgxPT09MSB8fCBkb2MuZG9jVHlwZSAhPSB6RGF0YS5kb2NUeXBlT0NSKSB7CiAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsekRhdGEuZG9jVHlwZU9DUik7CglhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLHpEYXRhLmRvY1R5cGVPQ1IpOwoJYXJyT2ZQYWlyczAucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsekRhdGEucmV2aWV3ZWRTdGF0dXMpOwoJaWYgKHpEYXRhLnJldmlld3MgIT09ICIiKSB7IGFyck9mUGFpcnMwLnB1c2goIlhfcmV2aWV3cyIsekRhdGEucmV2aWV3cyk7IH0gLy9FUlMxOTAxMTggZm9yIHRoZSBkb2NTZXQgY2hlY2tib3hlcwoJYXJyT2ZQYWlyczAucHVzaCgiWF96aXBwaUNvbXBhcmUiLEpTT04uc3RyaW5naWZ5KHpEYXRhLnppcHBpQ29tcGFyZSkpOyAvL0VSUzE4MTEyMyBUT0RPIEpTT04gaW4gWE1MPwoJYXJyT2ZQYWlyczAucHVzaCgiWF96aXBwaURhdGEiLEpTT04uc3RyaW5naWZ5KHpEYXRhLnppcHBpRGF0YSkpOyAvL0VSUzE5MDkxNCBoYXMgYWxsIGRvdGEgZnJvbSBhbGwgcmVjb2duaXplZCBwYWdlcwogICAgelR5cGU9ekRhdGEuZG9jVHlwZU9DUjsgLy9FUlMxNzAzMzAgc2F2ZWQgYmVsb3cgaW50byBTRiBmYXhUeXBlX19jIGZpZWxkCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKfQoK"},"ordinal":15}

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
    someTemplates=["PA:PennMedicaidPA_Form","HIPAA:zCARTaHIPAA19_Form","ENRL:AutoDriveEnrollment_Form","DEM:PatientDemoTemp_Form","CON:zCARTaConsent19_Form"];
    zData.pages=6;
    zData.confidence=0.70; //ERS190912 for ENR with word changes
}
alert("ERS190318 someTemplate="+someTemplates);

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
            ADdata+"PA,DEM,"; //ERS200214 #69326
            if(ADtypes.indexOf(","+zd.docType+",")>-1 || zd.docType.indexOf("ENR")>-1 || zd.docType.indexOf("CONS")>-1 || zd.docType.indexOf("CONS")>-1) {
                zData.reviews+="</br>Page "+zd.page+" a "+zd.docType; //ERS190916 show in reviews
                var mode="signature"; if (ADdata.indexOf(","+zd.docType+",")>-1) { mode="all";} //ERS190914
                zData.zippiSignatures={};
                try {
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
