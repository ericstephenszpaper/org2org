<!--
// Name: HCW21 Received Documents Library
// Committer: eric.stephens@zpaper.com
// Update: 00P work around
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-25 20:43:11","evalContinue":"true","active":true,"button":"","name":"HCW21 Received Documents Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotHCW21","operation":"not-contains"}]},"consequence":{"doit":"Ly9FUlMyMTAyMDggZ2V0dGluZyB0aGUgc3RhdGljIHJlc291cmNlIHdyaXR0ZW4gLy9FUlMyMTA0MjQgd2hlcmUgaXMgdGhlIHN0YXRpYyByZXNvdXJjZT8KLy9FUlMyMDEwMTggSENXMjEgc3VwcG9ydHMgdjUwIHRlc3Qgd2l0aCBvdGhkZXIgTUZGCmlmICgxPT09MCkgekRhdGEucmVjRG9jSWQ9ekRhdGEuY2xpZW50UmVjZWl2ZWREb2N1bWVudChkb2MsY2hpbGRTdGFja1NGSWQpOwoKekRhdGEuY29ubmVjdEZpbGU9ZnVuY3Rpb24oZG9jLHNmSWQpIHsgLy9FUlMyMTA0MjQgIzgyMDgxCiAgICAgICAgYWxlcnQoIi8vRVJTMjEwNDI0IGNvbm5lY3QgdGhlIFBERiB0byAwaW8iKTsKICAgICAgICBhbGVydCgiQ3JlYXRpbmcgTGluayB0byBSZWNlaXZlZERvY3VtZW50IHdpdGggaWQgPT4gIiArIHNmSWQpOwogICAgICAgIC8vQ1JOMjAxMDI2ICM3Njc4OCBMaW5rIHRoZSB6U3RhY2sgKG9yIHdoYXRldmVyIHBhcmVudElkIHRoYXQgaXMgcGFzc2VkIGluKSB0byB0aGUgQ29udGVudERvY3VtZW50L0NvbnRlbnREb2N1bWVudFZlcnNpb24KICAgICAgICAvLyBjcmVhdGVkIGFib3ZlLgogICAgICAgIHpEYXRhLmZpbGVJZD1kb2MuVVJMLnN1YnN0cmluZyhkb2MuVVJMLmxhc3RJbmRleE9mKCJzLyIpKzIpOyAgLy8gLi4vYWxsZmlsZXMvMDY5NFQwMDAwMDNxbVp3UUFJLTAwMDA0ZmIwWDFmNDJ0Y2U0OC9lcmljCiAgICAgICAgekRhdGEuZmlsZUlkPXpEYXRhLmZpbGVJZC5zcGxpdCgiLSIpWzBdOwogICAgICAgIGFsZXJ0KCJFUlMyMTA0MjQgY29ubmVjdCAiK3NmSWQgKyIgdG8gIit6RGF0YS5maWxlSWQrIiBmcm9tICIrZG9jLlVSTCk7CiAgICAgICAgdmFyIGxpbmtJZD0iIjsKICAgICAgICBpZiAoekRhdGEuZmlsZUlkLmluZGV4T2YoIjA2OSIpPT09MCkgewogICAgICAgICAgICB2YXIgZG9jQXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBkb2NBcnJPZlBhaXJzLnB1c2goIkNvbnRlbnREb2N1bWVudElkIiwgekRhdGEuZmlsZUlkKTsKICAgICAgICAgICAgLy8gZG9jQXJyT2ZQYWlycy5wdXNoKCJDb250ZW50RG9jdW1lbnRJZCIsIHJlY0RvY0lkKTsgICAvLyB0aGlzIGRvZXNuJ3Qgd29yawogICAgICAgICAgICBkb2NBcnJPZlBhaXJzLnB1c2goIkxpbmtlZEVudGl0eUlkIiwgc2ZJZCk7CiAgICAgICAgICAgIGRvY0Fyck9mUGFpcnMucHVzaCgiVmlzaWJpbGl0eSIsICJBbGx1c2VycyIpOwogICAgICAgICAgICBsaW5rSWQgPSBjcmVhdGVTRlJlY29yZChkb2MsICJDb250ZW50RG9jdW1lbnRMaW5rIiwgbnVsbCwgZG9jQXJyT2ZQYWlycyk7CiAgICAgICAgICAgIGFsZXJ0KCJDb250ZW50RG9jdW1lbnRMaW5rIGNyZWF0ZWQgd2l0aCBJZCA9PiAiICsgbGlua0lkKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICBhbGVydCgiQ2FuIG5vdCBjb25uZWN0ICIrc2ZJZCsiIHRvICIrZG9jLlVSTCk7CiAgICAgICAgICAgIHJldHVybiB6RGF0YS5maWxlSWQ7IC8vVE9ETzIxMDQyNSBzaG91bGQgaGF2ZSB0aGUgMDBQIHVudGlsIHdlIGdldCB0aGF0IGZpeGVkCiAgICAgICAgfQogICAgICAgIHJldHVybiBsaW5rSWQ7Cn0KCgovL0VSUzIwMDkyOCAjNzY3ODggY3JlYXRlIFJlY2VpdmVkRG9jdW1lbnQgdGhlbiBhZGQgYSBMRiBwb2ludGluZyB0byB6cG9wZXIgUERGIG9yIHRoZSBQREYgaXRzZWxmCnpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQ9ZnVuY3Rpb24oZG9jLHBhcmVudElkLCBkZWZhdWx0TGFiZWwpIHsgLy9uZXcgb25lCiAgICB2YXIgbGFiZWwgPSBkb2MuZGVsaXZlcmVkRnJvbSsiIHNlbnQgIiArekRhdGEuZG9jVHlwZTsKICAgIGlmIChkb2MuZGVsaXZlcmVkRnJvbS5zdGFydHNXaXRoKCIwaW8iKSkgeyAgLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggZml4IGxhYmVsIGlmIHRoaXMgY2FtZSBmcm9tIGEgU2FsZXNmb3JjZSBSZWNlaXZlZCBEb2N1bWVudAogICAgICAgIGxhYmVsID0gIlJlY2VpdmVkRG9jdW1lbnQgIiArIHpEYXRhLmRvY1R5cGU7CiAgICAgICAgaWYgKGRvYy5VUkwuaW5kZXhPZigiMGlvIik+LTEpIHsgLy9FUlMyMTAyMDYgIzgxMDE0IGxvb3AgYmFjayBmcm9tIHVwbG9hZGVkIFJlY2VpdmVkIERvY3VtZW50IGFuZCBBdXRvRHJpdmUgdG9vCiAgICAgICAgICAgIGFsZXJ0KCJFUlMyMTAyMDYuOCBBbHJlYWR5IGluIFJlY2VpdmVkRG9jdW1lbnQgIitkb2MuVVJMKTsKICAgICAgICAgICAgdmFyIGk9ZG9jLlVSTC5pbmRleE9mKCIwaW8iKTsKICAgICAgICAgICAgdmFyIG9sZElkPWRvYy5VUkwuc3Vic3RyaW5nKGksZG9jLlVSTC5pbmRleE9mKCItIixpKzEpKTsKICAgICAgICAgICAgcmV0dXJuIG9sZElkOwogICAgICAgIH0KICAgIH0KICAgIHZhciBhcnI9W107CiAgICBhcnIucHVzaCgiTmFtZSIsIGRlZmF1bHRMYWJlbCB8fCBsYWJlbCk7ICAgICAgICAvL0NSTjIwMTAyNCBDYXNlICM3Njc4OCBhbGxvdyB0aGUgZGVmYXVsdCBsYWJlbCB0byBiZSBzdXByZW1lCiAgICBhcnIucHVzaCgiU291cmNlIix6RGF0YS5wcm9ncmFtTmFtZSk7CiAgICBhcnIucHVzaCgiU3RhdHVzIiwiRHJhZnQiKTsKICAgIGFyci5wdXNoKCJEaXJlY3Rpb24iLCJJbmNvbWluZyIpOwogICAgYXJyLnB1c2goImlzQWN0aXZlIix0cnVlKTsKICAgIGFyci5wdXNoKCJEb2N1bWVudE51bWJlciIsIno6Iitkb2MuZGJJRCk7CiAgICAKICAgIGlmICgxPT09MSkgeyAvL0VSUzIxMDMyMCAjODEzMjcgY29ubmVjdCBSZWNEb2MgdG8gelN0YWNrCiAgICAgICAgdmFyIHN0YWNrSWQgPSBwYXJlbnRJZDsgLy9YKGRvYywgIlhfc3RhY2siKTsKICAgICAgICBpZiAoIXN0YWNrSWQgfHwgc3RhY2tJZC5pbmRleE9mKCJhIikgIT09IDApIHN0YWNrSWQ9ekRhdGEuZ2V0U3RhY2tJZChkb2MpOwogICAgICAgIGlmIChzdGFja0lkKSB6RGF0YS5zdGFja0lkPXN0YWNrSWQ7CiAgICAgICAgaWYgKHpEYXRhLnN0YWNrSWQpIGFyci5wdXNoKCJ6U3RhY2tfX2MiLHpEYXRhLnN0YWNrSWQpOyAvL0VSUzIxMDMyMCAjODEzMjcgY29ubmVjdCBSZWNEb2MgdG8gelN0YWNrCiAgICAgICAgZWxzZSBhbGVydCgiRVJTMjEwMzIwLjI5IFdBUk5JTkc6IGNvdWxkIG5vdCBkZXRlcm1pbmUgelN0YWNrSWQhIik7CiAgICB9CiAgICAKICAgIHZhciByZWNEb2NJZD1jcmVhdGVTRlJlY29yZChkb2MsICJSZWNlaXZlZERvY3VtZW50IiwgbnVsbCwgYXJyKTsKICAgIGFsZXJ0KCJFUlMyMDA5MjkgTWFkZSBOUkQ9IityZWNEb2NJZCk7CiAgICBpZiAocmVjRG9jSWQpIHsKICAgICAgICB6RGF0YS5maWxlSWQ9ekRhdGEuY2xpZW50TGlnaHRuaW5nRmlsZShkb2MscmVjRG9jSWQsekRhdGEsekRhdGEubGFiZWwpOwogICAgICAgIC8vekRhdGEuZmlsZUlkPSJORVciOwogICAgICAgIGFsZXJ0KCJFUlMyMDA5MjkgTWFkZSBSRExGPSIrekRhdGEuZmlsZUlkKTsKCiAgICAgICAgYWxlcnQoIkNyZWF0aW5nIExpbmsgdG8gUmVjZWl2ZWREb2N1bWVudCB3aXRoIGlkID0+ICIgKyByZWNEb2NJZCk7CiAgICAgICAgLy9DUk4yMDEwMjYgIzc2Nzg4IExpbmsgdGhlIHpTdGFjayAob3Igd2hhdGV2ZXIgcGFyZW50SWQgdGhhdCBpcyBwYXNzZWQgaW4pIHRvIHRoZSBDb250ZW50RG9jdW1lbnQvQ29udGVudERvY3VtZW50VmVyc2lvbgogICAgICAgIC8vIGNyZWF0ZWQgYWJvdmUuCiAgICAgICAgdmFyIGRvY0Fyck9mUGFpcnMgPSBbXTsKICAgICAgICBkb2NBcnJPZlBhaXJzLnB1c2goIkNvbnRlbnREb2N1bWVudElkIiwgekRhdGEuZmlsZUlkKTsKICAgICAgICAvLyBkb2NBcnJPZlBhaXJzLnB1c2goIkNvbnRlbnREb2N1bWVudElkIiwgcmVjRG9jSWQpOyAgIC8vIHRoaXMgZG9lc24ndCB3b3JrCiAgICAgICAgZG9jQXJyT2ZQYWlycy5wdXNoKCJMaW5rZWRFbnRpdHlJZCIsIHBhcmVudElkKTsKICAgICAgICBkb2NBcnJPZlBhaXJzLnB1c2goIlZpc2liaWxpdHkiLCAiQWxsdXNlcnMiKTsKICAgICAgICB2YXIgbGlua0lkID0gY3JlYXRlU0ZSZWNvcmQoZG9jLCAiQ29udGVudERvY3VtZW50TGluayIsIG51bGwsIGRvY0Fyck9mUGFpcnMpOwogICAgICAgIGFsZXJ0KCJDb250ZW50RG9jdW1lbnRMaW5rIGNyZWF0ZWQgd2l0aCBJZCA9PiAiICsgbGlua0lkKTsKCiAgICAgICAgLy9DUk4yMDEwMjYgIzc2Nzg4IERPIE5PVCBjYWxsIHVwbG9hZFRvQ2xvdWQgKHdoYXQgdGhlIGNhbGwgdG8gekRhdGEuY2xpZW50VXBsb2FkUERGKCkgY2FsbHMpLiBJdCBpcyBub3Qgb25seQogICAgICAgIC8vIHVwbG9hZGluZyB0aGUgcGRmIGJ5dGVzIHRvIFNhbGVzZm9yY2UsIGl0IGlzIGNyZWF0aW5nIHRoZSBSZWNlaXZlZERvY3VtZW50LCBDb250ZW50RG9jdW1lbnQsIGV0Yy4gdGhhdCB3ZSBhcmUKICAgICAgICAvLyBhbHJlYWR5IGRvaW5nIGFib3ZlLgogICAgICAgIC8vIGlmICgxPT09MSAmJiB6RGF0YS5maWxlSWQpIHsKICAgICAgICAvLyAgICAgLy8gdmFyIG5hdGl2ZVBERj16RGF0YS5jbGllbnRVcGxvYWRQREYoZG9jLHJlY0RvY0lkLHpEYXRhLmZpbGVJZCx6RGF0YSk7IC8vZmlsZUlkIGlzIDA2OEIwMDAwMDA4bjJaMElBSQogICAgICAgIC8vICAgICB2YXIgbmF0aXZlUERGID0gekRhdGEuY2xpZW50VXBsb2FkUERGKGRvYywgcmVjRG9jSWQsIHBhcmVudElkLCB6RGF0YSk7IC8vZmlsZUlkIGlzIDA2OEIwMDAwMDA4bjJaMElBSQogICAgICAgIC8vIH0KICAgIH0KICAgIHJldHVybiByZWNEb2NJZDsKfTsKCnpEYXRhLmNsaWVudFVwbG9hZFBERj1mdW5jdGlvbihkb2Msc2ZJZCxmaWxlSWQsemQscGFnZXNSYW5nZSxwZGZMYWJlbCkgeyAvL0VSUzIwMDkyOSAjNzY3ODggZmlsZUlkPSJORVciIGZvciBuZXcgb25lCiAgICB2YXIgbm93VGltZVN0YW1wID0gbmV3IERhdGUoKS5nZXRUaW1lKCkgKyAiIjsKICAgIGlmICghcGFnZXNSYW5nZSkgcGFnZXNSYW5nZT0iMS05OSI7CiAgICBpZiAoIXBkZkxhYmVsKSBwZGZMYWJlbD1kb2MubGFiZWw7CiAgICBpZiAocGRmTGFiZWwuaW5kZXhPZigiLnBkZiIpPT0tMSkgcGRmTGFiZWwrPSIucGRmIjsKICAgIGNyZWF0ZURpcmVjdG9yeShkb2MsICJpbnRlZ3JhdGlvbkRpciIsIG5vd1RpbWVTdGFtcCk7CiAgICB2YXIgcmVzcG9uc2UgPSBzcGxpdFBERihkb2MsIHBhZ2VzUmFuZ2UsICJpbnRlZ3JhdGlvbkRpciIsIG5vd1RpbWVTdGFtcCwgZG9jLmRiSUQpOwogICAgYWxlcnQoIm5ld1BERiBmcm9tICIrcmVzcG9uc2UpOwogICAgdmFyIG5ld1BERk5hbWUgPSBYKGRvYywgIm5ld1BERiIsIHJlc3BvbnNlKTsKICAgIC8vVE9ETyB1cGxvYWQgdG8gTGlnaHRuaW5nRmlsZSB2cyBBdHRhY2htZW50IAogICAgdmFyIG1vcmVVUkw9ImZyb21VUkw9IitmaWxlSWQ7CiAgICAvL2lmIChmaWxlSWQuaW5kZXhPZigiMDY4Iik9PTApIHsgc2ZJZD1maWxlSWQ7IGZpbGVJZD0iTkVXIjsgfSAvL0VSUzIwMDkyOSB1cGxvYWRpbmcgdG8gTEY/CiAgICBtb3JlVVJMPSJmcm9tVVJMPSIrIjA2OCI7IG1vcmVVUkw9IiI7IGZpbGVJZD0iTkVXIjsgLy9mb3JjZSBhIG5ldyBMRiB3aXRoIG5hdGl2ZSBQREYKICAgIHZhciB1cGxvYWRVUkwgPSAiaHR0cDovL2xvY2FsaG9zdDo4MDgwL215ZmlsZWZvcmNlL3VwbG9hZFRvQ2xvdWQuanNwPyIrbW9yZVVSTCsiJlNGaWQ9IitmaWxlSWQrIiZTRnBpZD0iICsgc2ZJZCArICImU0Zvcmc9IiArIGRvYy5rYkRhdGEuc2ZPcmdhbml6YXRpb25JRAogICAgICArICImbGFiZWw9IiArIHBkZkxhYmVsICsgIiZzZXJ2ZXJGaWxlPSIgKyBuZXdQREZOYW1lICsgIiZEZXNjcmlwdGlvbj1GaWxlIGF0dGFjaGVkIGJ5IHpQYXBlci4iOwogICAgYWxlcnQoIiMjIyMgVXBsb2FkIG5hdGl2ZSBQREYgd2l0aCAiICsgdXBsb2FkVVJMKTsKICAgIHZhciByID0gd2dldChkb2MsIHVwbG9hZFVSTCk7CiAgICBhbGVydCgiVXBsb2FkZWRQREYgIituZXdQREZOYW1lKyIgaW50byAiKyByKTsKICAgIGNsZWFudXBEaXJlY3RvcnkoZG9jLCAiaW50ZWdyYXRpb25EaXIiLCBub3dUaW1lU3RhbXApOwp9CgovL0VSUzIwMDkyOCBzZWUgY2FzZXMgIzY1NTM1LCAjNzIwMTAsIAp6RGF0YS5jbGllbnRMaWdodG5pbmdGaWxlPWZ1bmN0aW9uKGRvYyxzZklkLHpkLGRlc2lyZWRUaXRsZSkgeyAvL0NSTjIwMDYwNSBTdXBwb3J0aW5nIHRoZSB0aXRsZSBiZWluZyBzZW50IGluLiAvL0VSUzIwMDQyOCAjNzA5NTMgdXNlIGluIEluZGV4IGlmIGNhc2VJZCBhbmQgREVMSVZFUllfQ09NUExFVEUKICAgIGlmICghemQpIHpkPXpEYXRhOwogICAgaWYgKCFkb2Mua2JEYXRhLnNmU2VydmVyKSB7IGFsZXJ0KCJkb2Mua2JEYXRhLnNmU2VydmVyIHdhcyBlbXB0eS4iKTsgZG9jLmtiRGF0YS5zZlNlcnZlcj0iYWJidmllb25lY3JtLS12M2Rldi5saWdodG5pbmcuZm9yY2UuY29tIjsgfSAvL0VSUzIwMDQyOCBIQUNLCiAgICB2YXIgenNlcnZlciA9IGRvYy5rYkRhdGEuc2ZTZXJ2ZXIuaW5kZXhPZigiaHR0cHM6Ly8iKT09MCA/IGRvYy5rYkRhdGEuc2ZTZXJ2ZXIgOiAiaHR0cHM6Ly8iICsgZG9jLmtiRGF0YS5zZlNlcnZlcjsgLy9FUlMyMDA0Mjggd2FzIHN0YXJ0c1dpdGggb25seSBuYXNob3JuCiAgICAvL3ZhciB6c2VydmVyID0gZG9jLmtiRGF0YS5zZlNlcnZlci5zdGFydHNXaXRoKCJodHRwczovLyIpID8gZG9jLmtiRGF0YS5zZlNlcnZlciA6ICJodHRwczovLyIgKyBkb2Mua2JEYXRhLnNmU2VydmVyOwogICAgdmFyIGRvY3VybCA9IHpzZXJ2ZXIgKyAiL3NlcnZpY2VzL2RhdGEvdjQ2LjAvc29iamVjdHMvQ29udGVudFZlcnNpb24vIjsKICAgIHZhciBwZGZ1cmwgPSAiaHR0cHM6Ly9ndy56cGFwZXIuY29tL2tiL2pzcC9TRl9maW5kLmxpZ2h0bmluZy5qc3A/Z289U0ZfZmlsZXMuanNwJmRiSUQ9IiArIGRvYy5kYklEICsgIiZTRm9yZz0iICsgZG9jLmtiRGF0YS5zZk9yZ2FuaXphdGlvbklEOwogICAgLy9wZGZ1cmw9Imh0dHBzOi8vZmlsZXMuenBhcGVyLmNvbS9tc3NhL01TU0EucGRmIjsgLy9FUlMyMDA5MjcgSEFDSyBUTyBTRUUgSUYgU09MSUQgUERGIHdpbGwgd29yawogICAgdmFyIENvbnRlbnRWZXJzaW9uQ2F0ZWdvcmllcyA9IHsKICAgICAgICAiT1RIIjogIk90aGVyIERvY3VtZW50cyIsCiAgICAgICAgIk1JTkZPIjogIk1pc3NpbmcgSW5mb3JtYXRpb24iLCAvL0pQQjIxMDMwNSBjaGFuZ2VkIHRvIE1JTkZPCiAgICAgICAgIkVOUkwiOiAiRW5yb2xsbWVudCBGb3JtIiwKICAgICAgICAiTUVETyI6ICJNZWRpY2FsIC0gT3RoZXIiLAogICAgICAgICJDT04iOiAiQ29uc2VudCBGb3JtcyIsIC8vSlBCMjEwMzA1IGNoYW5nZWQgdG8gQ09OCiAgICAgICAgIkNPTURSIjogIkNvbW11bmljYXRpb24gZnJvbSBQaHlzaWNpYW5zIiwKICAgICAgICAiUlgiOiAiUHJlc2NyaXB0aW9uIiwKICAgICAgICAiU0EiOiAiU0EgRG9jdW1lbnRzIiwKICAgICAgICAiTUVEQyI6ICJNZWRpY2FsIENsYXJpZmljYXRpb24iLAogICAgICAgICJMQUIiOiAiTGFiIERvY3VtZW50cyIsCiAgICAgICAgIklOSlIiOiAiSW5qZWN0aW9uIFJlcG9ydCIsCiAgICAgICAgIkNBIjogIkNsaW5pY2FsIEFzc2Vzc21lbnQiLAogICAgICAgICJDT1BBWSI6ICJDb3BheSIKICAgIH0KICAgIHZhciBkYXRlc3RyID0gZ2V0Q3VyRGF0ZShkb2MpOwogICAgdmFyIGFjY25hbWUgPSBYKGRvYywgIlhfWlBBUEVSX19QYXRpZW50QWNjb3VudF9fci5OYW1lIik7CiAgICB2YXIgZmF4dHlwZSA9IFgoZG9jLCAiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKTsKICAgIHZhciByZXZzdGF0ID0gWChkb2MsICJYX3Jldmlld2VkU3RhdHVzIik7CiAgICB2YXIgY2F0dHlwZSA9IENvbnRlbnRWZXJzaW9uQ2F0ZWdvcmllc1tmYXh0eXBlXSB8fCBmYXh0eXBlOwogICAgLy9DUk4yMDA2MDQgRm9yIG91dGdvaW5nLCB0aGUgYWNjbmFtZSBhbmQvb3IgZmF4dHlwZSBhcmUgYmxhbmsgc28ganVzdCB1c2UgdGhlIFNuaXBwZXQgbGFiZWwKICAgIHZhciBkb2NUaXRsZSA9ICFhY2NuYW1lICYmICFmYXh0eXBlICA/IChkZXNpcmVkVGl0bGUgPyBkZXNpcmVkVGl0bGUgOiBkb2MubGFiZWwpIDogYWNjbmFtZSArICIgLSAiICsgZmF4dHlwZSArICIgLSAiICsgZGF0ZXN0cjsKICAgIGFsZXJ0KCJAQEBAIENsZWFuaW5nIHVwIGRhdGE6IFgoZG9jLCAnWF9TdWJfQ2F0ZWdvcnlfX2MnKSA9PiAiICsgWChkb2MsICJYX1N1Yl9DYXRlZ29yeV9fYyIpICsgIiAtIHpEYXRhLlhfU3ViX0NhdGVnb3J5X19jID0+ICIgKyB6RGF0YS5YX1N1Yl9DYXRlZ29yeV9fYyk7CiAgICB2YXIgZG9jZGF0YSA9IHsKICAgICAgICAiRGVzY3JpcHRpb24iOiByZXZzdGF0ICsgIiBieTogIiArIGRvYy5zZlVzZXJOYW1lICsgIiBhdDogIiArIHpEYXRhLmZvcm1hdE5vdywKICAgICAgICAiRmlyc3RQdWJsaXNoTG9jYXRpb25JZCI6IHNmSWQsCiAgICAgICAgLy8iQ09SRV9MZWdhY3lfRG9jdW1lbnRfSURfX2MiOiBwZGZ1cmwsCiAgICAgICAgLy8iQ29yZV9Db3VudHJ5Q29kZV9fYyI6ICJVUyIsCiAgICAgICAgLy8iQ29yZV9DYXRlZ29yeV9fYyI6IGNhdHR5cGUsCiAgICAgICAgLy8iQ29yZV9TdWJfQ2F0ZWdvcnlfX2MiOiBYKGRvYywgIlhfU3ViX0NhdGVnb3J5X19jIikgICAgIC8vQ1JOMjAwNTA1IHpEYXRhIGlzIGhvbGRpbmcgb2xkLCBpbnZhbGlkIHZhbHVlIHB1bGxlZCBmcm9tIHdkZGF0YSBpbnN0ZWFkIG9mIHdoYXQgdGhlIHVzZXIgY3VycmVudGx5IGNob3NlLgovLyAgICAgICAgIkNvcmVfU3ViX0NhdGVnb3J5X19jIjogekRhdGEuWF9TdWJfQ2F0ZWdvcnlfX2MKICAgICAgICAiQ29udGVudFVybCI6IHBkZnVybCwKICAgICAgICAvLyJGaWxlVHlwZSI6IlBERiIsCiAgICAgICAgLy9FUlMyMDA5Mjkgbm90IGFsbG93ZWQgaWYgQ29udGVudFVybCAiUGF0aE9uQ2xpZW50IjogZG9jVGl0bGUrIi5wZGYiLAogICAgICAgICJUaXRsZSI6IGRvY1RpdGxlCiAgICB9OwogICAgdmFyIGhlYWRlcnMgPSBbCiAgICAgICAgIkF1dGhvcml6YXRpb24iLCAiQmVhcmVyICIgKyBkb2Mua2JEYXRhLnNmU2Vzc2lvbklELAogICAgICAgICJDb250ZW50LVR5cGUiLCAiYXBwbGljYXRpb24vanNvbiIKICAgIF07CiAgICB2YXIgYm9keSA9IEpTT04uc3RyaW5naWZ5KGRvY2RhdGEpOwogICAgYWxlcnQoIkBAQCBDcmVhdGluZyBDb250ZW50VmVyc2lvbiB3aXRoIGpzb24gPT4gIiArIGJvZHkpOwogICAgdmFyIG5ld0lkPSIiOwogICAgdHJ5IHsKICAgICAgICB2YXIgcmVzID0gd3Bvc3QoZG9jLCBkb2N1cmwsIFtdLCBoZWFkZXJzLCBib2R5KTsKICAgICAgICBhbGVydCgid3Bvc3QgcmVzcG9uc2U6ICIgKyByZXMpOwogICAgICAgIG5ld0lkPXJlcy5pZDsgLy9FUlMyMDA0MjggVE9ETyBnZXQgdGhlIG5ldyBJZCBUT0RPIHRlc3Qgd2l0aCBsZWdhY3kgZW5naW5lIHZzIHppcHBpIG5hc2hvcm4gLy9TSFIgc2FpZCBtYXliZSEhIQogICAgICAgIGlmICghbmV3SWQpIHsgbmV3SWQ9SlNPTi5wYXJzZShyZXMpLmlkOyB9IC8vRVJTMjAwOTI5IEhBQ0sgZXZhbAoKICAgICAgICBhbGVydCgiUHVsbGluZyBDb250ZW50RG9jdW1lbnRJZCBmcm9tIENvbnRlbnRWZXJzaW9uID0+ICIgKyBuZXdJZCk7CiAgICAgICAgLy9DUk4yMDEwMjYgIzc2Nzg4IFJldHVybiB0aGUgQ29udGVudERvY3VtZW50SWQgd2hpY2ggaXMgbmVlZGVkIHRvIGNyZWF0ZSB0aGUgRG9jdW1lbnRMaW5rIGxhdGVyLgogICAgICAgIHJldHVybiBnZXRTRkZpZWxkKGRvYywgIkNvbnRlbnRWZXJzaW9uIiwgIkNvbnRlbnREb2N1bWVudElkIiwgbnVsbCwgbmV3SWQpOwogICAgfQogICAgY2F0Y2goZXgpIHsKICAgICAgICBhbGVydCgid3Bvc3QgZXhjZXB0aW9uOiAiICsgZXgpOwogICAgICAgIHRyeSB7CiAgICAgICAgICAgIHZhciBtZXNzID0gSlNPTi5wYXJzZShleCk7CiAgICAgICAgICAgIGlmIChtZXNzICYmIEFycmF5LmlzQXJyYXkobWVzcykgJiYgbWVzc1swXS5lcnJvckNvZGUpIHsKICAgICAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQoYEVycm9yIGNyZWF0aW5nIENvbnRlbnRWZXJzaW9uISAiICsgbWVzc1swXS5lcnJvckNvZGUgKyAiID0+ICIgKyBtZXNzWzBdLm1lc3NhZ2UgKyAiYCk7Iik7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICAgICAgY2F0Y2gocGV4KSB7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQoYEVycm9yIHBhcnNpbmcgSlNPTiByZXBzcG9uc2U6ICIgKyBleCArICJgKTsiKTsKICAgICAgICB9CiAgICB9CiAgICByZXR1cm4gbmV3SWQ7Cn07"},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS210208 getting the static resource written //ERS210424 where is the static resource?
//ERS201018 HCW21 supports v50 test with othder MFF
if (1===0) zData.recDocId=zData.clientReceivedDocument(doc,childStackSFId);

zData.connectFile=function(doc,sfId) { //ERS210424 #82081
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
            linkId = createSFRecord(doc, "ContentDocumentLink", null, docArrOfPairs);
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
        var linkId = createSFRecord(doc, "ContentDocumentLink", null, docArrOfPairs);
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
    alert("@@@@ Cleaning up data: X(doc, 'X_Sub_Category__c') => " + X(doc, "X_Sub_Category__c") + " - zData.X_Sub_Category__c => " + zData.X_Sub_Category__c);
    var docdata = {
        "Description": revstat + " by: " + doc.sfUserName + " at: " + zData.formatNow,
        "FirstPublishLocationId": sfId,
        //"CORE_Legacy_Document_ID__c": pdfurl,
        //"Core_CountryCode__c": "US",
        //"Core_Category__c": cattype,
        //"Core_Sub_Category__c": X(doc, "X_Sub_Category__c")     //CRN200505 zData is holding old, invalid value pulled from wddata instead of what the user currently chose.
//        "Core_Sub_Category__c": zData.X_Sub_Category__c
        "ContentUrl": pdfurl,
        //"FileType":"PDF",
        //ERS200929 not allowed if ContentUrl "PathOnClient": docTitle+".pdf",
        "Title": docTitle
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
