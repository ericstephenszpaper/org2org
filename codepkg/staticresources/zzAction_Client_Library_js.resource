<!--
// Name: Client Library
// Committer: cory.newey@zpaper.com
// Update: CRN200505 zData is holding old, invalid value pulled from wddata instead of what the user currently chose.
-->
<script>
//--- RULE JSON REPRESENTATION ---
var ruleJson = {"type":"rool","updated":"2020-05-05 20:56:47","evalContinue":"true","active":true,"button":"","name":"Client Library","conditions":{"logic":"and","arguments":[{"name":"doc.status","value":"DoNotClient","operation":"not-contains"}]},"consequence":{"doit":"YWxlcnQoInN0YXJ0IGNsaWVudCBsaWJyYXJ5Iik7IC8vRVJTMTkwODAzICM1MjY2MSBmcm9tIE9jY0ZpdAovL0VSUzIwMDQxMiBtYXNzaXZlIGNvZGUgcmV2aWV3IGFuZCBpbnRlcm1peCBmb3IgekNoYW5uZWxzICM3MDk1MyAvL0VSUzIwMDQyOSAjNzIwNjMKCnpEYXRhLm1heENoYW5uZWxzPTM7IC8vRVJTMTkwNzMxICM2MTI3MiB6aXBwaSBpcyBzdHJvbmdseSB0eXBlZAp6RGF0YS5tYWtlU3RhY2s9dHJ1ZTsgLy9FUlMxOTA4MTQgIzYxNTExCgp6RGF0YS53YXRlcm1hcms9IiIrWEN1c3RvbVNldHRpbmcoZG9jLCJ3YXRlcm1hcmtfX2MiKTsgLy9FUlMxOTA2MTggYmVzdCBwcmFjdGljZQovL2FsZXJ0KCJFUlMxOTA0MTEgd209Iit6RGF0YS53YXRlcm1hcmsrIiBaUEFQRVJfX3NlcnZlcl9fYz0iK1hDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX19zZXJ2ZXJfX2MiKSk7CnpEYXRhLnVwbG9hZERpciA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywidXBsb2FkRGlyX19jIik7IC8vImFsa2VybWVzUm9vdCI7CnpEYXRhLnBhdEVucm9sbFF1ZXVlSWQgPSAiIitYQ3VzdG9tU2V0dGluZyhkb2MsInBhdGllbnRRdWV1ZUlkX19jIik7IC8vJzAwRzRDMDAwMDAwTGttWic7IC8vaW5zZXJ0IHRoZSBRdWV1ZSBJRCBvZiB0aGUgZGVzaXJlZCBvd25lcnNoaXAgcXVldWUuIFVwZGF0ZSB3aGVuIG1pZ3JhdGluZyBiZXR3ZWVuIGVudmlyb25tZW50cy4gTmVlZCB0byBhZGQgdGhpcyBxdWV1ZSBpbiBTZXR1cAp6RGF0YS5yZWNUeXBlUmVxdWVzdCA9ICIiK1hDdXN0b21TZXR0aW5nKGRvYywicmVjVHlwZVJlcXVlc3RfX2MiKTsgLy8nMDEyNEMwMDAwMDBDajVZJzsgLy9JRCBvZiB0aGUgQ2FzZSBSZWNvcmQgVHlwZSBSZXF1ZXN0X1BTX01WTgoKdmFyIGNzPVhEZXBsb3ltZW50SW5mbyhkb2MsICJCdXNpbmVzc19Qcm9jZXNzX19jIik7IC8vRVJTMjAwMjIyIG5lZWQgYm90aCBkZXBsb3ltZW50IGluZm8gYW5kIGNzCi8vYWxlcnQoImNzPSIrY3MpOwppZiAoY3MpIHsKICAgIGlmIChjcy5pbmRleE9mKCJ6Q3VzdG9tU2V0dGluZ3MiKT4tMSkgY3M9WChkb2MsInpDdXN0b21TZXR0aW5ncyIsY3MpOwogICAgYWxlcnQoIkVSUzIwMDIyNSBFVkFMIG9uICIrY3MpOwogICAgaWYgKGNzICE9PSAiIikgZXZhbCgiIitjcyk7IC8vRVJTMjAwMjIyIFRPRE8gSlNPTi5wYXJzZSgpIC8vRVJTMjAwMjI1IGJlZWRzIHRvIGJlIGV2YWwgYnV0IGFsc28gbmVlZHMgdG8gd29yayEhIQogICAgYWxlcnQoIk5vIHRyeSBqdXN0IGRvISIpOwp9Cgp6RGF0YS5jbGllbnRJbXBvcnRTT1FMPWZ1bmN0aW9uKGRvYyxmcm9tRmlsZSkgeyAvL0VSUzE5MDcwNiBjdXN0b21pemUgaW1wb3J0cyB1c2VkIGJ5IENyZWF0ZSBTdGFjawogICAgekRhdGEuaW1wb3J0ZXI9WEN1c3RvbVNldHRpbmcoZG9jLHpEYXRhLnpwKyJJbXBvcnRlcl9fYyIpLnRyaW0oKTsKICAgIHZhciBzZklkPSIiOwogICAgdmFyIHBhcnRzPWZyb21GaWxlLnNwbGl0KCJfIik7CiAgICAvL3NmSWQgPSBnZXRTRlJlY29yZElEKGRvYywgIkFjY291bnQiLCB7ICJGYXgiIDogcGFydHNbM10gfSApOwogICAgekRhdGEubWFrZVN0YWNrPXRydWU7IC8vZG8gYWxsIHRoZSB3b3JrIHRoZXJlIGJ5IGRlZmF1bHQKICAgIHJldHVybiBzZklkOwp9OwoKLy9hbGVydCgiekRhdGEuY2xpZW50U3RhY2siKTsKekRhdGEuY2xpZW50U3RhY2s9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHsgLy96RGF0YSBvciB0aGlzPwogICAgdmFyIHpwPXpEYXRhLnpwOyBpZiAoIXpwKSB6cD0iWlBBUEVSX18iOyAvL0VSUzE5MDgwNQogICAgaWYgKHpEYXRhLnJlY2VpdmVkKSBhcnJPZlBhaXJzLnB1c2goInpTdGFja19SZWNlaXZlZF9fYyIsIHpEYXRhLmZvcm1hdE5vdyk7IC8vRVJTMTkwNjE3IFRPRE8gc2F2ZSB3YXkgdG8gZG8gdGhpcwogICAgaWYgKHpEYXRhLm93bmVySWQpIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsekRhdGEub3duZXJJZCk7ICAvLyB6Q2hhcnRhIFF1ZXVlICIwMEczNjAwMDAwMkN5VEsiCiAgICBpZiAoekRhdGEuY2FsbGVySWQpIGFyck9mUGFpcnMucHVzaCgiekNhbGxlcl9JRF9fYyIsIGRvYy5kZWxpdmVyZWRGcm9tKTsgLy9NU0gxNzA4MTcgYWRkZWQKICAgIGlmICh6RGF0YS5wYXRFbnJvbGxRdWV1ZUlkKSBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLHpEYXRhLnBhdEVucm9sbFF1ZXVlSWQpOwoKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19mYXhUeXBlX19jIiwgekRhdGEuZG9jVHlwZSk7IC8vIFBWMTkxMDI5IGNvbW1lbnRlZAogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX0NsYXNzaWZpY2F0aW9uX19jIiwgekRhdGEuY2xhc3NpZmljYXRpb24pOwogICAgdmFyIHBhZ2VSYW5nZSA9IFgoZG9jLCJYX2lkeFBhZ2VzIik7CiAgICBpZihwYWdlUmFuZ2UpeyAvL1B2MTkxMDI4IHRvIHVwZGF0ZSBudW1iZXIgb2YgcGFnZXMgb25seSBpZiB3ZSBhcmUgZG9pbmcgaW5kZXggb24gc3RhY2sgcmVjb3JkCiAgICAgICAgdmFyIHBhZ2VDb3VudCA9IHpEYXRhLmNvdW50UGFnZXMoZG9jLCBwYWdlUmFuZ2UpOyAgCiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX1BhZ2VzX19jIiwgcGFnZUNvdW50KTsKICAgIH0KICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19yZWNlaXZlZElkX19jIiwgZG9jLmRiSUQpOyAvL0VSUzE5MDgxNAogICAgLy9FUlMxOTA4MTAgVE9ETz8gYXJyT2ZQYWlycy5wdXNoKCJaU1RBQ0tfX1JlY2VpdmVkX19jIiwgekRhdGEuZm9ybWF0Tm93KTsKICAgIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aQ0hBUlRBKSB7CiAgICBhcnJPZlBhaXJzLnB1c2goenArIlByaW9yaXR5X19jIiwgIlVyZ2VudCIpOyAvL0pQQjE5MDQyNiBjaGFuZ2VkIHRvIGNsYXNzaWZpY2F0aW9uIGZyb20gcHJvZ3JhbS8vUFYxOTEwMDQgdXBkYXRlZCBmcm9tIFVyZ2VudAogICAgfSBlbHNlIGlmICh6RGF0YS5jbGFzc2lmaWNhdGlvbiA9PT0gekRhdGEuUFJPR1JBTV9aUEFQWVJVUykgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJIaWdoIik7CiAgICB9IGVsc2UgaWYgKHpEYXRhLmNsYXNzaWZpY2F0aW9uID09PSB6RGF0YS5QUk9HUkFNX1pDQVJUQSkgewogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJDcml0aWNhbCIpOwogICAgfWVsc2UgaWYgKGFyck9mUGFpcnMuaW5kZXhPZih6cCsiUHJpb3JpdHlfX2MiKTwwKSB7CiAgICAgICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJQcmlvcml0eV9fYyIsICJVbmFzc2lnbmVkIik7CiAgICAgfQogICAKICAgCiAgICBhcnJPZlBhaXJzLnB1c2goenArInNlbnRGYXhUb19fYyIsICgiQ29tbXVuaXR5IiA9PT0gekRhdGEuY2hhbm5lbCA/IHpEYXRhLmNoYW5uZWwgOiBkb2MuZGVsaXZlcmVkVG8pKTsgLy9KUEIxOTA1MjkgYWRkZWQgc28gQ29tbXVuaXR5IHNob3dzIHVwIGluIE1hc3RlciBJbnRha2UgTGlzdAogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJGcm9tX19jIixkb2MuZGVsaXZlcmVkRnJvbSk7CiAgICBpZiAoekRhdGEucmV2aWV3ZWRTdGF0dXMpIHthcnJPZlBhaXJzLnB1c2goenArIlN0YWdlX19jIiwgekRhdGEucmV2aWV3ZWRTdGF0dXMpOyB9CiAgICBlbHNlIHsgYXJyT2ZQYWlycy5wdXNoKHpwKyJTdGFnZV9fYyIsICJSZWNlaXZlZCIpOyB9CiAgICB6RGF0YS5zdGFja1BhaXJzPWFyck9mUGFpcnM7IC8vRVJTMTkwODEwICM2MTU3MCBmb3IgY2hpbGQgc3RhY2sgbGF0ZXIKICAgIGFyck9mUGFpcnM9ekRhdGEuY2xpZW50RmllbGRzKGRvYyxhcnJPZlBhaXJzLFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196U3RhY2tGaWVsZHNfX2MiKSk7IC8vRVJTMTkwODAzICM1MjY2MSB1c2luZyBKU09OCnJldHVybiBhcnJPZlBhaXJzOwp9OwoKLy9hbGVydCgiekRhdGEuY2xpZW50RmlsZSIpOwp6RGF0YS5jbGllbnRGaWxlPWZ1bmN0aW9uKGRvYyxzdGFnZSkgeyAvL0VSUzE3MDgyOSAjNDEyOTggcmV0dXJucyBhIGxhYmVsIHRvIGJlIHVzZWQgaW4gYW55IGF0dGFjaGVzIGFuZCBmaXhlcyB0aGUgZG9jCiAgICAvL0RvY3VtZW50IGF0dGFjaG1lbnQgbGFiZWwgc2hvdWxkIGJlICJQYXRpZW50IE5hbWUgLSBEb2MgVHlwZSAtIERhdGUiLiAgQ29uZmlybWVkIGZvciB6UGFwZXIgRmlsZSBhbmQgU0ZEQyBBdHRhY2htZW50CiAgICB2YXIgTU1kZFlZWVkgPSB6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZTmV3KCk7CiAgICBkb2MubGFiZWw9IHpEYXRhLlhfWlBBUEVSX19GaXJzdE5hbWVfX2MrICIgIiArekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jICsiIC0gIitYKGRvYywiWF9aUEFQRVJfX2ZheFR5cGVfX2MiKSsiIC0gIitNTWRkWVlZWTsgLy9QVjE5MTAwOCB0byB1cGRhdGUgZm9yIGV4aXN0aW5nIHBhdGllbnQgb24gY2hpbGQgc3RhY2sKICAgIGFsZXJ0KCJFUlMxNzA4MjkgZGJJRD0iK2RvYy5kYklEKyIgbGFiZWw9Iitkb2MubGFiZWwpOwogICAgaWYgKHpEYXRhLnNmSUQgICYmIHpEYXRhLnNmSUQuaW5kZXhPZigiNTAwIik9PT0wKSB7CiAgIHpEYXRhLnByb3ZpZGVyID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuTmFtZSIsIG51bGwsIHpEYXRhLnNmSUQpOwogICBsYWJlbCA9ICJSZWNlaXZlZCBmcm9tICIgKyB6RGF0YS5wcm92aWRlcjsKICAgICAgICAvL2lmICh6RGF0YS5mYWNpbGl0eSkgewogICAgICAgICAgICAvL3pEYXRhLmZhY2lsaXR5ID0gZ2V0U0ZGaWVsZChkb2MsICJDYXNlIiwgIkFjY291bnQuRmFjaWxpdHlfX3IuTmFtZSIsIG51bGwsIHpEYXRhLnNmSUQpOwogICAgICAgICAgIC8vIGRvYy5sYWJlbCs9IiBhdCAiK3pEYXRhLmZhY2lsaXR5OwogICAgICAgIC8vfQp9Cgp2YXIgYXJyT2ZQYWlycyA9IFtdOwogICAgYXJyT2ZQYWlycy5wdXNoKCJkYi1sYWJlbCIsIGRvYy5sYWJlbCk7CiAgICB1cGRhdGVEQihkb2MsYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gZG9jLmxhYmVsOwp9OwovL1BWMjAwNDEzIGFkZGluZyBmdW5jdGlvbgp6RGF0YS5mb3JtYXRUb2RheU1NZGRZWVlZTmV3ID0gZnVuY3Rpb24oZG9jKSB7IC8vTVNIMTcwODMxIGV4dHJhY3QgZGF0ZSBmb3JtYXQgZnJvbSB6RGF0YS5uYW1lRmlsZSAKdmFyIHRvZGF5ID0gbmV3IERhdGUoKTsKdmFyIGN1ck1vbnRoID0gdG9kYXkuZ2V0TW9udGgoKSArIDE7Ci8vTVNIMTcwOTA2IHBhZCBkYXkgd2l0aCB6ZXJvCnZhciBjdXJEYXkgPSB0b2RheS5nZXREYXRlKCk7Ci8vTVNIMTcwOTA2IHZhciBNTWRkWVlZWSA9ICgiIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIiIgOiAiMCIrY3VyTW9udGgpKyIiK3RvZGF5LmdldERhdGUoKSsiIit0b2RheS5nZXRGdWxsWWVhcigpKTsKdmFyIE1NZGRZWVlZID0gKHRvZGF5LmdldEZ1bGxZZWFyKCkrICItIisoY3VyTW9udGggPiA5ID8gY3VyTW9udGgrIi0iIDogIjAiK2N1ck1vbnRoKSsoIiIrKGN1ckRheSA+IDkgPyBjdXJEYXkrIiIgOiAiMCIrY3VyRGF5KSkpOwovL2FsZXJ0KCJNTWRkWVlZWSA9PSAiICsgTU1kZFlZWVkpOwpyZXR1cm4gTU1kZFlZWVk7Cn07CnpEYXRhLmNsaWVudFZhbHVlPWZ1bmN0aW9uKGRvYyx2YWwpIHsvL0VSUzE5MDgwMyAjNTI2NjEgdXNpbmcgSlNPTgogICAgdmFsPXZhbC5yZXBsYWNlKCJ7IWZvcm1hdE5vd30iLHpEYXRhLmZvcm1hdE5vdyk7CiAgICByZXR1cm4gdmFsOwp9Cgp6RGF0YS5jbGllbnRGaWVsZHM9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsamQsemQpIHsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gaW4gc2V0dGluZyB0byBjb25maWd1cmUgbmV3IHJlY29yZAogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CiAgICBpZiAoamQgJiYgamQuaW5kZXhPZigieyIpPT09MCkgewogICAgICAgLy97IlR5cGUiOiJFbGlnaWJpbGl0eSIsIk93bmVySWQiOiIwMEdjMDAwMDAwM3ZncXciLCJSZWNvcmRUeXBlSWQiOiIwMTI2QTAwMDAwMEpFS2VRQU8ifTsKICAgICAgIC8vTk9UIEEgR09PRCBJREVBIGpkPWpkLnJlcGxhY2VBbGwoIlwiIiwiJyIpOyAvL0VSUzE5MDgxMSAjNjE1NzAgSEFDSz8KICAgICAgIHRyeSB7CiAgICAgICAgICAgdmFyIGpkYXRhPUpTT04ucGFyc2UoamQpOyAvL0VSUzE5MDgwNSBiZXR0ZXIgdGhhbiBldmFsCiAgICAgICAgICAgZm9yICh2YXIgbiBpbiBqZGF0YSkgewogICAgICAgICAgICAgICB2YXIgdjA9amRhdGFbbl07CiAgICAgICAgICAgICAgIHZhciB2PXpEYXRhLmNsaWVudFZhbHVlKGRvYyx2MCk7IC8vRVJTMTkwODExICx2IG5vdyAsdjAKICAgICAgICAgICAgICAgLy9hbGVydCgiRVJTMTkwODAzLjk3ICIrbisiPSIrdjArIj0iK3YpOwogICAgICAgICAgICAgICBhcnJPZlBhaXJzLnB1c2gobix2KTsgLy9FUlMxOTA4MTEgYWRkZWQgLnB1c2gKICAgICAgICAgICB9CiAgICAgICB9IGNhdGNoIChlKSB7CiAgICAgICAgICAgYWxlcnQoIkpTT04gbm90IGluICIramQrIiBFeGNlcHRpb246ICIrZSk7IC8vRVJTMTkwODExIGFkZGVkIGUKICAgICAgIH0KICAgIH0KICAgIGFsZXJ0KCJAQEBAIFByYXRoeXVzaGEgamQgQEBAQCAiK2pkKTsKICAgIHJldHVybiBhcnJPZlBhaXJzOwp9CgoKekRhdGEuY2xpZW50Q2FzZT1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgewogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CiAgICBpZiAoIXpkLnRyaWFnZVR5cGUgJiYgWChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIikpIHpkLnRyaWFnZVR5cGU9WChkb2MsIlhfWlBBUEVSX19mYXhUeXBlX19jIik7IC8vRVJTMjAwMzA4CiAgICBpZiAoIWxhYmVsKSB7IGxhYmVsPSJJbmRleGVkLSIgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CiAgICAvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKICAgIGlmICh6ZC5jb250YWN0SWQpIGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgemQuY29udGFjdElkKTsKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19uZXdGYXhfX2MiLCAidHJ1ZSIpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fbGF0ZXN0RmF4X19jIiwgemQuZm9ybWF0Tm93KTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX3JlY2VpdmVkSWRfX2MiLCBkb2MuZGJJRCk7IC8vRVJTMTkwODE0IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKICAgIGFyck9mUGFpcnMucHVzaCgiU3RhdHVzIiwgWChkb2MsIlhfU3RhdHVzIikpOwogICAgYXJyT2ZQYWlycy5wdXNoKCJUeXBlIiwgIk5ldyAiK3pkLmNsYXNzaWZpY2F0aW9uKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwogICAgaWYgKDE9PTEpIHsgLy9FUlMxNzA1MjMgIzM3MTYyIGFmdGVyIGRyeXJ1bgogICAgICAgIC8vYXJyT2ZQYWlycy5wdXNoKCJSZWNvcmRUeXBlSWQiLCIwMTJRMDAwMDAwMDVBaGoiKTsgLy9FUlMxNzA1MjMgUHJpb3IgQXV0aAogICAgICAgIGlmICh6ZC5wcmlvcml0eSAhPSAiTm9ybWFsIikgYXJyT2ZQYWlycy5wdXNoKCJQcmlvcml0eSIsemQucHJpb3JpdHkpOyAgLy9FUlMxNzA1MjQgIzM3MTYyIHByaW9yaXR5IG9uIENhc2UKICAgICAgICBlbHNlIGFyck9mUGFpcnMucHVzaCgiUHJpb3JpdHkiLCJNZWRpdW0iKTsKICAgICAgICBhcnJPZlBhaXJzLnB1c2goIk9yaWdpbiIsemQuY2hhbm5lbCk7CiAgICB9CiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fQ2FzZUZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04KICAgIGFsZXJ0KCJFUlMyMDAzMDguMTQzIG5ldyBDYXNlIHByb3ZpZGVySWQ9Iit6ZC5wcm92aWRlcklkKyIgcGF0aWVudElkPSIremQucGF0aWVudElkKTsKICAgIGlmICh6ZC5wcm92aWRlcklkICYmIHpkLnByb3ZpZGVySWQuaW5kZXhPZigiMDAxIik9PTApIHsgYXJyT2ZQYWlycy5wdXNoKCJBY2NvdW50SWQiLCB6ZC5wcm92aWRlcklkKTsgfSAvL0VSUzIwMDMwOAogICAgaWYgKHpkLnByb3ZpZGVySWQgJiYgemQucHJvdmlkZXJJZC5pbmRleE9mKCIwMDMiKT09MCkgeyBhcnJPZlBhaXJzLnB1c2goIkNvbnRhY3RJZCIsIHpkLnByb3ZpZGVySWQpOyB9IC8vRVJTMjAwMzA4CiAgICBpZiAoemQucGF0aWVudElkICYmIHpkLnBhdGllbnRJZC5pbmRleE9mKCIwMDEiKT09MCkgeyBhcnJPZlBhaXJzLnB1c2goIkFjY291bnRJZCIsIHpkLnBhdGllbnRJZCk7IH0gLy9FUlMyMDAzMDgKICAgIGlmICh6ZC5wYXRpZW50SWQgJiYgemQucGF0aWVudElkLmluZGV4T2YoIjAwMyIpPT0wKSB7IGFyck9mUGFpcnMucHVzaCgiQ29udGFjdElkIiwgemQucGF0aWVudElkKTsgfSAvL0VSUzIwMDMwOAogICAgaWYgKHpkLnpjaGFubmVsLm93bmVyKSB7IGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHpEYXRhLnpjaGFubmVsLm93bmVyKTsgfSAvL0VSUzIwMDMwOAogICAgdmFyIGNhc2VJZCA9IGNyZWF0ZUFuZEF0dGFjaChkb2MsICJDYXNlIiwgbGFiZWwsIGFyck9mUGFpcnMpOwogICAgcmV0dXJuIGNhc2VJZDsKfTsKCnpEYXRhLmNsaWVudFBhdGllbnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKICAgIGlmICghemQpIHpkPXpEYXRhOwogICAgaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KICAgIC8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwogICAgCiAgICAgICAgLy92YXIgcnQ9WEN1c3RvbVNldHRpbmcoZG9jLCJQYXRpZW50UmVjb3JkVHlwZV9fYyIpOyAvL1RPRE8gaW50byBNUCBFUlMxOTA4MDIgbGlrZSAwMTI2QTAwMDAwMEpFOHlRQUcgb3IgZW1wdHkgdG8gdXNlIGRlZmF1bHQKICAgICAgICAvL2lmIChydCkgeyBhcnJPZlBhaXJzLnB1c2goIlJlY29yZFR5cGVJZCIsIHJ0KTt9IC8vRVJTMTkwODAzLy9QVjE5MTExMSBjb21tZW50ZWQKICAgICAgICAvL1RPRE8gQ29udGFjdCBvciBBY2NvdW50IEVSUzE5MDYyNCBET05FISEgRVJTMTkwODAyCiAgICBhcnJPZlBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MsYXJyT2ZQYWlycyxYQ3VzdG9tU2V0dGluZyhkb2MsIlpQQVBFUl9fUGF0aWVudEZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04KICAgIHZhciBzZklkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgekRhdGEucGF0aWVudFR5cGUsIGxhYmVsLCBhcnJPZlBhaXJzKTsgLy9FUlMxOTA4MDMgIzYxMjcyCiAgICAKICAgIC8vRVJTMTkwODAzIHNwZWNpZmljIHRvIGNsaWVudCBkYXRhIGVudHJ5CiAgICB2YXIgZHEgPSB6RGF0YS5kcTsKICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiICQoIiArIGRxICsgIiNQZXJzb25fQWNjb3VudF9fYyIgKyBkcSArICIpLnZhbCgiICsgZHEgKyBzZklkICsgZHEgKyAiKTsgIik7CiAgICBhZGRQb3N0RXhlY3V0aW9uU2NyaXB0KGRvYywgIiAkKCIgKyBkcSArICIjUGVyc29uX0FjY291bnRfX2NfTmFtZSIgKyBkcSArICIpLnZhbCgiICsgZHEgKyB6RGF0YS5YX1pQQVBFUl9fRmlyc3ROYW1lX19jICsgIiAiICsgekRhdGEuWF9aUEFQRVJfX0xhc3ROYW1lX19jICsgZHEgKyAiKTsgIik7CiAgICByZXR1cm4gc2ZJZDsKfTsKCnpEYXRhLmNsaWVudEFjY291bnQ9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMsbGFiZWwsemQpIHsKICAgIGlmICghemQpIHpkPXpEYXRhOwogICAgaWYgKCFsYWJlbCkgeyBsYWJlbD16ZC5zdGFnZSArICItIiArIHpkLnRyaWFnZVR5cGUgKyAiLSIgKyB6ZC5zdGFja0lkO30KICAgIC8vRVJTMTcwNTIwIGFyck9mUGFpcnMucHVzaCgiT3duZXJJZCIsIHF1ZXVlc01hcEtsdWRnZVtYKGRvYywiWF9Bc3NpZ25fdG9fUXVldWVfX2MiKV0pOwogICAgYXJyT2ZQYWlycy5wdXNoKCJaUEFQRVJfX25ld0ZheF9fYyIsICJ0cnVlIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKICAgIGFyck9mUGFpcnMucHVzaCgiWlBBUEVSX19sYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCiAgICBhcnJPZlBhaXJzLnB1c2goIlpQQVBFUl9fcmVjZWl2ZWRJZF9fYyIsIGRvYy5kYklEKTsgLy9FUlMxOTA4MTQgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwogICAgCiAgICB2YXIgYWNjb3VudElkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgIkFjY291bnQiLCBsYWJlbCwgYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gYWNjb3VudElkOwp9OwoKekRhdGEuY2xpZW50UmVjb3JkPWZ1bmN0aW9uKGRvYyxzZlR5cGUsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgeyAvL0VSUzE5MDYyMCBjbGllbnRSZWNvcmQgZ2VuZXJpYwogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CiAgICBpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQogICAgLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CiAgICB2YXIgenA9IiI7CiAgICBpZiAoIixDYXNlLENvbnRhY3QsQWNjb3VudCxMZWFkLE9wcG9ydHVuaXR5LFpQQVBFUl9felN0YWNrX19jLCIudG9Mb3dlckNhc2UoKS5pbmRleE9mKCIsIitzZlR5cGUudG9Mb3dlckNhc2UoKSsiLCIpPi0xKSB6cD16RGF0YS56cDsKICAgIC8vb25seSBkbyB0aGlzIGlmIHRoZSBmaWVsZHMgZXhpc3QKICAgIGFyck9mUGFpcnMucHVzaCh6cCsibmV3RmF4X19jIiwgInRydWUiKTsgLy9KUEIgMTcwNTEyIGFkZGVkIHRoZXNlIHdvcmtmbG93IGZpZWxkcwogICAgYXJyT2ZQYWlycy5wdXNoKHpwKyJsYXRlc3RGYXhfX2MiLCB6ZC5mb3JtYXROb3cpOyAvL0pQQiAxNzA1MTIgYWRkZWQgdGhlc2Ugd29ya2Zsb3cgZmllbGRzCiAgICBhcnJPZlBhaXJzLnB1c2goenArInJlY2VpdmVkSWRfX2MiLCAiZG9jLmRiSUQuUmVjIik7IC8vSlBCIDE3MDUxMiBhZGRlZCB0aGVzZSB3b3JrZmxvdyBmaWVsZHMKICAgIAogICAgLy9UT0RPIHB1dCBjbGllbnQgc3BlY2lmaWMgZGF0YSB1cGRhdGVzIGhlcmUKICAgIAogICAgdmFyIG5ld0lkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgc2ZUeXBlLCBsYWJlbCwgYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gbmV3SWQ7Cn07Cgp6RGF0YS5jbGllbnRSZWNvcmRUeXBlPWZ1bmN0aW9uKGRvYyxzZlR5cGUsYXJyT2ZQYWlycyxsYWJlbCx6ZCkgeyAvL0VSUzE5MDYyMCBjbGllbnRSZWNvcmQgZ2VuZXJpYwogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CiAgICBpZiAoIWxhYmVsKSB7IGxhYmVsPXpkLnN0YWdlICsgIi0iICsgemQudHJpYWdlVHlwZSArICItIiArIHpkLnN0YWNrSWQ7fQogICAgLy9FUlMxNzA1MjAgYXJyT2ZQYWlycy5wdXNoKCJPd25lcklkIiwgcXVldWVzTWFwS2x1ZGdlW1goZG9jLCJYX0Fzc2lnbl90b19RdWV1ZV9fYyIpXSk7CiAgICB2YXIgenA9IiI7CiAgIAogICAgdmFyIG5ld0lkID0gY3JlYXRlQW5kQXR0YWNoKGRvYywgc2ZUeXBlLCBsYWJlbCwgYXJyT2ZQYWlycyk7CiAgICByZXR1cm4gbmV3SWQ7Cn07CiAgIAp6RGF0YS5jbGllbnRSZWNvcmRUeXBlTm9BdHRhY2g9ZnVuY3Rpb24oZG9jLHNmVHlwZSxhcnJPZlBhaXJzLGxhYmVsLHpkKSB7IC8vIFBWMTkxMjA5IGNsaWVudFJlY29yZCBnZW5lcmljCiAgICBpZiAoIXpkKSB6ZD16RGF0YTsKICAgIGlmICghbGFiZWwpIHsgbGFiZWw9emQuc3RhZ2UgKyAiLSIgKyB6ZC50cmlhZ2VUeXBlICsgIi0iICsgemQuc3RhY2tJZDt9CiAgICAvL0VSUzE3MDUyMCBhcnJPZlBhaXJzLnB1c2goIk93bmVySWQiLCBxdWV1ZXNNYXBLbHVkZ2VbWChkb2MsIlhfQXNzaWduX3RvX1F1ZXVlX19jIildKTsKICAgIHZhciB6cD0iIjsKICAgIHZhciBuZXdJZCA9IGNyZWF0ZVNGUmVjb3JkKGRvYywgc2ZUeXBlLCBudWxsLCBhcnJPZlBhaXJzKTsgIC8vQ1JOMTkxMjEzIERvbid0IHNlbmQgaW4gdGhlIG5hbWUgcGFyYW1ldGVyLCBpdCBzY3Jld3MgdXAgcmVjb3JkcyB0aGF0IGhhdmUgQXV0byBOdW1iZXIgTmFtZSBmaWVsZHMKICAgIC8vdmFyIG5ld0lkID0gY3JlYXRlUyhkb2MsIHNmVHlwZSwgbGFiZWwsIGFyck9mUGFpcnMpOwogICAgcmV0dXJuIG5ld0lkOwp9OwoKCnpEYXRhLmNsaWVudENvbXBsZXRlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHpkKSB7cmV0dXJuIGFyck9mUGFpcnM7fTsgLy9FUlMxOTA2MjUKekRhdGEuY2xpZW50RGVsaXZlcnk9ZnVuY3Rpb24oZG9jLGFyck9mUGFpcnMpIHtyZXR1cm4gYXJyT2ZQYWlyczt9OyAvL0VSUzE5MDcxMSAjNjA5MDAgUEFPUwoKekRhdGEuY2xpZW50Q2hpbGRTdGFjaz1mdW5jdGlvbihkb2MsYXJyT2ZQYWlycyxwYXJlbnRJZCkgeyAvL0VSUzE5MDgxMCAjNjE1NzAgYmUgc3VyZSB0byBjYWxsIG9uIG5ldyBjaGlsZCBkb2MKICAgIHZhciBwYWlycz1hcnJPZlBhaXJzOwogICAgLy9ubyBtZW1vcnkgb2Ygc3RhY2sgY3JlYXRpb24gdmFyIHBhaXJzPXpEYXRhLnN0YWNrUGFpcnM7CiAgICB6RGF0YS5yZXZpZXdlZFN0YXR1cz0iU3BsaXQiOwogICAgLy9FUlMxOTA4MTAgVE9ETz8gcGFpcnMucHVzaCgiWlBBUEVSX19TdGF0dXNfX2MiLCAiQ2hpbGQgU3RhY2siKTsKCiAgICBwYWlycz16RGF0YS5jbGllbnRTdGFjayhkb2MscGFpcnMpOwogICAgaWYgKFhDdXN0b21TZXR0aW5nKGRvYywiWlBBUEVSX196Q2hpbGRGaWVsZHNfX2MiKSkgeyAvL0VSUzE5MDgxMSBub3QgaW4gYWxsIE1QcwogICAgICAgIHBhaXJzPXpEYXRhLmNsaWVudEZpZWxkcyhkb2MscGFpcnMsWEN1c3RvbVNldHRpbmcoZG9jLCJaUEFQRVJfX3pDaGlsZEZpZWxkc19fYyIpKTsgLy9FUlMxOTA4MDMgIzUyNjYxIHVzaW5nIEpTT04gY2hpbGQgcmVjb3JkIHR5cGUgaWQKICAgIH0KICAgIHBhaXJzLnB1c2goIlpQQVBFUl9fUGFyZW50X19jIiwgcGFyZW50SWQpOwogICAgYWxlcnQoIkVSUzE5MDgxMS4xOTEgWlBBUEVSX19QYXJlbnRfX2MiKyBwYXJlbnRJZCk7CiAgICB2YXIgY2hpbGRTdGFja1NGSWQgPSBjcmVhdGVBbmRBdHRhY2goZG9jLCAiWlBBUEVSX196U3RhY2tfX2MiLCAielN0YWNrIHNwbGl0IG9uICIgKyB6RGF0YS5mb3JtYXROb3csIHBhaXJzKSArICIiOwogICAgcmV0dXJuIGNoaWxkU3RhY2tTRklkOwp9Cgp6RGF0YS5jbGllbnRTdGFja0NvbXBsZXRlPWZ1bmN0aW9uKGRvYyxhcnJPZlBhaXJzLHpkKSB7IC8vRVJTMjAwMzE0ICM3MDMzNgogICAgaWYgKCF6ZCkgemQ9ekRhdGE7IC8vRVJTMjAwNDA2ICM3MTE1NgogICAgYXJyT2ZQYWlycy5wdXNoKCJUaW1lX0NvbXBsZXRlX0RhdGVfX2MiLHpkLmZvcm1hdE5vdyk7IC8vZm9yIGRhc2hib2FyZAogICAgcmV0dXJuIGFyck9mUGFpcnM7Cn07IC8vRVJTMTkwNjI1Cgp6RGF0YS5jbGllbnRMaWdodG5pbmdGaWxlPWZ1bmN0aW9uKGRvYyxzZklkLHpkKSB7IC8vRVJTMjAwNDI4ICM3MDk1MyB1c2UgaW4gSW5kZXggaWYgY2FzZUlkIGFuZCBERUxJVkVSWV9DT01QTEVURQogICAgaWYgKCF6ZCkgemQ9ekRhdGE7CiAgICBpZiAoIWRvYy5rYkRhdGEuc2ZTZXJ2ZXIpIHsgYWxlcnQoImRvYy5rYkRhdGEuc2ZTZXJ2ZXIgd2FzIGVtcHR5LiIpOyBkb2Mua2JEYXRhLnNmU2VydmVyPSJhYmJ2aWVvbmVjcm0tLXYzZGV2LmxpZ2h0bmluZy5mb3JjZS5jb20iOyB9IC8vRVJTMjAwNDI4IEhBQ0sKICAgIHZhciB6c2VydmVyID0gZG9jLmtiRGF0YS5zZlNlcnZlci5pbmRleE9mKCJodHRwczovLyIpPT0wID8gZG9jLmtiRGF0YS5zZlNlcnZlciA6ICJodHRwczovLyIgKyBkb2Mua2JEYXRhLnNmU2VydmVyOyAvL0VSUzIwMDQyOCB3YXMgc3RhcnRzV2l0aCBvbmx5IG5hc2hvcm4KICAgIC8vdmFyIHpzZXJ2ZXIgPSBkb2Mua2JEYXRhLnNmU2VydmVyLnN0YXJ0c1dpdGgoImh0dHBzOi8vIikgPyBkb2Mua2JEYXRhLnNmU2VydmVyIDogImh0dHBzOi8vIiArIGRvYy5rYkRhdGEuc2ZTZXJ2ZXI7CiAgICB2YXIgZG9jdXJsID0genNlcnZlciArICIvc2VydmljZXMvZGF0YS92NDYuMC9zb2JqZWN0cy9Db250ZW50VmVyc2lvbi8iOwogICAgdmFyIHBkZnVybCA9ICJodHRwczovL2d3LnpwYXBlci5jb20va2IvanNwL1NGX2ZpbmQubGlnaHRuaW5nLmpzcD9nbz1TRl9maWxlcy5qc3AmZGJJRD0iICsgZG9jLmRiSUQgKyAiJlNGb3JnPSIgKyBkb2Mua2JEYXRhLnNmT3JnYW5pemF0aW9uSUQ7CiAgICB2YXIgQ29udGVudFZlcnNpb25DYXRlZ29yaWVzID0gewogICAgICAgICJPVEgiOiAiT3RoZXIgRG9jdW1lbnRzIiwKICAgICAgICAiTUlGIjogIk1pc3NpbmcgSW5mb3JtYXRpb24iLAogICAgICAgICJFTlJMIjogIkVucm9sbG1lbnQgRm9ybSIsCiAgICAgICAgIk1FRE8iOiAiTWVkaWNhbCAtIE90aGVyIiwKICAgICAgICAiQ09OUyI6ICJDb25zZW50IEZvcm1zIiwKICAgICAgICAiQ09NRFIiOiAiQ29tbXVuaWNhdGlvbiBmcm9tIFBoeXNpY2lhbnMiLAogICAgICAgICJSWCI6ICJQcmVzY3JpcHRpb24iLAogICAgICAgICJTQSI6ICJTQSBEb2N1bWVudHMiLAogICAgICAgICJNRURDIjogIk1lZGljYWwgQ2xhcmlmaWNhdGlvbiIsCiAgICAgICAgIkxBQiI6ICJMYWIgRG9jdW1lbnRzIiwKICAgICAgICAiSU5KUiI6ICJJbmplY3Rpb24gUmVwb3J0IiwKICAgICAgICAiQ0EiOiAiQ2xpbmljYWwgQXNzZXNzbWVudCIsCiAgICAgICAgIkNPUEFZIjogIkNvcGF5IgogICAgfQogICAgdmFyIGRhdGVzdHIgPSBnZXRDdXJEYXRlKGRvYyk7CiAgICB2YXIgYWNjbmFtZSA9IFgoZG9jLCAiWF9aUEFQRVJfX1BhdGllbnRBY2NvdW50X19yLk5hbWUiKTsKICAgIHZhciBmYXh0eXBlID0gWChkb2MsICJYX1pQQVBFUl9fZmF4VHlwZV9fYyIpOwogICAgdmFyIHJldnN0YXQgPSBYKGRvYywgIlhfcmV2aWV3ZWRTdGF0dXMiKTsKICAgIHZhciBjYXR0eXBlID0gQ29udGVudFZlcnNpb25DYXRlZ29yaWVzW2ZheHR5cGVdIHx8IGZheHR5cGU7CiAgICBhbGVydCgiQEBAQCBDbGVhbmluZyB1cCBkYXRhOiBYKGRvYywgJ1hfU3ViX0NhdGVnb3J5X19jJykgPT4gIiArIFgoZG9jLCAiWF9TdWJfQ2F0ZWdvcnlfX2MiKSArICIgLSB6RGF0YS5YX1N1Yl9DYXRlZ29yeV9fYyA9PiAiICsgekRhdGEuWF9TdWJfQ2F0ZWdvcnlfX2MpOwogICAgdmFyIGRvY2RhdGEgPSB7CiAgICAgICAgIlRpdGxlIjogYWNjbmFtZSArICIgLSAiICsgZmF4dHlwZSArICIgLSAiICsgZGF0ZXN0ciwKICAgICAgICAiRGVzY3JpcHRpb24iOiByZXZzdGF0ICsgIiBieTogIiArIGRvYy5zZlVzZXJOYW1lICsgIiBhdDogIiArIHpEYXRhLmZvcm1hdE5vdywKICAgICAgICAiRmlyc3RQdWJsaXNoTG9jYXRpb25JZCI6IHNmSWQsCiAgICAgICAgIkNvbnRlbnRVcmwiOiBwZGZ1cmwsCiAgICAgICAgIkNPUkVfTGVnYWN5X0RvY3VtZW50X0lEX19jIjogcGRmdXJsLAogICAgICAgICJDb3JlX0NvdW50cnlDb2RlX19jIjogIkNBIiwKICAgICAgICAiQ29yZV9DYXRlZ29yeV9fYyI6IGNhdHR5cGUsCiAgICAgICAgIkNvcmVfU3ViX0NhdGVnb3J5X19jIjogWChkb2MsICJYX1N1Yl9DYXRlZ29yeV9fYyIpICAgICAvL0NSTjIwMDUwNSB6RGF0YSBpcyBob2xkaW5nIG9sZCwgaW52YWxpZCB2YWx1ZSBwdWxsZWQgZnJvbSB3ZGRhdGEgaW5zdGVhZCBvZiB3aGF0IHRoZSB1c2VyIGN1cnJlbnRseSBjaG9zZS4KLy8gICAgICAgICJDb3JlX1N1Yl9DYXRlZ29yeV9fYyI6IHpEYXRhLlhfU3ViX0NhdGVnb3J5X19jCiAgICB9OwogICAgdmFyIGhlYWRlcnMgPSBbCiAgICAgICAgIkF1dGhvcml6YXRpb24iLCAiQmVhcmVyICIgKyBkb2Mua2JEYXRhLnNmU2Vzc2lvbklELAogICAgICAgICJDb250ZW50LVR5cGUiLCAiYXBwbGljYXRpb24vanNvbiIKICAgIF07CiAgICB2YXIgYm9keSA9IEpTT04uc3RyaW5naWZ5KGRvY2RhdGEpOwogICAgYWxlcnQoIkBAQCBDcmVhdGluZyBDb250ZW50VmVyc2lvbiB3aXRoIGpzb24gPT4gIiArIGJvZHkpOwogICAgdmFyIG5ld0lkPSIiOwogICAgdHJ5IHsKICAgICAgICB2YXIgcmVzID0gd3Bvc3QoZG9jLCBkb2N1cmwsIFtdLCBoZWFkZXJzLCBib2R5KTsKICAgICAgICBhbGVydCgid3Bvc3QgcmVzcG9uc2U6ICIgKyByZXMpOwogICAgICAgIG5ld0lkPXJlczsgLy9FUlMyMDA0MjggVE9ETyBnZXQgdGhlIG5ldyBJZCBUT0RPIHRlc3Qgd2l0aCBsZWdhY3kgZW5naW5lIHZzIHppcHBpIG5hc2hvcm4gLy9TSFIgc2FpZCBtYXliZSEhIQogICAgfQogICAgY2F0Y2goZXgpIHsKICAgICAgICBhbGVydCgid3Bvc3QgZXhjZXB0aW9uOiAiICsgZXgpOwogICAgICAgIHRyeSB7CiAgICAgICAgICAgIHZhciBtZXNzID0gSlNPTi5wYXJzZShleCk7CiAgICAgICAgICAgIGlmIChtZXNzICYmIEFycmF5LmlzQXJyYXkobWVzcykgJiYgbWVzc1swXS5lcnJvckNvZGUpIHsKICAgICAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQoYEVycm9yIGNyZWF0aW5nIENvbnRlbnRWZXJzaW9uISAiICsgbWVzc1swXS5lcnJvckNvZGUgKyAiID0+ICIgKyBtZXNzWzBdLm1lc3NhZ2UgKyAiYCk7Iik7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICAgICAgY2F0Y2gocGV4KSB7CiAgICAgICAgICAgIGFkZFBvc3RFeGVjdXRpb25TY3JpcHQoZG9jLCAiYWxlcnQoYEVycm9yIHBhcnNpbmcgSlNPTiByZXBzcG9uc2U6ICIgKyBleCArICJgKTsiKTsKICAgICAgICB9CiAgICB9CiAgICByZXR1cm4gbmV3SWQ7Cn0KCmFsZXJ0KCJlbmQgY2xpZW50IGxpYnJhcnkiKTsgLy9FUlMxOTA2MTUgIzU4OTIxCg=="},"ordinal":2}

