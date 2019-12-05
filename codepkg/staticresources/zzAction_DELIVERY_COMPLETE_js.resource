<!--
// Name: DELIVERY_COMPLETE
// Committer: sruthi.potru@zpaper.com
// Update: Updating for case 00063437 
var attachLabel = "Sent on " + formatNow; /* MSH170905 */
var sfId = X(doc, "X_activityOnID");
var attachedTo = X(doc, "sfServer");
attachedTo += "/" + sfId;

To:

var attachLabel = "Sent on " + formatNow; /* MSH170905 */
var sfId = X(doc, "X_activityOnID");
//CRN191008 The sfServer field in wddata appears to be blank during bulkPrint, so we get this in attachedTo: /50023000002MyBbAAK which screws up tableXMLSearch.jsp.
var attachedTo = X(doc, "sfServer");
if (!attachedTo) {
    attachedTo = doc.kbData.sfServer;
    if (!attachedTo) { attachedTo = "https://www.salesforce.com"; }     // I don't know of anything in our code that really gives a rip about the host on this attachedTo field
    if (attachedTo.indexOf("https://") < 0) { attachedTo = "https://" + attachedTo; } // we do want the https:// starting part
}
attachedTo += "/" + sfId;
alert("@@@@@@@@ attachedTo value = " + attachedTo);
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2019-11-07 17:01:58","active":true,"button":"","name":"DELIVERY_COMPLETE","conditions":{"logic":"and","arguments":[{"name":"doc.X(\"X_buttonAction\")","value":"DELIVERY_COMPLETE","operation":"equals"}]},"consequence":{"doit":"Ly9UUE0xODA4MDMgc3RhcnRpbmcgREVMSVZFUllfQ09NUExFVEUgcnVsZQp2YXIgZm9ybWF0Tm93ID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jKTsKdmFyIGNvdmVySUQgPSBYKGRvYywgImNvdmVySUQiKTsKdmFyIGRvY1RpdGxlID0gWChkb2MsICJkb2NUaXRsZSIpOwoKLy92YXIgZGVsaXZlcmVkVG8gPSBYKGRvYywgImRlbGl2ZXJlZFRvIik7CnZhciBkZWxpdmVyZWRUbyA9IFgoZG9jLCAiQ29udGFjdEZheCIsIGRvYy53ZGRhdGEpOyAvL0FOMjAxOTA3MTYgIzYwNzU0IGRvYy5kZWxpdmVyZWRUbyBpcyBjb21pbmcgb3ZlciBhcyBudWxsIC0gd2FzIHN1Z2dlc3RlZCB0byB1c2UgQ29udGFjdEZheAoKYWxlcnQoImNvdmVySUQ6ICIgKyBjb3ZlcklEKTsKYWxlcnQoImRvY1RpdGxlOiAiICsgZG9jVGl0bGUpOwoKLyogTVNIMTgwMjA3IGRlZmluZSBvbmNlIGhlcmUgKi8KdmFyIGFyck9mUGFpcnMgPSBbXTsKdmFyIHNmQ2FzZUlkID0gIiI7CnZhciBzZkNvbnRhY3RJZCA9ICIiOwp2YXIgc2ZUeXBlID0gWChkb2MsICJzZlR5cGUiKTsKdmFyIHBhdGllbnRGaXJzdE5hbWUgPSAiIjsKdmFyIHBhdGllbnRMYXN0TmFtZSA9ICIiOwp2YXIgcGF0aWVudElkID0gIiI7CnZhciBPd25lcklkID0gIiI7CgovL1RQTTE4MDgwMyBCZWxvdyBJRiBzdGF0ZW1lbnQgaXMgb25seSBmb3IgUEFPUyBpbnRlZ3JhdGlvbi4gIE90aGVyIERFTElWRVJZX0NPTVBMRVRFIGZ1bmN0aW9uYWxpdHkgaXMgYmVsb3cgdGhhdC4KLy9BTjE4MDcwOSBUaGlzIElGIHN0YXRlbWVudCBjb250YWlucyBsb2dpYyBmb3IgUEFPUyBmdW5jdGlvbmFsaXR5LiBQQU9TIGhhcyAzIHVzZSBjYXNlcywgZWFjaCB0cmlnZ2VyZWQgYnkgYSBkaWZmZXJlbnQgb3V0Ym91bmQgbWVzc2FnZS4gIFNlZSBUb20gZm9yIGRldGFpbHMuCgp2YXIgdXNlQ2FzZSA9IFgoZG9jLCAielBBT1NVc2VDYXNlX19jIik7IC8vdG9kbzogY2xlYW4gdGhpcyB1cCAtIHdlIG5vIGxvbmdlciBoYXZlIFBBT1MgdXNlIGNhc2VzCmlmICh1c2VDYXNlICYmIHVzZUNhc2UubGVuZ3RoID4gMCkgewogICAgCiAgICBhbGVydCgidXNlQ2FzZTogIiArIHVzZUNhc2UpOwoKICAgIHZhciBzZkFjdGl2aXR5T25JZCA9IFgoZG9jLCAiWF9hY3Rpdml0eU9uSUQiKTsgCiAgICBhbGVydCgic2ZBY3Rpdml0eU9uSWQ6ICIgKyBYKGRvYywgIlhfYWN0aXZpdHlPbklEIikpOyAvL2RlcGVuZGluZyBvbiB0aGUgVXNlIENhc2UgdGhpcyBtYXkgYmUgYW4gUFNfQXBwbGljYXRpb25fX2MgcmVjb3JkLCBhIENvbnRhY3QsIG9yIGFuIEFjY291bnQKICAgIAogICAgdmFyIG1hc3RlcklEID0gKGRvYy5rYkRhdGEuZ3JvdXBJRCkuc3Vic3RyaW5nKDEsKGRvYy5rYkRhdGEuZ3JvdXBJRCkubGVuZ3RoKCkpOyAvL2dldCB0aGUgelBhcGVyIE1hc3RlciBJRAogICAgYWxlcnQoIkBAQCBtYXN0ZXJJRDogIiArIG1hc3RlcklEKTsKCiAgICBzZkNhc2VJZCA9IFgoZG9jLCAiUFNfUG9ydGFsQ2FzZV9fYyIpOyAvL0FOMjAxOTAxMTUgYXMgb2YgSmFuIDIwMTkgd2Ugbm8gbG9uZ2VyIG5lZWQgdG8gY3JlYXRlIGEgY2FzZSAtIGNsZWFuIHRoaXMgWE1MIHZhcmlhYmxlIGFuZCBjb2RlIHVwIGxhdGVyCiAgICBzZkNvbnRhY3RJZCA9IFgoZG9jLCAiUFNfQ29udGFjdF9fYyIpOwogICAgYWxlcnQoImZvdW5kIHNmQ2FzZUlkOiAiICsgc2ZDYXNlSWQpOwogICAgYWxlcnQoImZvdW5kIHNmQ29udGFjdElkOiAiICsgc2ZDb250YWN0SWQpOwoKLy9BTjIwMTkwMTE1IHRoaXMgaXMgd2hlcmUgd2UgYXR0YWNoIGEgZG9jIHRvIHRoZSBjYXNlCiAgICBhbGVydCgiY2FsbGluZyBhdHRhY2ggd2l0aCBzZkNhc2VJZCA9ICIgKyBzZkNhc2VJZCk7IC8qIE1TSDE3MTAyMCBkZWJ1Z2dpbmcgKi8KICAgIHZhciBhdHRSZXN1bHQgPSBhdHRhY2goZG9jLCAiTmV3IFN0YWNrIHJlY2VpdmVkIG9uICIgKyBnZXRDdXJEYXRlQW5kVGltZShkb2MpLCBzZkNhc2VJZCwgZmFsc2UpOwogICAgYWxlcnQoImF0dFJlc3VsdCA9ICAiICsgYXR0UmVzdWx0KTsgLyogTVNIMTcxMDIwIGRlYnVnZ2luZyAqLwogICAgaWYgKGF0dFJlc3VsdC5pbmRleE9mKCJFUlJPUiIpID49IDApIHsKICAgICAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIjxFUlJPUj4iKTsKICAgIH0gZWxzZSB7CiAgICAgICAgYWxlcnQoIlN1Y2Nlc3NmdWwgYXR0YWNoIGNvbXBsZXRlLiBDYXNlIElkOiAiICsgc2ZDYXNlSWQpOwogICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiPFNVQ0NFU1M+Iik7CiAgICB9CiAgICAKLy9BTjIwMTkwMTE1IHNldCB0aGUgbGFiZWwgb2YgdGhlIGZpbGUgb24gdGhlIFBTX0FwcGxpY2F0aW9uX19jIG9iamVjdAogICAgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsICJQQU9TIFN1cHBvcnRpbmcgRG9jdW1lbnQiKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7ICAgICAgCiAgICAKLy9BTjIwMTkwMTE1IHdlIHNob3VsZCBzdGlsbCBjcmVhdGUgYSBzdGFjayAgICAgICAKICAgIHZhciBzdGFja0lkID0gekRhdGEuY3JlYXRlU3RhY2soZG9jLCBzZkNvbnRhY3RJZCwgc2ZDYXNlSWQsICJDb21wbGV0ZSIpOwogICAgYWxlcnQoInN0YWNrSUQ6ICIgKyBzdGFja0lkKTsKICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiTmFtZSIsIG51bGwsIHNmQWN0aXZpdHlPbklkKTsKICAgIGNvbnRhY3RGbGRzICs9ICIiOwogICAgdmFyIHBhdGllbnRuYW1lID0gWChkb2MsICJOYW1lIiwgY29udGFjdEZsZHMpOwogICAgCiAgICBhcnJPZlBhaXJzID0gW107CiAgICB2YXIgYXR0YWNoUGF0aCA9IHNmQ2FzZUlkICsgIiwiICsgc3RhY2tJZDsKICAgIGFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgYXR0YWNoUGF0aCk7CiAgICBhcnJPZlBhaXJzLnB1c2goIlhfWlBBUEVSX19DYXNlX19jIiwgc2ZDYXNlSWQpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIHBhdGllbnRuYW1lICsgIiBQQU9TIFN1cHBvcnRpbmcgRG9jdW1lbnQiKTsKICAgIHVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CgogICAgbW92ZURvY3VtZW50KGRvYywgbWFzdGVySUQgKyAiT3V0IiwgbWFzdGVySUQgKyAiSW4iKTsKCiAgICAvKiBNU0gxNzEwMjAgKi8KICAgIHpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbihkb2MsIlhfYnV0dG9uQWN0aW9uIik7CiAgICByZXR1cm47Cn0KLy9UUE0xODA4MDMgIEVORCBvZiBQQU9TIGludGVncmF0aW9uIGNvZGUKLyogIERFTElWRVJZX0NPTVBMRVRFIHJ1bGUgZm9yIGFueXRoaW5nIE5PVCBQQU9TKi8KdmFyIGF0dGFjaExhYmVsID0gIlNlbnQgb24gIiArIGZvcm1hdE5vdzsgLyogTVNIMTcwOTA1ICovCnZhciBzZklkID0gWChkb2MsICJYX2FjdGl2aXR5T25JRCIpOwovL0NSTjE5MTAwOCBUaGUgc2ZTZXJ2ZXIgZmllbGQgaW4gd2RkYXRhIGFwcGVhcnMgdG8gYmUgYmxhbmsgZHVyaW5nIGJ1bGtQcmludCwgc28gd2UgZ2V0IHRoaXMgaW4gYXR0YWNoZWRUbzogLzUwMDIzMDAwMDAyTXlCYkFBSyB3aGljaCBzY3Jld3MgdXAgdGFibGVYTUxTZWFyY2guanNwLgp2YXIgYXR0YWNoZWRUbyA9IFgoZG9jLCAic2ZTZXJ2ZXIiKTsKaWYgKCFhdHRhY2hlZFRvKSB7CiAgICBhdHRhY2hlZFRvID0gZG9jLmtiRGF0YS5zZlNlcnZlcjsKICAgIGlmICghYXR0YWNoZWRUbykgeyBhdHRhY2hlZFRvID0gImh0dHBzOi8vd3d3LnNhbGVzZm9yY2UuY29tIjsgfSAgICAgLy8gSSBkb24ndCBrbm93IG9mIGFueXRoaW5nIGluIG91ciBjb2RlIHRoYXQgcmVhbGx5IGdpdmVzIGEgcmlwIGFib3V0IHRoZSBob3N0IG9uIHRoaXMgYXR0YWNoZWRUbyBmaWVsZAogICAgaWYgKGF0dGFjaGVkVG8uaW5kZXhPZigiaHR0cHM6Ly8iKSA8IDApIHsgYXR0YWNoZWRUbyA9ICJodHRwczovLyIgKyBhdHRhY2hlZFRvOyB9IC8vIHdlIGRvIHdhbnQgdGhlIGh0dHBzOi8vIHN0YXJ0aW5nIHBhcnQKfQphdHRhY2hlZFRvICs9ICIvIiArIHNmSWQ7CmFsZXJ0KCJAQEBAQEBAQCBhdHRhY2hlZFRvIHZhbHVlID0gIiArIGF0dGFjaGVkVG8pOwoKdmFyIGRvY1R5cGU9WChkb2MsICJYX2RvY1R5cGVTZW50Iik7IC8vRVJTMTgwMzI4ICM0NjM3MwphbGVydCgiQEBAIGZpcnN0IGRvY1R5cGUgPSAiICsgZG9jVHlwZSk7CmlmIChkb2NUeXBlPT09IiIpIHsgZG9jVHlwZSA9IFgoZG9jLCJYX2RvY1R5cGUiKTsgfSAgLy9FUlMxODAzMjggIzQ2MzczCmFsZXJ0KCJAQEAgc2Vjb25kIGRvY1R5cGUgPSAiICsgZG9jVHlwZSk7CmlmIChkb2NUeXBlPT09IiIpIHsgZG9jVHlwZSA9IGRvYy5kb2NUeXBlOyB9CmFsZXJ0KCJAQEAgdGhpcmQgZG9jVHlwZSA9ICIgKyBkb2NUeXBlKTsKaWYgKGRvY1R5cGU9PT0iIikgeyBkb2NUeXBlID0gWChkb2MsIkNvbnRhY3ROYW1lIik7IH0gLy9FUlMxODAzMjggIzQ2MzczCmFsZXJ0KCJAQEAgZm9ydGggZG9jVHlwZSA9ICIgKyBkb2NUeXBlKTsKaWYgKGRvY1R5cGU9PT0iIikgeyBkb2NUeXBlID0gIkZBWCI7IH0KYWxlcnQoIkBAQCBmaWZ0aCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOwpkb2MuZG9jVHlwZT1kb2NUeXBlOyAvL0VSUzE4MDMyOCAjNDYzNzMKCnZhciBsYWJlbERvY1R5cGUgPSBkb2NUeXBlOwoKYWxlcnQoIkBAQCBkb2NUeXBlID0gIiArIGRvY1R5cGUpOyAKYWxlcnQoIkBAQCBYKGRvYywgc2ZTZXJ2ZXIpID0gIiArIGF0dGFjaGVkVG8pOwoKaWYgKHNmVHlwZSA9PSAiQ2FzZSIpIHsKICAgIAogICAgdmFyIGNhc2VGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ2FzZSIsICJSZWNvcmRUeXBlSWQsQ29udGFjdElkLEFjY291bnRJZCxPd25lcklkIiwgbnVsbCwgc2ZJZCk7IC8vQU4yMDE4MDcxOCBnZXQgdGhlIGZpZWxkcyBmcm9tIHRoZSBDYXNlIHRoYXQgd2Ugd2lsbCBuZWVkCiAgICAgCiAgICB2YXIgcmVjVHlwZUlkID0gWChkb2MsICJSZWNvcmRUeXBlSWQiLCBjYXNlRmxkcyk7CiAgICB2YXIgcmVjVHlwZU5hbWUgPSBnZXRTRkZpZWxkKGRvYywgIlJlY29yZFR5cGUiLCAiTmFtZSIsIG51bGwsIHJlY1R5cGVJZCk7IC8vQU4yMDE4MDcxOCBnZXQgdGhlIG5hbWUgb2YgdGhlIGN1cnJlbnQgQ2FzZSByZWNvcmQgdHlwZQogICAgT3duZXJJZCA9IFgoZG9jLCAiT3duZXJJZCIsIGNhc2VGbGRzKTsKICAgIGFsZXJ0KCJAQEAgT3duZXJJZCIgKyBPd25lcklkKTsKICAgIGFsZXJ0KCJAQEAgY3VycmVudCBDYXNlIFJlY29yZCBUeXBlIE5hbWU6ICIgKyByZWNUeXBlTmFtZSk7CiAgICAKICAgIGlmIChyZWNUeXBlTmFtZSA9PT0gIk5ldy9SZW5ld2FsL1lFQy9Pbi1nb2luZyBQcmVzY3JpcHRpb24iKXsgLy90aGlzIGlzIGEgUEFQIGNhc2UKICAgICAgYWxlcnQoIkBAQCBnZXR0aW5nIFBBUCBDYXNlIGRldGFpbHMiKTsKICAgICAgcGF0aWVudElkID0gIFgoZG9jLCAiQ29udGFjdElkIiwgY2FzZUZsZHMpOyAvL2dldCB0aGUgQ29udGFjdCBJRCBzaW5jZSBQQVAgdXNlcyB0aGUgQ29udGFjdCBvYmplY3QgZm9yIFBhdGllbnRzCiAgICAgIHZhciBjb250YWN0RmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNvbnRhY3QiLCAiRmlyc3ROYW1lLExhc3ROYW1lIiwgbnVsbCwgcGF0aWVudElkKTsgCiAgICAgIGFsZXJ0KCJAQEAgY2FsbGluZyBTRiBmb3IgY29udGFjdEZsZHMgOjogIiArIGNvbnRhY3RGbGRzKTsKICAgICAgcGF0aWVudEZpcnN0TmFtZSA9IFgoZG9jLCAiRmlyc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgfQoKICAgIGVsc2UgaWYgKHJlY1R5cGVOYW1lID09PSAiQmVuZWZpdCBWZXJpZmljYXRpb24iIHx8IHJlY1R5cGVOYW1lID09PSAiRGVuaWFsIFN1cHBvcnQiKXsgLy90aGlzIGlzIGFuIFJILUltbXVub2xvZ3kgY2FzZQogICAgICBhbGVydCgiQEBAIGdldHRpbmcgUkggQ2FzZSBkZXRhaWxzIik7CiAgICAgIHBhdGllbnRJZCA9IFgoZG9jLCAiQWNjb3VudElkIiwgY2FzZUZsZHMpOyAvL2dldCB0aGUgQWNjb3VudCBJRCBzaW5jZSBSSCB1c2VzIHRoZSBBY2NvdW50IG9iamVjdCBmb3IgUGF0aWVudHMKICAgICAgdmFyIGFjY291bnRGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQWNjb3VudCIsICJQU19QYXRpZW50Rmlyc3ROYW1lX19jLFBTX1BhdGllbnRMYXN0TmFtZV9fYyIsIG51bGwsIHBhdGllbnRJZCk7IAogICAgICBhbGVydCgiQEBAIGNhbGxpbmcgU0YgZm9yIGFjY291bnRGbGRzIDo6ICIgKyBhY2NvdW50Rmxkcyk7CiAgICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIlBTX1BhdGllbnRGaXJzdE5hbWVfX2MiLCBhY2NvdW50Rmxkcyk7CiAgICAgIHBhdGllbnRMYXN0TmFtZSA9IFgoZG9jLCAiUFNfUGF0aWVudExhc3ROYW1lX19jIiwgYWNjb3VudEZsZHMpOwogICAgfQoKICAgIGFsZXJ0KCJAQEAgcGF0aWVudElkIDo6ICIgKyBwYXRpZW50SWQpOwogICAgYWxlcnQoIkBAQCBwYXRpZW50Rmlyc3ROYW1lIDo6ICIgKyBwYXRpZW50Rmlyc3ROYW1lKTsKICAgIGFsZXJ0KCJAQEAgcGF0aWVudExhc3ROYW1lIDo6ICIgKyBwYXRpZW50TGFzdE5hbWUpOwogICAgCiAgICAvKiBjcmVhdGUgYXR0YWNoTGFiZWwgWChkb2MsICJYX1pQQVBFUl9fRmlyc3ROYW1lX19jIikgKyBYKGRvYywgIlhfWlBBUEVSX19MYXN0TmFtZV9fYyIpICsgIiAtICIgKyBYKGRvYywgIlhfWlBBUEVSX19mYXhUeXBlX19jIikgKyAiIC0gIiArIE1NZGRZWVlZOyAqLyAgICAKICAgIGF0dGFjaExhYmVsID0gcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICIgLSAiICsgZG9jVGl0bGUgKyAiIC0gU2VudCAiICsgekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgYWxlcnQoIkBAQEAgYXR0YWNoTGFiZWw6ICIgKyBhdHRhY2hMYWJlbCk7CiAgICAKICAgIC8vYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGF0dGFjaExhYmVsKTsKICAgIAogICAgLy8gRm9yIEFiYnZpZSdzIEJ1bGsgcHJpbnRpbmcgY2FwYWJpbGl0eQogICAgLyogTVNIMTgwMjI4ICM0NjI5NCAqLwogICAgdmFyIGJ1bGtQcmludCA9IChYKGRvYywgIm1haWxvbmRlbWFuZCIsICIiKS5sZW5ndGggPiAwKTsKICAgIGlmIChidWxrUHJpbnQpIHsKICAgICAgICAvKiBNU0gxODAyMDcgYXNzdW1pbmcgaXQgZ290IHNlbnQgdG8gcHJpbnQgcHJvY2VzcyAqLwogICAgICAgIGFyck9mUGFpcnMgPSBbXTsKICAgICAgICBkb2NUeXBlID0gIkJQIjsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIlBTX0J1bGtwcmludF9EYXRlX3RpbWVfX2MiLCBmb3JtYXROb3cpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiUFNfQnVsa3ByaW50X3N0YXR1c19fYyIsIFgoZG9jLCAiWF9mYXhTdGF0dXMiKSk7CiAgICAgICAgdXBkYXRlU0ZSZWNvcmQoZG9jLCAiQ2FzZSIsIFgoZG9jLCAic2ZJZCIpLCBhcnJPZlBhaXJzKTsKICAgIH0KfQoKYXJyT2ZQYWlycyA9IFtdOwphcnJPZlBhaXJzLnB1c2goIlhfYnV0dG9uQWN0aW9uMCIsIFgoZG9jLCAiWF9idXR0b25BY3Rpb24iKSk7CmFyck9mUGFpcnMucHVzaCgiWF9idXR0b25BY3Rpb24iLCAiIik7CgphcnJPZlBhaXJzLnB1c2goImRiLWxhYmVsIiwgYXR0YWNoTGFiZWwpOwphcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgc2ZJZCArICItIiArIGRvYy5kb2NUeXBlKTsgLyogRVJTMTcwNjI1IHRvZG8gZ2V0IGRvY1R5cGUgZnJvbSB0ZW1wbGF0ZSB1c2VkICovCmFyck9mUGFpcnMucHVzaCgiWF9hdHRhY2hlZFRvIiwgYXR0YWNoZWRUbyk7IC8qIEVSUzE3MDYyOCBkb2NTZXQgbmVlZHMgdGhpcyAqLwppZiAoZG9jVHlwZSAhPT0gIiIpIGFyck9mUGFpcnMucHVzaCgiWF9kb2NUeXBlIixkb2NUeXBlKTsgLy9FUlMxODAzMjggIzQ2MzczCgovL1RQTTE4MDgwMyBGb3Igc2V0dGluZyBjaGVja2JveGVzIG9uIHRoZSB6ZG9jc2V0Ci8vRVJTMTcwOTA5ICM0MDU5MiBmb3IgekRvY1NldCBzdGF0dXNlcwp2YXIgYmE9ZG9jLlgoIlhfZmF4U3RhdHVzIikrIiI7CmlmICgiRGVsaXZlcmVkIiAhPT0gYmEpIHsgYmE9IkZhaWxlZCI7IH0gLy9KUEIxODA4MDMgIzUwMTc4CnZhciBub3cwID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLGZhbHNlLHRydWUpOwphcnJPZlBhaXJzLnB1c2goIlhfcmV2aWV3ZWRTdGF0dXMiLGJhKTsKYXJyT2ZQYWlycy5wdXNoKCJYX3Jldmlld3MiLFgoZG9jLCJYX3Jldmlld3MiKStiYSsiIGJ5ICIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyIgYXQgIitub3cwKyI8YnIvPiIpOyAvL0VSUzE3MDkwOSAjNDA1OTIKYXJyT2ZQYWlycy5wdXNoKCJYX2J1dHRvbkFjdGlvbiIsIiIpOwoKYWxlcnQoIkBAQCBtYXN0ZXIgSUQgaXMgPSAiICsgZG9jLmtiRGF0YS5ncm91cElEKTsKYWxlcnQoIkBAQCBQQVAgZ3JvdXAgSUQgaXMgPSAiICsgekRhdGEucGFwR3JvdXBJZCk7CmFsZXJ0KCJAQEAgUkgtSW1tdW5vbG9neSBncm91cCBJRCBpcyA9ICIgKyB6RGF0YS5pbW11bkdyb3VwSWQpOwphbGVydCgiQEBAIENvbXBsZXRlIEludGFrZSBncm91cCBJRCBpcyA9ICIgKyB6RGF0YS5jb21wSW50R3JvdXBJZCk7CgppZiAoc2ZUeXBlID09ICJDYXNlIikgewoKICAgIHZhciBjYXNlRmxkcyA9IGdldFNGRmllbGRzKGRvYywgIkNhc2UiLCAiUmVjb3JkVHlwZUlkLENsYXNzaWZpY2F0aW9uX19jLE93bmVySWQiLCBudWxsLCBzZklkKTsgLy9BTjIwMTgwNzE4IGdldCB0aGUgZmllbGRzIGZyb20gdGhlIENhc2UgdGhhdCB3ZSB3aWxsIG5lZWQKCiAgICB2YXIgcmVjVHlwZUlkID0gWChkb2MsICJSZWNvcmRUeXBlSWQiLCBjYXNlRmxkcyk7CiAgICB2YXIgcmVjVHlwZU5hbWUgPSBnZXRTRkZpZWxkKGRvYywgIlJlY29yZFR5cGUiLCAiTmFtZSIsIG51bGwsIHJlY1R5cGVJZCk7IC8vQU4yMDE4MDcxOCBnZXQgdGhlIG5hbWUgb2YgdGhlIGN1cnJlbnQgQ2FzZSByZWNvcmQgdHlwZQogICAgT3duZXJJZCA9IFgoZG9jLCAiT3duZXJJZCIsIGNhc2VGbGRzKTsKICAgIGFsZXJ0KCJAQEAgcmVjVHlwZU5hbWUgaXMgPSAiICsgcmVjVHlwZU5hbWUpOwoKICAgIHZhciBjYXNlQ2xhc3NpZmljYXRpb24gPSAgWChkb2MsICJDbGFzc2lmaWNhdGlvbl9fYyIsIGNhc2VGbGRzKTsgCiAgICBhbGVydCgiQEBAIGNhc2VDbGFzc2lmaWNhdGlvbiBpcyA9ICIgKyBjYXNlQ2xhc3NpZmljYXRpb24pOwogICAgCiAgICAvL3NldCB0aGUgR3JvdXAgc2VjdXJpdHkgdG8gUEFQLCBSSC1JbW11bm9sb2d5LCBvciBDb21wbGV0ZSBJbnRha2UuIFdlIGxvb2sgYXQgYm90aCB0aGUgUmVjb3JkIFR5cGUgYW5kIHRoZSBDbGFzc2lmaWNhdGlvbiB0byBkZXRlcm1pbmUgdGhpcy4KICAgIGlmIChyZWNUeXBlTmFtZSA9PT0gIk5ldy9SZW5ld2FsL1lFQy9Pbi1nb2luZyBQcmVzY3JpcHRpb24iIHx8IGNhc2VDbGFzc2lmaWNhdGlvbiA9PT0gIlBBUCIpIHsgLy9BTjIwMTgwNjA0IHNldCBQQVAgc2VjdXJpdHkKICAgICAgICBhbGVydCgiQEBAIHNldHRpbmcgZG9jdW1lbnQgc2VjdXJpdHkgZm9yIFBBUCBncm91cCIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItdXNlcnMiLCAiOiIgKyB6RGF0YS5wYXBHcm91cElkICsgIjoiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLXJlYWRlcnMiLCAiOiIgKyB6RGF0YS5wYXBHcm91cElkICsgIjoiKTsKICAgIH0KICAgIGVsc2UgaWYgKHJlY1R5cGVOYW1lID09PSAiQmVuZWZpdCBWZXJpZmljYXRpb24iIHx8IGNhc2VDbGFzc2lmaWNhdGlvbiA9PT0gIlJILUltbXVub2xvZ3kiKSB7Ly9BTjIwMTgwNjA0IHNldCBSSC1JbW11bm9sb2d5IGdyb3VwIHNlY3VyaXR5CiAgICAgICAgYWxlcnQoIkBAQCBzZXR0aW5nIGRvY3VtZW50IHNlY3VyaXR5IGZvciBSSC1JbW11bm9sb2d5Iik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi11c2VycyIsICI6IiArIHpEYXRhLmltbXVuR3JvdXBJZCArICI6Iik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEuaW1tdW5Hcm91cElkICsgIjoiKTsKICAgIH0KICAgIGVsc2UgaWYgKHJlY1R5cGVOYW1lID09PSAiQ29tcGxldGUgSW50YWtlIiB8fCBjYXNlQ2xhc3NpZmljYXRpb24gPT09ICJDb21wbGV0ZSBJbW11bm9sb2d5Iikgey8vQU4yMDE5MDMwMSBzZXQgQ29tcGxldGUgSW50YWtlIGdyb3VwIHNlY3VyaXR5CiAgICAgICAgYWxlcnQoIkBAQCBzZXR0aW5nIGRvY3VtZW50IHNlY3VyaXR5IGZvciBDb21wbGV0ZSBJbnRha2UiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEuY29tcEludEdyb3VwSWQgKyAiOiIpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItcmVhZGVycyIsICI6IiArIHpEYXRhLmNvbXBJbnRHcm91cElkICsgIjoiKTsKICAgIH0KfQplbHNlIGlmIChzZlR5cGUgPT0gIkNvbnRhY3QiKSB7CiAgICBhbGVydCgiQEBAIHByb2Nlc3Npbmcgb3V0Ym91bmQgZm9yIGEgUEFQIGNvbnRhY3QgcmVjb3JkIik7CiAgICB2YXIgY29udGFjdEZsZHMgPSBnZXRTRkZpZWxkcyhkb2MsICJDb250YWN0IiwgIlJlY29yZFR5cGVJZCIsIG51bGwsIHNmSWQpOyAvL1RQTTE4MDgwNiBnZXQgdGhlIGZpZWxkcyBmcm9tIHRoZSBDb250YWN0IHRoYXQgd2Ugd2lsbCBuZWVkCiAgICB2YXIgcmVjVHlwZUlkID0gWChkb2MsICJSZWNvcmRUeXBlSWQiLCBjb250YWN0Rmxkcyk7CiAgICB2YXIgcmVjVHlwZU5hbWUgPSBnZXRTRkZpZWxkKGRvYywgIlJlY29yZFR5cGUiLCAiTmFtZSIsIG51bGwsIHJlY1R5cGVJZCk7IC8vVFBNMTgwODA2IGdldCB0aGUgbmFtZSBvZiB0aGUgY3VycmVudCBDb250YWN0IHJlY29yZCB0eXBlCiAgICBhbGVydCgiQEBAIHJlY1R5cGVOYW1lIGlzID0gIiArIHJlY1R5cGVOYW1lKTsKICAgIAogICAgLy9zZXQgdGhlIEdyb3VwIHNlY3VyaXR5IGZvciBQQVAgKFJIIGRvZXMgbm90IHNlbmQgb3V0Ym91bmQgZnJvbSBhIGNvbnRhY3QgcmVjb3JkKQogICAgaWYgKHJlY1R5cGVOYW1lID09PSAiSW5kaXZpZHVhbCIpIHsgLy9UUE0xODA4MDYgc2V0IGdyb3VwIHNlY3VyaXR5IGFuZCBhdHRhY2hsYWJlbCBmb3IgUEFQLCBub3QgZm9yIFJICiAgICAgICAgYWxlcnQoIkBAQCBzZXR0aW5nIGRvY3VtZW50IHNlY3VyaXR5IGZvciBQQVAgZ3JvdXAiKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goImRiLXVzZXJzIiwgIjoiICsgekRhdGEucGFwR3JvdXBJZCArICI6Iik7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1yZWFkZXJzIiwgIjoiICsgekRhdGEucGFwR3JvdXBJZCArICI6Iik7CiAgICAgICAgCiAgICAgICAgdmFyIGNvbnRhY3RGbGRzID0gZ2V0U0ZGaWVsZHMoZG9jLCAiQ29udGFjdCIsICJGaXJzdE5hbWUsTGFzdE5hbWUiLCBudWxsLCBzZklkKTsgCiAgICAgICAgYWxlcnQoIkBAQCBjYWxsaW5nIFNGIGZvciBjb250YWN0RmxkcyA6OiAiICsgY29udGFjdEZsZHMpOwogICAgICAgIHBhdGllbnRGaXJzdE5hbWUgPSBYKGRvYywgIkZpcnN0TmFtZSIsIGNvbnRhY3RGbGRzKTsKICAgICAgICBwYXRpZW50TGFzdE5hbWUgPSBYKGRvYywgIkxhc3ROYW1lIiwgY29udGFjdEZsZHMpOwogICAgICAgIAogICAgICAgIGF0dGFjaExhYmVsID0gcGF0aWVudEZpcnN0TmFtZSArICIgIiArIHBhdGllbnRMYXN0TmFtZSArICIgLSAiICsgZG9jVGl0bGUgKyAiIC0gU2VudCAiICsgekRhdGEuZm9ybWF0VG9kYXlNTWRkWVlZWSgpOwogICAgICAgIGFsZXJ0KCJAQEBAIGF0dGFjaExhYmVsOiAiICsgYXR0YWNoTGFiZWwpOwogICAgICAgIGFyck9mUGFpcnMucHVzaCgiZGItbGFiZWwiLCBhdHRhY2hMYWJlbCk7CiAgICB9Cn0KCi8qIE1TSDE4MDIyOCAjNDYyOTQgKi8KaWYgKGJ1bGtQcmludCkgewogICAgYXJyT2ZQYWlycy5wdXNoKCJYX2RvY1R5cGUiLCBkb2NUeXBlKTsKfQogICAgCnVwZGF0ZURCKGRvYywgYXJyT2ZQYWlycyk7CnZhciBmYXhTdGF0dXM9ZG9jLlgoIlhfZmF4U3RhdHVzIikrIiI7CnZhciBmYXhTdGF0dXNEZXRhaWwgPSBYKGRvYywgIlhfZmF4U3RhdHVzRGV0YWlsIik7CnZhciBzdWNjZXNzZnVsWE1pc3Npb24gPSBmYWxzZTsKaWYoZmF4U3RhdHVzPT09IkRlbGl2ZXJlZCIpewogICAgc3VjY2Vzc2Z1bFhNaXNzaW9uID0gdHJ1ZTsKfQoKLy9DUk4xOTA0MDQgSWYgd2UgZ2V0IGhlcmUsIHRoZSBmYXggc3VibWlzc2lvbiBmYWlsZWQuIEZpbmQgdGhlIENhc2UgdGhhdCBzZW50IHRoaXMgZmF4IGFuZCBjcmVhdGUgYW4gb3BlbiAiRmFpbGVkIiB0YXNrIGZvciBpdAp2YXIgYXR0YWNoZWRUbyA9IFgoZG9jLCAiWF9hdHRhY2hlZFRvIik7CmlmICghYXR0YWNoZWRUbykgewogICAgYWxlcnQoIkVSUk9SOiBXZSBjb3VsZG4ndCBjcmVhdGUgdGhlIFRhc2sgQWN0aXZpdHkgYmVjYXVzZSB3ZSBkb24ndCBoYXZlIGFueSBTYWxlc2ZvcmNlIHJlY29yZCB0aGF0IHdlIGFyZSBhdHRhY2hlZCB0by4iKTsKICAgIHJldHVybjsKfQoKYXR0YWNoZWRUbyA9IGF0dGFjaGVkVG8uc3Vic3RyaW5nKGF0dGFjaGVkVG8ubGFzdEluZGV4T2YoJy8nKSArIDEpOyAgICAgLy8gc3RyaXAgb2ZmIGh0dHBzOi8vLi4uCnZhciBwYXJ0cyA9IGF0dGFjaGVkVG8uc3BsaXQoIiwiKTsKYXR0YWNoZWRUbyA9IHBhcnRzWzBdLnRyaW0oKTsKYWxlcnQoIkBAQCBDcmVhdGluZyBvcGVuIGFjdGl2aXR5IGZvciByZWNvcmQgd2l0aCBpZDogIiArIGF0dGFjaGVkVG8pOwoKdmFyIGFyck9mUGFpcnMgPSBbXTsKCnZhciBob3N0ID0gZG9jLmtiRGF0YS5IT1NUOwppZiAoaG9zdC5pbmRleE9mKCc6Ly8nKSA+IDApICAgIHsgaG9zdCA9IGhvc3Quc3Vic3RyaW5nKGhvc3QuaW5kZXhPZignOi8vJykrMyk7IH0KaWYgKGhvc3QuaW5kZXhPZignOicpID4gMCkgICAgICB7IGhvc3QgPSBob3N0LnN1YnN0cmluZygwLCBob3N0LmluZGV4T2YoJzonKSk7ICB9CmVsc2UgaWYgKGhvc3QuaW5kZXhPZignLycpID4gMCkgeyBob3N0ID0gaG9zdC5zdWJzdHJpbmcoMCwgaG9zdC5pbmRleE9mKCcvJykpOyAgfQp2YXIgdmlld0xpbmsgPSAiaHR0cHM6Ly8iICsgaG9zdCArICIva2IvanNwL1NGX2ZpbmQuanNwP3NraW49U0ZiYXJlJmRiSUQ9IiArIGRvYy5kYklEICsgIiZTRm9yZz0iICsgZG9jLnNmT3JnICsgIiZTRmlkPSIgKyBzZklkOwoKLy8gQWRkIGFuIEFjdGl2aXR5IHRvIHRoZSBleGlzdGluZyBTYWxlc2ZvcmNlIHJlY29yZC4KLy9QVjE5MDQwNCB1cGRhdGVkIHRvIG92ZXJyaWRlIGFjdGl2aXR5IGhpc3Rvcnkgc3RhdHVzCnZhciBmb3JtYXROb3cgPSBnZXRTRlByZWZlcnJlZEN1ckRhdGVBbmRUaW1lKGRvYyk7CmFyck9mUGFpcnMucHVzaCgiV2hhdElkIiwgYXR0YWNoZWRUbyk7CmlmICghZmF4U3RhdHVzRGV0YWlsKSB7IGZheFN0YXR1c0RldGFpbCA9IHN1Y2Nlc3NmdWxYTWlzc2lvbiA/ICJGYXggc3VjY2Vzc2Z1bGx5IGRlbGl2ZXJlZCIgOiAiVW5rbm93biBlcnJvciI7IH0KZmF4U3RhdHVzRGV0YWlsID0gKHN1Y2Nlc3NmdWxYTWlzc2lvbiA/ICJEZWxpdmVyZWQiIDogIkZhaWxlZCIpICsgIjogIiArIGRvY1RpdGxlICsgIiAiICsgZmF4U3RhdHVzRGV0YWlsICsgIiB0byAiICsgZGVsaXZlcmVkVG87CgphbGVydCgiQEBAIGRlbGl2ZXJlZFRvID0gIiArIGRlbGl2ZXJlZFRvKTsKCmFyck9mUGFpcnMucHVzaCgiU3ViamVjdCIsIGZheFN0YXR1c0RldGFpbCk7CmFyck9mUGFpcnMucHVzaCgiRGVzY3JpcHRpb24iLCBmYXhTdGF0dXNEZXRhaWwgKyAiLiBWaWV3IHRoZSBkb2N1bWVudCBhdCAiICsgdmlld0xpbmspOwphcnJPZlBhaXJzLnB1c2goIkFjdGl2aXR5RGF0ZSIsIGZvcm1hdE5vdyk7CgovL0FOMjAxODA3MTkgIzYwNzU0IHNhdmluZyB0aGVzZSBhZGRpdGlvbmFsIGZpZWxkcyBvbiB0aGUgdGFzayBwZXIgVmVua2F0CmFyck9mUGFpcnMucHVzaCgiRE5JU19fYyIsIGRlbGl2ZXJlZFRvKTsKYXJyT2ZQYWlycy5wdXNoKCJUYXNrX1N1YmplY3RfX2MiLCBkb2NUaXRsZSk7CgovL1BWMTkwNDMwIHNldCBPd25lcklkICBvbmx5IGlmIGl0IGlzIGEgdXNlcgppZihPd25lcklkLnN0YXJ0c1dpdGgoIjAwNSIpKXsKYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgT3duZXJJZCk7Cn0KZWxzZXsKIHZhciByZW1vdGVVc2VySWQ9IGdldFNGRmllbGQoZG9jLCAiVXNlciIsIklkIiwidXNlcm5hbWU9JyIrZG9jLmtiRGF0YS5yZW1vdGVVc2VyKyInIik7CiBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCByZW1vdGVVc2VySWQpOyAgIAp9CgovL1BWMTkwNDExIEZpbmQgdGhlIENhc2UgdGhhdCBzZW50IHRoaXMgZmF4IGFuZCBjcmVhdGUgYW4gb3BlbiAiRmFpbGVkIiB0YXNrIGZvciBpdAphZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgJ3sic3RhdHVzIjoic3VjY2VzcyIsIm1lc3NhZ2UiOiJFWElUIExPR0ZBWCJ9Jyk7CmFyck9mUGFpcnMucHVzaCgiU3RhdHVzIixzdWNjZXNzZnVsWE1pc3Npb24gPyAiQ29tcGxldGVkIiA6ICJGYWlsZWQiKTsKYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIkRvY3VtZW50Iik7CmFsZXJ0KCJAQEBAQEAgUFYxOTA0MjU6ICIgKyBPd25lcklkKTsKdmFyIHNmSWQgPSBjcmVhdGVTRlJlY29yZChkb2MsICJUYXNrIiwgZmF4U3RhdHVzRGV0YWlsLCBhcnJPZlBhaXJzKTsKYWxlcnQoIkBAQEBAQCBBZGRpbmcgQWN0aXZpdHkgdG86ICIgKyBzZklkKTsKLyogRU5EIERFTElWRVJZX0NPTVBMRVRFIHpBY3Rpb24gKi8="},"ordinal":5}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//TPM180803 starting DELIVERY_COMPLETE rule
var formatNow = getCurDateAndTime(doc);
var coverID = X(doc, "coverID");
var docTitle = X(doc, "docTitle");

