<!--
// Name: CLIENT_REJECTED
// Committer: andrew@zpaper.com
// Update: Case 83159
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-05-15 06:38:50","active":true,"button":"Rejected","name":"CLIENT_REJECTED","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"CLIENT_REJECTED","operation":"equals"}]},"consequence":{"doit":"dmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIHNmSUQgPSBYKGRvYywiWF9hY3Rpdml0eU9uSUQiKTsKaWYgKCFzZklEIHx8IHNmSUQ9PT0iIikgeyBzZklEPVgoZG9jLCJzZklEIik7IGFsZXJ0KCJFUlMyMDA4MjIgZGlzY292ZXJlZCAiK3NmSUQpOyB9IC8vRVJTMjA4MjUgIzc1Njg1IDxzZklEPjAwMzN0MDAwMDM0VVlrQkFBVzwvc2ZJRD4KCmlmIChYKGRvYywiWF9yZXZpZXdzIikuaW5kZXhPZigiUHJvY2Vzc2VkIikgPiAtMSApIHsKICAgIGFsZXJ0KCJBbHJlYWR5IHByb2Nlc3NlZCIpOwogICAgYWRkUG9zdEV4ZWN1dGlvblNjcmlwdChkb2MsInt+bWVzc2FnZX46fkFscmVhZHkgcHJvY2Vzc2VkIX59Iik7Cn0gZWxzZSB7IC8vQU4yMDIxMDUxMyBDYXNlIDgzMTU5CiAgICB2YXIgc3RhZ2U9IlJlamVjdGVkIjsgLy9FUlMyMTA0MzAgVE9ETyBnZXQgZnJvbSBSaWJib24gYWN0aW9uIFVSTAogICAgdmFyIGFyck9mUGFpcnM9W107CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uMCIsWChkb2MsIlhfYnV0dG9uQWN0aW9uIikpOyAKICAgIGFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCIiKTsgCiAgICB6RGF0YS5hZGRTdGFnZShkb2MsIGFyck9mUGFpcnMsIHN0YWdlKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywie35tZXNzYWdlfjp+UmVqZWN0ZWQhfn0iKTsKfQoKLy9pZiBBY3Rpdml0eSBpcyBuZWVkZWQgdGhlbiBsb29rIGF0IENMSUVOVF9BUFBST1ZFRAo="},"ordinal":4}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var nowTimeStamp = new Date().getTime() + ""; 
var formatNow = getCurDateAndTime(doc);
var sfID = X(doc,"X_activityOnID");
if (!sfID || sfID==="") { sfID=X(doc,"sfID"); alert("ERS200822 discovered "+sfID); } //ERS20825 #75685 <sfID>0033t000034UYkBAAW</sfID>

if (X(doc,"X_reviews").indexOf("Processed") > -1 ) {
    alert("Already processed");
    addPostExecutionScript(doc,"{~message~:~Already processed!~}");
} else { //AN20210513 Case 83159
    var stage="Rejected"; //ERS210430 TODO get from Ribbon action URL
    var arrOfPairs=[];
    arrOfPairs.push("X_buttonAction0",X(doc,"X_buttonAction")); 
    arrOfPairs.push("X_buttonAction",""); 
    zData.addStage(doc, arrOfPairs, stage);
    updateDB(doc, arrOfPairs);
    addPostExecutionScript(doc,"{~message~:~Rejected!~}");
}

//if Activity is needed then look at CLIENT_APPROVED

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
