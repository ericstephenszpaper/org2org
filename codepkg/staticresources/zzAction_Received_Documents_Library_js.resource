<!--
// Name: HCW21 Received Documents Library
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV230119 Updated for static resource; PV230119
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2023-01-20 05:22:43","evalContinue":"true","active":true,"button":"","name":"HCW21 Received Documents Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotHCW21","operation":"not-contains"}]},"consequence":{"doit":"Ly9FUlMyMTAyMDggZ2V0dGluZyB0aGUgc3RhdGljIHJlc291cmNlIHdyaXR0ZW4gLy9FUlMyMTA0MjQgd2hlcmUgaXMgdGhlIHN0YXRpYyByZXNvdXJjZT8KLy9FUlMyMDEwMTggSENXMjEgc3VwcG9ydHMgdjUwIHRlc3Qgd2l0aCBvdGhkZXIgTUZGLy9QVjIzMDExOSBVcGRhdGVkIGZvciBzdGF0aWMgcmVzb3VyY2UKaWYgKDE9PT0wKSB6RGF0YS5yZWNEb2NJZD16RGF0YS5jbGllbnRSZWNlaXZlZERvY3VtZW50KGRvYyxjaGlsZFN0YWNrU0ZJZCk7Cgp6RGF0YS5jb25uZWN0RmlsZT1mdW5jdGlvbihkb2Msc2ZJZCkgeyAvL0VSUzIxMDQyNCAjODIwODEKICAgICAgICAvL0VSUzIxMDgwNSBUT0RPIGhhbmRsZSBEVVBMSUNBVEUgZXhjZXB0aW9uIGFuZCByZWNvdmVyIGZyb20gLi4vYWxsZmlsZXMvMDY5NWUwMDAwMDBPcWF1QUFDLTAwMDA1ZWVjWDFmY2JnaGwxai8KICAgICAgICBhbGVydCgiLy9FUlMyMTA0MjQgY29ubmVjdCB0aGUgUERGIHRvIDBpbyIpOwogICAgICAgIGFsZXJ0KCJDcmVhdGluZyBMaW5rIHRvIFJlY2VpdmVkRG9jdW1lbnQgd2l0aCBpZCA9PiAiICsgc2ZJZCk7CiAgICAgICAgLy9DUk4yMDEwMjYgIzc2Nzg4IExpbmsgdGhlIHpTdGFjayAob3Igd2hhdGV2ZXIgcGFyZW50SWQgdGhhdCBpcyBwYXNzZWQgaW4pIHRvIHRoZSBDb250ZW50RG9jdW1lbnQvQ29udGVudERvY3VtZW50VmVyc2lvbgogICAgICAgIC8vIGNyZWF0ZWQgYWJvdmUuCiAgICAgICAgekRhdGEuZmlsZUlkPWRvYy5VUkwuc3Vic3RyaW5nKGRvYy5VUkwubGFzdEluZGV4T2YoInMvIikrMik7ICAvLyAuLi9hbGxmaWxlcy8wNjk0VDAwMDAwM3FtWndRQUktMDAwMDRmYjBYMWY0MnRjZTQ4L2VyaWMKICAgICAgICB6RGF0YS5maWxlSWQ9ekRhdGEuZmlsZUlkLnNwbGl0KCItIilbMF07CiAgICAgICAgYWxlcnQoIkVSUzIxMDQyNCBjb25uZWN0ICIrc2ZJZCArIiB0byAiK3pEYXRhLmZpbGVJZCsiIGZyb20gIitkb2MuVVJMKTsKICAgICAgICB2YXIgbGlua0lkPSIiOwogICAgICAgIGlmICh6RGF0YS5maWxlSWQuaW5kZXhPZigiMDY5Iik9PT0wKSB7CiAgICAgICAgICAgIHZhciBkb2NBcnJPZlBhaXJzID0gW107CiAgICAgICAgICAgIGRvY0Fyck9mUGFpcnMucHVzaCgiQ29udGVudERvY3VtZW50SWQiLCB6RGF0YS5maWxlSWQpOwogICAgICAgICAgICAvLyBkb2NBcnJPZlBhaXJzLnB1c2goIkNvbnRlbnREb2N1bWVudElkIiwgcmVjRG9jSWQpOyAgIC8vIHRoaXMgZG9lc24ndCB3b3JrCiAgICAgICAgICAgIGRvY0Fyck9mUGFpcnMucHVzaCgiTGlua2VkRW50aXR5SWQiLCBzZklkKTsKICAgICAgICAgICAgZG9jQXJyT2ZQYWlycy5wdXNoKCJWaXNpYmlsaXR5IiwgIkFsbHVzZXJzIik7CiAgICAgICAgICAgIHRyeSB7IC8vRVJTMjEwODIzLjQzIAogICAgICAgICAgICAgICAgbGlua0lkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiQ29udGVudERvY3VtZW50TGluayIsIG51bGwsIGRvY0Fyck9mUGFpcnMpOwogICAgICAgICAgICB9IGNhdGNoKGV4KSB7CiAgICAgICAgICAgICAgICBhbGVydCgiRVJTMjEwODIzLjQ2IGV4Y2VwdGlvbiBtYWtpbmcgQ0RMIGZvciAiK3pEYXRhLmZpbGVJZCsiIG5vdCBmYXRhbC4iKTsKICAgICAgICAgICAgICAgIGxpbmtJZD16RGF0YS5maWxlSWQ7IC8vVE9ETyBtaWdodCBuZWVkIHRoZSByZWFsIG9uZQogICAgICAgICAgICB9CiAgICAgICAgICAgIGFsZXJ0KCJDb250ZW50RG9jdW1lbnRMaW5rIGNyZWF0ZWQgd2l0aCBJZCA9PiAiICsgbGlua0lkKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICBhbGVydCgiQ2FuIG5vdCBjb25uZWN0ICIrc2ZJZCsiIHRvICIrZG9jLlVSTCk7CiAgICAgICAgICAgIHJldHVybiB6RGF0YS5maWxlSWQ7IC8vVE9ETzIxMDQyNSBzaG91bGQgaGF2ZSB0aGUgMDBQIHVudGlsIHdlIGdldCB0aGF0IGZpeGVkCiAgICAgICAgfQogICAgICAgIHJldHVybiBsaW5rSWQ7Cn0KCgovL0VSUzIwMDkyOCAjNzY3ODggY3JlYXRlIFJlY2VpdmVkRG9jdW1lbnQgdGhlbiBhZGQgYSBMRiBwb2ludGluZyB0byB6cG9wZXIgUERGIG9yIHRoZSBQREYgaXRzZWxmCnpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQ9ZnVuY3Rpb24oZG9jLHBhcmVudElkLCBkZWZhdWx0TGFiZWwpIHsgLy9uZXcgb25lCiAgICB2YXIgbGFiZWwgPSBkb2MuZGVsaXZlcmVkRnJvbSsiIHNlbnQgIiArekRhdGEuZG9jVHlwZTsKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSkgeyAgLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggZml4IGxhYmVsIGlmIHRoaXMgY2FtZSBmcm9tIGEgU2FsZXNmb3JjZSBSZWNlaXZlZCBEb2N1bWVudAogICAgICAgIGxhYmVsID0gIlJlY2VpdmVkRG9jdW1lbnQgIiArIHpEYXRhLmRvY1R5cGU7CiAgICAgICAgaWYgKGRvYy5VUkwuaW5kZXhPZigiMGlvIik+LTEpIHsgLy9FUlMyMTAyMDYgIzgxMDE0IGxvb3AgYmFjayBmcm9tIHVwbG9hZGVkIFJlY2VpdmVkIERvY3VtZW50IGFuZCBBdXRvRHJpdmUgdG9vCiAgICAgICAgICAgIGFsZXJ0KCJFUlMyMTAyMDYuOCBBbHJlYWR5IGluIFJlY2VpdmVkRG9jdW1lbnQgIitkb2MuVVJMKTsKICAgICAgICAgICAgdmFyIGk9ZG9jLlVSTC5pbmRleE9mKCIwaW8iKTsKICAgICAgICAgICAgdmFyIG9sZElkPWRvYy5VUkwuc3Vic3RyaW5nKGksZG9jLlVSTC5pbmRleE9mKCItIixpKzEpKTsKICAgICAgICAgICAgcmV0dXJuIG9sZElkOwogICAgICAgIH0KICAgIH0KICAgIHZhciBhcnI9W107CiAgICBhcnIucHVzaCgiTmFtZSIsIGRlZmF1bHRMYWJlbCB8fCBsYWJlbCk7ICAgICAgICAvL0NSTjIwMTAyNCBDYXNlICM3Njc4OCBhbGxvdyB0aGUgZGVmYXVsdCBsYWJlbCB0byBiZSBzdXByZW1lCiAgICBhcnIucHVzaCgiU291cmNlIix6RGF0YS5wcm9ncmFtTmFtZSk7CiAgICBhcnIucHVzaCgiU3RhdHVzIiwiRHJhZnQiKTsKICAgIGFyci5wdXNoKCJEaXJlY3Rpb24iLCJJbmNvbWluZyIpOwogICAgYXJyLnB1c2goImlzQWN0aXZlIix0cnVlKTsKICAgIGFyci5wdXNoKCJEb2N1bWVudE51bWJlciIsIno6Iitkb2MuZGJJRCk7CiAgICAKICAgIGlmICgxPT09MSkgeyAvL0VSUzIxMDMyMCAjODEzMjcgY29ubmVjdCBSZWNEb2MgdG8gelN0YWNrCiAgICAgICAgdmFyIHN0YWNrSWQgPSBwYXJlbnRJZDsgLy9YKGRvYywgIlhfc3RhY2siKTsKICAgICAgICBpZiAoIXN0YWNrSWQgfHwgc3RhY2tJZC5pbmRleE9mKCJhIikgIT09IDApIHN0YWNrSWQ9ekRhdGEuZ2V0U3RhY2tJZChkb2MpOwogICAgICAgIGlmIChzdGFja0lkKSB6RGF0YS5zdGFja0lkPXN0YWNrSWQ7CiAgICAgICAgaWYgKHpEYXRhLnN0YWNrSWQpIGFyci5wdXNoKCJ6U3RhY2tfX2MiLHpEYXRhLnN0YWNrSWQpOyAvL0VSUzIxMDMyMCAjODEzMjcgY29ubmVjdCBSZWNEb2MgdG8gelN0YWNrCiAgICAgICAgZWxzZSBhbGVydCgiRVJTMjEwMzIwLjI5IFdBUk5JTkc6IGNvdWxkIG5vdCBkZXRlcm1pbmUgelN0YWNrSWQhIik7CiAgICB9CiAgICAKICAgIHZhciByZWNEb2NJZD1jcmVhdGVTRlJlY29yZChkb2MsICJSZWNlaXZlZERvY3VtZW50IiwgbnVsbCwgYXJyKTsKICAgIGFsZXJ0KCJFUlMyMDA5MjkgTWFkZSBOUkQ9IityZWNEb2NJZCk7CiAgICBpZiAocmVjRG9jSWQpIHsKICAgICAgICB6RGF0YS5maWxlSWQ9ekRhdGEuY2xpZW50TGlnaHRuaW5nRmlsZShkb2MscmVjRG9jSWQsekRhdGEsekRhdGEubGFiZWwpOwogICAgICAgIC8vekRhdGEuZmlsZUlkPSJORVciOwogICAgICAgIGFsZXJ0KCJFUlMyMDA5MjkgTWFkZSBSRExGPSIrekRhdGEuZmlsZUlkKTsKCiAgICAgICAgYWxlcnQoIkNyZWF0aW5nIExpbmsgdG8gUmVjZWl2ZWREb2N1bWVudCB3aXRoIGlkID0+ICIgKyByZWNEb2NJZCk7CiAgICAgICAgLy9DUk4yMDEwMjYgIzc2Nzg4IExpbmsgdGhlIHpTdGFjayAob3Igd2hhdGV2ZXIgcGFyZW50SWQgdGhhdCBpcyBwYXNzZWQgaW4pIHRvIHRoZSBDb250ZW50RG9jdW1lbnQvQ29udGVudERvY3VtZW50VmVyc2lvbgogICAgICAgIC8vIGNyZWF0ZWQgYWJvdmUuCiAgICAgICAgdmFyIGRvY0Fyck9mUGFpcnMgPSBbXTsKICAgICAgICBkb2NBcnJPZlBhaXJzLnB1c2goIkNvbnRlbnREb2N1bWVudElkIiwgekRhdGEuZmlsZUlkKTsKICAgICAgICAvLyBkb2NBcnJPZlBhaXJzLnB1c2goIkNvbnRlbnREb2N1bWVudElkIiwgcmVjRG9jSWQpOyAgIC8vIHRoaXMgZG9lc24ndCB3b3JrCiAgICAgICAgZG9jQXJyT2ZQYWlycy5wdXNoKCJMaW5rZWRFbnRpdHlJZCIsIHBhcmVudElkKTsKICAgICAgICBkb2NBcnJPZlBhaXJzLnB1c2goIlZpc2liaWxpdHkiLCAiQWxsdXNlcnMiKTsKICAgICAgICAvL3ZhciBsaW5rSWQgPSBjcmVhdGVTRlJlY29yZChkb2MsICJDb250ZW50RG9jdW1lbnRMaW5rIiwgbnVsbCwgZG9jQXJyT2ZQYWlycyk7CiAgICAgICAgYWxlcnQoIkNvbnRlbnREb2N1bWVudExpbmsgY3JlYXRlZCB3aXRoIElkID0+ICIgKyBsaW5rSWQpOwoKICAgICAgICAvL0NSTjIwMTAyNiAjNzY3ODggRE8gTk9UIGNhbGwgdXBsb2FkVG9DbG91ZCAod2hhdCB0aGUgY2FsbCB0byB6RGF0YS5jbGllbnRVcGxvYWRQREYoKSBjYWxscykuIEl0IGlzIG5vdCBvbmx5CiAgICAgICAgLy8gdXBsb2FkaW5nIHRoZSBwZGYgYnl0ZXMgdG8gU2FsZXNmb3JjZSwgaXQgaXMgY3JlYXRpbmcgdGhlIFJlY2VpdmVkRG9jdW1lbnQsIENvbnRlbnREb2N1bWVudCwgZXRjLiB0aGF0IHdlIGFyZQogICAgICAgIC8vIGFscmVhZHkgZG9pbmcgYWJvdmUuCiAgICAgICAgLy8gaWYgKDE9PT0xICYmIHpEYXRhLmZpbGVJZCkgewogICAgICAgIC8vICAgICAvLyB2YXIgbmF0aXZlUERGPXpEYXRhLmNsaWVudFVwbG9hZFBERihkb2MscmVjRG9jSWQsekRhdGEuZmlsZUlkLHpEYXRhKTsgLy9maWxlSWQgaXMgMDY4QjAwMDAwMDhuMlowSUFJCiAgICAgICAgLy8gICAgIHZhciBuYXRpdmVQREYgPSB6RGF0YS5jbGllbnRVcGxvYWRQREYoZG9jLCByZWNEb2NJZCwgcGFyZW50SWQsIHpEYXRhKTsgLy9maWxlSWQgaXMgMDY4QjAwMDAwMDhuMlowSUFJCiAgICAgICAgLy8gfQogICAgfQogICAgcmV0dXJuIHJlY0RvY0lkOwp9OwoKekRhdGEuY2xpZW50VXBsb2FkUERGPWZ1bmN0aW9uKGRvYyxzZklkLGZpbGVJZCx6ZCxwYWdlc1JhbmdlLHBkZkxhYmVsKSB7IC8vRVJTMjAwOTI5ICM3Njc4OCBmaWxlSWQ9Ik5FVyIgZm9yIG5ldyBvbmUKICAgIHZhciBub3dUaW1lU3RhbXAgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgaWYgKCFwYWdlc1JhbmdlKSBwYWdlc1JhbmdlPSIxLTk5IjsKICAgIGlmICghcGRmTGFiZWwpIHBkZkxhYmVsPWRvYy5sYWJlbDsKICAgIGlmIChwZGZMYWJlbC5pbmRleE9mKCIucGRmIik9PS0xKSBwZGZMYWJlbCs9Ii5wZGYiOwogICAgY3JlYXRlRGlyZWN0b3J5KGRvYywgImludGVncmF0aW9uRGlyIiwgbm93VGltZVN0YW1wKTsKICAgIHZhciByZXNwb25zZSA9IHNwbGl0UERGKGRvYywgcGFnZXNSYW5nZSwgImludGVncmF0aW9uRGlyIiwgbm93VGltZVN0YW1wLCBkb2MuZGJJRCk7CiAgICBhbGVydCgibmV3UERGIGZyb20gIityZXNwb25zZSk7CiAgICB2YXIgbmV3UERGTmFtZSA9IFgoZG9jLCAibmV3UERGIiwgcmVzcG9uc2UpOwogICAgLy9UT0RPIHVwbG9hZCB0byBMaWdodG5pbmdGaWxlIHZzIEF0dGFjaG1lbnQgCiAgICB2YXIgbW9yZVVSTD0iZnJvbVVSTD0iK2ZpbGVJZDsKICAgIC8vaWYgKGZpbGVJZC5pbmRleE9mKCIwNjgiKT09MCkgeyBzZklkPWZpbGVJZDsgZmlsZUlkPSJORVciOyB9IC8vRVJTMjAwOTI5IHVwbG9hZGluZyB0byBMRj8KICAgIG1vcmVVUkw9ImZyb21VUkw9IisiMDY4IjsgbW9yZVVSTD0iIjsgZmlsZUlkPSJORVciOyAvL2ZvcmNlIGEgbmV3IExGIHdpdGggbmF0aXZlIFBERgogICAgdmFyIHVwbG9hZFVSTCA9ICJodHRwOi8vbG9jYWxob3N0OjgwODAvbXlmaWxlZm9yY2UvdXBsb2FkVG9DbG91ZC5qc3A/Iittb3JlVVJMKyImU0ZpZD0iK2ZpbGVJZCsiJlNGcGlkPSIgKyBzZklkICsgIiZTRm9yZz0iICsgZG9jLmtiRGF0YS5zZk9yZ2FuaXphdGlvbklECiAgICAgICsgIiZsYWJlbD0iICsgcGRmTGFiZWwgKyAiJnNlcnZlckZpbGU9IiArIG5ld1BERk5hbWUgKyAiJkRlc2NyaXB0aW9uPUZpbGUgYXR0YWNoZWQgYnkgelBhcGVyLiI7CiAgICBhbGVydCgiIyMjIyBVcGxvYWQgbmF0aXZlIFBERiB3aXRoICIgKyB1cGxvYWRVUkwpOwogICAgdmFyIHIgPSB3Z2V0KGRvYywgdXBsb2FkVVJMKTsKICAgIGFsZXJ0KCJVcGxvYWRlZFBERiAiK25ld1BERk5hbWUrIiBpbnRvICIrIHIpOwogICAgY2xlYW51cERpcmVjdG9yeShkb2MsICJpbnRlZ3JhdGlvbkRpciIsIG5vd1RpbWVTdGFtcCk7Cn0KCi8vRVJTMjAwOTI4IHNlZSBjYXNlcyAjNjU1MzUsICM3MjAxMCwgCnpEYXRhLmNsaWVudExpZ2h0bmluZ0ZpbGU9ZnVuY3Rpb24oZG9jLHNmSWQsemQsZGVzaXJlZFRpdGxlKSB7IC8vQ1JOMjAwNjA1IFN1cHBvcnRpbmcgdGhlIHRpdGxlIGJlaW5nIHNlbnQgaW4uIC8vRVJTMjAwNDI4ICM3MDk1MyB1c2UgaW4gSW5kZXggaWYgY2FzZUlkIGFuZCBERUxJVkVSWV9DT01QTEVURQogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CiAgICBpZiAoIWRvYy5rYkRhdGEuc2ZTZXJ2ZXIpIHsgYWxlcnQoImRvYy5rYkRhdGEuc2ZTZXJ2ZXIgd2FzIGVtcHR5LiIpOyBkb2Mua2JEYXRhLnNmU2VydmVyPSJhYmJ2aWVvbmVjcm0tLXYzZGV2LmxpZ2h0bmluZy5mb3JjZS5jb20iOyB9IC8vRVJTMjAwNDI4IEhBQ0sKICAgIHZhciB6c2VydmVyID0gZG9jLmtiRGF0YS5zZlNlcnZlci5pbmRleE9mKCJodHRwczovLyIpPT0wID8gZG9jLmtiRGF0YS5zZlNlcnZlciA6ICJodHRwczovLyIgKyBkb2Mua2JEYXRhLnNmU2VydmVyOyAvL0VSUzIwMDQyOCB3YXMgc3RhcnRzV2l0aCBvbmx5IG5hc2hvcm4KICAgIC8vdmFyIHpzZXJ2ZXIgPSBkb2Mua2JEYXRhLnNmU2VydmVyLnN0YXJ0c1dpdGgoImh0dHBzOi8vIikgPyBkb2Mua2JEYXRhLnNmU2VydmVyIDogImh0dHBzOi8vIiArIGRvYy5rYkRhdGEuc2ZTZXJ2ZXI7CiAgICB2YXIgZG9jdXJsID0genNlcnZlciArICIvc2VydmljZXMvZGF0YS92NDYuMC9zb2JqZWN0cy9Db250ZW50VmVyc2lvbi8iOwogICAgdmFyIHBkZnVybCA9ICJodHRwczovL2d3LnpwYXBlci5jb20va2IvanNwL1NGX2ZpbmQubGlnaHRuaW5nLmpzcD9nbz1TRl9maWxlcy5qc3AmZGJJRD0iICsgZG9jLmRiSUQgKyAiJlNGb3JnPSIgKyBkb2Mua2JEYXRhLnNmT3JnYW5pemF0aW9uSUQ7CiAgICAvL3BkZnVybD0iaHR0cHM6Ly9maWxlcy56cGFwZXIuY29tL21zc2EvTVNTQS5wZGYiOyAvL0VSUzIwMDkyNyBIQUNLIFRPIFNFRSBJRiBTT0xJRCBQREYgd2lsbCB3b3JrCiAgICB2YXIgQ29udGVudFZlcnNpb25DYXRlZ29yaWVzID0gewogICAgICAgICJPVEgiOiAiT3RoZXIgRG9jdW1lbnRzIiwKICAgICAgICAiTUlORk8iOiAiTWlzc2luZyBJbmZvcm1hdGlvbiIsIC8vSlBCMjEwMzA1IGNoYW5nZWQgdG8gTUlORk8KICAgICAgICAiRU5STCI6ICJFbnJvbGxtZW50IEZvcm0iLAogICAgICAgICJNRURPIjogIk1lZGljYWwgLSBPdGhlciIsCiAgICAgICAgIkNPTiI6ICJDb25zZW50IEZvcm1zIiwgLy9KUEIyMTAzMDUgY2hhbmdlZCB0byBDT04KICAgICAgICAiQ09NRFIiOiAiQ29tbXVuaWNhdGlvbiBmcm9tIFBoeXNpY2lhbnMiLAogICAgICAgICJSWCI6ICJQcmVzY3JpcHRpb24iLAogICAgICAgICJTQSI6ICJTQSBEb2N1bWVudHMiLAogICAgICAgICJNRURDIjogIk1lZGljYWwgQ2xhcmlmaWNhdGlvbiIsCiAgICAgICAgIkxBQiI6ICJMYWIgRG9jdW1lbnRzIiwKICAgICAgICAiSU5KUiI6ICJJbmplY3Rpb24gUmVwb3J0IiwKICAgICAgICAiQ0EiOiAiQ2xpbmljYWwgQXNzZXNzbWVudCIsCiAgICAgICAgIkNPUEFZIjogIkNvcGF5IgogICAgfQogICAgdmFyIGRhdGVzdHIgPSBnZXRDdXJEYXRlKGRvYyk7CiAgICB2YXIgYWNjbmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRBY2NvdW50X19yLk5hbWUiKTsKICAgIHZhciBmYXh0eXBlID0gWChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOwogICAgdmFyIHJldnN0YXQgPSBYKGRvYywgIlhfcmV2aWV3ZWRTdGF0dXMiKTsKICAgIHZhciBjYXR0eXBlID0gQ29udGVudFZlcnNpb25DYXRlZ29yaWVzW2ZheHR5cGVdIHx8IGZheHR5cGU7CiAgICAvL0NSTjIwMDYwNCBGb3Igb3V0Z29pbmcsIHRoZSBhY2NuYW1lIGFuZC9vciBmYXh0eXBlIGFyZSBibGFuayBzbyBqdXN0IHVzZSB0aGUgU25pcHBldCBsYWJlbAogICAgdmFyIGRvY1RpdGxlID0gIWFjY25hbWUgJiYgIWZheHR5cGUgID8gKGRlc2lyZWRUaXRsZSA/IGRlc2lyZWRUaXRsZSA6IGRvYy5sYWJlbCkgOiBhY2NuYW1lICsgIiAtICIgKyBmYXh0eXBlICsgIiAtICIgKyBkYXRlc3RyOwogICAgaWYoIWRlc2lyZWRUaXRsZSkgey8vUFYyMjAxMTggbWFrZXN1cmUgdG8gaGF2ZSBkb2N0aXRsZQogICAgICAgIGRlc2lyZWRUaXRsZSA9IGRvY1RpdGxlOwogICAgfQogICAgYWxlcnQoIkBAQEAgQ2xlYW5pbmcgdXAgZGF0YTogWChkb2MsICdYX1N1Yl9DYXRlZ29yeV9fYycpID0+ICIgKyBYKGRvYywgIlhfU3ViX0NhdGVnb3J5X19jIikgKyAiIC0gekRhdGEuWF9TdWJfQ2F0ZWdvcnlfX2MgPT4gIiArIHpEYXRhLlhfU3ViX0NhdGVnb3J5X19jKTsKICAgIHZhciBkb2NkYXRhID0gewogICAgICAgICJEZXNjcmlwdGlvbiI6IHJldnN0YXQgKyAiIGJ5OiAiICsgZG9jLnNmVXNlck5hbWUgKyAiIGF0OiAiICsgekRhdGEuZm9ybWF0Tm93LAogICAgICAgICJGaXJzdFB1Ymxpc2hMb2NhdGlvbklkIjogc2ZJZCwKICAgICAgICAvLyJDT1JFX0xlZ2FjeV9Eb2N1bWVudF9JRF9fYyI6IHBkZnVybCwKICAgICAgICAvLyJDb3JlX0NvdW50cnlDb2RlX19jIjogIlVTIiwKICAgICAgICAvLyJDb3JlX0NhdGVnb3J5X19jIjogY2F0dHlwZSwKICAgICAgICAvLyJDb3JlX1N1Yl9DYXRlZ29yeV9fYyI6IFgoZG9jLCAiWF9TdWJfQ2F0ZWdvcnlfX2MiKSAgICAgLy9DUk4yMDA1MDUgekRhdGEgaXMgaG9sZGluZyBvbGQsIGludmFsaWQgdmFsdWUgcHVsbGVkIGZyb20gd2RkYXRhIGluc3RlYWQgb2Ygd2hhdCB0aGUgdXNlciBjdXJyZW50bHkgY2hvc2UuCi8vICAgICAgICAiQ29yZV9TdWJfQ2F0ZWdvcnlfX2MiOiB6RGF0YS5YX1N1Yl9DYXRlZ29yeV9fYwogICAgICAgIC8vIkNvbnRlbnRVcmwiOiBwZGZ1cmwsLy9QVjIzMDExOSAKICAgICAgICAvLyJGaWxlVHlwZSI6IlBERiIsCiAgICAgICAgLy9FUlMyMDA5Mjkgbm90IGFsbG93ZWQgaWYgQ29udGVudFVybCAiUGF0aE9uQ2xpZW50IjogZG9jVGl0bGUrIi5wZGYiLAogICAgICAgIC8vIlRpdGxlIjogZG9jVGl0bGUKICAgICAgICAiVGl0bGUiOiBkZXNpcmVkVGl0bGUvL1BWMjMwMTE4IHVwZGF0ZWQKICAgIH07CiAgICB2YXIgaGVhZGVycyA9IFsKICAgICAgICAiQXV0aG9yaXphdGlvbiIsICJCZWFyZXIgIiArIGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQsCiAgICAgICAgIkNvbnRlbnQtVHlwZSIsICJhcHBsaWNhdGlvbi9qc29uIgogICAgXTsKICAgIHZhciBib2R5ID0gSlNPTi5zdHJpbmdpZnkoZG9jZGF0YSk7CiAgICBhbGVydCgiQEBAIENyZWF0aW5nIENvbnRlbnRWZXJzaW9uIHdpdGgganNvbiA9PiAiICsgYm9keSk7CiAgICB2YXIgbmV3SWQ9IiI7CiAgICB0cnkgewogICAgICAgIHZhciByZXMgPSB3cG9zdChkb2MsIGRvY3VybCwgW10sIGhlYWRlcnMsIGJvZHkpOwogICAgICAgIGFsZXJ0KCJ3cG9zdCByZXNwb25zZTogIiArIHJlcyk7CiAgICAgICAgbmV3SWQ9cmVzLmlkOyAvL0VSUzIwMDQyOCBUT0RPIGdldCB0aGUgbmV3IElkIFRPRE8gdGVzdCB3aXRoIGxlZ2FjeSBlbmdpbmUgdnMgemlwcGkgbmFzaG9ybiAvL1NIUiBzYWlkIG1heWJlISEhCiAgICAgICAgaWYgKCFuZXdJZCkgeyBuZXdJZD1KU09OLnBhcnNlKHJlcykuaWQ7IH0gLy9FUlMyMDA5MjkgSEFDSyBldmFsCgogICAgICAgIGFsZXJ0KCJQdWxsaW5nIENvbnRlbnREb2N1bWVudElkIGZyb20gQ29udGVudFZlcnNpb24gPT4gIiArIG5ld0lkKTsKICAgICAgICAvL0NSTjIwMTAyNiAjNzY3ODggUmV0dXJuIHRoZSBDb250ZW50RG9jdW1lbnRJZCB3aGljaCBpcyBuZWVkZWQgdG8gY3JlYXRlIHRoZSBEb2N1bWVudExpbmsgbGF0ZXIuCiAgICAgICAgcmV0dXJuIGdldFNGRmllbGQoZG9jLCAiQ29udGVudFZlcnNpb24iLCAiQ29udGVudERvY3VtZW50SWQiLCBudWxsLCBuZXdJZCk7CiAgICB9CiAgICBjYXRjaChleCkgewogICAgICAgIGFsZXJ0KCJ3cG9zdCBleGNlcHRpb246ICIgKyBleCk7CiAgICAgICAgdHJ5IHsKICAgICAgICAgICAgdmFyIG1lc3MgPSBKU09OLnBhcnNlKGV4KTsKICAgICAgICAgICAgaWYgKG1lc3MgJiYgQXJyYXkuaXNBcnJheShtZXNzKSAmJiBtZXNzWzBdLmVycm9yQ29kZSkgewogICAgICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJhbGVydChgRXJyb3IgY3JlYXRpbmcgQ29udGVudFZlcnNpb24hICIgKyBtZXNzWzBdLmVycm9yQ29kZSArICIgPT4gIiArIG1lc3NbMF0ubWVzc2FnZSArICJgKTsiKTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgICAgICBjYXRjaChwZXgpIHsKICAgICAgICAgICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsICJhbGVydChgRXJyb3IgcGFyc2luZyBKU09OIHJlcHNwb25zZTogIiArIGV4ICsgImApOyIpOwogICAgICAgIH0KICAgIH0KICAgIHJldHVybiBuZXdJZDsKfTs="},"ordinal":1}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS210208 getting the static resource written //ERS210424 where is the static resource?
//ERS201018 HCW21 supports v50 test with othder MFF//PV230119 Updated for static resource
if (1===0) zData.recDocId=zData.clientReceivedDocument(doc,childStackSFId);

