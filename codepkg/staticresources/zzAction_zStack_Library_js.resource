<!--
// Name: zStack Library
// Committer: cory.newey@zpaper.com
// Update: json alerting kbData
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-18 20:44:08","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCgovL3RoaXMgaXMgb3VyIGxpc3Qgb2Ygc3VwcG9ydGVkIHByb2dyYW1zCi8vIEFMTCBIQVJELUNPREVEIFZBTFVFUyBTSE9VTEQgQkUgRk9VTkQgSEVSRQp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcCA9IHt9Owp6RGF0YS5QUk9HUkFNX1pDSEFSVEEgPSAnekNoYXJ0YSc7CnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4MjM1Njk5NSddID0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBOyAvL0pQQjE4MDcxMSBhZGRlZCB6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcCAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJ3pDaGFydGEnXSA9IHpEYXRhLlBST0dSQU1fWkNIQVJUQTsgLy9KUEIxODA3MTEgYWRkZWQgekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXAgCnpEYXRhLlBST0dSQU1fWlBBUFlSVVMgPSAnelBhcHlydXMnOyAgLy9KUEIgMTgwNzEwIGNoYW5nZWQgdG8gWlBBUFlSVVMgRlJPTSBaQ0hBUlRBCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4NzI3MDEyMyddID0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUzsgLy9KUEIxODA3MTEgYWRkZWQgekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXAgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6UGFweXJ1cyddID0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUzsgLy9KUEIxODA3MTEgYWRkZWQgekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXAgCnpEYXRhLlBST0dSQU1fWlJFRkVSUkFMID0gJ3pSZWZlcnJhbCc7IC8vSlBCIDE4MDcxMCBjaGFuZ2VkIHRvIFpSRUZFUlJBTCBGUk9NIFpDSEFSVEEKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg3MjcwMjA0J10gPSB6RGF0YS5QUk9HUkFNX1pSRUZFUlJBTDsgLy9KUEIxODA3MTEgYWRkZWQgekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXAgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6UmVmZXJyYWwnXSA9IHpEYXRhLlBST0dSQU1fWlJFRkVSUkFMOyAvL0pQQjE4MDcxMSBhZGRlZCB6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcCAKekRhdGEuUFJPR1JBTV9aQ0FSVEEgPSAnekNBUlRhJzsgLy9KUEIgMTgwNzEwIGNoYW5nZWQgdG8gWkNBUlRBIEZST00gWkNIQVJUQQp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODcyNzA1MzAnXSA9IHpEYXRhLlBST0dSQU1fWkNBUlRBOyAvL0pQQjE4MDcxMSBhZGRlZCB6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcCAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJ3pDQVJUYSddID0gekRhdGEuUFJPR1JBTV9aQ0FSVEE7IC8vSlBCMTgwNzExIGFkZGVkIHpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwIAoKekRhdGEuUFJPR1JBTV9URUNGSURFUkEgPSAnVGVjZmlkZXJhJzsgLy9KUEIxODA4MDcgYWRkZWQgUE9DIHByb2dyYW0KekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg3MjcwOTM0J10gPSB6RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQTsgLy9KUEIxODA4MDYgYWRkZWQgUE9DIGZheCBsaW5lIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnVGVjZmlkZXJhJ10gPSB6RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQTsgLy9KUEIxODA4MDcgYWRkZWQgUE9DIG5hbWUKCnpEYXRhLlBST0dSQU1fU1BJTlJBWkEgPSAnU3BpbnJhemEnOyAvL0pQQjE4MDgwOCBhZGRlZCBQT0MgcHJvZ3JhbQp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODcyNzA5NzEnXSA9IHpEYXRhLlBST0dSQU1fVFlTQUJSSTsgLy9KUEIxODA4MDggYWRkZWQgUE9DIGZheCBsaW5lIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnU3BpbnJhemEnXSA9IHpEYXRhLlBST0dSQU1fVFlTQUJSSTsgLy9KUEIxODA4MDggYWRkZWQgUE9DIG5hbWUKCnpEYXRhLnF1ZXVlSWRNYXAgPXt9Owp6RGF0YS5RVUVVRV9aQ0hBUlRBID0gJzAwR2Y0MDAwMDAwVm5CRUVBMCc7CnpEYXRhLlFVRVVFX1pQQVBZUlVTID0gJzAwR2Y0MDAwMDAwVm5CSkVBMCc7CnpEYXRhLlFVRVVFX1pSRUZFUlJBTCA9ICcwMEdmNDAwMDAwMFZucE9FQVMnOwp6RGF0YS5RVUVVRV9aQ0FSVEEgPSAnMDBHZjQwMDAwMDFpV2J3RUFFJzsgLy9KUEIxODAwNiBjb3JyZWN0ZWQgMTUgdG8gMTggZGlnaXQKekRhdGEuUVVFVUVfVEVDRklERVJBID0gJzAwR2Y0MDAwMDAxak85S0VBVSc7IC8vSlBCMTgwODA2IGFkZGVkIG5ldyBQT0MKekRhdGEuUVVFVUVfU1BJTlJBWkEgPSAnMDBHZjQwMDAwMDFqTzBNRUFVJzsgLy9KUEIxODEwMjIgYWRkZWQgbmV3IFBPQwoKCnpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9aQ0hBUlRBXSA9IHpEYXRhLlFVRVVFX1pDSEFSVEE7IC8vSlBCMTgwNzExIGFkZGVkIHpEYXRhLlFVRVVFCnpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9aUEFQWVJVU10gPSB6RGF0YS5RVUVVRV9aUEFQWVJVUzsgLy9KUEIxODA3MTEgYWRkZWQgekRhdGEuUVVFVUUgCnpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9aUkVGRVJSQUxdID0gekRhdGEuUVVFVUVfWlJFRkVSUkFMOyAvL0pQQjE4MDcxMSBhZGRlZCB6RGF0YS5RVUVVRSAKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1pDQVJUQV0gPSB6RGF0YS5RVUVVRV9aQ0FSVEE7IC8vSlBCMTgwNzExIGFkZGVkIHpEYXRhLlFVRVVFIAoKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQV0gPSB6RGF0YS5RVUVVRV9URUNGSURFUkE7IC8vSlBCMTgwODA2IGFkZGVkIFBPQyBxdWV1ZQp6RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLlBST0dSQU1fU1BJTlJBWkFdID0gekRhdGEuUVVFVUVfU1BJTlJBWkE7IC8vSlBCMTgxMDIyIGFkZGVkIFBPQyBxdWV1ZQovLyBFTkQgT0YgSEFSRC1DT0RFRCBWQUxVRVMKCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLkFmZmlsaWF0ZSA9ICIiOwoKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiOyAKCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CgovL0NSTjE3MDMyNCBUT0RPIGRvYy5jbG9uZSgpIGRvbmUgcmlnaHQ7CnpEYXRhLmNsb25lPWZ1bmN0aW9uKGRvYykgewogICB2YXIgZG9jMD1bXTsKICAgZm9yICh2YXIgaSBpbiBkb2MpIGRvYzBbaV09ZG9jW2ldOwogICByZXR1cm4gZG9jMDsKfQoKekRhdGEuc2V0YnJhbmRwcm9ncmFtID0gZnVuY3Rpb24oZG9jKSB7CiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7Cgl6RGF0YS5BZmZpbGlhdGUgPSAiVVMiOyAvL0pQQjE4MDcxMSBhZGRlZCB6RGF0YS5BZmZpbGlhdGUKCXpEYXRhLnByb2dyYW1OYW1lID0gekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbZG9jLmRlbGl2ZXJlZFRvXTsKCXpEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSB6RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLnByb2dyYW1OYW1lXTsgLy9KUEIxODA3MTEgYWRkZWQgekRhdGEucXVldWVJZE1hcFt6RGF0YS5wcm9ncmFtTmFtZV0KICAgIAogICAgYWxlcnQoIisrKyBFTkRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCB6RGF0YS5wcm9ncmFtTmFtZSA9ICIgKyB6RGF0YS5wcm9ncmFtTmFtZSk7CiAgICBhbGVydCgiQEBAIHpEYXRhLkFmZmlsaWF0ZSA9ICIgKyB6RGF0YS5BZmZpbGlhdGUpOwp9CgovKiBUaGlzIGZ1bmN0aW9uIG5lZWRzIHRvIGJlIGFkZGVkIHRvIGV2ZXJ5IHJ1bGUgdG8gaGVscCBhc3N1cmUgdGhhdCBydWxlcyBkbyBub3QgZ2V0IGFjY2lkZW50YWxseSB0cmlnZ2VyZWQgKi8KLyogQWRkIHRoaXMgZnVuY3Rpb25hbGl0eSB0byB0aGUgcnVsZXMgZW5naW5lIGl0c2VsZj8gKi8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uPWZ1bmN0aW9uKGRvYyx0cmlnZ2VyRmllbGQpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogIGFyck9mUGFpcnMucHVzaCh0cmlnZ2VyRmllbGQsICIiKTsKICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn0KCnpEYXRhLmluaXRpYWxpemVTdGFjaz1mdW5jdGlvbihkb2Msc3RhY2tGb2xkZXIsc3RhY2tJZCkgeyAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogIHZhciBmaW5hbFJvb3RGb2xkZXIgPSB6RGF0YS5wcm9ncmFtTmFtZSsiLUFyY2hpdmUiOyAvL2JhdGVzIG9mIHRoZSBBcmNoaXZlIGZvbGRlcgogIHZhciB5eXl5TU1Gb2xkZXJOYW1lID0gdG9kYXkuZ2V0RnVsbFllYXIoKSArIChjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCk7CiAgdmFyIHl5eXlNTUZvbGRlciA9IGZpbmFsUm9vdEZvbGRlciArICItIiArIHl5eXlNTUZvbGRlck5hbWU7CiAgYWxlcnQoIkBAQCBzdGFja0ZvbGRlciBpcyAtICIgKyBzdGFja0ZvbGRlcik7CiAgYWxlcnQoIkBAQCBmaW5hbFJvb3RGb2xkZXIgaXMgLSAiICsgZmluYWxSb290Rm9sZGVyKTsKICBhbGVydCgiQEBAIHl5TU1Gb2xkZXIgaXMgLSAiICsgeXl5eU1NRm9sZGVyKTsKICBhbGVydCgiQEBAIGNyZWF0aW5nIG5ldyB6U3RhY2sgZGVzdGluYXRpb24gZm9sZGVyIHdpdGggbmFtZSAtICIgKyBzdGFja0ZvbGRlcik7IC8vSlBCMTgwNzEwIGNoYW5nZWQgdG8gc3RhY2sgdG8gelN0YWNrCiAgLyogUmVmcmVzaCB0aGUgY3VycmVudCBmb2xkZXIgKi8KICByZWxvYWRCeUlkKGRvYywgWChkb2MsIlhfY3VyRm9sZGVyIikpOwogIC8qIHNhbWUgdmFsdWUgZm9yIEJBVEVTIGFuZCBsYWJlbCAqLwogIC8qIFRoZSBmb2xkZXIgc3RydWN0dXJlIHdpbGwgbG9vayBsaWtlIHRoaXM6IC8yMDE2MDgvM0NYM0NYLzEyMzQ1Njc4OS1TVEFDSyAqLwogIGNyZWF0ZUZvbGRlcihkb2MsIGZpbmFsUm9vdEZvbGRlciwgeXl5eU1NRm9sZGVyLCB5eXl5TU1Gb2xkZXJOYW1lKTsKICBjcmVhdGVGb2xkZXIoZG9jLCB5eXl5TU1Gb2xkZXIsIHN0YWNrRm9sZGVyLCBzdGFja0ZvbGRlcik7CiAgCiAgYWxlcnQoIkBAQEAgTW92aW5nIHRoZSB6U3RhY2sgZG9jdW1lbnQgaW50byB0aGUgelN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsgLy9KUEIxODA3MTAgY2hhbmdlZCB0byBzdGFjayB0byB6U3RhY2sKICAKICBtb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhJbml0aWFsaXplZCIsICJ0cnVlIik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc3RhY2tJZCk7CiAgYWxlcnQoIkBAQEBAQEBAQEBAIGRvYy5rYkRhdGEgUHJvcGVydGllcyBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAiKTsKICBhbGVydCgiQEAga2JEYXRhID0gIiArIGRvYy5rYkRhdGEpOwogIGFsZXJ0KCJAQCBrYkRhdGEgKGluIEpTT04pOiAiICsgSlNPTi5zdHJpbmdpZnkoZG9jLmtiRGF0YSkpOwogIGZvciAodmFyIHByb3AgaW4gZG9jLmtiRGF0YSkgewogICAgICAvL2lmIChkb2Mua2JEYXRhLmhhc093blByb3BlcnR5KHByb3ApKSB7CiAgICAgICAgICBhbGVydCgiQEAga2JEYXRhIHByb3BlcnR5OiBrZXkgPSAiICsgcHJvcCArICIsIHZhbHVlID0gIiArIGRvYy5rYkRhdGFbcHJvcF0pOwogICAgICAvL30KICB9CiAgYWxlcnQoIkBAQEAgZG9jLmtiRGF0YS5ncm91cElEID0gIiArIGRvYy5rYkRhdGEuZ3JvdXBJRCk7CiAgYWxlcnQoIkBAQEBAQEBAQEBAIGRvYy5rYkRhdGEgUHJvcGVydGllcyAtIEVORCBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAiKTsKICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgZG9jLmtiRGF0YS5ncm91cElELnN1YnN0cmluZygxKSArICItIiArIHN0YWNrSWQgKyAiLVNUQUNLIik7CiAgLyogU3RhY2sgTGFiZWxsaW5nIENoYW5nZSAqLwogIHZhciBkdFN0YW1wID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSk7CiAgLyogYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIlN0YWNrIC0gIiArIGR0U3RhbXApOyAqLwogIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfQoKekRhdGEuY291bnRQYWdlcz1mdW5jdGlvbihkb2MscGFnZVJhbmdlKSB7ICAvL0VSUzE3MDUxMiBtb3ZlZCB0byBsaWJyYXJ5CiAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlLnNwbGl0KCIsIik7CiAgaWYgKCFwYWdlcykgcGFnZXM9W3BhZ2VSYW5nZV07CiAgcmV0dXJuIHBhZ2VzLmxlbmd0aCArICIiOwp9CgovKiBFTkQgKi8="},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//global variables

