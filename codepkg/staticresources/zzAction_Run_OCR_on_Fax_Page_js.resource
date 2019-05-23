<!--
// Name: Run OCR on Fax Page
// Committer: cory.newey@zpaper.com
// Update: CRN190320 I have updated the zippi code to support the doc.kbData.customSettings as the legacy code expects.
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-03-20 15:07:07","evalContinue":"true","active":true,"button":"RunOCR","name":"Run OCR on Fax Page","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"RunOCR","operation":"equals"},{"name":"doc.docType","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9URERPIGRldGVjdCBidXR0b24gYW5kIHRoZW4gcmV0dXJuCmlmICgxPT09MCB8fCBkb2MuWCgiWF9idXR0b25BY3Rpb24iKT09IlJ1bk9DUiIpIHtyb29sLmV2YWxDb250aW51ZT1mYWxzZTsgYWxlcnQoIk9DUiBBTEwgRE9ORSEiKTt9IC8vY29uZGl0aW9uYWwgbGlicmFyeT8KYWxlcnQoIkJVVFRPTiAiK2RvYy5YKCJYX2J1dHRvbkFjdGlvbiIpICsiIHN0YXR1cz0iK2RvYy5zdGF0dXMpOwoKdmFyIHQwPW5ldyBEYXRlKCk7CnpEYXRhLmRvY1R5cGVPQ1I9ekRhdGEuZG9jVHlwZXIyMDE3KGRvYyx7IlBBUFAiOiJQYXRpZW50fiBBc3Npc3RhbmNlfiIsIlBBVVRIIjoiUHJpb3J+IEF1dGhvcml6YXRpb25+IiwiRU5STCI6IkVucm9sbG1lbnR+IiwiRkFYIjoiIn0pOwp2YXIgdDE9bmV3IERhdGUoKTsKYWxlcnQoImRvY1R5cGUgd2FzICIrZG9jLmRvY1R5cGUrIiBub3cgIisgekRhdGEuZG9jVHlwZU9DUik7Ci8vRVJTMTgxMTIzICM0NzQwOCB6RGF0YS5kb2NUeXBlcihkb2MsY29uZmlkZW5jZSx0YXJnZXRzKQovL3ZhciBzb21lVGVtcGxhdGVzPVsiVEVOUjpUZWNpZGVyYUVucm9sbG1lbnRfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIl07IC8vcWEwMQovL3ZhciBzb21lVGVtcGxhdGVzPVsiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQldfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIiwiREVNTzpQYXRpZW50RGVtb1NoZWV0X0Zvcm0iLCJISVBBQTpISVBBQV9Gb3JtIl07IC8vcGFwCnZhciBzb21lVGVtcGxhdGVzPVsiQ09OUzpDb3NlbnR5eFNlcnZpY2VSZXFfRm9ybSIsIkhJUFBBOkhJUFBBY29uc2VudF9Gb3JtIl07IC8vZHYxOSBFUlMxODEyMDcgIzU0MzMxCnNvbWVUZW1wbGF0ZXM9WyJERU1POlBhdGllbnREZW1vRm9ybV9Gb3JtIiwiRU5STDpFbnJvbGxtZW50X0Zvcm0iLCJURU5SOlRCVzIwMTlfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwKICAgICJDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLCJERU1POlBhdGllbnREZW1vU2hlZXRfRm9ybSIsIkhJUEFBOkhJUEFBX0Zvcm0iXTsgIC8vRVJTMTgxMjExIHVwZGF0ZWQgZnJvbSBkdjE5CiAgICAvL0pQQjE5MDExNyBjaGFuZ2VkIGZvcm1JZCB0byBoYXZlIDIwMTkKc29tZVRlbXBsYXRlcy5wdXNoKCJFTlJMOnpDQVJUYUVucm9sbG1lbnRfRm9ybSIpOyAvL0VSUzE4MTIxNwpzb21lVGVtcGxhdGVzLnB1c2goIlNFTlI6U0JXX0Zvcm0iKTsgLy9FUlMxOTAxMTUKLy9FUlMxOTAzMTggIzU3MDkwIGdldCB0aGUgTzJPIHNldHRpbmdzIGZvciB3aGljaCBmb3JtcyB0byBjb21wYXJlIHdpdGgKLy9zb21lVGVtcGxhdGVzPVsiUEE6MDAwMDUwMTRaMWQ0ODhlZXY2IiwiUEE6TVJYUEFfRm9ybSJdOyAvLywiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQlcyMDE5X0Zvcm0iXTsgLy9FUlMxOTAyMjggIzUzMDAwIFRPRE8gdGVhY2ggSnVkc29uCnZhciBvcmcyb3JnQ1M9ZG9jLmtiRGF0YS5jdXN0b21TZXR0aW5nczsKdmFyIGNvcnlUb0RvPVhDdXN0b21TZXR0aW5nKGRvYywiQXV0b0RyaXZlX19jIik7Ci8vQ1JOMTkwMzIwIEkgaGF2ZSB1cGRhdGVkIHRoZSB6aXBwaSBjb2RlIHRvIHN1cHBvcnQgdGhlIGRvYy5rYkRhdGEuY3VzdG9tU2V0dGluZ3MgYXMgdGhlIGxlZ2FjeSBjb2RlIGV4cGVjdHMuCi8vIEFzIHNvb24gYXMgbXkgY2hhbmdlIGlzIG1lcmdlZCBpbnRvIHRoZSBkZXZlbG9wIGJyYW5jaCwgd2UgY2FuIG1ha2UgYSBuZXcgV0FSIGZpbGUgYW5kIHRlc3QgdGhpcyBvdXQuCmFsZXJ0KCJFUlMxOTAzMTggY29yeVRvRG89Iitjb3J5VG9EbysiIG9yZzJvcmdDUz0iK29yZzJvcmdDUyk7CmlmICgxPT09MCAmJiBvcmcyb3JnQ1MgJiYgb3JnMm9yZ0NTLkF1dG9Ecml2ZV9fYyAmJiBvcmcyb3JnQ1MuQXV0b0RyaXZlX19jLmluZGV4T2YoIjoiKT4tMSApIHsgLy9FUlMxOTAzMTggIzU3MTk2CiAgICBzb21lVGVtcGxhdGVzPW9yZzJvcmdDUy5BdXRvRHJpdmVfX2Muc3BsaXQoIiwiKTsKfSBlbHNlIGlmICgxPT09MSAmJiBjb3J5VG9EbyAmJiBjb3J5VG9Eby5pbmRleE9mKCI6Iik+LTEgKSB7IC8vRVJTMTkwMzE4ICM1NzE5NgogICAgc29tZVRlbXBsYXRlcz1jb3J5VG9Eby5zcGxpdCgiLCIpOwp9IGVsc2UgewogICAgYWxlcnQoIkVSUzE5MDMxOCBPVkVSUklERSBOT1QgSU4gQ1VTVE9NIFNFVFRJTkciKTsKICAgIHNvbWVUZW1wbGF0ZXM9IlRFTlI6VEJXMjAxOV9Gb3JtLERFTU86UGF0aWVudERlbW9Gb3JtX0Zvcm0sSElQQUE6TWFrYW5hSGVhbHRoSElQQUFfRm9ybSxFTlJMOkVucm9sbG1lbnRfRm9ybSxFTlJMOnpDaGFydGFtRW5yb2xsbWVudENhcHR1cmVfRm9ybSxDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLnNwbGl0KCIsIik7Cn0KYWxlcnQoIkVSUzE5MDMxOCBzb21lVGVtcGxhdGU9Iitzb21lVGVtcGxhdGVzKTsKCnpEYXRhLnBhZ2VzPVgoZG9jLCJYX3BhZ2VzIik7IGlmICghekRhdGEucGFnZXMpIHt6RGF0YS5wYWdlcz0xO30gLy9FUlMxODExMjQgVE9ETyBDUk4gdG8gYWRkIHRvIGRvYwp6RGF0YS5jb25maWRlbmNlPTAuNzU7CnpEYXRhLmNvbmZpZGVuY2U9MC44MDsgLy9TSFIxODEyMDYgbG93ZXJlZCB0aGUgY29uZmlkZW5jZSBsZXZlbCBmb3IgdGVzdGluZyB3YXMgLjkKLy96RGF0YS5jb25maWRlbmNlPTAuNDA7IC8vSlBCMTkwMTE2IGxvd2VyZWQgdGhlIGNvbmZpZGVuY2UgbGV2ZWwgZm9yIHRlc3Rpbmcgd2FzIC44IC8vRVJTMTkwMTE4CnpEYXRhLnppcHBpQ29tcGFyZT16RGF0YS5kb2NUeXBlckFEKGRvYyx6RGF0YS5jb25maWRlbmNlLHNvbWVUZW1wbGF0ZXMpOyAvL0VSUzE5MDExOCBBRCB3YXMgbWlzc2luZwphbGVydCgiU3RhY2sgaGFzICIrekRhdGEuemlwcGlDb21wYXJlLmxlbmd0aCsiIGRvY3VtZW50cyBpbiAiK3pEYXRhLnBhZ2VzKyIgcGFnZXMiKTsKYWxlcnQoIkRvY1R5cGVyIHJlc3VsdHMgYXJyYXk6XG4iICsgSlNPTi5zdHJpbmdpZnkoekRhdGEuemlwcGlDb21wYXJlKSk7CnpEYXRhLnJldmlld3M9WChkb2MsIlhfcmV2aWV3cyIpOyB6RGF0YS5yZXZpZXdlZFN0YXR1cz0iIjsgLy9FUlMxOTAxMTggIzUzMDAwIFRPRE8gQ1JOIHRvIGNoZWNrCnZhciB6cD0iWlBBUEVSX18iOyAvL0VSUzE5MDExOCAjNTMwMDAgVE9ETyBBU00gdG8gbW92ZSB0byBMaWJyYXJ5CnZhciB0Mj1uZXcgRGF0ZSgpOwpmb3IgKHZhciBwPTE7IHA8PXpEYXRhLnBhZ2VzOyBwKyspIHsKICAgIGFsZXJ0KCJAQEAgRXhhbWluaW5nIFBhZ2UgIiArIHApOyAgIC8vSlBCMTkwMjI2IERlYnVnZ2luZy4uLgogICAgdmFyIHpkPXpEYXRhLnppcHBpQ29tcGFyZVtwXTsKICAgIGFsZXJ0KCJAQEAgemlwcGlDb21wYXJlID0gIiArIHpkKTsKICAgIGlmICh6ZCkgewogICAgICAgIGFsZXJ0KCJwYWdlICIremQucGFnZSsiIGNvbmZpZGVuY2U9Iit6ZC5jb25maWRlbmNlKyIlIHN1cmUgaXQgaXMgYSAiK3pkLnRlbXBsYXRlKTsKICAgICAgICBpZiAoK3pkLmNvbmZpZGVuY2UgPj0gekRhdGEuY29uZmlkZW5jZSkgewogICAgICAgICAgICB6RGF0YS5kb2NUeXBlT0NSPXpkLmRvY1R5cGU7CiAgICAgICAgICAgIC8vIFNIUjE4MTIwNiB0cnkgdG8gZXh0cmFjdCBmaWVsZHMgZm9yIEVOUiwgSElQQUEsIGFuZCBERU1PIHR5cGVzCiAgICAgICAgICAgIHZhciBBRHR5cGVzPSIsUEEsRU5SLEhJUEFBLERFTU8sQ09OUywiOyAvL0VSUzE5MDIyOCAjNTMwMDAgYSBiaXQgc21hcnRlciBUT0RPIFRlbXBsYXRlIHRhZwogICAgICAgICAgICBpZihBRHR5cGVzLmluZGV4T2YoIiwiK3pkLmRvY1R5cGUrIiwiKT4tMSB8fCB6ZC5kb2NUeXBlLmluZGV4T2YoIkVOUiIpPi0xIHx8IHpkLmRvY1R5cGUuaW5kZXhPZigiQ09OUyIpPi0xKSB7CiAgICAgICAgICAgICAgICB6RGF0YS56aXBwaVNpZ25hdHVyZXM9ekRhdGEuZXh0cmFjdERhdGEoZG9jLCJzaWduYXR1cmUiLHpkLnRlbXBsYXRlLHpkLnBhZ2UpOyAvL3sic2lnbjEiLHt3ZXdld2V9CiAgICAgICAgICAgICAgICAvL1RPRE8gZmluZCBhIGNvbmZpZGVuY2UgdGhhdCBpdCBpcyBzaWduZWQKICAgICAgICAgICAgICAgIGZvciAodmFyIHMgaW4gekRhdGEuemlwcGlTaWduYXR1cmVzKSB7CiAgICAgICAgICAgICAgICAgICAgaWYgKHpEYXRhLnppcHBpU2lnbmF0dXJlc1tzXS5maWxsZWQgPiAwLjAyOCkgewogICAgICAgICAgICAgICAgICAgICAgICB6RGF0YS5yZXZpZXdlZFN0YXR1cz0iU2lnbmVkIjsKICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHpEYXRhLnJldmlld3MuaW5kZXhPZih6ZC5kb2NUeXBlKSA9PSAtMSkgeyAvL0VSUzE5MDExOCAjNTMwMDAKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOyAvL0VSUzE5MDExOSBkb2NTZXQgaXMgdmVyeSBwaWNreQogICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFyIGhpc3RvcnlQYXJzZXI9IiBieSBhZ2VudCBvciBwYXRlbnQgYSAiOyAvL0VSUzE5MDEyMSAjNTMwMDAgQ1JOIHRvIGV4cGxhaW4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIHpEYXRhLnJldmlld3MrPXpEYXRhLnJldmlld2VkU3RhdHVzK2hpc3RvcnlQYXJzZXIremQuZG9jVHlwZSsiIGF0ICIrbm93MCsiPGJyLz4iOyAvL0VSUzE5MDExOSAjNTMwMDAgbWFrZSBkb2NTZXQgaGFwcHkKICAgICAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgICAgICAgICAvL0VSUzE5MDExOCBUT0RPIHNldCB0aGUgWlN0YWNrLnN0YWdlX19jPVNpZ25lZAogICAgICAgICAgICAgICAgICAgICAgICB2YXIgc2ZTdGFja0lkID0gWChkb2MsIlhfc2ZTdGFja0lkIik7CiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChzZlN0YWNrSWQgIT09ICIiICYmIHpEYXRhLnJldmlld2VkU3RhdHVzIT09IiIpIHsgLy9FUlMxOTAxMTggIzUzMDAwCiAgICAgICAgICAgICAgICAgICAgICAgICAgICB1cGRhdGVTRlJlY29yZChkb2MsIHpwKyJ6U3RhY2tfX2MiLCBzZlN0YWNrSWQsIFt6cCsiU3RhZ2VfX2MiLCJTaWduZWQiXSk7CiAgICAgICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICBhbGVydCgic2lnbmVkMTYgIitKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaVNpZ25hdHVyZXMpKTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KfQp2YXIgdDM9bmV3IERhdGUoKTsKYWxlcnQoIk9DUiByYWNlICIrekRhdGEuZG9jVHlwZU9DUisiIGluICIrKHQxLmdldFRpbWUoKS10MC5nZXRUaW1lKCkpKyIgdGhlbiAiKyAodDIuZ2V0VGltZSgpLXQxLmdldFRpbWUoKSkrIiB0aGVuICIrICh0My5nZXRUaW1lKCktdDIuZ2V0VGltZSgpKSk7CnZhciB6VHlwZT1kb2MuWCgiWF9kb2NUeXBlIik7CmlmICgxPT09MSB8fCBkb2MuZG9jVHlwZSAhPSB6RGF0YS5kb2NUeXBlT0NSKSB7CiAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsekRhdGEuZG9jVHlwZU9DUik7CglhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLHpEYXRhLmRvY1R5cGVPQ1IpOwoJYXJyT2ZQYWlyczAucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsekRhdGEucmV2aWV3ZWRTdGF0dXMpOwoJaWYgKHpEYXRhLnJldmlld3MgIT09ICIiKSB7IGFyck9mUGFpcnMwLnB1c2goIlhfcmV2aWV3cyIsekRhdGEucmV2aWV3cyk7IH0gLy9FUlMxOTAxMTggZm9yIHRoZSBkb2NTZXQgY2hlY2tib3hlcwoJYXJyT2ZQYWlyczAucHVzaCgiWF96aXBwaUNvbXBhcmUiLEpTT04uc3RyaW5naWZ5KHpEYXRhLnppcHBpQ29tcGFyZSkpOyAvL0VSUzE4MTEyMyBUT0RPIEpTT04gaW4gWE1MPwoJYXJyT2ZQYWlyczAucHVzaCgiWF96aXBwaVNpZ25hdHVyZXMiLEpTT04uc3RyaW5naWZ5KHpEYXRhLnppcHBpU2lnbmF0dXJlcykpOyAvL0VSUzE4MTEyMyBUT0RPIEpTT04gaW4gWE1MPwogICAgelR5cGU9ekRhdGEuZG9jVHlwZU9DUjsgLy9FUlMxNzAzMzAgc2F2ZWQgYmVsb3cgaW50byBTRiBmYXhUeXBlX19jIGZpZWxkCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKfQoK"},"ordinal":17}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//TDDO detect button and then return
if (1===0 || doc.X("X_buttonAction")=="RunOCR") {rool.evalContinue=false; alert("OCR ALL DONE!");} //conditional library?
alert("BUTTON "+doc.X("X_buttonAction") +" status="+doc.status);

