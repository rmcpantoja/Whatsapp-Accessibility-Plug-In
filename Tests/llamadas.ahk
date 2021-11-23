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


F3::
Llamar:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 3015
Click, 682, 65 Left, Down
Sleep, 344
Click, 682, 65 Left, Up
Sleep, 438
Click, -144, 67, 0
Sleep, 234
Click, -109, 67, 0
Return

F4::
Silenciar:
WinActivate, Llamada ‎- WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 703
Send, {LControl Down}
Sleep, 78
Send, {LControl Up}
Sleep, 609
Click, 94, 133 Left, Down
Sleep, 282
Click, 94, 133 Left, Up
Return

F5::
Finalizar:
WinActivate, Llamada ‎- WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 1157
Send, {LControl Down}
Sleep, 125
Send, {LControl Up}
Sleep, 297
Click, 343, 137 Left, Down
Sleep, 203
Click, 343, 137 Left, Up
Return

F6::
Videollamar:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 703
Send, {LControl Down}
Sleep, 63
Click, 637, 65 Left, Down
Sleep, 62
Send, {LControl Up}
Sleep, 157
Click, 637, 65 Left, Up
Sleep, 687
Click, 457, -74, 0
Return

contestar:
WinActivate,  ahk_class ApplicationManager_ImmersiveShellWindow
Sleep, 333
Sleep, 1437
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Click, 988, 340 Left, Down
Sleep, 47
Click, 162, 342, 0
Sleep, 203
Click, 162, 342 Left, Up
Sleep, 219
Click, 197, 342, 0
Return

rechazar:
WinActivate, Llamada ‎- WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 1266
Click, 236, 333 Left, Down
Sleep, 250
Click, 236, 333 Left, Up
Sleep, 1796
Click, 1222, 363, 0
Return
