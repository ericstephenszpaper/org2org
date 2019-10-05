<!--
// Name: Create Stack from Fax
// Committer: eric.stephens@zpaper.com
// Update: ERS190911 #62829 X_stack with sfId
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-09-11 13:52:47","active":true,"button":"","name":"Create Stack from Fax","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"}]},"consequence":{"doit":"dmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIGF0dGFjaExhYmVsID0gIiI7CnZhciB6cD16RGF0YS56cDsgaWYgKCF6cCkgenA9IlpQQVBFUl9fIjsgLy9FUlMxNzA2MjYgbm93IGluIHRoZSBwYWNrYWdlIC8vRVJTMTkwNjE3IHpEYXRhLnpwCnZhciB6U3RhY2s9ekRhdGEuenBzOyAvLyJTdGFja19fYyIKCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgIzYxNTExIG1vdmUgb3JhbmQgYW5kIG9yZ3N3aXRjaCB1cCBiZWZvcmUgekRhdGEuY2hhbm5lbAogICAgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCgp6RGF0YS5mcm9tRmlsZT1YKGRvYywiWF9mcm9tRmlsZSIpOyAvL0VSUzE5MDgxNCBUT0RPPyBkbyBpbiBsaWJyYXJ5PwphbGVydCgiRVJTMTkwODE0LjExIHpEYXRhLmZyb21GaWxlPSIrekRhdGEuZnJvbUZpbGUrIiAuY2hhbm5lbD0iK3pEYXRhLmNoYW5uZWwpOyAvL0VSUzE5MDgxNAovL0NSTjE5MDMwOCBIYW5kbGUgdXBsb2FkZWQgZmlsZXMgdmlhIExpZ2h0bmluZyBDb21wb25lbnQgYW5kIHpTZW5kIG9yIG1hc3MgaW1wb3J0CmlmICh6RGF0YS5mcm9tRmlsZSkgeyAvL0VSUzE5MDYxNyBUT0RPIGNoYW5uZWwgZ3VpZGUKICAgIGlmICh6RGF0YS5jaGFubmVsICYmIHpEYXRhLmNoYW5uZWwudG9Mb3dlckNhc2UoKS5pbmRleE9mKCJ1cGxvYWQiKT4tMSkgewogICAgICAgIHZhciBmcm9tRmlsZSA9IHpEYXRhLmZyb21GaWxlLnN1YnN0cmluZyh6RGF0YS5mcm9tRmlsZS5sYXN0SW5kZXhPZignLycpICsgMSk7IC8vRVJTMTkwNjI0IHNjb3BpbmcKICAgICAgICB2YXIgcGFydHMgPSBmcm9tRmlsZS5zcGxpdCgiLSIpOwogICAgICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gMykgewogICAgICAgICAgICB2YXIgYXR0YWNoVG9JZCA9IHBhcnRzWzJdOwogICAgICAgICAgICBhbGVydCgiQEBAIFVQTE9BRDogQVRUQUNISU5HIFRPIFNBTEVTRk9SQ0UgUkVDT1JEID0gIiArIGF0dGFjaFRvSWQpOwogICAgICAgICAgICB2YXIgbGFiZWwgPSAiVXBsb2FkZWQgIiArIHBhcnRzWzNdOyAvL0VSUzE5MDgzMCBqdXN0IGZpbGVuYW1lICM2MTkyNAogICAgICAgICAgICBhdHRhY2goZG9jLCBsYWJlbCwgYXR0YWNoVG9JZCwgdHJ1ZSk7CiAgICAgICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlVwbG9hZGVkIik7IC8vIFBWMTkwNTI2IHVwZGF0ZWQgZm9yIHVwbG9hZCBsb2dpYyAKICAgICAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCAiVXBsb2FkZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7CiAgICAgICAgICAgIC8vIGludG8gY2xpZW50VXBsb2FkIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBsYWJlbCk7CiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIiwgIlVQTE9BRCIpOwogICAgICAgICAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFVwbG9hZChkb2MsYXJyT2ZQYWlycywiVVBMT0FEIik7IC8vRVJTMTkwNzA2IHpEYXRhLmNoYW5uZWwgZm9yIHVwbG9hZCBhbmQgaW1wb3J0CiAgICAgICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICAgICAgICAgIGlmICghekRhdGEubWFrZVN0YWNrKSByZXR1cm47IC8vRVJTMTkwODE0CiAgICAgICAgfQogICAgfQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImltcG9ydCIpPi0xKSB7CiAgICAgICAgdmFyIGZyb21GaWxlID0gekRhdGEuZnJvbUZpbGUuc3Vic3RyaW5nKHpEYXRhLmZyb21GaWxlLmxhc3RJbmRleE9mKCcvJykgKyAxKTsgLy9FUlMxOTA2MjQgc2NvcGluZwogICAgICAgIC8vY3VzdG9tIHNldHRpbmcgaW1wb3J0IC06MzpDb250YWN0OkZheCBvciBjYWxsIHpEYXRhLmNsaWVudEltcG9ydFNPUUwoZnJvbUZpbGUpIHRvIGdldCBxdWVyeQogICAgICAgIHZhciBzZklkPXpEYXRhLmNsaWVudEltcG9ydFNPUUwoZG9jLGZyb21GaWxlKTsKICAgICAgICB2YXIgaW1wb3J0Q29uZmlnPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiSW1wb3J0ZXJfX2MiKS50cmltKCk7CiAgICAgICAgaWYgKCFpbXBvcnRDb25maWcpIGltcG9ydENvbmZpZz1YRGVwbG95bWVudEluZm8oZG9jLCJJbXBvcnRlcl9fYyIpLnRyaW0oKTsgLy9FUlMxOTA4MDUgdHlwZSBpbiBpZiAoKQogICAgICAgIGlmICghc2ZJZCAmJiAhaW1wb3J0Q29uZmlnKSBpbXBvcnRDb25maWc9Ii06MzpDb250YWN0OkZheCI7CiAgICAgICAgaWYgKCFzZklkICYmIGltcG9ydENvbmZpZy5pbmRleE9mKCI6Iik+LTEpIHsKICAgICAgICAgICAgdmFyIGltcG9ydGVyPWltcG9ydENvbmZpZy5zcGxpdCgiOiIpOwogICAgICAgICAgICB2YXIgZD1pbXBvcnRlclswXTsKICAgICAgICAgICAgdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoZCk7CiAgICAgICAgICAgIHZhciBmPSgiMCIraW1wb3J0ZXJbMV0pLzE7CiAgICAgICAgICAgIGlmIChwYXJ0cy5sZW5ndGggPj0gZikgewogICAgICAgICAgICAgICAgdmFyIHNmcSA9IHt9OyBzZnFbaW1wb3J0ZXJbM11dPXBhcnRzW2ZdOyAvL0VSUzE5MDgwNQogICAgICAgICAgICAgICAgc2ZJZCA9IGdldFNGUmVjb3JkSUQoZG9jLCBpbXBvcnRlclsyXSwgc2ZxICk7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICAgICAgaWYgKHNmSWQpIHsKICAgICAgICAgICAgdmFyIGF0dGFjaFRvSWQgPSBzZklkOwogICAgICAgICAgICBhbGVydCgiQEBAIElNUE9SVDogQVRUQUNISU5HIFRPIFNBTEVTRk9SQ0UgUkVDT1JEID0gIiArIGF0dGFjaFRvSWQpOwogICAgICAgICAgICB2YXIgbGFiZWwgPSAiRmlsZSB1cGxvYWRlZCAiICsgZnJvbUZpbGU7CiAgICAgICAgICAgIGF0dGFjaChkb2MsIGxhYmVsLCBhdHRhY2hUb0lkLCB0cnVlKTsKICAgICAgICAgICAgYXJyT2ZQYWlycyA9IFtdOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiSW1wb3J0ZWQiKTsgLy8gUFYxOTA1MjYgdXBkYXRlZCBmb3IgdXBsb2FkIGxvZ2ljIAogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsICJJbXBvcnRlZCBieSBhZ2VudCBhdCAiICsgbm93MCArICI8YnIvPiIrekRhdGEuc2lnbmVkU3RhdHVzKTsKICAgICAgICAgICAgLy9pbnRvIGNsaWVudFVwbG9hZCBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgbGFiZWwpOwogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZG9jVHlwZSIsICJJTVBPUlQiKTsKICAgICAgICAgICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRVcGxvYWQoZG9jLGFyck9mUGFpcnMsIklNUE9SVCIpOyAvL0VSUzE5MDcwNiB6RGF0YS5jaGFubmVsIGZvciB1cGxvYWQgYW5kIGltcG9ydAogICAgICAgICAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgICAgICAgICBpZiAoIXpEYXRhLm1ha2VTdGFjaykgcmV0dXJuOwogICAgICAgIH0KICAgIH0KfSAKCiAgICAvL0VSUzE3MTAxMiBrZXl3b3JkcyBmb3IgZGVtbwogICAgdmFyIGtleXdvcmRzPVsiRU5STDpFbnJvbGxtZW50fiIsIkNPTjpDb25zZW50fiIsIkNPTjpjb25zZW50fiIsIlBBUFA6UGF0aWVudCBBc3Npc3RhbmNlIiwiUEFVVEg6UHJpb3J+IEF1dGhvcml6YXRpb25+IiwiUkVHOlJlZ3VsYXRpb25+IiwiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiRkFYOiJdOwogICAga2V5d29yZHM9WyJGQVg6Il07IC8vRVJTMTkwNjE3IFRPRE8gYXJyYXkgb3Igbm90PyAvL0VSUzE5MDYyNCB0aGUgRkFYOiB2YWx1ZSBlZmZlY3RpdmVseSByZW1vdmVzIE9DUiBUT0RPIHRyeSBib3RoIHdheXMKICAgIHpEYXRhLmRvY1R5cGVPQ1IgPSB6RGF0YS5kb2NUeXBlcihkb2MsIGtleXdvcmRzKTsgLy9QVjE5MDUyNiBSZW1vdmVkIHR5cGVzCiAgICBhbGVydCgiZG9jVHlwZSB3YXMgIiArIGRvYy5kb2NUeXBlICsgIiBub3cgIiArIHpEYXRhLmRvY1R5cGVPQ1IpOwogICAgdmFyIHpUeXBlID0gZG9jLlgoIlhfZG9jVHlwZSIpOwogICAgaWYgKGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgICAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLCB6RGF0YS5kb2NUeXBlT0NSKTsKICAgICAgICB6VHlwZSA9IHpEYXRhLmRvY1R5cGVPQ1I7IC8vRVJTMTcwMzMwIHNhdmVkIGJlbG93IGludG8gU0YgZmF4VHlwZV9fYyBmaWVsZAogICAgICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyczApOwogICAgfQogICAgCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgLy9FUlMxOTA4MTQgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCgogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJmYXhUeXBlX19jIiwgelR5cGUpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJNZWRpdW0iKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsiU3RhdHVzX19jIiwgIk5ldyBTdGFjayIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDaGFubmVsX19jIiwgekRhdGEuY2hhbm5lbCk7CiAgICAvLyBNU0gxNzExMTYgdXNpbmcgelN0YWNrX1JlY2VpdmVkX19jIGluc3RlYWQgb2YgbGF0ZXN0RmF4X19jIGJlY2F1c2UgbGF0ZXN0RmF4X19jIGdldHMgdXBkYXRlZCBieSBzYXZlLmpzcCBldmVyeSB0aW1lIHRoZSByZWNvcmQgaXMgdXBkYXRlZAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCB6RGF0YS5mb3JtYXROb3cpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJyZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJuZXdGYXhfX2MiLCAidHJ1ZSIpOwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQYWdlc19fYyIsIFgoZG9jLCAiWF9wYWdlcyIpKTsgLy9FUlMxOTA4MjggVE9ETyBzZWUgd2h5IDEgYW5kIG5vdCByZWFsIHZhbHVlCiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByb2dyYW1fTmFtZV9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsKICAgIGFyck9mUGFpcnMucHVzaCh6cCsic2VudEZheFRvX19jIiwgZG9jLmRlbGl2ZXJlZFRvKTsgLy9FUlMxNzA2MjggY2FsbGVyIGlkCiAgICBhcnJPZlBhaXJzLnB1c2goenArIkZyb21fX2MiLCBkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgIlJlY2VpdmVkIik7IC8vRVJTMTcwNzMxICM0MDU5MwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJDbGFzc2lmaWNhdGlvbl9fYyIsIHpEYXRhLmNsYXNzaWZpY2F0aW9uKTsgCiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgIit6RGF0YS5jbGFzc2lmaWNhdGlvbisiIFN0YWNrIHJlY2VpdmVkIG9uICIgKyB6RGF0YS5mb3JtYXROb3c7CiAgICBpZiAoekRhdGEubGFiZWwpIGF0dGFjaExhYmVsPXpEYXRhLmxhYmVsOyAvL0VSUzE5MDgzMCAjNjE5MjQKICAgIAogICAgLy9FUlMxOTA4MDMgcHVzaCBhbnkgY3VzdG9tIG9uZSB0byB6RGF0YS5jbGllbnRTdGFja3MoKSBvciBuZXcgelN0YWNrRmllbGRzIGN1c3RvbSBzZXR0aW5nCiAgICAvL0VSUzE5MDcyMiBtYWtlIEV4Y2VwdGlvbiBnbyBhd2F5IGFyck9mUGFpcnMucHVzaCgielN0YWNrX1JlY2VpdmVkX19jIiwgZm9ybWF0Tm93KTsKICAgIC8vRVJTMTkwODAzIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKICAgIAogICAgaWYgKHpEYXRhLmNsaWVudFN0YWNrKSBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA2MTcgVE9ETyB6RGF0YS5jbGllbnRTdGFjaygpIHdpdGggbGFiZWwgLy9TdGFja3MoKSBub3cgU3RhY2soKQogICAgdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS56cHMsIGF0dGFjaExhYmVsLCBhcnJPZlBhaXJzKTsgLy8gUFYxOTA1MzAgYWRkZWQgIiIKCiAgICAvL0NSTjE4MDcyNiBDYXNlICM1MDQ2OSAtLSBTZXQgdGhlICJSZWNlaXZlZCIgY2hlY2tib3gKICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSwgdHJ1ZSk7CiAgICBhcnJPZlBhaXJzID0gW107IC8vIFBWMTkwNTMxIGFkZGVkIGZvciBzdGFjayBsYWJlbAogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGF0dGFjaExhYmVsKTsKICAgIGlmIChYKGRvYywgIlhfZnJvbUZpbGUiKT09PSIiKSB7IC8vRVJTMTkwNjI0CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2Zyb21GaWxlIixkb2MuVVJMLnN1YnN0cmluZyhkb2MuVVJMLmxhc3RJbmRleE9mKCIvIikrMSkpOyAKICAgICAgICBhbGVydCgiRVJTMTkwNjI0IHJlcGFpcmluZyBYX2Zyb21GaWxlIHVzaW5nICIrZG9jLlVSTCk7CiAgICB9CiAgICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItU1RBQ0siKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9zdGFjayIsc2ZJZCk7IC8vRVJTMTkwOTExICM2MjgyOQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyAiUmVjZWl2ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOyAgIAogICAgLyogRU5EICov"},"ordinal":15}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var arrOfPairs = [];
var attachLabel = "";
var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS170626 now in the package //ERS190617 zData.zp
var zStack=zData.zps; //"Stack__c"

    //ERS190617 TODO document hub strategy
    //ERS190814 #61511 move orand and orgswitch up before zData.channel
    zData.setbrandprogram(doc); //who and where
    zData.orgSwitch(doc); //TODO refactor with setBrandProgram()

