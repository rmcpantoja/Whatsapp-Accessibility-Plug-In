; This script was created using Pulover's Macro Creator
; www.macrocreator.com

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


^+r::
Reply:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 47
Click, 360, 326 Left, Down
Click, 360, 326 Left, Up
Sleep, 184
Send, {NumpadDiv}
Sleep, 47
Click, 360, 326 Left, Down
Sleep, 16
Click, 360, 326 Left, Up
Return

^+!r::
Resend:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 32
Click, 360, 495 Left, Down
Click, 360, 495 Left, Up
Sleep, 750
Send, {NumpadDiv}
Click, 360, 495 Left, Down
Click, 360, 495 Left, Up
Sleep, 144
Click, 360, 326, 0
Sleep, 968
Click, 360, 525, 0
Return

^+p::
Replyinprivate:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 15
Click, 360, 525 Left, Down
Sleep, 32
Click, 360, 525 Left, Up
Sleep, 562
Send, {NumpadDiv}
Click, 360, 525 Left, Down
Sleep, 16
Click, 360, 525 Left, Up
Return

^+a::
attach:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 47
Click, 317, 400 Left, Down
Click, 317, 400 Left, Up
Sleep, 163
Click, 317, 400 Left, Down
Sleep, 31
Click, 317, 400 Left, Up
Sleep, 272
Click, 309, 400, 0
Return

^+c::
copy:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Click, 360, 416 Left, Down
Sleep, 15
Click, 360, 416 Left, Up
Sleep, 56
Send, {NumpadDiv}
Sleep, 32
Click, 360, 416 Left, Down
Click, 360, 416 Left, Up
Return

^+o::
settings:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 32
Click, 220, 69 Left, Down
Click, 220, 69 Left, Up
Return

^+i::
informacionmensaje:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 16
Click, 364, 336 Left, Down
Sleep, 15
Click, 364, 336 Left, Up
Sleep, 297
Send, {NumpadDiv}
Sleep, 16
Click, 364, 336 Left, Down
Sleep, 15
Click, 364, 336 Left, Up
Return

^+d::
removeForME:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 69
Send, {NumpadDiv}
Sleep, 63
Send, {LAlt Down}
Sleep, 47
Send, {+}
Sleep, 312
Send, {LAlt Up}
Sleep, 547
Send, {NumpadDiv}
Sleep, 47
Click, 431, 343 Left, Down
Sleep, 15
Click, 431, 343 Left, Up
Sleep, 625
Send, {NumpadDiv}
Sleep, 47
Click, 431, 343 Left, Down
Sleep, 16
Click, 431, 343 Left, Up
Sleep, 5734
Send, {RShift Down}
Sleep, 94
Send, {m}
Sleep, 31
Click, 147, 323, 0
Sleep, 157
Send, {RShift Up}
Sleep, 2109
Send, {NumpadDiv}
Sleep, 47
Click, 147, 323 Left, Down
Sleep, 15
Click, 147, 323 Left, Up
Sleep, 1922
Send, {NumpadDiv}
Sleep, 32
Click, 147, 323 Left, Down
Click, 147, 323 Left, Up
Sleep, 2187
Send, {RShift Down}
Sleep, 297
Send, {Left}
Sleep, 797
Send, {Right}
Sleep, 562
Send, {Up}
Sleep, 657
Send, {RShift Up}
Sleep, 515
Send, {NumpadDown}
Sleep, 1641
Send, {Tab}
Sleep, 578
Send, {RShift Down}
Sleep, 62
Send, {Tab}
Sleep, 125
Send, {RShift Up}
Return

^!p::
playpause:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Click, 433, 556 Left, Down
Click, 433, 556 Left, Up
Return

^!r::
voicereset:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 47
Click, 468, 572 Left, Down
Sleep, 15
Click, 468, 572 Left, Up
Return

ignore3::
Macro11:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 2954
Send, {NumpadDiv}
Sleep, 46
Click, 584, 564 Left, Down
Click, 584, 564 Left, Up
Sleep, 3110
Send, {F9}
Return

^!s::
saveas:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 31
Click, 500, 398 Left, Down
Sleep, 15
Click, 500, 398 Left, Up
Sleep, 194
Send, {NumpadDiv}
Sleep, 47
Click, 500, 398 Left, Down
Click, 500, 398 Left, Up
Sleep, 166
Click, 492, 390, 0
Return

ignore2::
ignore:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 2406
Send, {RShift Down}
Sleep, 94
Send, {m}
Sleep, 16
Click, 198, 444, 0
Sleep, 156
Send, {RShift Up}
Sleep, 969
Send, {NumpadDiv}
Sleep, 31
Click, 198, 444 Left, Down
Click, 198, 444 Left, Up
Return

ignore1::
Macro14:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Return

^!f::
searchchat:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 32
Click, 46, 116 Left, Down
Sleep, 15
Click, 46, 116 Left, Up
Return

^!c::
Conversationinfo:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Sleep, 31
Click, 1348, 72 Left, Down
Sleep, 16
Click, 1348, 72 Left, Up
Return

!n::
nextchat:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {LControl Down}
Sleep, 125
Send, {Tab}
Sleep, 156
Send, {LControl Up}
Return

!p::
previewchat:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {LControl Down}
Sleep, 141
Send, {RShift Down}
Sleep, 156
Send, {Tab}
Sleep, 140
Send, {RShift Up}
Sleep, 63
Send, {LControl Up}
Return

!s::
sendmsg:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Click, 1340, 711 Left, Down
Sleep, 15
Click, 1340, 711 Left, Up
Return

