<!--
// Name: AD AutoDrive Stacks
// Committer: eric.stephens@zpaper.com
// Update: ERS210128 autoData details TODO rename zippiData and patch clientLibrary
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-01-28 16:46:15","active":true,"button":"Auto","name":"AD AutoDrive Stacks","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"Auto","operation":"starts-with"},{"name":"doc.X(\"X_zippiCompareOld\")","value":"template","operation":"contains"},{"name":"doc.X(\"X_zippiCompare\")","value":"template","operation":"contains"}]},"consequence":{"doit":"YWxlcnQoIkBAQEAgQXV0b0RyaXZlIFJ1bGUgRmlyZWQgQEBAIyIpOyAvL0VSUzE5MDgwMyAjNTI2NjEgZnJvbSBPY2NGaXQKLy9FUlMyMDEwMDkgZmlleGVkIHRoZSBdIGlzc3VlICM3NTM4MQoKLy9FUlMyMDAyMjcgY3JpdGVyaWEgbG9va3MgZm9yIGFueSB0ZW1wbGF0ZSBub3QganVzdCBFTlIKCmZ1bmN0aW9uIHpQcmVwb3AoZmQsZmlsbGVkLGNvbmZpZGVuY2UpIHsKICAgIGlmICghZmQpIHJldHVybiB7fTsKICAgIHZhciB2YWx1ZXM9e307CiAgICBpZiAoIWZpbGxlZCkgZmlsbGVkPTAuMDQ7CiAgICBpZiAoIWNvbmZpZGVuY2UpIGNvbmZpZGVuY2U9MC45MDsKICAgIGZvciAodmFyIHggaW4gZmQpIHsKICAgICAgICAvL2FsZXJ0KCJ4PSIreCk7CiAgICAgICAgdmFyIGk9ZmRbeF07CiAgICAgICAgaWYgKGkudHlwZT09InRleHQiICYmIGkuY29uZmlkZW5jZT49Y29uZmlkZW5jZSkgeyB2YWx1ZXNbaS5uYW1lXT1pLnRleHQ7IGFsZXJ0KGkubmFtZSsiPSIraS50ZXh0KTt9CiAgICAgICAgaWYgKGkudHlwZT09ImNoZWNrYm94IikgeyB2YWx1ZXNbaS5uYW1lXT0oaS5maWxsZWQ+PWZpbGxlZCk7IH0KICAgICAgICBpZiAoaS50eXBlPT0ic2lnbmF0dXJlIikgeyB2YWx1ZXNbaS5uYW1lXT0oaS5maWxsZWQ+PWZpbGxlZCk7IH0gLy9FUlMyMDA0MDYgVE9ETyB1c2UgdG8gZGV0ZWN0IHNpZ25lZAogICAgfQogICAgcmV0dXJuIHZhbHVlczsKfQoKekRhdGEuYXV0b0luZGV4PSIiK1hDdXN0b21TZXR0aW5nKGRvYywiIisiQURwZXJzb25UeXBlc19fYyIpLnRyaW0oKTsgLy9UT0RPIFBBQ0tBR0UgekRhdGEuenArCmlmICghekRhdGEuYXV0b0luZGV4KSB7YWxlcnQoIk1pc3NpbmcgQURQZXJzb25UeXBlcyBzZXR0aW5nLiIpOyB6RGF0YS5hdXRvSW5kZXg9IixPUkQsSElQQUEsIjsgfQphbGVydCgiRVJTMjAwMjI5LjIyIGxvb2tpbmcgZm9yIHNldHRpbmdzICIrWEN1c3RvbVNldHRpbmcoZG9jLCIiKyJBRFBlcnNvblR5cGVzX19jIikrIiBub3cgdXNpbmcgIit6RGF0YS5hdXRvSW5kZXgpOwp6RGF0YS5kYXRhQ29uZmlkZW5jZT0oIjAiK1hDdXN0b21TZXR0aW5nKGRvYywiIisiQURkYXRhQ29uZmlkZW5jZV9fYyIpKS8xLjAwOwppZiAoIXpEYXRhLmRhdGFDb25maWRlbmNlKSB6RGF0YS5kYXRhQ29uZmlkZW5jZT0wLjkyOwphbGVydCgiRVJTMjAwMjI5LjIyIHVzaW5nIGNvbmZpZGVuY2UgIit6RGF0YS5kYXRhQ29uZmlkZW5jZSsgIiBmcm9tICIrWEN1c3RvbVNldHRpbmcoZG9jLCIiKyJBRGRhdGFDb25maWRlbmNlX19jIikpOwoKCmZ1bmN0aW9uIGF1dG9TcGxpdChkb2MscGFnZVJhbmdlLHAwLHpjLHpkKSB7IC8vRVJTMTkxMDEwICM2MTM1NwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciBkdD16Y1twMF0uZG9jVHlwZTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgZHQpOwovL0NSTjIwMTAyMyBDYXNlICM3Njc4OCBUaGlzIHNjcmV3cyB1cCB0aGUgY2hlY2tib3hlcyBvbiBjaGlsZCBzdGFja3MuIERvIE5PVCBSRVNUT1JFIFRISVMgTElORS4gSVQgQlJFQUtTIFRIRSBET0NTRVQgQ0hFQ0tCT1hFUy4KLy8gICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCJwYWdlICIrcGFnZVJhbmdlKyIgYSAiK2R0KTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLGR0KyIgYXV0b1NwbGl0IHBhZ2UgIitwYWdlUmFuZ2UpOwogICAgdmFyIHpkVmFsdWVzID0ge307CiAgICBpZiAoemRbcDBdKSB7CiAgICAgICAgemRWYWx1ZXMgPSB6UHJlcG9wKHpkW3AwXSk7IC8vU0hSMjAxMDI4ICM3Njc4OCByZWR1Y2UgdGhlIHppcHBpIGRhdGEgZG93biB0byBhIG5hbWUvdmFsdWUgbG9va3VwIG1hcAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF96aXBwaUZpZWxkcyIsSlNPTi5zdHJpbmdpZnkoemRWYWx1ZXMpICk7IC8vRVJTMTkxMDE0IGF1dG9EYXRhCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3ppcHBpRGF0YSIsSlNPTi5zdHJpbmdpZnkoemRbcDBdKSApOyAvL0VSUzIxMDEyOCBhdXRvRGF0YSBkZXRhaWxzIFRPRE8gcmVuYW1lIHppcHBpRGF0YSBhbmQgcGF0Y2ggY2xpZW50TGlicmFyeQogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3ppcHBpQ29tcGFyZSIsIltudWxsLCIrSlNPTi5zdHJpbmdpZnkoemNbcDBdKSsiXSIpOyAvL0VSUzE5MTAxNCBhdXRvRGF0YQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2F1dG9JbmRleGVkUGFnZXMiLCBwYWdlUmFuZ2UpOwogICAgYWxlcnQoIkVSUzIwMDMxMi4zNyBiZWZvcmUgc3BsaXQgIitwYWdlUmFuZ2UpOwogICAgdmFyIG5ld0lkPXNwbGl0RG9jdW1lbnRGb3JJbmRleChkb2MsICJkZXByZWNhdGVkIiwgcGFnZVJhbmdlLGFyck9mUGFpcnMpOwogICAgYWxlcnQoIkVSUzE5MTAxNCBuZXdJZD0iK25ld0lkICsiIGZyb20gIitwYWdlUmFuZ2UpOyAvL0VSUzE5MTAxNCAjNjExOTYKCiAgICAvL0VSUzIwMDMxMSBibG93cyB1cCEhISB0cmFjayhkb2MsICJBdXRvSW5kZXhlZCIsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHpEYXRhLmNvdW50UGFnZXMocGFnZVJhbmdlKSk7IC8vRVJTMjAwMzA4IHRyYWNraW5nCiAgICAvL1RPRE8gRVJTMTkxMDE1IGNyZWF0ZSB6U3RhY2sgcmVjb3JkIHR5cGUgYXV0bwogICAgLy8qCiAgICAvKiBBRlRFUiBUSElTIFBPSU5ULCBUSEUgRE9DIFdJTEwgSE9MRCBEQVRBIEZPUiBORVcgU05JUFBFVCwgTk9UIFRIRSBTVEFDSyBTTklQUEVUICovCiAgICAvLyoKICAgIC8vRVJTMjAwNDMwOCBUT0RPIHhfcmV2aWV3cyBmb3IgU2lnbmVkCiAgICAvL0VSUzIwMDQwNiAjNzExNTYgVE9ETyBkZXRlY3QgU2lnbmF0dXJlLCJ0cnVlIiBhbmQgYWRkIHN0YWdlIGZvciBTaWduZWQKLyoKLy9DUk4yMDEwMjcgIzc2Nzg4IE1vdmVkIGJlbG93IHNvIHRoYXQgd2UgY2FuIHJlY292ZXIgZnJvbSBhbGwgb2YgdGhlIHN0dWZmIHRoYXQgYWRkU3RhZ2UoKSBhbmQgY2xpZW50QXV0b0luZGV4KCksIGV0YyBkb2VzIHRvCi8vIHRoZSBYX3Jldmlld3MuIEFjY29yZGluZyB0byBKdWRzb24sIHdlIHdhbnQgdGhlIGNoaWxkIHN0YWNrcyBzcGxpdCBvZmYgYnkgYXV0b2RyaXZlIHRvIGhhdmUgb25seSB0aGUgIkluZGV4IiBhbmQgcG9zc2libHkKLy8gdGhlICJTaWduZWQiIGNoZWNrYm94ZXMgdG8gYmUgY2hlY2tlZC4gRG93biBiZWxvdyB3ZSB3aWxsIHRha2UgdGhlIGRpcmVjdCBhcHByb2FjaCB3aGVuIHNldHRpbmcgdGhlIFhfcmV2aWV3cyBpbnN0ZWFkCi8vIG9mIHN1ZmZlcmluZyBmcm9tIGFsbCBvZiB0aGUgc2lkZS1lZmZlY3RzIG9mIHRoZSBjbGllbnQgbGlicmFyeSBjYWxscy4KICAgIHZhciBhcnJPZlBhaXJzMiA9IFtdOwogICAgekRhdGEuc3RhZ2U9IlJlY2VpdmVkIjsKICAgIC8vQ1JOMjAxMDI1IENhc2UgIzc2Nzg4IE1vdmVkIGZyb20gYWRkU3RhZ2UoKSBmdW5jdGlvbiBzaW5jZSBpdCBzaG91bGRuJ3QgYXBwbHkgdG8gbm9uLUF1dG9Ecml2ZSBydWxlcy4KICAgIGlmICghekRhdGEucmV2aWV3cykgeyB6RGF0YS5yZXZpZXdzPVgoZG9jLCJYX3Jldmlld3MiKTsgfSAvL0VSUzIwMDQxOCAjNzE0MTUgYXV0b2RyaXZlCiAgICB6RGF0YS5yZXZpZXdzID0gIiI7IC8vU0hSMjAxMDI3ICM3Njc4OCBNYWtlIHN1cmUgZWFjaCBjaGlsZCB6U3RhY2sgc3RhcnRzIHdpdGggZW1wdHkgcmV2aWV3cy4uLgogICAgYXJyT2ZQYWlyczI9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsekRhdGEuc3RhZ2UpOyAvL0VSUzIwMDQxOCAjNzE0MTUKICAgIHZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwogICAgdHJhY2soZG9jLCAiU3RhZ2UuIit6RGF0YS5zdGFnZSwgIkRvY3VtZW50IHdpdGggSWQ6ICIgKyBkb2MuZGJJRCwgcGFnZUNvdW50KTsKICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzMik7CiovCgogICAgLy9FUlMyMDAyMjkgbWlnaHQgYmUgYmV0dGVyIGluIGNsaWVudCBsaWJyYXJ5CiAgICB2YXIgbmV3Q2hpbGRTdGFja0lkPSIiOwogICAgaWYgKHpEYXRhLmF1dG9JbmRleC5pbmRleE9mKCIsIitkdCsiLCIpPi0xIHx8IHpEYXRhLnBJZDApIHsgLy9sb29rdXAgd2l0aCByZWNvcmQgdHlwZSwga2V5IHZhbHVlcyBhbmQgcmVjZW50IHBJZDAgRVJTMjAwNDE4CiAgICAgICAgdmFyIGF0dGFjaGVkSWQ9ekRhdGEuY2xpZW50QXV0b0luZGV4KGRvYyxkdCx6UHJlcG9wKHpkW3AwXSwwLjAzLHpEYXRhLmRhdGFDb25maWRlbmNlKSk7CiAgICAgICAgaWYgKDE9PT0xICYmIGF0dGFjaGVkSWQpIHsgLy9FUlMyMDA1MDIgIzcwMjczIG5vdCBzaG93aW5nIHVwIG9uIHRoZSBUaW1lbGluZQogICAgICAgICAgICAvL3pEYXRhLnBhdGllbnRJZD16RGF0YS5jbGllbnRQYXRpZW50KGRvYyxhcnJPZlBhaXJzKTsKICAgICAgICAgICAgLy9hbGVydCgiQ3JlYXRlZCBQYXRpZW50IHdpdGggSUQ6ICIgKyB6RGF0YS5wYXRpZW50SWQpOwogICAgICAgICAgICAvL2F0dGFjaChkb2MsIGR0KyIgQXV0b1NwbGl0IHBhZ2UgIitwYWdlUmFuZ2UsIGF0dGFjaGVkSWQpOwogICAgICAgICAgICB6RGF0YS5wYXRpZW50SWQ9YXR0YWNoZWRJZDsKICAgICAgICAgICAgekRhdGEuZG9jVHlwZT1kdDsKICAgICAgICAgICAgaWYgKHpEYXRhLnBhdGllbnRJZC5pbmRleE9mKCIwMDEiKT09PTApIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19QYXRpZW50QWNjb3VudF9fYyIsIHpEYXRhLnBhdGllbnRJZCk7CiAgICAgICAgICAgIG5ld0NoaWxkU3RhY2tJZD16RGF0YS5jbGllbnRDaGlsZFN0YWNrKGRvYyxhcnJPZlBhaXJzLHpEYXRhLnN0YWNrSWQpOyAvL0VSUzIwMDUwMyAjNzAyNzMgbWFrZXMgdGhlIFRpbWVsaW5lIHRhc2sKICAgICAgICAgICAgYWxlcnQoIk5ldyBBdXRvU3RhY2sgIituZXdDaGlsZFN0YWNrSWQpOwogICAgICAgICAgICBhdHRhY2goZG9jLCBkdCsiIEF1dG9TcGxpdCBwYWdlICIrcGFnZVJhbmdlLCB6RGF0YS5zdGFja0lkKTsgLy9TSFIyMDEwMjcgIzc2Nzg4IGFsc28gYXR0YWNoIHRoZSBuZXdseSBjcmVhdGVkIGNoaWxkIFNuaXBwZXQgdG8gdGhlIHBhcmVudCB6U3RhY2sKICAgICAgICB9CiAgICB9IGVsc2UgeyBhbGVydCgiRVJTMjAwMjI5LjQ0ICIrZHQgKyIgbm90IGluICIrekRhdGEuYXV0b0luZGV4KTsgfQoKICAgIC8vQ1JOMjAxMDI3ICM3Njc4OCBNb3ZlZCBmcm9tIGFib3ZlLiBTZXR0aW5nIHRoZSBYX3Jldmlld3MgaG93IEp1ZHNvbiB3YW50cyB0aGVtIHNvIHRoYXQgdGhlIGNvcnJlY3QgY2hlY2tib3hlcyBhcmUKICAgIC8vIGNoZWNrZWQgaW4gdGhlIHpEb2NTZXQuCiAgICB2YXIgcGFnZUNvdW50ID0gekRhdGEuY291bnRQYWdlcyhkb2MscGFnZVJhbmdlKTsKICAgIHRyYWNrKGRvYywgIlN0YWdlLkluZGV4ZWQiLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwogICAgdmFyIG5vdzAgPSB6RGF0YS5mb3JtYXROb3c7CiAgICBpZiAoIW5vdzApIHsgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsgfSAgLy9FUlMyMDAzMTQgIzcwMzM2CiAgICB2YXIgYXJyT2ZQYWlyczIgPSBbXTsKICAgIC8vQ1JOMjAxMDIyNyAjNzY3ODggQWxsIGF1dG8tc3BsaXQgY2hpbGRyZW4gc2hvdWxkIGhhdmUgSW5kZXhlZCBpbiB0aGVpciBYX3Jldmlld3MuCiAgICB2YXIgY3VyUmV2aWV3cyA9ICJJbmRleGVkIGJ5IGF1dG9kcml2ZSBhdCAiK25vdzArIjxici8+IjsgLy9FUlMyMDA0MTggIzcxNDE1IGF1dG9kcml2ZSAvL1NIUjIwMTAyOCBkb24ndCBzaG93IHRoZSBpbnRlZ3JhdGlvbiB1c2VyCiAgICB2YXIgaGFzQW55U2lncyA9IGZhbHNlOwogICAgYWxlcnQoIlBhZ2UgIiArIHAwICsgIiAtLSB6ZCBsZW5ndGggPT4gIiArIEpTT04uc3RyaW5naWZ5KHpkKS5sZW5ndGgpOwogICAgaWYgKHpkW3AwXSkgeyAvL1NIUjIwMTAyOCAjNzY3ODggb25seSBjaGVjayBmb3Igc2lnbmF0dXJlcyBpZiB3ZSBoYXZlIHppcHBpRGF0YSBmb3IgdGhpcyBwYWdlCiAgICAgICAgYWxlcnQoInpkVmFsdWVzID0+ICIgKyBKU09OLnN0cmluZ2lmeSh6ZFZhbHVlcykpOwogICAgICAgIHZhciBzaWdLZXlzID0gT2JqZWN0LmtleXMoemRWYWx1ZXMpLmZpbHRlcihmdW5jdGlvbihrZXkpIHsKICAgICAgICAgICAgdmFyIGlzU2lnRmllbGQgPSBrZXkubWF0Y2goL3NpZ25hdHVyZS9pKSAhPT0gbnVsbDsKICAgICAgICAgICAgYWxlcnQoIkBAQCBmaWx0ZXI6IGtleSA9PiAiICsga2V5KTsKICAgICAgICAgICAgYWxlcnQoIkBAQCBmaWx0ZXI6IHZhbHVlID0+ICIgKyB6ZFZhbHVlc1trZXldKTsKICAgICAgICAgICAgYWxlcnQoIkBAQCBmaWx0ZXI6IGtleS5tYXRjaCA9PiAiICsgaXNTaWdGaWVsZCk7CiAgICAgICAgICAgIHJldHVybiBpc1NpZ0ZpZWxkOwogICAgICAgIH0pOwogICAgICAgIGFsZXJ0KCJzaWdLZXlzIGZvdW5kIGluIGZpbHRlcjogIiArIHNpZ0tleXMubGVuZ3RoKTsKICAgICAgICBoYXNBbnlTaWdzID0gc2lnS2V5cy5sZW5ndGggPiAwOyAvL1NIUjIwMTAyOCAjNzY3ODggc2lnbmVkIGlzIGZhbHNlIHVubGVzcyB0aGVyZSBhcmUgc2lnbmF0dXJlIGZpZWxkcwogICAgICAgIHNpZ0tleXMuZm9yRWFjaChmdW5jdGlvbihrZXkpIHsKICAgICAgICAgICAgYWxlcnQoIkBAQCBpdGVyYXRpbmc6IGtleSA9PiAiICsga2V5KTsKICAgICAgICAgICAgYWxlcnQoIkBAQCBpdGVyYXRpbmc6IHpkVmFsdWVzW2tleV0gPT4gIiArIHpkVmFsdWVzW2tleV0pOwogICAgICAgICAgICBoYXNBbnlTaWdzID0gaGFzQW55U2lncyB8fCB6ZFZhbHVlc1trZXldOyAvL1NIUjIwMTAyOCAjNzY3ODggcmV0dXJuIHRydWUgaWYgQU5ZIHNpZ25hdHVyZXMgYXJlIHRydWUKICAgICAgICB9KTsKICAgICAgICBjdXJSZXZpZXdzICs9IGhhc0FueVNpZ3MgPyAiU2lnbmVkIGF0ICIgKyBub3cwIDogIiI7IC8vU0hSMjAxMDI3ICM3Njc4OCBjaGlsZCBzdGFja3Mgc2hvdWxkIG9ubHkgc2hvdyBJbmRleGVkIGFuZCBTaWduZWQKICAgIH0KICAgIGFsZXJ0KCJjdXJSZXZpZXdzID0+ICIgKyBjdXJSZXZpZXdzKTsKICAgIGFyck9mUGFpcnMyLnB1c2goIlhfcmV2aWV3cyIsIGN1clJldmlld3MpOwogICAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMyKTsKCiAgICByZXR1cm4gbmV3SWQ7Cn0KCnZhciBzdGFja0lkID0gekRhdGEuZ2V0U3RhY2tJZChkb2MpOyAvL0VSUzE5MDYyNCBIQUNLPyAvL0VSUzIwMDcxMSAjNzI0MzMgYWRkZWQgaW50byB6U3RhY2sgbGlicmFyeSBmcm9tIDIwMTkKekRhdGEuc3RhZ2U9IkluZGV4ZWQiOyAvL0VSUzIwMDMxMCBBdXRvSW5kZXhlZCBpcyBub3QgaW4gelN0YWNrIHBpY2tsaXN0CnpEYXRhLnBhZ2VzPSgiMCIrWChkb2MsIlhfcGFnZXMiKSkvMTsgaWYgKHpEYXRhLnBhZ2VzPT09MCkgekRhdGEucGFnZXM9MTsgLy9UT0RPIGludGlhbGl6ZSB6RGF0YSBiZXR0ZXIKCi8vcmVhbGx5IG5lZWQgcGF0aWVudCBpbmZvIGVub3VnaCB0byBhdHRhY2ggb3IgY3JlYXRlCi8vekRhdGEuZ2V0RGF0YUVudHJ5RmllbGRzKGRvYyk7IC8vRVJTMTkwOTE0IGdldCBmcm9tIFhfemlwcGlEYXRhCnZhciB6Yz1YKGRvYywiWF96aXBwaUNvbXBhcmUiKTsKdmFyIHpkPVgoZG9jLCJYX3ppcHBpRGF0YSIpOwphbGVydCgiemM9Iit6Yyk7CmlmICh6YyAmJiB6Yy5pbmRleE9mKCJbIik9PT0wKSB7emM9SlNPTi5wYXJzZSh6Yyk7fQphbGVydCgiemMgbm93ICIremMpOwppZiAoemQgJiYgemQuaW5kZXhPZigiWyIpPT09MCkge3pkPUpTT04ucGFyc2UoemQpO30KCi8vbG9vcCBwYWdlcwp2YXIgZHQwPSJGQVgiLCBwMD0xLCBjPTA7CnZhciBkYklEMD1kb2MuZGJJRDsKdmFyIGRvY1N0YWNrPWRvYzsKekRhdGEubmV3U3BsaXRzPVtdOwp6RGF0YS5zdGFja0lkPXN0YWNrSWQ7IC8vRVJTMjAwNTAzICM3MDI3MwoKekRhdGEucm90YXRpb249IiI7IC8vRVJTMjAwNzA0ICM3MjQzMwpmb3IgKHZhciBwPTE7IHA8PXpEYXRhLnBhZ2VzOyBwKyspIHsKICAgIGFsZXJ0KCJwYWdlICIrcCk7CiAgICBhbGVydCgiemNbXT0iK3pjW3BdKTsKICAgIGlmICh6Y1twXSkgewogICAgICAgIHZhciBkdD16Y1twXS5kb2NUeXBlOwogICAgICAgIGlmIChkdCAhPSBkdDAgfHwgMT09MSkgeyAvL0VSUzIwMDIyNyAjNjExOTYgemNbcF0gZXhpc3RpbmcgaXMgZW5vdWdoPwogICAgICAgICAgICBhbGVydCgiU3BsaXQgIitwMCt6RGF0YS5yb3RhdGlvbisiLSIrKHAtMSkrIiBpbnRvICIrZHQwKTsKICAgICAgICAgICAgLy9FUlMyMDAzMTIgYWxlcnQoIkRhdGEgIitKU09OLnN0cmluZ2lmeSh6UHJlcG9wKHpkW3AwXSkpKTsKICAgICAgICAgICAgaWYgKGR0MCAhPSAiRkFYIikgewogICAgICAgICAgICAgICAgaWYgKHpjICYmIHpjW3BdICYmIHpjW3BdLm9yaWVudCAmJiB6Y1twXS5vcmllbnQ9PTE4MCkgekRhdGEucm90YXRpb249InUiOyAvL0VSUzIwMDcwNCAjNzI0MzMKICAgICAgICAgICAgICAgIHpEYXRhLm5ld1NwbGl0c1tjXT1hdXRvU3BsaXQoZG9jLHAwK3pEYXRhLnJvdGF0aW9uKyItIisocC0xKSxwMCx6Yyx6ZCk7CiAgICAgICAgICAgICAgICB6RGF0YS5yb3RhdGlvbj0iIjsgLy9FUlMyMDA3MTEgcmVzZXQgdG8gIiIgYWZ0ZXIgdGhlIHNwbGl0CiAgICAgICAgICAgICAgICAvL2RvYz1kb2NTdGFjazsKICAgICAgICAgICAgICAgIHNldERvY3VtZW50Q29udGV4dChkb2MsIGRiSUQwKTsKICAgICAgICAgICAgICAgIGFsZXJ0KCJFUlMxOTEwMTQuNTkgYWZ0ZXIgc3BsaXQgZG9jLmRiSUQ9Iitkb2MuZGJJRCArIiBuZXcgIitjKyIgPSAiK3pEYXRhLm5ld1NwbGl0c1tjXSk7CiAgICAgICAgICAgICAgICBjKys7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgLy9IQUNLIE9GRiBpZiAoKHAtcDApPjEpIGR0PSJ3YXMiK2R0OyAvL0VSUzIwMDIyNyAjNjExOTYgbXVsdGlwbGUgY29udGltZW91cyBPcmRlcnMKICAgICAgICAgICAgZHQwPWR0OyBwMD1wOwogICAgICAgIH0KICAgIH0KfQovL0VSUzIwMDkxNSAjNzUzODEgYWNjZWxlcmF0b3IgYW5kIG9yaWVudGF0aW9ucwppZiAoemNbcDBdICYmIHpjW3AwXS5vcmllbnQgJiYgemNbcDBdLm9yaWVudD09MTgwKSB6RGF0YS5yb3RhdGlvbj0idSI7IC8vRVJTMjAwNzA0ICM3MjQzMyAvL0VSUzIwMDcxMSBUT0RPIG9yaWVudD0wIGluIGRlZmF1bHQKCmFsZXJ0KCJFUlMyMDA3MTEuMTE2IHJvdGF0aW9uPSIrekRhdGEucm90YXRpb24rIiBQYWdlcyAiK3AwK3pEYXRhLnJvdGF0aW9uKyItIisocC0xKSsiIGlzIGEgIitkdDApOwphbGVydCgiRGF0YSAiK0pTT04uc3RyaW5naWZ5KHpQcmVwb3AoemRbcDBdKSkpOwppZiAoZHQwICE9ICJGQVgiKSB7CiAgICB6RGF0YS5uZXdTcGxpdHNbY109YXV0b1NwbGl0KGRvYyxwMCt6RGF0YS5yb3RhdGlvbisiLSIrKHAtMSkscDAsemMsemQpOwp9CmFsZXJ0KCJTcGxpdHMgaW50byAiK3pEYXRhLm5ld1NwbGl0cyk7CgovKiBlbmQgb2YgcnVsZSAqLw=="},"ordinal":29}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("@@@@ AutoDrive Rule Fired @@@#"); //ERS190803 #52661 from OccFit
//ERS201009 fiexed the ] issue #75381

