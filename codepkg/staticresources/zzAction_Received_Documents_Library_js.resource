<!--
// Name: HCW21 Received Documents Library
// Committer: eric.stephens@zpaper.com
// Update: ERS210823.43; catch exception of DUPLICATE LINKS
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-08-23 19:47:21","evalContinue":"true","active":true,"button":"","name":"HCW21 Received Documents Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotHCW21","operation":"not-contains"}]},"consequence":{"doit":"Ly9FUlMyMTAyMDggZ2V0dGluZyB0aGUgc3RhdGljIHJlc291cmNlIHdyaXR0ZW4gLy9FUlMyMTA0MjQgd2hlcmUgaXMgdGhlIHN0YXRpYyByZXNvdXJjZT8KLy9FUlMyMDEwMTggSENXMjEgc3VwcG9ydHMgdjUwIHRlc3Qgd2l0aCBvdGhkZXIgTUZGCmlmICgxPT09MCkgekRhdGEucmVjRG9jSWQ9ekRhdGEuY2xpZW50UmVjZWl2ZWREb2N1bWVudChkb2MsY2hpbGRTdGFja1NGSWQpOwoKekRhdGEuY29ubmVjdEZpbGU9ZnVuY3Rpb24oZG9jLHNmSWQpIHsgLy9FUlMyMTA0MjQgIzgyMDgxCiAgICAgICAgLy9FUlMyMTA4MDUgVE9ETyBoYW5kbGUgRFVQTElDQVRFIGV4Y2VwdGlvbiBhbmQgcmVjb3ZlciBmcm9tIC4uL2FsbGZpbGVzLzA2OTVlMDAwMDAwT3FhdUFBQy0wMDAwNWVlY1gxZmNiZ2hsMWovCiAgICAgICAgYWxlcnQoIi8vRVJTMjEwNDI0IGNvbm5lY3QgdGhlIFBERiB0byAwaW8iKTsKICAgICAgICBhbGVydCgiQ3JlYXRpbmcgTGluayB0byBSZWNlaXZlZERvY3VtZW50IHdpdGggaWQgPT4gIiArIHNmSWQpOwogICAgICAgIC8vQ1JOMjAxMDI2ICM3Njc4OCBMaW5rIHRoZSB6U3RhY2sgKG9yIHdoYXRldmVyIHBhcmVudElkIHRoYXQgaXMgcGFzc2VkIGluKSB0byB0aGUgQ29udGVudERvY3VtZW50L0NvbnRlbnREb2N1bWVudFZlcnNpb24KICAgICAgICAvLyBjcmVhdGVkIGFib3ZlLgogICAgICAgIHpEYXRhLmZpbGVJZD1kb2MuVVJMLnN1YnN0cmluZyhkb2MuVVJMLmxhc3RJbmRleE9mKCJzLyIpKzIpOyAgLy8gLi4vYWxsZmlsZXMvMDY5NFQwMDAwMDNxbVp3UUFJLTAwMDA0ZmIwWDFmNDJ0Y2U0OC9lcmljCiAgICAgICAgekRhdGEuZmlsZUlkPXpEYXRhLmZpbGVJZC5zcGxpdCgiLSIpWzBdOwogICAgICAgIGFsZXJ0KCJFUlMyMTA0MjQgY29ubmVjdCAiK3NmSWQgKyIgdG8gIit6RGF0YS5maWxlSWQrIiBmcm9tICIrZG9jLlVSTCk7CiAgICAgICAgdmFyIGxpbmtJZD0iIjsKICAgICAgICBpZiAoekRhdGEuZmlsZUlkLmluZGV4T2YoIjA2OSIpPT09MCkgewogICAgICAgICAgICB2YXIgZG9jQXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBkb2NBcnJPZlBhaXJzLnB1c2goIkNvbnRlbnREb2N1bWVudElkIiwgekRhdGEuZmlsZUlkKTsKICAgICAgICAgICAgLy8gZG9jQXJyT2ZQYWlycy5wdXNoKCJDb250ZW50RG9jdW1lbnRJZCIsIHJlY0RvY0lkKTsgICAvLyB0aGlzIGRvZXNuJ3Qgd29yawogICAgICAgICAgICBkb2NBcnJPZlBhaXJzLnB1c2goIkxpbmtlZEVudGl0eUlkIiwgc2ZJZCk7CiAgICAgICAgICAgIGRvY0Fyck9mUGFpcnMucHVzaCgiVmlzaWJpbGl0eSIsICJBbGx1c2VycyIpOwogICAgICAgICAgICB0cnkgeyAvL0VSUzIxMDgyMy40MyAKICAgICAgICAgICAgICAgIGxpbmtJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgIkNvbnRlbnREb2N1bWVudExpbmsiLCBudWxsLCBkb2NBcnJPZlBhaXJzKTsKICAgICAgICAgICAgfSBjYXRjaChleCkgewogICAgICAgICAgICAgICAgYWxlcnQoIkVSUzIxMDgyMy40NiBleGNlcHRpb24gbWFraW5nIENETCBmb3IgIit6RGF0YS5maWxlSWQrIiBub3QgZmF0YWwuIik7CiAgICAgICAgICAgICAgICBsaW5rSWQ9ekRhdGEuZmlsZUlkOyAvL1RPRE8gbWlnaHQgbmVlZCB0aGUgcmVhbCBvbmUKICAgICAgICAgICAgfQogICAgICAgICAgICBhbGVydCgiQ29udGVudERvY3VtZW50TGluayBjcmVhdGVkIHdpdGggSWQgPT4gIiArIGxpbmtJZCk7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgYWxlcnQoIkNhbiBub3QgY29ubmVjdCAiK3NmSWQrIiB0byAiK2RvYy5VUkwpOwogICAgICAgICAgICByZXR1cm4gekRhdGEuZmlsZUlkOyAvL1RPRE8yMTA0MjUgc2hvdWxkIGhhdmUgdGhlIDAwUCB1bnRpbCB3ZSBnZXQgdGhhdCBmaXhlZAogICAgICAgIH0KICAgICAgICByZXR1cm4gbGlua0lkOwp9CgoKLy9FUlMyMDA5MjggIzc2Nzg4IGNyZWF0ZSBSZWNlaXZlZERvY3VtZW50IHRoZW4gYWRkIGEgTEYgcG9pbnRpbmcgdG8genBvcGVyIFBERiBvciB0aGUgUERGIGl0c2VsZgp6RGF0YS5jbGllbnRSZWNlaXZlZERvY3VtZW50PWZ1bmN0aW9uKGRvYyxwYXJlbnRJZCwgZGVmYXVsdExhYmVsKSB7IC8vbmV3IG9uZQogICAgdmFyIGxhYmVsID0gZG9jLmRlbGl2ZXJlZEZyb20rIiBzZW50ICIgK3pEYXRhLmRvY1R5cGU7CiAgICBpZiAoZG9jLmRlbGl2ZXJlZEZyb20uc3RhcnRzV2l0aCgiMGlvIikpIHsgIC8vQ1JOMjAxMDI0IENhc2UgIzc2Nzg4IGZpeCBsYWJlbCBpZiB0aGlzIGNhbWUgZnJvbSBhIFNhbGVzZm9yY2UgUmVjZWl2ZWQgRG9jdW1lbnQKICAgICAgICBsYWJlbCA9ICJSZWNlaXZlZERvY3VtZW50ICIgKyB6RGF0YS5kb2NUeXBlOwogICAgICAgIGlmIChkb2MuVVJMLmluZGV4T2YoIjBpbyIpPi0xKSB7IC8vRVJTMjEwMjA2ICM4MTAxNCBsb29wIGJhY2sgZnJvbSB1cGxvYWRlZCBSZWNlaXZlZCBEb2N1bWVudCBhbmQgQXV0b0RyaXZlIHRvbwogICAgICAgICAgICBhbGVydCgiRVJTMjEwMjA2LjggQWxyZWFkeSBpbiBSZWNlaXZlZERvY3VtZW50ICIrZG9jLlVSTCk7CiAgICAgICAgICAgIHZhciBpPWRvYy5VUkwuaW5kZXhPZigiMGlvIik7CiAgICAgICAgICAgIHZhciBvbGRJZD1kb2MuVVJMLnN1YnN0cmluZyhpLGRvYy5VUkwuaW5kZXhPZigiLSIsaSsxKSk7CiAgICAgICAgICAgIHJldHVybiBvbGRJZDsKICAgICAgICB9CiAgICB9CiAgICB2YXIgYXJyPVtdOwogICAgYXJyLnB1c2goIk5hbWUiLCBkZWZhdWx0TGFiZWwgfHwgbGFiZWwpOyAgICAgICAgLy9DUk4yMDEwMjQgQ2FzZSAjNzY3ODggYWxsb3cgdGhlIGRlZmF1bHQgbGFiZWwgdG8gYmUgc3VwcmVtZQogICAgYXJyLnB1c2goIlNvdXJjZSIsekRhdGEucHJvZ3JhbU5hbWUpOwogICAgYXJyLnB1c2goIlN0YXR1cyIsIkRyYWZ0Iik7CiAgICBhcnIucHVzaCgiRGlyZWN0aW9uIiwiSW5jb21pbmciKTsKICAgIGFyci5wdXNoKCJpc0FjdGl2ZSIsdHJ1ZSk7CiAgICBhcnIucHVzaCgiRG9jdW1lbnROdW1iZXIiLCJ6OiIrZG9jLmRiSUQpOwogICAgCiAgICBpZiAoMT09PTEpIHsgLy9FUlMyMTAzMjAgIzgxMzI3IGNvbm5lY3QgUmVjRG9jIHRvIHpTdGFjawogICAgICAgIHZhciBzdGFja0lkID0gcGFyZW50SWQ7IC8vWChkb2MsICJYX3N0YWNrIik7CiAgICAgICAgaWYgKCFzdGFja0lkIHx8IHN0YWNrSWQuaW5kZXhPZigiYSIpICE9PSAwKSBzdGFja0lkPXpEYXRhLmdldFN0YWNrSWQoZG9jKTsKICAgICAgICBpZiAoc3RhY2tJZCkgekRhdGEuc3RhY2tJZD1zdGFja0lkOwogICAgICAgIGlmICh6RGF0YS5zdGFja0lkKSBhcnIucHVzaCgielN0YWNrX19jIix6RGF0YS5zdGFja0lkKTsgLy9FUlMyMTAzMjAgIzgxMzI3IGNvbm5lY3QgUmVjRG9jIHRvIHpTdGFjawogICAgICAgIGVsc2UgYWxlcnQoIkVSUzIxMDMyMC4yOSBXQVJOSU5HOiBjb3VsZCBub3QgZGV0ZXJtaW5lIHpTdGFja0lkISIpOwogICAgfQogICAgCiAgICB2YXIgcmVjRG9jSWQ9Y3JlYXRlU0ZSZWNvcmQoZG9jLCAiUmVjZWl2ZWREb2N1bWVudCIsIG51bGwsIGFycik7CiAgICBhbGVydCgiRVJTMjAwOTI5IE1hZGUgTlJEPSIrcmVjRG9jSWQpOwogICAgaWYgKHJlY0RvY0lkKSB7CiAgICAgICAgekRhdGEuZmlsZUlkPXpEYXRhLmNsaWVudExpZ2h0bmluZ0ZpbGUoZG9jLHJlY0RvY0lkLHpEYXRhLHpEYXRhLmxhYmVsKTsKICAgICAgICAvL3pEYXRhLmZpbGVJZD0iTkVXIjsKICAgICAgICBhbGVydCgiRVJTMjAwOTI5IE1hZGUgUkRMRj0iK3pEYXRhLmZpbGVJZCk7CgogICAgICAgIGFsZXJ0KCJDcmVhdGluZyBMaW5rIHRvIFJlY2VpdmVkRG9jdW1lbnQgd2l0aCBpZCA9PiAiICsgcmVjRG9jSWQpOwogICAgICAgIC8vQ1JOMjAxMDI2ICM3Njc4OCBMaW5rIHRoZSB6U3RhY2sgKG9yIHdoYXRldmVyIHBhcmVudElkIHRoYXQgaXMgcGFzc2VkIGluKSB0byB0aGUgQ29udGVudERvY3VtZW50L0NvbnRlbnREb2N1bWVudFZlcnNpb24KICAgICAgICAvLyBjcmVhdGVkIGFib3ZlLgogICAgICAgIHZhciBkb2NBcnJPZlBhaXJzID0gW107CiAgICAgICAgZG9jQXJyT2ZQYWlycy5wdXNoKCJDb250ZW50RG9jdW1lbnRJZCIsIHpEYXRhLmZpbGVJZCk7CiAgICAgICAgLy8gZG9jQXJyT2ZQYWlycy5wdXNoKCJDb250ZW50RG9jdW1lbnRJZCIsIHJlY0RvY0lkKTsgICAvLyB0aGlzIGRvZXNuJ3Qgd29yawogICAgICAgIGRvY0Fyck9mUGFpcnMucHVzaCgiTGlua2VkRW50aXR5SWQiLCBwYXJlbnRJZCk7CiAgICAgICAgZG9jQXJyT2ZQYWlycy5wdXNoKCJWaXNpYmlsaXR5IiwgIkFsbHVzZXJzIik7CiAgICAgICAgdmFyIGxpbmtJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgIkNvbnRlbnREb2N1bWVudExpbmsiLCBudWxsLCBkb2NBcnJPZlBhaXJzKTsKICAgICAgICBhbGVydCgiQ29udGVudERvY3VtZW50TGluayBjcmVhdGVkIHdpdGggSWQgPT4gIiArIGxpbmtJZCk7CgogICAgICAgIC8vQ1JOMjAxMDI2ICM3Njc4OCBETyBOT1QgY2FsbCB1cGxvYWRUb0Nsb3VkICh3aGF0IHRoZSBjYWxsIHRvIHpEYXRhLmNsaWVudFVwbG9hZFBERigpIGNhbGxzKS4gSXQgaXMgbm90IG9ubHkKICAgICAgICAvLyB1cGxvYWRpbmcgdGhlIHBkZiBieXRlcyB0byBTYWxlc2ZvcmNlLCBpdCBpcyBjcmVhdGluZyB0aGUgUmVjZWl2ZWREb2N1bWVudCwgQ29udGVudERvY3VtZW50LCBldGMuIHRoYXQgd2UgYXJlCiAgICAgICAgLy8gYWxyZWFkeSBkb2luZyBhYm92ZS4KICAgICAgICAvLyBpZiAoMT09PTEgJiYgekRhdGEuZmlsZUlkKSB7CiAgICAgICAgLy8gICAgIC8vIHZhciBuYXRpdmVQREY9ekRhdGEuY2xpZW50VXBsb2FkUERGKGRvYyxyZWNEb2NJZCx6RGF0YS5maWxlSWQsekRhdGEpOyAvL2ZpbGVJZCBpcyAwNjhCMDAwMDAwOG4yWjBJQUkKICAgICAgICAvLyAgICAgdmFyIG5hdGl2ZVBERiA9IHpEYXRhLmNsaWVudFVwbG9hZFBERihkb2MsIHJlY0RvY0lkLCBwYXJlbnRJZCwgekRhdGEpOyAvL2ZpbGVJZCBpcyAwNjhCMDAwMDAwOG4yWjBJQUkKICAgICAgICAvLyB9CiAgICB9CiAgICByZXR1cm4gcmVjRG9jSWQ7Cn07Cgp6RGF0YS5jbGllbnRVcGxvYWRQREY9ZnVuY3Rpb24oZG9jLHNmSWQsZmlsZUlkLHpkLHBhZ2VzUmFuZ2UscGRmTGFiZWwpIHsgLy9FUlMyMDA5MjkgIzc2Nzg4IGZpbGVJZD0iTkVXIiBmb3IgbmV3IG9uZQogICAgdmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7CiAgICBpZiAoIXBhZ2VzUmFuZ2UpIHBhZ2VzUmFuZ2U9IjEtOTkiOwogICAgaWYgKCFwZGZMYWJlbCkgcGRmTGFiZWw9ZG9jLmxhYmVsOwogICAgaWYgKHBkZkxhYmVsLmluZGV4T2YoIi5wZGYiKT09LTEpIHBkZkxhYmVsKz0iLnBkZiI7CiAgICBjcmVhdGVEaXJlY3RvcnkoZG9jLCAiaW50ZWdyYXRpb25EaXIiLCBub3dUaW1lU3RhbXApOwogICAgdmFyIHJlc3BvbnNlID0gc3BsaXRQREYoZG9jLCBwYWdlc1JhbmdlLCAiaW50ZWdyYXRpb25EaXIiLCBub3dUaW1lU3RhbXAsIGRvYy5kYklEKTsKICAgIGFsZXJ0KCJuZXdQREYgZnJvbSAiK3Jlc3BvbnNlKTsKICAgIHZhciBuZXdQREZOYW1lID0gWChkb2MsICJuZXdQREYiLCByZXNwb25zZSk7CiAgICAvL1RPRE8gdXBsb2FkIHRvIExpZ2h0bmluZ0ZpbGUgdnMgQXR0YWNobWVudCAKICAgIHZhciBtb3JlVVJMPSJmcm9tVVJMPSIrZmlsZUlkOwogICAgLy9pZiAoZmlsZUlkLmluZGV4T2YoIjA2OCIpPT0wKSB7IHNmSWQ9ZmlsZUlkOyBmaWxlSWQ9Ik5FVyI7IH0gLy9FUlMyMDA5MjkgdXBsb2FkaW5nIHRvIExGPwogICAgbW9yZVVSTD0iZnJvbVVSTD0iKyIwNjgiOyBtb3JlVVJMPSIiOyBmaWxlSWQ9Ik5FVyI7IC8vZm9yY2UgYSBuZXcgTEYgd2l0aCBuYXRpdmUgUERGCiAgICB2YXIgdXBsb2FkVVJMID0gImh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9teWZpbGVmb3JjZS91cGxvYWRUb0Nsb3VkLmpzcD8iK21vcmVVUkwrIiZTRmlkPSIrZmlsZUlkKyImU0ZwaWQ9IiArIHNmSWQgKyAiJlNGb3JnPSIgKyBkb2Mua2JEYXRhLnNmT3JnYW5pemF0aW9uSUQKICAgICAgKyAiJmxhYmVsPSIgKyBwZGZMYWJlbCArICImc2VydmVyRmlsZT0iICsgbmV3UERGTmFtZSArICImRGVzY3JpcHRpb249RmlsZSBhdHRhY2hlZCBieSB6UGFwZXIuIjsKICAgIGFsZXJ0KCIjIyMjIFVwbG9hZCBuYXRpdmUgUERGIHdpdGggIiArIHVwbG9hZFVSTCk7CiAgICB2YXIgciA9IHdnZXQoZG9jLCB1cGxvYWRVUkwpOwogICAgYWxlcnQoIlVwbG9hZGVkUERGICIrbmV3UERGTmFtZSsiIGludG8gIisgcik7CiAgICBjbGVhbnVwRGlyZWN0b3J5KGRvYywgImludGVncmF0aW9uRGlyIiwgbm93VGltZVN0YW1wKTsKfQoKLy9FUlMyMDA5Mjggc2VlIGNhc2VzICM2NTUzNSwgIzcyMDEwLCAKekRhdGEuY2xpZW50TGlnaHRuaW5nRmlsZT1mdW5jdGlvbihkb2Msc2ZJZCx6ZCxkZXNpcmVkVGl0bGUpIHsgLy9DUk4yMDA2MDUgU3VwcG9ydGluZyB0aGUgdGl0bGUgYmVpbmcgc2VudCBpbi4gLy9FUlMyMDA0MjggIzcwOTUzIHVzZSBpbiBJbmRleCBpZiBjYXNlSWQgYW5kIERFTElWRVJZX0NPTVBMRVRFCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKICAgIGlmICghZG9jLmtiRGF0YS5zZlNlcnZlcikgeyBhbGVydCgiZG9jLmtiRGF0YS5zZlNlcnZlciB3YXMgZW1wdHkuIik7IGRvYy5rYkRhdGEuc2ZTZXJ2ZXI9ImFiYnZpZW9uZWNybS0tdjNkZXYubGlnaHRuaW5nLmZvcmNlLmNvbSI7IH0gLy9FUlMyMDA0MjggSEFDSwogICAgdmFyIHpzZXJ2ZXIgPSBkb2Mua2JEYXRhLnNmU2VydmVyLmluZGV4T2YoImh0dHBzOi8vIik9PTAgPyBkb2Mua2JEYXRhLnNmU2VydmVyIDogImh0dHBzOi8vIiArIGRvYy5rYkRhdGEuc2ZTZXJ2ZXI7IC8vRVJTMjAwNDI4IHdhcyBzdGFydHNXaXRoIG9ubHkgbmFzaG9ybgogICAgLy92YXIgenNlcnZlciA9IGRvYy5rYkRhdGEuc2ZTZXJ2ZXIuc3RhcnRzV2l0aCgiaHR0cHM6Ly8iKSA/IGRvYy5rYkRhdGEuc2ZTZXJ2ZXIgOiAiaHR0cHM6Ly8iICsgZG9jLmtiRGF0YS5zZlNlcnZlcjsKICAgIHZhciBkb2N1cmwgPSB6c2VydmVyICsgIi9zZXJ2aWNlcy9kYXRhL3Y0Ni4wL3NvYmplY3RzL0NvbnRlbnRWZXJzaW9uLyI7CiAgICB2YXIgcGRmdXJsID0gImh0dHBzOi8vZ3cuenBhcGVyLmNvbS9rYi9qc3AvU0ZfZmluZC5saWdodG5pbmcuanNwP2dvPVNGX2ZpbGVzLmpzcCZkYklEPSIgKyBkb2MuZGJJRCArICImU0Zvcmc9IiArIGRvYy5rYkRhdGEuc2ZPcmdhbml6YXRpb25JRDsKICAgIC8vcGRmdXJsPSJodHRwczovL2ZpbGVzLnpwYXBlci5jb20vbXNzYS9NU1NBLnBkZiI7IC8vRVJTMjAwOTI3IEhBQ0sgVE8gU0VFIElGIFNPTElEIFBERiB3aWxsIHdvcmsKICAgIHZhciBDb250ZW50VmVyc2lvbkNhdGVnb3JpZXMgPSB7CiAgICAgICAgIk9USCI6ICJPdGhlciBEb2N1bWVudHMiLAogICAgICAgICJNSU5GTyI6ICJNaXNzaW5nIEluZm9ybWF0aW9uIiwgLy9KUEIyMTAzMDUgY2hhbmdlZCB0byBNSU5GTwogICAgICAgICJFTlJMIjogIkVucm9sbG1lbnQgRm9ybSIsCiAgICAgICAgIk1FRE8iOiAiTWVkaWNhbCAtIE90aGVyIiwKICAgICAgICAiQ09OIjogIkNvbnNlbnQgRm9ybXMiLCAvL0pQQjIxMDMwNSBjaGFuZ2VkIHRvIENPTgogICAgICAgICJDT01EUiI6ICJDb21tdW5pY2F0aW9uIGZyb20gUGh5c2ljaWFucyIsCiAgICAgICAgIlJYIjogIlByZXNjcmlwdGlvbiIsCiAgICAgICAgIlNBIjogIlNBIERvY3VtZW50cyIsCiAgICAgICAgIk1FREMiOiAiTWVkaWNhbCBDbGFyaWZpY2F0aW9uIiwKICAgICAgICAiTEFCIjogIkxhYiBEb2N1bWVudHMiLAogICAgICAgICJJTkpSIjogIkluamVjdGlvbiBSZXBvcnQiLAogICAgICAgICJDQSI6ICJDbGluaWNhbCBBc3Nlc3NtZW50IiwKICAgICAgICAiQ09QQVkiOiAiQ29wYXkiCiAgICB9CiAgICB2YXIgZGF0ZXN0ciA9IGdldEN1ckRhdGUoZG9jKTsKICAgIHZhciBhY2NuYW1lID0gWChkb2MsICJYX1pQQVBFUl9fUGF0aWVudEFjY291bnRfX3IuTmFtZSIpOwogICAgdmFyIGZheHR5cGUgPSBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIik7CiAgICB2YXIgcmV2c3RhdCA9IFgoZG9jLCAiWF9yZXZpZXdlZFN0YXR1cyIpOwogICAgdmFyIGNhdHR5cGUgPSBDb250ZW50VmVyc2lvbkNhdGVnb3JpZXNbZmF4dHlwZV0gfHwgZmF4dHlwZTsKICAgIC8vQ1JOMjAwNjA0IEZvciBvdXRnb2luZywgdGhlIGFjY25hbWUgYW5kL29yIGZheHR5cGUgYXJlIGJsYW5rIHNvIGp1c3QgdXNlIHRoZSBTbmlwcGV0IGxhYmVsCiAgICB2YXIgZG9jVGl0bGUgPSAhYWNjbmFtZSAmJiAhZmF4dHlwZSAgPyAoZGVzaXJlZFRpdGxlID8gZGVzaXJlZFRpdGxlIDogZG9jLmxhYmVsKSA6IGFjY25hbWUgKyAiIC0gIiArIGZheHR5cGUgKyAiIC0gIiArIGRhdGVzdHI7CiAgICBhbGVydCgiQEBAQCBDbGVhbmluZyB1cCBkYXRhOiBYKGRvYywgJ1hfU3ViX0NhdGVnb3J5X19jJykgPT4gIiArIFgoZG9jLCAiWF9TdWJfQ2F0ZWdvcnlfX2MiKSArICIgLSB6RGF0YS5YX1N1Yl9DYXRlZ29yeV9fYyA9PiAiICsgekRhdGEuWF9TdWJfQ2F0ZWdvcnlfX2MpOwogICAgdmFyIGRvY2RhdGEgPSB7CiAgICAgICAgIkRlc2NyaXB0aW9uIjogcmV2c3RhdCArICIgYnk6ICIgKyBkb2Muc2ZVc2VyTmFtZSArICIgYXQ6ICIgKyB6RGF0YS5mb3JtYXROb3csCiAgICAgICAgIkZpcnN0UHVibGlzaExvY2F0aW9uSWQiOiBzZklkLAogICAgICAgIC8vIkNPUkVfTGVnYWN5X0RvY3VtZW50X0lEX19jIjogcGRmdXJsLAogICAgICAgIC8vIkNvcmVfQ291bnRyeUNvZGVfX2MiOiAiVVMiLAogICAgICAgIC8vIkNvcmVfQ2F0ZWdvcnlfX2MiOiBjYXR0eXBlLAogICAgICAgIC8vIkNvcmVfU3ViX0NhdGVnb3J5X19jIjogWChkb2MsICJYX1N1Yl9DYXRlZ29yeV9fYyIpICAgICAvL0NSTjIwMDUwNSB6RGF0YSBpcyBob2xkaW5nIG9sZCwgaW52YWxpZCB2YWx1ZSBwdWxsZWQgZnJvbSB3ZGRhdGEgaW5zdGVhZCBvZiB3aGF0IHRoZSB1c2VyIGN1cnJlbnRseSBjaG9zZS4KLy8gICAgICAgICJDb3JlX1N1Yl9DYXRlZ29yeV9fYyI6IHpEYXRhLlhfU3ViX0NhdGVnb3J5X19jCiAgICAgICAgIkNvbnRlbnRVcmwiOiBwZGZ1cmwsCiAgICAgICAgLy8iRmlsZVR5cGUiOiJQREYiLAogICAgICAgIC8vRVJTMjAwOTI5IG5vdCBhbGxvd2VkIGlmIENvbnRlbnRVcmwgIlBhdGhPbkNsaWVudCI6IGRvY1RpdGxlKyIucGRmIiwKICAgICAgICAiVGl0bGUiOiBkb2NUaXRsZQogICAgfTsKICAgIHZhciBoZWFkZXJzID0gWwogICAgICAgICJBdXRob3JpemF0aW9uIiwgIkJlYXJlciAiICsgZG9jLmtiRGF0YS5zZlNlc3Npb25JRCwKICAgICAgICAiQ29udGVudC1UeXBlIiwgImFwcGxpY2F0aW9uL2pzb24iCiAgICBdOwogICAgdmFyIGJvZHkgPSBKU09OLnN0cmluZ2lmeShkb2NkYXRhKTsKICAgIGFsZXJ0KCJAQEAgQ3JlYXRpbmcgQ29udGVudFZlcnNpb24gd2l0aCBqc29uID0+ICIgKyBib2R5KTsKICAgIHZhciBuZXdJZD0iIjsKICAgIHRyeSB7CiAgICAgICAgdmFyIHJlcyA9IHdwb3N0KGRvYywgZG9jdXJsLCBbXSwgaGVhZGVycywgYm9keSk7CiAgICAgICAgYWxlcnQoIndwb3N0IHJlc3BvbnNlOiAiICsgcmVzKTsKICAgICAgICBuZXdJZD1yZXMuaWQ7IC8vRVJTMjAwNDI4IFRPRE8gZ2V0IHRoZSBuZXcgSWQgVE9ETyB0ZXN0IHdpdGggbGVnYWN5IGVuZ2luZSB2cyB6aXBwaSBuYXNob3JuIC8vU0hSIHNhaWQgbWF5YmUhISEKICAgICAgICBpZiAoIW5ld0lkKSB7IG5ld0lkPUpTT04ucGFyc2UocmVzKS5pZDsgfSAvL0VSUzIwMDkyOSBIQUNLIGV2YWwKCiAgICAgICAgYWxlcnQoIlB1bGxpbmcgQ29udGVudERvY3VtZW50SWQgZnJvbSBDb250ZW50VmVyc2lvbiA9PiAiICsgbmV3SWQpOwogICAgICAgIC8vQ1JOMjAxMDI2ICM3Njc4OCBSZXR1cm4gdGhlIENvbnRlbnREb2N1bWVudElkIHdoaWNoIGlzIG5lZWRlZCB0byBjcmVhdGUgdGhlIERvY3VtZW50TGluayBsYXRlci4KICAgICAgICByZXR1cm4gZ2V0U0ZGaWVsZChkb2MsICJDb250ZW50VmVyc2lvbiIsICJDb250ZW50RG9jdW1lbnRJZCIsIG51bGwsIG5ld0lkKTsKICAgIH0KICAgIGNhdGNoKGV4KSB7CiAgICAgICAgYWxlcnQoIndwb3N0IGV4Y2VwdGlvbjogIiArIGV4KTsKICAgICAgICB0cnkgewogICAgICAgICAgICB2YXIgbWVzcyA9IEpTT04ucGFyc2UoZXgpOwogICAgICAgICAgICBpZiAobWVzcyAmJiBBcnJheS5pc0FycmF5KG1lc3MpICYmIG1lc3NbMF0uZXJyb3JDb2RlKSB7CiAgICAgICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgImFsZXJ0KGBFcnJvciBjcmVhdGluZyBDb250ZW50VmVyc2lvbiEgIiArIG1lc3NbMF0uZXJyb3JDb2RlICsgIiA9PiAiICsgbWVzc1swXS5tZXNzYWdlICsgImApOyIpOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgICAgIGNhdGNoKHBleCkgewogICAgICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgImFsZXJ0KGBFcnJvciBwYXJzaW5nIEpTT04gcmVwc3BvbnNlOiAiICsgZXggKyAiYCk7Iik7CiAgICAgICAgfQogICAgfQogICAgcmV0dXJuIG5ld0lkOwp9Ow=="},"ordinal":3}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS210208 getting the static resource written //ERS210424 where is the static resource?
//ERS201018 HCW21 supports v50 test with othder MFF
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
