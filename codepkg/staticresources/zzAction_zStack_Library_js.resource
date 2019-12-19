<!--
// Name: zStack Library
// Committer: judson.bruno@zpaper.com
// Update: JPB191213 updated rule for Sales Demo Org
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-12-13 19:36:13","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9KUEIxOTEyMTMgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL2dsb2JhbCB2YXJpYWJsZXMKLy90aGlzIGlzIG91ciBsaXN0IG9mIHN1cHBvcnRlZCBwcm9ncmFtcwovLyBBTEwgSEFSRC1DT0RFRCBWQUxVRVMgU0hPVUxEIEJFIEZPVU5EIEhFUkUKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXAgPSB7fTsKekRhdGEuUFJPR1JBTV9aQ0hBUlRBID0gJ3pDaGFydGEnOyAvLyBQdjE5MDQyMyB1cGRhdGVkIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODk0ODEwMjUnXSA9IHpEYXRhLlBST0dSQU1fWkNIQVJUQTsgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6Q2hhcnRhMTAyNSddID0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBOyAKekRhdGEuUFJPR1JBTV9aUEFQWVJVUyA9ICd6UGFweXJ1cyc7ICAvL0pQQjE5MDQyNCB1cGRhdGVkCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4OTQ4MTAyMSddID0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUzsgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6UGFweXJ1czEwMjEnXSA9IHpEYXRhLlBST0dSQU1fWlBBUFlSVVM7IAp6RGF0YS5QUk9HUkFNX1pDQVJUQSA9ICd6Q0FSVGEnOyAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg5NDgxMDI4J10gPSB6RGF0YS5QUk9HUkFNX1pDQVJUQTsgIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnekNBUlRhMTAyOCddID0gekRhdGEuUFJPR1JBTV9aQ0FSVEE7IAp6RGF0YS5QUk9HUkFNX0NDT0ZJVCA9ICdDQ09maXQnOyAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg5NDg5OTk3J10gPSB6RGF0YS5QUk9HUkFNX0NDT0ZJVDsgIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnQ0NPZml0OTk5NyddID0gekRhdGEuUFJPR1JBTV9DQ09GSVQ7ICAKCi8vSlBCMTkwNjA0IERlZmluZSBtYXAKekRhdGEuZG9jdW1lbnRUeXBlTWFwID0ge307CnpEYXRhLmRvY3VtZW50VHlwZU1hcFsnRU5STCddID0gIkVucm9sbG1lbnQgRm9ybSI7CnpEYXRhLmRvY3VtZW50VHlwZU1hcFsnRklOJ10gPSAiRmluYW5jaWFsIEluZm8iOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0lDJ10gPSAiSW5zdXJhbmNlIEluZm8iOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0NMSU4nXSA9ICJDbGluaWNhbCBOb3RlcyI7CnpEYXRhLmRvY3VtZW50VHlwZU1hcFsnREVNJ10gPSAiRGVtb2dyYXBoaWNzIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydISVBBQSddID0gIkhJUEFBIEZvcm0iOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0NPTiddID0gIkNvbnNlbnQgRm9ybSI7CnpEYXRhLmRvY3VtZW50VHlwZU1hcFsnTkVXJ10gPSAiRG9jdW1lbnQgU3RhY2siOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ1BSU0MnXSA9ICJQcmVzY3JpcHRpb24iOyAvL0pQQjE5MTAwMiBhZGRlZAp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0ZJVCddID0gIkZJVCBSZXF1aXNpdGlvbiI7IC8vSlBCMTkxMjExIGFkZGVkCgovL3pEYXRhLlBST0dSQU1fUEFMVkVPID0gJ1BhbHZlbyc7IAovL3pEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4NzI3MDkzNCddID0gekRhdGEuUFJPR1JBTV9QQUxWRU87ICAKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnUGFsdmVvJ10gPSB6RGF0YS5QUk9HUkFNX1BBTFZFTzsgCi8vekRhdGEuUFJPR1JBTV9WSU5ESUNPID0gJ1ZpbmRpY28nOyAKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODcyNzA5NzEnXSA9IHpEYXRhLlBST0dSQU1fVklORElDTzsgCi8vekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJ1ZpbmRpY28nXSA9IHpEYXRhLlBST0dSQU1fVklORElDTzsgCgp6RGF0YS5xdWV1ZUlkTWFwID17fTsKekRhdGEuUVVFVUVfWkNIQVJUQSA9ICcwMEcxVTAwMDAwME9kNU1VQVMnOwp6RGF0YS5RVUVVRV9aUEFQWVJVUyA9ICcwMEcxVTAwMDAwME9oVk9VQTAnOwp6RGF0YS5RVUVVRV9aQ0FSVEEgPSAnMDBHMVUwMDAwMDBPbHN2VUFDJzsgCnpEYXRhLlFVRVVFX0NDT0ZJVCA9ICcwMEcxVTAwMDAwMG80aEVVQVEnOwovL3pEYXRhLlFVRVVFX1BBTFZFTyA9ICcwMEdmNDAwMDAwMWpPOUtFQVUnOyAKLy96RGF0YS5RVUVVRV9WSU5ESUNPID0gJzAwR2Y0MDAwMDAxak8wTUVBVSc7IAoKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1pDSEFSVEFdID0gekRhdGEuUVVFVUVfWkNIQVJUQTsgCnpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9aUEFQWVJVU10gPSB6RGF0YS5RVUVVRV9aUEFQWVJVUzsgCnpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9aQ0FSVEFdID0gekRhdGEuUVVFVUVfWkNBUlRBOyAKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX0NDT0ZJVF0gPSB6RGF0YS5RVUVVRV9DQ09GSVQ7Ci8vekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1BBTFZFT10gPSB6RGF0YS5RVUVVRV9QQUxWRU87IC8vSlBCMTgwODA2IGFkZGVkIFBPQyBxdWV1ZQovL3pEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9WSU5ESUNPXSA9IHpEYXRhLlFVRVVFX1ZJTkRJQ087IAoKLy8gRU5EIE9GIEhBUkQtQ09ERUQgVkFMVUVTCgp6RGF0YS5wcm9ncmFtTmFtZSA9ICIiOwp6RGF0YS5BZmZpbGlhdGUgPSAiIjsKCnpEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSAiIjsgCgp6RGF0YS5wcm9ncmFtTmFtZSA9ICIiOwp6RGF0YS5jbGFzc2lmaWNhdGlvbiA9IiI7IC8vIFB2MTkwNDIzCi8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmU9ZnVuY3Rpb24oZG9jKSB7CiAgIHZhciBkb2MwPVtdOwogICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXT1kb2NbaV07CiAgIHJldHVybiBkb2MwOwp9Cgp6RGF0YS5zZXRicmFuZHByb2dyYW0gPSBmdW5jdGlvbihkb2MpIHsKICAgIGFsZXJ0KCIrKysgU1RBUlRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCBkb2MuZGVsaXZlcmVkVG8gPSAiICsgZG9jLmRlbGl2ZXJlZFRvKTsKICB6RGF0YS5BZmZpbGlhdGUgPSAiVVMiOyAKICB6RGF0YS5wcm9ncmFtTmFtZSA9ICJNYWthbmEgSGVhbHRoIjsKICBhbGVydCgiIyMjIyBkb2MuZGVsaXZlcmVkVG8gPSAiICsgZG9jLmRlbGl2ZXJlZFRvKTsKICAvL3pEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSB6RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLnByb2dyYW1OYW1lXTsgCiAgICBpZihkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoIjE2Nzg5NDgxMDI1IikgfHwgZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCJ6Q2hhcnRhMTAyNSIpKXsKCQl6RGF0YS5jbGFzc2lmaWNhdGlvbiA9InpDaGFydGEiOwogICAgfSBlbHNlIGlmKGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiMTY3ODk0ODEwMjgiKSB8fCBkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoInpDQVJUYTEwMjgiKSl7CgkJekRhdGEuY2xhc3NpZmljYXRpb24gPSJ6Q0FSVGEiOwogICAgfWVsc2UgaWYoZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCIxNjc4OTQ4MTAyMSIpIHx8IGRvYy5kZWxpdmVyZWRUby5jb250YWlucygielBhcHlydXMxMDIxIikpewoJCXpEYXRhLmNsYXNzaWZpY2F0aW9uID0ielBhcHlydXMiOwogICAgfWVsc2UgaWYoZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCIxNjc4OTQ4OTk5NyIpIHx8IGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiQ0NPZml0OTk5NyIpKXsKCQl6RGF0YS5jbGFzc2lmaWNhdGlvbiA9IkNDT2ZpdCI7CiAgICB9CgllbHNlIGlmIChkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoImNvbW11bml0eSIpKSB7CS8vSlBCMTkwNTI5IFBhcnNlIG91dCB0aGUgY2xhc3NpZmljYXRpb24gZnJvbSB0aGUgcGlja2xpc3QgdmFsdWUgdGhlIHVzZXIgY2hvc2Ugd2hlbiB1cGxvYWRpbmcgdGhlIGZpbGUuCgkJdmFyIGZyb21GaWxlID0gZG9jLmZyb21GaWxlICsgIiI7CgkJYWxlcnQoIkBAQCBmcm9tRmlsZSA9ICIgKyBmcm9tRmlsZSk7CgkJaWYgKGZyb21GaWxlLmluZGV4T2YoJy0nKSA+PSAwKSB7CgkJCXZhciBwYXJ0cyA9IGZyb21GaWxlLnNwbGl0KCctJyk7CgkJCWlmIChwYXJ0cy5sZW5ndGggPj0gMykgewoJCQkJdmFyIHBpY2tWYWx1ZSA9IHBhcnRzWzJdOwoJCQkJYWxlcnQoIkBAQCBwaWNrVmFsdWUgPSAiICsgcGlja1ZhbHVlKTsKCQkJCXpEYXRhLmNsYXNzaWZpY2F0aW9uID0gcGlja1ZhbHVlOwoJCQl9CgkJfQoJfQogICAgekRhdGEucGF0RW5yb2xsUXVldWVJZCA9IHpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuY2xhc3NpZmljYXRpb25dOyAvL1BWMTkwNDI0IHVwZGF0ZWQgZm9yIGNsYXNzaWZpY2F0aW9uIGFzIG93bmVyCiAgICBhbGVydCgiKysrIEVORElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIHpEYXRhLnByb2dyYW1OYW1lID0gIiArIHpEYXRhLnByb2dyYW1OYW1lKTsKICAgIGFsZXJ0KCJAQEAgekRhdGEuQWZmaWxpYXRlID0gIiArIHpEYXRhLkFmZmlsaWF0ZSk7Cn0KCi8qIFRoaXMgZnVuY3Rpb24gbmVlZHMgdG8gYmUgYWRkZWQgdG8gZXZlcnkgcnVsZSB0byBoZWxwIGFzc3VyZSB0aGF0IHJ1bGVzIGRvIG5vdCBnZXQgYWNjaWRlbnRhbGx5IHRyaWdnZXJlZCAqLwovKiBBZGQgdGhpcyBmdW5jdGlvbmFsaXR5IHRvIHRoZSBydWxlcyBlbmdpbmUgaXRzZWxmPyAqLwp6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb249ZnVuY3Rpb24oZG9jLHRyaWdnZXJGaWVsZCkgeyAgCiAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICBhcnJPZlBhaXJzLnB1c2godHJpZ2dlckZpZWxkLCAiIik7CiAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9Cgp6RGF0YS5pbml0aWFsaXplU3RhY2s9ZnVuY3Rpb24oZG9jLHN0YWNrRm9sZGVyLHN0YWNrSWQpIHsgCiAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICB2YXIgdG9kYXkgPSBuZXcgRGF0ZSgpOwogIHZhciBjdXJNb250aCA9IHRvZGF5LmdldE1vbnRoKCkgKyAxOwogIHZhciBmaW5hbFJvb3RGb2xkZXIgPSB6RGF0YS5wcm9ncmFtTmFtZSsiLUFyY2hpdmUiOyAKICB2YXIgeXl5eU1NRm9sZGVyTmFtZSA9IHRvZGF5LmdldEZ1bGxZZWFyKCkgKyAoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpOwogIHZhciB5eXl5TU1Gb2xkZXIgPSBmaW5hbFJvb3RGb2xkZXIgKyAiLSIgKyB5eXl5TU1Gb2xkZXJOYW1lOwogIGFsZXJ0KCJAQEAgc3RhY2tGb2xkZXIgaXMgLSAiICsgc3RhY2tGb2xkZXIpOwogIGFsZXJ0KCJAQEAgZmluYWxSb290Rm9sZGVyIGlzIC0gIiArIGZpbmFsUm9vdEZvbGRlcik7CiAgYWxlcnQoIkBAQCB5eU1NRm9sZGVyIGlzIC0gIiArIHl5eXlNTUZvbGRlcik7CiAgYWxlcnQoIkBAQCBjcmVhdGluZyBuZXcgelN0YWNrIGRlc3RpbmF0aW9uIGZvbGRlciB3aXRoIG5hbWUgLSAiICsgc3RhY2tGb2xkZXIpOyAKICAvKiBSZWZyZXNoIHRoZSBjdXJyZW50IGZvbGRlciAqLwogIHJlbG9hZEJ5SWQoZG9jLCBYKGRvYywiWF9jdXJGb2xkZXIiKSk7CiAgLyogc2FtZSB2YWx1ZSBmb3IgQkFURVMgYW5kIGxhYmVsICovCiAgLyogVGhlIGZvbGRlciBzdHJ1Y3R1cmUgd2lsbCBsb29rIGxpa2UgdGhpczogLzIwMTYwOC8zQ1gzQ1gvMTIzNDU2Nzg5LVNUQUNLICovCiAgY3JlYXRlRm9sZGVyKGRvYywgZmluYWxSb290Rm9sZGVyLCB5eXl5TU1Gb2xkZXIsIHl5eXlNTUZvbGRlck5hbWUpOwogIGNyZWF0ZUZvbGRlcihkb2MsIHl5eXlNTUZvbGRlciwgc3RhY2tGb2xkZXIsIHN0YWNrRm9sZGVyKTsKICAKICBhbGVydCgiQEBAQCBNb3ZpbmcgdGhlIHpTdGFjayBkb2N1bWVudCBpbnRvIHRoZSB6U3RhY2sgZm9sZGVyOiAiICsgc3RhY2tGb2xkZXIpOyAKICAKICBtb3ZlRG9jdW1lbnQoZG9jLCIiLHN0YWNrRm9sZGVyKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfaW5kZXhJbml0aWFsaXplZCIsICJ0cnVlIik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc3RhY2tJZCk7CiAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIGRvYy5rYkRhdGEuZ3JvdXBJRC5zdWJzdHJpbmcoMSkgKyAiLSIgKyBzdGFja0lkICsgIi1TVEFDSyIpOwogIC8qIFN0YWNrIExhYmVsbGluZyBDaGFuZ2UgKi8KICB2YXIgZHRTdGFtcCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UpOwogIC8qIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCJTdGFjayAtICIgKyBkdFN0YW1wKTsgKi8KICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn0KCnpEYXRhLmNvdW50UGFnZXM9ZnVuY3Rpb24oZG9jLHBhZ2VSYW5nZSkgeyAgCiAgdmFyIHBhZ2VzID0gcGFnZVJhbmdlLnNwbGl0KCIsIik7CiAgaWYgKCFwYWdlcykgcGFnZXM9W3BhZ2VSYW5nZV07CiAgcmV0dXJuIHBhZ2VzLmxlbmd0aCArICIiOwp9CgovKiBFTkQgKi8="},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB191213 updated rule for Sales Demo Org
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
zData.PROGRAM_ZCARTA = 'zCARTa'; 
zData.supportedProgramsMap['16789481028'] = zData.PROGRAM_ZCARTA;  
zData.supportedProgramsMap['zCARTa1028'] = zData.PROGRAM_ZCARTA; 
zData.PROGRAM_CCOFIT = 'CCOfit'; 
zData.supportedProgramsMap['16789489997'] = zData.PROGRAM_CCOFIT;  
zData.supportedProgramsMap['CCOfit9997'] = zData.PROGRAM_CCOFIT;  

