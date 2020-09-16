<!--
// Name: AD Client Library
// Committer: eric.stephens@zpaper.com
// Update: ERS200915 #75381 accelerator
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-09-15 19:29:35","evalContinue":"true","active":true,"button":"","name":"AD Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBBRCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdCAvL0VSUzIwMDkxNSAjNzUzODEgYWNjZWxlcmF0b3IKCnpEYXRhLmNsaWVudEF1dG9JbmRleD1mdW5jdGlvbihkb2MsZHQsZGF0YSkgeyAvL0VSUzIwMDIyOSAjNjEzNTcKICAgIC8vSlNPTi5zdHJpbmdpZnkoelByZXBvcCh6ZFtwMF0sMC4wMywwLjkyKSkpOwogICAgdmFyIGF0dGFjaGVkSWQ9bnVsbDsKICAgIHZhciBwZXJzb249IiI7CiAgICB2YXIgcElkOyAvL0VSUzIwMDQxOCB1c2UgbW9zdCByZWNlbnQgcGVyc29uIGluIHpEYXRhLnJJZCAjNzE0MTUKICAgIGFsZXJ0KCJFUlMyMDAyMjkgY2xpZW50QXV0b0luZGV4ICIrZHQrIiB6cElkPSIrZG9jLklkKTsKICAgIGlmIChkdCA9PSAiT1JEIikgeyAvL2ZpbmQgYSBjb250YWN0IHdpdGggdGhhdCBuYW1lIG5hbmQgYmlydGgKICAgICAgICB2YXIgdj1kYXRhWyJQYXRpZW50IE5hbWUiXTsgCiAgICAgICAgYWxlcnQoIkF1dG9JbmRleCB3aXRoICIrdisiIGZyb20gIisgZGF0YSk7CiAgICAgICAgcElkPWdldFNGUmVjb3JkSUQoZG9jLCAiQ29udGFjdCIsIHsiTmFtZSIgOiB2fSApOyAvL1RPRE8gc3ludGF4IG9uICJCaXJ0aGRhdGUiOmRhdGFbIkRPQiJdCiAgICAgICAgaWYgKCFwSWQpIHsgcElkPXpEYXRhLnBJZDA7IHY9ekRhdGEucGVyc29uMDsgfSAvL0VSUzIwMDQxOAogICAgICAgIGlmIChwSWQgKSB7CiAgICAgICAgICAgIGF0dGFjaGVkSWQ9YXR0YWNoKGRvYywiQXV0b0luZGV4ICIrZHQrIiBvZiAiK3YscElkKTsKICAgICAgICAgICAgaWYgKGF0dGFjaGVkSWQgJiYgYXR0YWNoZWRJZCAhPSAiTkVXIikgeyBwZXJzb249djt9CiAgICAgICAgfQogICAgfQogICAgaWYgKGR0ID09ICJFTlJMIikgeyAvL0VSUzIwMDQxNAogICAgICAgIHZhciB2MT1kYXRhWyJwYXRpZW50Rmlyc3ROYW1lIl07CiAgICAgICAgdmFyIHYyPWRhdGFbInBhdGllbnRMYXN0TmFtZSJdOwogICAgICAgIGlmICghdjEpIHYxPWRhdGFbInBvbGljeUhvbGRlckZpcnN0TmFtZSJdOwogICAgICAgIGlmICghdjIpIHYyPWRhdGFbInBvbGljeUhvbGRlckxhc3ROYW1lIl07IC8vRVJTMjAwNDE4IHVzZSBzZWNvbmRhcnkgZmllbGRzIHRvbwogICAgICAgIGFsZXJ0KCJFUlMyMDA0MTguMjQgIitkdCsiIHYyPSIrdjIrIiBmcm9tICIrZGF0YVsicGF0aWVudExhc3ROYW1lIl0rIiBvciAiK2RhdGFbInBvbGljeUhvbGRlckxhc3ROYW1lIl0pOwogICAgICAgIC8vdmFyIHY9ZGF0YVsicGF0aWVudEZpcnN0TmFtZSJdKyIgIitkYXRhWyJwYXRpZW50TGFzdE5hbWUiXTsgIC8vZ2V0IHRoaXMgZnJvbSB0aGUgWC1SYXkKICAgICAgICB2PXYxKyIgIit2MjsKICAgICAgICBhbGVydCgiQXV0b0luZGV4IHdpdGggIit2KyIgZnJvbSAiKyBkYXRhKTsKICAgICAgICBwSWQ9Z2V0U0ZSZWNvcmRJRChkb2MsICJBY2NvdW50IiwgeyJOYW1lIiA6IHZ9ICk7IC8vVE9ETyBzeW50YXggb24gIkJpcnRoZGF0ZSI6ZGF0YVsicGF0aWVudERPQiJdCiAgICAgICAgYWxlcnQoIkVSUzIwMDQxNC4xOSBBY2NvdW50ICIrdisiIHJldHVybmVkICIrcElkKTsKICAgICAgICBpZiAoIXBJZCkgewogICAgICAgICAgICBwSWQ9Z2V0U0ZSZWNvcmRJRChkb2MsICJDb250YWN0IiwgeyJOYW1lIiA6IHZ9ICk7IC8vRVJTMjAwNDE0ICM3MDI3MyBmb3IgSEMgc2VhcmNoIEFjY3QgMXN0CiAgICAgICAgICAgIGFsZXJ0KCJFUlMyMDA0MTQuMjIgQ29udGFjdCAiK3YrIiByZXR1cm5lZCAiK3BJZCk7CiAgICAgICAgfQogICAgICAgIGlmICghcElkKSB7IHBJZD16RGF0YS5wSWQwOyB2PXpEYXRhLnBlcnNvbjA7IH0gLy9FUlMyMDA0MTgKICAgICAgICBpZiAocElkKSB7CiAgICAgICAgICAgIGF0dGFjaGVkSWQ9YXR0YWNoKGRvYywiQXV0b0luZGV4ICIrZHQrIiBvZiAiK3YscElkKTsKICAgICAgICAgICAgaWYgKGF0dGFjaGVkSWQgJiYgYXR0YWNoZWRJZCAhPSAiTkVXIikgeyBwZXJzb249djsgfQogICAgICAgIH0KICAgIH0KICAgIGlmIChkdCA9PSAiSElQQUEiKSB7IC8vZmluZCBhIGNvbnRhY3Qgd2l0aCB0aGF0IG5hbWUgbmFuZCBiaXJ0aAogICAgICAgIGFsZXJ0KCJBdXRvSW5kZXggd2l0aCAiK2RhdGFbInBhdGllbnRGdWxsTmFtZSJdKyIgZnJvbSAiKyBkYXRhKTsKICAgICAgICBwSWQ9Z2V0U0ZSZWNvcmRJRChkb2MsICJBY2NvdW50IiwgeyJOYW1lIiA6IGRhdGFbInBhdGllbnRGdWxsTmFtZSJdfSApOyAvL1RPRE8gc3ludGF4IG9uICJCaXJ0aGRhdGUiOmRhdGFbInBhdGllbnRET0IiXQogICAgICAgIGFsZXJ0KCJFUlMyMDA0MTQuMTkgQWNjb3VudCAiK2RhdGFbInBhdGllbnRGdWxsTmFtZSJdKyIgcmV0dXJuZWQgIitwSWQpOwogICAgICAgIGlmICghcElkKSB7CiAgICAgICAgICAgIHBJZD1nZXRTRlJlY29yZElEKGRvYywgIkNvbnRhY3QiLCB7Ik5hbWUiIDogZGF0YVsicGF0aWVudEZ1bGxOYW1lIl19ICk7IC8vRVJTMjAwNDE0ICM3MDI3MyBmb3IgSEMgc2VhcmNoIEFjY3QgMXN0CiAgICAgICAgICAgIGFsZXJ0KCJFUlMyMDA0MTQuMjIgQ29udGFjdCAiK2RhdGFbInBhdGllbnRGdWxsTmFtZSJdKyIgcmV0dXJuZWQgIitwSWQpOwogICAgICAgIH0KICAgICAgICAgaWYgKCFwSWQpIHsgcElkPXpEYXRhLnBJZDA7IHY9ekRhdGEucGVyc29uMDsgfSAvL0VSUzIwMDQxOCAKICAgICAgICBpZiAocElkICkgewogICAgICAgICAgICBhdHRhY2hlZElkPWF0dGFjaChkb2MsIkF1dG9JbmRleCAiK2R0KyIgb2YgIitkYXRhWyJwYXRpZW50RnVsbE5hbWUiXSxwSWQpOwogICAgICAgICAgICBpZiAoYXR0YWNoZWRJZCAmJiBhdHRhY2hlZElkICE9ICJORVciKSB7IHBlcnNvbj1kYXRhWyJwYXRpZW50RnVsbE5hbWUiXTsgfQogICAgICAgIH0KICAgIH0KICAgIGlmIChkdCA9PSAiUERJUyIpIHsgLy9FUlMyMDAzMjIgIzcwMjczIERlbHRhIERlbnRhbCBkZW1vCiAgICAvLyJwYXRpZW50TmFtZSI6IipQYXRpZW50IE5hbWU6IENoYXJsZXMgR3JlZW4iLCJwcm92aWRlckZ1bGxOYW1lIjoiKlBST1ZJREVSIE5BTUU6XG5EZWhuIEJvc3dvcnRoIiwKICAgICAgICB2YXIgdj0oIiIrZGF0YVsicGF0aWVudE5hbWUiXSkucmVwbGFjZSgiKiIsIiIpLnJlcGxhY2UoIlBhdGllbnQiLCIiKS5yZXBsYWNlKCJOYW1lOiIsIiIpLnRyaW0oKTsKICAgICAgICBhbGVydCgiQXV0b0luZGV4IHdpdGggIit2KyIgZnJvbSAiKyBkYXRhKTsKICAgICAgICBwSWQ9Z2V0U0ZSZWNvcmRJRChkb2MsICJDb250YWN0IiwgeyJOYW1lIiA6IHZ9ICk7IC8vVE9ETyBzeW50YXggb24gIkJpcnRoZGF0ZSI6ZGF0YVsiRE9CIl0KICAgICAgICBpZiAoIXBJZCkgeyBwSWQ9ekRhdGEucElkMDsgdj16RGF0YS5wZXJzb24wOyB9IC8vRVJTMjAwNDE4CiAgICAgICAgaWYgKHBJZCApIHsKICAgICAgICAgICAgYXR0YWNoZWRJZD1hdHRhY2goZG9jLCJBdXRvSW5kZXggIitkdCsiIG9mICIrdixwSWQpOwogICAgICAgICAgICBpZiAoYXR0YWNoZWRJZCAmJiBhdHRhY2hlZElkICE9ICJORVciKSB7IHBlcnNvbj12OyB9CiAgICAgICAgfQogICAgfQogICAgaWYgKGR0ID09ICJGVzIiKSB7IC8vRVJTMjAwMDMyNyAjNzAyNzMKICAgIC8vInBhdGllbnROYW1lIjoiKlBhdGllbnQgTmFtZTogQ2hhcmxlcyBHcmVlbiIsInByb3ZpZGVyRnVsbE5hbWUiOiIqUFJPVklERVIgTkFNRTpcbkRlaG4gQm9zd29ydGgiLAogICAgICAgIHZhciB2MT0oIiIrZGF0YVsiZW1wbG95ZWVGaXJzdG5hbWUiXSkudHJpbSgpOwogICAgICAgIHZhciB2Mj0oIiIrZGF0YVsiZW1wbG95ZWVMYXN0bmFtZSJdKS50cmltKCk7CiAgICAgICAgaWYgKCF2MSkgewogICAgICAgICAgICB2YXIgYWRkcmVzcz1kYXRhWyJlbXBsb3llZUFkZHJlc3MiXS5zcGxpdCgiICIpOwogICAgICAgICAgICB2MT1hZGRyZXNzWzBdOyB2Mj1hZGRyZXNzWzFdOwogICAgICAgIH0KICAgICAgICB2YXIgdj12MisiLCIrdjE7CiAgICAgICAgYWxlcnQoIkF1dG9JbmRleCB3aXRoICIrdisiIGZyb20gIisgZGF0YSk7CiAgICAgICAgcElkPWdldFNGUmVjb3JkSUQoZG9jLCAiQ29udGFjdCIsIHsiRmlyc3ROYW1lIiA6IHYxLCAiTGFzdE5hbWUiIDogdjJ9ICk7IC8vVE9ETyBzeW50YXggb24gIkJpcnRoZGF0ZSI6ZGF0YVsiRE9CIl0KICAgICAgICBpZiAoIXBJZCkgeyBwSWQ9ekRhdGEucElkMDsgdj16RGF0YS5wZXJzb24wOyB9IC8vRVJTMjAwNDE4CiAgICAgICAgaWYgKHBJZCApIHsKICAgICAgICAgICAgYXR0YWNoZWRJZD1hdHRhY2goZG9jLCJBdXRvSW5kZXggIitkdCsiIG9mICIrdixwSWQpOwogICAgICAgICAgICBpZiAoYXR0YWNoZWRJZCAmJiBhdHRhY2hlZElkICE9ICJORVciKSB7IHBlcnNvbj12OyB9CiAgICAgICAgfQogICAgfQogICAgaWYgKGR0ID09ICJDT04iIHx8IGR0ID09ICJERU0iKSB7IC8vRVJTMjAwNDE4IGlmIHdlIGFscmVhZHkga25vdyB0aGVuIHVzZSBpdAogICAgICAgIGlmICghcElkKSB7IHBJZD16RGF0YS5wSWQwOyB2PXpEYXRhLnBlcnNvbjA7IH0gLy9FUlMyMDA0MTgKICAgICAgICBpZiAocElkICkgewogICAgICAgICAgICBhdHRhY2hlZElkPWF0dGFjaChkb2MsIkF1dG9JbmRleCAiK2R0KyIgb2YgIit2LHBJZCk7CiAgICAgICAgICAgIGlmIChhdHRhY2hlZElkICYmIGF0dGFjaGVkSWQgIT0gIk5FVyIpIHsgcGVyc29uPXY7IH0KICAgICAgICB9CiAgICB9CiAgICAKICAgIGlmIChwZXJzb24pIHsKICAgICAgICB2YXIgYXJyT2ZQYWlycz1bXTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwiQXV0b0RyaXZlICIrZHQrIiBmb3IgIitwZXJzb24rICIgcGFnZXMgIitYKGRvYywiWF9mcm9tUGFnZXMiKSk7CiAgICAgICAgaWYgKDE9PT0xKSB7IC8vRVJTMjAwMzA4IFRPT0Qgc3RhZ2UgYW5kIFhfcmV2aWV3cyAvL0VSUzIwMDQxOCAjNzE0MTUKICAgICAgICAgICAgekRhdGEuc3RhZ2U9IkluZGV4ZWQiOwogICAgICAgICAgICB2YXIgcGFnZVJhbmdlPVgoZG9jLCJYX2Zyb21QYWdlcyIpOwogICAgICAgICAgICBhcnJPZlBhaXJzPXpEYXRhLmFkZFN0YWdlKGRvYyxhcnJPZlBhaXJzLHpEYXRhLnN0YWdlKTsgLy9FUlMyMDA0MTggIzcxNDE1CiAgICAgICAgICAgIHZhciBwYWdlQ291bnQgPSB6RGF0YS5jb3VudFBhZ2VzKGRvYyxwYWdlUmFuZ2UpOwogICAgICAgICAgICB0cmFjayhkb2MsICJTdGFnZS4iK3pEYXRhLnN0YWdlLCAiRG9jdW1lbnQgd2l0aCBJZDogIiArIGRvYy5kYklELCBwYWdlQ291bnQpOwogICAgICAgICAgICB6RGF0YS5wSWQwPXBJZDsgekRhdGEucGVyc29uMD1wZXJzb247IAogICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfcElkMCIsekRhdGEucElkMCk7IGFyck9mUGFpcnMucHVzaCgiWF9wZXJzb24wIix6RGF0YS5wZXJzb24wKTsgLy9UT0RPIG5lZWRlZD8/IEVSUzIwMDQxOAogICAgICAgIH0KCSAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICB9CiAgICByZXR1cm4gYXR0YWNoZWRJZDsKfQoKYWxlcnQoImVuZCBjbGllbnQgQUQgbGlicmFyeSIpOyAvL0VSUzE5MDYxNSAjNTg5MjEK"},"ordinal":4}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client AD library"); //ERS190803 #52661 from OccFit //ERS200915 #75381 accelerator

