<!--
// Name: zStack Library
// Committer: Marty Harvey:marty.harvey@zpaper.com
// Update: abstract BREX inbound phone line back to deployment record
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-04-11 14:31:40","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9nbG9iYWwgdmFyaWFibGVzCi8vekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICcwMEczRDAwMDAwMG0yak0nOy8vSlBCMTgwNzAxIGNvbW1lbnRlZCBvdXQgSlBCMTgwNjAxIGNoYW5nZWQgdG8gVW5jYXRlZ29yaXplZCBxdWV1ZQovL3pEYXRhLmNhdGVnb3JpemVkUXVldWVJZCA9ICcwMEczRDAwMDAwMG1veFYgJzsgLy9KUEIxODA3MDEgY29tbWVudGVkIG91dCBKUEIxODA2MTMgYWRkZWQgQ2F0ZWdvcml6ZWQgcXVldWUKCi8vdGhpcyBpcyBvdXIgbGlzdCBvZiBzdXBwb3J0ZWQgcHJvZ3JhbXMKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXAgPSB7fTsKekRhdGEuUFJPR1JBTV9TQUdFNTQ3ID0gJ0JyZXhhbm9sb25lJzsgLy9KUEIxODA3MDEgY2hhbmdlZCB6RGF0YS5QUk9HUkFNX1NBR0U1NDcKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbekRhdGEuQlJFWGluYm91bmRGYXhMaW5lXSA9IHpEYXRhLlBST0dSQU1fU0FHRTU0NzsgLy9KUEIxODA3MDEgY2hhbmdlZCBmYXggbnVtYmVyIGFuZCBwcm9ncmFtIG5hbWUKCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLkFmZmlsaWF0ZSA9ICIiOwoKaWYgKDE9PTApIHsgLy9FUlMxNzA4MDUgZ2V0IHRoZSBkYXRhIGZyb20gdGhlIERlcGxveW1lbnRJbmZvIC8vRVJTMTcwOTA5IFRPRE8gZG8gdGhpcyBzYWZlbHkgd2l0aCBYRGVwbG95bWVudEluZm8sWEN1c3RvbVNldHRpbmcKICAgIC8vYWxlcnQoIkVSUzE3MDcyNSBEST0iK2RvYy5rYkRhdGEuZGVwbG95bWVudEluZm8pOwogICAgdmFyIGNzPShkb2Mua2JEYXRhLmRlcGxveW1lbnRJbmZvKyIiKTsgLy9ub3QgWyJCdXNpbmVzc19Qcm9jZXNzX19jIl07CiAgICAvL2FsZXJ0KCJFUlMxNzA4MDUgY3M9Iitjcyk7CiAgICBpZiAoY3MpIHsKICAgICAgICBpZiAoY3MuaW5kZXhPZigiekN1c3RvbVNldHRpbmdzIik+LTEpIGNzPVgoZG9jLCJ6Q3VzdG9tU2V0dGluZ3MiLGNzKTsKICAgICAgICBpZiAoY3MgIT09ICIiKSBldmFsKGNzKTsKICAgICAgICBhbGVydCgiRVJTMTcwODIyIGltcG9ydCBmb3IgIitjcyk7CiAgICB9Cn0KCi8vQ1JOMTcwMzI0IFRPRE8gZG9jLmNsb25lKCkgZG9uZSByaWdodDsKekRhdGEuY2xvbmU9ZnVuY3Rpb24oZG9jKSB7CiAgIHZhciBkb2MwPVtdOwogICBmb3IgKHZhciBpIGluIGRvYykgZG9jMFtpXT1kb2NbaV07CiAgIHJldHVybiBkb2MwOwp9OwoKekRhdGEuc2V0YnJhbmRwcm9ncmFtID0gZnVuY3Rpb24oZG9jKSB7CiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgICBpZiAoZG9jLmRlbGl2ZXJlZFRvLmluZGV4T2YoekRhdGEuQlJFWGluYm91bmRGYXhMaW5lKT4tMSkgeyAvL0pQQjE4MDcwMSBjaGFuZ2VkIGZheCBudW1iZXIgRVJTNzA0MjEgaW5kZXhPZiBpcyBzYWZlciAjMzY0MTEgCiAgICAgICAgekRhdGEucHJvZ3JhbU5hbWUgPSAiQnJleGFub2xvbmUiOyAvL0pQQjE4MDcwMSBjaGFuZ2VkIHByb2dyYW0gbmFtZQogICAgICAgIHpEYXRhLkFmZmlsaWF0ZSA9ICJVUyI7CiAgICB9IGVsc2UgaWYgKGRvYy5kZWxpdmVyZWRUby5pbmRleE9mKCI0MDQ2NjUxMDQyIik+LTEpIHsKICAgICAgICB6RGF0YS5wcm9ncmFtTmFtZSA9ICJ6Q2hhcnRhIjsKICAgICAgICB6RGF0YS5BZmZpbGlhdGUgPSAiVVMiOwogICAgfSBlbHNlIHsKICAgICAgICB6RGF0YS5wcm9ncmFtTmFtZT1kb2MuZGVsaXZlcmVkVG87IC8vRVJTMTcwNjI2CiAgICB9CiAgICBhbGVydCgiKysrIEVORElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIHpEYXRhLnByb2dyYW1OYW1lID0gIiArIHpEYXRhLnByb2dyYW1OYW1lKTsKICAgIGFsZXJ0KCJAQEAgekRhdGEuQWZmaWxpYXRlID0gIiArIHpEYXRhLkFmZmlsaWF0ZSk7Cn07CgovKiB0aGlzIGlzIGFuIHVudGVzdGVkIGZ1bmN0aW9uIHRvIGRldGVjdCB0aGUgc2FuZGJveCBuYW1lIGFuZCBhc3NpZ24gdmFsdWVzICovIC8vRVJTMTcwNTIyIGFjdGl2YXRpbmcKekRhdGEub3JnU3dpdGNoPWZ1bmN0aW9uKGRvYykgeyAvL0VSUzE3MDUxMgogICAgYWxlcnQoInNmVXNlciBpcyAiK2RvYy5zZlVzZXJOYW1lKTsKICAgIGlmIChkb2Muc2ZVc2VyTmFtZS5lbmRzV2l0aCgiLmRldiIpKSB7CiAgICAgICAgYWxlcnQoIkBAQCBJbiB0aGUgREVWIG9yZyEiKTsKICAgICAgICAvL3pEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSAnMDBHNEMwMDAwMDBMa21aJzsgLy9pbnNlcnQgdGhlIFF1ZXVlIElEIG9mIHRoZSBkZXNpcmVkIG93bmVyc2hpcCBxdWV1ZS4gVXBkYXRlIHdoZW4gbWlncmF0aW5nIGJldHdlZW4gZW52aXJvbm1lbnRzLiBOZWVkIHRvIGFkZCB0aGlzIHF1ZXVlIGluIFNldHVwCiAgICB9CgllbHNlIGlmIChkb2Muc2ZVc2VyTmFtZS5lbmRzV2l0aCgiLnRlc3QiKSkgewoJCWFsZXJ0KCJAQEAgSW4gdGhlIFRFU1Qgb3JnISIpOwogICAgICAgIC8vekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICcwMEdLMDAwMDAwMVNJVU4nOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKICAgICAgICAKCX0gZWxzZSBpZiAoZG9jLnNmVXNlck5hbWUuZW5kc1dpdGgoIi5wcmQiKSkgewoJCWFsZXJ0KCJAQEAgSW4gdGhlIFRFU1Qgb3JnISIpOwogICAgICAgIC8vekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICcwMEdLMDAwMDAwMVNJVU4nOyAvL2luc2VydCB0aGUgUXVldWUgSUQgb2YgdGhlIGRlc2lyZWQgb3duZXJzaGlwIHF1ZXVlLiBVcGRhdGUgd2hlbiBtaWdyYXRpbmcgYmV0d2VlbiBlbnZpcm9ubWVudHMuIE5lZWQgdG8gYWRkIHRoaXMgcXVldWUgaW4gU2V0dXAKICAgICAgICAKCX0KfQp6RGF0YS5vcmdTd2l0Y2goZG9jKTsgLy9FUlMxNzA4MjIKCi8qIFRoaXMgZnVuY3Rpb24gbmVlZHMgdG8gYmUgYWRkZWQgdG8gZXZlcnkgcnVsZSB0byBoZWxwIGFzc3VyZSB0aGF0IHJ1bGVzIGRvIG5vdCBnZXQgYWNjaWRlbnRhbGx5IHRyaWdnZXJlZCAqLwovKiBBZGQgdGhpcyBmdW5jdGlvbmFsaXR5IHRvIHRoZSBydWxlcyBlbmdpbmUgaXRzZWxmPyAqLwp6RGF0YS5jbGVhclRyaWdnZXJDb25kaXRpb249ZnVuY3Rpb24oZG9jLHRyaWdnZXJGaWVsZCkgeyAgLy9FUlMxNzA1MTIgbW92ZWQgdG8gbGlicmFyeQogIHZhciBhcnJPZlBhaXJzID0gW107CiAgYXJyT2ZQYWlycy5wdXNoKHRyaWdnZXJGaWVsZCwgIiIpOwogIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfQoKekRhdGEuaW5pdGlhbGl6ZVN0YWNrPWZ1bmN0aW9uKGRvYyxzdGFja0ZvbGRlcixzdGFja0lkKSB7IC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgdmFyIGZpbmFsUm9vdEZvbGRlciA9IHpEYXRhLnByb2dyYW1OYW1lKyItQXJjaGl2ZSI7IC8vYmF0ZXMgb2YgdGhlIEFyY2hpdmUgZm9sZGVyCiAgdmFyIHl5eXlNTUZvbGRlck5hbWUgPSB0b2RheS5nZXRGdWxsWWVhcigpICsgKGN1ck1vbnRoID4gOSA/IGN1ck1vbnRoKyIiIDogIjAiK2N1ck1vbnRoKTsKICB2YXIgeXl5eU1NRm9sZGVyID0gZmluYWxSb290Rm9sZGVyICsgIi0iICsgeXl5eU1NRm9sZGVyTmFtZTsKICBhbGVydCgiQEBAIHN0YWNrRm9sZGVyIGlzIC0gIiArIHN0YWNrRm9sZGVyKTsKICBhbGVydCgiQEBAIGZpbmFsUm9vdEZvbGRlciBpcyAtICIgKyBmaW5hbFJvb3RGb2xkZXIpOwogIGFsZXJ0KCJAQEAgeXlNTUZvbGRlciBpcyAtICIgKyB5eXl5TU1Gb2xkZXIpOwogIGFsZXJ0KCJAQEAgY3JlYXRpbmcgbmV3IHN0YWNrIGRlc3RpbmFpb24gZm9sZGVyIHdpdGggbmFtZSAtICIgKyBzdGFja0ZvbGRlcik7CiAgLyogUmVmcmVzaCB0aGUgY3VycmVudCBmb2xkZXIgKi8KICByZWxvYWRCeUlkKGRvYywgWChkb2MsIlhfY3VyRm9sZGVyIikpOwogIC8qIHNhbWUgdmFsdWUgZm9yIEJBVEVTIGFuZCBsYWJlbCAqLwogIC8qIFRoZSBmb2xkZXIgc3RydWN0dXJlIHdpbGwgbG9vayBsaWtlIHRoaXM6IC8yMDE2MDgvM0NYM0NYLzEyMzQ1Njc4OS1TVEFDSyAqLwogIGNyZWF0ZUZvbGRlcihkb2MsIGZpbmFsUm9vdEZvbGRlciwgeXl5eU1NRm9sZGVyLCB5eXl5TU1Gb2xkZXJOYW1lKTsKICBjcmVhdGVGb2xkZXIoZG9jLCB5eXl5TU1Gb2xkZXIsIHN0YWNrRm9sZGVyLCBzdGFja0ZvbGRlcik7CiAgYWxlcnQoIkBAQEAgTW92aW5nIHRoZSBzdGFjayBkb2N1bWVudCBpbnRvIHRoZSBzdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7CiAgbW92ZURvY3VtZW50KGRvYywiIixzdGFja0ZvbGRlcik7CiAgYXJyT2ZQYWlycy5wdXNoKCJYX2luZGV4SW5pdGlhbGl6ZWQiLCAidHJ1ZSIpOwogIGFyck9mUGFpcnMucHVzaCgiWF9zdGFjayIsIHN0YWNrSWQpOwogIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBkb2Mua2JEYXRhLmdyb3VwSUQuc3Vic3RyaW5nKDEpICsgIi0iICsgc3RhY2tJZCArICItU1RBQ0siKTsKICAvKiBTdGFjayBMYWJlbGxpbmcgQ2hhbmdlICovCiAgdmFyIGR0U3RhbXAgPSBnZXRDdXJEYXRlQW5kVGltZShkb2MsIGZhbHNlKTsKICAvKiBhcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwiU3RhY2sgLSAiICsgZHRTdGFtcCk7ICovCiAgdXBkYXRlREIoZG9jLGFyck9mUGFpcnMpOwp9Cgp6RGF0YS5jb3VudFBhZ2VzPWZ1bmN0aW9uKGRvYyxwYWdlUmFuZ2UpIHsgIC8vRVJTMTcwNTEyIG1vdmVkIHRvIGxpYnJhcnkKICB2YXIgcGFnZXMgPSBwYWdlUmFuZ2Uuc3BsaXQoIiwiKTsKICBpZiAoIXBhZ2VzKSBwYWdlcz1bcGFnZVJhbmdlXTsKICByZXR1cm4gcGFnZXMubGVuZ3RoICsgIiI7Cn0KCnpEYXRhLmV4cG9zZVBERj1mdW5jdGlvbihkb2Msc2ZJZCxwYWdlUmFuZ2UpIHsgLy9FUlMxNzA1MjIgYWRkZWQgcGFnZVJhbmdlCiAgICB2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwogICAgdmFyIGFyck9mUGFpcnMgPSBbXTsKICAgIHZhciBub3dUaW1lU3RhbXAgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKSArICIiOwogICAgCiAgICB2YXIgZmlsZU5hbWUgPSBnZXRDdXJEYXRlKGRvYykgKyAiIE5ldyBGYXgucGRmIjsKICAgIGFsZXJ0KCJAQEBmaWxlTmFtZSA9ICIrZmlsZU5hbWUpOwogICAgCiAgICBjcmVhdGVEaXJlY3RvcnkoZG9jLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCk7CiAgICAKICAgIC8vQU4xNzA1MjIgc2hvdWxkIHhQYWdlcyBiZSBwYXNzZWQgaW4gYXMgYSB2YXJpYWJsZT8KICAgIHZhciB4UGFnZXMgPSBYKGRvYywgIlhfcG9zaXRpb24iKTsKICAgIGlmIChwYWdlUmFuZ2UpIHhQYWdlcz1wYWdlUmFuZ2U7ICAvL0VSUzE3MDUyMgogICAgYWxlcnQoIkBAQEBAIENhbGxpbmcgc3BsaXRQREYgdG8gc3BsaXQgb2ZmIHBhZ2VzIHRvIHVwbG9hZCBhcyBQREYsIHBhZ2VzID0gIiArIHhQYWdlcyArICIsIG5vd1RpbWVTdGFtcCA9ICIgKyBub3dUaW1lU3RhbXApOwogICAgdmFyIHJlc3BvbnNlID0gc3BsaXRQREYoZG9jLCB4UGFnZXMsIHpEYXRhLnVwbG9hZERpciwgbm93VGltZVN0YW1wLCBmaWxlTmFtZSk7CiAgICBhbGVydCgiQEBAQCByZXNwb25zZSBmcm9tIHNwbGl0UERGID0gIiArIHJlc3BvbnNlKTsKICAgIHZhciBuZXdQREZOYW1lID0gWChkb2MsICJuZXdQREYiLCByZXNwb25zZSk7CiAgICAKICAgIGFsZXJ0KCJAQEBAIHNwbGl0IFBERiBGaWxlTmFtZSA9ICIgKyBuZXdQREZOYW1lKTsKICAgIAogICAgdmFyIHVwbG9hZFVSTD0iaHR0cDovL2xvY2FsaG9zdDo4MDgwL215ZmlsZWZvcmNlL3VwbG9hZFRvQ2xvdWQuanNwP1NGaWQ9TkVXJlNGcGlkPSIrc2ZJZCsiJlNGb3JnPSIrZG9jLnNmT3JnKyImbGFiZWw9IitmaWxlTmFtZSsiJnNlcnZlckZpbGU9IituZXdQREZOYW1lKyImRGVzY3JpcHRpb249RmlsZSBhdHRhY2hlZCBhcyBQREYiOwogICAgYWxlcnQoIiMjIyMgVXBsb2FkIG5hdGl2ZSBQREYgd2l0aCAiK3VwbG9hZFVSTCk7CiAgICB2YXIgcj13Z2V0KGRvYywgdXBsb2FkVVJMKTsgLy9FUlMxNzA1MTIgd2FzIHpEYXRhLnVwbG9hZFVSTAogICAgYWxlcnQoIiMjIyMgRmF4IFJlY2VpdmVkLiBBdHRhY2hlZCB0bzogIiArIHNmSWQpOwogICAgLy8gRmluYWxseSwgZGVsZXRlIHRoZSBmb2xkZXIgYW5kIGFsbCBjb250ZW50cy4KICAgIGNsZWFudXBEaXJlY3RvcnkoZG9jLCB6RGF0YS51cGxvYWREaXIsIG5vd1RpbWVTdGFtcCk7CiAgICAvLyBOb3cgc2V0IHRoZSBsYWJlbCBpbiBvdXIgU25pcHBldAogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJOZXcgZmlsZSAiICsgZm9ybWF0Tm93KTsKICAgIGFyck9mUGFpcnMucHVzaCgiZGItQkFURVMiLCBzZklkICsgIi1TVEFDSyIpOwogICAgdXBkYXRlREIoZG9jLCBhcnJPZlBhaXJzKTsKfQoKLyogRU5EICov"},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//global variables
//zData.patEnrollQueueId = '00G3D000000m2jM';//JPB180701 commented out JPB180601 changed to Uncategorized queue
//zData.categorizedQueueId = '00G3D000000moxV '; //JPB180701 commented out JPB180613 added Categorized queue

