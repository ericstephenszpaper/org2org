<!--
// Name: Copper ReceivedDocument
// Committer: eric.stephens@zpaper.com
// Update: ERS211122 #86799 service cloud; overide for service cloud
    zData.zps="";
    alert("ERS211122B #86799 not making "+ zStack0+" but making "+zStack +" with "+ zData.zchannel.action);; ERS190814
alert("ERS211122B.20 zData.zchannel.action="+zData.zchannel.action); //ERS190814; ERS211122 TODO ARE WE MAKING ATTACHMENTS on RD? if so use createSFReecord; ERS211122 TODO ARE WE MAKING ATTACHMENTS on RD? if so use createSFReecord
    } else {
        var a="zData."+zData.zchannel.action.replace("()","(doc,arrOfPairs)");
        alert("ERS211122.35 journey on "+a);; ERS211122 TODO ARE WE MAKING ATTACHMENTS on RD? if so use createSFReecord
    } else {
        var a="zData."+zData.zchannel.action.replace("()","(doc,arrOfPairs)");
        alert("ERS211122.35 journey on "+a);
        var r=eval(a);
        alert("ERS211122.37 results is sfId= "+r);; ERS211122 still needed for LF on a Case in the console
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-11-22 23:29:40","active":true,"button":"","name":"Copper ReceivedDocument","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMyMTA0MjQgIzgyMDgxIGNvcHBlcgp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgYXR0YWNoTGFiZWwgPSAiIjsKdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL1RPRE8gY2hlY2sgWlBBUEVSNl9fCnZhciB6U3RhY2s9ekRhdGEuenBzOyAvLyJTdGFja19fYyIKCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgIzYxNTExIG1vdmUgb3JhbmQgYW5kIG9yZ3N3aXRjaCB1cCBiZWZvcmUgekRhdGEuY2hhbm5lbAogICAgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCiAgICAKaWYgKHpEYXRhLnpjaGFubmVsLmFjdGlvbi5pbmRleE9mKCJDYXNlIik+LTEpIHsgLy9FUlMyMTExMjIgIzg2Nzk5IHNlcnZpY2UgY2xvdWQKICAgIHZhciB6U3RhY2swPXpTdGFjazsKICAgIHpTdGFjaz0iIjsgLy9vdmVyaWRlIGZvciBzZXJ2aWNlIGNsb3VkCiAgICB6RGF0YS56cHM9IiI7CiAgICBhbGVydCgiRVJTMjExMTIyQiAjODY3OTkgbm90IG1ha2luZyAiKyB6U3RhY2swKyIgYnV0IG1ha2luZyAiK3pTdGFjayArIiB3aXRoICIrIHpEYXRhLnpjaGFubmVsLmFjdGlvbik7Cn0KICAgIAphbGVydCgiRVJTMTkwODE0LjExIHpEYXRhLmZyb21GaWxlPSIrekRhdGEuZnJvbUZpbGUrIiAuY2hhbm5lbD0iK3pEYXRhLmNoYW5uZWwpOyAvL0VSUzE5MDgxNAphbGVydCgiRVJTMjExMTIyQi4yMCB6RGF0YS56Y2hhbm5lbC5hY3Rpb249Iit6RGF0YS56Y2hhbm5lbC5hY3Rpb24pOyAvL0VSUzE5MDgxNAovL0NSTjE5MDMwOCBIYW5kbGUgdXBsb2FkZWQgZmlsZXMgdmlhIExpZ2h0bmluZyBDb21wb25lbnQgYW5kIHpTZW5kIG9yIG1hc3MgaW1wb3J0CmlmICh6RGF0YS5mcm9tRmlsZSkgeyAvL0VSUzE5MDYxNyBUT0RPIGNoYW5uZWwgZ3VpZGUKICAgIGlmICh6RGF0YS5jaGFubmVsICYmIHpEYXRhLmNoYW5uZWwudG9Mb3dlckNhc2UoKS5pbmRleE9mKCJ1cGxvYWQiKT4tMSkgewogICAgfQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImltcG9ydCIpPi0xKSB7CiAgICB9Cn0gCgogICAgYXR0YWNoTGFiZWwgPSAiTmV3ICIrekRhdGEucHJvZ3JhbU5hbWUrIiBkb2N1bWVudCByZWNlaXZlZCBvbiAiICsgekRhdGEuZm9ybWF0Tm93OyAvL0VSUzIwMDIwMiBjbGllbnRGaWxlIHByb2JhYmx5IG92ZXJyaWRlcyBUT0RPIGNsZWFuPwogICAgekRhdGEuYXR0YWNoTGFiZWw9YXR0YWNoTGFiZWw7IC8vRVJTMjEwNDI0IGNsaWVudCBjYWxsIHRvIGNvbnRyb2wgY3JlYXRlIFJECiAgICBpZiAoekRhdGEuemNoYW5uZWwub3duZXIpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEuemNoYW5uZWwub3duZXIpOyAvL0VSUzIwMDMwOCAjNzAyNzMKICAgIHZhciBzZklkPSIiOwogICAgaWYgKHpTdGFjaykgewogICAgICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50U3RhY2soZG9jLGFyck9mUGFpcnMpOyAvL0VSUzE5MDYxNyBUT0RPIHpEYXRhLmNsaWVudFN0YWNrKCkgd2l0aCBsYWJlbCAvL1N0YWNrcygpIG5vdyBTdGFjaygpCiAgICAgICAgc2ZJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsIHpEYXRhLnpwcywgYXR0YWNoTGFiZWwsIGFyck9mUGFpcnMpOyAvLyBQVjE5MDUzMCBhZGRlZCAiIiAKICAgICAgICAvL0VSUzIxMTEyMiBUT0RPIEFSRSBXRSBNQUtJTkcgQVRUQUNITUVOVFMgb24gUkQ/IGlmIHNvIHVzZSBjcmVhdGVTRlJlZWNvcmQKICAgIH0gZWxzZSB7CiAgICAgICAgdmFyIGE9InpEYXRhLiIrekRhdGEuemNoYW5uZWwuYWN0aW9uLnJlcGxhY2UoIigpIiwiKGRvYyxhcnJPZlBhaXJzKSIpOwogICAgICAgIGFsZXJ0KCJFUlMyMTExMjIuMzUgam91cm5leSBvbiAiK2EpOwogICAgICAgIHZhciByPWV2YWwoYSk7CiAgICAgICAgYWxlcnQoIkVSUzIxMTEyMi4zNyByZXN1bHRzIGlzIHNmSWQ9ICIrcik7CiAgICAgICAgc2ZJZD1yOwogICAgfQogICAgCiAgICBpZiAoekRhdGEuZWRpdGlvbiA9PT0gIkNvcHBlciIgJiYgc2ZJZCkgeyAvL0VSUzIxMDQyNCAwNjkgZmlsZSB3YXMgY3JlYXRlZCBieSBYX2ZpbGVzU3RvcmVkL1hfdXNlUFcsIHNmSWQgbm93IGhhcyAwaW8ganVzdCBjb25uZWN0IHRoZW0hCiAgICAgICAgekRhdGEuY29ubmVjdEZpbGUoZG9jLHNmSWQpOwogICAgfQoKICAgIC8vQ1JOMTgwNzI2IENhc2UgIzUwNDY5IC0tIFNldCB0aGUgIlJlY2VpdmVkIiBjaGVja2JveAogICAgdmFyIG5vdzAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlLCB0cnVlKTsKICAgIGFyck9mUGFpcnMgPSBbXTsgLy8gUFYxOTA1MzEgYWRkZWQgZm9yIHN0YWNrIGxhYmVsCiAgICBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwogICAgaWYgKFgoZG9jLCAiWF9mcm9tRmlsZSIpPT09IiIpIHsgLy9FUlMxOTA2MjQKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlhfZnJvbUZpbGUiLGRvYy5VUkwuc3Vic3RyaW5nKGRvYy5VUkwubGFzdEluZGV4T2YoIi8iKSsxKSk7IAogICAgICAgIGFsZXJ0KCJFUlMxOTA2MjQgcmVwYWlyaW5nIFhfZnJvbUZpbGUgdXNpbmcgIitkb2MuVVJMKTsKICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld2VkU3RhdHVzIiwgIlJlY2VpdmVkIik7CiAgICBpZiAoc2ZJZCkgYXJyT2ZQYWlycy5wdXNoKCJYX3N0YWNrIiwgc2ZJZCk7IC8vRVJTMjAwMjA0IGJ1ZyBvciBtaXN1bmRlcnN0YW5kaW5nICM2ODgyNQogICAgYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLCBYKGRvYywgIlhfcmV2aWV3cyIpICsgIlJlY2VpdmVkIGJ5IGFnZW50IGF0ICIgKyBub3cwICsgIjxici8+Iit6RGF0YS5zaWduZWRTdGF0dXMpOyAvL0VSUzE3MDkwOSAjNDA1OTIvQ0FXIFVwZGF0ZQogICAKICAgIGlmICh6RGF0YS5yZWNEb2NJZCkgewogICAgCSBhcnJPZlBhaXJzLnB1c2goIlhfYXR0YWNoZWRUbyIsIGRvYy5rYkRhdGEuc2ZTZXJ2ZXIrIi8iK3NmSWQrIiwiK3pEYXRhLnJlY0RvY0lkKTsgLy9FUlMyMTAzMjAgIzgxMzI3CiAgICB9IGVsc2UgewogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgZG9jLmtiRGF0YS5zZlNlcnZlcisiLyIrc2ZJZCk7IC8vRVJTMjExMTIyIHN0aWxsIG5lZWRlZCBmb3IgTEYgb24gYSBDYXNlIGluIHRoZSBjb25zb2xlCiAgICB9CiAgIAogICAgaWYgKHpEYXRhLnpjaGFubmVsKSB7IC8vRVJTMjAwMjA5IGdyb3VwcyAjNjg4MjUgVE9ETy1ET05FIG1vdmUgdXAgYW5kIGNoZWNrIGZvciBvdGhlciB2YWx1ZXMKICAgICAgICAvL2lmICh6RGF0YS56Y2hhbm5lbC5vd25lcikgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS56Y2hhbm5lbC5vd25lcik7IC8vRVJTMjAwMzA4ICM3MDI3MwogICAgICAgIHZhciBmbGRzPSJkYi1yZWFkZXJzLGRiLXVzZXJzIi5zcGxpdCgiLCIpOwogICAgICAgIGZvciAodmFyIGkgaW4gZmxkcykgewogICAgICAgICAgICB2YXIgZj1mbGRzW2ldOwogICAgICAgICAgICBhbGVydCgiRVJTMjAwMjA5IHpjaGFubmVsLiIrZisiPSIrekRhdGEuemNoYW5uZWxbZl0pOwogICAgICAgICAgICBpZiAoekRhdGEuemNoYW5uZWxbZl0pIGFyck9mUGFpcnMucHVzaChmLCB6RGF0YS56Y2hhbm5lbFtmXSk7CiAgICAgICAgICAgIC8vaWYgKHpEYXRhLnpjaGFubmVsWyJkYi1yZWFkZXJzIl0pIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsIHpEYXRhLnpjaGFubmVsWyJkYi1yZWFkZXJzIl0pOwogICAgICAgICAgICAvL2lmICh6RGF0YS56Y2hhbm5lbFsiZGItdXNlcnMiXSkgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsIHpEYXRhLnpjaGFubmVsWyJkYi11c2VycyJdKTsKICAgICAgICB9CiAgICB9IGVsc2UgeyBhbGVydCgiRVJTMjAwODIyIG5vIHpjaGFubmVsIHlldCEiKTsgfQogICAgCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgYWxlcnQoIkVSUzIwMDIwNSBjcmVhdGVkIHpTdGFjayBvciAiK3pEYXRhLnpjaGFubmVsLmFjdGlvbisiICIrc2ZJZCk7IC8vRVJTMjAwMjA1ICM2ODgyNQogICAgCiAgICBpZiAoekRhdGEuemNoYW5uZWwuYWN0aW9uICYmIHpTdGFjaykgeyAvL0VSUzIxMDMyMCAjODEzMjcgY29udGludWUgdGhlIGpvdXJuZXkKICAgICAgICB2YXIgYT0iekRhdGEuIit6RGF0YS56Y2hhbm5lbC5hY3Rpb24ucmVwbGFjZSgiKCkiLCIoZG9jKSIpOwogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMTczIGpvdXJuZXkgb24gIithKTsKICAgICAgICB2YXIgcj1ldmFsKGEpOwogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMTc1IHJlc3VsdHMgIityKTsKICAgIH0KICAgIC8qIEVORCAqLw=="},"ordinal":8}

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
    alert("ERS211122B #86799 not making "+ zStack0+" but making "+zStack +" with "+ zData.zchannel.action);
}
    
