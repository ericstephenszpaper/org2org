<!--
// Name: Run OCR on Fax Page
// Committer: eric.stephens@zpaper.com
// Update: #53000 a bit smarter TODO Template tag
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-02-28 22:33:13","evalContinue":"true","active":true,"button":"RunOCR","name":"Run OCR on Fax Page","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"RunOCR","operation":"equals"},{"name":"doc.docType","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9URERPIGRldGVjdCBidXR0b24gYW5kIHRoZW4gcmV0dXJuCmlmICgxPT09MCB8fCBkb2MuWCgiWF9idXR0b25BY3Rpb24iKT09IlJ1bk9DUiIpIHtyb29sLmV2YWxDb250aW51ZT1mYWxzZTsgYWxlcnQoIk9DUiBBTEwgRE9ORSEiKTt9IC8vY29uZGl0aW9uYWwgbGlicmFyeT8KYWxlcnQoIkJVVFRPTiAiK2RvYy5YKCJYX2J1dHRvbkFjdGlvbiIpICsiIHN0YXR1cz0iK2RvYy5zdGF0dXMpOwoKdmFyIHQwPW5ldyBEYXRlKCk7CnpEYXRhLmRvY1R5cGVPQ1I9ekRhdGEuZG9jVHlwZXIyMDE3KGRvYyx7IlBBUFAiOiJQYXRpZW50fiBBc3Npc3RhbmNlfiIsIlBBVVRIIjoiUHJpb3J+IEF1dGhvcml6YXRpb25+IiwiRU5STCI6IkVucm9sbG1lbnR+IiwiRkFYIjoiIn0pOwp2YXIgdDE9bmV3IERhdGUoKTsKYWxlcnQoImRvY1R5cGUgd2FzICIrZG9jLmRvY1R5cGUrIiBub3cgIisgekRhdGEuZG9jVHlwZU9DUik7Ci8vRVJTMTgxMTIzICM0NzQwOCB6RGF0YS5kb2NUeXBlcihkb2MsY29uZmlkZW5jZSx0YXJnZXRzKQovL3ZhciBzb21lVGVtcGxhdGVzPVsiVEVOUjpUZWNpZGVyYUVucm9sbG1lbnRfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIl07IC8vcWEwMQovL3ZhciBzb21lVGVtcGxhdGVzPVsiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQldfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIiwiREVNTzpQYXRpZW50RGVtb1NoZWV0X0Zvcm0iLCJISVBBQTpISVBBQV9Gb3JtIl07IC8vcGFwCnZhciBzb21lVGVtcGxhdGVzPVsiQ09OUzpDb3NlbnR5eFNlcnZpY2VSZXFfRm9ybSIsIkhJUFBBOkhJUFBBY29uc2VudF9Gb3JtIl07IC8vZHYxOSBFUlMxODEyMDcgIzU0MzMxCnNvbWVUZW1wbGF0ZXM9WyJERU1POlBhdGllbnREZW1vRm9ybV9Gb3JtIiwiRU5STDpFbnJvbGxtZW50X0Zvcm0iLCJURU5SOlRCVzIwMTlfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwKICAgICJDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLCJERU1POlBhdGllbnREZW1vU2hlZXRfRm9ybSIsIkhJUEFBOkhJUEFBX0Zvcm0iXTsgIC8vRVJTMTgxMjExIHVwZGF0ZWQgZnJvbSBkdjE5CiAgICAvL0pQQjE5MDExNyBjaGFuZ2VkIGZvcm1JZCB0byBoYXZlIDIwMTkKc29tZVRlbXBsYXRlcy5wdXNoKCJFTlJMOnpDQVJUYUVucm9sbG1lbnRfRm9ybSIpOyAvL0VSUzE4MTIxNwpzb21lVGVtcGxhdGVzLnB1c2goIlNFTlI6U0JXX0Zvcm0iKTsgLy9FUlMxOTAxMTUKc29tZVRlbXBsYXRlcz1bIlBBOjAwMDA1MDE0WjFkNDg4ZWV2NiIsIlBBOk1SWFBBX0Zvcm0iXTsgLy8sIkRFTU86UGF0aWVudERlbW9Gb3JtX0Zvcm0iLCJFTlJMOkVucm9sbG1lbnRfRm9ybSIsIlRFTlI6VEJXMjAxOV9Gb3JtIl07IC8vRVJTMTkwMjI4ICM1MzAwMCBUT0RPIHRlYWNoIEp1ZHNvbgp6RGF0YS5wYWdlcz1YKGRvYywiWF9wYWdlcyIpOyBpZiAoIXpEYXRhLnBhZ2VzKSB7ekRhdGEucGFnZXM9MTt9IC8vRVJTMTgxMTI0IFRPRE8gQ1JOIHRvIGFkZCB0byBkb2MKekRhdGEuY29uZmlkZW5jZT0wLjc1Owp6RGF0YS5jb25maWRlbmNlPTAuODA7IC8vU0hSMTgxMjA2IGxvd2VyZWQgdGhlIGNvbmZpZGVuY2UgbGV2ZWwgZm9yIHRlc3Rpbmcgd2FzIC45Ci8vekRhdGEuY29uZmlkZW5jZT0wLjQwOyAvL0pQQjE5MDExNiBsb3dlcmVkIHRoZSBjb25maWRlbmNlIGxldmVsIGZvciB0ZXN0aW5nIHdhcyAuOCAvL0VSUzE5MDExOAp6RGF0YS56aXBwaUNvbXBhcmU9ekRhdGEuZG9jVHlwZXJBRChkb2MsekRhdGEuY29uZmlkZW5jZSxzb21lVGVtcGxhdGVzKTsgLy9FUlMxOTAxMTggQUQgd2FzIG1pc3NpbmcKYWxlcnQoIlN0YWNrIGhhcyAiK3pEYXRhLnppcHBpQ29tcGFyZS5sZW5ndGgrIiBkb2N1bWVudHMgaW4gIit6RGF0YS5wYWdlcysiIHBhZ2VzIik7CmFsZXJ0KCJEb2NUeXBlciByZXN1bHRzIGFycmF5OlxuIiArIEpTT04uc3RyaW5naWZ5KHpEYXRhLnppcHBpQ29tcGFyZSkpOwp6RGF0YS5yZXZpZXdzPVgoZG9jLCJYX3Jldmlld3MiKTsgekRhdGEucmV2aWV3ZWRTdGF0dXM9IiI7IC8vRVJTMTkwMTE4ICM1MzAwMCBUT0RPIENSTiB0byBjaGVjawp2YXIgenA9IlpQQVBFUl9fIjsgLy9FUlMxOTAxMTggIzUzMDAwIFRPRE8gQVNNIHRvIG1vdmUgdG8gTGlicmFyeQp2YXIgdDI9bmV3IERhdGUoKTsKZm9yICh2YXIgcD0xOyBwPD16RGF0YS5wYWdlczsgcCsrKSB7CiAgICBhbGVydCgiQEBAIEV4YW1pbmluZyBQYWdlICIgKyBwKTsgICAvL0pQQjE5MDIyNiBEZWJ1Z2dpbmcuLi4KICAgIHZhciB6ZD16RGF0YS56aXBwaUNvbXBhcmVbcF07CiAgICBhbGVydCgiQEBAIHppcHBpQ29tcGFyZSA9ICIgKyB6ZCk7CiAgICBpZiAoemQpIHsKICAgICAgICBhbGVydCgicGFnZSAiK3pkLnBhZ2UrIiBjb25maWRlbmNlPSIremQuY29uZmlkZW5jZSsiJSBzdXJlIGl0IGlzIGEgIit6ZC50ZW1wbGF0ZSk7CiAgICAgICAgaWYgKCt6ZC5jb25maWRlbmNlID49IHpEYXRhLmNvbmZpZGVuY2UpIHsKICAgICAgICAgICAgekRhdGEuZG9jVHlwZU9DUj16ZC5kb2NUeXBlOwogICAgICAgICAgICAvLyBTSFIxODEyMDYgdHJ5IHRvIGV4dHJhY3QgZmllbGRzIGZvciBFTlIsIEhJUEFBLCBhbmQgREVNTyB0eXBlcwogICAgICAgICAgICB2YXIgQUR0eXBlcz0iLFBBLEVOUixISVBBQSxERU1PLENPTlMsIjsgLy9FUlMxOTAyMjggIzUzMDAwIGEgYml0IHNtYXJ0ZXIgVE9ETyBUZW1wbGF0ZSB0YWcKICAgICAgICAgICAgaWYoQUR0eXBlcy5pbmRleE9mKCIsIit6ZC5kb2NUeXBlKyIsIik+LTEgfHwgemQuZG9jVHlwZS5pbmRleE9mKCJFTlIiKT4tMSB8fCB6ZC5kb2NUeXBlLmluZGV4T2YoIkNPTlMiKT4tMSkgewogICAgICAgICAgICAgICAgekRhdGEuemlwcGlTaWduYXR1cmVzPXpEYXRhLmV4dHJhY3REYXRhKGRvYywic2lnbmF0dXJlIix6ZC50ZW1wbGF0ZSx6ZC5wYWdlKTsgLy97InNpZ24xIix7d2V3ZXdlfQogICAgICAgICAgICAgICAgLy9UT0RPIGZpbmQgYSBjb25maWRlbmNlIHRoYXQgaXQgaXMgc2lnbmVkCiAgICAgICAgICAgICAgICBmb3IgKHZhciBzIGluIHpEYXRhLnppcHBpU2lnbmF0dXJlcykgewogICAgICAgICAgICAgICAgICAgIGlmICh6RGF0YS56aXBwaVNpZ25hdHVyZXNbc10uZmlsbGVkID4gMC4wMjgpIHsKICAgICAgICAgICAgICAgICAgICAgICAgekRhdGEucmV2aWV3ZWRTdGF0dXM9IlNpZ25lZCI7CiAgICAgICAgICAgICAgICAgICAgICAgIGlmICh6RGF0YS5yZXZpZXdzLmluZGV4T2YoemQuZG9jVHlwZSkgPT0gLTEpIHsgLy9FUlMxOTAxMTggIzUzMDAwCiAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsgLy9FUlMxOTAxMTkgZG9jU2V0IGlzIHZlcnkgcGlja3kKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciBoaXN0b3J5UGFyc2VyPSIgYnkgYWdlbnQgb3IgcGF0ZW50IGEgIjsgLy9FUlMxOTAxMjEgIzUzMDAwIENSTiB0byBleHBsYWluCiAgICAgICAgICAgICAgICAgICAgICAgICAgICB6RGF0YS5yZXZpZXdzKz16RGF0YS5yZXZpZXdlZFN0YXR1cytoaXN0b3J5UGFyc2VyK3pkLmRvY1R5cGUrIiBhdCAiK25vdzArIjxici8+IjsgLy9FUlMxOTAxMTkgIzUzMDAwIG1ha2UgZG9jU2V0IGhhcHB5CiAgICAgICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgICAgICAgICAgLy9FUlMxOTAxMTggVE9ETyBzZXQgdGhlIFpTdGFjay5zdGFnZV9fYz1TaWduZWQKICAgICAgICAgICAgICAgICAgICAgICAgdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCJYX3NmU3RhY2tJZCIpOwogICAgICAgICAgICAgICAgICAgICAgICBpZiAoc2ZTdGFja0lkICE9PSAiIiAmJiB6RGF0YS5yZXZpZXdlZFN0YXR1cyE9PSIiKSB7IC8vRVJTMTkwMTE4ICM1MzAwMAogICAgICAgICAgICAgICAgICAgICAgICAgICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCB6cCsielN0YWNrX19jIiwgc2ZTdGFja0lkLCBbenArIlN0YWdlX19jIiwiU2lnbmVkIl0pOwogICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgYWxlcnQoInNpZ25lZDE2ICIrSlNPTi5zdHJpbmdpZnkoekRhdGEuemlwcGlTaWduYXR1cmVzKSk7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9Cn0KdmFyIHQzPW5ldyBEYXRlKCk7CmFsZXJ0KCJPQ1IgcmFjZSAiK3pEYXRhLmRvY1R5cGVPQ1IrIiBpbiAiKyh0MS5nZXRUaW1lKCktdDAuZ2V0VGltZSgpKSsiIHRoZW4gIisgKHQyLmdldFRpbWUoKS10MS5nZXRUaW1lKCkpKyIgdGhlbiAiKyAodDMuZ2V0VGltZSgpLXQyLmdldFRpbWUoKSkpOwp2YXIgelR5cGU9ZG9jLlgoIlhfZG9jVHlwZSIpOwppZiAoMT09PTEgfHwgZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgdmFyIGFyck9mUGFpcnMwID0gW107CiAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLHpEYXRhLmRvY1R5cGVPQ1IpOwoJYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIix6RGF0YS5kb2NUeXBlT0NSKTsKCWFyck9mUGFpcnMwLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLHpEYXRhLnJldmlld2VkU3RhdHVzKTsKCWlmICh6RGF0YS5yZXZpZXdzICE9PSAiIikgeyBhcnJPZlBhaXJzMC5wdXNoKCJYX3Jldmlld3MiLHpEYXRhLnJldmlld3MpOyB9IC8vRVJTMTkwMTE4IGZvciB0aGUgZG9jU2V0IGNoZWNrYm94ZXMKCWFyck9mUGFpcnMwLnB1c2goIlhfemlwcGlDb21wYXJlIixKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaUNvbXBhcmUpKTsgLy9FUlMxODExMjMgVE9ETyBKU09OIGluIFhNTD8KCWFyck9mUGFpcnMwLnB1c2goIlhfemlwcGlTaWduYXR1cmVzIixKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaVNpZ25hdHVyZXMpKTsgLy9FUlMxODExMjMgVE9ETyBKU09OIGluIFhNTD8KICAgIHpUeXBlPXpEYXRhLmRvY1R5cGVPQ1I7IC8vRVJTMTcwMzMwIHNhdmVkIGJlbG93IGludG8gU0YgZmF4VHlwZV9fYyBmaWVsZAogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7Cn0KCg=="},"ordinal":17}

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
someTemplates=["PA:00005014Z1d488eev6","PA:MRXPA_Form"]; //,"DEMO:PatientDemoForm_Form","ENRL:Enrollment_Form","TENR:TBW2019_Form"]; //ERS190228 #53000 TODO teach Judson
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