//this is our list of supported programs
zData.supportedProgramsMap = {};
zData.PROGRAM_SAGE547 = 'Brexanolone'; //JPB180701 changed zData.PROGRAM_SAGE547
zData.supportedProgramsMap[zData.BREXinboundFaxLine] = zData.PROGRAM_SAGE547; //JPB180701 changed fax number and program name

zData.programName = "";
zData.Affiliate = "";

if (1==0) { //ERS170805 get the data from the DeploymentInfo //ERS170909 TODO do this safely with XDeploymentInfo,XCustomSetting
    //alert("ERS170725 DI="+doc.kbData.deploymentInfo);
    var cs=(doc.kbData.deploymentInfo+""); //not ["Business_Process__c"];
    //alert("ERS170805 cs="+cs);
    if (cs) {
        if (cs.indexOf("zCustomSettings")>-1) cs=X(doc,"zCustomSettings",cs);
        if (cs !== "") eval(cs);
        alert("ERS170822 import for "+cs);
    }
}

//CRN170324 TODO doc.clone() done right;
zData.clone=function(doc) {
   var doc0=[];
   for (var i in doc) doc0[i]=doc[i];
   return doc0;
};

zData.setbrandprogram = function(doc) {
    alert("+++ STARTING zData.setbrandprogram +++");
    alert("@@@ doc.deliveredTo = " + doc.deliveredTo);
    if (doc.deliveredTo.indexOf(zData.BREXinboundFaxLine)>-1) { //JPB180701 changed fax number ERS70421 indexOf is safer #36411 
        zData.programName = "Brexanolone"; //JPB180701 changed program name
        zData.Affiliate = "US";
    } else if (doc.deliveredTo.indexOf("4046651042")>-1) {
        zData.programName = "zCharta";
        zData.Affiliate = "US";
    } else {
        zData.programName=doc.deliveredTo; //ERS170626
    }
    alert("+++ ENDING zData.setbrandprogram +++");
    alert("@@@ zData.programName = " + zData.programName);
    alert("@@@ zData.Affiliate = " + zData.Affiliate);
};

