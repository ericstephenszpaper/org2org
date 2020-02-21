<!--
// Name: zStack Library
// Committer: judson.bruno@zpaper.com
// Update: JPB200212 updated rule for Sales Demo Org; JPB200212 added zPriorAuth; JPB200212 added zPriorAuth; JPB200212 added zPriorAuth
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-02-12 21:31:32","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9KUEIyMDAyMTIgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL2dsb2JhbCB2YXJpYWJsZXMKLy90aGlzIGlzIG91ciBsaXN0IG9mIHN1cHBvcnRlZCBwcm9ncmFtcwovLyBBTEwgSEFSRC1DT0RFRCBWQUxVRVMgU0hPVUxEIEJFIEZPVU5EIEhFUkUKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXAgPSB7fTsKekRhdGEuUFJPR1JBTV9aQ0hBUlRBID0gJ3pDaGFydGEnOyAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg5NDgxMDI1J10gPSB6RGF0YS5QUk9HUkFNX1pDSEFSVEE7IAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnekNoYXJ0YTEwMjUnXSA9IHpEYXRhLlBST0dSQU1fWkNIQVJUQTsgCnpEYXRhLlBST0dSQU1fWlBBUFlSVVMgPSAnelBhcHlydXMnOyAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg5NDgxMDIxJ10gPSB6RGF0YS5QUk9HUkFNX1pQQVBZUlVTOyAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJ3pQYXB5cnVzMTAyMSddID0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUzsgCnpEYXRhLlBST0dSQU1fWkNBUlRBID0gJ3pDQVJUYSc7IAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODk0ODEwMjgnXSA9IHpEYXRhLlBST0dSQU1fWkNBUlRBOyAgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6Q0FSVGExMDI4J10gPSB6RGF0YS5QUk9HUkFNX1pDQVJUQTsgCnpEYXRhLlBST0dSQU1fQ0NPRklUID0gJ3pSZWZlcnJhbCc7IAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODk0ODk3MzYnXSA9IHpEYXRhLlBST0dSQU1fWlJFRkVSUkFMOyAgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6UmVmZXJyYWw5NzM2J10gPSB6RGF0YS5QUk9HUkFNX1pSRUZFUlJBTDsgIAp6RGF0YS5QUk9HUkFNX1pQUklPUkFVVEggPSAnelByaW9yQXV0aCc7IC8vSlBCMjAwMjEyIGFkZGVkIHpQcmlvckF1dGgKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg5NDg5OTk3J10gPSB6RGF0YS5QUk9HUkFNX1pQUklPUkFVVEg7ICAvL0pQQjIwMDIxMiBhZGRlZCB6UHJpb3JBdXRoCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6UHJpb3JBdXRoOTk5NyddID0gekRhdGEuUFJPR1JBTV9aUFJJT1JBVVRIOyAvL0pQQjIwMDIxMiBhZGRlZCB6UHJpb3JBdXRoCi8vU0hSMjAwMjAzIHRlc3RpbmcgY2xpZW50IG9yZwovL0pQQjE5MDYwNCBEZWZpbmUgbWFwCnpEYXRhLmRvY3VtZW50VHlwZU1hcCA9IHt9Owp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0VOUkwnXSA9ICJFbnJvbGxtZW50IEZvcm0iOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0ZJTiddID0gIkZpbmFuY2lhbCBJbmZvIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydJQyddID0gIkluc3VyYW5jZSBJbmZvIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydDTElOJ10gPSAiQ2xpbmljYWwgTm90ZXMiOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0RFTSddID0gIkRlbW9ncmFwaGljcyI7CnpEYXRhLmRvY3VtZW50VHlwZU1hcFsnSElQQUEnXSA9ICJISVBBQSBGb3JtIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydDT04nXSA9ICJDb25zZW50IEZvcm0iOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ05FVyddID0gIkRvY3VtZW50IFN0YWNrIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydQUlNDJ10gPSAiUHJlc2NyaXB0aW9uIjsgLy9KUEIxOTEwMDIgYWRkZWQKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydGSVQnXSA9ICJGSVQgUmVxdWlzaXRpb24iOyAvL0pQQjE5MTIxMSBhZGRlZAp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ1BBJ10gPSAiUHJpb3IgQXV0aG9yaXphdGlvbiI7IC8vSlBCMjAwMjExIGFkZGVkCgovL3pEYXRhLlBST0dSQU1fUEFMVkVPID0gJ1BhbHZlbyc7IAovL3pEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4NzI3MDkzNCddID0gekRhdGEuUFJPR1JBTV9QQUxWRU87ICAKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnUGFsdmVvJ10gPSB6RGF0YS5QUk9HUkFNX1BBTFZFTzsgCi8vekRhdGEuUFJPR1JBTV9WSU5ESUNPID0gJ1ZpbmRpY28nOyAKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODcyNzA5NzEnXSA9IHpEYXRhLlBST0dSQU1fVklORElDTzsgCi8vekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJ1ZpbmRpY28nXSA9IHpEYXRhLlBST0dSQU1fVklORElDTzsgCgp6RGF0YS5xdWV1ZUlkTWFwID17fTsKekRhdGEuUVVFVUVfWkNIQVJUQSA9ICcwMEcxVTAwMDAwME9kNU1VQVMnOwp6RGF0YS5RVUVVRV9aUEFQWVJVUyA9ICcwMEcxVTAwMDAwME9oVk9VQTAnOwp6RGF0YS5RVUVVRV9aQ0FSVEEgPSAnMDBHMVUwMDAwMDBPbHN2VUFDJzsgCnpEYXRhLlFVRVVFX1pQUklPUkFVVEggPSAnMDBHMVUwMDAwMDBvNGhFVUFRJzsgLy9KUEIyMDAyMTEgY2hhbmdlIGJhY2sgYWZ0ZXIgZGVtbyB0byBDQ09maXQKLy96RGF0YS5RVUVVRV9aUFJJT1JBVVRIID0gIjAwRzFVMDAwMDAwdFV4RVVBVSI7IC8vSlBCMjAwMjExIGFkZGVkCi8vekRhdGEuUVVFVUVfUEFMVkVPID0gJzAwR2Y0MDAwMDAxak85S0VBVSc7IAovL3pEYXRhLlFVRVVFX1ZJTkRJQ08gPSAnMDBHZjQwMDAwMDFqTzBNRUFVJzsgCgp6RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLlBST0dSQU1fWkNIQVJUQV0gPSB6RGF0YS5RVUVVRV9aQ0hBUlRBOyAKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1pQQVBZUlVTXSA9IHpEYXRhLlFVRVVFX1pQQVBZUlVTOyAKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1pDQVJUQV0gPSB6RGF0YS5RVUVVRV9aQ0FSVEE7IAovL3pEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9DQ09GSVRdID0gekRhdGEuUVVFVUVfQ0NPRklUOwp6RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLlBST0dSQU1fWlBSSU9SQVVUSF0gPSB6RGF0YS5RVUVVRV9aUFJJT1JBVVRIOyAvL0pQQjIwMDIxMSBhZGRlZAovL3pEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9QQUxWRU9dID0gekRhdGEuUVVFVUVfUEFMVkVPOyAvL0pQQjE4MDgwNiBhZGRlZCBQT0MgcXVldWUKLy96RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLlBST0dSQU1fVklORElDT10gPSB6RGF0YS5RVUVVRV9WSU5ESUNPOyAKCi8vIEVORCBPRiBIQVJELUNPREVEIFZBTFVFUwoKekRhdGEucHJvZ3JhbU5hbWUgPSAiIjsKekRhdGEuQWZmaWxpYXRlID0gIiI7Cgp6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gIiI7IAoKekRhdGEucHJvZ3JhbU5hbWUgPSAiIjsKekRhdGEuY2xhc3NpZmljYXRpb24gPSIiOyAvLyBQdjE5MDQyMwovL0NSTjE3MDMyNCBUT0RPIGRvYy5jbG9uZSgpIGRvbmUgcmlnaHQ7CnpEYXRhLmNsb25lPWZ1bmN0aW9uKGRvYykgewogICB2YXIgZG9jMD1bXTsKICAgZm9yICh2YXIgaSBpbiBkb2MpIGRvYzBbaV09ZG9jW2ldOwogICByZXR1cm4gZG9jMDsKfQoKekRhdGEuc2V0YnJhbmRwcm9ncmFtID0gZnVuY3Rpb24oZG9jKSB7CiAgICBhbGVydCgiKysrIFNUQVJUSU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgekRhdGEuQWZmaWxpYXRlID0gIlVTIjsgCiAgekRhdGEucHJvZ3JhbU5hbWUgPSAiTWFrYW5hIEhlYWx0aCI7CiAgYWxlcnQoIiMjIyMgZG9jLmRlbGl2ZXJlZFRvID0gIiArIGRvYy5kZWxpdmVyZWRUbyk7CiAgLy96RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gekRhdGEucXVldWVJZE1hcFt6RGF0YS5wcm9ncmFtTmFtZV07IAogICAgaWYoZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCIxNjc4OTQ4MTAyNSIpIHx8IGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiekNoYXJ0YTEwMjUiKSl7CgkJekRhdGEuY2xhc3NpZmljYXRpb24gPSJ6Q2hhcnRhIjsKICAgIH0gZWxzZSBpZihkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoIjE2Nzg5NDgxMDI4IikgfHwgZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCJ6Q0FSVGExMDI4IikpewoJCXpEYXRhLmNsYXNzaWZpY2F0aW9uID0iekNBUlRhIjsKICAgIH1lbHNlIGlmKGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiMTY3ODk0ODEwMjEiKSB8fCBkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoInpQYXB5cnVzMTAyMSIpKXsKCQl6RGF0YS5jbGFzc2lmaWNhdGlvbiA9InpQYXB5cnVzIjsKICAgIH1lbHNlIGlmKGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiMTY3ODk0ODk5OTciKSB8fCBkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoInpQcmlvckF1dGg5OTk3IikpewoJCXpEYXRhLmNsYXNzaWZpY2F0aW9uID0ielByaW9yQXV0aCI7CiAgIC8vIH1lbHNlIGlmKGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiMTY3ODk0ODk3MzYiKSB8fCBkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoInpQcmlvckF1dGg5NzM2IikpewoJLy8JekRhdGEuY2xhc3NpZmljYXRpb24gPSJ6UHJpb3JBdXRoIjsKICAgIH0gLy9KUEIgQ0hBTkdFIEJBQ0sgQUZURVIgREVNTyBDQ09GSVQKCWVsc2UgaWYgKGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiY29tbXVuaXR5IikpIHsJLy9KUEIxOTA1MjkgUGFyc2Ugb3V0IHRoZSBjbGFzc2lmaWNhdGlvbiBmcm9tIHRoZSBwaWNrbGlzdCB2YWx1ZSB0aGUgdXNlciBjaG9zZSB3aGVuIHVwbG9hZGluZyB0aGUgZmlsZS4KCQl2YXIgZnJvbUZpbGUgPSBkb2MuZnJvbUZpbGUgKyAiIjsKCQlhbGVydCgiQEBAIGZyb21GaWxlID0gIiArIGZyb21GaWxlKTsKCQlpZiAoZnJvbUZpbGUuaW5kZXhPZignLScpID49IDApIHsKCQkJdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoJy0nKTsKCQkJaWYgKHBhcnRzLmxlbmd0aCA+PSAzKSB7CgkJCQl2YXIgcGlja1ZhbHVlID0gcGFydHNbMl07CgkJCQlhbGVydCgiQEBAIHBpY2tWYWx1ZSA9ICIgKyBwaWNrVmFsdWUpOwoJCQkJekRhdGEuY2xhc3NpZmljYXRpb24gPSBwaWNrVmFsdWU7CgkJCX0KCQl9Cgl9CiAgICB6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gekRhdGEucXVldWVJZE1hcFt6RGF0YS5jbGFzc2lmaWNhdGlvbl07IC8vUFYxOTA0MjQgdXBkYXRlZCBmb3IgY2xhc3NpZmljYXRpb24gYXMgb3duZXIKICAgIGFsZXJ0KCIrKysgRU5ESU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgekRhdGEucHJvZ3JhbU5hbWUgPSAiICsgekRhdGEucHJvZ3JhbU5hbWUpOwogICAgYWxlcnQoIkBAQCB6RGF0YS5BZmZpbGlhdGUgPSAiICsgekRhdGEuQWZmaWxpYXRlKTsKfQoKLyogVGhpcyBmdW5jdGlvbiBuZWVkcyB0byBiZSBhZGRlZCB0byBldmVyeSBydWxlIHRvIGhlbHAgYXNzdXJlIHRoYXQgcnVsZXMgZG8gbm90IGdldCBhY2NpZGVudGFsbHkgdHJpZ2dlcmVkICovCi8qIEFkZCB0aGlzIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIHJ1bGVzIGVuZ2luZSBpdHNlbGY/ICovCnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbj1mdW5jdGlvbihkb2MsdHJpZ2dlckZpZWxkKSB7ICAKICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogIGFyck9mUGFpcnMucHVzaCh0cmlnZ2VyRmllbGQsICIiKTsKICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn0KCnpEYXRhLmluaXRpYWxpemVTdGFjaz1mdW5jdGlvbihkb2Msc3RhY2tGb2xkZXIsc3RhY2tJZCkgeyAKICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgdmFyIGZpbmFsUm9vdEZvbGRlciA9IHpEYXRhLnByb2dyYW1OYW1lKyItQXJjaGl2ZSI7IAogIHZhciB5eXl5TU1Gb2xkZXJOYW1lID0gdG9kYXkuZ2V0RnVsbFllYXIoKSArIChjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCk7CiAgdmFyIHl5eXlNTUZvbGRlciA9IGZpbmFsUm9vdEZvbGRlciArICItIiArIHl5eXlNTUZvbGRlck5hbWU7CiAgYWxlcnQoIkBAQCBzdGFja0ZvbGRlciBpcyAtICIgKyBzdGFja0ZvbGRlcik7CiAgYWxlcnQoIkBAQCBmaW5hbFJvb3RGb2xkZXIgaXMgLSAiICsgZmluYWxSb290Rm9sZGVyKTsKICBhbGVydCgiQEBAIHl5TU1Gb2xkZXIgaXMgLSAiICsgeXl5eU1NRm9sZGVyKTsKICBhbGVydCgiQEBAIGNyZWF0aW5nIG5ldyB6U3RhY2sgZGVzdGluYXRpb24gZm9sZGVyIHdpdGggbmFtZSAtICIgKyBzdGFja0ZvbGRlcik7IAogIC8qIFJlZnJlc2ggdGhlIGN1cnJlbnQgZm9sZGVyICovCiAgcmVsb2FkQnlJZChkb2MsIFgoZG9jLCJYX2N1ckZvbGRlciIpKTsKICAvKiBzYW1lIHZhbHVlIGZvciBCQVRFUyBhbmQgbGFiZWwgKi8KICAvKiBUaGUgZm9sZGVyIHN0cnVjdHVyZSB3aWxsIGxvb2sgbGlrZSB0aGlzOiAvMjAxNjA4LzNDWDNDWC8xMjM0NTY3ODktU1RBQ0sgKi8KICBjcmVhdGVGb2xkZXIoZG9jLCBmaW5hbFJvb3RGb2xkZXIsIHl5eXlNTUZvbGRlciwgeXl5eU1NRm9sZGVyTmFtZSk7CiAgY3JlYXRlRm9sZGVyKGRvYywgeXl5eU1NRm9sZGVyLCBzdGFja0ZvbGRlciwgc3RhY2tGb2xkZXIpOwogIAogIGFsZXJ0KCJAQEBAIE1vdmluZyB0aGUgelN0YWNrIGRvY3VtZW50IGludG8gdGhlIHpTdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7IAogIAogIG1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwogIGFyck9mUGFpcnMucHVzaCgiWF9pbmRleEluaXRpYWxpemVkIiwgInRydWUiKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzdGFja0lkKTsKICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgZG9jLmtiRGF0YS5ncm91cElELnN1YnN0cmluZygxKSArICItIiArIHN0YWNrSWQgKyAiLVNUQUNLIik7CiAgLyogU3RhY2sgTGFiZWxsaW5nIENoYW5nZSAqLwogIHZhciBkdFN0YW1wID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSk7CiAgLyogYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIlN0YWNrIC0gIiArIGR0U3RhbXApOyAqLwogIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfQoKekRhdGEuY291bnRQYWdlcz1mdW5jdGlvbihkb2MscGFnZVJhbmdlKSB7ICAKICB2YXIgcGFnZXMgPSBwYWdlUmFuZ2Uuc3BsaXQoIiwiKTsKICBpZiAoIXBhZ2VzKSBwYWdlcz1bcGFnZVJhbmdlXTsKICByZXR1cm4gcGFnZXMubGVuZ3RoICsgIiI7Cn0KCi8qIEVORCAqLw=="},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB200212 updated rule for Sales Demo Org
//global variables
//this is our list of supported programs
// ALL HARD-CODED VALUES SHOULD BE FOUND HERE
zData.supportedProgramsMap = {};
zData.PROGRAM_ZCHARTA = 'zCharta'; 
zData.supportedProgramsMap['16789481025'] = zData.PROGRAM_ZCHARTA; 
zData.supportedProgramsMap['zCharta1025'] = zData.PROGRAM_ZCHARTA; 
zData.PROGRAM_ZPAPYRUS = 'zPapyrus'; 
zData.supportedProgramsMap['16789481021'] = zData.PROGRAM_ZPAPYRUS; 
zData.supportedProgramsMap['zPapyrus1021'] = zData.PROGRAM_ZPAPYRUS; 
zData.PROGRAM_ZCARTA = 'zCARTa'; 
zData.supportedProgramsMap['16789481028'] = zData.PROGRAM_ZCARTA;  
zData.supportedProgramsMap['zCARTa1028'] = zData.PROGRAM_ZCARTA; 
zData.PROGRAM_CCOFIT = 'zReferral'; 
zData.supportedProgramsMap['16789489736'] = zData.PROGRAM_ZREFERRAL;  
zData.supportedProgramsMap['zReferral9736'] = zData.PROGRAM_ZREFERRAL;  
zData.PROGRAM_ZPRIORAUTH = 'zPriorAuth'; //JPB200212 added zPriorAuth
zData.supportedProgramsMap['16789489997'] = zData.PROGRAM_ZPRIORAUTH;  //JPB200212 added zPriorAuth
zData.supportedProgramsMap['zPriorAuth9997'] = zData.PROGRAM_ZPRIORAUTH; //JPB200212 added zPriorAuth
//SHR200203 testing client org
//JPB190604 Define map
zData.documentTypeMap = {};
zData.documentTypeMap['ENRL'] = "Enrollment Form";
zData.documentTypeMap['FIN'] = "Financial Info";
zData.documentTypeMap['IC'] = "Insurance Info";
zData.documentTypeMap['CLIN'] = "Clinical Notes";
zData.documentTypeMap['DEM'] = "Demographics";
zData.documentTypeMap['HIPAA'] = "HIPAA Form";
zData.documentTypeMap['CON'] = "Consent Form";
zData.documentTypeMap['NEW'] = "Document Stack";
zData.documentTypeMap['PRSC'] = "Prescription"; //JPB191002 added
zData.documentTypeMap['FIT'] = "FIT Requisition"; //JPB191211 added
zData.documentTypeMap['PA'] = "Prior Authorization"; //JPB200211 added

