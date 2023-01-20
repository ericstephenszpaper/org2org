<!--
// Name: Copper ReceivedDocument
// Committer: Prathyusha.vasireddy@zpaper.com
// Update: PV230118 added to get pagecount
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2023-01-18 20:16:18","active":true,"button":"","name":"Copper ReceivedDocument","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_field0\")","value":"","operation":"equals"},{"name":"doc.X(\"X_attachedTo\")","value":"","operation":"equals"}]},"consequence":{"doit":"Ly9FUlMyMTA0MjQgIzgyMDgxIGNvcHBlcgp2YXIgYXJyT2ZQYWlycyA9IFtdOwp2YXIgYXR0YWNoTGFiZWwgPSAiIjsKdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL1RPRE8gY2hlY2sgWlBBUEVSNl9fCnZhciB6U3RhY2s9ekRhdGEuenBzOyAvLyJTdGFja19fYyIKCiAgICAvL0VSUzE5MDYxNyBUT0RPIGRvY3VtZW50IGh1YiBzdHJhdGVneQogICAgLy9FUlMxOTA4MTQgIzYxNTExIG1vdmUgb3JhbmQgYW5kIG9yZ3N3aXRjaCB1cCBiZWZvcmUgekRhdGEuY2hhbm5lbAogICAgekRhdGEuc2V0YnJhbmRwcm9ncmFtKGRvYyk7IC8vd2hvIGFuZCB3aGVyZQogICAgekRhdGEub3JnU3dpdGNoKGRvYyk7IC8vVE9ETyByZWZhY3RvciB3aXRoIHNldEJyYW5kUHJvZ3JhbSgpCiAgICAKaWYgKHpEYXRhLnpjaGFubmVsLmFjdGlvbi5pbmRleE9mKCJDYXNlIik+LTEpIHsgLy9FUlMyMTExMjIgIzg2Nzk5IHNlcnZpY2UgY2xvdWQKICAgIHZhciB6U3RhY2swPXpTdGFjazsKICAgIHpTdGFjaz0iIjsgLy9vdmVyaWRlIGZvciBzZXJ2aWNlIGNsb3VkCiAgICB6RGF0YS56cHM9IiI7CiAgICBhbGVydCgiRVJTMjExMTIyQiAjODY3OTkgbm90IG1ha2luZyAiKyB6U3RhY2swKyIgYnV0IG1ha2luZyAiK3pTdGFjayArIiB3aXRoICIrIHpEYXRhLnpjaGFubmVsLmFjdGlvbik7Cn0KICAgIAphbGVydCgiRVJTMTkwODE0LjExIHpEYXRhLmZyb21GaWxlPSIrekRhdGEuZnJvbUZpbGUrIiAuY2hhbm5lbD0iK3pEYXRhLmNoYW5uZWwpOyAvL0VSUzE5MDgxNAphbGVydCgiRVJTMjExMTIyQi4yMCB6RGF0YS56Y2hhbm5lbC5hY3Rpb249Iit6RGF0YS56Y2hhbm5lbC5hY3Rpb24pOyAvL0VSUzE5MDgxNAovL0NSTjE5MDMwOCBIYW5kbGUgdXBsb2FkZWQgZmlsZXMgdmlhIExpZ2h0bmluZyBDb21wb25lbnQgYW5kIHpTZW5kIG9yIG1hc3MgaW1wb3J0CmlmICh6RGF0YS5mcm9tRmlsZSkgeyAvL0VSUzE5MDYxNyBUT0RPIGNoYW5uZWwgZ3VpZGUKICAgIGlmICh6RGF0YS5jaGFubmVsICYmIHpEYXRhLmNoYW5uZWwudG9Mb3dlckNhc2UoKS5pbmRleE9mKCJ1cGxvYWQiKT4tMSkgewogICAgfQogICAgaWYgKHpEYXRhLmNoYW5uZWwgJiYgekRhdGEuY2hhbm5lbC50b0xvd2VyQ2FzZSgpLmluZGV4T2YoImltcG9ydCIpPi0xKSB7CiAgICB9Cn0gCgogICAgdmFyIG51bU9mUGFnZXMgPSBYKGRvYywgIlhfcGFnZXMiKTsvL1BWMjMwMTE4IGFkZGVkIHRvIGdldCBwYWdlY291bnQKICAgIHZhciB0aXRsZUF0dGFjaExhYmVsID0gIk5ldyBkb2N1bWVudCByZWNlaXZlZCBmcm9tICIrIHpEYXRhLnByb2dyYW1OYW1lICsgIi0iICsgbnVtT2ZQYWdlcyArICIgUGciOwogICAgYXR0YWNoTGFiZWwgPSAiTmV3IGRvY3VtZW50IHJlY2VpdmVkIGZyb20gIisgekRhdGEucHJvZ3JhbU5hbWU7IC8vRVJTMjAwMjAyIGNsaWVudEZpbGUgcHJvYmFibHkgb3ZlcnJpZGVzIFRPRE8gY2xlYW4/ekRhdGEuZm9ybWF0Tm93CiAgICB6RGF0YS5hdHRhY2hMYWJlbD1hdHRhY2hMYWJlbDsgLy9FUlMyMTA0MjQgY2xpZW50IGNhbGwgdG8gY29udHJvbCBjcmVhdGUgUkQKICAgIGlmICh6RGF0YS56Y2hhbm5lbC5vd25lcikgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIix6RGF0YS56Y2hhbm5lbC5vd25lcik7IC8vRVJTMjAwMzA4ICM3MDI3MwogICAgdmFyIHNmSWQ9IiI7CiAgICBpZiAoelN0YWNrKSB7CiAgICAgICAgYXJyT2ZQYWlycz16RGF0YS5jbGllbnRTdGFjayhkb2MsYXJyT2ZQYWlycyk7IC8vRVJTMTkwNjE3IFRPRE8gekRhdGEuY2xpZW50U3RhY2soKSB3aXRoIGxhYmVsIC8vU3RhY2tzKCkgbm93IFN0YWNrKCkKICAgICAgICBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgekRhdGEuenBzLCBhdHRhY2hMYWJlbCwgYXJyT2ZQYWlycyk7IC8vIFBWMTkwNTMwIGFkZGVkICIiIAogICAgICAgIC8vRVJTMjExMTIyIFRPRE8gQVJFIFdFIE1BS0lORyBBVFRBQ0hNRU5UUyBvbiBSRD8gaWYgc28gdXNlIGNyZWF0ZVNGUmVlY29yZAogICAgfSBlbHNlIHsKICAgICAgICB2YXIgYT0iekRhdGEuIit6RGF0YS56Y2hhbm5lbC5hY3Rpb24ucmVwbGFjZSgiKCkiLCIoZG9jLGFyck9mUGFpcnMpIik7CiAgICAgICAgYWxlcnQoIkVSUzIxMTEyMi4zNSBqb3VybmV5IG9uICIrYSk7CiAgICAgICAgdmFyIHI9ZXZhbChhKTsKICAgICAgICBhbGVydCgiRVJTMjExMTIyLjM3IHJlc3VsdHMgaXMgc2ZJZD0gIityKTsKICAgICAgICBzZklkPXI7CiAgICB9CiAgICAKICAgIGlmICh6RGF0YS5lZGl0aW9uID09PSAiQ29wcGVyIiAmJiBzZklkKSB7IC8vRVJTMjEwNDI0IDA2OSBmaWxlIHdhcyBjcmVhdGVkIGJ5IFhfZmlsZXNTdG9yZWQvWF91c2VQVywgc2ZJZCBub3cgaGFzIDBpbyBqdXN0IGNvbm5lY3QgdGhlbSEKICAgICAgICB6RGF0YS5jb25uZWN0RmlsZShkb2Msc2ZJZCk7CiAgICB9CgogICAgLy9DUk4xODA3MjYgQ2FzZSAjNTA0NjkgLS0gU2V0IHRoZSAiUmVjZWl2ZWQiIGNoZWNrYm94CiAgICB2YXIgbm93MCA9IGdldEN1ckRhdGVBbmRUaW1lKGRvYywgZmFsc2UsIHRydWUpOwogICAgYXJyT2ZQYWlycyA9IFtdOyAvLyBQVjE5MDUzMSBhZGRlZCBmb3Igc3RhY2sgbGFiZWwKICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CiAgICBpZiAoWChkb2MsICJYX2Zyb21GaWxlIik9PT0iIikgeyAvL0VSUzE5MDYyNAogICAgICAgIGFyck9mUGFpcnMucHVzaCgiWF9mcm9tRmlsZSIsZG9jLlVSTC5zdWJzdHJpbmcoZG9jLlVSTC5sYXN0SW5kZXhPZigiLyIpKzEpKTsgCiAgICAgICAgYWxlcnQoIkVSUzE5MDYyNCByZXBhaXJpbmcgWF9mcm9tRmlsZSB1c2luZyAiK2RvYy5VUkwpOwogICAgfQogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1CQVRFUyIsIHNmSWQgKyAiLVNUQUNLIik7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLCAiUmVjZWl2ZWQiKTsKICAgIGlmIChzZklkKSBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzZklkKTsgLy9FUlMyMDAyMDQgYnVnIG9yIG1pc3VuZGVyc3RhbmRpbmcgIzY4ODI1CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3cyIsIFgoZG9jLCAiWF9yZXZpZXdzIikgKyAiUmVjZWl2ZWQgYnkgYWdlbnQgYXQgIiArIG5vdzAgKyAiPGJyLz4iK3pEYXRhLnNpZ25lZFN0YXR1cyk7IC8vRVJTMTcwOTA5ICM0MDU5Mi9DQVcgVXBkYXRlCiAgIAogICAgaWYgKHpEYXRhLnJlY0RvY0lkKSB7CiAgICAJIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgZG9jLmtiRGF0YS5zZlNlcnZlcisiLyIrc2ZJZCsiLCIrekRhdGEucmVjRG9jSWQpOyAvL0VSUzIxMDMyMCAjODEzMjcKICAgIH0gZWxzZSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJYX2F0dGFjaGVkVG8iLCBkb2Mua2JEYXRhLnNmU2VydmVyKyIvIitzZklkKTsgLy9FUlMyMTExMjIgc3RpbGwgbmVlZGVkIGZvciBMRiBvbiBhIENhc2UgaW4gdGhlIGNvbnNvbGUKICAgIH0KICAgCiAgICBpZiAoekRhdGEuemNoYW5uZWwpIHsgLy9FUlMyMDAyMDkgZ3JvdXBzICM2ODgyNSBUT0RPLURPTkUgbW92ZSB1cCBhbmQgY2hlY2sgZm9yIG90aGVyIHZhbHVlcwogICAgICAgIC8vaWYgKHpEYXRhLnpjaGFubmVsLm93bmVyKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnpjaGFubmVsLm93bmVyKTsgLy9FUlMyMDAzMDggIzcwMjczCiAgICAgICAgdmFyIGZsZHM9ImRiLXJlYWRlcnMsZGItdXNlcnMiLnNwbGl0KCIsIik7CiAgICAgICAgZm9yICh2YXIgaSBpbiBmbGRzKSB7CiAgICAgICAgICAgIHZhciBmPWZsZHNbaV07CiAgICAgICAgICAgIGFsZXJ0KCJFUlMyMDAyMDkgemNoYW5uZWwuIitmKyI9Iit6RGF0YS56Y2hhbm5lbFtmXSk7CiAgICAgICAgICAgIGlmICh6RGF0YS56Y2hhbm5lbFtmXSkgYXJyT2ZQYWlycy5wdXNoKGYsIHpEYXRhLnpjaGFubmVsW2ZdKTsKICAgICAgICAgICAgLy9pZiAoekRhdGEuemNoYW5uZWxbImRiLXJlYWRlcnMiXSkgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgekRhdGEuemNoYW5uZWxbImRiLXJlYWRlcnMiXSk7CiAgICAgICAgICAgIC8vaWYgKHpEYXRhLnpjaGFubmVsWyJkYi11c2VycyJdKSBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgekRhdGEuemNoYW5uZWxbImRiLXVzZXJzIl0pOwogICAgICAgIH0KICAgIH0gZWxzZSB7IGFsZXJ0KCJFUlMyMDA4MjIgbm8gemNoYW5uZWwgeWV0ISIpOyB9CiAgICAKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CiAgICBhbGVydCgiRVJTMjAwMjA1IGNyZWF0ZWQgelN0YWNrIG9yICIrekRhdGEuemNoYW5uZWwuYWN0aW9uKyIgIitzZklkKTsgLy9FUlMyMDAyMDUgIzY4ODI1CiAgICAKICAgIGlmICh6RGF0YS56Y2hhbm5lbC5hY3Rpb24gJiYgelN0YWNrKSB7IC8vRVJTMjEwMzIwICM4MTMyNyBjb250aW51ZSB0aGUgam91cm5leQogICAgICAgIHZhciBhPSJ6RGF0YS4iK3pEYXRhLnpjaGFubmVsLmFjdGlvbi5yZXBsYWNlKCIoKSIsIihkb2MpIik7CiAgICAgICAgYWxlcnQoIkVSUzIxMDMyMC4xNzMgam91cm5leSBvbiAiK2EpOwogICAgICAgIHZhciByPWV2YWwoYSk7CiAgICAgICAgYWxlcnQoIkVSUzIxMDMyMC4xNzUgcmVzdWx0cyAiK3IpOwogICAgfQogICAgCiAgICAvL1BWMjIwMTE2IGFkZGluZyBhIGNvZGUgdG8gZXhwbGljaXRseSBzZXQgdGhlIGZpbGUgbmFtZQogICAgdmFyIGN2SWQgPSBnZXRTRkZpZWxkKGRvYywgIkNvbnRlbnRWZXJzaW9uIiwgIklkIiwgIkNvbnRlbnREb2N1bWVudElkID0gJyIgKyB6RGF0YS5maWxlSWQgKyAiJyBhbmQgSXNMYXRlc3QgPSB0cnVlIiwgbnVsbCk7CiAgICB2YXIgY3ZBcnJPZlBhaXJzID0gWyJUaXRsZSIsIHRpdGxlQXR0YWNoTGFiZWxdOwogICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCAiQ29udGVudFZlcnNpb24iLCBjdklkLCBjdkFyck9mUGFpcnMpOwogICAgLyogRU5EICov"},"ordinal":4}

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

    var numOfPages = X(doc, "X_pages");//PV230118 added to get pagecount
    var titleAttachLabel = "New document received from "+ zData.programName + "-" + numOfPages + " Pg";
    attachLabel = "New document received from "+ zData.programName; //ERS200202 clientFile probably overrides TODO clean?zData.formatNow
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
    
    //PV220116 adding a code to explicitly set the file name
    var cvId = getSFField(doc, "ContentVersion", "Id", "ContentDocumentId = '" + zData.fileId + "' and IsLatest = true", null);
    var cvArrOfPairs = ["Title", titleAttachLabel];
    updateSFRecord(doc, "ContentVersion", cvId, cvArrOfPairs);
    /* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