var t0=new Date();
zData.docTypeOCR=zData.docTyper2017(doc,{"PAPP":"Patient~ Assistance~","PAUTH":"Prior~ Authorization~","ENRL":"Enrollment~","FAX":""});
var t1=new Date();
alert("docType was "+doc.docType+" now "+ zData.docTypeOCR);
//ERS181123 #47408 zData.docTyper(doc,confidence,targets)
//var someTemplates=["TENR:TecideraEnrollment_Form","ENRL:zChartamEnrollmentCapture_Form","CON:zChartamConsent_Form"]; //qa01
//var someTemplates=["DEMO:PatientDemoForm_Form","ENRL:Enrollment_Form","TENR:TBW_Form","ENRL:zChartamEnrollmentCapture_Form","CON:zChartamConsent_Form","DEMO:PatientDemoSheet_Form","HIPAA:HIPAA_Form"]; //pap
var someTemplates=["CONS:CosentyxServiceReq_Form","HIPPA:HIPPAconsent_Form"]; //dv19 ERS181207 #54331
someTemplates=["DEMO:PatientDemoForm_Form","ENRL:Enrollment_Form","TENR:TBW2019_Form","ENRL:zChartamEnrollmentCapture_Form",
    "CON:zChartamConsent_Form","DEMO:PatientDemoSheet_Form","HIPAA:HIPAA_Form"];  //ERS181211 updated from dv19
    //JPB190117 changed formId to have 2019
