#include <IE.au3>

If WinExists("[CLASS:IEFrame]") Then
	Local $iHandle = WinGetHandle("[Class:IEFrame]")
	WinActivate($iHandle)
	Sleep(2000)
	WinWaitActive("[Class:IEFrame]", "", 4)
	Send("!d")
	Send("^a")
	Send("^c")
	MsgBox(0, "URL", "IE Browser URL "&ClipGet(), 5)
Else
	MsgBox(0, "", "IE Doesn't Exist", 3)
EndIf

Sleep(3000)

If WinExists("[CLASS:MozillaWindowClass]") Then
	Local $wHandle = WinGetHandle("[Class:MozillaWindowClass]")
	WinActivate($wHandle)
	Sleep(2000)
	Send("^l")
	Send("^a")
	Send("^c")
	MsgBox(0, "URL", "Mozilla Browser URL "&ClipGet(), 5)
Else
	MsgBox(0, "", "Mozilla Window Doesn't Exist", 3)
EndIf