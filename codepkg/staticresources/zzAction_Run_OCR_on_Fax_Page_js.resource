<!--
// Name: Run OCR on Fax Page
// Committer: eric.stephens@zpaper.com
// Update: ERS190831 do not try 2017 strategy
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-08-31 15:43:49","evalContinue":"true","active":true,"button":"RunOCR","name":"Run OCR on Fax Page","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"RunOCR","operation":"equals"},{"name":"doc.docType","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9URERPIGRldGVjdCBidXR0b24gYW5kIHRoZW4gcmV0dXJuCmlmICgxPT09MCB8fCBkb2MuWCgiWF9idXR0b25BY3Rpb24iKT09IlJ1bk9DUiIpIHtyb29sLmV2YWxDb250aW51ZT1mYWxzZTsgYWxlcnQoIk9DUiBBTEwgRE9ORSEiKTt9IC8vY29uZGl0aW9uYWwgbGlicmFyeT8KYWxlcnQoIkJVVFRPTiAiK2RvYy5YKCJYX2J1dHRvbkFjdGlvbiIpICsiIHN0YXR1cz0iK2RvYy5zdGF0dXMpOwoKdmFyIHQwPW5ldyBEYXRlKCk7CnpEYXRhLmRvY1R5cGVPQ1I9IkZBWCI7IC8vRVJTMTkwODMxIHpEYXRhLmRvY1R5cGVyMjAxNyhkb2MseyJQQVBQIjoiUGF0aWVudH4gQXNzaXN0YW5jZX4iLCJQQVVUSCI6IlByaW9yfiBBdXRob3JpemF0aW9ufiIsIkVOUkwiOiJFbnJvbGxtZW50fiIsIkZBWCI6IiJ9KTsKdmFyIHQxPW5ldyBEYXRlKCk7CmFsZXJ0KCJkb2NUeXBlIHdhcyAiK2RvYy5kb2NUeXBlKyIgbm93ICIrIHpEYXRhLmRvY1R5cGVPQ1IpOwovL0VSUzE4MTEyMyAjNDc0MDggekRhdGEuZG9jVHlwZXIoZG9jLGNvbmZpZGVuY2UsdGFyZ2V0cykKLy92YXIgc29tZVRlbXBsYXRlcz1bIlRFTlI6VGVjaWRlcmFFbnJvbGxtZW50X0Zvcm0iLCJFTlJMOnpDaGFydGFtRW5yb2xsbWVudENhcHR1cmVfRm9ybSIsIkNPTjp6Q2hhcnRhbUNvbnNlbnRfRm9ybSJdOyAvL3FhMDEKLy92YXIgc29tZVRlbXBsYXRlcz1bIkRFTU86UGF0aWVudERlbW9Gb3JtX0Zvcm0iLCJFTlJMOkVucm9sbG1lbnRfRm9ybSIsIlRFTlI6VEJXX0Zvcm0iLCJFTlJMOnpDaGFydGFtRW5yb2xsbWVudENhcHR1cmVfRm9ybSIsIkNPTjp6Q2hhcnRhbUNvbnNlbnRfRm9ybSIsIkRFTU86UGF0aWVudERlbW9TaGVldF9Gb3JtIiwiSElQQUE6SElQQUFfRm9ybSJdOyAvL3BhcAp2YXIgc29tZVRlbXBsYXRlcz1bIkNPTlM6Q29zZW50eXhTZXJ2aWNlUmVxX0Zvcm0iLCJISVBQQTpISVBQQWNvbnNlbnRfRm9ybSJdOyAvL2R2MTkgRVJTMTgxMjA3ICM1NDMzMQpzb21lVGVtcGxhdGVzPVsiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQlcyMDE5X0Zvcm0iLCJFTlJMOnpDaGFydGFtRW5yb2xsbWVudENhcHR1cmVfRm9ybSIsCiAgICAiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIiwiREVNTzpQYXRpZW50RGVtb1NoZWV0X0Zvcm0iLCJISVBBQTpISVBBQV9Gb3JtIl07ICAvL0VSUzE4MTIxMSB1cGRhdGVkIGZyb20gZHYxOQogICAgLy9KUEIxOTAxMTcgY2hhbmdlZCBmb3JtSWQgdG8gaGF2ZSAyMDE5CnNvbWVUZW1wbGF0ZXMucHVzaCgiRU5STDp6Q0FSVGFFbnJvbGxtZW50X0Zvcm0iKTsgLy9FUlMxODEyMTcKc29tZVRlbXBsYXRlcy5wdXNoKCJTRU5SOlNCV19Gb3JtIik7IC8vRVJTMTkwMTE1Ci8vRVJTMTkwMzE4ICM1NzA5MCBnZXQgdGhlIE8yTyBzZXR0aW5ncyBmb3Igd2hpY2ggZm9ybXMgdG8gY29tcGFyZSB3aXRoCi8vc29tZVRlbXBsYXRlcz1bIlBBOjAwMDA1MDE0WjFkNDg4ZWV2NiIsIlBBOk1SWFBBX0Zvcm0iXTsgLy8sIkRFTU86UGF0aWVudERlbW9Gb3JtX0Zvcm0iLCJFTlJMOkVucm9sbG1lbnRfRm9ybSIsIlRFTlI6VEJXMjAxOV9Gb3JtIl07IC8vRVJTMTkwMjI4ICM1MzAwMCBUT0RPIHRlYWNoIEp1ZHNvbgp2YXIgb3JnMm9yZ0NTPWRvYy5rYkRhdGEuY3VzdG9tU2V0dGluZ3M7CnZhciBjb3J5VG9Ebz1YQ3VzdG9tU2V0dGluZyhkb2MsIkF1dG9Ecml2ZV9fYyIpOwovL0NSTjE5MDMyMCBJIGhhdmUgdXBkYXRlZCB0aGUgemlwcGkgY29kZSB0byBzdXBwb3J0IHRoZSBkb2Mua2JEYXRhLmN1c3RvbVNldHRpbmdzIGFzIHRoZSBsZWdhY3kgY29kZSBleHBlY3RzLgovLyBBcyBzb29uIGFzIG15IGNoYW5nZSBpcyBtZXJnZWQgaW50byB0aGUgZGV2ZWxvcCBicmFuY2gsIHdlIGNhbiBtYWtlIGEgbmV3IFdBUiBmaWxlIGFuZCB0ZXN0IHRoaXMgb3V0LgphbGVydCgiRVJTMTkwMzE4IGNvcnlUb0RvPSIrY29yeVRvRG8rIiBvcmcyb3JnQ1M9Iitvcmcyb3JnQ1MpOwppZiAoMT09PTAgJiYgb3JnMm9yZ0NTICYmIG9yZzJvcmdDUy5BdXRvRHJpdmVfX2MgJiYgb3JnMm9yZ0NTLkF1dG9Ecml2ZV9fYy5pbmRleE9mKCI6Iik+LTEgKSB7IC8vRVJTMTkwMzE4ICM1NzE5NgogICAgc29tZVRlbXBsYXRlcz1vcmcyb3JnQ1MuQXV0b0RyaXZlX19jLnNwbGl0KCIsIik7Cn0gZWxzZSBpZiAoMT09PTEgJiYgY29yeVRvRG8gJiYgY29yeVRvRG8uaW5kZXhPZigiOiIpPi0xICkgeyAvL0VSUzE5MDMxOCAjNTcxOTYKICAgIHNvbWVUZW1wbGF0ZXM9Y29yeVRvRG8uc3BsaXQoIiwiKTsKfSBlbHNlIHsKICAgIGFsZXJ0KCJFUlMxOTAzMTggT1ZFUlJJREUgTk9UIElOIENVU1RPTSBTRVRUSU5HIik7CiAgICBzb21lVGVtcGxhdGVzPSJURU5SOlRCVzIwMTlfRm9ybSxERU1POlBhdGllbnREZW1vRm9ybV9Gb3JtLEhJUEFBOk1ha2FuYUhlYWx0aEhJUEFBX0Zvcm0sRU5STDpFbnJvbGxtZW50X0Zvcm0sRU5STDp6Q2hhcnRhbUVucm9sbG1lbnRDYXB0dXJlX0Zvcm0sQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIi5zcGxpdCgiLCIpOwp9CmFsZXJ0KCJFUlMxOTAzMTggc29tZVRlbXBsYXRlPSIrc29tZVRlbXBsYXRlcyk7CmlmICgxPT09MSkgeyAvL0VSUzE5MDUxNiBtYWtlIGEgY2FsbCB0byAvemlwcGkvdmlldy9QTkcvIHRvIGZvcmNlIDIwMCBkcGkgcG5ncyB0byBiZSBidWlsdAogICAgLy9odHRwczovL2VkZ2UuenBhcGVyLmNvbS9yZWQvekRvY0ltYWdlLzAwMDA0ZWU4WDFkYXVxMmowci8wNS9wYWdlLnBuZwogICAgdmFyIHpVUkw9ekRhdGEubnJTZXJ2ZXIrIi9yZWQvekRvY0ltYWdlIjsgLy9FUlMxOTAzMTggVE9ETyBhc2sgU3RldmUgd2hpY2ggL3JlZCB0byB1c2UKICAgIHZhciB0MD1uZXcgRGF0ZSgpOwogICAgdmFyIHBhZ2U9IjAxIjsKICAgIHZhciByZXN1bHRzPXdnZXQoZG9jLHpVUkwrIi8iK2RvYy5kYklEKyIvIitwYWdlKyIvcGFnZS5wbmciLFtdLHpEYXRhLmhlYWRlcnMpOyAvL2tiRGF0YS5nZXRYQVBJS2V5KCkgYWxyZWFkeSBpbiB3Z2V0IG9yIGZsb3cKICAgIHZhciB0MT1uZXcgRGF0ZSgpOwogICAgYWxlcnQoIndnZXQ0MjogIisodDEuZ2V0VGltZSgpLXQwLmdldFRpbWUoKSkrIm1zIGZvciAiK3Jlc3VsdHMubGVuZ3RoKCkgKyAiIGJ5dGVzIik7Cn0KCnpEYXRhLnBhZ2VzPVgoZG9jLCJYX3BhZ2VzIik7IGlmICghekRhdGEucGFnZXMpIHt6RGF0YS5wYWdlcz0xO30gLy9FUlMxODExMjQgVE9ETyBDUk4gdG8gYWRkIHRvIGRvYwp6RGF0YS5jb25maWRlbmNlPTAuNzU7CnpEYXRhLmNvbmZpZGVuY2U9MC44MDsgLy9TSFIxODEyMDYgbG93ZXJlZCB0aGUgY29uZmlkZW5jZSBsZXZlbCBmb3IgdGVzdGluZyB3YXMgLjkKLy96RGF0YS5jb25maWRlbmNlPTAuNDA7IC8vSlBCMTkwMTE2IGxvd2VyZWQgdGhlIGNvbmZpZGVuY2UgbGV2ZWwgZm9yIHRlc3Rpbmcgd2FzIC44IC8vRVJTMTkwMTE4CnpEYXRhLnppcHBpQ29tcGFyZT16RGF0YS5kb2NUeXBlckFEKGRvYyx6RGF0YS5jb25maWRlbmNlLHNvbWVUZW1wbGF0ZXMpOyAvL0VSUzE5MDExOCBBRCB3YXMgbWlzc2luZwphbGVydCgiU3RhY2sgaGFzICIrekRhdGEuemlwcGlDb21wYXJlLmxlbmd0aCsiIGRvY3VtZW50cyBpbiAiK3pEYXRhLnBhZ2VzKyIgcGFnZXMiKTsKYWxlcnQoIkRvY1R5cGVyIHJlc3VsdHMgYXJyYXk6XG4iICsgSlNPTi5zdHJpbmdpZnkoekRhdGEuemlwcGlDb21wYXJlKSk7CnpEYXRhLnJldmlld3M9WChkb2MsIlhfcmV2aWV3cyIpOyB6RGF0YS5yZXZpZXdlZFN0YXR1cz0iIjsgLy9FUlMxOTAxMTggIzUzMDAwIFRPRE8gQ1JOIHRvIGNoZWNrCnZhciB6cD0iWlBBUEVSX18iOyAvL0VSUzE5MDExOCAjNTMwMDAgVE9ETyBBU00gdG8gbW92ZSB0byBMaWJyYXJ5CnZhciB0Mj1uZXcgRGF0ZSgpOwpmb3IgKHZhciBwPTE7IHA8PXpEYXRhLnBhZ2VzOyBwKyspIHsKICAgIGFsZXJ0KCJAQEAgRXhhbWluaW5nIFBhZ2UgIiArIHApOyAgIC8vSlBCMTkwMjI2IERlYnVnZ2luZy4uLgogICAgdmFyIHpkPXpEYXRhLnppcHBpQ29tcGFyZVtwXTsKICAgIGFsZXJ0KCJAQEAgemlwcGlDb21wYXJlID0gIiArIHpkKTsKICAgIGlmICh6ZCkgewogICAgICAgIGFsZXJ0KCJwYWdlICIremQucGFnZSsiIGNvbmZpZGVuY2U9Iit6ZC5jb25maWRlbmNlKyIlIHN1cmUgaXQgaXMgYSAiK3pkLnRlbXBsYXRlKTsKICAgICAgICBpZiAoK3pkLmNvbmZpZGVuY2UgPj0gekRhdGEuY29uZmlkZW5jZSkgewogICAgICAgICAgICB6RGF0YS5kb2NUeXBlT0NSPXpkLmRvY1R5cGU7CiAgICAgICAgICAgIC8vIFNIUjE4MTIwNiB0cnkgdG8gZXh0cmFjdCBmaWVsZHMgZm9yIEVOUiwgSElQQUEsIGFuZCBERU1PIHR5cGVzCiAgICAgICAgICAgIHZhciBBRHR5cGVzPSIsUEEsRU5SLEhJUEFBLERFTU8sQ09OUywiOyAvL0VSUzE5MDIyOCAjNTMwMDAgYSBiaXQgc21hcnRlciBUT0RPIFRlbXBsYXRlIHRhZwogICAgICAgICAgICBpZihBRHR5cGVzLmluZGV4T2YoIiwiK3pkLmRvY1R5cGUrIiwiKT4tMSB8fCB6ZC5kb2NUeXBlLmluZGV4T2YoIkVOUiIpPi0xIHx8IHpkLmRvY1R5cGUuaW5kZXhPZigiQ09OUyIpPi0xKSB7CiAgICAgICAgICAgICAgICB6RGF0YS56aXBwaVNpZ25hdHVyZXM9ekRhdGEuZXh0cmFjdERhdGEoZG9jLCJzaWduYXR1cmUiLHpkLnRlbXBsYXRlLHpkLnBhZ2UpOyAvL3sic2lnbjEiLHt3ZXdld2V9CiAgICAgICAgICAgICAgICAvL1RPRE8gZmluZCBhIGNvbmZpZGVuY2UgdGhhdCBpdCBpcyBzaWduZWQKICAgICAgICAgICAgICAgIGZvciAodmFyIHMgaW4gekRhdGEuemlwcGlTaWduYXR1cmVzKSB7CiAgICAgICAgICAgICAgICAgICAgaWYgKHpEYXRhLnppcHBpU2lnbmF0dXJlc1tzXS5maWxsZWQgPiAwLjAyOCkgewogICAgICAgICAgICAgICAgICAgICAgICB6RGF0YS5yZXZpZXdlZFN0YXR1cz0iU2lnbmVkIjsKICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHpEYXRhLnJldmlld3MuaW5kZXhPZih6ZC5kb2NUeXBlKSA9PSAtMSkgeyAvL0VSUzE5MDExOCAjNTMwMDAKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOyAvL0VSUzE5MDExOSBkb2NTZXQgaXMgdmVyeSBwaWNreQogICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFyIGhpc3RvcnlQYXJzZXI9IiBieSBhZ2VudCBvciBwYXRlbnQgYSAiOyAvL0VSUzE5MDEyMSAjNTMwMDAgQ1JOIHRvIGV4cGxhaW4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIHpEYXRhLnJldmlld3MrPXpEYXRhLnJldmlld2VkU3RhdHVzK2hpc3RvcnlQYXJzZXIremQuZG9jVHlwZSsiIGF0ICIrbm93MCsiPGJyLz4iOyAvL0VSUzE5MDExOSAjNTMwMDAgbWFrZSBkb2NTZXQgaGFwcHkKICAgICAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgICAgICAgICAvL0VSUzE5MDExOCBUT0RPIHNldCB0aGUgWlN0YWNrLnN0YWdlX19jPVNpZ25lZAogICAgICAgICAgICAgICAgICAgICAgICB2YXIgc2ZTdGFja0lkID0gWChkb2MsIlhfc2ZTdGFja0lkIik7CiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChzZlN0YWNrSWQgIT09ICIiICYmIHpEYXRhLnJldmlld2VkU3RhdHVzIT09IiIpIHsgLy9FUlMxOTAxMTggIzUzMDAwCiAgICAgICAgICAgICAgICAgICAgICAgICAgICB1cGRhdGVTRlJlY29yZChkb2MsIHpwKyJ6U3RhY2tfX2MiLCBzZlN0YWNrSWQsIFt6cCsiU3RhZ2VfX2MiLCJTaWduZWQiXSk7CiAgICAgICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICBhbGVydCgic2lnbmVkMTYgIitKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaVNpZ25hdHVyZXMpKTsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KfQp2YXIgdDM9bmV3IERhdGUoKTsKYWxlcnQoIk9DUiByYWNlICIrekRhdGEuZG9jVHlwZU9DUisiIGluICIrKHQxLmdldFRpbWUoKS10MC5nZXRUaW1lKCkpKyIgdGhlbiAiKyAodDIuZ2V0VGltZSgpLXQxLmdldFRpbWUoKSkrIiB0aGVuICIrICh0My5nZXRUaW1lKCktdDIuZ2V0VGltZSgpKSk7CnZhciB6VHlwZT1kb2MuWCgiWF9kb2NUeXBlIik7CmlmICgxPT09MSB8fCBkb2MuZG9jVHlwZSAhPSB6RGF0YS5kb2NUeXBlT0NSKSB7CiAgICB2YXIgYXJyT2ZQYWlyczAgPSBbXTsKICAgIGFyck9mUGFpcnMwLnB1c2goIlhfZG9jVHlwZU9DUiIsekRhdGEuZG9jVHlwZU9DUik7CglhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGUiLHpEYXRhLmRvY1R5cGVPQ1IpOwoJYXJyT2ZQYWlyczAucHVzaCgiWF9yZXZpZXdlZFN0YXR1cyIsekRhdGEucmV2aWV3ZWRTdGF0dXMpOwoJaWYgKHpEYXRhLnJldmlld3MgIT09ICIiKSB7IGFyck9mUGFpcnMwLnB1c2goIlhfcmV2aWV3cyIsekRhdGEucmV2aWV3cyk7IH0gLy9FUlMxOTAxMTggZm9yIHRoZSBkb2NTZXQgY2hlY2tib3hlcwoJYXJyT2ZQYWlyczAucHVzaCgiWF96aXBwaUNvbXBhcmUiLEpTT04uc3RyaW5naWZ5KHpEYXRhLnppcHBpQ29tcGFyZSkpOyAvL0VSUzE4MTEyMyBUT0RPIEpTT04gaW4gWE1MPwoJYXJyT2ZQYWlyczAucHVzaCgiWF96aXBwaVNpZ25hdHVyZXMiLEpTT04uc3RyaW5naWZ5KHpEYXRhLnppcHBpU2lnbmF0dXJlcykpOyAvL0VSUzE4MTEyMyBUT0RPIEpTT04gaW4gWE1MPwogICAgelR5cGU9ekRhdGEuZG9jVHlwZU9DUjsgLy9FUlMxNzAzMzAgc2F2ZWQgYmVsb3cgaW50byBTRiBmYXhUeXBlX19jIGZpZWxkCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMwKTsKfQoK"},"ordinal":14}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//TDDO detect button and then return
if (1===0 || doc.X("X_buttonAction")=="RunOCR") {rool.evalContinue=false; alert("OCR ALL DONE!");} //conditional library?
alert("BUTTON "+doc.X("X_buttonAction") +" status="+doc.status);

var t0=new Date();
zData.docTypeOCR="FAX"; //ERS190831 zData.docTyper2017(doc,{"PAPP":"Patient~ Assistance~","PAUTH":"Prior~ Authorization~","ENRL":"Enrollment~","FAX":""});
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
if (1===1) { //ERS190516 make a call to /zippi/view/PNG/ to force 200 dpi pngs to be built
    //https://edge.zpaper.com/red/zDocImage/00004ee8X1dauq2j0r/05/page.png
    var zURL=zData.nrServer+"/red/zDocImage"; //ERS190318 TODO ask Steve which /red to use
    var t0=new Date();
    var page="01";
    var results=wget(doc,zURL+"/"+doc.dbID+"/"+page+"/page.png",[],zData.headers); //kbData.getXAPIKey() already in wget or flow
    var t1=new Date();
    alert("wget42: "+(t1.getTime()-t0.getTime())+"ms for "+results.length() + " bytes");
}

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