someTemplates.push("ENRL:zCARTaEnrollment_Form"); //ERS181217
someTemplates.push("SENR:SBW_Form"); //ERS190115
//ERS190318 #57090 get the O2O settings for which forms to compare with
//someTemplates=["PA:00005014Z1d488eev6","PA:MRXPA_Form"]; //,"DEMO:PatientDemoForm_Form","ENRL:Enrollment_Form","TENR:TBW2019_Form"]; //ERS190228 #53000 TODO teach Judson
var org2orgCS=doc.kbData.customSettings;
var coryToDo=XCustomSetting(doc,"AutoDrive__c");
//CRN190320 I have updated the zippi code to support the doc.kbData.customSettings as the legacy code expects.
// As soon as my change is merged into the develop branch, we can make a new WAR file and test this out.
alert("ERS190318 coryToDo="+coryToDo+" org2orgCS="+org2orgCS);
if (1===0 && org2orgCS && org2orgCS.AutoDrive__c && org2orgCS.AutoDrive__c.indexOf(":")>-1 ) { //ERS190318 #57196
    someTemplates=org2orgCS.AutoDrive__c.split(",");
} else if (1===1 && coryToDo && coryToDo.indexOf(":")>-1 ) { //ERS190318 #57196
    someTemplates=coryToDo.split(",");
} else {
    alert("ERS190318 OVERRIDE NOT IN CUSTOM SETTING");
    someTemplates="TENR:TBW2019_Form,DEMO:PatientDemoForm_Form,HIPAA:MakanaHealthHIPAA_Form,ENRL:Enrollment_Form,ENRL:zChartamEnrollmentCapture_Form,CON:zChartamConsent_Form".split(",");
}
alert("ERS190318 someTemplate="+someTemplates);

