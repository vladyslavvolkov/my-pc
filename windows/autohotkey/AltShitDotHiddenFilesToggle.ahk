; Alt + Shift + . - Toggles hidden files on/off
; ^ is actually Ctrl, but acts as Alt since they swapped
^+SC034::
	RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden
	If HiddenFiles_Status = 2
		RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
	Else
		RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
		WinGetClass, eh_Class,A
	Send, {F5}
Return