//ERS200227 criteria looks for any template not just ENR

function zPrepop(fd,filled,confidence) {
    if (!fd) return {};
    var values={};
    if (!filled) filled=0.04;
    if (!confidence) confidence=0.90;
    for (var x in fd) {
        //alert("x="+x);
        var i=fd[x];
        if (i.type=="text" && i.confidence>=confidence) { values[i.name]=i.text; alert(i.name+"="+i.text);}
        if (i.type=="checkbox") { values[i.name]=(i.filled>=filled); }
        if (i.type=="signature") { values[i.name]=(i.filled>=filled); } //ERS200406 TODO use to detect signed
    }
    return values;
}

zData.autoIndex=""+XCustomSetting(doc,""+"ADpersonTypes__c").trim(); //TODO PACKAGE zData.zp+
if (!zData.autoIndex) {alert("Missing ADPersonTypes setting."); zData.autoIndex=",ORD,HIPAA,"; }
alert("ERS200229.22 looking for settings "+XCustomSetting(doc,""+"ADPersonTypes__c")+" now using "+zData.autoIndex);
zData.dataConfidence=("0"+XCustomSetting(doc,""+"ADdataConfidence__c"))/1.00;
if (!zData.dataConfidence) zData.dataConfidence=0.92;
alert("ERS200229.22 using confidence "+zData.dataConfidence+ " from "+XCustomSetting(doc,""+"ADdataConfidence__c"));