//this is our list of supported programs
// ALL HARD-CODED VALUES SHOULD BE FOUND HERE
zData.supportedProgramsMap = {};
zData.PROGRAM_ZCHARTA = 'zCharta';
zData.supportedProgramsMap['16782356995'] = zData.PROGRAM_ZCHARTA; //JPB180711 added zData.supportedProgramsMap 
zData.supportedProgramsMap['zCharta'] = zData.PROGRAM_ZCHARTA; //JPB180711 added zData.supportedProgramsMap 
zData.PROGRAM_ZPAPYRUS = 'zPapyrus';  //JPB 180710 changed to ZPAPYRUS FROM ZCHARTA
zData.supportedProgramsMap['16787270123'] = zData.PROGRAM_ZPAPYRUS; //JPB180711 added zData.supportedProgramsMap 
zData.supportedProgramsMap['zPapyrus'] = zData.PROGRAM_ZPAPYRUS; //JPB180711 added zData.supportedProgramsMap 
zData.PROGRAM_ZREFERRAL = 'zReferral'; //JPB 180710 changed to ZREFERRAL FROM ZCHARTA
zData.supportedProgramsMap['16787270204'] = zData.PROGRAM_ZREFERRAL; //JPB180711 added zData.supportedProgramsMap 
zData.supportedProgramsMap['zReferral'] = zData.PROGRAM_ZREFERRAL; //JPB180711 added zData.supportedProgramsMap 
zData.PROGRAM_ZCARTA = 'zCARTa'; //JPB 180710 changed to ZCARTA FROM ZCHARTA
zData.supportedProgramsMap['16787270530'] = zData.PROGRAM_ZCARTA; //JPB180711 added zData.supportedProgramsMap 
zData.supportedProgramsMap['zCARTa'] = zData.PROGRAM_ZCARTA; //JPB180711 added zData.supportedProgramsMap 