zData.connectFile=function(doc,sfId) { //ERS210424 #82081
        //ERS210805 TODO handle DUPLICATE exception and recover from ../allfiles/0695e000000OqauAAC-00005eecX1fcbghl1j/
        alert("//ERS210424 connect the PDF to 0io");
        alert("Creating Link to ReceivedDocument with id => " + sfId);
        //CRN201026 #76788 Link the zStack (or whatever parentId that is passed in) to the ContentDocument/ContentDocumentVersion
        // created above.
        zData.fileId=doc.URL.substring(doc.URL.lastIndexOf("s/")+2);  // ../allfiles/0694T000003qmZwQAI-00004fb0X1f42tce48/eric
        zData.fileId=zData.fileId.split("-")[0];
        alert("ERS210424 connect "+sfId +" to "+zData.fileId+" from "+doc.URL);
        var linkId="";
        if (zData.fileId.indexOf("069")===0) {
            var docArrOfPairs = [];
            docArrOfPairs.push("ContentDocumentId", zData.fileId);
            // docArrOfPairs.push("ContentDocumentId", recDocId);   // this doesn't work
            docArrOfPairs.push("LinkedEntityId", sfId);
            docArrOfPairs.push("Visibility", "Allusers");
            try { //ERS210823.43 
                linkId = createSFRecord(doc, "ContentDocumentLink", null, docArrOfPairs);
            } catch(ex) {
                alert("ERS210823.46 exception making CDL for "+zData.fileId+" not fatal.");
                linkId=zData.fileId; //TODO might need the real one
            }
            alert("ContentDocumentLink created with Id => " + linkId);
        } else {
            alert("Can not connect "+sfId+" to "+doc.URL);
            return zData.fileId; //TODO210425 should have the 00P until we get that fixed
        }
        return linkId;
}