//--- RULE JSON REPRESENTATION - END ---

//--- RULE CONSEQUENCE CODE ---
alert("start client library"); //ERS190803 #52661 from OccFit
//ERS200412 massive code review and intermix for zChannels #70953 //ERS200429 #72063

zData.maxChannels=3; //ERS190731 #61272 zippi is strongly typed
zData.makeStack=true; //ERS190814 #61511

zData.watermark=""+XCustomSetting(doc,"watermark__c"); //ERS190618 best practice
//alert("ERS190411 wm="+zData.watermark+" ZPAPER__server__c="+XCustomSetting(doc,"ZPAPER__server__c"));
zData.uploadDir = ""+XCustomSetting(doc,"uploadDir__c"); //"alkermesRoot";
zData.patEnrollQueueId = ""+XCustomSetting(doc,"patientQueueId__c"); //'00G4C000000LkmZ'; //insert the Queue ID of the desired ownership queue. Update when migrating between environments. Need to add this queue in Setup
zData.recTypeRequest = ""+XCustomSetting(doc,"recTypeRequest__c"); //'0124C000000Cj5Y'; //ID of the Case Record Type Request_PS_MVN

var cs=XDeploymentInfo(doc, "Business_Process__c"); //ERS200222 need both deployment info and cs
//alert("cs="+cs);
if (cs) {
    if (cs.indexOf("zCustomSettings")>-1) cs=X(doc,"zCustomSettings",cs);
    alert("ERS200225 EVAL on "+cs);
    if (cs !== "") eval(""+cs); //ERS200222 TODO JSON.parse() //ERS200225 beeds to be eval but also needs to work!!!
    alert("No try just do!");
}