//var deliveredTo = X(doc, "deliveredTo");
var deliveredTo = X(doc, "ContactFax", doc.wddata); //AN20190716 #60754 doc.deliveredTo is coming over as null - was suggested to use ContactFax

alert("coverID: " + coverID);
alert("docTitle: " + docTitle);

/* MSH180207 define once here */
var arrOfPairs = [];
var sfCaseId = "";
var sfContactId = "";
var sfType = X(doc, "sfType");
var patientFirstName = "";
var patientLastName = "";
var patientId = "";
var OwnerId = "";

//TPM180803 Below IF statement is only for PAOS integration.  Other DELIVERY_COMPLETE functionality is below that.
//AN180709 This IF statement contains logic for PAOS functionality. PAOS has 3 use cases, each triggered by a different outbound message.  See Tom for details.

var useCase = X(doc, "zPAOSUseCase__c"); //todo: clean this up - we no longer have PAOS use cases
if (useCase && useCase.length > 0) {
    
    alert("useCase: " + useCase);

    var sfActivityOnId = X(doc, "X_activityOnID"); 
    alert("sfActivityOnId: " + X(doc, "X_activityOnID")); //depending on the Use Case this may be an PS_Application__c record, a Contact, or an Account
    
    var masterID = (doc.kbData.groupID).substring(1,(doc.kbData.groupID).length()); //get the zPaper Master ID
    alert("@@@ masterID: " + masterID);

    sfCaseId = X(doc, "PS_PortalCase__c"); //AN20190115 as of Jan 2019 we no longer need to create a case - clean this XML variable and code up later
    sfContactId = X(doc, "PS_Contact__c");
    alert("found sfCaseId: " + sfCaseId);
    alert("found sfContactId: " + sfContactId);

//AN20190115 this is where we attach a doc to the case
    alert("calling attach with sfCaseId = " + sfCaseId); /* MSH171020 debugging */
    var attResult = attach(doc, "New Stack received on " + getCurDateAndTime(doc), sfCaseId, false);
    alert("attResult =  " + attResult); /* MSH171020 debugging */
    if (attResult.indexOf("ERROR") >= 0) {
        addPostExecutionScript(doc, "<ERROR>");
    } else {
        alert("Successful attach complete. Case Id: " + sfCaseId);
        addPostExecutionScript(doc, "<SUCCESS>");
    }
    
//AN20190115 set the label of the file on the PS_Application__c object
    arrOfPairs = [];
    arrOfPairs.push("db-label", "PAOS Supporting Document");
    updateDB(doc, arrOfPairs);      
    
//AN20190115 we should still create a stack       
    var stackId = zData.createStack(doc, sfContactId, sfCaseId, "Complete");
    alert("stackID: " + stackId);
    var contactFlds = getSFFields(doc, "Contact", "Name", null, sfActivityOnId);
    contactFlds += "";
    var patientname = X(doc, "Name", contactFlds);
    
    arrOfPairs = [];
    var attachPath = sfCaseId + "," + stackId;
    arrOfPairs.push("X_attachedTo", attachPath);
    arrOfPairs.push("X_ZPAPER__Case__c", sfCaseId);
    arrOfPairs.push("db-label", patientname + " PAOS Supporting Document");
    updateDB(doc, arrOfPairs);

    moveDocument(doc, masterID + "Out", masterID + "In");

    /* MSH171020 */
    zData.clearTriggerCondition(doc,"X_buttonAction");
    return;
}
//TPM180803  END of PAOS integration code
/*  DELIVERY_COMPLETE rule for anything NOT PAOS*/
var attachLabel = "Sent on " + formatNow; /* MSH170905 */
var sfId = X(doc, "X_activityOnID");
//CRN191008 The sfServer field in wddata appears to be blank during bulkPrint, so we get this in attachedTo: /50023000002MyBbAAK which screws up tableXMLSearch.jsp.
var attachedTo = X(doc, "sfServer");
if (!attachedTo) {
    attachedTo = doc.kbData.sfServer;
    if (!attachedTo) { attachedTo = "https://www.salesforce.com"; }     // I don't know of anything in our code that really gives a rip about the host on this attachedTo field
    if (attachedTo.indexOf("https://") < 0) { attachedTo = "https://" + attachedTo; } // we do want the https:// starting part
}
attachedTo += "/" + sfId;
alert("@@@@@@@@ attachedTo value = " + attachedTo);