alert("ERS190814.11 zData.fromFile="+zData.fromFile+" .channel="+zData.channel); //ERS190814
alert("ERS211122B.20 zData.zchannel.action="+zData.zchannel.action); //ERS190814
//CRN190308 Handle uploaded files via Lightning Component and zSend or mass import
if (zData.fromFile) { //ERS190617 TODO channel guide
    if (zData.channel && zData.channel.toLowerCase().indexOf("upload")>-1) {
    }
    if (zData.channel && zData.channel.toLowerCase().indexOf("import")>-1) {
    }
} 

    attachLabel = "New "+zData.programName+" document received on " + zData.formatNow; //ERS200202 clientFile probably overrides TODO clean?
    zData.attachLabel=attachLabel; //ERS210424 client call to control create RD
    if (zData.zchannel.owner) arrOfPairs.push("OwnerId",zData.zchannel.owner); //ERS200308 #70273
    var sfId="";
    if (zStack) {
        arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
        sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added "" 
        //ERS211122 TODO ARE WE MAKING ATTACHMENTS on RD? if so use createSFReecord
    } else {
        var a="zData."+zData.zchannel.action.replace("()","(doc,arrOfPairs)");
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
    } else {
        arrOfPairs.push("X_attachedTo", doc.kbData.sfServer+"/"+sfId); //ERS211122 still needed for LF on a Case in the console
    }
   
    if (zData.zchannel) { //ERS200209 groups #68825 TODO-DONE move up and check for other values
        //if (zData.zchannel.owner) arrOfPairs.push("OwnerId",zData.zchannel.owner); //ERS200308 #70273
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
