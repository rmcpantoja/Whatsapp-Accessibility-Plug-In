;#include include\NVDAControllerClient32.ahk
#include include\NVDAControllerClient64.ahk ;uncomment this if you use 32 bit of autohotkey
#include include\sapi.ahk
#include include\reader.ahk
#include include\translator.au3.ahk
#NoEnv
if (InStr(A_language,"0a") = "3")
{
global Idioma := "es"
}
else
{
global idioma := "en"
}
ProgramName :=WAP
ProgramVer :=0.1
process, Exist, WhatsApp.exe
if ErrorLevel != 0
speaking(translate(idioma, "Whatsapp Accessibility Plug-in %programVer% initialiced. Welcome! Press control + shift + f1 for help, control + shift + q to exit. Plug-in developed by Mateo Cedillo. http://mateocedillo.260mb.net/"))
else
{
SoundPlay, Waves\error.wav, 1
msgbox, 16, translate(idioma, "Error", translate(idioma, "You must have whatsapp beta running to activate this script...")
exitApp
}
SoundPlay, Waves\voice_on.wav, 1
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

^+f1::
speaking(translate(idioma, "Control + shift + f to send feedback. Control + shift + s to click the 'start' button (if you don't have sessions open) To link an account to the new WhatsApp. control+shift+o: Open WhatsApp settings. To know all the available commands, I recommend you take a look at the document commands.html."))
Return

^+f::
FEED:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 100
Send, {NumpadDiv}
Sleep, 47
Click, 63, 616 Left, Down
Sleep, 15
Click, 63, 616 Left, Up
Sleep, 105
Click, -380, 456, 0
speaking(translate(idioma, "Feedback button openned"))
Return

^+s::
start:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 100
Send, {NumpadDiv}
Sleep, 16
Click, 409, 538 Left, Down
Sleep, 15
Click, 409, 538 Left, Up
speaking(translate(idioma, "Start button clicked"))
Return
;Many more commands

PgDn::
forward:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
SoundPlay, Waves\scrollmessage.wav
speaking(translate(idioma, "forward"))
Sleep, 250
Send, {LControl Down}
Sleep, 78
Send, {PgDn}
Sleep, 94
Send, {LControl Up}
Return

PgUp::
retroceder:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
SoundPlay, Waves\scrollmessage.wav
speaking(translate(idioma, "rewind"))
Sleep, 250
Send, {LControl Down}
Sleep, 75
Send, {PgUp}
Sleep, 75
Send, {LControl Up}
Return

^+r::
Reply:
speaking(translate(idioma, "Reply"))
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 200
Send, {AppsKey}
Sleep, 200
Click, 482, 423, 0
Sleep, 172
Send, {NumpadDiv}
Sleep, 31
Click, 482, 423 Left, Down
Sleep, 31
Click, 482, 423 Left, Up
Sleep, 200
Send, {NumpadDiv}
Sleep, 63
Click, 482, 423 Left, Down
Click, 482, 423 Left, Up
Return

^+!r::
Resend:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking(translate(idioma, "Resend"))
Sleep, 200
Send, {AppsKey}
Sleep, 175
Click, 482, 580, 0
Sleep, 125
Send, {NumpadDiv}
Sleep, 125
Click, 482, 580 Left, Down
Sleep, 16
Click, 482, 580 Left, Up
Sleep, 162
Send, {NumpadDiv}
Sleep, 31
Click, 482, 580 Left, Down
Click, 482, 580 Left, Up
Return

^+p::
Replyinprivate:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking(translate(idioma, "answering in private"))
Sleep, 200
Send, {AppsKey}
Sleep, 107
Click, 500, 571, 0
Sleep, 171
Send, {NumpadDiv}
Sleep, 31
Click, 500, 571 Left, Down
Sleep, 16
Click, 500, 571 Left, Up
Sleep, 200
Send, {NumpadDiv}
Sleep, 47
Click, 500, 571 Left, Down
Sleep, 47
Click, 500, 571 Left, Up
Return

^+a::
attach:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking(translate(idioma, "attaching file"))
Sleep, 200
Send, {NumpadDiv}
Sleep, 63
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
Send, {NumpadDiv}
Sleep, 46
Click, 475, 635 Left, Down
Sleep, 16
Click, 475, 635 Left, Up
Sleep, 200
Send, {NumpadDiv}
Sleep, 47
Click, 475, 635 Left, Down
Click, 475, 635 Left, Up
Sleep, 128
Click, 467, 627, 0
SoundPlay, Waves\attach.wav, 1
Return

^+c::
copy:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 200
Send, {AppsKey}
Sleep, 139
Send, {NumpadDiv}
Sleep, 32
Click, 500, 373 Left, Down
Click, 500, 373 Left, Up
Sleep, 123
Send, {NumpadDiv}
Sleep, 16
Click, 500, 373 Left, Down
Click, 500, 373 Left, Up
Sleep, 153
SoundPlay, Waves\copy_message.wav, 1
speaking(translate(idioma, "the message has been copied to the clipboard."))
Return

^+o::
settings:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 200
Click, 354, 76, 0
Sleep, 140
Send, {NumpadDiv}
Sleep, 32
Click, 354, 76 Left, Down
Click, 354, 76 Left, Up
speaking(translate(idioma, "WhatsApp settings have been opened"))
Return

^+i::
informacionmensaje:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 200
Send, {NumpadDiv}
Sleep, 16
Click, 364, 336 Left, Down
Sleep, 15
Click, 364, 336 Left, Up
Sleep, 197
Send, {NumpadDiv}
Sleep, 16
Click, 364, 336 Left, Down
Sleep, 15
Click, 364, 336 Left, Up
speaking(translate(idioma, "The message information has been opened."))
Return

^+d::
removeForME:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 200
Send, {AppsKey}
Sleep, 125
Click, 500, 427, 0
Sleep, 172
Send, {NumpadDiv}
Sleep, 31
Click, 500, 427 Left, Down
Click, 500, 427 Left, Up
Sleep, 200
Send, {NumpadDiv}
Sleep, 47
Click, 500, 427 Left, Down
Sleep, 16
Click, 500, 427 Left, Up
Sleep, 200
Click, 569, 444, 0
Sleep, 200
Send, {NumpadDiv}
Sleep, 16
Click, 569, 444 Left, Down
Sleep, 16
Click, 569, 444 Left, Up
Sleep, 178
Send, {NumpadDiv}
Sleep, 31
Click, 569, 444 Left, Down
Sleep, 16
Click, 569, 444 Left, Up
Sleep, 156
speaking(translate(idioma, "The message has been deleted for you."))
Return

^!p::
playpause:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 200
Send, {NumpadDiv}
Click, 433, 556 Left, Down
Click, 433, 556 Left, Up
speaking(translate(idioma, "Voice message played / paused"))
Return

^!r::
voicereset:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 200
Send, {NumpadDiv}
Sleep, 47
Click, 468, 572 Left, Down
Sleep, 15
Click, 468, 572 Left, Up
speaking(translate(idioma, "voice message set at the beginning of the audio."))
Return

^!s::
saveas:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking(translate(idioma, "Opening save as ..."))
Sleep, 200
Send, {AppsKey}
Sleep, 200
Click, 482, 453, 0
Sleep, 125
Send, {NumpadDiv}
Sleep, 47
Click, 482, 453 Left, Down
Click, 482, 453 Left, Up
Sleep, 173
Send, {NumpadDiv}
Sleep, 63
Click, 482, 453 Left, Down
Click, 482, 453 Left, Up
Sleep, 200
Click, 474, 445, 0
Return

^!f::
searchchat:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 200
Send, {NumpadDiv}
Sleep, 32
Click, 46, 116 Left, Down
Sleep, 15
Click, 46, 116 Left, Up
sleep, 100
speaking(translate(idioma, "Chat search box openned"))
Return

^!c::
Conversationinfo:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 200
Send, {NumpadDiv}
Sleep, 31
Click, 1348, 72 Left, Down
Sleep, 16
Click, 1348, 72 Left, Up
speaking(translate(idioma, "Chat information was opened."))
Return

!n::
nextchat:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking(translate(idioma, "Next chat."))
Sleep, 200
Send, {LControl Down}
Sleep, 125
Send, {Tab}
Sleep, 156
Send, {LControl Up}
Return

!p::
previeuschat:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking(translate(idioma, "Previeus chat"))
Sleep, 200
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
Sleep, 200
Click, 1340, 711, 0
Sleep, 172
Click, 32, 56, 0
Sleep, 141
Click, 1340, 711, 0
Sleep, 187
Send, {NumpadDiv}
Sleep, 62
Click, 1340, 711 Left, Down
Click, 1340, 711 Left, Up
speaking(translate(idioma, "Message sent."))
Return

^+m::
maximize:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 200
SoundPlay, Waves\put_in_front.wav, 1
speaking(translate(idioma, "WhatsApp window maximiced."))
Return

^+q::
exitpersonaliced:
SoundPlay, Waves\voice_off.wav, 1
speaking(translate(idioma, "WhatsApp accessibility plug-in closed."))
ExitApp
Return