//ERS200928 #76788 create ReceivedDocument then add a LF pointing to zpoper PDF or the PDF itself
zData.clientReceivedDocument=function(doc,parentId, defaultLabel) { //new one
    var label = doc.deliveredFrom+" sent " +zData.docType;
    if (doc.deliveredFrom.startsWith("0io")) {  //CRN201024 Case #76788 fix label if this came from a Salesforce Received Document
        label = "ReceivedDocument " + zData.docType;
        if (doc.URL.indexOf("0io")>-1) { //ERS210206 #81014 loop back from uploaded Received Document and AutoDrive too
            alert("ERS210206.8 Already in ReceivedDocument "+doc.URL);
            var i=doc.URL.indexOf("0io");
            var oldId=doc.URL.substring(i,doc.URL.indexOf("-",i+1));
            return oldId;
        }
    }
    var arr=[];
    arr.push("Name", defaultLabel || label);        //CRN201024 Case #76788 allow the default label to be supreme
    arr.push("Source",zData.programName);
    arr.push("Status","Draft");
    arr.push("Direction","Incoming");
    arr.push("isActive",true);
    arr.push("DocumentNumber","z:"+doc.dbID);
    
    if (1===1) { //ERS210320 #81327 connect RecDoc to zStack
        var stackId = parentId; //X(doc, "X_stack");
        if (!stackId || stackId.indexOf("a") !== 0) stackId=zData.getStackId(doc);
        if (stackId) zData.stackId=stackId;
        if (zData.stackId) arr.push("zStack__c",zData.stackId); //ERS210320 #81327 connect RecDoc to zStack
        else alert("ERS210320.29 WARNING: could not determine zStackId!");
    }
    
    var recDocId=createSFRecord(doc, "ReceivedDocument", null, arr);
    alert("ERS200929 Made NRD="+recDocId);
    if (recDocId) {
        zData.fileId=zData.clientLightningFile(doc,recDocId,zData,zData.label);
        //zData.fileId="NEW";
        alert("ERS200929 Made RDLF="+zData.fileId);

        alert("Creating Link to ReceivedDocument with id => " + recDocId);
        //CRN201026 #76788 Link the zStack (or whatever parentId that is passed in) to the ContentDocument/ContentDocumentVersion
        // created above.
        var docArrOfPairs = [];
        docArrOfPairs.push("ContentDocumentId", zData.fileId);
        // docArrOfPairs.push("ContentDocumentId", recDocId);   // this doesn't work
        docArrOfPairs.push("LinkedEntityId", parentId);
        docArrOfPairs.push("Visibility", "Allusers");
        //var linkId = createSFRecord(doc, "ContentDocumentLink", null, docArrOfPairs);
        alert("ContentDocumentLink created with Id => " + linkId);

        //CRN201026 #76788 DO NOT call uploadToCloud (what the call to zData.clientUploadPDF() calls). It is not only
        // uploading the pdf bytes to Salesforce, it is creating the ReceivedDocument, ContentDocument, etc. that we are
        // already doing above.
        // if (1===1 && zData.fileId) {
        //     // var nativePDF=zData.clientUploadPDF(doc,recDocId,zData.fileId,zData); //fileId is 068B0000008n2Z0IAI
        //     var nativePDF = zData.clientUploadPDF(doc, recDocId, parentId, zData); //fileId is 068B0000008n2Z0IAI
        // }
    }
    return recDocId;
};

