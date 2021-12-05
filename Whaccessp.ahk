#include include\NVDAControllerClient32.ahk
;#include include\NVDAControllerClient64.ahk ;comment this if you use 32 bit of autohotkey
#include include\sapi.ahk
#include include\reader.ahk
#include include\translator.au3.ahk
;Defining the program info:
;@Ahk2Exe-SetName WhatsApp Accessibility Plug-in
;@Ahk2Exe-SetDescription WhatsApp UWP accessibility plug-in for the blind
;@Ahk2Exe-SetVersion 0.2.0.0
;;@Ahk2Exe-SetCopyright "Copyright 2018-2021 MT Programs, All rights reserved"
;@Ahk2Exe-SetOrigFilename Whaccessp.exe
#NoEnv
ProgramName := "WAP"
ProgramVer := 0.2
speaking(ProgramName " " ProgramVer " - loading language...")
if (InStr(A_language,"0a") = "3")
{
global Idioma := "es"
}
else if (InStr(A_language,"16") = "3")
{
global Idioma := "pt"
}
else
{
global idioma := "en"
}
process, Exist, WhatsApp.exe
if ErrorLevel != 0
{
SoundBeep, 550, 60
}
else
{
SoundPlay, Waves\error.wav, 1
msgbox, 16, translate(idioma, "Error"), translate(idioma, "You must have WhatsApp Beta running to activate this script...")
exitApp
}
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
global audioMuted := 0
gosub principal
openmenu()
{
texts1 := [translate(idioma, "go forward"), translate(idioma, "go back"), translate(idioma, "WhatsApp settings"), translate(idioma, "maximize the WhatsApp window")]
texts2 := [translate(idioma, "conversation / chat info"), translate(idioma, "directly open the chat search box"), translate(idioma, "Navigate to the next chat"), translate(idioma, "Navigate to the previous chat"), translate(idioma, "Mark as read"), TRANSLATE(IDIOMA, "Archive selected chat"), TRANSLATE(IDIOMA, "Unarchive selected chat"), TRANSLATE(IDIOMA, "Close conversation"), TRANSLATE(IDIOMA, "Delete CHAT"), TRANSLATE(IDIOMA, "Pin a chat"), translate(idioma, "Unpin a chat"), translate(idioma, "Mute chat forever"), translate(idioma, "Unmute chat")]
texts3 := [translate(idioma, "Make an audio call"), translate(idioma, "Make a video call"), translate(idioma, "Mute my audio"), translate(idioma, "End the call"), translate(idioma, "answer call"), translate(idioma, "reject call")]
texts4 := [translate(idioma, "attach file"), translate(idioma, "Attach draw"), translate(idioma, "copy the selected message"), translate(idioma, "Delete message for me"), translate(idioma, "Information of the selected message"), translate(idioma, "Reply in private"), translate(idioma, "Reply"), translate(idioma, "forward selected message"), translate(idioma, "Highlight message"), translate(idioma, "Send message")]
texts5 := [translate(idioma, "play / pause"), translate(idioma, "reset"), translate(idioma, "Save as...")]
texts6 := [translate(idioma, "&Key commands"), translate(idioma, "User manual"), translate(idioma, "&changes"), translate(idioma, "Errors and suggestions"), translate(idioma, "Errors and suggestions (GitHub)"), translate(idioma, "Visit website"), translate(idioma, "about...")]
texts7 := [translate(idioma, "General commands"), translate(idioma, "Chat"), translate(idioma, "Call"), translate(idioma, "Messages"), translate(idioma, "files and audio"), translate(idioma, "help")]
texts8 := [translate(idioma, "link a new account ('start' button)"), translate(idioma, "send feedback"), translate(idioma, "Exit")]
Menu, general, Add, % texts1[1], forward
Menu, general, add, % texts1[2], retroceder
Menu, general, add, % texts1[3], settings
Menu, general, add, % texts1[4], maximize
menu, chat, add, % texts2[1], Conversationinfo
menu, chat, add, % texts2[2], searchchat
menu, chat, add, % texts2[3], nextchat
Menu, chat, Add, % texts2[4], previeuschat
Menu, chat, Add, % texts2[5], marcar
Menu, chat, Add, % texts2[6], archivar
Menu, chat, Add, % texts2[7], desarchivar
Menu, chat, Add, % texts2[8], cerrarchat
Menu, chat, Add, % texts2[9], eliminar
Menu, chat, Add, % texts2[10], fijar
Menu, chat, Add, % texts2[11], desfijar
Menu, chat, Add, % texts2[12], silenciarchat
Menu, chat, Add, % texts2[13], NoSilenciar
menu, calls, add, % texts3[1], Llamar
menu, calls, add, % texts3[2], videollamar
menu, calls, add, % texts3[3], silenciar
menu, calls, add, % texts3[4], finalizar
menu, calls, add, % texts3[5], contestar
menu, calls, add, % texts3[6], rechazar
menu, messages, add, % texts4[1], attach
menu, messages, add, % texts4[2], draw
Menu, messages, Add, % texts4[3], copy
Menu, messages, Add, % texts4[4], removeForME
Menu, messages, Add, % texts4[5], informacionmensaje
Menu, messages, Add, % texts4[6], Replyinprivate
Menu, messages, Add, % texts4[7], Reply
Menu, messages, Add, % texts4[8], Resend
Menu, messages, Add, % texts4[9], destacarmensaje
Menu, messages, Add, % texts4[10], sendmsg
Menu, files, add, % texts5[1], playpause
Menu, files, Add, % texts5[2], voicereset
Menu, files, Add, % texts5[3], saveas
Menu, help, Add, % texts6[1], Playcommands
Menu, help, Add, % texts6[2], Playhelp
Menu, help, Add, % texts6[3], readchanges
Menu, help, Add, % texts6[4], Report
Menu, help, Add, % texts6[5], newIssue
Menu, help, Add, % texts6[6], WEBSITE
Menu, help, Add, % texts6[7], ayuda
Menu, menuname, Add, % texts7[1], :general
Menu, menuname, Add, % texts7[2], :chat
Menu, menuname, Add, % texts7[3], :calls
Menu, menuname, Add, % texts7[4], :messages
Menu, menuname, Add, % texts7[5], :files
Menu, menuname, Add, % texts7[6], :help
menu, menuname, add, % texts8[1], start
menu, menuname, add, % texts8[2], FEED
menu, menuname, add, % texts8[3], exitpersonaliced
Menu, MenuName, Show
}
return

