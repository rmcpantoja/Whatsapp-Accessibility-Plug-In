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


^+c::
PLAY:
SoundPlay, C:\Users\angel\Documents\My Swite\programs\Whatsapp Accessibility Plug-In\Source Code\Waves\voice_on.wav, 1
Return

