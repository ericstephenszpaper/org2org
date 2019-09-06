<!--
// Name: Run OCR on Fax Page
// Committer: eric.stephens@zpaper.com
// Update: just 2 pages
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-09-03 14:22:53","evalContinue":"true","active":true,"button":"RunOCR","name":"Run OCR on Fax Page","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"RunOCR","operation":"equals"},{"name":"doc.docType","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9URERPIGRldGVjdCBidXR0b24gYW5kIHRoZW4gcmV0dXJuCmlmICgxPT09MCB8fCBkb2MuWCgiWF9idXR0b25BY3Rpb24iKT09IlJ1bk9DUiIpIHtyb29sLmV2YWxDb250aW51ZT1mYWxzZTsgYWxlcnQoIk9DUiBBTEwgRE9ORSEiKTt9IC8vY29uZGl0aW9uYWwgbGlicmFyeT8KYWxlcnQoIkJVVFRPTiAiK2RvYy5YKCJYX2J1dHRvbkFjdGlvbiIpICsiIHN0YXR1cz0iK2RvYy5zdGF0dXMpOwoKdmFyIHQwPW5ldyBEYXRlKCk7CnpEYXRhLmRvY1R5cGVPQ1I9IkZBWCI7Ci8vRVJTMTkwODMxIGp1c3QgbmV3IHdvcmsgekRhdGEuZG9jVHlwZXIyMDE3KGRvYyx7IlBBUFAiOiJQYXRpZW50fiBBc3Npc3RhbmNlfiIsIlBBVVRIIjoiUHJpb3J+IEF1dGhvcml6YXRpb25+IiwiRU5STCI6IkVucm9sbG1lbnR+IiwiRkFYIjoiIn0pOwp2YXIgdDE9bmV3IERhdGUoKTsKYWxlcnQoImRvY1R5cGUgd2FzICIrZG9jLmRvY1R5cGUrIiBub3cgIisgekRhdGEuZG9jVHlwZU9DUik7Ci8vRVJTMTgxMTIzICM0NzQwOCB6RGF0YS5kb2NUeXBlcihkb2MsY29uZmlkZW5jZSx0YXJnZXRzKQovL3ZhciBzb21lVGVtcGxhdGVzPVsiVEVOUjpUZWNpZGVyYUVucm9sbG1lbnRfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIl07IC8vcWEwMQovL3ZhciBzb21lVGVtcGxhdGVzPVsiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQldfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIiwiREVNTzpQYXRpZW50RGVtb1NoZWV0X0Zvcm0iLCJISVBBQTpISVBBQV9Gb3JtIl07IC8vcGFwCnZhciBzb21lVGVtcGxhdGVzPVsiQ09OUzpDb3NlbnR5eFNlcnZpY2VSZXFfRm9ybSIsIkhJUFBBOkhJUFBBY29uc2VudF9Gb3JtIl07IC8vZHYxOSBFUlMxODEyMDcgIzU0MzMxCnNvbWVUZW1wbGF0ZXM9WyJERU1POlBhdGllbnREZW1vRm9ybV9Gb3JtIiwiRU5STDpFbnJvbGxtZW50X0Zvcm0iLCJURU5SOlRCVzIwMTlfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwKICAgICJDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLCJERU1POlBhdGllbnREZW1vU2hlZXRfRm9ybSIsIkhJUEFBOkhJUEFBX0Zvcm0iXTsgIC8vRVJTMTgxMjExIHVwZGF0ZWQgZnJvbSBkdjE5CiAgICAvL0pQQjE5MDExNyBjaGFuZ2VkIGZvcm1JZCB0byBoYXZlIDIwMTkKc29tZVRlbXBsYXRlcy5wdXNoKCJFTlJMOnpDQVJUYUVucm9sbG1lbnRfRm9ybSIpOyAvL0VSUzE4MTIxNwpzb21lVGVtcGxhdGVzLnB1c2goIlNFTlI6U0JXX0Zvcm0iKTsgLy9FUlMxOTAxMTUKLy9FUlMxOTAzMTggIzU3MDkwIGdldCB0aGUgTzJPIHNldHRpbmdzIGZvciB3aGljaCBmb3JtcyB0byBjb21wYXJlIHdpdGgKLy9zb21lVGVtcGxhdGVzPVsiUEE6MDAwMDUwMTRaMWQ0ODhlZXY2IiwiUEE6TVJYUEFfRm9ybSJdOyAvLywiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQlcyMDE5X0Zvcm0iXTsgLy9FUlMxOTAyMjggIzUzMDAwIFRPRE8gdGVhY2ggSnVkc29uCnZhciBvcmcyb3JnQ1M9ZG9jLmtiRGF0YS5jdXN0b21TZXR0aW5nczsKdmFyIGNvcnlUb0RvPVhDdXN0b21TZXR0aW5nKGRvYywiQXV0b0RyaXZlX19jIik7Ci8vQ1JOMTkwMzIwIEkgaGF2ZSB1cGRhdGVkIHRoZSB6aXBwaSBjb2RlIHRvIHN1cHBvcnQgdGhlIGRvYy5rYkRhdGEuY3VzdG9tU2V0dGluZ3MgYXMgdGhlIGxlZ2FjeSBjb2RlIGV4cGVjdHMuCi8vIEFzIHNvb24gYXMgbXkgY2hhbmdlIGlzIG1lcmdlZCBpbnRvIHRoZSBkZXZlbG9wIGJyYW5jaCwgd2UgY2FuIG1ha2UgYSBuZXcgV0FSIGZpbGUgYW5kIHRlc3QgdGhpcyBvdXQuCmFsZXJ0KCJFUlMxOTAzMTggY29yeVRvRG89Iitjb3J5VG9EbysiIG9yZzJvcmdDUz0iK29yZzJvcmdDUyk7CmlmICgxPT09MCAmJiBvcmcyb3JnQ1MgJiYgb3JnMm9yZ0NTLkF1dG9Ecml2ZV9fYyAmJiBvcmcyb3JnQ1MuQXV0b0RyaXZlX19jLmluZGV4T2YoIjoiKT4tMSApIHsgLy9FUlMxOTAzMTggIzU3MTk2CiAgICBzb21lVGVtcGxhdGVzPW9yZzJvcmdDUy5BdXRvRHJpdmVfX2Muc3BsaXQoIiwiKTsKfSBlbHNlIGlmICgxPT09MSAmJiBjb3J5VG9EbyAmJiBjb3J5VG9Eby5pbmRleE9mKCI6Iik+LTEgKSB7IC8vRVJTMTkwMzE4ICM1NzE5NgogICAgc29tZVRlbXBsYXRlcz1jb3J5VG9Eby5zcGxpdCgiLCIpOwp9IGVsc2UgewogICAgYWxlcnQoIkVSUzE5MDMxOCBPVkVSUklERSBOT1QgSU4gQ1VTVE9NIFNFVFRJTkciKTsKICAgIHNvbWVUZW1wbGF0ZXM9IlRFTlI6VEJXMjAxOV9Gb3JtLERFTU86UGF0aWVudERlbW9Gb3JtX0Zvcm0sSElQQUE6TWFrYW5hSGVhbHRoSElQQUFfRm9ybSxFTlJMOkVucm9sbG1lbnRfRm9ybSxFTlJMOnpDaGFydGFtRW5yb2xsbWVudENhcHR1cmVfRm9ybSxDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLnNwbGl0KCIsIik7Cn0KekRhdGEucGFnZXM9WChkb2MsIlhfcGFnZXMiKTsgaWYgKCF6RGF0YS5wYWdlcykge3pEYXRhLnBhZ2VzPTE7fSAvL0VSUzE4MTEyNCBUT0RPIENSTiB0byBhZGQgdG8gZG9jCnpEYXRhLmNvbmZpZGVuY2U9MC43NTsKekRhdGEuY29uZmlkZW5jZT0wLjgwOyAvL1NIUjE4MTIwNiBsb3dlcmVkIHRoZSBjb25maWRlbmNlIGxldmVsIGZvciB0ZXN0aW5nIHdhcyAuOQppZiAoMT09PTEpIHsgLy9FUlMxOTA4MzEgIzYxMTk2IHpwMDggdGVzdHMKICAgIHNvbWVUZW1wbGF0ZXM9WyJERU1POlBhdGllbnREZW1vRm9ybV9Gb3JtIiwiRU5STDpFbnJvbGxtZW50X0Zvcm0iLCJURU5SOlRCVzIwMTlfRm9ybSJdOyAKICAgIHNvbWVUZW1wbGF0ZXM9WyJJTlM6TWlzc2luZ0luc3VyYW5jZVJlZmVycmFsX0Zvcm0iLCAiRU5STDp6Q2hhcnRhbUVucm9sbG1lbnRfRm9ybSIsICJDT05TOnpDQVJUYUhJUEFBX0Zvcm0iXTsgLy9FUlMxOTA4MzEgdGVzdCBmb3IgMDAwMDUwMTRYMWQ5ZDk1anZqCiAgICB6RGF0YS5wYWdlcz0yOwp9CmFsZXJ0KCJFUlMxOTAzMTggc29tZVRlbXBsYXRlPSIrc29tZVRlbXBsYXRlcyk7CgovL3pEYXRhLmNvbmZpZGVuY2U9MC40MDsgLy9KUEIxOTAxMTYgbG93ZXJlZCB0aGUgY29uZmlkZW5jZSBsZXZlbCBmb3IgdGVzdGluZyB3YXMgLjggLy9FUlMxOTAxMTgKekRhdGEuemlwcGlDb21wYXJlPXpEYXRhLmRvY1R5cGVyQUQoZG9jLHpEYXRhLmNvbmZpZGVuY2Usc29tZVRlbXBsYXRlcyx6RGF0YS5wYWdlcyk7IC8vRVJTMTkwMTE4IEFEIHdhcyBtaXNzaW5nIC8vRVJTMTkwODMxIGFkZGVkIHBhZ2VzCmFsZXJ0KCJTdGFjayBoYXMgIit6RGF0YS56aXBwaUNvbXBhcmUubGVuZ3RoKyIgZG9jdW1lbnRzIGluICIrekRhdGEucGFnZXMrIiBwYWdlcyIpOwphbGVydCgiRG9jVHlwZXIgcmVzdWx0cyBhcnJheTpcbiIgKyBKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaUNvbXBhcmUpKTsKekRhdGEucmV2aWV3cz1YKGRvYywiWF9yZXZpZXdzIik7IHpEYXRhLnJldmlld2VkU3RhdHVzPSIiOyAvL0VSUzE5MDExOCAjNTMwMDAgVE9ETyBDUk4gdG8gY2hlY2sKdmFyIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwMTE4ICM1MzAwMCBUT0RPIEFTTSB0byBtb3ZlIHRvIExpYnJhcnkKdmFyIHQyPW5ldyBEYXRlKCk7CmZvciAodmFyIHA9MTsgcDw9ekRhdGEucGFnZXM7IHArKykgewogICAgYWxlcnQoIkBAQCBFeGFtaW5pbmcgUGFnZSAiICsgcCk7ICAgLy9KUEIxOTAyMjYgRGVidWdnaW5nLi4uCiAgICB2YXIgemQ9ekRhdGEuemlwcGlDb21wYXJlW3BdOwogICAgYWxlcnQoIkBAQCB6aXBwaUNvbXBhcmUgPSAiICsgemQpOwogICAgaWYgKHpkKSB7CiAgICAgICAgYWxlcnQoInBhZ2UgIit6ZC5wYWdlKyIgY29uZmlkZW5jZT0iK3pkLmNvbmZpZGVuY2UrIiUgc3VyZSBpdCBpcyBhICIremQudGVtcGxhdGUpOwogICAgICAgIGlmICgremQuY29uZmlkZW5jZSA+PSB6RGF0YS5jb25maWRlbmNlKSB7CiAgICAgICAgICAgIHpEYXRhLmRvY1R5cGVPQ1I9emQuZG9jVHlwZTsKICAgICAgICAgICAgLy8gU0hSMTgxMjA2IHRyeSB0byBleHRyYWN0IGZpZWxkcyBmb3IgRU5SLCBISVBBQSwgYW5kIERFTU8gdHlwZXMKICAgICAgICAgICAgdmFyIEFEdHlwZXM9IixQQSxFTlIsSElQQUEsREVNTyxDT05TLCI7IC8vRVJTMTkwMjI4ICM1MzAwMCBhIGJpdCBzbWFydGVyIFRPRE8gVGVtcGxhdGUgdGFnCiAgICAgICAgICAgIGlmKEFEdHlwZXMuaW5kZXhPZigiLCIremQuZG9jVHlwZSsiLCIpPi0xIHx8IHpkLmRvY1R5cGUuaW5kZXhPZigiRU5SIik+LTEgfHwgemQuZG9jVHlwZS5pbmRleE9mKCJDT05TIik+LTEpIHsKICAgICAgICAgICAgICAgIHpEYXRhLnppcHBpU2lnbmF0dXJlcz16RGF0YS5leHRyYWN0RGF0YShkb2MsInNpZ25hdHVyZSIsemQudGVtcGxhdGUsemQucGFnZSk7IC8veyJzaWduMSIse3dld2V3ZX0KICAgICAgICAgICAgICAgIC8vVE9ETyBmaW5kIGEgY29uZmlkZW5jZSB0aGF0IGl0IGlzIHNpZ25lZAogICAgICAgICAgICAgICAgZm9yICh2YXIgcyBpbiB6RGF0YS56aXBwaVNpZ25hdHVyZXMpIHsKICAgICAgICAgICAgICAgICAgICBpZiAoekRhdGEuemlwcGlTaWduYXR1cmVzW3NdLmZpbGxlZCA+IDAuMDI4KSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHpEYXRhLnJldmlld2VkU3RhdHVzPSJTaWduZWQiOwogICAgICAgICAgICAgICAgICAgICAgICBpZiAoekRhdGEucmV2aWV3cy5pbmRleE9mKHpkLmRvY1R5cGUpID09IC0xKSB7IC8vRVJTMTkwMTE4ICM1MzAwMAogICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsZmFsc2UsdHJ1ZSk7IC8vRVJTMTkwMTE5IGRvY1NldCBpcyB2ZXJ5IHBpY2t5CiAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YXIgaGlzdG9yeVBhcnNlcj0iIGJ5IGFnZW50IG9yIHBhdGVudCBhICI7IC8vRVJTMTkwMTIxICM1MzAwMCBDUk4gdG8gZXhwbGFpbgogICAgICAgICAgICAgICAgICAgICAgICAgICAgekRhdGEucmV2aWV3cys9ekRhdGEucmV2aWV3ZWRTdGF0dXMraGlzdG9yeVBhcnNlcit6ZC5kb2NUeXBlKyIgYXQgIitub3cwKyI8YnIvPiI7IC8vRVJTMTkwMTE5ICM1MzAwMCBtYWtlIGRvY1NldCBoYXBweQogICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgICAgIC8vRVJTMTkwMTE4IFRPRE8gc2V0IHRoZSBaU3RhY2suc3RhZ2VfX2M9U2lnbmVkCiAgICAgICAgICAgICAgICAgICAgICAgIHZhciBzZlN0YWNrSWQgPSBYKGRvYywiWF9zZlN0YWNrSWQiKTsKICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHNmU3RhY2tJZCAhPT0gIiIgJiYgekRhdGEucmV2aWV3ZWRTdGF0dXMhPT0iIikgeyAvL0VSUzE5MDExOCAjNTMwMDAKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVwZGF0ZVNGUmVjb3JkKGRvYywgenArInpTdGFja19fYyIsIHNmU3RhY2tJZCwgW3pwKyJTdGFnZV9fYyIsIlNpZ25lZCJdKTsKICAgICAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGFsZXJ0KCJzaWduZWQxNiAiK0pTT04uc3RyaW5naWZ5KHpEYXRhLnppcHBpU2lnbmF0dXJlcykpOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQp9CnZhciB0Mz1uZXcgRGF0ZSgpOwphbGVydCgiT0NSIHJhY2UgIit6RGF0YS5kb2NUeXBlT0NSKyIgaW4gIisodDEuZ2V0VGltZSgpLXQwLmdldFRpbWUoKSkrIiB0aGVuICIrICh0Mi5nZXRUaW1lKCktdDEuZ2V0VGltZSgpKSsiIHRoZW4gIisgKHQzLmdldFRpbWUoKS10Mi5nZXRUaW1lKCkpKTsKdmFyIHpUeXBlPWRvYy5YKCJYX2RvY1R5cGUiKTsKaWYgKDE9PT0xIHx8IGRvYy5kb2NUeXBlICE9IHpEYXRhLmRvY1R5cGVPQ1IpIHsKICAgIHZhciBhcnJPZlBhaXJzMCA9IFtdOwogICAgYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlT0NSIix6RGF0YS5kb2NUeXBlT0NSKTsKCWFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZSIsekRhdGEuZG9jVHlwZU9DUik7CglhcnJPZlBhaXJzMC5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIix6RGF0YS5yZXZpZXdlZFN0YXR1cyk7CglpZiAoekRhdGEucmV2aWV3cyAhPT0gIiIpIHsgYXJyT2ZQYWlyczAucHVzaCgiWF9yZXZpZXdzIix6RGF0YS5yZXZpZXdzKTsgfSAvL0VSUzE5MDExOCBmb3IgdGhlIGRvY1NldCBjaGVja2JveGVzCglhcnJPZlBhaXJzMC5wdXNoKCJYX3ppcHBpQ29tcGFyZSIsSlNPTi5zdHJpbmdpZnkoekRhdGEuemlwcGlDb21wYXJlKSk7IC8vRVJTMTgxMTIzIFRPRE8gSlNPTiBpbiBYTUw/CglhcnJPZlBhaXJzMC5wdXNoKCJYX3ppcHBpU2lnbmF0dXJlcyIsSlNPTi5zdHJpbmdpZnkoekRhdGEuemlwcGlTaWduYXR1cmVzKSk7IC8vRVJTMTgxMTIzIFRPRE8gSlNPTiBpbiBYTUw/CiAgICB6VHlwZT16RGF0YS5kb2NUeXBlT0NSOyAvL0VSUzE3MDMzMCBzYXZlZCBiZWxvdyBpbnRvIFNGIGZheFR5cGVfX2MgZmllbGQKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlyczApOwp9Cgo="},"ordinal":17}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//TDDO detect button and then return
if (1===0 || doc.X("X_buttonAction")=="RunOCR") {rool.evalContinue=false; alert("OCR ALL DONE!");} //conditional library?
alert("BUTTON "+doc.X("X_buttonAction") +" status="+doc.status);

