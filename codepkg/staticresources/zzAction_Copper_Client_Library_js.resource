<!--
// Name: Copper Client Library
// Committer: eric.stephens@zpaper.com
// Update: copper
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-24 20:51:18","evalContinue":"true","active":true,"button":"","name":"Copper Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNvcHBlciBjbGllbnQgbGlicmFyeSIpOyAvL0VSUzIxMDQyNCAjODIwODEKLy9FUlMyMDExMTcgVE9ETyBnZXQgcmlkIG9mZiB0aGVzZSBrZXl3b3JkcyBhbmQgdXNlIGEgZG9jdW1lbnQgam91cm5leSB3aXphcmQgZnJvbSBLUFMgYW5kIEpha2UKCi8vQ1JOMjAxMDI1ICM3Njc4OCBNb3ZlZCBmcm9tIHpTdGFjayBMaWJyYXJ5IHNvIHRoYXQgaXQgY2FuIGJlIHVzZWQgaW4gbXVsdGlwbGUgcnVsZXMuCnZhciBrZXl3b3JkTWFwPXt9OyAvL1RPRE8yMTA0MjQgcmVtb3ZlIGNvbXBsZXRlbHkKdmFyIGtleXdvcmRzPVtdOyAvL1RPRE8yMTA0MjQgcmVtb3ZlIGNvbXBsZXRlbHkKCnpEYXRhLm1heENoYW5uZWxzPTQ7IC8vRVJTMTkwNzMxICM2MTI3MiB6aXBwaSBpcyBzdHJvbmdseSB0eXBlZAp6RGF0YS5tYWtlU3RhY2s9ZmFsc2U7IC8vRVJTMTkwODE0ICM2MTUxMQp6RGF0YS51cGxvYWREaXIgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInVwbG9hZERpcl9fYyIpOyAvLyJhbGtlcm1lc1Jvb3QiOwp6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gIiIrWEN1c3RvbVNldHRpbmcoZG9jLCJwYXRpZW50UXVldWVJZF9fYyIpOyAvLycwMEc0QzAwMDAwMExrbVonOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKekRhdGEucmVjVHlwZVJlcXVlc3QgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInJlY1R5cGVSZXF1ZXN0X19jIik7IC8vJzAxMjRDMDAwMDAwQ2o1WSc7IC8vSUQgb2YgdGhlIENhc2UgUmVjb3JkIFR5cGUgUmVxdWVzdF9QU19NVk4KCnZhciBjcz1YRGVwbG95bWVudEluZm8oZG9jLCAiQnVzaW5lc3NfUHJvY2Vzc19fYyIpOyAvL0VSUzIwMDIyMiBuZWVkIGJvdGggZGVwbG95bWVudCBpbmZvIGFuZCBjcwovL2FsZXJ0KCJjcz0iK2NzKTsKaWYgKGNzKSB7CiAgICBpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsKICAgIGFsZXJ0KCJFUlMyMDAyMjUgRVZBTCBvbiAiK2NzKTsKICAgIGlmIChjcyAhPT0gIiIpIGV2YWwoIiIrY3MpOyAvL0VSUzIwMDIyMiBUT0RPIEpTT04ucGFyc2UoKSAvL0VSUzIwMDIyNSBiZWVkcyB0byBiZSBldmFsIGJ1dCBhbHNvIG5lZWRzIHRvIHdvcmshISEKICAgIGFsZXJ0KCJObyB0cnkganVzdCBkbyEiKTsKfQoKekRhdGEuY2xpZW50SW1wb3J0U09RTD1mdW5jdGlvbihkb2MsZnJvbUZpbGUpIHsgLy9FUlMxOTA3MDYgY3VzdG9taXplIGltcG9ydHMgdXNlZCBieSBDcmVhdGUgU3RhY2sKICAgIHpEYXRhLmltcG9ydGVyPVhDdXN0b21TZXR0aW5nKGRvYyx6RGF0YS56cCsiSW1wb3J0ZXJfX2MiKS50cmltKCk7CiAgICB2YXIgc2ZJZD0iIjsKICAgIHZhciBwYXJ0cz1mcm9tRmlsZS5zcGxpdCgiXyIpOwogICAgLy9zZklkID0gZ2V0U0ZSZWNvcmRJRChkb2MsICJBY2NvdW50IiwgeyAiRmF4IiA6IHBhcnRzWzNdIH0gKTsKICAgIHpEYXRhLm1ha2VTdGFjaz10cnVlOyAvL2RvIGFsbCB0aGUgd29yayB0aGVyZSBieSBkZWZhdWx0CiAgICByZXR1cm4gc2ZJZDsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudFN0YWNrIik7CnpEYXRhLmNsaWVudFN0YWNrPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzKSB7IC8vVE9ETzIxMDQyNCB1c2UgdGhlIHpDaGFubmVsIGFjdGlvbgogICAgdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL0VSUzE5MDgwNSAvL1RPRE8yMTA0MjQgWlBBUEVSNl9fCiAgICBpZiAoekRhdGEuZWRpdGlvbiA9PSAiQ29wcGVyIiB8fCB6RGF0YS56cHMuaW5kZXhPZigielN0YWNrIikgPT0gLTEgKSB7CiAgICAgICAgYWxlcnQoIkVSUzIxMDQyNCAiK3pEYXRhLmVkaXRpb24rIiBzbyBubyB6U3RhY2siKTsKICAgICAgICAvL25lZWQgdGhlIGNsaWVudEZpZWxkcyB0byBkbyBpdCByZXR1cm4gYXJyT2ZQYWlyczsKICAgIH0KCWlmICh6RGF0YS5vd25lcklkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLm93bmVySWQpOyAgLy8gekNoYXJ0YSBRdWV1ZSAiMDBHMzYwMDAwMDJDeVRLIiAKCWlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pTdGFja0ZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCglyZXR1cm4gYXJyT2ZQYWlyczsKfTsKCi8vYWxlcnQoInpEYXRhLmNsaWVudEZpbGUiKTsKekRhdGEuY2xpZW50RmlsZT1mdW5jdGlvbihkb2Msc3RhZ2UpIHsgLy9FUlMxNzA4MjkgIzQxMjk4IHJldHVybnMgYSBsYWJlbCB0byBiZSB1c2VkIGluIGFueSBhdHRhY2hlcyBhbmQgZml4ZXMgdGhlIGRvYwogICAgLy9Eb2N1bWVudCBhdHRhY2htZW50IGxhYmVsIHNob3VsZCBiZSAiUGF0aWVudCBOYW1lIC0gRG9jIFR5cGUgLSBEYXRlIi4gIENvbmZpcm1lZCBmb3IgelBhcGVyIEZpbGUgYW5kIFNGREMgQXR0YWNobWVudAogICAgdmFyIE1NZGRZWVlZID0gekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwoJdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7CgkvL3VwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIHJldHVybiBkb2MubGFiZWw7Cn07Cgp6RGF0YS5jbGllbnRWYWx1ZT1mdW5jdGlvbihkb2MsdmFsKSB7Ly9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gCiAgICB2YWw9dmFsLnJlcGxhY2UoInshZm9ybWF0Tm93fSIsekRhdGEuZm9ybWF0Tm93KTsKICAgIHJldHVybiB2YWw7Cn0KCnpEYXRhLmNsaWVudEZpZWxkcz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxqZCx6ZCkgeyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBpbiBzZXR0aW5nIHRvIGNvbmZpZ3VyZSBuZXcgcmVjb3JkCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKICAgIHZhciBwYWdlUmFuZ2UgPSBYKGRvYywiWF9pZHhQYWdlcyIpOwogICAgaWYgKCFwYWdlUmFuZ2UpIHBhZ2VSYW5nZT0iMS0iK1goZG9jLCJYX3BhZ2VzIik7IAogICAgdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLCBwYWdlUmFuZ2UpOyAvL1RPRE8gbm8gcGxhY2UgdG8gc3RvcmUgb24gUkQKICAgIGlmICh6ZC5lZGl0aW9uPT0iQ29wcGVyIiB8fCB6ZC5zZklkLmluZGV4T2YoIjBpbyIpPT09MCkgeyAvL0VSUzIxMDQyNCBSZXF1aXJlZCBmaWVsZHMgYXJlIG1pc3Npbmc6IFtOYW1lLCBTdGF0dXNdIFRPRE8gTU9SRSBSRCBGSUVMRFMKICAgICAgICBpZiAoekRhdGEub3duZXJJZCkgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS5vd25lcklkKTsgIC8vIHpDaGFydGEgUXVldWUgIjAwRzM2MDAwMDAyQ3lUSyIgCgkgICAgaWYgKHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEucGF0RW5yb2xsUXVldWVJZCk7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJOYW1lIiwgekRhdGEuYXR0YWNoTGFiZWwpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgIkRyYWZ0Iik7IC8vRVJTMjEwNDI0IHdoZXJlIGFyZSB0aGUgcGlja2xpc3QgZGVmaW5lZAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiU291cmNlIiwgZG9jLmRlbGl2ZXJlZFRvKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIkRpcmVjdGlvbiIsICJJbmNvbWluZyIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiRG9jdW1lbnROdW1iZXIiLCAieno6Iitkb2MuZGJJRCk7CiAgICB9CglyZXR1cm4gYXJyT2ZQYWlyczsKfQoKCnpEYXRhLmNsaWVudENhc2U9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCF6ZC50cmlhZ2VUeXBlICYmIFgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpKSB6ZC50cmlhZ2VUeXBlPVgoZG9jLCJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOyAvL0VSUzIwMDMwOAoJaWYgKCFsYWJlbCkgbGFiZWw9ZG9jLmxhYmVsOwoJaWYgKDE9PTEpIHsgLy9FUlMxNzA1MjMgIzM3MTYyIGFmdGVyIGRyeXJ1bgoJICAgIGFsZXJ0KCJAQEAgemQucHJpb3JpdHkgPT4gKiIgKyB6ZC5wcmlvcml0eSArICIqIik7CgkJLy9hcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIjAxMlEwMDAwMDAwNUFoaiIpOyAvL0VSUzE3MDUyMyBQcmlvciBBdXRoCgkJaWYgKHpkLnByaW9yaXR5ICE9ICJOb3JtYWwiKSB7IGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLHpkLnByaW9yaXR5KTsgfSAgLy9FUlMxNzA1MjQgIzM3MTYyIHByaW9yaXR5IG9uIENhc2UKCQllbHNlIHsgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsIk1lZGl1bSIpOyB9CgkJYXJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLCJGYXgiKTsgLy9FUlNhMjAwMjA1IHJyT2ZQYWlycy5wdXNoKCJPcmlnaW4iLHpkLmNoYW5uZWwpOwoJfQogICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRGaWVsZHMoZG9jLGFyck9mUGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX0Nhc2VGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OCiAgICBpZiAoemQuemNoYW5uZWwub3duZXIpIHsgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgekRhdGEuemNoYW5uZWwub3duZXIpOyB9IC8vRVJTMjAwMzA4CiAgICAKCXZhciBjYXNlSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQ2FzZSIsIGxhYmVsLCBhcnJPZlBhaXJzKTsKCXJldHVybiBjYXNlSWQ7Cn07Cgp6RGF0YS5jbGllbnRQYXRpZW50PWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7CglyZXR1cm4geydFUlJPUic6ICdwYXRpZW50IG5vdCBjcmVhdGVkJ30KfTsKCnpEYXRhLmNsaWVudEFjY291bnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKCWlmICghemQpIHpkPXpEYXRhOwoJaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KICAgIHZhciBhY2NvdW50SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiQWNjb3VudCIsIGxhYmVsLCBhcnJPZlBhaXJzKTsKCXJldHVybiBhY2NvdW50SWQ7Cn07Cgp6RGF0YS5jbGllbnRSZWNvcmQ9ZnVuY3Rpb24oZG9jLHNmVHlwZSxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7IC8vRVJTMTkwNjIwIGNsaWVudFJlY29yZCBnZW5lcmljCglpZiAoIXpkKSB6ZD16RGF0YTsKCWlmICghbGFiZWwpIHsgbGFiZWw9ZG9jLmxhYmVsO30gLy9FUlMyMTA0MjQgc2hvdWxkIHRoaXMgYmUgemQubGFiZWw/CiAgICB2YXIgbmV3SWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCBzZlR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsKCXJldHVybiBuZXdJZDsKfTsKCnpEYXRhLmNsaWVudENvbXBsZXRlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHpkKSB7cmV0dXJuIGFyck9mUGFpcnM7fTsgLy9FUlMxOTA2MjUKekRhdGEuY2xpZW50RGVsaXZlcnk9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHsgLy9FUlMyMDAyMDIgVE9ETyBjb25zaWRlciBuZXcgRG9jdW1lbnRfTVZOCiAgICByZXR1cm4gYXJyT2ZQYWlyczsKfTsgLy9FUlMxOTA3MTEgIzYwOTAwIFBBT1MKCnpEYXRhLmNsaWVudENoaWxkU3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMscGFyZW50SWQpIHsgLy9FUlMxOTA4MTAgIzYxNTcwIGJlIHN1cmUgdG8gY2FsbCBvbiBuZXcgY2hpbGQgZG9jCiAgICB2YXIgcGFpcnM9YXJyT2ZQYWlyczsKICAgIHBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxwYWlycyk7CiAgICBpZiAoWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pDaGlsZEZpZWxkc19fYyIpKSB7IC8vRVJTMTkwODExIG5vdCBpbiBhbGwgTVBzCiAgICAgICAgcGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxwYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fekNoaWxkRmllbGRzX19jIikpOyAvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTiBjaGlsZCByZWNvcmQgdHlwZSBpZAogICAgfQogICAgY2hpbGRTdGFja1NGSWQ9IiI7IC8vRVJTMjEwNDI0IG5vIHN0YWNrcyBpbiBjb3BwZXIKICAgIGlmICgxPT09MSAmJiB6RGF0YS5jbGllbnRSZWNlaXZlZERvY3VtZW50KSB7IHpEYXRhLnJlY0RvY0lkPXpEYXRhLmNsaWVudFJlY2VpdmVkRG9jdW1lbnQoZG9jLGNoaWxkU3RhY2tTRklkKTsgfSAvL0VSUzIwMTAxOCAjNzcyNTIKICAgIHJldHVybiBjaGlsZFN0YWNrU0ZJZDsKfTsKCgoKYWxlcnQoImVuZCBjb3BwZXIgY2xpZW50IGxpYnJhcnkiKTsgLy9FUlMxOTA2MTUgIzU4OTIx"},"ordinal":5}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start copper client library"); //ERS210424 #82081
//ERS201117 TODO get rid off these keywords and use a document journey wizard from KPS and Jake