function autoSplit(doc,pageRange,p0,zc,zd) { //ERS191010 #61357
    var arrOfPairs = [];
    var dt=zc[p0].docType;
    arrOfPairs.push("X_docType", dt);
//CRN201023 Case #76788 This screws up the checkboxes on child stacks. Do NOT RESTORE THIS LINE. IT BREAKS THE DOCSET CHECKBOXES.
//    arrOfPairs.push("X_reviews","page "+pageRange+" a "+dt);
    arrOfPairs.push("db-label",dt+" autoSplit page "+pageRange);
    var zdValues = {};
    if (zd[p0]) {
        zdValues = zPrepop(zd[p0]); //SHR201028 #76788 reduce the zippi data down to a name/value lookup map
        arrOfPairs.push("X_zippiFields",JSON.stringify(zdValues) ); //ERS191014 autoData
        arrOfPairs.push("X_zippiData",JSON.stringify(zd[p0]) ); //ERS210128 autoData details TODO rename zippiData and patch clientLibrary
    }
    arrOfPairs.push("X_zippiCompare","[null,"+JSON.stringify(zc[p0])+"]"); //ERS191014 autoData
    arrOfPairs.push("X_autoIndexedPages", pageRange);
    alert("ERS200312.37 before split "+pageRange);
    var newId=splitDocumentForIndex(doc, "deprecated", pageRange,arrOfPairs);
    alert("ERS191014 newId="+newId +" from "+pageRange); //ERS191014 #61196

    //ERS200311 blows up!!! track(doc, "AutoIndexed", "Document with Id: " + doc.dbID, zData.countPages(pageRange)); //ERS200308 tracking
    //TODO ERS191015 create zStack record type auto
    //*
    /* AFTER THIS POINT, THE DOC WILL HOLD DATA FOR NEW SNIPPET, NOT THE STACK SNIPPET */
    //*
    //ERS2004308 TODO x_reviews for Signed
    //ERS200406 #71156 TODO detect Signature,"true" and add stage for Signed
/*
//CRN201027 #76788 Moved below so that we can recover from all of the stuff that addStage() and clientAutoIndex(), etc does to
// the X_reviews. According to Judson, we want the child stacks split off by autodrive to have only the "Index" and possibly
// the "Signed" checkboxes to be checked. Down below we will take the direct approach when setting the X_reviews instead
// of suffering from all of the side-effects of the client library calls.
    var arrOfPairs2 = [];
    zData.stage="Received";
    //CRN201025 Case #76788 Moved from addStage() function since it shouldn't apply to non-AutoDrive rules.
    if (!zData.reviews) { zData.reviews=X(doc,"X_reviews"); } //ERS200418 #71415 autodrive
    zData.reviews = ""; //SHR201027 #76788 Make sure each child zStack starts with empty reviews...
    arrOfPairs2=zData.addStage(doc,arrOfPairs,zData.stage); //ERS200418 #71415
    var pageCount = zData.countPages(doc,pageRange);
    track(doc, "Stage."+zData.stage, "Document with Id: " + doc.dbID, pageCount);
    updateDB(doc,arrOfPairs2);
*/

    //ERS200229 might be better in client library
    var newChildStackId="";
    if (zData.autoIndex.indexOf(","+dt+",")>-1 || zData.pId0) { //lookup with record type, key values and recent pId0 ERS200418
        var attachedId=zData.clientAutoIndex(doc,dt,zPrepop(zd[p0],0.03,zData.dataConfidence));
        if (1===1 && attachedId) { //ERS200502 #70273 not showing up on the Timeline
            //zData.patientId=zData.clientPatient(doc,arrOfPairs);
            //alert("Created Patient with ID: " + zData.patientId);
            //attach(doc, dt+" AutoSplit page "+pageRange, attachedId);
            zData.patientId=attachedId;
            zData.docType=dt;
            if (zData.patientId.indexOf("001")===0) arrOfPairs.push("ZPAPER__PatientAccount__c", zData.patientId);
            newChildStackId=zData.clientChildStack(doc,arrOfPairs,zData.stackId); //ERS200503 #70273 makes the Timeline task
            alert("New AutoStack "+newChildStackId);
            attach(doc, dt+" AutoSplit page "+pageRange, zData.stackId); //SHR201027 #76788 also attach the newly created child Snippet to the parent zStack
        }
    } else { alert("ERS200229.44 "+dt +" not in "+zData.autoIndex); }

    //CRN201027 #76788 Moved from above. Setting the X_reviews how Judson wants them so that the correct checkboxes are
    // checked in the zDocSet.
    var pageCount = zData.countPages(doc,pageRange);
    track(doc, "Stage.Indexed", "Document with Id: " + doc.dbID, pageCount);
    var now0 = zData.formatNow;
    if (!now0) { now0 = getCurDateAndTime(doc,false,true); }  //ERS200314 #70336
    var arrOfPairs2 = [];
    //CRN2010227 #76788 All auto-split children should have Indexed in their X_reviews.
    var curReviews = "Indexed by autodrive at "+now0+"<br/>"; //ERS200418 #71415 autodrive //SHR201028 don't show the integration user
    var hasAnySigs = false;
    alert("Page " + p0 + " -- zd length => " + JSON.stringify(zd).length);
    if (zd[p0]) { //SHR201028 #76788 only check for signatures if we have zippiData for this page
        alert("zdValues => " + JSON.stringify(zdValues));
        var sigKeys = Object.keys(zdValues).filter(function(key) {
            var isSigField = key.match(/signature/i) !== null;
            alert("@@@ filter: key => " + key);
            alert("@@@ filter: value => " + zdValues[key]);
            alert("@@@ filter: key.match => " + isSigField);
            return isSigField;
        });
        alert("sigKeys found in filter: " + sigKeys.length);
        hasAnySigs = sigKeys.length > 0; //SHR201028 #76788 signed is false unless there are signature fields
        sigKeys.forEach(function(key) {
            alert("@@@ iterating: key => " + key);
            alert("@@@ iterating: zdValues[key] => " + zdValues[key]);
            hasAnySigs = hasAnySigs || zdValues[key]; //SHR201028 #76788 return true if ANY signatures are true
        });
        curReviews += hasAnySigs ? "Signed at " + now0 : ""; //SHR201027 #76788 child stacks should only show Indexed and Signed
    }
    alert("curReviews => " + curReviews);
    arrOfPairs2.push("X_reviews", curReviews);
    updateDB(doc,arrOfPairs2);

    return newId;
}

