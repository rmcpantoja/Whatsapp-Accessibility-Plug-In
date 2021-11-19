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


+^w::
frente:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Sleep, 6469
Send, {LControl Down}
Sleep, 172
Send, {LControl Up}
Sleep, 375
Send, {F8}
Return

