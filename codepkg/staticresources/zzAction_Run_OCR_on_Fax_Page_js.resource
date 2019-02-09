<!--
// Name: Run OCR on Fax Page
// Committer: eric.stephens@zpaper.com
// Update: ERS190121 #53000 CRN to explain
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-01-21 16:28:05","evalContinue":"true","active":true,"button":"RunOCR","name":"Run OCR on Fax Page","conditions":{"logic":"or","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"RunOCR","operation":"equals"},{"name":"doc.docType","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9URERPIGRldGVjdCBidXR0b24gYW5kIHRoZW4gcmV0dXJuCmlmICgxPT09MCB8fCBkb2MuWCgiWF9idXR0b25BY3Rpb24iKT09IlJ1bk9DUiIpIHtyb29sLmV2YWxDb250aW51ZT1mYWxzZTsgYWxlcnQoIk9DUiBBTEwgRE9ORSEiKTt9IC8vY29uZGl0aW9uYWwgbGlicmFyeT8KYWxlcnQoIkJVVFRPTiAiK2RvYy5YKCJYX2J1dHRvbkFjdGlvbiIpICsiIHN0YXR1cz0iK2RvYy5zdGF0dXMpOwoKdmFyIHQwPW5ldyBEYXRlKCk7CnpEYXRhLmRvY1R5cGVPQ1I9ekRhdGEuZG9jVHlwZXIyMDE3KGRvYyx7IlBBUFAiOiJQYXRpZW50fiBBc3Npc3RhbmNlfiIsIlBBVVRIIjoiUHJpb3J+IEF1dGhvcml6YXRpb25+IiwiRU5STCI6IkVucm9sbG1lbnR+IiwiRkFYIjoiIn0pOwp2YXIgdDE9bmV3IERhdGUoKTsKYWxlcnQoImRvY1R5cGUgd2FzICIrZG9jLmRvY1R5cGUrIiBub3cgIisgekRhdGEuZG9jVHlwZU9DUik7Ci8vRVJTMTgxMTIzICM0NzQwOCB6RGF0YS5kb2NUeXBlcihkb2MsY29uZmlkZW5jZSx0YXJnZXRzKQovL3ZhciBzb21lVGVtcGxhdGVzPVsiVEVOUjpUZWNpZGVyYUVucm9sbG1lbnRfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIl07IC8vcWEwMQovL3ZhciBzb21lVGVtcGxhdGVzPVsiREVNTzpQYXRpZW50RGVtb0Zvcm1fRm9ybSIsIkVOUkw6RW5yb2xsbWVudF9Gb3JtIiwiVEVOUjpUQldfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwiQ09OOnpDaGFydGFtQ29uc2VudF9Gb3JtIiwiREVNTzpQYXRpZW50RGVtb1NoZWV0X0Zvcm0iLCJISVBBQTpISVBBQV9Gb3JtIl07IC8vcGFwCnZhciBzb21lVGVtcGxhdGVzPVsiQ09OUzpDb3NlbnR5eFNlcnZpY2VSZXFfRm9ybSIsIkhJUFBBOkhJUFBBY29uc2VudF9Gb3JtIl07IC8vZHYxOSBFUlMxODEyMDcgIzU0MzMxCnNvbWVUZW1wbGF0ZXM9WyJERU1POlBhdGllbnREZW1vRm9ybV9Gb3JtIiwiRU5STDpFbnJvbGxtZW50X0Zvcm0iLCJURU5SOlRCVzIwMTlfRm9ybSIsIkVOUkw6ekNoYXJ0YW1FbnJvbGxtZW50Q2FwdHVyZV9Gb3JtIiwKICAgICJDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLCJERU1POlBhdGllbnREZW1vU2hlZXRfRm9ybSIsIkhJUEFBOkhJUEFBX0Zvcm0iXTsgIC8vRVJTMTgxMjExIHVwZGF0ZWQgZnJvbSBkdjE5CiAgICAvL0pQQjE5MDExNyBjaGFuZ2VkIGZvcm1JZCB0byBoYXZlIDIwMTkKc29tZVRlbXBsYXRlcy5wdXNoKCJFTlJMOnpDQVJUYUVucm9sbG1lbnRfRm9ybSIpOyAvL0VSUzE4MTIxNwpzb21lVGVtcGxhdGVzLnB1c2goIlNFTlI6U0JXX0Zvcm0iKTsgLy9FUlMxOTAxMTUKekRhdGEucGFnZXM9WChkb2MsIlhfcGFnZXMiKTsgaWYgKCF6RGF0YS5wYWdlcykge3pEYXRhLnBhZ2VzPTE7fSAvL0VSUzE4MTEyNCBUT0RPIENSTiB0byBhZGQgdG8gZG9jCnpEYXRhLmNvbmZpZGVuY2U9MC43NTsKekRhdGEuY29uZmlkZW5jZT0wLjgwOyAvL1NIUjE4MTIwNiBsb3dlcmVkIHRoZSBjb25maWRlbmNlIGxldmVsIGZvciB0ZXN0aW5nIHdhcyAuOQovL3pEYXRhLmNvbmZpZGVuY2U9MC40MDsgLy9KUEIxOTAxMTYgbG93ZXJlZCB0aGUgY29uZmlkZW5jZSBsZXZlbCBmb3IgdGVzdGluZyB3YXMgLjggLy9FUlMxOTAxMTgKekRhdGEuemlwcGlDb21wYXJlPXpEYXRhLmRvY1R5cGVyQUQoZG9jLHpEYXRhLmNvbmZpZGVuY2Usc29tZVRlbXBsYXRlcyk7IC8vRVJTMTkwMTE4IEFEIHdhcyBtaXNzaW5nCmFsZXJ0KCJTdGFjayBoYXMgIit6RGF0YS56aXBwaUNvbXBhcmUubGVuZ3RoKyIgZG9jdW1lbnRzIGluICIrekRhdGEucGFnZXMrIiBwYWdlcyIpOwphbGVydCgiRG9jVHlwZXIgcmVzdWx0cyBhcnJheTpcbiIgKyBKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaUNvbXBhcmUpKTsKekRhdGEucmV2aWV3cz1YKGRvYywiWF9yZXZpZXdzIik7IHpEYXRhLnJldmlld2VkU3RhdHVzPSIiOyAvL0VSUzE5MDExOCAjNTMwMDAgVE9ETyBDUk4gdG8gY2hlY2sKdmFyIHpwPSJaUEFQRVJfXyI7IC8vRVJTMTkwMTE4ICM1MzAwMCBUT0RPIEFTTSB0byBtb3ZlIHRvIExpYnJhcnkKdmFyIHQyPW5ldyBEYXRlKCk7CmZvciAodmFyIHA9MTsgcDw9ekRhdGEucGFnZXM7IHArKykgewogICAgdmFyIHpkPXpEYXRhLnppcHBpQ29tcGFyZVtwXTsKICAgIGlmICh6ZCkgewogICAgICAgIGFsZXJ0KCJwYWdlICIremQucGFnZSsiIGNvbmZpZGVuY2U9Iit6ZC5jb25maWRlbmNlKyIlIHN1cmUgaXQgaXMgYSAiK3pkLnRlbXBsYXRlKTsKICAgICAgICBpZiAoK3pkLmNvbmZpZGVuY2UgPj0gekRhdGEuY29uZmlkZW5jZSkgewogICAgICAgICAgICB6RGF0YS5kb2NUeXBlT0NSPXpkLmRvY1R5cGU7CiAgICAgICAgICAgIC8vIFNIUjE4MTIwNiB0cnkgdG8gZXh0cmFjdCBmaWVsZHMgZm9yIEVOUiwgSElQQUEsIGFuZCBERU1PIHR5cGVzCiAgICAgICAgICAgIGlmKHpkLmRvY1R5cGUuaW5kZXhPZigiRU5SIik+LTEgfHwgIkhJUEFBIj09PXpkLmRvY1R5cGUgfHwgIkRFTU8iPT09emQuZG9jVHlwZSB8fCB6ZC5kb2NUeXBlLmluZGV4T2YoIkNPTlMiKT4tMSkgewogICAgICAgICAgICAgICAgekRhdGEuemlwcGlTaWduYXR1cmVzPXpEYXRhLmV4dHJhY3REYXRhKGRvYywic2lnbmF0dXJlIix6ZC50ZW1wbGF0ZSx6ZC5wYWdlKTsgLy97InNpZ24xIix7d2V3ZXdlfQogICAgICAgICAgICAgICAgLy9UT0RPIGZpbmQgYSBjb25maWRlbmNlIHRoYXQgaXQgaXMgc2lnbmVkCiAgICAgICAgICAgICAgICBmb3IgKHZhciBzIGluIHpEYXRhLnppcHBpU2lnbmF0dXJlcykgewogICAgICAgICAgICAgICAgICAgIGlmICh6RGF0YS56aXBwaVNpZ25hdHVyZXNbc10uZmlsbGVkID4gMC4wMjgpIHsKICAgICAgICAgICAgICAgICAgICAgICAgekRhdGEucmV2aWV3ZWRTdGF0dXM9IlNpZ25lZCI7CiAgICAgICAgICAgICAgICAgICAgICAgIGlmICh6RGF0YS5yZXZpZXdzLmluZGV4T2YoemQuZG9jVHlwZSkgPT0gLTEpIHsgLy9FUlMxOTAxMTggIzUzMDAwCiAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYyxmYWxzZSx0cnVlKTsgLy9FUlMxOTAxMTkgZG9jU2V0IGlzIHZlcnkgcGlja3kKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciBoaXN0b3J5UGFyc2VyPSIgYnkgYWdlbnQgb3IgcGF0ZW50IGEgIjsgLy9FUlMxOTAxMjEgIzUzMDAwIENSTiB0byBleHBsYWluCiAgICAgICAgICAgICAgICAgICAgICAgICAgICB6RGF0YS5yZXZpZXdzKz16RGF0YS5yZXZpZXdlZFN0YXR1cytoaXN0b3J5UGFyc2VyK3pkLmRvY1R5cGUrIiBhdCAiK25vdzArIjxici8+IjsgLy9FUlMxOTAxMTkgIzUzMDAwIG1ha2UgZG9jU2V0IGhhcHB5CiAgICAgICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgICAgICAgICAgLy9FUlMxOTAxMTggVE9ETyBzZXQgdGhlIFpTdGFjay5zdGFnZV9fYz1TaWduZWQKICAgICAgICAgICAgICAgICAgICAgICAgdmFyIHNmU3RhY2tJZCA9IFgoZG9jLCJYX3NmU3RhY2tJZCIpOwogICAgICAgICAgICAgICAgICAgICAgICBpZiAoc2ZTdGFja0lkICE9PSAiIiAmJiB6RGF0YS5yZXZpZXdlZFN0YXR1cyE9PSIiKSB7IC8vRVJTMTkwMTE4ICM1MzAwMAogICAgICAgICAgICAgICAgICAgICAgICAgICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCB6cCsielN0YWNrX19jIiwgc2ZTdGFja0lkLCBbenArIlN0YWdlX19jIiwiU2lnbmVkIl0pOwogICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgYWxlcnQoInNpZ25lZDE2ICIrSlNPTi5zdHJpbmdpZnkoekRhdGEuemlwcGlTaWduYXR1cmVzKSk7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9Cn0KdmFyIHQzPW5ldyBEYXRlKCk7CmFsZXJ0KCJPQ1IgcmFjZSAiK3pEYXRhLmRvY1R5cGVPQ1IrIiBpbiAiKyh0MS5nZXRUaW1lKCktdDAuZ2V0VGltZSgpKSsiIHRoZW4gIisgKHQyLmdldFRpbWUoKS10MS5nZXRUaW1lKCkpKyIgdGhlbiAiKyAodDMuZ2V0VGltZSgpLXQyLmdldFRpbWUoKSkpOwp2YXIgelR5cGU9ZG9jLlgoIlhfZG9jVHlwZSIpOwppZiAoMT09PTEgfHwgZG9jLmRvY1R5cGUgIT0gekRhdGEuZG9jVHlwZU9DUikgewogICAgdmFyIGFyck9mUGFpcnMwID0gW107CiAgICBhcnJPZlBhaXJzMC5wdXNoKCJYX2RvY1R5cGVPQ1IiLHpEYXRhLmRvY1R5cGVPQ1IpOwoJYXJyT2ZQYWlyczAucHVzaCgiWF9kb2NUeXBlIix6RGF0YS5kb2NUeXBlT0NSKTsKCWFyck9mUGFpcnMwLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLHpEYXRhLnJldmlld2VkU3RhdHVzKTsKCWlmICh6RGF0YS5yZXZpZXdzICE9PSAiIikgeyBhcnJPZlBhaXJzMC5wdXNoKCJYX3Jldmlld3MiLHpEYXRhLnJldmlld3MpOyB9IC8vRVJTMTkwMTE4IGZvciB0aGUgZG9jU2V0IGNoZWNrYm94ZXMKCWFyck9mUGFpcnMwLnB1c2goIlhfemlwcGlDb21wYXJlIixKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaUNvbXBhcmUpKTsgLy9FUlMxODExMjMgVE9ETyBKU09OIGluIFhNTD8KCWFyck9mUGFpcnMwLnB1c2goIlhfemlwcGlTaWduYXR1cmVzIixKU09OLnN0cmluZ2lmeSh6RGF0YS56aXBwaVNpZ25hdHVyZXMpKTsgLy9FUlMxODExMjMgVE9ETyBKU09OIGluIFhNTD8KICAgIHpUeXBlPXpEYXRhLmRvY1R5cGVPQ1I7IC8vRVJTMTcwMzMwIHNhdmVkIGJlbG93IGludG8gU0YgZmF4VHlwZV9fYyBmaWVsZAogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzMCk7Cn0KCg=="},"ordinal":15}

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
    var zd=zData.zippiCompare[p];
    if (zd) {
        alert("page "+zd.page+" confidence="+zd.confidence+"% sure it is a "+zd.template);
        if (+zd.confidence >= zData.confidence) {
            zData.docTypeOCR=zd.docType;
            // SHR181206 try to extract fields for ENR, HIPAA, and DEMO types
            if(zd.docType.indexOf("ENR")>-1 || "HIPAA"===zd.docType || "DEMO"===zd.docType || zd.docType.indexOf("CONS")>-1) {
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