zData.clientUploadPDF=function(doc,sfId,fileId,zd,pagesRange,pdfLabel) { //ERS200929 #76788 fileId="NEW" for new one
    var nowTimeStamp = new Date().getTime() + "";
    if (!pagesRange) pagesRange="1-99";
    if (!pdfLabel) pdfLabel=doc.label;
    if (pdfLabel.indexOf(".pdf")==-1) pdfLabel+=".pdf";
    createDirectory(doc, "integrationDir", nowTimeStamp);
    var response = splitPDF(doc, pagesRange, "integrationDir", nowTimeStamp, doc.dbID);
    alert("newPDF from "+response);
    var newPDFName = X(doc, "newPDF", response);
    //TODO upload to LightningFile vs Attachment 
    var moreURL="fromURL="+fileId;
    //if (fileId.indexOf("068")==0) { sfId=fileId; fileId="NEW"; } //ERS200929 uploading to LF?
    moreURL="fromURL="+"068"; moreURL=""; fileId="NEW"; //force a new LF with native PDF
    var uploadURL = "http://localhost:8080/myfileforce/uploadToCloud.jsp?"+moreURL+"&SFid="+fileId+"&SFpid=" + sfId + "&SForg=" + doc.kbData.sfOrganizationID
      + "&label=" + pdfLabel + "&serverFile=" + newPDFName + "&Description=File attached by zPaper.";
    alert("#### Upload native PDF with " + uploadURL);
    var r = wget(doc, uploadURL);
    alert("UploadedPDF "+newPDFName+" into "+ r);
    cleanupDirectory(doc, "integrationDir", nowTimeStamp);
}