//CRN201025 #76788 Moved from zStack Library so that it can be used in multiple rules.
var keywordMap={}; //TODO210424 remove completely
var keywords=[]; //TODO210424 remove completely

zData.maxChannels=4; //ERS190731 #61272 zippi is strongly typed
zData.makeStack=false; //ERS190814 #61511
zData.uploadDir = ""+XCustomSetting(doc,"uploadDir__c"); //"alkermesRoot";
zData.patEnrollQueueId = ""+XCustomSetting(doc,"patientQueueId__c"); //'00G4C000000LkmZ'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
zData.recTypeRequest = ""+XCustomSetting(doc,"recTypeRequest__c"); //'0124C000000Cj5Y'; //ID of the Case Record Type Request_PS_MVN

var cs=XDeploymentInfo(doc, "Business_Process__c"); //ERS200222 need both deployment info and cs
//alert("cs="+cs);
if (cs) {
    if (cs.indexOf("zCustomSettings")>-1) cs=X(doc,"zCustomSettings",cs);
    alert("ERS200225 EVAL on "+cs);
    if (cs !== "") eval(""+cs); //ERS200222 TODO JSON.parse() //ERS200225 beeds to be eval but also needs to work!!!
    alert("No try just do!");
}

zData.clientImportSOQL=function(doc,fromFile) { //ERS190706 customize imports used by Create Stack
    zData.importer=XCustomSetting(doc,zData.zp+"Importer__c").trim();
    var sfId="";
    var parts=fromFile.split("_");
    //sfId = getSFRecordID(doc, "Account", { "Fax" : parts[3] } );
    zData.makeStack=true; //do all the work there by default
    return sfId;
};