zData.pages=X(doc,"X_pages"); if (!zData.pages) {zData.pages=1;} //ERS181124 TODO CRN to add to doc
zData.confidence=0.75;
zData.confidence=0.80; //SHR181206 lowered the confidence level for testing was .9
//zData.confidence=0.40; //JPB190116 lowered the confidence level for testing was .8 //ERS190118
zData.zippiCompare=zData.docTyperAD(doc,zData.confidence,someTemplates); //ERS190118 AD was missing
alert("Stack has "+zData.zippiCompare.length+" documents in "+zData.pages+" pages");
alert("DocTyper results array:\n" + JSON.stringify(zData.zippiCompare));
zData.reviews=X(doc,"X_reviews"); zData.reviewedStatus=""; //ERS190118 #53000 TODO CRN to check
var zp="ZPAPER__"; //ERS190118 #53000 TODO ASM to move to Library
var t2=new Date();
for (var p=1; p<=zData.pages; p++) {
    alert("@@@ Examining Page " + p);   //JPB190226 Debugging...
    var zd=zData.zippiCompare[p];
    alert("@@@ zippiCompare = " + zd);
    if (zd) {
        alert("page "+zd.page+" confidence="+zd.confidence+"% sure it is a "+zd.template);
        if (+zd.confidence >= zData.confidence) {
            zData.docTypeOCR=zd.docType;
            // SHR181206 try to extract fields for ENR, HIPAA, and DEMO types
            var ADtypes=",PA,ENR,HIPAA,DEMO,CONS,"; //ERS190228 #53000 a bit smarter TODO Template tag
            if(ADtypes.indexOf(","+zd.docType+",")>-1 || zd.docType.indexOf("ENR")>-1 || zd.docType.indexOf("CONS")>-1) {
                zData.zippiSignatures=zData.extractData(doc,"signature",zd.template,zd.page); //{"sign1",{wewewe}
                //TODO find a confidence that it is signed
                for (var s in zData.zippiSignatures) {
                    if (zData.zippiSignatures[s].filled > 0.028) {
                        zData.reviewedStatus="Signed";
                        if (zData.reviews.indexOf(zd.docType) == -1) { //ERS190118 #53000
                            var now0 = getCurDateAndTime(doc,false,true); //ERS190119 docSet is very picky
                            var historyParser=" by agent or patent a "; //ERS190121 #53000 CRN to explain
                            zData.reviews+=zData.reviewedStatus+historyParser+zd.docType+" at "+now0+"<br/>"; //ERS190119 #53000 make docSet happy
                        }
                        //ERS190118 TODO set the ZStack.stage__c=Signed
                        var sfStackId = X(doc,"X_sfStackId");
                        if (sfStackId !== "" && zData.reviewedStatus!=="") { //ERS190118 #53000
                            updateSFRecord(doc, zp+"zStack__c", sfStackId, [zp+"Stage__c","Signed"]);
                        }
                    }
                }
                alert("signed16 "+JSON.stringify(zData.zippiSignatures));
            }
        }
    }
}
var t3=new Date();
alert("OCR race "+zData.docTypeOCR+" in "+(t1.getTime()-t0.getTime())+" then "+ (t2.getTime()-t1.getTime())+" then "+ (t3.getTime()-t2.getTime()));
var zType=doc.X("X_docType");
if (1===1 || doc.docType != zData.docTypeOCR) {
    var arrOfPairs0 = [];
    arrOfPairs0.push("X_docTypeOCR",zData.docTypeOCR);
	arrOfPairs0.push("X_docType",zData.docTypeOCR);
	arrOfPairs0.push("X_reviewedStatus",zData.reviewedStatus);
	if (zData.reviews !== "") { arrOfPairs0.push("X_reviews",zData.reviews); } //ERS190118 for the docSet checkboxes
	arrOfPairs0.push("X_zippiCompare",JSON.stringify(zData.zippiCompare)); //ERS181123 TODO JSON in XML?
	arrOfPairs0.push("X_zippiSignatures",JSON.stringify(zData.zippiSignatures)); //ERS181123 TODO JSON in XML?
    zType=zData.docTypeOCR; //ERS170330 saved below into SF faxType__c field
    updateDB(doc, arrOfPairs0);
}


//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
