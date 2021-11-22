<!--
// Name: Copper ReceivedDocument
// Committer: eric.stephens@zpaper.com
// Update: ERS211122 #86799 service cloud; overide for service cloud
    zData.zps="";
    alert("ERS211122 #86799 not making "+ zStack0+" but making "+zStack +" with "+ zData.zchannel.action);; PV190530 added ""
    } else {
        var a="zData."+zData.zchannel.action.replace("()","(doc)");
        alert("ERS211122.35 journey on "+a);; PV190530 added ""
    } else {
        var a="zData."+zData.zchannel.action.replace("()","(doc)");
        alert("ERS211122.35 journey on "+a);
        var r=eval(a);
        alert("ERS211122.37 results is sfId= "+r);
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-11-22 21:39:16","active":true,"button":"","name":"Copper ReceivedDocument","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMyMTA0MjQgIzgyMDgxIGNvcHBlcgp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgYXR0YWNoTGFiZWwgPSAiIjsKdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL1RPRE8gY2hlY2sgWlBBUEVSNl9fCnZhciB6U3RhY2s9ekRhdGEuenBzOyAvLyJTdGFja19fYyIKCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgIzYxNTExIG1vdmUgb3JhbmQgYW5kIG9yZ3N3aXRjaCB1cCBiZWZvcmUgekRhdGEuY2hhbm5lbAogICAgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCiAgICAKaWYgKHpEYXRhLnpjaGFubmVsLmFjdGlvbi5pbmRleE9mKCJDYXNlIik+LTEpIHsgLy9FUlMyMTExMjIgIzg2Nzk5IHNlcnZpY2UgY2xvdWQKICAgIHZhciB6U3RhY2swPXpTdGFjazsKICAgIHpTdGFjaz0iIjsgLy9vdmVyaWRlIGZvciBzZXJ2aWNlIGNsb3VkCiAgICB6RGF0YS56cHM9IiI7CiAgICBhbGVydCgiRVJTMjExMTIyICM4Njc5OSBub3QgbWFraW5nICIrIHpTdGFjazArIiBidXQgbWFraW5nICIrelN0YWNrICsiIHdpdGggIisgekRhdGEuemNoYW5uZWwuYWN0aW9uKTsKfQogICAgCmFsZXJ0KCJFUlMxOTA4MTQuMTEgekRhdGEuZnJvbUZpbGU9Iit6RGF0YS5mcm9tRmlsZSsiIC5jaGFubmVsPSIrekRhdGEuY2hhbm5lbCk7IC8vRVJTMTkwODE0Ci8vQ1JOMTkwMzA4IEhhbmRsZSB1cGxvYWRlZCBmaWxlcyB2aWEgTGlnaHRuaW5nIENvbXBvbmVudCBhbmQgelNlbmQgb3IgbWFzcyBpbXBvcnQKaWYgKHpEYXRhLmZyb21GaWxlKSB7IC8vRVJTMTkwNjE3IFRPRE8gY2hhbm5lbCBndWlkZQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoInVwbG9hZCIpPi0xKSB7CiAgICB9CiAgICBpZiAoekRhdGEuY2hhbm5lbCAmJiB6RGF0YS5jaGFubmVsLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigiaW1wb3J0Iik+LTEpIHsKICAgIH0KfSAKCiAgICBhdHRhY2hMYWJlbCA9ICJOZXcgIit6RGF0YS5wcm9ncmFtTmFtZSsiIFN0YWNrIHJlY2VpdmVkIG9uICIgKyB6RGF0YS5mb3JtYXROb3c7IC8vRVJTMjAwMjAyIGNsaWVudEZpbGUgcHJvYmFibHkgb3ZlcnJpZGVzIFRPRE8gY2xlYW4/CiAgICB6RGF0YS5hdHRhY2hMYWJlbD1hdHRhY2hMYWJlbDsgLy9FUlMyMTA0MjQgY2xpZW50IGNhbGwgdG8gY29udHJvbCBjcmVhdGUgUkQKICAgIHZhciBzZklkPSIiOwogICAgaWYgKHpTdGFjaykgewogICAgICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDYxNyBUT0RPIHpEYXRhLmNsaWVudFN0YWNrKCkgd2l0aCBsYWJlbCAvL1N0YWNrcygpIG5vdyBTdGFjaygpCiAgICAgICAgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpEYXRhLnpwcywgYXR0YWNoTGFiZWwsIGFyck9mUGFpcnMpOyAvLyBQVjE5MDUzMCBhZGRlZCAiIgogICAgfSBlbHNlIHsKICAgICAgICB2YXIgYT0iekRhdGEuIit6RGF0YS56Y2hhbm5lbC5hY3Rpb24ucmVwbGFjZSgiKCkiLCIoZG9jKSIpOwogICAgICAgIGFsZXJ0KCJFUlMyMTExMjIuMzUgam91cm5leSBvbiAiK2EpOwogICAgICAgIHZhciByPWV2YWwoYSk7CiAgICAgICAgYWxlcnQoIkVSUzIxMTEyMi4zNyByZXN1bHRzIGlzIHNmSWQ9ICIrcik7CiAgICAgICAgc2ZJZD1yOwogICAgfQogICAgCiAgICBpZiAoekRhdGEuZWRpdGlvbiA9PT0gIkNvcHBlciIgJiYgc2ZJZCkgeyAvL0VSUzIxMDQyNCAwNjkgZmlsZSB3YXMgY3JlYXRlZCBieSBYX2ZpbGVzU3RvcmVkL1hfdXNlUFcsIHNmSWQgbm93IGhhcyAwaW8ganVzdCBjb25uZWN0IHRoZW0hCiAgICAgICAgekRhdGEuY29ubmVjdEZpbGUoZG9jLHNmSWQpOwogICAgfQoKICAgIC8vQ1JOMTgwNzI2IENhc2UgIzUwNDY5IC0tIFNldCB0aGUgIlJlY2VpdmVkIiBjaGVja2JveAogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKICAgIGFyck9mUGFpcnMgPSBbXTsgLy8gUFYxOTA1MzEgYWRkZWQgZm9yIHN0YWNrIGxhYmVsCiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwogICAgaWYgKFgoZG9jLCAiWF9mcm9tRmlsZSIpPT09IiIpIHsgLy9FUlMxOTA2MjQKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZnJvbUZpbGUiLGRvYy5VUkwuc3Vic3RyaW5nKGRvYy5VUkwubGFzdEluZGV4T2YoIi8iKSsxKSk7IAogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CiAgICBpZiAoc2ZJZCkgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc2ZJZCk7IC8vRVJTMjAwMjA0IGJ1ZyBvciBtaXN1bmRlcnN0YW5kaW5nICM2ODgyNQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCBYKGRvYywgIlhfcmV2aWV3cyIpICsgIlJlY2VpdmVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOyAvL0VSUzE3MDkwOSAjNDA1OTIvQ0FXIFVwZGF0ZQogICAKICAgIGlmICh6RGF0YS5yZWNEb2NJZCkgewogICAgCSBhcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsIGRvYy5rYkRhdGEuc2ZTZXJ2ZXIrIi8iK3NmSWQrIiwiK3pEYXRhLnJlY0RvY0lkKTsgLy9FUlMyMTAzMjAgIzgxMzI3CiAgICB9CiAgIAogICAgaWYgKHpEYXRhLnpjaGFubmVsKSB7IC8vRVJTMjAwMjA5IGdyb3VwcyAjNjg4MjUgVE9ETy1ET05FIG1vdmUgdXAgYW5kIGNoZWNrIGZvciBvdGhlciB2YWx1ZXMKICAgICAgICBpZiAoekRhdGEuemNoYW5uZWwub3duZXIpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEuemNoYW5uZWwub3duZXIpOyAvL0VSUzIwMDMwOCAjNzAyNzMKICAgICAgICB2YXIgZmxkcz0iZGItcmVhZGVycyxkYi11c2VycyIuc3BsaXQoIiwiKTsKICAgICAgICBmb3IgKHZhciBpIGluIGZsZHMpIHsKICAgICAgICAgICAgdmFyIGY9Zmxkc1tpXTsKICAgICAgICAgICAgYWxlcnQoIkVSUzIwMDIwOSB6Y2hhbm5lbC4iK2YrIj0iK3pEYXRhLnpjaGFubmVsW2ZdKTsKICAgICAgICAgICAgaWYgKHpEYXRhLnpjaGFubmVsW2ZdKSBhcnJPZlBhaXJzLnB1c2goZiwgekRhdGEuemNoYW5uZWxbZl0pOwogICAgICAgICAgICAvL2lmICh6RGF0YS56Y2hhbm5lbFsiZGItcmVhZGVycyJdKSBhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCB6RGF0YS56Y2hhbm5lbFsiZGItcmVhZGVycyJdKTsKICAgICAgICAgICAgLy9pZiAoekRhdGEuemNoYW5uZWxbImRiLXVzZXJzIl0pIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCB6RGF0YS56Y2hhbm5lbFsiZGItdXNlcnMiXSk7CiAgICAgICAgfQogICAgfSBlbHNlIHsgYWxlcnQoIkVSUzIwMDgyMiBubyB6Y2hhbm5lbCB5ZXQhIik7IH0KICAgIAogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKICAgIGFsZXJ0KCJFUlMyMDAyMDUgY3JlYXRlZCB6U3RhY2sgb3IgIit6RGF0YS56Y2hhbm5lbC5hY3Rpb24rIiAiK3NmSWQpOyAvL0VSUzIwMDIwNSAjNjg4MjUKICAgIAogICAgaWYgKHpEYXRhLnpjaGFubmVsLmFjdGlvbiAmJiB6U3RhY2spIHsgLy9FUlMyMTAzMjAgIzgxMzI3IGNvbnRpbnVlIHRoZSBqb3VybmV5CiAgICAgICAgdmFyIGE9InpEYXRhLiIrekRhdGEuemNoYW5uZWwuYWN0aW9uLnJlcGxhY2UoIigpIiwiKGRvYykiKTsKICAgICAgICBhbGVydCgiRVJTMjEwMzIwLjE3MyBqb3VybmV5IG9uICIrYSk7CiAgICAgICAgdmFyIHI9ZXZhbChhKTsKICAgICAgICBhbGVydCgiRVJTMjEwMzIwLjE3NSByZXN1bHRzICIrcik7CiAgICB9CiAgICAvKiBFTkQgKi8="},"ordinal":8}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//ERS210424 #82081 copper
var arrOfPairs = [];
var attachLabel = "";
var zp=zData.zp; if (!zp) zp="ZPAPER__"; //TODO check ZPAPER6__
var zStack=zData.zps; //"Stack__c"

    //ERS190617 TODO document hub strategy
    //ERS190814 #61511 move orand and orgswitch up before zData.channel
    zData.setbrandprogram(doc); //who and where
    zData.orgSwitch(doc); //TODO refactor with setBrandProgram()
    
if (zData.zchannel.action.indexOf("Case")>-1) { //ERS211122 #86799 service cloud
    var zStack0=zStack;
    zStack=""; //overide for service cloud
    zData.zps="";
    alert("ERS211122 #86799 not making "+ zStack0+" but making "+zStack +" with "+ zData.zchannel.action);
}
    
alert("ERS190814.11 zData.fromFile="+zData.fromFile+" .channel="+zData.channel); //ERS190814
//CRN190308 Handle uploaded files via Lightning Component and zSend or mass import
if (zData.fromFile) { //ERS190617 TODO channel guide
    if (zData.channel && zData.channel.toLowerCase().indexOf("upload")>-1) {
    }
    if (zData.channel && zData.channel.toLowerCase().indexOf("import")>-1) {
    }
} 

    attachLabel = "New "+zData.programName+" Stack received on " + zData.formatNow; //ERS200202 clientFile probably overrides TODO clean?
    zData.attachLabel=attachLabel; //ERS210424 client call to control create RD
    var sfId="";
    if (zStack) {
        arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
        sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added ""
    } else {
        var a="zData."+zData.zchannel.action.replace("()","(doc)");
        alert("ERS211122.35 journey on "+a);
        var r=eval(a);
        alert("ERS211122.37 results is sfId= "+r);
        sfId=r;
    }
    
    if (zData.edition === "Copper" && sfId) { //ERS210424 069 file was created by X_filesStored/X_usePW, sfId now has 0io just connect them!
        zData.connectFile(doc,sfId);
    }

    //CRN180726 Case #50469 -- Set the "Received" checkbox
    var now0 = getCurDateAndTime(doc, false, true);
    arrOfPairs = []; // PV190531 added for stack label
    arrOfPairs.push("db-label", attachLabel);
    if (X(doc, "X_fromFile")==="") { //ERS190624
        arrOfPairs.push("X_fromFile",doc.URL.substring(doc.URL.lastIndexOf("/")+1)); 
        alert("ERS190624 repairing X_fromFile using "+doc.URL);
    }
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    arrOfPairs.push("X_reviewedStatus", "Received");
    if (sfId) arrOfPairs.push("X_stack", sfId); //ERS200204 bug or misunderstanding #68825
    arrOfPairs.push("X_reviews", X(doc, "X_reviews") + "Received by agent at " + now0 + "<br/>"+zData.signedStatus); //ERS170909 #40592/CAW Update
   
    if (zData.recDocId) {
    	 arrOfPairs.push("X_attachedTo", doc.kbData.sfServer+"/"+sfId+","+zData.recDocId); //ERS210320 #81327
    }
   
    if (zData.zchannel) { //ERS200209 groups #68825 TODO-DONE move up and check for other values
        if (zData.zchannel.owner) arrOfPairs.push("OwnerId",zData.zchannel.owner); //ERS200308 #70273
        var flds="db-readers,db-users".split(",");
        for (var i in flds) {
            var f=flds[i];
            alert("ERS200209 zchannel."+f+"="+zData.zchannel[f]);
            if (zData.zchannel[f]) arrOfPairs.push(f, zData.zchannel[f]);
            //if (zData.zchannel["db-readers"]) arrOfPairs.push("db-readers", zData.zchannel["db-readers"]);
            //if (zData.zchannel["db-users"]) arrOfPairs.push("db-users", zData.zchannel["db-users"]);
        }
    } else { alert("ERS200822 no zchannel yet!"); }
    
    updateDB(doc, arrOfPairs);
    alert("ERS200205 created zStack or "+zData.zchannel.action+" "+sfId); //ERS200205 #68825
    
    if (zData.zchannel.action && zStack) { //ERS210320 #81327 continue the journey
        var a="zData."+zData.zchannel.action.replace("()","(doc)");
        alert("ERS210320.173 journey on "+a);
        var r=eval(a);
        alert("ERS210320.175 results "+r);
    }
    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
