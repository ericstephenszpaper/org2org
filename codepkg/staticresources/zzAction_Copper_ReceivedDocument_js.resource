<!--
// Name: Copper ReceivedDocument
// Committer: eric.stephens@zpaper.com
// Update: ERS210424 #82081 copper; ERS210424 client call to control create RD; ERS210424 069 file was created by X_filesStored/X_usePW, sfId now has 0io just connect them!
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2021-04-24 21:59:33","active":true,"button":"","name":"Copper ReceivedDocument","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMyMTA0MjQgIzgyMDgxIGNvcHBlcgp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgYXR0YWNoTGFiZWwgPSAiIjsKdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL1RPRE8gY2hlY2sgWlBBUEVSNl9fCnZhciB6U3RhY2s9ekRhdGEuenBzOyAvLyJTdGFja19fYyIKCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgIzYxNTExIG1vdmUgb3JhbmQgYW5kIG9yZ3N3aXRjaCB1cCBiZWZvcmUgekRhdGEuY2hhbm5lbAogICAgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCiAgICAKYWxlcnQoIkVSUzE5MDgxNC4xMSB6RGF0YS5mcm9tRmlsZT0iK3pEYXRhLmZyb21GaWxlKyIgLmNoYW5uZWw9Iit6RGF0YS5jaGFubmVsKTsgLy9FUlMxOTA4MTQKLy9DUk4xOTAzMDggSGFuZGxlIHVwbG9hZGVkIGZpbGVzIHZpYSBMaWdodG5pbmcgQ29tcG9uZW50IGFuZCB6U2VuZCBvciBtYXNzIGltcG9ydAppZiAoekRhdGEuZnJvbUZpbGUpIHsgLy9FUlMxOTA2MTcgVE9ETyBjaGFubmVsIGd1aWRlCiAgICBpZiAoekRhdGEuY2hhbm5lbCAmJiB6RGF0YS5jaGFubmVsLnRvTG93ZXJDYXNlKCkuaW5kZXhPZigidXBsb2FkIik+LTEpIHsKICAgIH0KICAgIGlmICh6RGF0YS5jaGFubmVsICYmIHpEYXRhLmNoYW5uZWwudG9Mb3dlckNhc2UoKS5pbmRleE9mKCJpbXBvcnQiKT4tMSkgewogICAgfQp9IAoKICAgIGF0dGFjaExhYmVsID0gIk5ldyAiK3pEYXRhLnByb2dyYW1OYW1lKyIgU3RhY2sgcmVjZWl2ZWQgb24gIiArIHpEYXRhLmZvcm1hdE5vdzsgLy9FUlMyMDAyMDIgY2xpZW50RmlsZSBwcm9iYWJseSBvdmVycmlkZXMgVE9ETyBjbGVhbj8KICAgIHpEYXRhLmF0dGFjaExhYmVsPWF0dGFjaExhYmVsOyAvL0VSUzIxMDQyNCBjbGllbnQgY2FsbCB0byBjb250cm9sIGNyZWF0ZSBSRAogICAgaWYgKHpEYXRhLmNsaWVudFN0YWNrKSBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudFN0YWNrKGRvYyxhcnJPZlBhaXJzKTsgLy9FUlMxOTA2MTcgVE9ETyB6RGF0YS5jbGllbnRTdGFjaygpIHdpdGggbGFiZWwgLy9TdGFja3MoKSBub3cgU3RhY2soKQogICAgdmFyIHNmSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCB6RGF0YS56cHMsIGF0dGFjaExhYmVsLCBhcnJPZlBhaXJzKTsgLy8gUFYxOTA1MzAgYWRkZWQgIiIKICAgIAogICAgaWYgKHpEYXRhLmVkaXRpb24gPT09ICJDb3BwZXIiKSB7IC8vRVJTMjEwNDI0IDA2OSBmaWxlIHdhcyBjcmVhdGVkIGJ5IFhfZmlsZXNTdG9yZWQvWF91c2VQVywgc2ZJZCBub3cgaGFzIDBpbyBqdXN0IGNvbm5lY3QgdGhlbSEKICAgICAgICB6RGF0YS5jb25uZWN0RmlsZShkb2Msc2ZJZCk7CiAgICB9CgogICAgLy9DUk4xODA3MjYgQ2FzZSAjNTA0NjkgLS0gU2V0IHRoZSAiUmVjZWl2ZWQiIGNoZWNrYm94CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwogICAgYXJyT2ZQYWlycyA9IFtdOyAvLyBQVjE5MDUzMSBhZGRlZCBmb3Igc3RhY2sgbGFiZWwKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CiAgICBpZiAoWChkb2MsICJYX2Zyb21GaWxlIik9PT0iIikgeyAvL0VSUzE5MDYyNAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9mcm9tRmlsZSIsZG9jLlVSTC5zdWJzdHJpbmcoZG9jLlVSTC5sYXN0SW5kZXhPZigiLyIpKzEpKTsgCiAgICAgICAgYWxlcnQoIkVSUzE5MDYyNCByZXBhaXJpbmcgWF9mcm9tRmlsZSB1c2luZyAiK2RvYy5VUkwpOwogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiUmVjZWl2ZWQiKTsKICAgIGlmIChzZklkKSBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzZklkKTsgLy9FUlMyMDAyMDQgYnVnIG9yIG1pc3VuZGVyc3RhbmRpbmcgIzY4ODI1CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyAiUmVjZWl2ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCiAgIAogICAgaWYgKHpEYXRhLnJlY0RvY0lkKSB7CiAgICAJIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgZG9jLmtiRGF0YS5zZlNlcnZlcisiLyIrc2ZJZCsiLCIrekRhdGEucmVjRG9jSWQpOyAvL0VSUzIxMDMyMCAjODEzMjcKICAgIH0KICAgCiAgICBpZiAoekRhdGEuemNoYW5uZWwpIHsgLy9FUlMyMDAyMDkgZ3JvdXBzICM2ODgyNSBUT0RPLURPTkUgbW92ZSB1cCBhbmQgY2hlY2sgZm9yIG90aGVyIHZhbHVlcwogICAgICAgIGlmICh6RGF0YS56Y2hhbm5lbC5vd25lcikgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS56Y2hhbm5lbC5vd25lcik7IC8vRVJTMjAwMzA4ICM3MDI3MwogICAgICAgIHZhciBmbGRzPSJkYi1yZWFkZXJzLGRiLXVzZXJzIi5zcGxpdCgiLCIpOwogICAgICAgIGZvciAodmFyIGkgaW4gZmxkcykgewogICAgICAgICAgICB2YXIgZj1mbGRzW2ldOwogICAgICAgICAgICBhbGVydCgiRVJTMjAwMjA5IHpjaGFubmVsLiIrZisiPSIrekRhdGEuemNoYW5uZWxbZl0pOwogICAgICAgICAgICBpZiAoekRhdGEuemNoYW5uZWxbZl0pIGFyck9mUGFpcnMucHVzaChmLCB6RGF0YS56Y2hhbm5lbFtmXSk7CiAgICAgICAgICAgIC8vaWYgKHpEYXRhLnpjaGFubmVsWyJkYi1yZWFkZXJzIl0pIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsIHpEYXRhLnpjaGFubmVsWyJkYi1yZWFkZXJzIl0pOwogICAgICAgICAgICAvL2lmICh6RGF0YS56Y2hhbm5lbFsiZGItdXNlcnMiXSkgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsIHpEYXRhLnpjaGFubmVsWyJkYi11c2VycyJdKTsKICAgICAgICB9CiAgICB9IGVsc2UgeyBhbGVydCgiRVJTMjAwODIyIG5vIHpjaGFubmVsIHlldCEiKTsgfQogICAgCiAgICB1cGRhdGVEQihkb2MsIGFyck9mUGFpcnMpOwogICAgYWxlcnQoIkVSUzIwMDIwNSBjcmVhdGVkIHpTdGFjayAiK3NmSWQpOyAvL0VSUzIwMDIwNSAjNjg4MjUKICAgIAogICAgaWYgKHpEYXRhLnpjaGFubmVsLmFjdGlvbikgeyAvL0VSUzIxMDMyMCAjODEzMjcgY29udGludWUgdGhlIGpvdXJuZXkKICAgICAgICB2YXIgYT0iekRhdGEuIit6RGF0YS56Y2hhbm5lbC5hY3Rpb24ucmVwbGFjZSgiKCkiLCIoZG9jKSIpOwogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMTczIGpvdXJuZXkgb24gIithKTsKICAgICAgICB2YXIgcj1ldmFsKGEpOwogICAgICAgIGFsZXJ0KCJFUlMyMTAzMjAuMTc1IHJlc3VsdHMgIityKTsKICAgIH0KICAgIC8qIEVORCAqLw=="},"ordinal":6}

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
    if (zData.clientStack) arrOfPairs=zData.clientStack(doc,arrOfPairs); //ERS190617 TODO zData.clientStack() with label //Stacks() now Stack()
    var sfId = createAndAttach(doc, zData.zps, attachLabel, arrOfPairs); // PV190530 added ""
    
    if (zData.edition === "Copper") { //ERS210424 069 file was created by X_filesStored/X_usePW, sfId now has 0io just connect them!
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
    alert("ERS200205 created zStack "+sfId); //ERS200205 #68825
    
    if (zData.zchannel.action) { //ERS210320 #81327 continue the journey
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