principal:
texts := [translate(idioma, "Open the menu or explore the following options:"), translate(idioma, "open &menu"), translate(idioma, "&User manual"), translate(idioma, "&Changes"), translate(idioma, "Close only this &window"), translate(idioma, "E&xit")]
Gui, Add, Text,, % texts[1]
gui, add, button, Gopenmenu, % texts[2]
gui, add, button, Gplayhelp, % texts[3]
gui, add, button, Greadchanges, % texts[4]
gui, add, button, Ggithub, &github
gui, add, button, Gdestroy, % texts[5]
gui, add, button, Gexitpersonaliced, % texts[6]
gui, show,, %programname% %programVer%
sleep, 500
speaking(translate(idioma, "Whatsapp Accessibility Plug-in initialiced. Welcome! Press control + shift + f1 for help, control + shift + q to exit. Plug-in developed by Mateo Cedillo. http://mateocedillo.260mb.net/"))
return

destroy:
Gui, Destroy
sleep, 200
speaking(translate(idioma, "Main window closed."))
return

github:
run, https://github.com/rmcpantoja/
return

readchanges:
run, %a_scriptDir%\documentation\%idioma%\changes.txt
return

playhelp:
run, %a_scriptDir%\documentation\%idioma%\manual.txt
return

playcommands:
run, %a_scriptDir%\documentation\%idioma%\commands.html
return

