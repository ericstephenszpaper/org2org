<!--
// Name: zPaper OCR Library
// Committer: judson.bruno@zpaper.com
// Update: JPB191212 update rule for Sales Demo Org
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-12-12 21:58:33","evalContinue":"true","active":true,"button":"","name":"zPaper OCR Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotOCR","operation":"ne"}]},"consequence":{"doit":"Ly9KUEIxOTEyMTIgdXBkYXRlIHJ1bGUgZm9yIFNhbGVzIERlbW8gT3JnCnpEYXRhLmRvY1R5cGVyPWZ1bmN0aW9uKGRvYyxrZXl3b3JkcykgewoJYWxlcnQoImRvY1R5cGVyOiBrZXl3b3JkcyA9ICIgKyBrZXl3b3Jkcyk7CiAgICB2YXIga2V5d29yZHMyPWtleXdvcmRzOwogICAgaWYgKCFrZXl3b3JkcyAmJiB6RGF0YS5rZXl3b3Jkcykga2V5d29yZHMyPXpEYXRhLmtleXdvcmRzOwogICAgaWYgKCFrZXl3b3Jkcykga2V5d29yZHMyPVsiTkVXOkRvY3VtZW50IFN0YWNrIiwiRklUOkZJVCBSZXF1aXNpdGlvbiIsIkVOUkw6RW5yb2xsbWVudCIsIkVOUkw6RU5ST0xMTUVOVCIsIkZBQzpTZXR0aW5ncyIsIk9USDpPdGhlciJdOyAvL0VSUzE5MDMyNiBPdmVycmlkZSBpbiBDcmVhdGUgelN0YWNrIGFzIG5lZWRlZCAKCWFsZXJ0KCJkb2NUeXBlcjoga2V5d29yZHMgPSAiICsga2V5d29yZHMpOwogICAgekRhdGEua2V5d29yZHM9a2V5d29yZHMyOwogICAgCiAgICBmb3IgKHZhciBrIGluIGtleXdvcmRzMikgewoJCWFsZXJ0KCJrIGluIGtleXdvcmRzMiA9ICIgKyBrKTsKICAgICAgICB2YXIgcGFydHM9a2V5d29yZHMyW2tdLnNwbGl0KCI6Iik7CiAgICAgICAgdmFyIHRlcm09cGFydHNbMV07CgkJYWxlcnQoImtleXdvcmQgYXQgayA9ICIgKyBrZXl3b3JkczJba10pOwoJCWFsZXJ0KCJwYXJ0cyA9ICIgKyBwYXJ0cyk7CiAgICAgICAgYWxlcnQoIk9DUiBzdGlsbCBzZWFyY2hpbmcgIit0ZXJtICsgIiBhICIrIHBhcnRzWzBdKTsKICAgICAgICBpZiAodGVybSA9PSAiIiB8fCBzZWFyY2hJbmRleChkb2MsZG9jLmRiSUQsdGVybSkuaW5kZXhPZihkb2MuZGJJRCk+LTEpIHsgLy9FUlMxOTAzMjYgYWRkaW5nIHRlcm0gPT0gIiIKCQkJYWxlcnQoIkBAQCByZXR1cm5pbmcgcGFydHNbMF06ICIgKyBwYXJ0c1swXSk7CgkJCXJldHVybiBwYXJ0c1swXTsKCQl9CiAgICB9CiAgICAKICAgIHJldHVybiAiVW5rbm93biI7IAp9OwoKekRhdGEuZG9jVHlwZU9DUj0iRkFYIjsgCnpEYXRhLmRvY1R5cGVyMjAxNz1mdW5jdGlvbihkb2Msa2V5d29yZHMpIHsgcmV0dXJuIHpEYXRhLmRvY1R5cGVyKGRvYyxrZXl3b3Jkcyk7IH07Ci8vZnVuY3Rpb24gc2hvdyhvKSB7dmFyIHI9IiI7IGZvciAodmFyIGkgaW4gbykge3IrPWkrIjonIitvW2ldKyInLCI7fSByZXR1cm4gcjt9CmZ1bmN0aW9uIHNob3cobykge0pTT04uc3RyaW5naWZ5KG8pO30KCi8vRVJTMTkwMzA1IEhBQ0sgZm9yIHppcHBpIHRlc3RzIHpEYXRhLnppcHBpQVBJPWRvYy5rYkRhdGEuZ2V0WEFQSUtleSgpOwphbGVydCgiVXNpbmcgekRhdGEuemlwcGlBUEk9Iit6RGF0YS56aXBwaUFQSSk7CmlmICghekRhdGEuemlwcGlBUEkpIHsKICAgIHpEYXRhLnppcHBpQVBJPSJIZnIxZUlWYW41YXFDRHhCWnN3RVFZWjYxa2lKQzBMWFJjOENFR2hyRFdoMkRFdFkvZTFYOE8yTjNQcmQrUVBQIjsgLy9FUlMxODEyMDEgenAwOCBUT0RPIGtiRGF0YQp9CnpEYXRhLmhlYWRlcnM9WyJYLUFQSS1LZXkiLHpEYXRhLnppcHBpQVBJLCJYLVotU0Z1c2VyIixkb2Mua2JEYXRhLnJlbW90ZVVzZXIsIkFjY2VwdCIsIioiXTsgLy9FUlMxODEyMDEgZm9yIHdnZXQgY2FsbHMgdG8gemlwcGkKCi8vekRhdGEuaGVhZGVycz1bIkF1dGhvcml6YXRpb24iLCJCZWFyZXIgIiArIGRvYy5rYkRhdGEuc2ZTZXNzaW9uSUQsIkF1dGhVc2VyIixkb2Mua2JEYXRhLnJlbW90ZVVzZXIsIkF1dGhTZXJ2ZXIiLGRvYy5rYkRhdGEuc2ZTZXJ2ZXJdOyAvL0VSUzE4MTIwMSBmb3Igd2dldCBjYWxscyB0byB6aXBwaQp6RGF0YS5uclNlcnZlcj0iaHR0cHM6Ly9ucjE5LnpwYXBlci5jb20iOyAvL0VSUzE5MDMxOCBUT0RPIGludG8gY3VzdG9tIHNldHRpbmcgTzJPCnpEYXRhLm5yU2VydmVyPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tIjsgLy9FUlMxOTAzMTggVE9ETyBpbnRvIGN1c3RvbSBzZXR0aW5nIE8yTwoKekRhdGEuemlwcGlDb21wYXJlPWZ1bmN0aW9uKGRvYyxCQVRFUyxwYWdlKSB7Ci8vICAgIHZhciB6VVJMPSJodHRwczovL3JlZGRldi56cGFwZXIuY29tL3JlZC96Q29tcGFyZS8iOwoKICAgIHZhciB6VVJMPSJodHRwczovL25yMTkuenBhcGVyLmNvbS9yZWQvekNvbXBhcmUvIjsKICAgIHpVUkw9ekRhdGEubnJTZXJ2ZXIrIi9yZWQvekNvbXBhcmUvIjsgCiAgICB2YXIgdDA9bmV3IERhdGUoKTsKICAgIC8vdmFyIHJlc3VsdHM9d2dldCh6VVJMK0JBVEVTKyIvIitkb2NJZCsiLyIrcGFnZSsiLyoiLHt9LHsiWC1BUEkta2V5Ijp6RGF0YS56aXBwaUFQSX0pOwogICAgaWYgKHBhZ2UgPT09ICJhbGwiIHx8IHBhZ2U9PT0iKiIpIHsKICAgICAgICB2YXIgYWxsVGV4dD1kb2MucmVhZEZpbGUoInR4dEZpbGVzIixkb2MuZGJJRCsiLnR4dCIpOwogICAgICAgIHZhciBwYWdlVGV4dD1hbGxUZXh0LnNwbGl0KCItLS0tLS0tLSAgUEFHRSAgLS0tLS0tLS0iKTsKICAgICAgICBwYWdlPSIxIjsKICAgICAgICBpZiAocGFnZVRleHQubGVuZ3RoID4gMSkgewogICAgICAgICAgICBwYWdlPSIiOyAKICAgICAgICAgICAgZm9yICh2YXIgcCBpbiBwYWdlVGV4dCkgeyAKICAgICAgICAgICAgICAgIGlmIChwYWdlVGV4dFtwXS5sZW5ndGggPiAyMDApIHtwYWdlKz1wKyIsIjt9IGVsc2Uge2FsZXJ0KCJwYWdlICIrcCsiIGhhcyBsaXR0bGUgdGV4dC4gIitwYWdlVGV4dFtwXS5sZW5ndGgpO30KICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KICAgIGlmICgoIiIrcGFnZSkuaW5kZXhPZigiLCIpPi0xKSB7IC8vRVJTMTgxMjEwIEhBQ0sgdW50aWwgTlIgaXMgZml4ZWQKICAgICAgICB2YXIgcmVzdWx0czAwNz13Z2V0KGRvYyx6VVJMK0JBVEVTKyIvIitkb2MuZGJJRCsiLyIrcGFnZSsiLyoiLFtdLHpEYXRhLmhlYWRlcnMpOwogICAgICAgIHBhZ2U9cGFnZS5zcGxpdCgiLCIpWzBdOwogICAgfQogICAgdmFyIHJlc3VsdHM9d2dldChkb2MselVSTCtCQVRFUysiLyIrZG9jLmRiSUQrIi8iK3BhZ2UrIi8qIixbXSx6RGF0YS5oZWFkZXJzKTsgLy9rYkRhdGEuZ2V0WEFQSUtleSgpIGFscmVhZHkgaW4gd2dldCBvciBmbG93CiAgICB2YXIgdDE9bmV3IERhdGUoKTsKICAgIC8vRXZhbGluZyB7ImNvbmZpZGVuY2UiOjk2Ljg0NjMwOTg4OTc4ODEzfQogICAgLy9pZiAocmVzdWx0cy5pbmRleE9mKCJ7Iik9PT0wKSB7YWxlcnQoIkV2YWxpbmcgIityZXN1bHRzKTsgcmVzdWx0cz1ldmFsKHJlc3VsdHMucmVwbGFjZSgie1wiIiwieyIpLnJlcGxhY2UoIlwiOiIsIjoiKSk7IH0KICAgIC8vaWYgKHJlc3VsdHMuaW5kZXhPZigieyIpPT09MCkge3Jlc3VsdHM9SlNPTi5wYXJzZShyZXN1bHRzKTt9CiAgICByZXN1bHRzPUpTT04ucGFyc2UocmVzdWx0cylbMF07IC8vIFNIUjE4MTIwNiBhbHdheXMgcGFyc2UganNvbiByZXN1bHRzIChzaG91bGQgYmUgYW4gYXJyYXkgb2YgcmVzdWx0cykKICAgIGlmICghcmVzdWx0cykgcmVzdWx0cz17J2RvY1R5cGUnOidGQVgnLCdjb25maWRlbmNlJzowLCdwYWdlJzpwYWdlLCd0ZW1wbGF0ZSc6J0ZBWCd9OyAvL1RPRE8gZml4IGluIE5SCiAgICAvKmlmICgxPT09MCAmJiAhcmVzdWx0cy5jb25maWRlbmNlICYmIHJlc3VsdHMuaW5kZXhPZignImNvbmZkZW5jZSI6Jyk+LTEpIHsKICAgICAgICB2YXIgdj0zMS40NTkyNzsgCiAgICAgICAgdj0ocmVzdWx0cy5zdWJzdHJpbmcocmVzdWx0cy5pbmRleE9mKCI6IikrMSkucmVwbGFjZSgifSIsIiIpKyIwIikvMS4wMDsgLy9FUlMxODExMjQgQ1JOIFRPRE8gZXhwbGFpbiBKU09OL0pTIGlzc3VlcwogICAgICAgIHY9TWF0aC5yb3VuZCh2KjEwKS8xMC4wOwogICAgICAgIHJlc3VsdHM9e2NvbmZpZGVuY2U6dn07CiAgICB9Ki8KICAgIC8vcmVzdWx0cy5jb25maWRlbmNlPU1hdGgucm91bmQocmVzdWx0cy5jb25maWRlbmNlKjEwKS8xMC4wOwogICAgcmVzdWx0cy5jb25maWRlbmNlPU1hdGgucm91bmQocmVzdWx0cy5jb25maWRlbmNlKjEwMDApLzEwMDAuMDsKICAgIGFsZXJ0KCJwYWdlICIrcGFnZSsiIHdnZXQ0MzogIisodDEuZ2V0VGltZSgpLXQwLmdldFRpbWUoKSkrIm1zIGZvciAiK0pTT04uc3RyaW5naWZ5KHJlc3VsdHMpKyIgY29uZmlkZW5jZT0iK3Jlc3VsdHMuY29uZmlkZW5jZSk7CiAgICAvL2lmIChyZXN1bHRzLmluZGV4T2YoInsiKT09PTApIHJldHVybiBldmFsKHJlc3VsdHMpLmNvbmZpZGVuY2U7CiAgICByZXR1cm4gcmVzdWx0czsKfTsKCnpEYXRhLmV4dHJhY3REYXRhPWZ1bmN0aW9uKGRvYyxmaWVsZHMsQkFURVMscGFnZSkgewovLyAgICB2YXIgelVSTD0iaHR0cHM6Ly9yZWRkZXYuenBhcGVyLmNvbS9yZWQvekV4dHJhY3QvIjsKLy8gICAgelVSTD0iaHR0cHM6Ly9yZWRkZXYuenBhcGVyLmNvbS9yZWQvekZpZWxkcy8iOwogICAgelVSTD0iaHR0cHM6Ly9ucjE5LnpwYXBlci5jb20vcmVkL3pGaWVsZHMvIjsKICAgIHpVUkw9ekRhdGEubnJTZXJ2ZXIrIi9yZWQvekZpZWxkcy8iOyAvL0VSUzE5MDMxOCBUT0RPIGFzayBTdGV2ZSB3aGljaCAvcmVkIHRvIHVzZQogICAgdmFyIHQwPW5ldyBEYXRlKCk7CiAgICAvL3ZhciByZXN1bHRzPXdnZXQoelVSTCtCQVRFUysiLyIrZG9jSWQrIi8iK3BhZ2UrIi8qIix7fSx7IlgtQVBJLWtleSI6ekRhdGEuemlwcGlBUEl9KTsKICAgIHZhciByZXN1bHRzPXdnZXQoZG9jLHpVUkwrQkFURVMrIi8iK2RvYy5kYklEKyIvIitwYWdlKyIvKj9maWx0ZXI9IitmaWVsZHMsW10sekRhdGEuaGVhZGVycyk7IC8va2JEYXRhLmdldFhBUElLZXkoKSBhbHJlYWR5IGluIHdnZXQgb3IgZmxvdwogICAgdmFyIHQxPW5ldyBEYXRlKCk7CiAgICBhbGVydCgid2dldDU0OiAiKyh0MS5nZXRUaW1lKCktdDAuZ2V0VGltZSgpKSsibXMgZm9yICIrcmVzdWx0cyk7CiAgICAvL2lmIChyZXN1bHRzLmluZGV4T2YoInsiKT09PTApIHJldHVybiBldmFsKHJlc3VsdHMpLmNvbmZpZGVuY2U7CiAgICByZXR1cm4gSlNPTi5wYXJzZShyZXN1bHRzKTsKfTsKCi8vRVJTMTgxMTIzICM0NzQwOCB6RGF0YS5kb2NUeXBlcihkb2MsY29uZmlkZW5jZSx0YXJnZXRzKSBUT0RPIGZpbmQgZG9jVHlwZSBmcm9tIHRlbXBsYXRlIG1ldGFkYXRhCi8vekRhdGEuZG9jVHlwZXIoZG9jLC43NSwgWyJURU5SOlRlY2lkZXJhRW5yb2xsbWVudF9Gb3JtIiwiRU5STDp6Q2hhcnRhbUVucm9sbG1lbnRDYXB0dXJlX0Zvcm0iLCJDT046ekNoYXJ0YW1Db25zZW50X0Zvcm0iLCJGQVg6Il0pOwp6RGF0YS5kb2NUeXBlckFEPWZ1bmN0aW9uKGRvYyxjb25maWRlbmNlLHRlbXBsYXRlcyxwbWF4KSB7IC8vRVJTMTkwMTE4IEF1dG9Ecml2ZSBpcyBBRAogICAgekRhdGEucGFnZXM9WChkb2MsIlhfcGFnZXMiKTsgaWYgKCF6RGF0YS5wYWdlcykge3pEYXRhLnBhZ2VzPTE7fSAvL0VSUzE4MTEyNCBUT0RPIENSTiB0byBhZGQgdG8gZG9jCiAgICBpZiAoIXBtYXgpIHtwbWF4PTEwO30gaWYgKHpEYXRhLnBhZ2VzLzE8cG1heCkge3BtYXg9ekRhdGEucGFnZXMvMX0KICAgIHZhciBzdGFja0NvbnRlbnRzPVtdOwogICAgc3RhY2tDb250ZW50c1sxXT17J2RvY1R5cGUnOidGQVgnLCdjb25maWRlbmNlJzoxLCdwYWdlJzoxLCd0ZW1wbGF0ZSc6J0ZBWCd9OwogICAgdmFyIHAwPTE7ICBpZiAocG1heD4xNSkge3BtYXg9Nzt9IC8vRVJTMTgxMTI0IGZvciB0ZXN0aW5ncyAvL0VSUzE4MTIxMCBpZiA+IDUgLy9FUlMxOTAxMTggNSB0byAxNSBwbWF4IC8vRVJTMTkwMzE5IHRvIDcKICAgIHZhciBhbGxQYWdlcz1wMDsgZm9yIChpPXAwKzE7IGk8PXBtYXg7IGkrKykge2FsbFBhZ2VzKz0iLCIraTsgfSAvL0VSUzE4MTIxMCBUT0RPIHRydXN0IGFsbFBhZ2VzPSJhbGwiOwogICAgZm9yIChwPXAwOyBwPD1wbWF4OyBwKyspIHsKICAgICAgICBmb3IgKHZhciB0IGluIHRlbXBsYXRlcykgewogICAgICAgICAgICB2YXIgcGFydHM9dGVtcGxhdGVzW3RdLnNwbGl0KCI6Iik7CiAgICAgICAgICAgIHZhciBCQVRFUz1wYXJ0c1sxXTsKICAgICAgICAgICAgLy9hbGVydCgiT0NSIHN0aWxsIHNlYXJjaGluZyAiK0JBVEVTICsgIiBhICIrIHBhcnRzWzBdKTsKICAgICAgICAKICAgICAgICAgICAgLy9pZiAoemlwcGlDb21wYXJlKGRvYyxCQVRFUyxwKT49Y29uZmlkZW5jZSkgcmV0dXJuIHBhcnRzWzBdOwogICAgICAgICAgICB2YXIgY2FjaGVkUGFnZXM9cDsgaWYgKHA9PXAwKSBjYWNoZWRQYWdlcz1hbGxQYWdlczsKICAgICAgICAgICAgdmFyIHI9ekRhdGEuemlwcGlDb21wYXJlKGRvYyxCQVRFUyxjYWNoZWRQYWdlcyk7CiAgICAgICAgICAgIGFsZXJ0KCJKU09OIHIgIityKTsKICAgICAgICAgICAgaWYgKHIgJiYgci5jb25maWRlbmNlLzEuMCA+PSBjb25maWRlbmNlLzEuMCkgewogICAgICAgICAgICAgICAgYWxlcnQoInNjWyIrcCsiXT0iK3BhcnRzWzFdKTsKICAgICAgICAgICAgICAgIHN0YWNrQ29udGVudHNbcF09e2RvY1R5cGU6cGFydHNbMF0sY29uZmlkZW5jZTpyLmNvbmZpZGVuY2UsdGVtcGxhdGU6cGFydHNbMV0sIHBhZ2U6cH07IC8vRVJTMTgxMTI0IFRPRE8gQ1JOIHNpbmdsZSBxdW90ZXM/CiAgICAgICAgICAgICAgICBicmVhazsgLy9nb3RvIHRvIG5leHQgcGFnZQogICAgICAgICAgICB9ICAvL2Vsc2UgeyBhbGVydCgicGFnZSAiK3ArIiByLmNvbmZpZGVuY2U9IityLmNvbmZpZGVuY2UgKyI8Iitjb25maWRlbmNlKTsgfQogICAgICAgIH0KICAgIH0KICAgIAogICAgcmV0dXJuIHN0YWNrQ29udGVudHM7Cn07Cgo="},"ordinal":1}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB191212 update rule for Sales Demo Org
zData.docTyper=function(doc,keywords) {
	alert("docTyper: keywords = " + keywords);
    var keywords2=keywords;
    if (!keywords && zData.keywords) keywords2=zData.keywords;
    if (!keywords) keywords2=["NEW:Document Stack","FIT:FIT Requisition","ENRL:Enrollment","ENRL:ENROLLMENT","FAC:Settings","OTH:Other"]; //ERS190326 Override in Create zStack as needed 
	alert("docTyper: keywords = " + keywords);
    zData.keywords=keywords2;
    
    for (var k in keywords2) {
		alert("k in keywords2 = " + k);
        var parts=keywords2[k].split(":");
        var term=parts[1];
		alert("keyword at k = " + keywords2[k]);
		alert("parts = " + parts);
        alert("OCR still searching "+term + " a "+ parts[0]);
        if (term == "" || searchIndex(doc,doc.dbID,term).indexOf(doc.dbID)>-1) { //ERS190326 adding term == ""
			alert("@@@ returning parts[0]: " + parts[0]);
			return parts[0];
		}
    }
    
    return "Unknown"; 
};

