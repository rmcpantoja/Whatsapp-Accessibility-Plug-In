#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


#IfWinActive 
+^c::
copyar:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 4656
Send, {AppsKey}
Sleep, 1390
Send, {RShift Down}
Sleep, 94
Send, {Right}
Sleep, 235
Send, {RShift Up}
Sleep, 484
Send, {RShift Down}
Sleep, 94
Send, {m}
Sleep, 281
Send, {RShift Up}
Sleep, 437
Send, {NumpadDiv}
Sleep, 32
Click, 500, 373 Left, Down
Click, 500, 373 Left, Up
Sleep, 1234
Send, {NumpadDiv}
Sleep, 16
Click, 500, 373 Left, Down
Click, 500, 373 Left, Up
Sleep, 1531
Send, {c}
Sleep, 766
Send, {c}
Return
#IfWinActive

#IfWinActive 
!s::
estoaMacroCreoQueSi:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 984
Send, {RShift Down}
Sleep, 141
Send, {Right}
Sleep, 156
Send, {RShift Up}
Sleep, 657
Send, {RShift Down}
Sleep, 125
Send, {m}
Sleep, 31
Click, 1340, 711, 0
Sleep, 172
Send, {RShift Up}
Sleep, 1015
Send, {RShift Down}
Sleep, 125
Send, {Left}
Sleep, 219
Send, {Right}
Sleep, 234
Send, {RShift Up}
Sleep, 500
Send, {RShift Down}
Sleep, 172
Send, {m}
Sleep, 219
Send, {RShift Up}
Sleep, 2656
Send, {RShift Down}
Sleep, 94
Send, {Right}
Sleep, 172
Send, {RShift Up}
Sleep, 187
Send, {RShift Down}
Sleep, 2079
Send, {Right}
Sleep, 203
Send, {RShift Up}
Sleep, 500
Send, {RShift Down}
Sleep, 47
Send, {m}
Sleep, 15
Click, 32, 56, 0
Sleep, 141
Send, {RShift Up}
Sleep, 312
Send, {RShift Down}
Sleep, 78
Send, {Left}
Sleep, 204
Send, {RShift Up}
Sleep, 437
Send, {RShift Down}
Sleep, 125
Send, {m}
Sleep, 16
Click, 1340, 711, 0
Sleep, 187
Send, {RShift Up}
Sleep, 1313
Send, {NumpadDiv}
Sleep, 62
Click, 1340, 711 Left, Down
Click, 1340, 711 Left, Up
Return
#IfWinActive

+^r::
Macro7:
}
Else
{
Return