//zData.PROGRAM_PALVEO = 'Palveo'; 
//zData.supportedProgramsMap['16787270934'] = zData.PROGRAM_PALVEO;  
//zData.supportedProgramsMap['Palveo'] = zData.PROGRAM_PALVEO; 
//zData.PROGRAM_VINDICO = 'Vindico'; 
//zData.supportedProgramsMap['16787270971'] = zData.PROGRAM_VINDICO; 
//zData.supportedProgramsMap['Vindico'] = zData.PROGRAM_VINDICO; 

zData.queueIdMap ={};
zData.QUEUE_ZCHARTA = '00G1U000000Od5MUAS';
zData.QUEUE_ZPAPYRUS = '00G1U000000OhVOUA0';
zData.QUEUE_ZCARTA = '00G1U000000OlsvUAC'; 
zData.QUEUE_ZPRIORAUTH = '00G1U000000o4hEUAQ'; //JPB200211 change back after demo to CCOfit
//zData.QUEUE_ZPRIORAUTH = "00G1U000000tUxEUAU"; //JPB200211 added
//zData.QUEUE_PALVEO = '00Gf4000001jO9KEAU'; 
//zData.QUEUE_VINDICO = '00Gf4000001jO0MEAU'; 

zData.queueIdMap[zData.PROGRAM_ZCHARTA] = zData.QUEUE_ZCHARTA; 
zData.queueIdMap[zData.PROGRAM_ZPAPYRUS] = zData.QUEUE_ZPAPYRUS; 
zData.queueIdMap[zData.PROGRAM_ZCARTA] = zData.QUEUE_ZCARTA; 
//zData.queueIdMap[zData.PROGRAM_CCOFIT] = zData.QUEUE_CCOFIT;
zData.queueIdMap[zData.PROGRAM_ZPRIORAUTH] = zData.QUEUE_ZPRIORAUTH; //JPB200211 added
//zData.queueIdMap[zData.PROGRAM_PALVEO] = zData.QUEUE_PALVEO; //JPB180806 added POC queue
//zData.queueIdMap[zData.PROGRAM_VINDICO] = zData.QUEUE_VINDICO; 