/* this is an untested function to detect the sandbox name and assign values */ //ERS170522 activating
zData.orgSwitch=function(doc) { //ERS170512
    alert("sfUser is "+doc.sfUserName);
    if (doc.sfUserName.endsWith(".dev")) {
        alert("@@@ In the DEV org!");
        //zData.patEnrollQueueId = '00G4C000000LkmZ'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
    }
	else if (doc.sfUserName.endsWith(".test")) {
		alert("@@@ In the TEST org!");
        //zData.patEnrollQueueId = '00GK0000001SIUN'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
        
	} else if (doc.sfUserName.endsWith(".prd")) {
		alert("@@@ In the TEST org!");
        //zData.patEnrollQueueId = '00GK0000001SIUN'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
        
	}
}
zData.orgSwitch(doc); //ERS170822

/* This function needs to be added to every rule to help assure that rules do not get accidentally triggered */
/* Add this functionality to the rules engine itself? */
zData.clearTriggerCondition=function(doc,triggerField) {  //ERS170512 moved to library
  var arrOfPairs = [];
  arrOfPairs.push(triggerField, "");
  updateDB(doc,arrOfPairs);
}

zData.initializeStack=function(doc,stackFolder,stackId) { //ERS170512 moved to library
  var arrOfPairs = [];
  var today = new Date();
  var curMonth = today.getMonth() + 1;
  var finalRootFolder = zData.programName+"-Archive"; //bates of the Archive folder
  var yyyyMMFolderName = today.getFullYear() + (curMonth > 9 ? curMonth+"" : "0"+curMonth);
  var yyyyMMFolder = finalRootFolder + "-" + yyyyMMFolderName;
  alert("@@@ stackFolder is - " + stackFolder);
  alert("@@@ finalRootFolder is - " + finalRootFolder);
  alert("@@@ yyMMFolder is - " + yyyyMMFolder);
  alert("@@@ creating new stack destinaion folder with name - " + stackFolder);
  /* Refresh the current folder */
  reloadById(doc, X(doc,"X_curFolder"));
  /* same value for BATES and label */
  /* The folder structure will look like this: /201608/3CX3CX/123456789-STACK */
  createFolder(doc, finalRootFolder, yyyyMMFolder, yyyyMMFolderName);
  createFolder(doc, yyyyMMFolder, stackFolder, stackFolder);
  alert("@@@@ Moving the stack document into the stack folder: " + stackFolder);
  moveDocument(doc,"",stackFolder);
  arrOfPairs.push("X_indexInitialized", "true");
  arrOfPairs.push("X_stack", stackId);
  arrOfPairs.push("db-BATES", doc.kbData.groupID.substring(1) + "-" + stackId + "-STACK");
  /* Stack Labelling Change */
  var dtStamp = getCurDateAndTime(doc, false);
  /* arrOfPairs.push("db-label","Stack - " + dtStamp); */
  updateDB(doc,arrOfPairs);
}

