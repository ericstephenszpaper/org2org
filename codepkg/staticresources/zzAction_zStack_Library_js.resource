<!--
// Name: zStack Library
// Committer: judson.bruno@zpaper.com
// Update: JPB190430 updated rule for Sales Demo Org
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-30 11:44:31","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9KUEIxOTA0MzAgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL2dsb2JhbCB2YXJpYWJsZXMKLy90aGlzIGlzIG91ciBsaXN0IG9mIHN1cHBvcnRlZCBwcm9ncmFtcwovLyBBTEwgSEFSRC1DT0RFRCBWQUxVRVMgU0hPVUxEIEJFIEZPVU5EIEhFUkUKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXAgPSB7fTsKekRhdGEuUFJPR1JBTV9aQ0hBUlRBID0gJ3pDaGFydGEnOyAvLyBQdjE5MDQyMyB1cGRhdGVkIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODk0ODEwMjUnXSA9IHpEYXRhLlBST0dSQU1fWkNIQVJUQTsgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6Q2hhcnRhMTAyNSddID0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBOyAKekRhdGEuUFJPR1JBTV9aUEFQWVJVUyA9ICd6UGFweXJ1cyc7ICAvL0pQQjE5MDQyNCB1cGRhdGVkCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4OTQ4MTAyMSddID0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUzsgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6UGFweXJ1czEwMjEnXSA9IHpEYXRhLlBST0dSQU1fWlBBUFlSVVM7IAovL3pEYXRhLlBST0dSQU1fWlJFRkVSUkFMID0gJ3pSZWZlcnJhbCc7IAovL3pEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4NzI3MDIwNCddID0gekRhdGEuUFJPR1JBTV9aUkVGRVJSQUw7ICAKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnelJlZmVycmFsJ10gPSB6RGF0YS5QUk9HUkFNX1pSRUZFUlJBTDsgIAp6RGF0YS5QUk9HUkFNX1pDQVJUQSA9ICd6Q0FSVGEnOyAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg5NDgxMDI4J10gPSB6RGF0YS5QUk9HUkFNX1pDQVJUQTsgIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnekNBUlRhMTAyOCddID0gekRhdGEuUFJPR1JBTV9aQ0FSVEE7IAoKLy96RGF0YS5QUk9HUkFNX1RFQ0ZJREVSQSA9ICdUZWNmaWRlcmEnOyAKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODcyNzA5MzQnXSA9IHpEYXRhLlBST0dSQU1fVEVDRklERVJBOyAgCi8vekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJ1RlY2ZpZGVyYSddID0gekRhdGEuUFJPR1JBTV9URUNGSURFUkE7IAoKLy96RGF0YS5QUk9HUkFNX1NQSU5SQVpBID0gJ1NwaW5yYXphJzsgCi8vekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg3MjcwOTcxJ10gPSB6RGF0YS5QUk9HUkFNX1RZU0FCUkk7IAovL3pEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWydTcGlucmF6YSddID0gekRhdGEuUFJPR1JBTV9UWVNBQlJJOyAKekRhdGEuZG9jdW1lbnRUeXBlTWFwPXsgIkVOUkwiOiJFbnJvbGxtZW50IEZvcm0iLCAiQUNLIjoiQWNrbm93bGVkZ2VtZW50IExldHRlciIsICJBTiI6IkFwcHJvdmFsIE5vdGljZSIsICJCSSI6IkJlbmVmaXRzIEludmVzdGlnYXRpb24iLCAiQ0NEIjoiQ29udGludWl0eSBvZiBDYXJlIERvY3VtZW50IiwgIkNISyI6IkNoZWNrbGlzdCIsICJDTElOIjoiQ2xpbmljYWwgTm90ZXMiLCAiQ09OIjoiQ29uc2VudCBGb3JtIiwgIkRFTSI6IkRlbW9ncmFwaGljcyIsICJGQUMiOiJGYWNpbGl0eSBFbnJvbGxtZW50IiwgIkZBWCI6ImZheCIsICJGSU4iOiJGaW5hbmNpYWwgSW5mbyIsICJISVBBQSI6IkhJUEFBIEZvcm0iLCAiSUMiOiJJbnN1cmFuY2UgSW5mbyIsICJNSU5GTyI6Ik1pc3NpbmcgSW5mbyIsICJPVEgiOiJPdGhlciIsICJQSU5GTyI6IlByb2R1Y3QgSW5mbyIsICJTQVVUSCI6IlNlcnZpY2UgQXV0aG9yaXphdGlvbiIsICJTVEFSVCI6IlN0YXJ0IEZvcm0iIH07CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCnpEYXRhLnF1ZXVlSWRNYXAgPXt9Owp6RGF0YS5RVUVVRV9aQ0hBUlRBID0gJzAwRzFVMDAwMDAwT2Q1TVVBUyc7CnpEYXRhLlFVRVVFX1pQQVBZUlVTID0gJzAwRzFVMDAwMDAwT2hWT1VBMCc7Ci8vekRhdGEuUVVFVUVfWlJFRkVSUkFMID0gJzAwR2Y0MDAwMDAwVm5wT0VBUyc7CnpEYXRhLlFVRVVFX1pDQVJUQSA9ICcwMEcxVTAwMDAwME9sc3ZVQUMnOyAKLy96RGF0YS5RVUVVRV9URUNGSURFUkEgPSAnMDBHZjQwMDAwMDFqTzlLRUFVJzsgCi8vekRhdGEuUVVFVUVfU1BJTlJBWkEgPSAnMDBHZjQwMDAwMDFqTzBNRUFVJzsgCgoKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1pDSEFSVEFdID0gekRhdGEuUVVFVUVfWkNIQVJUQTsgCnpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9aUEFQWVJVU10gPSB6RGF0YS5RVUVVRV9aUEFQWVJVUzsgCi8vekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1pSRUZFUlJBTF0gPSB6RGF0YS5RVUVVRV9aUkVGRVJSQUw7ICAKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1pDQVJUQV0gPSB6RGF0YS5RVUVVRV9aQ0FSVEE7IAoKLy96RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLlBST0dSQU1fVEVDRklERVJBXSA9IHpEYXRhLlFVRVVFX1RFQ0ZJREVSQTsgLy9KUEIxODA4MDYgYWRkZWQgUE9DIHF1ZXVlCi8vekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1NQSU5SQVpBXSA9IHpEYXRhLlFVRVVFX1NQSU5SQVpBOyAKCi8vIEVORCBPRiBIQVJELUNPREVEIFZBTFVFUwoKekRhdGEucHJvZ3JhbU5hbWUgPSAiIjsKekRhdGEuQWZmaWxpYXRlID0gIiI7Cgp6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gIiI7IAoKekRhdGEucHJvZ3JhbU5hbWUgPSAiIjsKekRhdGEuY2xhc3NpZmljYXRpb24gPSIiOyAvLyBQdjE5MDQyMwovL0NSTjE3MDMyNCBUT0RPIGRvYy5jbG9uZSgpIGRvbmUgcmlnaHQ7CnpEYXRhLmNsb25lPWZ1bmN0aW9uKGRvYykgewogICB2YXIgZG9jMD1bXTsKICAgZm9yICh2YXIgaSBpbiBkb2MpIGRvYzBbaV09ZG9jW2ldOwogICByZXR1cm4gZG9jMDsKfQoKekRhdGEuc2V0YnJhbmRwcm9ncmFtID0gZnVuY3Rpb24oZG9jKSB7CiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgekRhdGEuQWZmaWxpYXRlID0gIlVTIjsgCiAgekRhdGEucHJvZ3JhbU5hbWUgPSAiTWFrYW5hIEhlYWx0aCI7CiAgLy96RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gekRhdGEucXVldWVJZE1hcFt6RGF0YS5wcm9ncmFtTmFtZV07IAogICAgaWYoZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCIxNjc4OTQ4MTAyNSIpIHx8IGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiekNoYXJ0YTEwMjUiKSl7CiAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9InpDaGFydGEiOwogICAgfSBlbHNlIGlmKGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiMTY3ODk0ODEwMjgiKSB8fCBkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoInpDQVJUYTEwMjgiKSl7CiAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9InpDQVJUYSI7CiAgICB9ZWxzZSBpZihkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoIjE2Nzg5NDgxMDIxIikgfHwgZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCJ6UGFweXJ1czEwMjEiKSl7CiAgICB6RGF0YS5jbGFzc2lmaWNhdGlvbiA9InpQYXB5cnVzIjsKICAgIH0KICAgIHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSB6RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLmNsYXNzaWZpY2F0aW9uXTsgLy9QVjE5MDQyNCB1cGRhdGVkIGZvciBjbGFzc2lmaWNhdGlvbiBhcyBvd25lcgogICAgYWxlcnQoIisrKyBFTkRJTkcgekRhdGEuc2V0YnJhbmRwcm9ncmFtICsrKyIpOwogICAgYWxlcnQoIkBAQCB6RGF0YS5wcm9ncmFtTmFtZSA9ICIgKyB6RGF0YS5wcm9ncmFtTmFtZSk7CiAgICBhbGVydCgiQEBAIHpEYXRhLkFmZmlsaWF0ZSA9ICIgKyB6RGF0YS5BZmZpbGlhdGUpOwp9CgovKiBUaGlzIGZ1bmN0aW9uIG5lZWRzIHRvIGJlIGFkZGVkIHRvIGV2ZXJ5IHJ1bGUgdG8gaGVscCBhc3N1cmUgdGhhdCBydWxlcyBkbyBub3QgZ2V0IGFjY2lkZW50YWxseSB0cmlnZ2VyZWQgKi8KLyogQWRkIHRoaXMgZnVuY3Rpb25hbGl0eSB0byB0aGUgcnVsZXMgZW5naW5lIGl0c2VsZj8gKi8KekRhdGEuY2xlYXJUcmlnZ2VyQ29uZGl0aW9uPWZ1bmN0aW9uKGRvYyx0cmlnZ2VyRmllbGQpIHsgIAogIHZhciBhcnJPZlBhaXJzID0gW107CiAgYXJyT2ZQYWlycy5wdXNoKHRyaWdnZXJGaWVsZCwgIiIpOwogIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfQoKekRhdGEuaW5pdGlhbGl6ZVN0YWNrPWZ1bmN0aW9uKGRvYyxzdGFja0ZvbGRlcixzdGFja0lkKSB7IAogIHZhciBhcnJPZlBhaXJzID0gW107CiAgdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKICB2YXIgY3VyTW9udGggPSB0b2RheS5nZXRNb250aCgpICsgMTsKICB2YXIgZmluYWxSb290Rm9sZGVyID0gekRhdGEucHJvZ3JhbU5hbWUrIi1BcmNoaXZlIjsgCiAgdmFyIHl5eXlNTUZvbGRlck5hbWUgPSB0b2RheS5nZXRGdWxsWWVhcigpICsgKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKTsKICB2YXIgeXl5eU1NRm9sZGVyID0gZmluYWxSb290Rm9sZGVyICsgIi0iICsgeXl5eU1NRm9sZGVyTmFtZTsKICBhbGVydCgiQEBAIHN0YWNrRm9sZGVyIGlzIC0gIiArIHN0YWNrRm9sZGVyKTsKICBhbGVydCgiQEBAIGZpbmFsUm9vdEZvbGRlciBpcyAtICIgKyBmaW5hbFJvb3RGb2xkZXIpOwogIGFsZXJ0KCJAQEAgeXlNTUZvbGRlciBpcyAtICIgKyB5eXl5TU1Gb2xkZXIpOwogIGFsZXJ0KCJAQEAgY3JlYXRpbmcgbmV3IHpTdGFjayBkZXN0aW5hdGlvbiBmb2xkZXIgd2l0aCBuYW1lIC0gIiArIHN0YWNrRm9sZGVyKTsgCiAgLyogUmVmcmVzaCB0aGUgY3VycmVudCBmb2xkZXIgKi8KICByZWxvYWRCeUlkKGRvYywgWChkb2MsIlhfY3VyRm9sZGVyIikpOwogIC8qIHNhbWUgdmFsdWUgZm9yIEJBVEVTIGFuZCBsYWJlbCAqLwogIC8qIFRoZSBmb2xkZXIgc3RydWN0dXJlIHdpbGwgbG9vayBsaWtlIHRoaXM6IC8yMDE2MDgvM0NYM0NYLzEyMzQ1Njc4OS1TVEFDSyAqLwogIGNyZWF0ZUZvbGRlcihkb2MsIGZpbmFsUm9vdEZvbGRlciwgeXl5eU1NRm9sZGVyLCB5eXl5TU1Gb2xkZXJOYW1lKTsKICBjcmVhdGVGb2xkZXIoZG9jLCB5eXl5TU1Gb2xkZXIsIHN0YWNrRm9sZGVyLCBzdGFja0ZvbGRlcik7CiAgCiAgYWxlcnQoIkBAQEAgTW92aW5nIHRoZSB6U3RhY2sgZG9jdW1lbnQgaW50byB0aGUgelN0YWNrIGZvbGRlcjogIiArIHN0YWNrRm9sZGVyKTsgCiAgCiAgbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4SW5pdGlhbGl6ZWQiLCAidHJ1ZSIpOwogIGFyck9mUGFpcnMucHVzaCgiWF9zdGFjayIsIHN0YWNrSWQpOwogIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBkb2Mua2JEYXRhLmdyb3VwSUQuc3Vic3RyaW5nKDEpICsgIi0iICsgc3RhY2tJZCArICItU1RBQ0siKTsKICAvKiBTdGFjayBMYWJlbGxpbmcgQ2hhbmdlICovCiAgdmFyIGR0U3RhbXAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlKTsKICAvKiBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwiU3RhY2sgLSAiICsgZHRTdGFtcCk7ICovCiAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9Cgp6RGF0YS5jb3VudFBhZ2VzPWZ1bmN0aW9uKGRvYyxwYWdlUmFuZ2UpIHsgIAogIHZhciBwYWdlcyA9IHBhZ2VSYW5nZS5zcGxpdCgiLCIpOwogIGlmICghcGFnZXMpIHBhZ2VzPVtwYWdlUmFuZ2VdOwogIHJldHVybiBwYWdlcy5sZW5ndGggKyAiIjsKfQoKLyogRU5EICov"},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB190430 updated rule for Sales Demo Org
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