// END OF HARD-CODED VALUES

zData.programName = "";
zData.Affiliate = "";

zData.patEnrollQueueId = ""; 

zData.programName = "";
zData.classification =""; // Pv190423
//CRN170324 TODO doc.clone() done right;
zData.clone=function(doc) {
   var doc0=[];
   for (var i in doc) doc0[i]=doc[i];
   return doc0;
}

zData.setbrandprogram = function(doc) {
    alert("+++ STARTING zData.setbrandprogram +++");
    alert("@@@ doc.deliveredTo = " + doc.deliveredTo);
  zData.Affiliate = "US"; 
  zData.programName = "Makana Health";
  alert("#### doc.deliveredTo = " + doc.deliveredTo);
  //zData.patEnrollQueueId = zData.queueIdMap[zData.programName]; 
    if(doc.deliveredTo.contains("16789481025") || doc.deliveredTo.contains("zCharta1025")){
		zData.classification ="zCharta";
    } else if(doc.deliveredTo.contains("16789481028") || doc.deliveredTo.contains("zCARTa1028")){
		zData.classification ="zCARTa";
    }else if(doc.deliveredTo.contains("16789481021") || doc.deliveredTo.contains("zPapyrus1021")){
		zData.classification ="zPapyrus";
    }else if(doc.deliveredTo.contains("16789489997") || doc.deliveredTo.contains("zPriorAuth9997")){
		zData.classification ="zPriorAuth";
   // }else if(doc.deliveredTo.contains("16789489736") || doc.deliveredTo.contains("zPriorAuth9736")){
	//	zData.classification ="zPriorAuth";
    } //JPB CHANGE BACK AFTER DEMO CCOFIT
	else if (doc.deliveredTo.contains("community")) {	//JPB190529 Parse out the classification from the picklist value the user chose when uploading the file.
		var fromFile = doc.fromFile + "";
		alert("@@@ fromFile = " + fromFile);
		if (fromFile.indexOf('-') >= 0) {
			var parts = fromFile.split('-');
			if (parts.length >= 3) {
				var pickValue = parts[2];
				alert("@@@ pickValue = " + pickValue);
				zData.classification = pickValue;
			}
		}
	}
    zData.patEnrollQueueId = zData.queueIdMap[zData.classification]; //PV190424 updated for classification as owner
    alert("+++ ENDING zData.setbrandprogram +++");
    alert("@@@ zData.programName = " + zData.programName);
    alert("@@@ zData.Affiliate = " + zData.Affiliate);
}

