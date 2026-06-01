' Far Far West - Memory Editor Launcher
' Double-click to run silently (no console window)

Set WshShell = CreateObject("WScript.Shell")
scriptDir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
WshShell.CurrentDirectory = scriptDir
WshShell.Run "pythonw.exe """ & scriptDir & "\editor.pyw""", 0, False