//alert("zData.clientStack");
zData.clientStack=function(doc,arrOfPairs) { //TODO210424 use the zChannel action
    var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS190805 //TODO210424 ZPAPER6__
    if (zData.edition == "Copper" || zData.zps.indexOf("zStack") == -1 ) {
        alert("ERS210424 "+zData.edition+" so no zStack");
        //need the clientFields to do it return arrOfPairs;
    }
	if (zData.ownerId) arrOfPairs.push("OwnerId",zData.ownerId);  // zCharta Queue "00G36000002CyTK" 
	if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__zStackFields__c")); //ERS190803 #52661 using JSON 
	return arrOfPairs;
};

//alert("zData.clientFile");
zData.clientFile=function(doc,stage) { //ERS170829 #41298 returns a label to be used in any attaches and fixes the doc
    //Document attachment label should be "Patient Name - Doc Type - Date".  Confirmed for zPaper File and SFDC Attachment
    var MMddYYYY = zData.formatTodayMMddYYYY();
	var arrOfPairs = [];
    //arrOfPairs.push("db-label", doc.label);
	//updateDB(doc,arrOfPairs);
    return doc.label;
};

zData.clientValue=function(doc,val) {//ERS190803 #52661 using JSON 
    val=val.replace("{!formatNow}",zData.formatNow);
    return val;
}

