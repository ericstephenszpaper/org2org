<!--
// Name: Client AutoDrive Library
// Committer: eric.stephens@zpaper.com
// Update: new client AD library
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-29 21:01:32","evalContinue":"true","active":true,"button":"","name":"Client AutoDrive Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBBRCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAoKekRhdGEuY2xpZW50QXV0b0luZGV4PWZ1bmN0aW9uKGRvYyxkdCxkYXRhKSB7IC8vRVJTMjAwMjI5ICM2MTM1NwogICAgLy9KU09OLnN0cmluZ2lmeSh6UHJlcG9wKHpkW3AwXSwwLjAzLDAuOTIpKSk7CiAgICB2YXIgYXR0YWNoZWRJZD1udWxsOwogICAgdmFyIHBlcnNvbj0iIjsKICAgIGFsZXJ0KCJFUlMyMDAyMjkgY2xpZW50QXV0b0luZGV4ICIrZHQrIiB6cElkPSIrZG9jLklkKTsKICAgIGlmIChkdCA9PSAiT1JEIikgeyAvL2ZpbmQgYSBjb250YWN0IHdpdGggdGhhdCBuYW1lIG5hbmQgYmlydGgKICAgICAgICBhbGVydCgiQXV0b0luZGV4IHdpdGggIitkYXRhWyJQYXRpZW50IE5hbWUiXSsiIGZyb20gIisgZGF0YSk7CiAgICAgICAgdmFyIHBJZD1nZXRTRlJlY29yZElEKGRvYywgIkNvbnRhY3QiLCB7Ik5hbWUiIDogZGF0YVsiUGF0aWVudCBOYW1lIl19ICk7IC8vVE9ETyBzeW50YXggb24gIkJpcnRoZGF0ZSI6ZGF0YVsiRE9CIl0KICAgICAgICBpZiAocElkICkgewogICAgICAgICAgICBhdHRhY2hlZElkPWF0dGFjaChkb2MsIkF1dG9JbmRleCAiK2R0KyIgb2YgIitkYXRhWyJQYXRpZW50IE5hbWUiXSxwSWQpOwogICAgICAgICAgICBpZiAoYXR0YWNoZWRJZCAmJiBhdHRhY2hlZElkICE9ICJORVciKSB7IHBlcnNvbj1kYXRhWyJQYXRpZW50IE5hbWUiXTsgfQogICAgICAgIH0KICAgIH0KICAgIGlmIChkdCA9PSAiSElQQUEiKSB7IC8vZmluZCBhIGNvbnRhY3Qgd2l0aCB0aGF0IG5hbWUgbmFuZCBiaXJ0aAogICAgICAgIGFsZXJ0KCJBdXRvSW5kZXggd2l0aCAiK2RhdGFbInBhdGllbnRGdWxsTmFtZSJdKyIgZnJvbSAiKyBkYXRhKTsKICAgICAgICB2YXIgcElkPWdldFNGUmVjb3JkSUQoZG9jLCAiQ29udGFjdCIsIHsiTmFtZSIgOiBkYXRhWyJwYXRpZW50RnVsbE5hbWUiXX0gKTsgLy9UT0RPIHN5bnRheCBvbiAiQmlydGhkYXRlIjpkYXRhWyJwYXRpZW50RE9CIl0KICAgICAgICBpZiAocElkICkgewogICAgICAgICAgICBhdHRhY2hlZElkPWF0dGFjaChkb2MsIkF1dG9JbmRleCAiK2R0KyIgb2YgIitkYXRhWyJwYXRpZW50RnVsbE5hbWUiXSxwSWQpOwogICAgICAgICAgICBpZiAoYXR0YWNoZWRJZCAmJiBhdHRhY2hlZElkICE9ICJORVciKSB7IHBlcnNvbj1kYXRhWyJwYXRpZW50RnVsbE5hbWUiXTsgfQogICAgICAgIH0KICAgIH0KICAgIAogICAgaWYgKHBlcnNvbikgewogICAgICAgIHZhciBhcnJPZlBhaXJzPVtdOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCJBdXRvRHJpdmUgIitkdCsiIGZvciAiK3BlcnNvbisgIiBwYWdlcyAiK1goZG9jLCJYX2Zyb21QYWdlcyIpKTsKCSAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICB9CiAgICByZXR1cm4gYXR0YWNoZWRJZDsKfQoKYWxlcnQoImVuZCBjbGllbnQgQUQgbGlicmFyeSIpOyAvL0VSUzE5MDYxNSAjNTg5MjEK"},"ordinal":27}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client AD library"); //ERS190803 #52661 from OccFit

zData.clientAutoIndex=function(doc,dt,data) { //ERS200229 #61357
    //JSON.stringify(zPrepop(zd[p0],0.03,0.92)));
    var attachedId=null;
    var person="";
    alert("ERS200229 clientAutoIndex "+dt+" zpId="+doc.Id);
    if (dt == "ORD") { //find a contact with that name nand birth
        alert("AutoIndex with "+data["Patient Name"]+" from "+ data);
        var pId=getSFRecordID(doc, "Contact", {"Name" : data["Patient Name"]} ); //TODO syntax on "Birthdate":data["DOB"]
        if (pId ) {
            attachedId=attach(doc,"AutoIndex "+dt+" of "+data["Patient Name"],pId);
            if (attachedId && attachedId != "NEW") { person=data["Patient Name"]; }
        }
    }
    if (dt == "HIPAA") { //find a contact with that name nand birth
        alert("AutoIndex with "+data["patientFullName"]+" from "+ data);
        var pId=getSFRecordID(doc, "Contact", {"Name" : data["patientFullName"]} ); //TODO syntax on "Birthdate":data["patientDOB"]
        if (pId ) {
            attachedId=attach(doc,"AutoIndex "+dt+" of "+data["patientFullName"],pId);
            if (attachedId && attachedId != "NEW") { person=data["patientFullName"]; }
        }
    }
    
    if (person) {
        var arrOfPairs=[];
        arrOfPairs.push("db-label","AutoDrive "+dt+" for "+person+ " pages "+X(doc,"X_fromPages"));
	    updateDB(doc,arrOfPairs);
    }
    return attachedId;
}

alert("end client AD library"); //ERS190615 #58921

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
