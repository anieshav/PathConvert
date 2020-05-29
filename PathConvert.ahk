#SingleInstance
#Include %A_ScriptDir%
#Include Functions.ahk

SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive, ahk_exe WindowsTerminal.exe
^+Enter::
	path:=win_to_gitbash(sanitized_clipboard())	
	Send %path%
	return
#IfWinActive

#IfWinActive, ahk_exe  mintty.exe
^+Enter::
	path:=win_to_gitbash(sanitized_clipboard())
	send %path%
	return
#IfWinActive

#IfWinActive, ahk_exe explorer.exe
^+Insert::	
	path:=gitbash_to_win(sanitized_clipboard())
	send %path%
	return
#IfWinActive

