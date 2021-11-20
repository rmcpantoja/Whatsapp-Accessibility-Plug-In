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


PgUp::
forward:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 1718
Send, {LControl Down}
Sleep, 78
Send, {PgDn}
Sleep, 94
Send, {LControl Up}
Return

PgDn::
back:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 3422
Send, {LControl Down}
Sleep, 109
Send, {PgUp}
Sleep, 156
Send, {LControl Up}
Return

