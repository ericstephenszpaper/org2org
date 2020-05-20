<!--
// Name: Client AutoDrive Library
// Committer: eric.stephens@zpaper.com
// Update: use pId0 whenever we have it
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-04-18 23:57:48","evalContinue":"true","active":true,"button":"","name":"Client AutoDrive Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBBRCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEuY2xpZW50QXV0b0luZGV4PWZ1bmN0aW9uKGRvYyxkdCxkYXRhKSB7IC8vRVJTMjAwMjI5ICM2MTM1NwogICAgLy9KU09OLnN0cmluZ2lmeSh6UHJlcG9wKHpkW3AwXSwwLjAzLDAuOTIpKSk7CiAgICB2YXIgYXR0YWNoZWRJZD1udWxsOwogICAgdmFyIHBlcnNvbj0iIjsKICAgIHZhciBwSWQ7IC8vRVJTMjAwNDE4IHVzZSBtb3N0IHJlY2VudCBwZXJzb24gaW4gekRhdGEucklkICM3MTQxNQogICAgYWxlcnQoIkVSUzIwMDIyOSBjbGllbnRBdXRvSW5kZXggIitkdCsiIHpwSWQ9Iitkb2MuSWQpOwogICAgaWYgKGR0ID09ICJPUkQiKSB7IC8vZmluZCBhIGNvbnRhY3Qgd2l0aCB0aGF0IG5hbWUgbmFuZCBiaXJ0aAogICAgICAgIHZhciB2PWRhdGFbIlBhdGllbnQgTmFtZSJdOyAKICAgICAgICBhbGVydCgiQXV0b0luZGV4IHdpdGggIit2KyIgZnJvbSAiKyBkYXRhKTsKICAgICAgICBwSWQ9Z2V0U0ZSZWNvcmRJRChkb2MsICJDb250YWN0IiwgeyJOYW1lIiA6IHZ9ICk7IC8vVE9ETyBzeW50YXggb24gIkJpcnRoZGF0ZSI6ZGF0YVsiRE9CIl0KICAgICAgICBpZiAoIXBJZCkgeyBwSWQ9ekRhdGEucElkMDsgdj16RGF0YS5wZXJzb24wOyB9IC8vRVJTMjAwNDE4CiAgICAgICAgaWYgKHBJZCApIHsKICAgICAgICAgICAgYXR0YWNoZWRJZD1hdHRhY2goZG9jLCJBdXRvSW5kZXggIitkdCsiIG9mICIrdixwSWQpOwogICAgICAgICAgICBpZiAoYXR0YWNoZWRJZCAmJiBhdHRhY2hlZElkICE9ICJORVciKSB7IHBlcnNvbj12O30KICAgICAgICB9CiAgICB9CiAgICBpZiAoZHQgPT0gIkVOUkwiKSB7IC8vRVJTMjAwNDE0CiAgICAgICAgdmFyIHYxPWRhdGFbInBhdGllbnRGaXJzdE5hbWUiXTsKICAgICAgICB2YXIgdjI9ZGF0YVsicGF0aWVudExhc3ROYW1lIl07CiAgICAgICAgaWYgKCF2MSkgdjE9ZGF0YVsicG9saWN5SG9sZGVyRmlyc3ROYW1lIl07CiAgICAgICAgaWYgKCF2MikgdjI9ZGF0YVsicG9saWN5SG9sZGVyTGFzdE5hbWUiXTsgLy9FUlMyMDA0MTggdXNlIHNlY29uZGFyeSBmaWVsZHMgdG9vCiAgICAgICAgYWxlcnQoIkVSUzIwMDQxOC4yNCAiK2R0KyIgdjI9Iit2MisiIGZyb20gIitkYXRhWyJwYXRpZW50TGFzdE5hbWUiXSsiIG9yICIrZGF0YVsicG9saWN5SG9sZGVyTGFzdE5hbWUiXSk7CiAgICAgICAgLy92YXIgdj1kYXRhWyJwYXRpZW50Rmlyc3ROYW1lIl0rIiAiK2RhdGFbInBhdGllbnRMYXN0TmFtZSJdOyAgLy9nZXQgdGhpcyBmcm9tIHRoZSBYLVJheQogICAgICAgIHY9djErIiAiK3YyOwogICAgICAgIGFsZXJ0KCJBdXRvSW5kZXggd2l0aCAiK3YrIiBmcm9tICIrIGRhdGEpOwogICAgICAgIHBJZD1nZXRTRlJlY29yZElEKGRvYywgIkFjY291bnQiLCB7Ik5hbWUiIDogdn0gKTsgLy9UT0RPIHN5bnRheCBvbiAiQmlydGhkYXRlIjpkYXRhWyJwYXRpZW50RE9CIl0KICAgICAgICBhbGVydCgiRVJTMjAwNDE0LjE5IEFjY291bnQgIit2KyIgcmV0dXJuZWQgIitwSWQpOwogICAgICAgIGlmICghcElkKSB7CiAgICAgICAgICAgIHBJZD1nZXRTRlJlY29yZElEKGRvYywgIkNvbnRhY3QiLCB7Ik5hbWUiIDogdn0gKTsgLy9FUlMyMDA0MTQgIzcwMjczIGZvciBIQyBzZWFyY2ggQWNjdCAxc3QKICAgICAgICAgICAgYWxlcnQoIkVSUzIwMDQxNC4yMiBDb250YWN0ICIrdisiIHJldHVybmVkICIrcElkKTsKICAgICAgICB9CiAgICAgICAgaWYgKCFwSWQpIHsgcElkPXpEYXRhLnBJZDA7IHY9ekRhdGEucGVyc29uMDsgfSAvL0VSUzIwMDQxOAogICAgICAgIGlmIChwSWQpIHsKICAgICAgICAgICAgYXR0YWNoZWRJZD1hdHRhY2goZG9jLCJBdXRvSW5kZXggIitkdCsiIG9mICIrdixwSWQpOwogICAgICAgICAgICBpZiAoYXR0YWNoZWRJZCAmJiBhdHRhY2hlZElkICE9ICJORVciKSB7IHBlcnNvbj12OyB9CiAgICAgICAgfQogICAgfQogICAgaWYgKGR0ID09ICJISVBBQSIpIHsgLy9maW5kIGEgY29udGFjdCB3aXRoIHRoYXQgbmFtZSBuYW5kIGJpcnRoCiAgICAgICAgYWxlcnQoIkF1dG9JbmRleCB3aXRoICIrZGF0YVsicGF0aWVudEZ1bGxOYW1lIl0rIiBmcm9tICIrIGRhdGEpOwogICAgICAgIHBJZD1nZXRTRlJlY29yZElEKGRvYywgIkFjY291bnQiLCB7Ik5hbWUiIDogZGF0YVsicGF0aWVudEZ1bGxOYW1lIl19ICk7IC8vVE9ETyBzeW50YXggb24gIkJpcnRoZGF0ZSI6ZGF0YVsicGF0aWVudERPQiJdCiAgICAgICAgYWxlcnQoIkVSUzIwMDQxNC4xOSBBY2NvdW50ICIrZGF0YVsicGF0aWVudEZ1bGxOYW1lIl0rIiByZXR1cm5lZCAiK3BJZCk7CiAgICAgICAgaWYgKCFwSWQpIHsKICAgICAgICAgICAgcElkPWdldFNGUmVjb3JkSUQoZG9jLCAiQ29udGFjdCIsIHsiTmFtZSIgOiBkYXRhWyJwYXRpZW50RnVsbE5hbWUiXX0gKTsgLy9FUlMyMDA0MTQgIzcwMjczIGZvciBIQyBzZWFyY2ggQWNjdCAxc3QKICAgICAgICAgICAgYWxlcnQoIkVSUzIwMDQxNC4yMiBDb250YWN0ICIrZGF0YVsicGF0aWVudEZ1bGxOYW1lIl0rIiByZXR1cm5lZCAiK3BJZCk7CiAgICAgICAgfQogICAgICAgICBpZiAoIXBJZCkgeyBwSWQ9ekRhdGEucElkMDsgdj16RGF0YS5wZXJzb24wOyB9IC8vRVJTMjAwNDE4IAogICAgICAgIGlmIChwSWQgKSB7CiAgICAgICAgICAgIGF0dGFjaGVkSWQ9YXR0YWNoKGRvYywiQXV0b0luZGV4ICIrZHQrIiBvZiAiK2RhdGFbInBhdGllbnRGdWxsTmFtZSJdLHBJZCk7CiAgICAgICAgICAgIGlmIChhdHRhY2hlZElkICYmIGF0dGFjaGVkSWQgIT0gIk5FVyIpIHsgcGVyc29uPWRhdGFbInBhdGllbnRGdWxsTmFtZSJdOyB9CiAgICAgICAgfQogICAgfQogICAgaWYgKGR0ID09ICJQRElTIikgeyAvL0VSUzIwMDMyMiAjNzAyNzMgRGVsdGEgRGVudGFsIGRlbW8KICAgIC8vInBhdGllbnROYW1lIjoiKlBhdGllbnQgTmFtZTogQ2hhcmxlcyBHcmVlbiIsInByb3ZpZGVyRnVsbE5hbWUiOiIqUFJPVklERVIgTkFNRTpcbkRlaG4gQm9zd29ydGgiLAogICAgICAgIHZhciB2PSgiIitkYXRhWyJwYXRpZW50TmFtZSJdKS5yZXBsYWNlKCIqIiwiIikucmVwbGFjZSgiUGF0aWVudCIsIiIpLnJlcGxhY2UoIk5hbWU6IiwiIikudHJpbSgpOwogICAgICAgIGFsZXJ0KCJBdXRvSW5kZXggd2l0aCAiK3YrIiBmcm9tICIrIGRhdGEpOwogICAgICAgIHBJZD1nZXRTRlJlY29yZElEKGRvYywgIkNvbnRhY3QiLCB7Ik5hbWUiIDogdn0gKTsgLy9UT0RPIHN5bnRheCBvbiAiQmlydGhkYXRlIjpkYXRhWyJET0IiXQogICAgICAgIGlmICghcElkKSB7IHBJZD16RGF0YS5wSWQwOyB2PXpEYXRhLnBlcnNvbjA7IH0gLy9FUlMyMDA0MTgKICAgICAgICBpZiAocElkICkgewogICAgICAgICAgICBhdHRhY2hlZElkPWF0dGFjaChkb2MsIkF1dG9JbmRleCAiK2R0KyIgb2YgIit2LHBJZCk7CiAgICAgICAgICAgIGlmIChhdHRhY2hlZElkICYmIGF0dGFjaGVkSWQgIT0gIk5FVyIpIHsgcGVyc29uPXY7IH0KICAgICAgICB9CiAgICB9CiAgICBpZiAoZHQgPT0gIkZXMiIpIHsgLy9FUlMyMDAwMzI3ICM3MDI3MwogICAgLy8icGF0aWVudE5hbWUiOiIqUGF0aWVudCBOYW1lOiBDaGFybGVzIEdyZWVuIiwicHJvdmlkZXJGdWxsTmFtZSI6IipQUk9WSURFUiBOQU1FOlxuRGVobiBCb3N3b3J0aCIsCiAgICAgICAgdmFyIHYxPSgiIitkYXRhWyJlbXBsb3llZUZpcnN0bmFtZSJdKS50cmltKCk7CiAgICAgICAgdmFyIHYyPSgiIitkYXRhWyJlbXBsb3llZUxhc3RuYW1lIl0pLnRyaW0oKTsKICAgICAgICBpZiAoIXYxKSB7CiAgICAgICAgICAgIHZhciBhZGRyZXNzPWRhdGFbImVtcGxveWVlQWRkcmVzcyJdLnNwbGl0KCIgIik7CiAgICAgICAgICAgIHYxPWFkZHJlc3NbMF07IHYyPWFkZHJlc3NbMV07CiAgICAgICAgfQogICAgICAgIHZhciB2PXYyKyIsIit2MTsKICAgICAgICBhbGVydCgiQXV0b0luZGV4IHdpdGggIit2KyIgZnJvbSAiKyBkYXRhKTsKICAgICAgICBwSWQ9Z2V0U0ZSZWNvcmRJRChkb2MsICJDb250YWN0IiwgeyJGaXJzdE5hbWUiIDogdjEsICJMYXN0TmFtZSIgOiB2Mn0gKTsgLy9UT0RPIHN5bnRheCBvbiAiQmlydGhkYXRlIjpkYXRhWyJET0IiXQogICAgICAgIGlmICghcElkKSB7IHBJZD16RGF0YS5wSWQwOyB2PXpEYXRhLnBlcnNvbjA7IH0gLy9FUlMyMDA0MTgKICAgICAgICBpZiAocElkICkgewogICAgICAgICAgICBhdHRhY2hlZElkPWF0dGFjaChkb2MsIkF1dG9JbmRleCAiK2R0KyIgb2YgIit2LHBJZCk7CiAgICAgICAgICAgIGlmIChhdHRhY2hlZElkICYmIGF0dGFjaGVkSWQgIT0gIk5FVyIpIHsgcGVyc29uPXY7IH0KICAgICAgICB9CiAgICB9CiAgICBpZiAoZHQgPT0gIkNPTiIgfHwgZHQgPT0gIkRFTSIpIHsgLy9FUlMyMDA0MTggaWYgd2UgYWxyZWFkeSBrbm93IHRoZW4gdXNlIGl0CiAgICAgICAgaWYgKCFwSWQpIHsgcElkPXpEYXRhLnBJZDA7IHY9ekRhdGEucGVyc29uMDsgfSAvL0VSUzIwMDQxOAogICAgICAgIGlmIChwSWQgKSB7CiAgICAgICAgICAgIGF0dGFjaGVkSWQ9YXR0YWNoKGRvYywiQXV0b0luZGV4ICIrZHQrIiBvZiAiK3YscElkKTsKICAgICAgICAgICAgaWYgKGF0dGFjaGVkSWQgJiYgYXR0YWNoZWRJZCAhPSAiTkVXIikgeyBwZXJzb249djsgfQogICAgICAgIH0KICAgIH0KICAgIAogICAgaWYgKHBlcnNvbikgewogICAgICAgIHZhciBhcnJPZlBhaXJzPVtdOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCJBdXRvRHJpdmUgIitkdCsiIGZvciAiK3BlcnNvbisgIiBwYWdlcyAiK1goZG9jLCJYX2Zyb21QYWdlcyIpKTsKICAgICAgICBpZiAoMT09PTEpIHsgLy9FUlMyMDAzMDggVE9PRCBzdGFnZSBhbmQgWF9yZXZpZXdzIC8vRVJTMjAwNDE4ICM3MTQxNQogICAgICAgICAgICB6RGF0YS5zdGFnZT0iSW5kZXhlZCI7CiAgICAgICAgICAgIHZhciBwYWdlUmFuZ2U9WChkb2MsIlhfZnJvbVBhZ2VzIik7CiAgICAgICAgICAgIGFyck9mUGFpcnM9ekRhdGEuYWRkU3RhZ2UoZG9jLGFyck9mUGFpcnMsekRhdGEuc3RhZ2UpOyAvL0VSUzIwMDQxOCAjNzE0MTUKICAgICAgICAgICAgdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLHBhZ2VSYW5nZSk7CiAgICAgICAgICAgIHRyYWNrKGRvYywgIlN0YWdlLiIrekRhdGEuc3RhZ2UsICJEb2N1bWVudCB3aXRoIElkOiAiICsgZG9jLmRiSUQsIHBhZ2VDb3VudCk7CiAgICAgICAgICAgIHpEYXRhLnBJZDA9cElkOyB6RGF0YS5wZXJzb24wPXBlcnNvbjsgCiAgICAgICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9wSWQwIix6RGF0YS5wSWQwKTsgYXJyT2ZQYWlycy5wdXNoKCJYX3BlcnNvbjAiLHpEYXRhLnBlcnNvbjApOyAvL1RPRE8gbmVlZGVkPz8gRVJTMjAwNDE4CiAgICAgICAgfQoJICAgIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKICAgIH0KICAgIHJldHVybiBhdHRhY2hlZElkOwp9CgphbGVydCgiZW5kIGNsaWVudCBBRCBsaWJyYXJ5Iik7IC8vRVJTMTkwNjE1ICM1ODkyMQo="},"ordinal":4}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client AD library"); //ERS190803 #52661 from OccFit

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