var stackId = zData.getStackId(doc); //ERS190624 HACK? //ERS200711 #72433 added into zStack library from 2019
zData.stage="Indexed"; //ERS200310 AutoIndexed is not in zStack picklist
zData.pages=("0"+X(doc,"X_pages"))/1; if (zData.pages===0) zData.pages=1; //TODO intialize zData better

//really need patient info enough to attach or create
//zData.getDataEntryFields(doc); //ERS190914 get from X_zippiData
var zc=X(doc,"X_zippiCompare");
var zd=X(doc,"X_zippiData");
alert("zc="+zc);
if (zc && zc.indexOf("[")===0) {zc=JSON.parse(zc);}
alert("zc now "+zc);
if (zd && zd.indexOf("[")===0) {zd=JSON.parse(zd);}

//loop pages
var dt0="FAX", p0=1, c=0;
var dbID0=doc.dbID;
var docStack=doc;
zData.newSplits=[];
zData.stackId=stackId; //ERS200503 #70273

zData.rotation=""; //ERS200704 #72433
for (var p=1; p<=zData.pages; p++) {
    alert("page "+p);
    alert("zc[]="+zc[p]);
    if (zc[p]) {
        var dt=zc[p].docType;
        if (dt != dt0 || 1==1) { //ERS200227 #61196 zc[p] existing is enough?
            alert("Split "+p0+zData.rotation+"-"+(p-1)+" into "+dt0);
            //ERS200312 alert("Data "+JSON.stringify(zPrepop(zd[p0])));
            if (dt0 != "FAX") {
                if (zc && zc[p] && zc[p].orient && zc[p].orient==180) zData.rotation="u"; //ERS200704 #72433
                zData.newSplits[c]=autoSplit(doc,p0+zData.rotation+"-"+(p-1),p0,zc,zd);
                zData.rotation=""; //ERS200711 reset to "" after the split
                //doc=docStack;
                setDocumentContext(doc, dbID0);
                alert("ERS191014.59 after split doc.dbID="+doc.dbID +" new "+c+" = "+zData.newSplits[c]);
                c++;
            }
            //HACK OFF if ((p-p0)>1) dt="was"+dt; //ERS200227 #61196 multiple contimeous Orders
            dt0=dt; p0=p;
        }
    }
}
//ERS200915 #75381 accelerator and orientations
if (zc[p0] && zc[p0].orient && zc[p0].orient==180) zData.rotation="u"; //ERS200704 #72433 //ERS200711 TODO orient=0 in default

alert("ERS200711.116 rotation="+zData.rotation+" Pages "+p0+zData.rotation+"-"+(p-1)+" is a "+dt0);
alert("Data "+JSON.stringify(zPrepop(zd[p0])));
if (dt0 != "FAX") {
    zData.newSplits[c]=autoSplit(doc,p0+zData.rotation+"-"+(p-1),p0,zc,zd);
}
alert("Splits into "+zData.newSplits);

/* end of rule */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
