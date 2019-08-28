<!--
// Name: zStack Library
// Committer: judson.bruno@zpaper.com
// Update: JPB190530 Define map
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-05-30 15:23:18","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9KUEIxOTA0MjggdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL2dsb2JhbCB2YXJpYWJsZXMKLy90aGlzIGlzIG91ciBsaXN0IG9mIHN1cHBvcnRlZCBwcm9ncmFtcwovLyBBTEwgSEFSRC1DT0RFRCBWQUxVRVMgU0hPVUxEIEJFIEZPVU5EIEhFUkUKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXAgPSB7fTsKekRhdGEuUFJPR1JBTV9aQ0hBUlRBID0gJ3pDaGFydGEnOyAvLyBQdjE5MDQyMyB1cGRhdGVkIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODk0ODEwMjUnXSA9IHpEYXRhLlBST0dSQU1fWkNIQVJUQTsgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6Q2hhcnRhMTAyNSddID0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBOyAKekRhdGEuUFJPR1JBTV9aUEFQWVJVUyA9ICd6UGFweXJ1cyc7ICAvL0pQQjE5MDQyNCB1cGRhdGVkCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4OTQ4MTAyMSddID0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUzsgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6UGFweXJ1czEwMjEnXSA9IHpEYXRhLlBST0dSQU1fWlBBUFlSVVM7IAovL3pEYXRhLlBST0dSQU1fWlJFRkVSUkFMID0gJ3pSZWZlcnJhbCc7IAovL3pEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4NzI3MDIwNCddID0gekRhdGEuUFJPR1JBTV9aUkVGRVJSQUw7ICAKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnelJlZmVycmFsJ10gPSB6RGF0YS5QUk9HUkFNX1pSRUZFUlJBTDsgIAp6RGF0YS5QUk9HUkFNX1pDQVJUQSA9ICd6Q0FSVGEnOyAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg5NDgxMDI4J10gPSB6RGF0YS5QUk9HUkFNX1pDQVJUQTsgIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnekNBUlRhMTAyOCddID0gekRhdGEuUFJPR1JBTV9aQ0FSVEE7IAoKLy9KUEIxOTA1MzAgRGVmaW5lIG1hcAp6RGF0YS5kb2N1bWVudFR5cGVNYXAgPSB7fTsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydFTlJMJ10gPSAiRW5yb2xsbWVudCBGb3JtIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydGSU4nXSA9ICJGaW5hbmNpYWwgSW5mbyI7CnpEYXRhLmRvY3VtZW50VHlwZU1hcFsnSUMnXSA9ICJJbnN1cmFuY2UgSW5mbyI7CnpEYXRhLmRvY3VtZW50VHlwZU1hcFsnQ0xJTiddID0gIkNsaW5pY2FsIE5vdGVzIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydERU0nXSA9ICJEZW1vZ3JhcGhpY3MiOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0hJUEFBJ10gPSAiSElQQUEgRm9ybSI7CnpEYXRhLmRvY3VtZW50VHlwZU1hcFsnQ09OJ10gPSAiQ29uc2VudCBGb3JtIjsKCi8vekRhdGEuUFJPR1JBTV9URUNGSURFUkEgPSAnVGVjZmlkZXJhJzsgCi8vekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg3MjcwOTM0J10gPSB6RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQTsgIAovL3pEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWydUZWNmaWRlcmEnXSA9IHpEYXRhLlBST0dSQU1fVEVDRklERVJBOyAKCi8vekRhdGEuUFJPR1JBTV9TUElOUkFaQSA9ICdTcGlucmF6YSc7IAovL3pEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4NzI3MDk3MSddID0gekRhdGEuUFJPR1JBTV9UWVNBQlJJOyAKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnU3BpbnJhemEnXSA9IHpEYXRhLlBST0dSQU1fVFlTQUJSSTsgCgp6RGF0YS5xdWV1ZUlkTWFwID17fTsKekRhdGEuUVVFVUVfWkNIQVJUQSA9ICcwMEcxVTAwMDAwME9kNU1VQVMnOwp6RGF0YS5RVUVVRV9aUEFQWVJVUyA9ICcwMEcxVTAwMDAwME9oVk9VQTAnOwovL3pEYXRhLlFVRVVFX1pSRUZFUlJBTCA9ICcwMEdmNDAwMDAwMFZucE9FQVMnOwp6RGF0YS5RVUVVRV9aQ0FSVEEgPSAnMDBHMVUwMDAwMDBPbHN2VUFDJzsgCi8vekRhdGEuUVVFVUVfVEVDRklERVJBID0gJzAwR2Y0MDAwMDAxak85S0VBVSc7IAovL3pEYXRhLlFVRVVFX1NQSU5SQVpBID0gJzAwR2Y0MDAwMDAxak8wTUVBVSc7IAoKCnpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9aQ0hBUlRBXSA9IHpEYXRhLlFVRVVFX1pDSEFSVEE7IAp6RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLlBST0dSQU1fWlBBUFlSVVNdID0gekRhdGEuUVVFVUVfWlBBUFlSVVM7IAovL3pEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9aUkVGRVJSQUxdID0gekRhdGEuUVVFVUVfWlJFRkVSUkFMOyAgCnpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9aQ0FSVEFdID0gekRhdGEuUVVFVUVfWkNBUlRBOyAKCi8vekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQV0gPSB6RGF0YS5RVUVVRV9URUNGSURFUkE7IC8vSlBCMTgwODA2IGFkZGVkIFBPQyBxdWV1ZQovL3pEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9TUElOUkFaQV0gPSB6RGF0YS5RVUVVRV9TUElOUkFaQTsgCgovLyBFTkQgT0YgSEFSRC1DT0RFRCBWQUxVRVMKCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLkFmZmlsaWF0ZSA9ICIiOwoKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiOyAKCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLmNsYXNzaWZpY2F0aW9uID0iIjsgLy8gUHYxOTA0MjMKLy9DUk4xNzAzMjQgVE9ETyBkb2MuY2xvbmUoKSBkb25lIHJpZ2h0Owp6RGF0YS5jbG9uZT1mdW5jdGlvbihkb2MpIHsKICAgdmFyIGRvYzA9W107CiAgIGZvciAodmFyIGkgaW4gZG9jKSBkb2MwW2ldPWRvY1tpXTsKICAgcmV0dXJuIGRvYzA7Cn0KCnpEYXRhLnNldGJyYW5kcHJvZ3JhbSA9IGZ1bmN0aW9uKGRvYykgewogICAgYWxlcnQoIisrKyBTVEFSVElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIGRvYy5kZWxpdmVyZWRUbyA9ICIgKyBkb2MuZGVsaXZlcmVkVG8pOwogIHpEYXRhLkFmZmlsaWF0ZSA9ICJVUyI7IAogIHpEYXRhLnByb2dyYW1OYW1lID0gIk1ha2FuYSBIZWFsdGgiOwogIGFsZXJ0KCIjIyMjIGRvYy5kZWxpdmVyZWRUbyA9ICIgKyBkb2MuZGVsaXZlcmVkVG8pOwogIC8vekRhdGEucGF0RW5yb2xsUXVldWVJZCA9IHpEYXRhLnF1ZXVlSWRNYXBbekRhdGEucHJvZ3JhbU5hbWVdOyAKICAgIGlmKGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiMTY3ODk0ODEwMjUiKSB8fCBkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoInpDaGFydGExMDI1IikpewoJCXpEYXRhLmNsYXNzaWZpY2F0aW9uID0iekNoYXJ0YSI7CiAgICB9IGVsc2UgaWYoZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCIxNjc4OTQ4MTAyOCIpIHx8IGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiekNBUlRhMTAyOCIpKXsKCQl6RGF0YS5jbGFzc2lmaWNhdGlvbiA9InpDQVJUYSI7CiAgICB9ZWxzZSBpZihkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoIjE2Nzg5NDgxMDIxIikgfHwgZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCJ6UGFweXJ1czEwMjEiKSl7CgkJekRhdGEuY2xhc3NpZmljYXRpb24gPSJ6UGFweXJ1cyI7CiAgICB9CgllbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoImNvbW11bml0eSIpKSB7CS8vSlBCMTkwNTI5IFBhcnNlIG91dCB0aGUgY2xhc3NpZmljYXRpb24gZnJvbSB0aGUgcGlja2xpc3QgdmFsdWUgdGhlIHVzZXIgY2hvc2Ugd2hlbiB1cGxvYWRpbmcgdGhlIGZpbGUuCgkJdmFyIGZyb21GaWxlID0gZG9jLmZyb21GaWxlICsgIiI7CgkJYWxlcnQoIkBAQCBmcm9tRmlsZSA9ICIgKyBmcm9tRmlsZSk7CgkJaWYgKGZyb21GaWxlLmluZGV4T2YoJy0nKSA+PSAwKSB7CgkJCXZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCctJyk7CgkJCWlmIChwYXJ0cy5sZW5ndGggPj0gMykgewoJCQkJdmFyIHBpY2tWYWx1ZSA9IHBhcnRzWzJdOwoJCQkJYWxlcnQoIkBAQCBwaWNrVmFsdWUgPSAiICsgcGlja1ZhbHVlKTsKCQkJCXpEYXRhLmNsYXNzaWZpY2F0aW9uID0gcGlja1ZhbHVlOwoJCQl9CgkJfQoJfQogICAgekRhdGEucGF0RW5yb2xsUXVldWVJZCA9IHpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuY2xhc3NpZmljYXRpb25dOyAvL1BWMTkwNDI0IHVwZGF0ZWQgZm9yIGNsYXNzaWZpY2F0aW9uIGFzIG93bmVyCiAgICBhbGVydCgiKysrIEVORElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIHpEYXRhLnByb2dyYW1OYW1lID0gIiArIHpEYXRhLnByb2dyYW1OYW1lKTsKICAgIGFsZXJ0KCJAQEAgekRhdGEuQWZmaWxpYXRlID0gIiArIHpEYXRhLkFmZmlsaWF0ZSk7Cn0KCi8qIFRoaXMgZnVuY3Rpb24gbmVlZHMgdG8gYmUgYWRkZWQgdG8gZXZlcnkgcnVsZSB0byBoZWxwIGFzc3VyZSB0aGF0IHJ1bGVzIGRvIG5vdCBnZXQgYWNjaWRlbnRhbGx5IHRyaWdnZXJlZCAqLwovKiBBZGQgdGhpcyBmdW5jdGlvbmFsaXR5IHRvIHRoZSBydWxlcyBlbmdpbmUgaXRzZWxmPyAqLwp6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb249ZnVuY3Rpb24oZG9jLHRyaWdnZXJGaWVsZCkgeyAgCiAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICBhcnJPZlBhaXJzLnB1c2godHJpZ2dlckZpZWxkLCAiIik7CiAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9Cgp6RGF0YS5pbml0aWFsaXplU3RhY2s9ZnVuY3Rpb24oZG9jLHN0YWNrRm9sZGVyLHN0YWNrSWQpIHsgCiAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogIHZhciBmaW5hbFJvb3RGb2xkZXIgPSB6RGF0YS5wcm9ncmFtTmFtZSsiLUFyY2hpdmUiOyAKICB2YXIgeXl5eU1NRm9sZGVyTmFtZSA9IHRvZGF5LmdldEZ1bGxZZWFyKCkgKyAoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpOwogIHZhciB5eXl5TU1Gb2xkZXIgPSBmaW5hbFJvb3RGb2xkZXIgKyAiLSIgKyB5eXl5TU1Gb2xkZXJOYW1lOwogIGFsZXJ0KCJAQEAgc3RhY2tGb2xkZXIgaXMgLSAiICsgc3RhY2tGb2xkZXIpOwogIGFsZXJ0KCJAQEAgZmluYWxSb290Rm9sZGVyIGlzIC0gIiArIGZpbmFsUm9vdEZvbGRlcik7CiAgYWxlcnQoIkBAQCB5eU1NRm9sZGVyIGlzIC0gIiArIHl5eXlNTUZvbGRlcik7CiAgYWxlcnQoIkBAQCBjcmVhdGluZyBuZXcgelN0YWNrIGRlc3RpbmF0aW9uIGZvbGRlciB3aXRoIG5hbWUgLSAiICsgc3RhY2tGb2xkZXIpOyAKICAvKiBSZWZyZXNoIHRoZSBjdXJyZW50IGZvbGRlciAqLwogIHJlbG9hZEJ5SWQoZG9jLCBYKGRvYywiWF9jdXJGb2xkZXIiKSk7CiAgLyogc2FtZSB2YWx1ZSBmb3IgQkFURVMgYW5kIGxhYmVsICovCiAgLyogVGhlIGZvbGRlciBzdHJ1Y3R1cmUgd2lsbCBsb29rIGxpa2UgdGhpczogLzIwMTYwOC8zQ1gzQ1gvMTIzNDU2Nzg5LVNUQUNLICovCiAgY3JlYXRlRm9sZGVyKGRvYywgZmluYWxSb290Rm9sZGVyLCB5eXl5TU1Gb2xkZXIsIHl5eXlNTUZvbGRlck5hbWUpOwogIGNyZWF0ZUZvbGRlcihkb2MsIHl5eXlNTUZvbGRlciwgc3RhY2tGb2xkZXIsIHN0YWNrRm9sZGVyKTsKICAKICBhbGVydCgiQEBAQCBNb3ZpbmcgdGhlIHpTdGFjayBkb2N1bWVudCBpbnRvIHRoZSB6U3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOyAKICAKICBtb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhJbml0aWFsaXplZCIsICJ0cnVlIik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc3RhY2tJZCk7CiAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiLSIgKyBzdGFja0lkICsgIi1TVEFDSyIpOwogIC8qIFN0YWNrIExhYmVsbGluZyBDaGFuZ2UgKi8KICB2YXIgZHRTdGFtcCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UpOwogIC8qIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCJTdGFjayAtICIgKyBkdFN0YW1wKTsgKi8KICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn0KCnpEYXRhLmNvdW50UGFnZXM9ZnVuY3Rpb24oZG9jLHBhZ2VSYW5nZSkgeyAgCiAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlLnNwbGl0KCIsIik7CiAgaWYgKCFwYWdlcykgcGFnZXM9W3BhZ2VSYW5nZV07CiAgcmV0dXJuIHBhZ2VzLmxlbmd0aCArICIiOwp9CgovKiBFTkQgKi8="},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190428 updated rule for Sales Demo Org
//global variables
//this is our list of supported programs
// ALL HARD-CODED VALUES SHOULD BE FOUND HERE
zData.supportedProgramsMap = {};
zData.PROGRAM_ZCHARTA = 'zCharta'; // Pv190423 updated 
zData.supportedProgramsMap['16789481025'] = zData.PROGRAM_ZCHARTA; 
zData.supportedProgramsMap['zCharta1025'] = zData.PROGRAM_ZCHARTA; 
zData.PROGRAM_ZPAPYRUS = 'zPapyrus';  //JPB190424 updated
zData.supportedProgramsMap['16789481021'] = zData.PROGRAM_ZPAPYRUS; 
zData.supportedProgramsMap['zPapyrus1021'] = zData.PROGRAM_ZPAPYRUS; 
//zData.PROGRAM_ZREFERRAL = 'zReferral'; 
//zData.supportedProgramsMap['16787270204'] = zData.PROGRAM_ZREFERRAL;  
//zData.supportedProgramsMap['zReferral'] = zData.PROGRAM_ZREFERRAL;  
zData.PROGRAM_ZCARTA = 'zCARTa'; 
zData.supportedProgramsMap['16789481028'] = zData.PROGRAM_ZCARTA;  
zData.supportedProgramsMap['zCARTa1028'] = zData.PROGRAM_ZCARTA; 