ayuda:
trslt := [translate(idioma, "About..."), translate(idioma, "accessibility plug-in for UWP version of WhatsApp for screen reader users whit keyboard shortcuts. This program was created by Mateo Cedillo. 2018-2021 MT programs.")]
MsgBox, 0, % trslt[1], WhatsApp accessibility plug-ing version %programver% beta, % trslt[2]
return

Website:
run, http://mateocedillo.260mb.net/
return

report:
run, https://docs.google.com/forms/d/e/1FAIpQLSdDW6LqMKGHjUdKmHkAZdAlgSDilHaWQG9VZjwLz0CJSXKqHA/viewform?usp=sf_link
return

newIssue:
Run, https://github.com/rmcpantoja/Whatsapp-Accessibility-Plug-In/issues/new
return

^+f1::
speaking(translate(idioma, "control + shift + h: Open the WAP menu from anywhere (it is recommended from the WhatsApp window) to access all its functions from it. Control + shift + s to click the 'start' button (if you don't have sessions open) To link an account to the new WhatsApp. control+shift+o: Open WhatsApp settings. To know all the available commands, I recommend you take a look at the document commands.html."))
return

^+h::
IfWinNotActive, WhatsApp Beta
{
speaking(translate(idioma, "The WhatsApp window is not active."))
}
else
{
speaking(translate(idioma, "Plugin menu opened"))
sleep, 100
openmenu()
sleep, 100
speaking(translate(idioma, "Plugin menu closed"))
}
return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^+f::
FEED:
Click, 63, 616 Left, Down
Sleep, 15
Click, 63, 616 Left, Up
Sleep, 105
Click, -380, 456, 0
speaking(translate(idioma, "Feedback button openned"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^+s::
start:
Click, 409, 538 Left, Down
Sleep, 15
Click, 409, 538 Left, Up
speaking(translate(idioma, "Start button clicked"))
Return

;Many more commands
#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
PgDn::
forward:
SoundPlay, Waves\scrollmessage.wav
speaking(translate(idioma, "forward"))
Sleep, 250
Send, {LControl Down}
Sleep, 78
Send, {PgDn}
Sleep, 94
Send, {LControl Up}
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
PgUp::
retroceder:
SoundPlay, Waves\scrollmessage.wav
speaking(translate(idioma, "rewind"))
Sleep, 250
Send, {LControl Down}
Sleep, 75
Send, {PgUp}
Sleep, 75
Send, {LControl Up}
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
+!k::
marcar:
Send, {AppsKey}
Sleep, 131
Click, 102, 246, 0
Sleep, 125
Click, 102, 246 Left, Down
Sleep, 15
Click, 102, 246 Left, Up
Sleep, 200
Click, 102, 246 Left, Down
Sleep, 47
Click, 102, 246 Left, Up
Sleep, 47
speaking(translate(idioma, "Chat was marked as read"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
+!h::
archivar:
Send, {AppsKey}
Sleep, 185
Click, 102, 360 Left, Down
Click, 102, 360 Left, Up
Sleep, 100
Send, {NumpadDiv}
Click, 102, 360 Left, Down
Click, 102, 360 Left, Up
Sleep, 100
speaking(translate(idioma, "archived chat"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
+!u::
desarchivar:
Send, {AppsKey}
Sleep, 126
Click, 102, 328, 0
Sleep, 156
Click, 102, 328 Left, Down
Sleep, 15
Click, 102, 328 Left, Up
Sleep, 107
Send, {NumpadDiv}
Click, 102, 328 Left, Down
Sleep, 16
Click, 102, 328 Left, Up
speaking(translate(idioma, "The chat is no longer archived"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
+!l::
cerrarchat:
Send, {AppsKey}
Sleep, 200
Click, 102, 433, 0
Sleep, 172
Click, 102, 433 Left, Down
Sleep, 32
Click, 102, 433 Left, Up
Sleep, 115
Click, 102, 433 Left, Down
Sleep, 15
Click, 102, 433 Left, Up
speaking(translate(idioma, "chat closed"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
+!d::
eliminar:
Send, {AppsKey}
Sleep, 111
Click, 102, 698, 0
Sleep, 93
Click, 102, 698 Left, Down
Sleep, 15
Click, 102, 698 Left, Up
Sleep, 189
Click, 102, 698 Left, Down
Click, 102, 698 Left, Up
Sleep, 248
;Confirmación de eliminación
Click, 567, 427, 0
Sleep, 125
Click, 567, 427 Left, Down
Click, 567, 427 Left, Up
speaking(translate(idioma, "The chat has been removed"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
+!p::
fijar:
Send, {AppsKey}
Sleep, 181
Click, 102, 575, 0
Sleep, 94
Click, 102, 575 Left, Down
Click, 102, 575 Left, Up
Sleep, 103
Click, 102, 575 Left, Down
Click, 102, 575 Left, Up
speaking(translate(idioma, "Chat pinned"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
+!f::
desfijar:
Send, {AppsKey}
Sleep, 106
Click, 102, 287, 0
Sleep, 110
Click, 102, 287 Left, Down
Sleep, 16
Click, 102, 287 Left, Up
Sleep, 191
Click, 102, 287 Left, Down
Sleep, 16
Click, 102, 287 Left, Up
speaking(translate(idioma, "The chat is no longer pinned"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^!m::
silenciarchat:
Send, {AppsKey}
Sleep, 750
Click, 102, 319, 0
Sleep, 78
Send, {NumpadDiv}
Click, 102, 319 Left, Down
Sleep, 32
Click, 102, 319 Left, Up
Sleep, 1281
;Silenciar para siempre
Click, 246, 387, 0
Sleep, 109
Send, {NumpadDiv}
Sleep, 31
Click, 246, 387 Left, Down
Click, 246, 387 Left, Up
Sleep, 2031
Click, 246, 387 Left, Down
Sleep, 47
Click, 246, 387 Left, Up
speaking(translate(idioma, "Chat muted"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^!u::
NoSilenciar:
Send, {AppsKey}
Sleep, 1328
Click, 102, 319, 0
Sleep, 109
Click, 102, 319 Left, Down
Sleep, 16
Click, 102, 319 Left, Up
Sleep, 2343
Click, 261, 364, 0
Sleep, 94
Click, 261, 364 Left, Down
Sleep, 15
Click, 261, 364 Left, Up
Sleep, 1000
Send, {NumpadDiv}
Click, 261, 364 Left, Down
Sleep, 47
Click, 261, 364 Left, Up
speaking(translate(idioma, "Chat unmuted"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^+r::
Reply:
speaking(translate(idioma, "Reply"))
Sleep, 200
Send, {AppsKey}
Sleep, 200
Click, 482, 423, 0
Sleep, 172
Click, 482, 423 Left, Down
Sleep, 31
Click, 482, 423 Left, Up
Sleep, 200
Click, 482, 423 Left, Down
Click, 482, 423 Left, Up
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^+!r::
Resend:
speaking(translate(idioma, "Resend"))
Sleep, 100
Send, {AppsKey}
Sleep, 175
Click, 482, 580, 0
Sleep, 125
Click, 482, 580 Left, Down
Sleep, 16
Click, 482, 580 Left, Up
Sleep, 162
Click, 482, 580 Left, Down
Click, 482, 580 Left, Up
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^+p::
Replyinprivate:
speaking(translate(idioma, "answering in private"))
Sleep, 150
Send, {AppsKey}
Sleep, 107
Click, 500, 571, 0
Sleep, 171
Click, 500, 571 Left, Down
Sleep, 16
Click, 500, 571 Left, Up
Sleep, 200
Click, 500, 571 Left, Down
Sleep, 47
Click, 500, 571 Left, Up
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^!h::
destacarmensaje:
Send, {AppsKey}
Sleep, 563
Click, 500, 592, 0
Sleep, 125
Click, 500, 592 Left, Down
Sleep, 15
Click, 500, 592 Left, Up
Sleep, 1235
Click, 500, 592 Left, Down
Click, 500, 592 Left, Up
speaking(translate(idioma, "The message has been highlighted"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^+d::
draw:
Click, 475, 711 Left, Down
Click, 475, 711 Left, Up
Sleep, 937
Send, {NumpadDown}
Sleep, 656
Send, {NumpadDown}
Sleep, 688
Send, {NumpadDown}
Sleep, 859
Click, 475, 667, 0
Sleep, 141
Click, 475, 667 Left, Down
Sleep, 16
Click, 475, 667 Left, Up
Sleep, 1031
Click, 475, 667 Left, Down
Sleep, 16
Click, 475, 667 Left, Up
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^+a::
attach:
speaking(translate(idioma, "attaching file"))
Sleep, 200
Click, 475, 711 Left, Down
Sleep, 15
Click, 475, 711 Left, Up
Sleep, 200
Send, {Up}
Sleep, 200
Send, {Up}
Sleep, 161
Send, {NumpadDown}
Sleep, 165
Send, {NumpadDown}
Sleep, 162
Send, {NumpadDown}
Sleep, 107
Click, 475, 635, 0
Sleep, 141
Click, 475, 635 Left, Down
Sleep, 16
Click, 475, 635 Left, Up
Sleep, 200
Click, 475, 635 Left, Down
Click, 475, 635 Left, Up
Sleep, 128
Click, 467, 627, 0
SoundPlay, Waves\attach.wav, 1
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^+c::
copy:
Send, {AppsKey}
Sleep, 139
Click, 500, 373 Left, Down
Click, 500, 373 Left, Up
Sleep, 123
Click, 500, 373 Left, Down
Click, 500, 373 Left, Up
Sleep, 153
SoundPlay, Waves\copy_message.wav, 1
speaking(translate(idioma, "the message has been copied to the clipboard."))
Return

^+o::
settings:
IfWinNotActive, WhatsApp Beta
{
speaking(translate(idioma, "The WhatsApp window is not active."))
}
else
{
Sleep, 200
Click, 354, 76, 0
Sleep, 140
Click, 354, 76 Left, Down
Click, 354, 76 Left, Up
speaking(translate(idioma, "WhatsApp settings have been opened"))
}
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^+i::
informacionmensaje:
Sleep, 200
Click, 364, 336 Left, Down
Sleep, 15
Click, 364, 336 Left, Up
Sleep, 197
Click, 364, 336 Left, Down
Sleep, 15
Click, 364, 336 Left, Up
speaking(translate(idioma, "The message information has been opened."))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^+y::
removeForME:
Send, {AppsKey}
Sleep, 125
Click, 500, 427, 0
Sleep, 172
Click, 500, 427 Left, Down
Click, 500, 427 Left, Up
Sleep, 200
Click, 500, 427 Left, Down
Sleep, 16
Click, 500, 427 Left, Up
Sleep, 200
Click, 569, 444, 0
Sleep, 200
Click, 569, 444 Left, Down
Sleep, 16
Click, 569, 444 Left, Up
Sleep, 178
Click, 569, 444 Left, Down
Sleep, 16
Click, 569, 444 Left, Up
Sleep, 156
speaking(translate(idioma, "The message has been deleted for you."))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^!p::
playpause:
Click, 433, 556 Left, Down
Click, 433, 556 Left, Up
speaking(translate(idioma, "Voice message played / paused"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^!r::
voicereset:
Click, 468, 572 Left, Down
Sleep, 15
Click, 468, 572 Left, Up
speaking(translate(idioma, "voice message set at the beginning of the audio."))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^!s::
saveas:
speaking(translate(idioma, "Opening save as ..."))
Sleep, 200
Send, {AppsKey}
Sleep, 200
Click, 482, 453, 0
Sleep, 125
Click, 482, 453 Left, Down
Click, 482, 453 Left, Up
Sleep, 173
Click, 482, 453 Left, Down
Click, 482, 453 Left, Up
Sleep, 200
Click, 474, 445, 0
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^!f::
searchchat:
Click, 46, 116 Left, Down
Sleep, 15
Click, 46, 116 Left, Up
sleep, 100
speaking(translate(idioma, "Chat search box openned"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
^!c::
Conversationinfo:
Click, 1348, 72 Left, Down
Sleep, 16
Click, 1348, 72 Left, Up
speaking(translate(idioma, "Chat information was opened."))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
!n::
nextchat:
speaking(translate(idioma, "Next chat."))
Sleep, 150
Send, {LControl Down}
Sleep, 125
Send, {Tab}
Sleep, 150
Send, {LControl Up}
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
!p::
previeuschat:
speaking(translate(idioma, "Previeus chat"))
Sleep, 100
Send, {LControl Down}
Sleep, 141
Send, {RShift Down}
Sleep, 150
Send, {Tab}
Sleep, 140
Send, {RShift Up}
Sleep, 63
Send, {LControl Up}
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
!s::
sendmsg:
Click, 1340, 711, 0
Sleep, 172
Click, 32, 56, 0
Sleep, 141
Click, 1340, 711, 0
Sleep, 187
Click, 1340, 711 Left, Down
Click, 1340, 711 Left, Up
speaking(translate(idioma, "Message sent."))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
+!c::
Llamar:
speaking(translate(idioma, "Making audio call..."))
Click, 1220, 72 Left, Down
Sleep, 16
Click, 1220, 72 Left, Up
Sleep, 106
Click, 226, 34, 0
Sleep, 122
Click, 261, 34, 0
speaking(translate(idioma, "Audio call in progress"))
Return

#ifWinActive llamada ‎- WhatsApp Beta ahk_class ApplicationFrameWindow
+!m::
Silenciar:
audioMuted :=1
Click, 94, 133 Left, Down
Sleep, 150
Click, 94, 133 Left, Up
#If audioMuted= 0
soundBeep, 800, 70
speaking(translate(idioma, "Audio muted"))
audioMuted := 1
#If audioMuted= 1
SoundBeep, 1100, 70
speaking(translate(idioma, "Audio unmuted"))
audioMuted := 0
Return

#ifWinActive llamada ‎- WhatsApp Beta ahk_class ApplicationFrameWindow
+!e::
Finalizar:
Click, 343, 137 Left, Down
Sleep, 150
Click, 343, 137 Left, Up
speaking(translate(idioma, "Call ended"))
Return

#ifWinActive WhatsApp Beta ahk_class ApplicationFrameWindow
+!v::
Videollamar:
speaking(translate(idioma, "Making video call..."))
Sleep, 333
Click, 637, 65 Left, Down
Sleep, 62
Click, 637, 65 Left, Up
Sleep, 187
Click, 457, -74, 0
speaking(translate(idioma, "Video call in progress"))
Return

+!a::
contestar:
WinActivate,  ahk_class ApplicationManager_ImmersiveShellWindow
Sleep, 333
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Click, 988, 340 Left, Down
Sleep, 47
Click, 162, 342, 0
Sleep, 200
Click, 162, 342 Left, Up
Sleep, 200
Click, 197, 342, 0
speaking(translate(idioma, "The call has been answered. Call controls available."))
Return


+!r::
rechazar:
WinActivate, Llamada ‎- WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Click, 236, 333 Left, Down
Sleep, 200
Click, 236, 333 Left, Up
Sleep, 179
Click, 1222, 363, 0
speaking(translate(idioma, "The call has been rejected."))
Return

^+m::
maximize:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 100
SoundPlay, Waves\put_in_front.wav, 1
speaking(translate(idioma, "WhatsApp window maximiced."))
Return

^+q::
exitpersonaliced:
SoundBeep, 1100, 60
speaking(translate(idioma, "WhatsApp accessibility plug-in closed."))
ExitApp
Return