zData.docTypeOCR="FAX"; 
zData.docTyper2017=function(doc,keywords) { return zData.docTyper(doc,keywords); };
//function show(o) {var r=""; for (var i in o) {r+=i+":'"+o[i]+"',";} return r;}
function show(o) {JSON.stringify(o);}

//ERS190305 HACK for zippi tests zData.zippiAPI=doc.kbData.getXAPIKey();
alert("Using zData.zippiAPI="+zData.zippiAPI);
if (!zData.zippiAPI) {
    zData.zippiAPI="Hfr1eIVan5aqCDxBZswEQYZ61kiJC0LXRc8CEGhrDWh2DEtY/e1X8O2N3Prd+QPP"; //ERS181201 zp08 TODO kbData
}
zData.headers=["X-API-Key",zData.zippiAPI,"X-Z-SFuser",doc.kbData.remoteUser,"Accept","*"]; //ERS181201 for wget calls to zippi

//zData.headers=["Authorization","Bearer " + doc.kbData.sfSessionID,"AuthUser",doc.kbData.remoteUser,"AuthServer",doc.kbData.sfServer]; //ERS181201 for wget calls to zippi
zData.nrServer="https://nr19.zpaper.com"; //ERS190318 TODO into custom setting O2O
zData.nrServer="https://reddev.zpaper.com"; //ERS190318 TODO into custom setting O2O