//JPB190604 Define map
zData.documentTypeMap = {};
zData.documentTypeMap['ENRL'] = "Enrollment Form";
zData.documentTypeMap['FIN'] = "Financial Info";
zData.documentTypeMap['IC'] = "Insurance Info";
zData.documentTypeMap['CLIN'] = "Clinical Notes";
zData.documentTypeMap['DEM'] = "Demographics";
zData.documentTypeMap['HIPAA'] = "HIPAA Form";
zData.documentTypeMap['CON'] = "Consent Form";
zData.documentTypeMap['NEW'] = "Document Stack";
zData.documentTypeMap['PRSC'] = "Prescription"; //JPB191002 added
zData.documentTypeMap['FIT'] = "FIT Requisition"; //JPB191211 added

//zData.PROGRAM_PALVEO = 'Palveo'; 
//zData.supportedProgramsMap['16787270934'] = zData.PROGRAM_PALVEO;  
//zData.supportedProgramsMap['Palveo'] = zData.PROGRAM_PALVEO; 
//zData.PROGRAM_VINDICO = 'Vindico'; 
//zData.supportedProgramsMap['16787270971'] = zData.PROGRAM_VINDICO; 
//zData.supportedProgramsMap['Vindico'] = zData.PROGRAM_VINDICO; 