zData.clientFields=function(doc,arrOfPairs,jd,zd) { //ERS190803 #52661 using JSON in setting to configure new record
    if (!zd) zd=zData;
    var pageRange = X(doc,"X_idxPages");
    if (!pageRange) pageRange="1-"+X(doc,"X_pages"); 
    var pageCount = zData.countPages(doc, pageRange); //TODO no place to store on RD
    if (zd.edition=="Copper" || zd.sfId.indexOf("0io")===0) { //ERS210424 Required fields are missing: [Name, Status] TODO MORE RD FIELDS
        if (zData.ownerId) arrOfPairs.push("OwnerId",zData.ownerId);  // zCharta Queue "00G36000002CyTK" 
	    if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);
        arrOfPairs.push("Name", zData.attachLabel);
        arrOfPairs.push("Status", "Draft"); //ERS210424 where are the picklist defined
        arrOfPairs.push("Source", doc.deliveredTo);
        arrOfPairs.push("Direction", "Incoming");
        arrOfPairs.push("DocumentNumber", "zz:"+doc.dbID);
    }
	return arrOfPairs;
}


zData.clientCase=function(doc,arrOfPairs,label,zd) {
	if (!zd) zd=zData;
	if (!zd.triageType && X(doc,"X_ZPAPER__faxType__c")) zd.triageType=X(doc,"X_ZPAPER__faxType__c"); //ERS200308
	if (!label) label=doc.label;
	if (1==1) { //ERS170523 #37162 after dryrun
	    alert("@@@ zd.priority => *" + zd.priority + "*");
		//arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
		if (zd.priority != "Normal") { arrOfPairs.push("Priority",zd.priority); }  //ERS170524 #37162 priority on Case
		else { arrOfPairs.push("Priority","Medium"); }
		arrOfPairs.push("Origin","Fax"); //ERSa200205 rrOfPairs.push("Origin",zd.channel);
	}
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__CaseFields__c")); //ERS190803 #52661 using JSON
    if (zd.zchannel.owner) { arrOfPairs.push("OwnerId", zData.zchannel.owner); } //ERS200308
    
	var caseId = createAndAttach(doc, "Case", label, arrOfPairs);
	return caseId;
};