zData.fromFile=X(doc,"X_fromFile"); //ERS190814 TODO? do in library?
alert("ERS190814.11 zData.fromFile="+zData.fromFile+" .channel="+zData.channel); //ERS190814
//CRN190308 Handle uploaded files via Lightning Component and zSend or mass import
if (zData.fromFile) { //ERS190617 TODO channel guide
    if (zData.channel && zData.channel.toLowerCase().indexOf("upload")>-1) {
        var fromFile = zData.fromFile.substring(zData.fromFile.lastIndexOf('/') + 1); //ERS190624 scoping
        var parts = fromFile.split("-");
        if (parts.length >= 3) {
            var attachToId = parts[2];
            alert("@@@ UPLOAD: ATTACHING TO SALESFORCE RECORD = " + attachToId);
            var label = "Uploaded " + parts[3]; //ERS190830 just filename #61924
            attach(doc, label, attachToId, true);
            arrOfPairs = [];
            arrOfPairs.push("X_reviewedStatus", "Uploaded"); // PV190526 updated for upload logic 
            arrOfPairs.push("X_reviews", "Uploaded by agent at " + now0 + "<br/>"+zData.signedStatus);
            // into clientUpload arrOfPairs.push("db-label", label);
            arrOfPairs.push("X_docType", "UPLOAD");
            arrOfPairs=zData.clientUpload(doc,arrOfPairs,"UPLOAD"); //ERS190706 zData.channel for upload and import
            updateDB(doc, arrOfPairs);
            if (!zData.makeStack) return; //ERS190814
        }
    }
    if (zData.channel && zData.channel.toLowerCase().indexOf("import")>-1) {
        var fromFile = zData.fromFile.substring(zData.fromFile.lastIndexOf('/') + 1); //ERS190624 scoping
        //custom setting import -:3:Contact:Fax or call zData.clientImportSOQL(fromFile) to get query
        var sfId=zData.clientImportSOQL(doc,fromFile);
        var importConfig=XCustomSetting(doc,zData.zp+"Importer__c").trim();
        if (!importConfig) importConfig=XDeploymentInfo(doc,"Importer__c").trim(); //ERS190805 type in if ()
        if (!sfId && !importConfig) importConfig="-:3:Contact:Fax";
        if (!sfId && importConfig.indexOf(":")>-1) {
            var importer=importConfig.split(":");
            var d=importer[0];
            var parts = fromFile.split(d);
            var f=("0"+importer[1])/1;
            if (parts.length >= f) {
                var sfq = {}; sfq[importer[3]]=parts[f]; //ERS190805
                sfId = getSFRecordID(doc, importer[2], sfq );
            }
        }
        if (sfId) {
            var attachToId = sfId;
            alert("@@@ IMPORT: ATTACHING TO SALESFORCE RECORD = " + attachToId);
            var label = "File uploaded " + fromFile;
            attach(doc, label, attachToId, true);
            arrOfPairs = [];
            arrOfPairs.push("X_reviewedStatus", "Imported"); // PV190526 updated for upload logic 
            arrOfPairs.push("X_reviews", "Imported by agent at " + now0 + "<br/>"+zData.signedStatus);
            //into clientUpload arrOfPairs.push("db-label", label);
            arrOfPairs.push("X_docType", "IMPORT");
            arrOfPairs=zData.clientUpload(doc,arrOfPairs,"IMPORT"); //ERS190706 zData.channel for upload and import
            updateDB(doc, arrOfPairs);
            if (!zData.makeStack) return;
        }
    }
} 

    //ERS171012 keywords for demo
    var keywords=["ENRL:Enrollment~","CON:Consent~","CON:consent~","PAPP:Patient Assistance","PAUTH:Prior~ Authorization~","REG:Regulation~","REF:REFERRAL","REF:Referral","FAX:"];
    keywords=["FAX:"]; //ERS190617 TODO array or not? //ERS190624 the FAX: value effectively removes OCR TODO try both ways
    zData.docTypeOCR = zData.docTyper(doc, keywords); //PV190526 Removed types
    alert("docType was " + doc.docType + " now " + zData.docTypeOCR);
    var zType = doc.X("X_docType");
    if (doc.docType != zData.docTypeOCR) {
        var arrOfPairs0 = [];
        arrOfPairs0.push("X_docTypeOCR", zData.docTypeOCR);
        arrOfPairs0.push("X_docType", zData.docTypeOCR);
        zType = zData.docTypeOCR; //ERS170330 saved below into SF faxType__c field
        updateDB(doc, arrOfPairs0);
    }
    
    //ERS190617 TODO document hub strategy
    //ERS190814 zData.setbrandprogram(doc); //who and where
    //ERS190814 zData.orgSwitch(doc); //TODO refactor with setBrandProgram()

    arrOfPairs = [];
    arrOfPairs.push(zp+"faxType__c", zType);
    arrOfPairs.push(zp+"Priority__c", "Medium");
    arrOfPairs.push(zp+"Status__c", "New Stack");
    arrOfPairs.push(zp+"Channel__c", zData.channel);
    // MSH171116 using zStack_Received__c instead of latestFax__c because latestFax__c gets updated by save.jsp every time the record is updated
    arrOfPairs.push(zp+"latestFax__c", zData.formatNow);
    arrOfPairs.push(zp+"receivedId__c", doc.dbID);
    arrOfPairs.push(zp+"newFax__c", "true");
    arrOfPairs.push(zp+"Pages__c", X(doc, "X_pages")); //ERS190828 TODO see why 1 and not real value
    arrOfPairs.push(zp+"Program_Name__c", zData.classification);
    arrOfPairs.push(zp+"sentFaxTo__c", doc.deliveredTo); //ERS170628 caller id
    arrOfPairs.push(zp+"From__c", doc.deliveredFrom);
    arrOfPairs.push(zp+"Stage__c", "Received"); //ERS170731 #40593
    arrOfPairs.push(zp+"Classification__c", zData.classification); 
    attachLabel = "New "+zData.classification+" Stack received on " + zData.formatNow;
    if (zData.label) attachLabel=zData.label; //ERS190830 #61924
    
    //ERS190803 push any custom one to zData.clientStacks() or new zStackFields custom setting
    //ERS190722 make Exception go away arrOfPairs.push("zStack_Received__c", formatNow);
    //ERS190803 arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
    
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
    var sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added ""

    //CRN180726 Case #50469 -- Set the "Received" checkbox
    var now0 = getCurDateAndTime(doc, false, true);
    arrOfPairs = []; // PV190531 added for stack label
    arrOfPairs.push("db-label", attachLabel);
    if (X(doc, "X_fromFile")==="") { //ERS190624
        arrOfPairs.push("X_fromFile",doc.URL.substring(doc.URL.lastIndexOf("/")+1)); 
        alert("ERS190624 repairing X_fromFile using "+doc.URL);
    }
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    arrOfPairs.push("X_stack",sfId); //ERS190911 #62829
    arrOfPairs.push("X_reviewedStatus", "Received");
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"+zData.signedStatus); //ERS170909 #40592/CAW Update
    updateDB(doc, arrOfPairs);   
    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