//ERS200928 see cases #65535, #72010, 
zData.clientLightningFile=function(doc,sfId,zd,desiredTitle) { //CRN200605 Supporting the title being sent in. //ERS200428 #70953 use in Index if caseId and DELIVERY_COMPLETE
    if (!zd) zd=zData;
    if (!doc.kbData.sfServer) { alert("doc.kbData.sfServer was empty."); doc.kbData.sfServer="abbvieonecrm--v3dev.lightning.force.com"; } //ERS200428 HACK
    var zserver = doc.kbData.sfServer.indexOf("https://")==0 ? doc.kbData.sfServer : "https://" + doc.kbData.sfServer; //ERS200428 was startsWith only nashorn
    //var zserver = doc.kbData.sfServer.startsWith("https://") ? doc.kbData.sfServer : "https://" + doc.kbData.sfServer;
    var docurl = zserver + "/services/data/v46.0/sobjects/ContentVersion/";
    var pdfurl = "https://gw.zpaper.com/kb/jsp/SF_find.lightning.jsp?go=SF_files.jsp&dbID=" + doc.dbID + "&SForg=" + doc.kbData.sfOrganizationID;
    //pdfurl="https://files.zpaper.com/mssa/MSSA.pdf"; //ERS200927 HACK TO SEE IF SOLID PDF will work
    var ContentVersionCategories = {
        "OTH": "Other Documents",
        "MINFO": "Missing Information", //JPB210305 changed to MINFO
        "ENRL": "Enrollment Form",
        "MEDO": "Medical - Other",
        "CON": "Consent Forms", //JPB210305 changed to CON
        "COMDR": "Communication from Physicians",
        "RX": "Prescription",
        "SA": "SA Documents",
        "MEDC": "Medical Clarification",
        "LAB": "Lab Documents",
        "INJR": "Injection Report",
        "CA": "Clinical Assessment",
        "COPAY": "Copay"
    }
    var datestr = getCurDate(doc);
    var accname = X(doc, "X_ZPAPER__PatientAccount__r.Name");
    var faxtype = X(doc, "X_ZPAPER__faxType__c");
    var revstat = X(doc, "X_reviewedStatus");
    var cattype = ContentVersionCategories[faxtype] || faxtype;
    //CRN200604 For outgoing, the accname and/or faxtype are blank so just use the Snippet label
    var docTitle = !accname && !faxtype  ? (desiredTitle ? desiredTitle : doc.label) : accname + " - " + faxtype + " - " + datestr;
    if(!desiredTitle) {//PV220118 makesure to have doctitle
        desiredTitle = docTitle;
    }
    alert("@@@@ Cleaning up data: X(doc, 'X_Sub_Category__c') => " + X(doc, "X_Sub_Category__c") + " - zData.X_Sub_Category__c => " + zData.X_Sub_Category__c);
    var docdata = {
        "Description": revstat + " by: " + doc.sfUserName + " at: " + zData.formatNow,
        "FirstPublishLocationId": sfId,
        //"CORE_Legacy_Document_ID__c": pdfurl,
        //"Core_CountryCode__c": "US",
        //"Core_Category__c": cattype,
        //"Core_Sub_Category__c": X(doc, "X_Sub_Category__c")     //CRN200505 zData is holding old, invalid value pulled from wddata instead of what the user currently chose.
//        "Core_Sub_Category__c": zData.X_Sub_Category__c
        //"ContentUrl": pdfurl,//PV230119 
        //"FileType":"PDF",
        //ERS200929 not allowed if ContentUrl "PathOnClient": docTitle+".pdf",
        //"Title": docTitle
        "Title": desiredTitle//PV230118 updated
    };
    var headers = [
        "Authorization", "Bearer " + doc.kbData.sfSessionID,
        "Content-Type", "application/json"
    ];
    var body = JSON.stringify(docdata);
    alert("@@@ Creating ContentVersion with json => " + body);
    var newId="";
    try {
        var res = wpost(doc, docurl, [], headers, body);
        alert("wpost response: " + res);
        newId=res.id; //ERS200428 TODO get the new Id TODO test with legacy engine vs zippi nashorn //SHR said maybe!!!
        if (!newId) { newId=JSON.parse(res).id; } //ERS200929 HACK eval

        alert("Pulling ContentDocumentId from ContentVersion => " + newId);
        //CRN201026 #76788 Return the ContentDocumentId which is needed to create the DocumentLink later.
        return getSFField(doc, "ContentVersion", "ContentDocumentId", null, newId);
    }
    catch(ex) {
        alert("wpost exception: " + ex);
        try {
            var mess = JSON.parse(ex);
            if (mess && Array.isArray(mess) && mess[0].errorCode) {
                addPostExecutionScript(doc, "alert(`Error creating ContentVersion! " + mess[0].errorCode + " => " + mess[0].message + "`);");
            }
        }
        catch(pex) {
            addPostExecutionScript(doc, "alert(`Error parsing JSON repsponse: " + ex + "`);");
        }
    }
    return newId;
};
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