zData.PROGRAM_TECFIDERA = 'Tecfidera'; //JPB180807 added POC program
zData.supportedProgramsMap['16787270934'] = zData.PROGRAM_TECFIDERA; //JPB180806 added POC fax line 
zData.supportedProgramsMap['Tecfidera'] = zData.PROGRAM_TECFIDERA; //JPB180807 added POC name

zData.PROGRAM_SPINRAZA = 'Spinraza'; //JPB180808 added POC program
zData.supportedProgramsMap['16787270971'] = zData.PROGRAM_TYSABRI; //JPB180808 added POC fax line 
zData.supportedProgramsMap['Spinraza'] = zData.PROGRAM_TYSABRI; //JPB180808 added POC name

zData.queueIdMap ={};
zData.QUEUE_ZCHARTA = '00Gf4000000VnBEEA0';
zData.QUEUE_ZPAPYRUS = '00Gf4000000VnBJEA0';
zData.QUEUE_ZREFERRAL = '00Gf4000000VnpOEAS';
zData.QUEUE_ZCARTA = '00Gf4000001iWbwEAE'; //JPB18006 corrected 15 to 18 digit
zData.QUEUE_TECFIDERA = '00Gf4000001jO9KEAU'; //JPB180806 added new POC
zData.QUEUE_SPINRAZA = '00Gf4000001jO0MEAU'; //JPB181022 added new POC