zData.clientImportSOQL=function(doc,fromFile) { //ERS190706 customize imports used by Create Stack
    zData.importer=XCustomSetting(doc,zData.zp+"Importer__c").trim();
    var sfId="";
    var parts=fromFile.split("_");
    //sfId = getSFRecordID(doc, "Account", { "Fax" : parts[3] } );
    zData.makeStack=true; //do all the work there by default
    return sfId;
};

//alert("zData.clientStack");
zData.clientStack=function(doc,arrOfPairs) { //zData or this?
    var zp=zData.zp; if (!zp) zp="ZPAPER__"; //ERS190805
    if (zData.received) arrOfPairs.push("zStack_Received__c", zData.formatNow); //ERS190617 TODO save way to do this
    if (zData.ownerId) arrOfPairs.push("OwnerId",zData.ownerId);  // zCharta Queue "00G36000002CyTK"
    if (zData.callerId) arrOfPairs.push("zCaller_ID__c", doc.deliveredFrom); //MSH170817 added
    if (zData.patEnrollQueueId) arrOfPairs.push("OwnerId",zData.patEnrollQueueId);

    arrOfPairs.push("ZPAPER__faxType__c", zData.docType); // PV191029 commented
    arrOfPairs.push("ZPAPER__Classification__c", zData.classification);
    var pageRange = X(doc,"X_idxPages");
    if(pageRange){ //Pv191028 to update number of pages only if we are doing index on stack record
        var pageCount = zData.countPages(doc, pageRange);  
        arrOfPairs.push("ZPAPER__Pages__c", pageCount);
    }
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814
    //ERS190810 TODO? arrOfPairs.push("ZSTACK__Received__c", zData.formatNow);
    if (zData.classification === zData.PROGRAM_ZCHARTA) {
    arrOfPairs.push(zp+"Priority__c", "Urgent"); //JPB190426 changed to classification from program//PV191004 updated from Urgent
    } else if (zData.classification === zData.PROGRAM_ZPAPYRUS) {
    arrOfPairs.push(zp+"Priority__c", "High");
    } else if (zData.classification === zData.PROGRAM_ZCARTA) {
    arrOfPairs.push(zp+"Priority__c", "Critical");
    }else if (arrOfPairs.indexOf(zp+"Priority__c")<0) {
        arrOfPairs.push(zp+"Priority__c", "Unassigned");
     }
   
   
    arrOfPairs.push(zp+"sentFaxTo__c", ("Community" === zData.channel ? zData.channel : doc.deliveredTo)); //JPB190529 added so Community shows up in Master Intake List
    arrOfPairs.push(zp+"From__c",doc.deliveredFrom);
    if (zData.reviewedStatus) {arrOfPairs.push(zp+"Stage__c", zData.reviewedStatus); }
    else { arrOfPairs.push(zp+"Stage__c", "Received"); }
    zData.stackPairs=arrOfPairs; //ERS190810 #61570 for child stack later
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__zStackFields__c")); //ERS190803 #52661 using JSON
return arrOfPairs;
};

