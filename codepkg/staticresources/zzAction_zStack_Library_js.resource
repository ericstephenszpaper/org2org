<!--
// Name: zStack Library
// Committer: judson.bruno@zpaper.com
// Update: JPB200305 updated rule for Sales Demo Org; JPB200305 changed to Orthopedics; JPB200305 changed to Orthopedics; JPB200305 changed to Orthopedics; JPB200305 added Cardiology; JPB200305 added Cardiology; JPB200305 added Cardiology; JPB200305 changed to Orthopedics; JPB200305 added to Cardiology; JPB200305 changed to Orthopedics; JPB200305 added Cardiology
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-03-06 02:03:33","evalContinue":"true","active":true,"button":"","name":"zStack Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotStack","operation":"not-contains"}]},"consequence":{"doit":"Ly9KUEIyMDAzMDUgdXBkYXRlZCBydWxlIGZvciBTYWxlcyBEZW1vIE9yZwovL2dsb2JhbCB2YXJpYWJsZXMgZm9yIHpMaWJyYXJ5Ci8vdGhpcyBpcyBvdXIgbGlzdCBvZiBzdXBwb3J0ZWQgcHJvZ3JhbXMKLy8gQUxMIEhBUkQtQ09ERUQgVkFMVUVTIFNIT1VMRCBCRSBGT1VORCBIRVJFCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwID0ge307CnpEYXRhLlBST0dSQU1fWkNIQVJUQSA9ICd6Q2hhcnRhJzsgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4OTQ4MTAyNSddID0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBOyAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJ3pDaGFydGExMDI1J10gPSB6RGF0YS5QUk9HUkFNX1pDSEFSVEE7IAp6RGF0YS5QUk9HUkFNX1pQQVBZUlVTID0gJ3pQYXB5cnVzJzsgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4OTQ4MTAyMSddID0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUzsgCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWyd6UGFweXJ1czEwMjEnXSA9IHpEYXRhLlBST0dSQU1fWlBBUFlSVVM7IAp6RGF0YS5QUk9HUkFNX1pDQVJUQSA9ICd6Q0FSVGEnOyAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg5NDgxMDI4J10gPSB6RGF0YS5QUk9HUkFNX1pDQVJUQTsgIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnekNBUlRhMTAyOCddID0gekRhdGEuUFJPR1JBTV9aQ0FSVEE7IAp6RGF0YS5QUk9HUkFNX1pSRUZFUlJBTCA9ICd6UmVmZXJyYWwnOyAKekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJzE2Nzg5NDg5NzM2J10gPSB6RGF0YS5QUk9HUkFNX1pSRUZFUlJBTDsgIAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnelJlZmVycmFsOTczNiddID0gekRhdGEuUFJPR1JBTV9aUkVGRVJSQUw7ICAKekRhdGEuUFJPR1JBTV9aUFJJT1JBVVRIID0gJ3pQcmlvckF1dGgnOyAvL0pQQjIwMDIxMiBhZGRlZCB6UHJpb3JBdXRoCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4OTQ4OTk5NyddID0gekRhdGEuUFJPR1JBTV9aUFJJT1JBVVRIOyAgLy9KUEIyMDAyMTIgYWRkZWQgelByaW9yQXV0aAp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnelByaW9yQXV0aDk5OTcnXSA9IHpEYXRhLlBST0dSQU1fWlBSSU9SQVVUSDsgLy9KUEIyMDAyMTIgYWRkZWQgelByaW9yQXV0aAp6RGF0YS5QUk9HUkFNX09SVEhPUEVESUNTID0gJ09ydGhvcGVkaWNzJzsgLy9KUEIyMDAzMDUgY2hhbmdlZCB0byBPcnRob3BlZGljcwp6RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODk0ODk3NDEnXSA9IHpEYXRhLlBST0dSQU1fT1JUSE9QRURJQ1M7ICAvL0pQQjIwMDMwNSBjaGFuZ2VkIHRvIE9ydGhvcGVkaWNzCnpEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWydPcnRobzk3NDEnXSA9IHpEYXRhLlBST0dSQU1fT1JUSE9QRURJQ1M7IC8vSlBCMjAwMzA1IGNoYW5nZWQgdG8gT3J0aG9wZWRpY3MKLy96RGF0YS5QUk9HUkFNX0NBUkRJT0xPR1kgPSAnQ2FyZGlvbG9neSc7IC8vSlBCMjAwMzA1IGFkZGVkIENhcmRpb2xvZ3kKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODk0ODknXSA9IHpEYXRhLlBST0dSQU1fQ0FSRElPTE9HWTsgIC8vSlBCMjAwMzA1IGFkZGVkIENhcmRpb2xvZ3kgCi8vekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJ0NhcmRpbyddID0gekRhdGEuUFJPR1JBTV9DQVJESU9MT0dZOyAvL0pQQjIwMDMwNSBhZGRlZCBDYXJkaW9sb2d5Ci8vU0hSMjAwMjAzIHRlc3RpbmcgY2xpZW50IG9yZwovL0pQQjE5MDYwNCBEZWZpbmUgbWFwCnpEYXRhLmRvY3VtZW50VHlwZU1hcCA9IHt9Owp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0VOUkwnXSA9ICJFbnJvbGxtZW50IEZvcm0iOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0ZJTiddID0gIkZpbmFuY2lhbCBJbmZvIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydJQyddID0gIkluc3VyYW5jZSBJbmZvIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydDTElOJ10gPSAiQ2xpbmljYWwgTm90ZXMiOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ0RFTSddID0gIkRlbW9ncmFwaGljcyI7CnpEYXRhLmRvY3VtZW50VHlwZU1hcFsnSElQQUEnXSA9ICJISVBBQSBGb3JtIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydDT04nXSA9ICJDb25zZW50IEZvcm0iOwp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ05FVyddID0gIkRvY3VtZW50IFN0YWNrIjsKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydQUlNDJ10gPSAiUHJlc2NyaXB0aW9uIjsgLy9KUEIxOTEwMDIgYWRkZWQKekRhdGEuZG9jdW1lbnRUeXBlTWFwWydGSVQnXSA9ICJGSVQgUmVxdWlzaXRpb24iOyAvL0pQQjE5MTIxMSBhZGRlZAp6RGF0YS5kb2N1bWVudFR5cGVNYXBbJ1BBJ10gPSAiUHJpb3IgQXV0aG9yaXphdGlvbiI7IC8vSlBCMjAwMjExIGFkZGVkCnpEYXRhLmRvY3VtZW50VHlwZU1hcFsnT1JEJ10gPSAiUGh5c2ljaWFuIE9yZGVyIjsgLy9KUEIyMDAyMjUgYWRkZWQgUGh5c2ljaWFuIE9yZGVyCgovL3pEYXRhLlBST0dSQU1fUEFMVkVPID0gJ1BhbHZlbyc7IAovL3pEYXRhLnN1cHBvcnRlZFByb2dyYW1zTWFwWycxNjc4NzI3MDkzNCddID0gekRhdGEuUFJPR1JBTV9QQUxWRU87ICAKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnUGFsdmVvJ10gPSB6RGF0YS5QUk9HUkFNX1BBTFZFTzsgCi8vekRhdGEuUFJPR1JBTV9WSU5ESUNPID0gJ1ZpbmRpY28nOyAKLy96RGF0YS5zdXBwb3J0ZWRQcm9ncmFtc01hcFsnMTY3ODcyNzA5NzEnXSA9IHpEYXRhLlBST0dSQU1fVklORElDTzsgCi8vekRhdGEuc3VwcG9ydGVkUHJvZ3JhbXNNYXBbJ1ZpbmRpY28nXSA9IHpEYXRhLlBST0dSQU1fVklORElDTzsgCgp6RGF0YS5xdWV1ZUlkTWFwID17fTsKekRhdGEuUVVFVUVfWkNIQVJUQSA9ICcwMEcxVTAwMDAwME9kNU1VQVMnOwp6RGF0YS5RVUVVRV9aUEFQWVJVUyA9ICcwMEcxVTAwMDAwME9oVk9VQTAnOwp6RGF0YS5RVUVVRV9aQ0FSVEEgPSAnMDBHMVUwMDAwMDBPbHN2VUFDJzsgCnpEYXRhLlFVRVVFX1pQUklPUkFVVEggPSAnMDBHMVUwMDAwMDBvNGhFVUFRJzsgLy9KUEIyMDAyMTEgV0FTIFVTSU5HIEZPUiBDQ09maXQKekRhdGEuUVVFVUVfWlJFRkVSUkFMID0gJzAwRzFVMDAwMDAwdFV4RVVBVSc7IC8vSlBCMjAwMjExIGFkZGVkCnpEYXRhLlFVRVVFX09SVEhPUEVESUNTID0gJzAwRzFVMDAwMDAwdFZUblVBTSc7IC8vSlBCMjAwMzA1IGNoYW5nZWQgdG8gT3J0aG9wZWRpY3MKekRhdGEuUVVFVUVfQ0FSRElPTE9HWSA9ICcwMEcxVTAwMDAwMHRXUDJVQU0nOyAvL0pQQjIwMDMwNSBhZGRlZCB0byBDYXJkaW9sb2d5Ci8vekRhdGEuUVVFVUVfUEFMVkVPID0gJzAwR2Y0MDAwMDAxak85S0VBVSc7IAovL3pEYXRhLlFVRVVFX1ZJTkRJQ08gPSAnMDBHZjQwMDAwMDFqTzBNRUFVJzsgCgp6RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLlBST0dSQU1fWkNIQVJUQV0gPSB6RGF0YS5RVUVVRV9aQ0hBUlRBOyAKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1pQQVBZUlVTXSA9IHpEYXRhLlFVRVVFX1pQQVBZUlVTOyAKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1pDQVJUQV0gPSB6RGF0YS5RVUVVRV9aQ0FSVEE7IAp6RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLlBST0dSQU1fWlJFRkVSUkFMXSA9IHpEYXRhLlFVRVVFX1pSRUZFUlJBTDsKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1pQUklPUkFVVEhdID0gekRhdGEuUVVFVUVfWlBSSU9SQVVUSDsgLy9KUEIyMDAyMTEgYWRkZWQKekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX09SVEhPUEVESUNTXSA9IHpEYXRhLlFVRVVFX09SVEhPUEVESUNTOyAvL0pQQjIwMDMwNSBjaGFuZ2VkIHRvIE9ydGhvcGVkaWNzCnpEYXRhLnF1ZXVlSWRNYXBbekRhdGEuUFJPR1JBTV9DQVJESU9MT0dZXSA9IHpEYXRhLlFVRVVFX0NBUkRJT0xPR1k7IC8vSlBCMjAwMzA1IGFkZGVkIENhcmRpb2xvZ3kKLy96RGF0YS5xdWV1ZUlkTWFwW3pEYXRhLlBST0dSQU1fUEFMVkVPXSA9IHpEYXRhLlFVRVVFX1BBTFZFTzsgLy9KUEIxODA4MDYgYWRkZWQgUE9DIHF1ZXVlCi8vekRhdGEucXVldWVJZE1hcFt6RGF0YS5QUk9HUkFNX1ZJTkRJQ09dID0gekRhdGEuUVVFVUVfVklORElDTzsgCgovLyBFTkQgT0YgSEFSRC1DT0RFRCBWQUxVRVMKCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLkFmZmlsaWF0ZSA9ICIiOwoKekRhdGEucGF0RW5yb2xsUXVldWVJZCA9ICIiOyAKCnpEYXRhLnByb2dyYW1OYW1lID0gIiI7CnpEYXRhLmNsYXNzaWZpY2F0aW9uID0iIjsgLy8gUHYxOTA0MjMKLy9DUk4xNzAzMjQgVE9ETyBkb2MuY2xvbmUoKSBkb25lIHJpZ2h0Owp6RGF0YS5jbG9uZT1mdW5jdGlvbihkb2MpIHsKICAgdmFyIGRvYzA9W107CiAgIGZvciAodmFyIGkgaW4gZG9jKSBkb2MwW2ldPWRvY1tpXTsKICAgcmV0dXJuIGRvYzA7Cn0KCnpEYXRhLnNldGJyYW5kcHJvZ3JhbSA9IGZ1bmN0aW9uKGRvYykgewogICAgYWxlcnQoIisrKyBTVEFSVElORyB6RGF0YS5zZXRicmFuZHByb2dyYW0gKysrIik7CiAgICBhbGVydCgiQEBAIGRvYy5kZWxpdmVyZWRUbyA9ICIgKyBkb2MuZGVsaXZlcmVkVG8pOwogIHpEYXRhLkFmZmlsaWF0ZSA9ICJVUyI7IAogIHpEYXRhLnByb2dyYW1OYW1lID0gIk1ha2FuYSBIZWFsdGgiOwogIGFsZXJ0KCIjIyMjIGRvYy5kZWxpdmVyZWRUbyA9ICIgKyBkb2MuZGVsaXZlcmVkVG8pOwogIC8vekRhdGEucGF0RW5yb2xsUXVldWVJZCA9IHpEYXRhLnF1ZXVlSWRNYXBbekRhdGEucHJvZ3JhbU5hbWVdOyAKICAgIGlmKGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiMTY3ODk0ODEwMjUiKSB8fCBkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoInpDaGFydGExMDI1IikpewoJCXpEYXRhLmNsYXNzaWZpY2F0aW9uID0iekNoYXJ0YSI7CiAgICB9IGVsc2UgaWYoZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCIxNjc4OTQ4MTAyOCIpIHx8IGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiekNBUlRhMTAyOCIpKXsKCQl6RGF0YS5jbGFzc2lmaWNhdGlvbiA9InpDQVJUYSI7CiAgICB9ZWxzZSBpZihkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoIjE2Nzg5NDgxMDIxIikgfHwgZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCJ6UGFweXJ1czEwMjEiKSl7CgkJekRhdGEuY2xhc3NpZmljYXRpb24gPSJ6UGFweXJ1cyI7CiAgICB9ZWxzZSBpZihkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoIjE2Nzg5NDg5OTk3IikgfHwgZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCJ6UHJpb3JBdXRoOTk5NyIpKXsKCQl6RGF0YS5jbGFzc2lmaWNhdGlvbiA9InpQcmlvckF1dGgiOwogICAgfWVsc2UgaWYoZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCIxNjc4OTQ4OTczNiIpIHx8IGRvYy5kZWxpdmVyZWRUby5jb250YWlucygielJlZmVycmFsOTczNiIpKXsKCQl6RGF0YS5jbGFzc2lmaWNhdGlvbiA9InpSZWZlcnJhbCI7CiAgICB9ZWxzZSBpZihkb2MuZGVsaXZlcmVkVG8uY29udGFpbnMoIjE2Nzg5NDg5NzQxIikgfHwgZG9jLmRlbGl2ZXJlZFRvLmNvbnRhaW5zKCJPcnRobzk3NDEiKSl7CgkJekRhdGEuY2xhc3NpZmljYXRpb24gPSJPcnRob3BlZGljcyI7IC8vSlBCMjAwMjI1IGFkZGVkIFBoeXNpY2lhbiBPcmRlcgogICAgfSAKCWVsc2UgaWYgKGRvYy5kZWxpdmVyZWRUby5jb250YWlucygiY29tbXVuaXR5IikpIHsJLy9KUEIxOTA1MjkgUGFyc2Ugb3V0IHRoZSBjbGFzc2lmaWNhdGlvbiBmcm9tIHRoZSBwaWNrbGlzdCB2YWx1ZSB0aGUgdXNlciBjaG9zZSB3aGVuIHVwbG9hZGluZyB0aGUgZmlsZS4KCQl2YXIgZnJvbUZpbGUgPSBkb2MuZnJvbUZpbGUgKyAiIjsKCQlhbGVydCgiQEBAIGZyb21GaWxlID0gIiArIGZyb21GaWxlKTsKCQlpZiAoZnJvbUZpbGUuaW5kZXhPZignLScpID49IDApIHsKCQkJdmFyIHBhcnRzID0gZnJvbUZpbGUuc3BsaXQoJy0nKTsKCQkJaWYgKHBhcnRzLmxlbmd0aCA+PSAzKSB7CgkJCQl2YXIgcGlja1ZhbHVlID0gcGFydHNbMl07CgkJCQlhbGVydCgiQEBAIHBpY2tWYWx1ZSA9ICIgKyBwaWNrVmFsdWUpOwoJCQkJekRhdGEuY2xhc3NpZmljYXRpb24gPSBwaWNrVmFsdWU7CgkJCX0KCQl9Cgl9CiAgICB6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkID0gekRhdGEucXVldWVJZE1hcFt6RGF0YS5jbGFzc2lmaWNhdGlvbl07IC8vUFYxOTA0MjQgdXBkYXRlZCBmb3IgY2xhc3NpZmljYXRpb24gYXMgb3duZXIKICAgIGFsZXJ0KCIrKysgRU5ESU5HIHpEYXRhLnNldGJyYW5kcHJvZ3JhbSArKysiKTsKICAgIGFsZXJ0KCJAQEAgekRhdGEucHJvZ3JhbU5hbWUgPSAiICsgekRhdGEucHJvZ3JhbU5hbWUpOwogICAgYWxlcnQoIkBAQCB6RGF0YS5BZmZpbGlhdGUgPSAiICsgekRhdGEuQWZmaWxpYXRlKTsKfQoKLyogVGhpcyBmdW5jdGlvbiBuZWVkcyB0byBiZSBhZGRlZCB0byBldmVyeSBydWxlIHRvIGhlbHAgYXNzdXJlIHRoYXQgcnVsZXMgZG8gbm90IGdldCBhY2NpZGVudGFsbHkgdHJpZ2dlcmVkICovCi8qIEFkZCB0aGlzIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIHJ1bGVzIGVuZ2luZSBpdHNlbGY/ICovCnpEYXRhLmNsZWFyVHJpZ2dlckNvbmRpdGlvbj1mdW5jdGlvbihkb2MsdHJpZ2dlckZpZWxkKSB7ICAKICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogIGFyck9mUGFpcnMucHVzaCh0cmlnZ2VyRmllbGQsICIiKTsKICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7Cn0KCnpEYXRhLmluaXRpYWxpemVTdGFjaz1mdW5jdGlvbihkb2Msc3RhY2tGb2xkZXIsc3RhY2tJZCkgeyAKICB2YXIgYXJyT2ZQYWlycyA9IFtdOwogIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7CiAgdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7CiAgdmFyIGZpbmFsUm9vdEZvbGRlciA9IHpEYXRhLnByb2dyYW1OYW1lKyItQXJjaGl2ZSI7IAogIHZhciB5eXl5TU1Gb2xkZXJOYW1lID0gdG9kYXkuZ2V0RnVsbFllYXIoKSArIChjdXJNb250aCA+IDkgPyBjdXJNb250aCsiIiA6ICIwIitjdXJNb250aCk7CiAgdmFyIHl5eXlNTUZvbGRlciA9IGZpbmFsUm9vdEZvbGRlciArICItIiArIHl5eXlNTUZvbGRlck5hbWU7CiAgYWxlcnQoIkBAQCBzdGFja0ZvbGRlciBpcyAtICIgKyBzdGFja0ZvbGRlcik7CiAgYWxlcnQoIkBAQCBmaW5hbFJvb3RGb2xkZXIgaXMgLSAiICsgZmluYWxSb290Rm9sZGVyKTsKICBhbGVydCgiQEBAIHl5TU1Gb2xkZXIgaXMgLSAiICsgeXl5eU1NRm9sZGVyKTsKICBhbGVydCgiQEBAIGNyZWF0aW5nIG5ldyB6U3RhY2sgZGVzdGluYXRpb24gZm9sZGVyIHdpdGggbmFtZSAtICIgKyBzdGFja0ZvbGRlcik7IAogIC8qIFJlZnJlc2ggdGhlIGN1cnJlbnQgZm9sZGVyICovCiAgcmVsb2FkQnlJZChkb2MsIFgoZG9jLCJYX2N1ckZvbGRlciIpKTsKICAvKiBzYW1lIHZhbHVlIGZvciBCQVRFUyBhbmQgbGFiZWwgKi8KICAvKiBUaGUgZm9sZGVyIHN0cnVjdHVyZSB3aWxsIGxvb2sgbGlrZSB0aGlzOiAvMjAxNjA4LzNDWDNDWC8xMjM0NTY3ODktU1RBQ0sgKi8KICBjcmVhdGVGb2xkZXIoZG9jLCBmaW5hbFJvb3RGb2xkZXIsIHl5eXlNTUZvbGRlciwgeXl5eU1NRm9sZGVyTmFtZSk7CiAgY3JlYXRlRm9sZGVyKGRvYywgeXl5eU1NRm9sZGVyLCBzdGFja0ZvbGRlciwgc3RhY2tGb2xkZXIpOwogIAogIGFsZXJ0KCJAQEBAIE1vdmluZyB0aGUgelN0YWNrIGRvY3VtZW50IGludG8gdGhlIHpTdGFjayBmb2xkZXI6ICIgKyBzdGFja0ZvbGRlcik7IAogIAogIG1vdmVEb2N1bWVudChkb2MsIiIsc3RhY2tGb2xkZXIpOwogIGFyck9mUGFpcnMucHVzaCgiWF9pbmRleEluaXRpYWxpemVkIiwgInRydWUiKTsKICBhcnJPZlBhaXJzLnB1c2goIlhfc3RhY2siLCBzdGFja0lkKTsKICBhcnJPZlBhaXJzLnB1c2goImRiLUJBVEVTIiwgZG9jLmtiRGF0YS5ncm91cElELnN1YnN0cmluZygxKSArICItIiArIHN0YWNrSWQgKyAiLVNUQUNLIik7CiAgLyogU3RhY2sgTGFiZWxsaW5nIENoYW5nZSAqLwogIHZhciBkdFN0YW1wID0gZ2V0Q3VyRGF0ZUFuZFRpbWUoZG9jLCBmYWxzZSk7CiAgLyogYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIlN0YWNrIC0gIiArIGR0U3RhbXApOyAqLwogIHVwZGF0ZURCKGRvYyxhcnJPZlBhaXJzKTsKfQoKekRhdGEuY291bnRQYWdlcz1mdW5jdGlvbihkb2MscGFnZVJhbmdlKSB7ICAKICB2YXIgcGFnZXMgPSBwYWdlUmFuZ2Uuc3BsaXQoIiwiKTsKICBpZiAoIXBhZ2VzKSBwYWdlcz1bcGFnZVJhbmdlXTsKICByZXR1cm4gcGFnZXMubGVuZ3RoICsgIiI7Cn0KCi8qIEVORCAqLw=="},"ordinal":0}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
//JPB200305 updated rule for Sales Demo Org
//global variables for zLibrary
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
zData.PROGRAM_ZREFERRAL = 'zReferral'; 
zData.supportedProgramsMap['16789489736'] = zData.PROGRAM_ZREFERRAL;  
zData.supportedProgramsMap['zReferral9736'] = zData.PROGRAM_ZREFERRAL;  
zData.PROGRAM_ZPRIORAUTH = 'zPriorAuth'; //JPB200212 added zPriorAuth
zData.supportedProgramsMap['16789489997'] = zData.PROGRAM_ZPRIORAUTH;  //JPB200212 added zPriorAuth
zData.supportedProgramsMap['zPriorAuth9997'] = zData.PROGRAM_ZPRIORAUTH; //JPB200212 added zPriorAuth
zData.PROGRAM_ORTHOPEDICS = 'Orthopedics'; //JPB200305 changed to Orthopedics
zData.supportedProgramsMap['16789489741'] = zData.PROGRAM_ORTHOPEDICS;  //JPB200305 changed to Orthopedics
zData.supportedProgramsMap['Ortho9741'] = zData.PROGRAM_ORTHOPEDICS; //JPB200305 changed to Orthopedics
//zData.PROGRAM_CARDIOLOGY = 'Cardiology'; //JPB200305 added Cardiology
//zData.supportedProgramsMap['16789489'] = zData.PROGRAM_CARDIOLOGY;  //JPB200305 added Cardiology 
//zData.supportedProgramsMap['Cardio'] = zData.PROGRAM_CARDIOLOGY; //JPB200305 added Cardiology
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
zData.documentTypeMap['ORD'] = "Physician Order"; //JPB200225 added Physician Order

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
zData.QUEUE_ZPRIORAUTH = '00G1U000000o4hEUAQ'; //JPB200211 WAS USING FOR CCOfit
zData.QUEUE_ZREFERRAL = '00G1U000000tUxEUAU'; //JPB200211 added
zData.QUEUE_ORTHOPEDICS = '00G1U000000tVTnUAM'; //JPB200305 changed to Orthopedics
zData.QUEUE_CARDIOLOGY = '00G1U000000tWP2UAM'; //JPB200305 added to Cardiology
//zData.QUEUE_PALVEO = '00Gf4000001jO9KEAU'; 
//zData.QUEUE_VINDICO = '00Gf4000001jO0MEAU'; 