var docType=X(doc, "X_docTypeSent"); //ERS180328 #46373
alert("@@@ first docType = " + docType);
if (docType==="") { docType = X(doc,"X_docType"); }  //ERS180328 #46373
alert("@@@ second docType = " + docType);
if (docType==="") { docType = doc.docType; }
alert("@@@ third docType = " + docType);
if (docType==="") { docType = X(doc,"ContactName"); } //ERS180328 #46373
alert("@@@ forth docType = " + docType);
if (docType==="") { docType = "FAX"; }
alert("@@@ fifth docType = " + docType);
doc.docType=docType; //ERS180328 #46373

var labelDocType = docType;

alert("@@@ docType = " + docType); 
alert("@@@ X(doc, sfServer) = " + attachedTo);

if (sfType == "Case") {
    
    var caseFlds = getSFFields(doc, "Case", "RecordTypeId,ContactId,AccountId,OwnerId", null, sfId); //AN20180718 get the fields from the Case that we will need
     
    var recTypeId = X(doc, "RecordTypeId", caseFlds);
    var recTypeName = getSFField(doc, "RecordType", "Name", null, recTypeId); //AN20180718 get the name of the current Case record type
    OwnerId = X(doc, "OwnerId", caseFlds);
    alert("@@@ OwnerId" + OwnerId);
    alert("@@@ current Case Record Type Name: " + recTypeName);
    
    if (recTypeName === "New/Renewal/YEC/On-going Prescription"){ //this is a PAP case
      alert("@@@ getting PAP Case details");
      patientId =  X(doc, "ContactId", caseFlds); //get the Contact ID since PAP uses the Contact object for Patients
      var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, patientId); 
      alert("@@@ calling SF for contactFlds :: " + contactFlds);
      patientFirstName = X(doc, "FirstName", contactFlds);
      patientLastName = X(doc, "LastName", contactFlds);
    }

    else if (recTypeName === "Benefit Verification" || recTypeName === "Denial Support"){ //this is an RH-Immunology case
      alert("@@@ getting RH Case details");
      patientId = X(doc, "AccountId", caseFlds); //get the Account ID since RH uses the Account object for Patients
      var accountFlds = getSFFields(doc, "Account", "PS_PatientFirstName__c,PS_PatientLastName__c", null, patientId); 
      alert("@@@ calling SF for accountFlds :: " + accountFlds);
      patientFirstName = X(doc, "PS_PatientFirstName__c", accountFlds);
      patientLastName = X(doc, "PS_PatientLastName__c", accountFlds);
    }

    alert("@@@ patientId :: " + patientId);
    alert("@@@ patientFirstName :: " + patientFirstName);
    alert("@@@ patientLastName :: " + patientLastName);
    
    /* create attachLabel X(doc, "X_ZPAPER__FirstName__c") + X(doc, "X_ZPAPER__LastName__c") + " - " + X(doc, "X_ZPAPER__faxType__c") + " - " + MMddYYYY; */    
    attachLabel = patientFirstName + " " + patientLastName + " - " + docTitle + " - Sent " + zData.formatTodayMMddYYYY();
    alert("@@@@ attachLabel: " + attachLabel);
    
    //arrOfPairs = [];
    arrOfPairs.push("db-label", attachLabel);
    
    // For Abbvie's Bulk printing capability
    /* MSH180228 #46294 */
    var bulkPrint = (X(doc, "mailondemand", "").length > 0);
    if (bulkPrint) {
        /* MSH180207 assuming it got sent to print process */
        arrOfPairs = [];
        docType = "BP";
        arrOfPairs.push("PS_Bulkprint_Date_time__c", formatNow);
        arrOfPairs.push("PS_Bulkprint_status__c", X(doc, "X_faxStatus"));
        updateSFRecord(doc, "Case", X(doc, "sfId"), arrOfPairs);
    }
}

