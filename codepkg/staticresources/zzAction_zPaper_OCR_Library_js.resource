<!--
// Name: zPaper OCR Library
// Committer: andrew@zpaper.com
// Update: update static resource
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-08 00:21:04","evalContinue":"true","active":true,"button":"","name":"zPaper OCR Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotOCR","operation":"ne"}]},"consequence":{"doit":"Ly9FUlMxNzAzMjggdXNlIE9DUmVkIHRleHQgdG8gaWRlbnRpZnkgZG9jdW1lbnQgdHlwZSBlc3BlY2lhbGx5IHdoZW4gbm8gYmFyY29kZXMKekRhdGEuZG9jVHlwZXI9ZnVuY3Rpb24oZG9jLGtleXdvcmRzKSB7CiAgICB2YXIga2V5d29yZHMyPWtleXdvcmRzOwogICAgaWYgKCFrZXl3b3JkcyAmJiB6RGF0YS5rZXl3b3Jkcykga2V5d29yZHMyPXpEYXRhLmtleXdvcmRzOwogICAgaWYgKCFrZXl3b3Jkcykga2V5d29yZHMyPVsiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiUEFQUDpQYXRpZW50IEFzc2lzdGFuY2UiLCJQQVVUSDpQcmlvcn4gQXV0aG9yaXphdGlvbn4iLCJFTlJMOkVucm9sbG1lbnR+IiwiRkFYOiJdOwoKICAgIHpEYXRhLmtleXdvcmRzPWtleXdvcmRzMjsKICAgIAogICAgZm9yICh2YXIgayBpbiBrZXl3b3JkczIpIHsKICAgICAgICB2YXIgcGFydHM9a2V5d29yZHMyW2tdLnNwbGl0KCI6Iik7CiAgICAgICAgdmFyIHRlcm09cGFydHNbMV07CiAgICAgICAgYWxlcnQoIk9DUiBzdGlsbCBzZWFyY2hpbmcgIit0ZXJtICsgIiBhICIrIHBhcnRzWzBdKTsKICAgICAgICBpZiAoc2VhcmNoSW5kZXgoZG9jLGRvYy5kYklELHRlcm0pLmluZGV4T2YoZG9jLmRiSUQpPi0xKSByZXR1cm4gcGFydHNbMF07CiAgICB9CiAgICAKICAgIHJldHVybiAiRkFYIjsKfTs="},"ordinal":1}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS170328 use OCRed text to identify document type especially when no barcodes
zData.docTyper=function(doc,keywords) {
    var keywords2=keywords;
    if (!keywords && zData.keywords) keywords2=zData.keywords;
    if (!keywords) keywords2=["REF:REFERRAL","REF:Referral","PAPP:Patient Assistance","PAUTH:Prior~ Authorization~","ENRL:Enrollment~","FAX:"];

    zData.keywords=keywords2;
    
    for (var k in keywords2) {
        var parts=keywords2[k].split(":");
        var term=parts[1];
        alert("OCR still searching "+term + " a "+ parts[0]);
        if (searchIndex(doc,doc.dbID,term).indexOf(doc.dbID)>-1) return parts[0];
    }
    
    return "FAX";
};
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
