<!--
// Name: CLIENT_REJECTED
// Committer: eric.stephens@zpaper.com
// Update: activity elsewhere
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-05-01 22:39:06","active":true,"button":"Rejected","name":"CLIENT_REJECTED","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"CLIENT_REJECTED","operation":"equals"}]},"consequence":{"doit":"dmFyIG5vd1RpbWVTdGFtcCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpICsgIiI7IAp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIHNmSUQgPSBYKGRvYywiWF9hY3Rpdml0eU9uSUQiKTsKaWYgKCFzZklEIHx8IHNmSUQ9PT0iIikgeyBzZklEPVgoZG9jLCJzZklEIik7IGFsZXJ0KCJFUlMyMDA4MjIgZGlzY292ZXJlZCAiK3NmSUQpOyB9IC8vRVJTMjA4MjUgIzc1Njg1IDxzZklEPjAwMzN0MDAwMDM0VVlrQkFBVzwvc2ZJRD4KCnZhciBzdGFnZT0iUmVqZWN0ZWQiOyAvL0VSUzIxMDQzMCBUT0RPIGdldCBmcm9tIFJpYmJvbiBhY3Rpb24gVVJMCnZhciBhcnJPZlBhaXJzPVtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uMCIsWChkb2MsIlhfYnV0dG9uQWN0aW9uIikpOyAKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOyAKekRhdGEuYWRkU3RhZ2UoZG9jLCBhcnJPZlBhaXJzLCBzdGFnZSk7CnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgovL2lmIEFjdGl2aXR5IGlzIG5lZWRlZCB0aGVuIGxvb2sgYXQgQ0xJRU5UX0FQUFJPVkVECg=="},"ordinal":4}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
var nowTimeStamp = new Date().getTime() + ""; 
var formatNow = getCurDateAndTime(doc);
var sfID = X(doc,"X_activityOnID");
if (!sfID || sfID==="") { sfID=X(doc,"sfID"); alert("ERS200822 discovered "+sfID); } //ERS20825 #75685 <sfID>0033t000034UYkBAAW</sfID>

var stage="Rejected"; //ERS210430 TODO get from Ribbon action URL
var arrOfPairs=[];
arrOfPairs.push("X_buttonAction0",X(doc,"X_buttonAction")); 
arrOfPairs.push("X_buttonAction",""); 
zData.addStage(doc, arrOfPairs, stage);
updateDB(doc, arrOfPairs);

//if Activity is needed then look at CLIENT_APPROVED

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---

//--- RULE VALIDATION CODE - END ---

</script>