zData.queueIdMap[zData.PROGRAM_ZCHARTA] = zData.QUEUE_ZCHARTA; 
zData.queueIdMap[zData.PROGRAM_ZPAPYRUS] = zData.QUEUE_ZPAPYRUS; 
zData.queueIdMap[zData.PROGRAM_ZCARTA] = zData.QUEUE_ZCARTA; 
zData.queueIdMap[zData.PROGRAM_ZREFERRAL] = zData.QUEUE_ZREFERRAL;
zData.queueIdMap[zData.PROGRAM_ZPRIORAUTH] = zData.QUEUE_ZPRIORAUTH; //JPB200211 added
zData.queueIdMap[zData.PROGRAM_ORTHOPEDICS] = zData.QUEUE_ORTHOPEDICS; //JPB200305 changed to Orthopedics
zData.queueIdMap[zData.PROGRAM_CARDIOLOGY] = zData.QUEUE_CARDIOLOGY; //JPB200305 added Cardiology
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
    }else if(doc.deliveredTo.contains("16789489736") || doc.deliveredTo.contains("zReferral9736")){
		zData.classification ="zReferral";
    }else if(doc.deliveredTo.contains("16789489741") || doc.deliveredTo.contains("Ortho9741")){
		zData.classification ="Orthopedics"; //JPB200225 added Physician Order
    } 
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