arrOfPairs = [];
arrOfPairs.push("X_buttonAction0", X(doc, "X_buttonAction"));
arrOfPairs.push("X_buttonAction", "");

arrOfPairs.push("db-label", attachLabel);
arrOfPairs.push("db-BATES", sfId + "-" + doc.docType); /* ERS170625 todo get docType from template used */
arrOfPairs.push("X_attachedTo", attachedTo); /* ERS170628 docSet needs this */
if (docType !== "") arrOfPairs.push("X_docType",docType); //ERS180328 #46373

//TPM180803 For setting checkboxes on the zdocset
//ERS170909 #40592 for zDocSet statuses
var ba=doc.X("X_faxStatus")+"";
if ("Delivered" !== ba) { ba="Failed"; } //JPB180803 #50178
var now0 = getCurDateAndTime(doc,false,true);
arrOfPairs.push("X_reviewedStatus",ba);
arrOfPairs.push("X_reviews",X(doc,"X_reviews")+ba+" by "+doc.kbData.remoteUser+" at "+now0+"<br/>"); //ERS170909 #40592
arrOfPairs.push("X_buttonAction","");

alert("@@@ master ID is = " + doc.kbData.groupID);
alert("@@@ PAP group ID is = " + zData.papGroupId);
alert("@@@ RH-Immunology group ID is = " + zData.immunGroupId);
alert("@@@ Complete Intake group ID is = " + zData.compIntGroupId);