//JPB190530 Define map
zData.documentTypeMap = {};
zData.documentTypeMap['ENRL'] = "Enrollment Form";
zData.documentTypeMap['FIN'] = "Financial Info";
zData.documentTypeMap['IC'] = "Insurance Info";
zData.documentTypeMap['CLIN'] = "Clinical Notes";
zData.documentTypeMap['DEM'] = "Demographics";
zData.documentTypeMap['HIPAA'] = "HIPAA Form";
zData.documentTypeMap['CON'] = "Consent Form";

//zData.PROGRAM_TECFIDERA = 'Tecfidera'; 
//zData.supportedProgramsMap['16787270934'] = zData.PROGRAM_TECFIDERA;  
//zData.supportedProgramsMap['Tecfidera'] = zData.PROGRAM_TECFIDERA; 

//zData.PROGRAM_SPINRAZA = 'Spinraza'; 
//zData.supportedProgramsMap['16787270971'] = zData.PROGRAM_TYSABRI; 
//zData.supportedProgramsMap['Spinraza'] = zData.PROGRAM_TYSABRI; 

zData.queueIdMap ={};
zData.QUEUE_ZCHARTA = '00G1U000000Od5MUAS';
zData.QUEUE_ZPAPYRUS = '00G1U000000OhVOUA0';
//zData.QUEUE_ZREFERRAL = '00Gf4000000VnpOEAS';
zData.QUEUE_ZCARTA = '00G1U000000OlsvUAC'; 
//zData.QUEUE_TECFIDERA = '00Gf4000001jO9KEAU'; 
//zData.QUEUE_SPINRAZA = '00Gf4000001jO0MEAU'; 