zData.queueIdMap[zData.PROGRAM_ZCHARTA] = zData.QUEUE_ZCHARTA; //JPB180711 added zData.QUEUE
zData.queueIdMap[zData.PROGRAM_ZPAPYRUS] = zData.QUEUE_ZPAPYRUS; //JPB180711 added zData.QUEUE 
zData.queueIdMap[zData.PROGRAM_ZREFERRAL] = zData.QUEUE_ZREFERRAL; //JPB180711 added zData.QUEUE 
zData.queueIdMap[zData.PROGRAM_ZCARTA] = zData.QUEUE_ZCARTA; //JPB180711 added zData.QUEUE 

zData.queueIdMap[zData.PROGRAM_TECFIDERA] = zData.QUEUE_TECFIDERA; //JPB180806 added POC queue
zData.queueIdMap[zData.PROGRAM_SPINRAZA] = zData.QUEUE_SPINRAZA; //JPB181022 added POC queue
// END OF HARD-CODED VALUES

zData.programName = "";
zData.Affiliate = "";

zData.patEnrollQueueId = ""; 

zData.programName = "";

//CRN170324 TODO doc.clone() done right;
zData.clone=function(doc) {
   var doc0=[];
   for (var i in doc) doc0[i]=doc[i];
   return doc0;
}

