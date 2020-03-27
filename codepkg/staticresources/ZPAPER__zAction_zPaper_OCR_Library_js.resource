<!--
// Name: zPaper OCR Library
// Committer: eric.stephens@zpaper.com
// Update: ERS190618 TODO find where this is set
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-06-19 00:00:08","evalContinue":"true","active":true,"button":"","name":"zPaper OCR Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotOCR","operation":"not-contains"}]},"consequence":{"doit":"Ly9FUlMxNzAzMjggdXNlIE9DUmVkIHRleHQgdG8gaWRlbnRpZnkgZG9jdW1lbnQgdHlwZSBlc3BlY2lhbGx5IHdoZW4gbm8gYmFyY29kZXMKekRhdGEuZG9jVHlwZXI9ZnVuY3Rpb24oZG9jLGtleXdvcmRzKSB7CiAgICB2YXIga2V5d29yZHMyPWtleXdvcmRzOwogICAgaWYgKCFrZXl3b3JkcyAmJiB6RGF0YS5rZXl3b3Jkcykga2V5d29yZHMyPXpEYXRhLmtleXdvcmRzOwogICAgaWYgKCFrZXl3b3Jkcykga2V5d29yZHMyPVsiUkVGOlJFRkVSUkFMIiwiUkVGOlJlZmVycmFsIiwiUEFQUDpQYXRpZW50IEFzc2lzdGFuY2UiLCJQQVVUSDpQcmlvcn4gQXV0aG9yaXphdGlvbn4iLCJFTlJMOkVucm9sbG1lbnR+IiwiRkFYOiJdOwoKICAgIC8vYWxlcnQoImtleXdvcmRzMi5sZW5ndGg9IitrZXl3b3JkczIubGVuZ3RoKTsKICAgIC8vYWxlcnQoImtleXdvcmRzMiA9ICIra2V5d29yZHMyWzBdKyIsIitrZXl3b3JkczJbMV0rIiwiK2tleXdvcmRzMlsiUkVGIl0pOwogICAgekRhdGEua2V5d29yZHM9a2V5d29yZHMyOwogICAgCiAgICBmb3IgKHZhciBrIGluIGtleXdvcmRzMikgewogICAgICAgIHZhciBwYXJ0cz1rZXl3b3JkczJba10uc3BsaXQoIjoiKTsKICAgICAgICB2YXIgdGVybT1wYXJ0c1sxXTsKICAgICAgICBhbGVydCgiT0NSIHN0aWxsIHNlYXJjaGluZyAiK3Rlcm0gKyAiIGEgIisgcGFydHNbMF0pOwogICAgICAgIGlmIChzZWFyY2hJbmRleChkb2MsZG9jLmRiSUQsdGVybSkuaW5kZXhPZihkb2MuZGJJRCk+LTEpIHJldHVybiBwYXJ0c1swXTsKICAgIH0KICAgIAogICAgcmV0dXJuICJGQVgiOwp9OwovL0VSUzE3MDgyMyBhZGRlZCBhIHNlbWkgY29sb24gYXQgdGhlbiBvZiB0aGUgT0NSIGZ1bmN0aW9uCgp6RGF0YS5zaWduZWRTdGF0dXM9IiI7CmlmICgiU2lnbmVkIiA9PT0gekRhdGEucmV2aWV3ZWRTdGF0dXMpIHsgekRhdGEuc2lnbmVkU3RhdHVzID0gIlNpZ25lZCBieSBhZ2VudCBhdCAiK3pEYXRhLm5vdysiPGJyLz4iOyB9IC8vRVJTMTkwNjE4IFRPRE8gZmluZCB3aGVyZSB0aGlzIGlzIHNldAoK"},"ordinal":1}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS170328 use OCRed text to identify document type especially when no barcodes
zData.docTyper=function(doc,keywords) {
    var keywords2=keywords;
    if (!keywords && zData.keywords) keywords2=zData.keywords;
    if (!keywords) keywords2=["REF:REFERRAL","REF:Referral","PAPP:Patient Assistance","PAUTH:Prior~ Authorization~","ENRL:Enrollment~","FAX:"];

    //alert("keywords2.length="+keywords2.length);
    //alert("keywords2 = "+keywords2[0]+","+keywords2[1]+","+keywords2["REF"]);
    zData.keywords=keywords2;
    
    for (var k in keywords2) {
        var parts=keywords2[k].split(":");
        var term=parts[1];
        alert("OCR still searching "+term + " a "+ parts[0]);
        if (searchIndex(doc,doc.dbID,term).indexOf(doc.dbID)>-1) return parts[0];
    }
    
    return "FAX";
};
//ERS170823 added a semi colon at then of the OCR function

zData.signedStatus="";
if ("Signed" === zData.reviewedStatus) { zData.signedStatus = "Signed by agent at "+zData.now+"<br/>"; } //ERS190618 TODO find where this is set


//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