//zData.PROGRAM_TECFIDERA = 'Tecfidera'; 
//zData.supportedProgramsMap['16787270934'] = zData.PROGRAM_TECFIDERA;  
//zData.supportedProgramsMap['Tecfidera'] = zData.PROGRAM_TECFIDERA; 

//zData.PROGRAM_SPINRAZA = 'Spinraza'; 
//zData.supportedProgramsMap['16787270971'] = zData.PROGRAM_TYSABRI; 
//zData.supportedProgramsMap['Spinraza'] = zData.PROGRAM_TYSABRI; 
zData.documentTypeMap={ "ENRL":"Enrollment Form", "ACK":"Acknowledgement Letter", "AN":"Approval Notice", "BI":"Benefits Investigation", "CCD":"Continuity of Care Document", "CHK":"Checklist", "CLIN":"Clinical Notes", "CON":"Consent Form", "DEM":"Demographics", "FAC":"Facility Enrollment", "FAX":"fax", "FIN":"Financial Info", "HIPAA":"HIPAA Form", "IC":"Insurance Info", "MINFO":"Missing Info", "OTH":"Other", "PINFO":"Product Info", "SAUTH":"Service Authorization", "START":"Start Form" };
                                            
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
  //zData.patEnrollQueueId = zData.queueIdMap[zData.programName]; 
    if(doc.deliveredTo.contains("16789481025") || doc.deliveredTo.contains("zCharta1025")){
    zData.classification ="zCharta";
    } else if(doc.deliveredTo.contains("16789481028") || doc.deliveredTo.contains("zCARTa1028")){
    zData.classification ="zCARTa";
    }else if(doc.deliveredTo.contains("16789481021") || doc.deliveredTo.contains("zPapyrus1021")){
    zData.classification ="zPapyrus";
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
