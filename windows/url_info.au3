#include <IE.au3>

If WinExists("[CLASS:IEFrame]") Then
	Local $iHandle = WinWait("[CLASS:IEFrame]", "", 5)
	WinActivate($iHandle)
	;WinWaitActive($iHandle, "", 4)
	Sleep(5000)
	Send("!d")
	Send("^a")
	Send("^c")
	$url = _IEPropertyGet($iHandle, "locationurl")
	MsgBox(0, "URL", "IE Browser URL " &ClipGet(), 5)
Else
	MsgBox(0, "", "IE Doesn't Exist", 3)
EndIf

Sleep(3000)

If WinExists("[CLASS:MozillaWindowClass]") Then
	Local $wHandle = WinWait("[CLASS:MozillaWindowClass]", "", 5)
	WinActivate($wHandle)
	;WinWaitActive("[Class:MozillaWindowClass]", "", 4)
	Sleep(5000)
	Send("^l")
	Send("^a")
	Send("^c")
	MsgBox(0, "URL", "Mozilla Browser URL "&ClipGet(), 5)
Else
	MsgBox(0, "", "Mozilla Window Doesn't Exist", 3)
EndIf

Sleep(3000)

If WinExists("[CLASS:Chrome_WidgetWin_1]") Then
	Local $cHandle = WinWait("[CLASS:Chrome_WidgetWin_1]", "", 5)
	WinActivate($cHandle)
	;WinWaitActive("[Class:Chrome_WidgetWin_1]", "", 4)
	Sleep(5000)
	Send("^l")
	Send("^a")
	Send("^c")
	MsgBox(0, "URL", "Chrome Browser URL "&ClipGet(), 5)
Else
	MsgBox(0, "", "Chrome Window Doesn't Exist", 3)
EndIf