if (sfType == "Case") {

    var caseFlds = getSFFields(doc, "Case", "RecordTypeId,Classification__c,OwnerId", null, sfId); //AN20180718 get the fields from the Case that we will need

    var recTypeId = X(doc, "RecordTypeId", caseFlds);
    var recTypeName = getSFField(doc, "RecordType", "Name", null, recTypeId); //AN20180718 get the name of the current Case record type
    OwnerId = X(doc, "OwnerId", caseFlds);
    alert("@@@ recTypeName is = " + recTypeName);

    var caseClassification =  X(doc, "Classification__c", caseFlds); 
    alert("@@@ caseClassification is = " + caseClassification);
    
    //set the Group security to PAP, RH-Immunology, or Complete Intake. We look at both the Record Type and the Classification to determine this.
    if (recTypeName === "New/Renewal/YEC/On-going Prescription" || caseClassification === "PAP") { //AN20180604 set PAP security
        alert("@@@ setting document security for PAP group");
        arrOfPairs.push("db-users", ":" + zData.papGroupId + ":");
        arrOfPairs.push("db-readers", ":" + zData.papGroupId + ":");
    }
    else if (recTypeName === "Benefit Verification" || caseClassification === "RH-Immunology") {//AN20180604 set RH-Immunology group security
        alert("@@@ setting document security for RH-Immunology");
        arrOfPairs.push("db-users", ":" + zData.immunGroupId + ":");
        arrOfPairs.push("db-readers", ":" + zData.immunGroupId + ":");
    }
    else if (recTypeName === "Complete Intake" || caseClassification === "Complete Immunology") {//AN20190301 set Complete Intake group security
        alert("@@@ setting document security for Complete Intake");
        arrOfPairs.push("db-users", ":" + zData.compIntGroupId + ":");
        arrOfPairs.push("db-readers", ":" + zData.compIntGroupId + ":");
    }
}
else if (sfType == "Contact") {
    alert("@@@ processing outbound for a PAP contact record");
    var contactFlds = getSFFields(doc, "Contact", "RecordTypeId", null, sfId); //TPM180806 get the fields from the Contact that we will need
    var recTypeId = X(doc, "RecordTypeId", contactFlds);
    var recTypeName = getSFField(doc, "RecordType", "Name", null, recTypeId); //TPM180806 get the name of the current Contact record type
    alert("@@@ recTypeName is = " + recTypeName);
    
    //set the Group security for PAP (RH does not send outbound from a contact record)
    if (recTypeName === "Individual") { //TPM180806 set group security and attachlabel for PAP, not for RH
        alert("@@@ setting document security for PAP group");
        arrOfPairs.push("db-users", ":" + zData.papGroupId + ":");
        arrOfPairs.push("db-readers", ":" + zData.papGroupId + ":");
        
        var contactFlds = getSFFields(doc, "Contact", "FirstName,LastName", null, sfId); 
        alert("@@@ calling SF for contactFlds :: " + contactFlds);
        patientFirstName = X(doc, "FirstName", contactFlds);
        patientLastName = X(doc, "LastName", contactFlds);
        
        attachLabel = patientFirstName + " " + patientLastName + " - " + docTitle + " - Sent " + zData.formatTodayMMddYYYY();
        alert("@@@@ attachLabel: " + attachLabel);
        arrOfPairs.push("db-label", attachLabel);
    }
}