zData.countPages=function(doc,pageRange) {  //ERS170512 moved to library
  var pages = pageRange.split(",");
  if (!pages) pages=[pageRange];
  return pages.length + "";
}

zData.exposePDF=function(doc,sfId,pageRange) { //ERS170522 added pageRange
    var formatNow = getCurDateAndTime(doc,false,true);
    var arrOfPairs = [];
    var nowTimeStamp = new Date().getTime() + "";
    
    var fileName = getCurDate(doc) + " New Fax.pdf";
    alert("@@@fileName = "+fileName);
    
    createDirectory(doc, zData.uploadDir, nowTimeStamp);
    
    //AN170522 should xPages be passed in as a variable?
    var xPages = X(doc, "X_position");
    if (pageRange) xPages=pageRange;  //ERS170522
    alert("@@@@@ Calling splitPDF to split off pages to upload as PDF, pages = " + xPages + ", nowTimeStamp = " + nowTimeStamp);
    var response = splitPDF(doc, xPages, zData.uploadDir, nowTimeStamp, fileName);
    alert("@@@@ response from splitPDF = " + response);
    var newPDFName = X(doc, "newPDF", response);
    
    alert("@@@@ split PDF FileName = " + newPDFName);
    
    var uploadURL="http://localhost:8080/myfileforce/uploadToCloud.jsp?SFid=NEW&SFpid="+sfId+"&SForg="+doc.sfOrg+"&label="+fileName+"&serverFile="+newPDFName+"&Description=File attached as PDF";
    alert("#### Upload native PDF with "+uploadURL);
    var r=wget(doc, uploadURL); //ERS170512 was zData.uploadURL
    alert("#### Fax Received. Attached to: " + sfId);
    // Finally, delete the folder and all contents.
    cleanupDirectory(doc, zData.uploadDir, nowTimeStamp);
    // Now set the label in our Snippet
    arrOfPairs = [];
    arrOfPairs.push("db-label", "New file " + formatNow);
    arrOfPairs.push("db-BATES", sfId + "-STACK");
    updateDB(doc, arrOfPairs);
}

/* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