zData.queueIdMap[zData.PROGRAM_ZCHARTA] = zData.QUEUE_ZCHARTA; 
zData.queueIdMap[zData.PROGRAM_ZPAPYRUS] = zData.QUEUE_ZPAPYRUS; 
//zData.queueIdMap[zData.PROGRAM_ZREFERRAL] = zData.QUEUE_ZREFERRAL;  
zData.queueIdMap[zData.PROGRAM_ZCARTA] = zData.QUEUE_ZCARTA; 

//zData.queueIdMap[zData.PROGRAM_TECFIDERA] = zData.QUEUE_TECFIDERA; //JPB180806 added POC queue
//zData.queueIdMap[zData.PROGRAM_SPINRAZA] = zData.QUEUE_SPINRAZA; 

// END OF HARD-CODED VALUES

zData.programName = "";
zData.Affiliate = "";

zData.patEnrollQueueId = ""; 

zData.programName = "";
zData.classification =""; // Pv190423
//CRN170324 TODO doc.clone() done right;
zData.clone=function(doc) {
   var doc0=[];
   for (var i in doc) doc0[i]=doc[i];
   return doc0;
}

zData.setbrandprogram = function(doc) {
    alert("+++ STARTING zData.setbrandprogram +++");
    alert("@@@ doc.deliveredTo = " + doc.deliveredTo);
  zData.Affiliate = "US"; 
  zData.programName = "Makana Health";
  alert("#### doc.deliveredTo = " + doc.deliveredTo);
  //zData.patEnrollQueueId = zData.queueIdMap[zData.programName]; 
    if(doc.deliveredTo.contains("16789481025") || doc.deliveredTo.contains("zCharta1025")){
		zData.classification ="zCharta";
    } else if(doc.deliveredTo.contains("16789481028") || doc.deliveredTo.contains("zCARTa1028")){
		zData.classification ="zCARTa";
    }else if(doc.deliveredTo.contains("16789481021") || doc.deliveredTo.contains("zPapyrus1021")){
		zData.classification ="zPapyrus";
    }
	else if (doc.deliveredTo.contains("community")) {	//JPB190529 Parse out the classification from the picklist value the user chose when uploading the file.
		var fromFile = doc.fromFile + "";
		alert("@@@ fromFile = " + fromFile);
		if (fromFile.indexOf('-') >= 0) {
			var parts = fromFile.split('-');
			if (parts.length >= 3) {
				var pickValue = parts[2];
				alert("@@@ pickValue = " + pickValue);
				zData.classification = pickValue;
			}
		}
	}
    zData.patEnrollQueueId = zData.queueIdMap[zData.classification]; //PV190424 updated for classification as owner
    alert("+++ ENDING zData.setbrandprogram +++");
    alert("@@@ zData.programName = " + zData.programName);
    alert("@@@ zData.Affiliate = " + zData.Affiliate);
}