/* MSH180228 #46294 */
if (bulkPrint) {
    arrOfPairs.push("X_docType", docType);
}
    
updateDB(doc, arrOfPairs);
var faxStatus=doc.X("X_faxStatus")+"";
var faxStatusDetail = X(doc, "X_faxStatusDetail");
var successfulXMission = false;
if(faxStatus==="Delivered"){
    successfulXMission = true;
}

//CRN190404 If we get here, the fax submission failed. Find the Case that sent this fax and create an open "Failed" task for it
var attachedTo = X(doc, "X_attachedTo");
if (!attachedTo) {
    alert("ERROR: We couldn't create the Task Activity because we don't have any Salesforce record that we are attached to.");
    return;
}

attachedTo = attachedTo.substring(attachedTo.lastIndexOf('/') + 1);     // strip off https://...
var parts = attachedTo.split(",");
attachedTo = parts[0].trim();
alert("@@@ Creating open activity for record with id: " + attachedTo);

var arrOfPairs = [];

var host = doc.kbData.HOST;
if (host.indexOf('://') > 0)    { host = host.substring(host.indexOf('://')+3); }
if (host.indexOf(':') > 0)      { host = host.substring(0, host.indexOf(':'));  }
else if (host.indexOf('/') > 0) { host = host.substring(0, host.indexOf('/'));  }
var viewLink = "https://" + host + "/kb/jsp/SF_find.jsp?skin=SFbare&dbID=" + doc.dbID + "&SForg=" + doc.sfOrg + "&SFid=" + sfId;