zData.setbrandprogram = function(doc) {
    alert("+++ STARTING zData.setbrandprogram +++");
    alert("@@@ doc.deliveredTo = " + doc.deliveredTo);
	zData.Affiliate = "US"; //JPB180711 added zData.Affiliate
	zData.programName = zData.supportedProgramsMap[doc.deliveredTo];
	zData.patEnrollQueueId = zData.queueIdMap[zData.programName]; //JPB180711 added zData.queueIdMap[zData.programName]
    
    alert("+++ ENDING zData.setbrandprogram +++");
    alert("@@@ zData.programName = " + zData.programName);
    alert("@@@ zData.Affiliate = " + zData.Affiliate);
}

/* This function needs to be added to every rule to help assure that rules do not get accidentally triggered */
/* Add this functionality to the rules engine itself? */
zData.clearTriggerCondition=function(doc,triggerField) {  //ERS170512 moved to library
  var arrOfPairs = [];
  arrOfPairs.push(triggerField, "");
  updateDB(doc,arrOfPairs);
}

zData.initializeStack=function(doc,stackFolder,stackId) { //ERS170512 moved to library
  var arrOfPairs = [];
  var today = new Date();
  var curMonth = today.getMonth() + 1;
  var finalRootFolder = zData.programName+"-Archive"; //bates of the Archive folder
  var yyyyMMFolderName = today.getFullYear() + (curMonth > 9 ? curMonth+"" : "0"+curMonth);
  var yyyyMMFolder = finalRootFolder + "-" + yyyyMMFolderName;
  alert("@@@ stackFolder is - " + stackFolder);
  alert("@@@ finalRootFolder is - " + finalRootFolder);
  alert("@@@ yyMMFolder is - " + yyyyMMFolder);
  alert("@@@ creating new zStack destination folder with name - " + stackFolder); //JPB180710 changed to stack to zStack
  /* Refresh the current folder */
  reloadById(doc, X(doc,"X_curFolder"));
  /* same value for BATES and label */
  /* The folder structure will look like this: /201608/3CX3CX/123456789-STACK */
  createFolder(doc, finalRootFolder, yyyyMMFolder, yyyyMMFolderName);
  createFolder(doc, yyyyMMFolder, stackFolder, stackFolder);
  
  alert("@@@@ Moving the zStack document into the zStack folder: " + stackFolder); //JPB180710 changed to stack to zStack
  
  moveDocument(doc,"",stackFolder);
  arrOfPairs.push("X_indexInitialized", "true");
  arrOfPairs.push("X_stack", stackId);
  alert("@@@@@@@@@@@ doc.kbData Properties @@@@@@@@@@@@@@@@@@@@@@@@@@@");
  alert("@@ kbData = " + doc.kbData);
  alert("@@ kbData (in JSON): " + JSON.stringify(doc.kbData));
  for (var prop in doc.kbData) {
      //if (doc.kbData.hasOwnProperty(prop)) {
          alert("@@ kbData property: key = " + prop + ", value = " + doc.kbData[prop]);
      //}
  }
  alert("@@@@ doc.kbData.groupID = " + doc.kbData.groupID);
  alert("@@@@@@@@@@@ doc.kbData Properties - END @@@@@@@@@@@@@@@@@@@@@@@@@@@");
  arrOfPairs.push("db-BATES", doc.kbData.groupID.substring(1) + "-" + stackId + "-STACK");
  /* Stack Labelling Change */
  var dtStamp = getCurDateAndTime(doc, false);
  /* arrOfPairs.push("db-label","Stack - " + dtStamp); */
  updateDB(doc,arrOfPairs);
}

zData.countPages=function(doc,pageRange) {  //ERS170512 moved to library
  var pages = pageRange.split(",");
  if (!pages) pages=[pageRange];
  return pages.length + "";
}

/* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