zData.clientAutoIndex=function(doc,dt,data) { //ERS200229 #61357
    //JSON.stringify(zPrepop(zd[p0],0.03,0.92)));
    var attachedId=null;
    var person="";
    var pId; //ERS200418 use most recent person in zData.rId #71415
    alert("ERS200229 clientAutoIndex "+dt+" zpId="+doc.Id);
    if (dt == "ORD") { //find a contact with that name nand birth
        var v=data["Patient Name"]; 
        alert("AutoIndex with "+v+" from "+ data);
        pId=getSFRecordID(doc, "Contact", {"Name" : v} ); //TODO syntax on "Birthdate":data["DOB"]
        if (!pId) { pId=zData.pId0; v=zData.person0; } //ERS200418
        if (pId ) {
            attachedId=attach(doc,"AutoIndex "+dt+" of "+v,pId);
            if (attachedId && attachedId != "NEW") { person=v;}
        }
    }
    if (dt == "ENRL") { //ERS200414
        var v1=data["patientFirstName"];
        var v2=data["patientLastName"];
        if (!v1) v1=data["policyHolderFirstName"];
        if (!v2) v2=data["policyHolderLastName"]; //ERS200418 use secondary fields too
        alert("ERS200418.24 "+dt+" v2="+v2+" from "+data["patientLastName"]+" or "+data["policyHolderLastName"]);
        //var v=data["patientFirstName"]+" "+data["patientLastName"];  //get this from the X-Ray
        v=v1+" "+v2;
        alert("AutoIndex with "+v+" from "+ data);
        pId=getSFRecordID(doc, "Account", {"Name" : v} ); //TODO syntax on "Birthdate":data["patientDOB"]
        alert("ERS200414.19 Account "+v+" returned "+pId);
        if (!pId) {
            pId=getSFRecordID(doc, "Contact", {"Name" : v} ); //ERS200414 #70273 for HC search Acct 1st
            alert("ERS200414.22 Contact "+v+" returned "+pId);
        }
        if (!pId) { pId=zData.pId0; v=zData.person0; } //ERS200418
        if (pId) {
            attachedId=attach(doc,"AutoIndex "+dt+" of "+v,pId);
            if (attachedId && attachedId != "NEW") { person=v; }
        }
    }
    if (dt == "HIPAA") { //find a contact with that name nand birth
        alert("AutoIndex with "+data["patientFullName"]+" from "+ data);
        pId=getSFRecordID(doc, "Account", {"Name" : data["patientFullName"]} ); //TODO syntax on "Birthdate":data["patientDOB"]
        alert("ERS200414.19 Account "+data["patientFullName"]+" returned "+pId);
        if (!pId) {
            pId=getSFRecordID(doc, "Contact", {"Name" : data["patientFullName"]} ); //ERS200414 #70273 for HC search Acct 1st
            alert("ERS200414.22 Contact "+data["patientFullName"]+" returned "+pId);
        }
         if (!pId) { pId=zData.pId0; v=zData.person0; } //ERS200418 
        if (pId ) {
            attachedId=attach(doc,"AutoIndex "+dt+" of "+data["patientFullName"],pId);
            if (attachedId && attachedId != "NEW") { person=data["patientFullName"]; }
        }
    }
    if (dt == "PDIS") { //ERS200322 #70273 Delta Dental demo
    //"patientName":"*Patient Name: Charles Green","providerFullName":"*PROVIDER NAME:\nDehn Bosworth",
        var v=(""+data["patientName"]).replace("*","").replace("Patient","").replace("Name:","").trim();
        alert("AutoIndex with "+v+" from "+ data);
        pId=getSFRecordID(doc, "Contact", {"Name" : v} ); //TODO syntax on "Birthdate":data["DOB"]
        if (!pId) { pId=zData.pId0; v=zData.person0; } //ERS200418
        if (pId ) {
            attachedId=attach(doc,"AutoIndex "+dt+" of "+v,pId);
            if (attachedId && attachedId != "NEW") { person=v; }
        }
    }
    if (dt == "FW2") { //ERS2000327 #70273
    //"patientName":"*Patient Name: Charles Green","providerFullName":"*PROVIDER NAME:\nDehn Bosworth",
        var v1=(""+data["employeeFirstname"]).trim();
        var v2=(""+data["employeeLastname"]).trim();
        if (!v1) {
            var address=data["employeeAddress"].split(" ");
            v1=address[0]; v2=address[1];
        }
        var v=v2+","+v1;
        alert("AutoIndex with "+v+" from "+ data);
        pId=getSFRecordID(doc, "Contact", {"FirstName" : v1, "LastName" : v2} ); //TODO syntax on "Birthdate":data["DOB"]
        if (!pId) { pId=zData.pId0; v=zData.person0; } //ERS200418
        if (pId ) {
            attachedId=attach(doc,"AutoIndex "+dt+" of "+v,pId);
            if (attachedId && attachedId != "NEW") { person=v; }
        }
    }
    if (dt == "CON" || dt == "DEM") { //ERS200418 if we already know then use it
        if (!pId) { pId=zData.pId0; v=zData.person0; } //ERS200418
        if (pId ) {
            attachedId=attach(doc,"AutoIndex "+dt+" of "+v,pId);
            if (attachedId && attachedId != "NEW") { person=v; }
        }
    }
    
    if (person) {
        var arrOfPairs=[];
        arrOfPairs.push("db-label","AutoDrive "+dt+" for "+person+ " pages "+X(doc,"X_fromPages"));
        if (1===1) { //ERS200308 TOOD stage and X_reviews //ERS200418 #71415
            zData.stage="Indexed";
            var pageRange=X(doc,"X_fromPages");
            arrOfPairs=zData.addStage(doc,arrOfPairs,zData.stage); //ERS200418 #71415
            var pageCount = zData.countPages(doc,pageRange);
            track(doc, "Stage."+zData.stage, "Document with Id: " + doc.dbID, pageCount);
            zData.pId0=pId; zData.person0=person; 
            arrOfPairs.push("X_pId0",zData.pId0); arrOfPairs.push("X_person0",zData.person0); //TODO needed?? ERS200418
        }
	    updateDB(doc,arrOfPairs);
    }
    return attachedId;
}

alert("end client AD library"); //ERS190615 #58921

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