var t0=new Date();
zData.docTypeOCR="FAX";
//ERS190831 just new work zData.docTyper2017(doc,{"PAPP":"Patient~ Assistance~","PAUTH":"Prior~ Authorization~","ENRL":"Enrollment~","FAX":""});
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
zData.pages=X(doc,"X_pages"); if (!zData.pages) {zData.pages=1;} //ERS181124 TODO CRN to add to doc
zData.confidence=0.75;
zData.confidence=0.80; //SHR181206 lowered the confidence level for testing was .9
if (1===1) { //ERS190831 #61196 zp08 tests
    someTemplates=["DEMO:PatientDemoForm_Form","ENRL:Enrollment_Form","TENR:TBW2019_Form"]; 
    someTemplates=["INS:MissingInsuranceReferral_Form", "ENRL:zChartamEnrollment_Form", "CONS:zCARTaHIPAA_Form"]; //ERS190831 test for 00005014X1d9d95jvj
    zData.pages=2;
}
alert("ERS190318 someTemplate="+someTemplates);

//zData.confidence=0.40; //JPB190116 lowered the confidence level for testing was .8 //ERS190118
zData.zippiCompare=zData.docTyperAD(doc,zData.confidence,someTemplates,zData.pages); //ERS190118 AD was missing //ERS190831 added pages
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
