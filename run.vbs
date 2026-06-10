' Far Far West - Gold & Soul Editor
' Silent launcher (no console window). Run run.bat first to install dependencies.

Set WshShell = CreateObject("WScript.Shell")
scriptDir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
WshShell.CurrentDirectory = scriptDir

' Try pythonw (no console) first, fall back to python
On Error Resume Next
WshShell.Run "pythonw.exe """ & scriptDir & "\editor.pyw""", 0, False
If Err.Number <> 0 Then
    Err.Clear
    WshShell.Run "python.exe """ & scriptDir & "\editor.pyw""", 0, False
End If
On Error Goto 0