/* This function needs to be added to every rule to help assure that rules do not get accidentally triggered */
/* Add this functionality to the rules engine itself? */
zData.clearTriggerCondition=function(doc,triggerField) {  
  var arrOfPairs = [];
  arrOfPairs.push(triggerField, "");
  updateDB(doc,arrOfPairs);
}

zData.initializeStack=function(doc,stackFolder,stackId) { 
  var arrOfPairs = [];
  var today = new Date();
  var curMonth = today.getMonth() + 1;
  var finalRootFolder = zData.programName+"-Archive"; 
  var yyyyMMFolderName = today.getFullYear() + (curMonth > 9 ? curMonth+"" : "0"+curMonth);
  var yyyyMMFolder = finalRootFolder + "-" + yyyyMMFolderName;
  alert("@@@ stackFolder is - " + stackFolder);
  alert("@@@ finalRootFolder is - " + finalRootFolder);
  alert("@@@ yyMMFolder is - " + yyyyMMFolder);
  alert("@@@ creating new zStack destination folder with name - " + stackFolder); 
  /* Refresh the current folder */
  reloadById(doc, X(doc,"X_curFolder"));
  /* same value for BATES and label */
  /* The folder structure will look like this: /201608/3CX3CX/123456789-STACK */
  createFolder(doc, finalRootFolder, yyyyMMFolder, yyyyMMFolderName);
  createFolder(doc, yyyyMMFolder, stackFolder, stackFolder);
  
  alert("@@@@ Moving the zStack document into the zStack folder: " + stackFolder); 
  
  moveDocument(doc,"",stackFolder);
  arrOfPairs.push("X_indexInitialized", "true");
  arrOfPairs.push("X_stack", stackId);
  arrOfPairs.push("db-BATES", doc.kbData.groupID.substring(1) + "-" + stackId + "-STACK");
  /* Stack Labelling Change */
  var dtStamp = getCurDateAndTime(doc, false);
  /* arrOfPairs.push("db-label","Stack - " + dtStamp); */
  updateDB(doc,arrOfPairs);
}

zData.countPages=function(doc,pageRange) {  
  var pages = pageRange.split(",");
  if (!pages) pages=[pageRange];
  return pages.length + "";
}

/* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