// Add an Activity to the existing Salesforce record.
//PV190404 updated to override activity history status
var formatNow = getSFPreferredCurDateAndTime(doc);
arrOfPairs.push("WhatId", attachedTo);
if (!faxStatusDetail) { faxStatusDetail = successfulXMission ? "Fax successfully delivered" : "Unknown error"; }
faxStatusDetail = (successfulXMission ? "Delivered" : "Failed") + ": " + docTitle + " " + faxStatusDetail + " to " + deliveredTo;

alert("@@@ deliveredTo = " + deliveredTo);

arrOfPairs.push("Subject", faxStatusDetail);
arrOfPairs.push("Description", faxStatusDetail + ". View the document at " + viewLink);
arrOfPairs.push("ActivityDate", formatNow);

//AN20180719 #60754 saving these additional fields on the task per Venkat
arrOfPairs.push("DNIS__c", deliveredTo);
arrOfPairs.push("Task_Subject__c", docTitle);

//PV190430 set OwnerId  only if it is a user
if(OwnerId.startsWith("005")){
arrOfPairs.push("OwnerId", OwnerId);
}
else{
 var remoteUserId= getSFField(doc, "User","Id","username='"+doc.kbData.remoteUser+"'");
 arrOfPairs.push("OwnerId", remoteUserId);   
}

//PV190411 Find the Case that sent this fax and create an open "Failed" task for it
addPostExecutionScript(doc, '{"status":"success","message":"EXIT LOGFAX"}');
arrOfPairs.push("Status",successfulXMission ? "Completed" : "Failed");
arrOfPairs.push("Type", "Document");
alert("@@@@@@ PV190425: " + OwnerId);
var sfId = createSFRecord(doc, "Task", faxStatusDetail, arrOfPairs);
alert("@@@@@@ Adding Activity to: " + sfId);
/* END DELIVERY_COMPLETE zAction */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