zData.clientPatient=function(doc,arrOfPairs,label,zd) {
	return {'ERROR': 'patient not created'}
};

zData.clientAccount=function(doc,arrOfPairs,label,zd) {
	if (!zd) zd=zData;
	if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
    var accountId = createAndAttach(doc, "Account", label, arrOfPairs);
	return accountId;
};

zData.clientRecord=function(doc,sfType,arrOfPairs,label,zd) { //ERS190620 clientRecord generic
	if (!zd) zd=zData;
	if (!label) { label=doc.label;} //ERS210424 should this be zd.label?
    var newId = createAndAttach(doc, sfType, label, arrOfPairs);
	return newId;
};

zData.clientComplete=function(doc,arrOfPairs,zd) {return arrOfPairs;}; //ERS190625
zData.clientDelivery=function(doc,arrOfPairs) { //ERS200202 TODO consider new Document_MVN
    return arrOfPairs;
}; //ERS190711 #60900 PAOS

zData.clientChildStack=function(doc,arrOfPairs,parentId) { //ERS190810 #61570 be sure to call on new child doc
    var pairs=arrOfPairs;
    pairs=zData.clientStack(doc,pairs);
    if (XCustomSetting(doc,"ZPAPER__zChildFields__c")) { //ERS190811 not in all MPs
        pairs=zData.clientFields(doc,pairs,XCustomSetting(doc,"ZPAPER__zChildFields__c")); //ERS190803 #52661 using JSON child record type id
    }
    childStackSFId=""; //ERS210424 no stacks in copper
    if (1===1 && zData.clientReceivedDocument) { zData.recDocId=zData.clientReceivedDocument(doc,childStackSFId); } //ERS201018 #77252
    return childStackSFId;
};



alert("end copper client library"); //ERS190615 #58921
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