//alert("zData.clientFile");
zData.clientFile=function(doc,stage) { //ERS170829 #41298 returns a label to be used in any attaches and fixes the doc
    //Document attachment label should be "Patient Name - Doc Type - Date".  Confirmed for zPaper File and SFDC Attachment
    var MMddYYYY = zData.formatTodayMMddYYYYNew();
    doc.label= zData.X_ZPAPER__FirstName__c+ " " +zData.X_ZPAPER__LastName__c +" - "+X(doc,"X_ZPAPER__faxType__c")+" - "+MMddYYYY; //PV191008 to update for existing patient on child stack
    alert("ERS170829 dbID="+doc.dbID+" label="+doc.label);
    if (zData.sfID  && zData.sfID.indexOf("500")===0) {
   zData.provider = getSFField(doc, "Case", "Account.Name", null, zData.sfID);
   label = "Received from " + zData.provider;
        //if (zData.facility) {
            //zData.facility = getSFField(doc, "Case", "Account.Facility__r.Name", null, zData.sfID);
           // doc.label+=" at "+zData.facility;
        //}
}

var arrOfPairs = [];
    arrOfPairs.push("db-label", doc.label);
    updateDB(doc,arrOfPairs);
    return doc.label;
};
//PV200413 adding function
zData.formatTodayMMddYYYYNew = function(doc) { //MSH170831 extract date format from zData.nameFile 
var today = new Date();
var curMonth = today.getMonth() + 1;
//MSH170906 pad day with zero
var curDay = today.getDate();
//MSH170906 var MMddYYYY = (""+(curMonth > 9 ? curMonth+"" : "0"+curMonth)+""+today.getDate()+""+today.getFullYear());
var MMddYYYY = (today.getFullYear()+ "-"+(curMonth > 9 ? curMonth+"-" : "0"+curMonth)+(""+(curDay > 9 ? curDay+"" : "0"+curDay)));
//alert("MMddYYYY == " + MMddYYYY);
return MMddYYYY;
};
zData.clientValue=function(doc,val) {//ERS190803 #52661 using JSON
    val=val.replace("{!formatNow}",zData.formatNow);
    return val;
}