/* This function needs to be added to every rule to help assure that rules do not get accidentally triggered */
/* Add this functionality to the rules engine itself? */
zData.clearTriggerCondition=function(doc,triggerField) {  
  var arrOfPairs = [];
  arrOfPairs.push(triggerField, "");
  updateDB(doc,arrOfPairs);
}

zData.initializeStack=function(doc,stackFolder,stackId) { 
  var arrOfPairs = [];
  var today = new Date();
  var curMonth = today.getMonth() + 1;
  var finalRootFolder = zData.programName+"-Archive"; 
  var yyyyMMFolderName = today.getFullYear() + (curMonth > 9 ? curMonth+"" : "0"+curMonth);
  var yyyyMMFolder = finalRootFolder + "-" + yyyyMMFolderName;
  alert("@@@ stackFolder is - " + stackFolder);
  alert("@@@ finalRootFolder is - " + finalRootFolder);
  alert("@@@ yyMMFolder is - " + yyyyMMFolder);
  alert("@@@ creating new zStack destination folder with name - " + stackFolder); 
  /* Refresh the current folder */
  reloadById(doc, X(doc,"X_curFolder"));
  /* same value for BATES and label */
  /* The folder structure will look like this: /201608/3CX3CX/123456789-STACK */
  createFolder(doc, finalRootFolder, yyyyMMFolder, yyyyMMFolderName);
  createFolder(doc, yyyyMMFolder, stackFolder, stackFolder);
  
  alert("@@@@ Moving the zStack document into the zStack folder: " + stackFolder); 
  
  moveDocument(doc,"",stackFolder);
  arrOfPairs.push("X_indexInitialized", "true");
  arrOfPairs.push("X_stack", stackId);
  arrOfPairs.push("db-BATES", doc.kbData.groupID.substring(1) + "-" + stackId + "-STACK");
  /* Stack Labelling Change */
  var dtStamp = getCurDateAndTime(doc, false);
  /* arrOfPairs.push("db-label","Stack - " + dtStamp); */
  updateDB(doc,arrOfPairs);
}

zData.countPages=function(doc,pageRange) {  
  var pages = pageRange.split(",");
  if (!pages) pages=[pageRange];
  return pages.length + "";
}

/* END */
//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