zData.queueIdMap ={};
zData.QUEUE_ZCHARTA = '00G1U000000Od5MUAS';
zData.QUEUE_ZPAPYRUS = '00G1U000000OhVOUA0';
zData.QUEUE_ZCARTA = '00G1U000000OlsvUAC'; 
zData.QUEUE_CCOFIT = '00G1U000000o4hEUAQ';
//zData.QUEUE_PALVEO = '00Gf4000001jO9KEAU'; 
//zData.QUEUE_VINDICO = '00Gf4000001jO0MEAU'; 

zData.queueIdMap[zData.PROGRAM_ZCHARTA] = zData.QUEUE_ZCHARTA; 
zData.queueIdMap[zData.PROGRAM_ZPAPYRUS] = zData.QUEUE_ZPAPYRUS; 
zData.queueIdMap[zData.PROGRAM_ZCARTA] = zData.QUEUE_ZCARTA; 
zData.queueIdMap[zData.PROGRAM_CCOFIT] = zData.QUEUE_CCOFIT;
//zData.queueIdMap[zData.PROGRAM_PALVEO] = zData.QUEUE_PALVEO; //JPB180806 added POC queue
//zData.queueIdMap[zData.PROGRAM_VINDICO] = zData.QUEUE_VINDICO; 

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
    }else if(doc.deliveredTo.contains("16789489997") || doc.deliveredTo.contains("CCOfit9997")){
		zData.classification ="CCOfit";
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