zData.clientFields=function(doc,arrOfPairs,jd,zd) { //ERS190803 #52661 using JSON in setting to configure new record
    if (!zd) zd=zData;
    if (jd && jd.indexOf("{")===0) {
       //{"Type":"Eligibility","OwnerId":"00Gc0000003vgqw","RecordTypeId":"0126A000000JEKeQAO"};
       //NOT A GOOD IDEA jd=jd.replaceAll("\"","'"); //ERS190811 #61570 HACK?
       try {
           var jdata=JSON.parse(jd); //ERS190805 better than eval
           for (var n in jdata) {
               var v0=jdata[n];
               var v=zData.clientValue(doc,v0); //ERS190811 ,v now ,v0
               //alert("ERS190803.97 "+n+"="+v0+"="+v);
               arrOfPairs.push(n,v); //ERS190811 added .push
           }
       } catch (e) {
           alert("JSON not in "+jd+" Exception: "+e); //ERS190811 added e
       }
    }
    alert("@@@@ Prathyusha jd @@@@ "+jd);
    return arrOfPairs;
}


zData.clientCase=function(doc,arrOfPairs,label,zd) {
    if (!zd) zd=zData;
    if (!zd.triageType && X(doc,"X_ZPAPER__faxType__c")) zd.triageType=X(doc,"X_ZPAPER__faxType__c"); //ERS200308
    if (!label) { label="Indexed-" + "-" + zd.triageType + "-" + zd.stackId;}
    //ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
    if (zd.contactId) arrOfPairs.push("ContactId", zd.contactId);
    arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
    arrOfPairs.push("ZPAPER__latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields
    arrOfPairs.push("Status", X(doc,"X_Status"));
    arrOfPairs.push("Type", "New "+zd.classification); //JPB 170512 added these workflow fields
    if (1==1) { //ERS170523 #37162 after dryrun
        //arrOfPairs.push("RecordTypeId","012Q00000005Ahj"); //ERS170523 Prior Auth
        if (zd.priority != "Normal") arrOfPairs.push("Priority",zd.priority);  //ERS170524 #37162 priority on Case
        else arrOfPairs.push("Priority","Medium");
        arrOfPairs.push("Origin",zd.channel);
    }
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__CaseFields__c")); //ERS190803 #52661 using JSON
    alert("ERS200308.143 new Case providerId="+zd.providerId+" patientId="+zd.patientId);
    if (zd.providerId && zd.providerId.indexOf("001")==0) { arrOfPairs.push("AccountId", zd.providerId); } //ERS200308
    if (zd.providerId && zd.providerId.indexOf("003")==0) { arrOfPairs.push("ContactId", zd.providerId); } //ERS200308
    if (zd.patientId && zd.patientId.indexOf("001")==0) { arrOfPairs.push("AccountId", zd.patientId); } //ERS200308
    if (zd.patientId && zd.patientId.indexOf("003")==0) { arrOfPairs.push("ContactId", zd.patientId); } //ERS200308
    if (zd.zchannel.owner) { arrOfPairs.push("OwnerId", zData.zchannel.owner); } //ERS200308
    var caseId = createAndAttach(doc, "Case", label, arrOfPairs);
    return caseId;
};

zData.clientPatient=function(doc,arrOfPairs,label,zd) {
    if (!zd) zd=zData;
    if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
    //ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
    arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
    arrOfPairs.push("ZPAPER__latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields
    
        //var rt=XCustomSetting(doc,"PatientRecordType__c"); //TODO into MP ERS190802 like 0126A000000JE8yQAG or empty to use default
        //if (rt) { arrOfPairs.push("RecordTypeId", rt);} //ERS190803//PV191111 commented
        //TODO Contact or Account ERS190624 DONE!! ERS190802
    arrOfPairs=zData.clientFields(doc,arrOfPairs,XCustomSetting(doc,"ZPAPER__PatientFields__c")); //ERS190803 #52661 using JSON
    var sfId = createAndAttach(doc, zData.patientType, label, arrOfPairs); //ERS190803 #61272
    
    //ERS190803 specific to client data entry
    var dq = zData.dq;
    addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c" + dq + ").val(" + dq + sfId + dq + "); ");
    addPostExecutionScript(doc, " $(" + dq + "#Person_Account__c_Name" + dq + ").val(" + dq + zData.X_ZPAPER__FirstName__c + " " + zData.X_ZPAPER__LastName__c + dq + "); ");
    return sfId;
};

zData.clientAccount=function(doc,arrOfPairs,label,zd) {
    if (!zd) zd=zData;
    if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
    //ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
    arrOfPairs.push("ZPAPER__newFax__c", "true"); //JPB 170512 added these workflow fields
    arrOfPairs.push("ZPAPER__latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
    arrOfPairs.push("ZPAPER__receivedId__c", doc.dbID); //ERS190814 //JPB 170512 added these workflow fields
    
    var accountId = createAndAttach(doc, "Account", label, arrOfPairs);
    return accountId;
};

zData.clientRecord=function(doc,sfType,arrOfPairs,label,zd) { //ERS190620 clientRecord generic
    if (!zd) zd=zData;
    if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
    //ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
    var zp="";
    if (",Case,Contact,Account,Lead,Opportunity,ZPAPER__zStack__c,".toLowerCase().indexOf(","+sfType.toLowerCase()+",")>-1) zp=zData.zp;
    //only do this if the fields exist
    arrOfPairs.push(zp+"newFax__c", "true"); //JPB 170512 added these workflow fields
    arrOfPairs.push(zp+"latestFax__c", zd.formatNow); //JPB 170512 added these workflow fields
    arrOfPairs.push(zp+"receivedId__c", "doc.dbID.Rec"); //JPB 170512 added these workflow fields
    
    //TODO put client specific data updates here
    
    var newId = createAndAttach(doc, sfType, label, arrOfPairs);
    return newId;
};

zData.clientRecordType=function(doc,sfType,arrOfPairs,label,zd) { //ERS190620 clientRecord generic
    if (!zd) zd=zData;
    if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
    //ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
    var zp="";
   
    var newId = createAndAttach(doc, sfType, label, arrOfPairs);
    return newId;
};
   
zData.clientRecordTypeNoAttach=function(doc,sfType,arrOfPairs,label,zd) { // PV191209 clientRecord generic
    if (!zd) zd=zData;
    if (!label) { label=zd.stage + "-" + zd.triageType + "-" + zd.stackId;}
    //ERS170520 arrOfPairs.push("OwnerId", queuesMapKludge[X(doc,"X_Assign_to_Queue__c")]);
    var zp="";
    var newId = createSFRecord(doc, sfType, null, arrOfPairs);  //CRN191213 Don't send in the name parameter, it screws up records that have Auto Number Name fields
    //var newId = createS(doc, sfType, label, arrOfPairs);
    return newId;
};


zData.clientComplete=function(doc,arrOfPairs,zd) {return arrOfPairs;}; //ERS190625
zData.clientDelivery=function(doc,arrOfPairs) {return arrOfPairs;}; //ERS190711 #60900 PAOS

zData.clientChildStack=function(doc,arrOfPairs,parentId) { //ERS190810 #61570 be sure to call on new child doc
    var pairs=arrOfPairs;
    //no memory of stack creation var pairs=zData.stackPairs;
    zData.reviewedStatus="Split";
    //ERS190810 TODO? pairs.push("ZPAPER__Status__c", "Child Stack");

    pairs=zData.clientStack(doc,pairs);
    if (XCustomSetting(doc,"ZPAPER__zChildFields__c")) { //ERS190811 not in all MPs
        pairs=zData.clientFields(doc,pairs,XCustomSetting(doc,"ZPAPER__zChildFields__c")); //ERS190803 #52661 using JSON child record type id
    }
    pairs.push("ZPAPER__Parent__c", parentId);
    alert("ERS190811.191 ZPAPER__Parent__c"+ parentId);
    var childStackSFId = createAndAttach(doc, "ZPAPER__zStack__c", "zStack split on " + zData.formatNow, pairs) + "";
    return childStackSFId;
}

zData.clientStackComplete=function(doc,arrOfPairs,zd) { //ERS200314 #70336
    if (!zd) zd=zData; //ERS200406 #71156
    arrOfPairs.push("Time_Complete_Date__c",zd.formatNow); //for dashboard
    return arrOfPairs;
}; //ERS190625

zData.clientLightningFile=function(doc,sfId,zd) { //ERS200428 #70953 use in Index if caseId and DELIVERY_COMPLETE
    if (!zd) zd=zData;
    if (!doc.kbData.sfServer) { alert("doc.kbData.sfServer was empty."); doc.kbData.sfServer="abbvieonecrm--v3dev.lightning.force.com"; } //ERS200428 HACK
    var zserver = doc.kbData.sfServer.indexOf("https://")==0 ? doc.kbData.sfServer : "https://" + doc.kbData.sfServer; //ERS200428 was startsWith only nashorn
    //var zserver = doc.kbData.sfServer.startsWith("https://") ? doc.kbData.sfServer : "https://" + doc.kbData.sfServer;
    var docurl = zserver + "/services/data/v46.0/sobjects/ContentVersion/";
    var pdfurl = "https://gw.zpaper.com/kb/jsp/SF_find.lightning.jsp?go=SF_files.jsp&dbID=" + doc.dbID + "&SForg=" + doc.kbData.sfOrganizationID;
    var ContentVersionCategories = {
        "OTH": "Other Documents",
        "MIF": "Missing Information",
        "ENRL": "Enrollment Form",
        "MEDO": "Medical - Other",
        "CONS": "Consent Forms",
        "COMDR": "Communication from Physicians",
        "RX": "Prescription",
        "SA": "SA Documents",
        "MEDC": "Medical Clarification",
        "LAB": "Lab Documents",
        "INJR": "Injection Report",
        "CA": "Clinical Assessment",
        "COPAY": "Copay"
    }
    var datestr = getCurDate(doc);
    var accname = X(doc, "X_ZPAPER__PatientAccount__r.Name");
    var faxtype = X(doc, "X_ZPAPER__faxType__c");
    var revstat = X(doc, "X_reviewedStatus");
    var cattype = ContentVersionCategories[faxtype] || faxtype;
    alert("@@@@ Cleaning up data: X(doc, 'X_Sub_Category__c') => " + X(doc, "X_Sub_Category__c") + " - zData.X_Sub_Category__c => " + zData.X_Sub_Category__c);
    var docdata = {
        "Title": accname + " - " + faxtype + " - " + datestr,
        "Description": revstat + " by: " + doc.sfUserName + " at: " + zData.formatNow,
        "FirstPublishLocationId": sfId,
        "ContentUrl": pdfurl,
        "CORE_Legacy_Document_ID__c": pdfurl,
        "Core_CountryCode__c": "CA",
        "Core_Category__c": cattype,
        "Core_Sub_Category__c": X(doc, "X_Sub_Category__c")     //CRN200505 zData is holding old, invalid value pulled from wddata instead of what the user currently chose.
//        "Core_Sub_Category__c": zData.X_Sub_Category__c
    };
    var headers = [
        "Authorization", "Bearer " + doc.kbData.sfSessionID,
        "Content-Type", "application/json"
    ];
    var body = JSON.stringify(docdata);
    alert("@@@ Creating ContentVersion with json => " + body);
    var newId="";
    try {
        var res = wpost(doc, docurl, [], headers, body);
        alert("wpost response: " + res);
        newId=res; //ERS200428 TODO get the new Id TODO test with legacy engine vs zippi nashorn //SHR said maybe!!!
    }
    catch(ex) {
        alert("wpost exception: " + ex);
        try {
            var mess = JSON.parse(ex);
            if (mess && Array.isArray(mess) && mess[0].errorCode) {
                addPostExecutionScript(doc, "alert(`Error creating ContentVersion! " + mess[0].errorCode + " => " + mess[0].message + "`);");
            }
        }
        catch(pex) {
            addPostExecutionScript(doc, "alert(`Error parsing JSON repsponse: " + ex + "`);");
        }
    }
    return newId;
}

alert("end client library"); //ERS190615 #58921

//--- RULE CONSEQUENCE CODE - END ---

//--- RULE VALIDATION CODE ---
//--- RULE VALIDATION CODE - END ---

</script>