zData.zippiCompare=function(doc,BATES,page) {
//    var zURL="https://reddev.zpaper.com/red/zCompare/";

    var zURL="https://nr19.zpaper.com/red/zCompare/";
    zURL=zData.nrServer+"/red/zCompare/"; 
    var t0=new Date();
    //var results=wget(zURL+BATES+"/"+docId+"/"+page+"/*",{},{"X-API-key":zData.zippiAPI});
    if (page === "all" || page==="*") {
        var allText=doc.readFile("txtFiles",doc.dbID+".txt");
        var pageText=allText.split("--------  PAGE  --------");
        page="1";
        if (pageText.length > 1) {
            page=""; 
            for (var p in pageText) { 
                if (pageText[p].length > 200) {page+=p+",";} else {alert("page "+p+" has little text. "+pageText[p].length);}
            }
        }
    }
    if ((""+page).indexOf(",")>-1) { //ERS181210 HACK until NR is fixed
        var results007=wget(doc,zURL+BATES+"/"+doc.dbID+"/"+page+"/*",[],zData.headers);
        page=page.split(",")[0];
    }
    var results=wget(doc,zURL+BATES+"/"+doc.dbID+"/"+page+"/*",[],zData.headers); //kbData.getXAPIKey() already in wget or flow
    var t1=new Date();
    //Evaling {"confidence":96.84630988978813}
    //if (results.indexOf("{")===0) {alert("Evaling "+results); results=eval(results.replace("{\"","{").replace("\":",":")); }
    //if (results.indexOf("{")===0) {results=JSON.parse(results);}
    results=JSON.parse(results)[0]; // SHR181206 always parse json results (should be an array of results)
    if (!results) results={'docType':'FAX','confidence':0,'page':page,'template':'FAX'}; //TODO fix in NR
    /*if (1===0 && !results.confidence && results.indexOf('"confdence":')>-1) {
        var v=31.45927; 
        v=(results.substring(results.indexOf(":")+1).replace("}","")+"0")/1.00; //ERS181124 CRN TODO explain JSON/JS issues
        v=Math.round(v*10)/10.0;
        results={confidence:v};
    }*/
    //results.confidence=Math.round(results.confidence*10)/10.0;
    results.confidence=Math.round(results.confidence*1000)/1000.0;
    alert("page "+page+" wget43: "+(t1.getTime()-t0.getTime())+"ms for "+JSON.stringify(results)+" confidence="+results.confidence);
    //if (results.indexOf("{")===0) return eval(results).confidence;
    return results;
};

