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


PgUp::
marcar:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 1937
Send, {AppsKey}
Sleep, 1313
Send, {RShift Down}
Sleep, 93
Send, {m}
Sleep, 32
Click, 102, 246, 0
Sleep, 125
Send, {RShift Up}
Sleep, 406
Send, {NumpadDiv}
Sleep, 16
Click, 102, 246 Left, Down
Sleep, 15
Click, 102, 246 Left, Up
Sleep, 2360
Send, {NumpadDiv}
Sleep, 78
Click, 102, 246 Left, Down
Sleep, 47
Click, 102, 246 Left, Up
Return

PgDn::
not:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 2312
Send, {AppsKey}
Sleep, 922
Send, {RShift Down}
Sleep, 94
Send, {Right}
Sleep, 250
Send, {Right}
Sleep, 234
Send, {Right}
Sleep, 219
Send, {RShift Up}
Sleep, 438
Send, {RShift Down}
Sleep, 78
Send, {m}
Sleep, 93
Send, {RShift Up}
Sleep, 469
Send, {NumpadDiv}
Sleep, 1219
Send, {NumpadDiv}
Sleep, 1437
Send, {NumpadDiv}
Sleep, 485
Send, {Enter}
Sleep, 2437
Send, {LAlt Down}
Sleep, 63
Send, {=}
Sleep, 234
Send, {LAlt Up}
Return

6::
archivar:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 2125
Send, {AppsKey}
Sleep, 985
Send, {RShift Down}
Sleep, 78
Send, {Right}
Sleep, 406
Send, {Right}
Sleep, 235
Send, {RShift Up}
Sleep, 46
Send, {RShift Down}
Sleep, 219
Send, {Right}
Sleep, 297
Send, {RShift Up}
Sleep, 344
Send, {RShift Down}
Sleep, 78
Send, {m}
Sleep, 141
Send, {RShift Up}
Sleep, 781
Send, {NumpadDiv}
Sleep, 78
Click, 102, 360 Left, Down
Click, 102, 360 Left, Up
Sleep, 1000
Send, {NumpadDiv}
Click, 102, 360 Left, Down
Click, 102, 360 Left, Up
Sleep, 3203
Send, {F9}
Return

+^c::
desarchivar:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 875
Send, {AppsKey}
Sleep, 1266
Send, {RShift Down}
Sleep, 78
Send, {Right}
Sleep, 453
Send, {Right}
Sleep, 719
Send, {RShift Up}
Sleep, 500
Send, {RShift Down}
Sleep, 78
Send, {m}
Sleep, 16
Click, 102, 328, 0
Sleep, 156
Send, {RShift Up}
Sleep, 2141
Send, {NumpadDiv}
Sleep, 47
Click, 102, 328 Left, Down
Sleep, 15
Click, 102, 328 Left, Up
Sleep, 1078
Send, {NumpadDiv}
Click, 102, 328 Left, Down
Sleep, 16
Click, 102, 328 Left, Up
Return

+^d::
cerrar:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 937
Send, {AppsKey}
Sleep, 813
Send, {RShift Down}
Sleep, 94
Send, {Right}
Sleep, 797
Send, {Right}
Sleep, 640
Send, {Right}
Sleep, 860
Send, {Right}
Sleep, 609
Send, {Right}
Sleep, 203
Send, {RShift Up}
Sleep, 531
Send, {RShift Down}
Sleep, 94
Send, {m}
Sleep, 16
Click, 102, 433, 0
Sleep, 172
Send, {RShift Up}
Sleep, 671
Send, {NumpadDiv}
Sleep, 47
Click, 102, 433 Left, Down
Sleep, 32
Click, 102, 433 Left, Up
Sleep, 1156
Send, {NumpadDiv}
Sleep, 47
Click, 102, 433 Left, Down
Sleep, 15
Click, 102, 433 Left, Up
Return

+^r::
eliminar:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 2234
Send, {AppsKey}
Sleep, 1110
Send, {RShift Down}
Sleep, 94
Send, {Right}
Sleep, 312
Send, {Right}
Sleep, 328
Send, {Right}
Sleep, 250
Send, {Right}
Sleep, 172
Send, {RShift Up}
Sleep, 703
Send, {RShift Down}
Sleep, 78
Send, {m}
Sleep, 32
Click, 102, 698, 0
Sleep, 93
Send, {RShift Up}
Sleep, 375
Send, {NumpadDiv}
Sleep, 32
Click, 102, 698 Left, Down
Sleep, 15
Click, 102, 698 Left, Up
Sleep, 1891
Send, {NumpadDiv}
Sleep, 31
Click, 102, 698 Left, Down
Click, 102, 698 Left, Up
Sleep, 5484
Send, {RShift Down}
Sleep, 79
Send, {m}
Sleep, 15
Click, 567, 427, 0
Sleep, 125
Send, {RShift Up}
Sleep, 375
Send, {NumpadDiv}
Sleep, 47
Click, 567, 427 Left, Down
Click, 567, 427 Left, Up
Return

+^!r::
fijar:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 2125
Send, {AppsKey}
Sleep, 781
Send, {RShift Down}
Sleep, 125
Send, {Right}
Sleep, 640
Send, {RShift Up}
Sleep, 688
Send, {RShift Down}
Sleep, 94
Send, {m}
Sleep, 31
Click, 102, 575, 0
Sleep, 94
Send, {RShift Up}
Sleep, 656
Send, {NumpadDiv}
Sleep, 47
Click, 102, 575 Left, Down
Click, 102, 575 Left, Up
Sleep, 1031
Send, {NumpadDiv}
Sleep, 47
Click, 102, 575 Left, Down
Click, 102, 575 Left, Up
Return

^!s::
desfijar:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 875
Send, {AppsKey}
Sleep, 1063
Send, {RShift Down}
Sleep, 94
Send, {Right}
Sleep, 390
Send, {RShift Up}
Sleep, 282
Send, {RShift Down}
Sleep, 78
Send, {m}
Sleep, 15
Click, 102, 287, 0
Sleep, 110
Send, {RShift Up}
Sleep, 406
Send, {NumpadDiv}
Sleep, 62
Click, 102, 287 Left, Down
Sleep, 16
Click, 102, 287 Left, Up
Sleep, 891
Send, {NumpadDiv}
Sleep, 31
Click, 102, 287 Left, Down
Sleep, 16
Click, 102, 287 Left, Up
Return