zData.extractData=function(doc,fields,BATES,page) {
//    var zURL="https://reddev.zpaper.com/red/zExtract/";
//    zURL="https://reddev.zpaper.com/red/zFields/";
    zURL="https://nr19.zpaper.com/red/zFields/";
    zURL=zData.nrServer+"/red/zFields/"; //ERS190318 TODO ask Steve which /red to use
    var t0=new Date();
    //var results=wget(zURL+BATES+"/"+docId+"/"+page+"/*",{},{"X-API-key":zData.zippiAPI});
    var results=wget(doc,zURL+BATES+"/"+doc.dbID+"/"+page+"/*?filter="+fields,[],zData.headers); //kbData.getXAPIKey() already in wget or flow
    var t1=new Date();
    alert("wget54: "+(t1.getTime()-t0.getTime())+"ms for "+results);
    //if (results.indexOf("{")===0) return eval(results).confidence;
    return JSON.parse(results);
};

//ERS181123 #47408 zData.docTyper(doc,confidence,targets) TODO find docType from template metadata
//zData.docTyper(doc,.75, ["TENR:TecideraEnrollment_Form","ENRL:zChartamEnrollmentCapture_Form","CON:zChartamConsent_Form","FAX:"]);
zData.docTyperAD=function(doc,confidence,templates,pmax) { //ERS190118 AutoDrive is AD
    zData.pages=X(doc,"X_pages"); if (!zData.pages) {zData.pages=1;} //ERS181124 TODO CRN to add to doc
    if (!pmax) {pmax=10;} if (zData.pages/1<pmax) {pmax=zData.pages/1}
    var stackContents=[];
    stackContents[1]={'docType':'FAX','confidence':1,'page':1,'template':'FAX'};
    var p0=1;  if (pmax>15) {pmax=7;} //ERS181124 for testings //ERS181210 if > 5 //ERS190118 5 to 15 pmax //ERS190319 to 7
    var allPages=p0; for (i=p0+1; i<=pmax; i++) {allPages+=","+i; } //ERS181210 TODO trust allPages="all";
    for (p=p0; p<=pmax; p++) {
        for (var t in templates) {
            var parts=templates[t].split(":");
            var BATES=parts[1];
            //alert("OCR still searching "+BATES + " a "+ parts[0]);
        
            //if (zippiCompare(doc,BATES,p)>=confidence) return parts[0];
            var cachedPages=p; if (p==p0) cachedPages=allPages;
            var r=zData.zippiCompare(doc,BATES,cachedPages);
            alert("JSON r "+r);
            if (r && r.confidence/1.0 >= confidence/1.0) {
                alert("sc["+p+"]="+parts[1]);
                stackContents[p]={docType:parts[0],confidence:r.confidence,template:parts[1], page:p}; //ERS181124 TODO CRN single quotes?
                break; //goto to next page
            }  //else { alert("page "+p+" r.confidence="+r.confidence +"<"+confidence); }
        }
    }
    
    return stackContents;
};


//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
