;#include include\NVDAControllerClient32.ahk
#include include\NVDAControllerClient64.ahk ;uncomment this if you use 32 bit of autohotkey
#include include\sapi.ahk
#include include\reader.ahk
#NoEnv
ProgramName :=WAP
ProgramVer :=0.1

process, Exist, WhatsApp.exe
if ErrorLevel != 0
speaking("Whatsapp Accessibility Plug-in " programVer " initialiced. Welcome! Press control + shift + f1 for help, control + shift + q to exit. Plug-in developed by Mateo Cedillo. http://mateocedillo.260mb.net/")
else
msgbox, 16, Error, You must have whatsapp beta running to activate this script...
;exitApp

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
speaking("Control + shift + f to send feedback. Control + shift + s to click the 'start' button (if you don't have sessions open) To link an account to the new WhatsApp. control+shift+o: Open WhatsApp settings. To know all the commands to handle WhatsApp, I recommend you take a look at the document commands.html.")
Return

^+f::
FEED:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 100
Send, {LAlt Down}
Sleep, 118
Send, {LAlt Up}
Sleep, 105
Send, {NumpadDiv}
Sleep, 47
Click, 63, 616 Left, Down
Sleep, 15
Click, 63, 616 Left, Up
Sleep, 155
Click, -380, 456, 0
speaking("Feedback button openned")
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
speaking("Start button clicked")
Return
;Many more commands

^+r::
Reply:
speaking("Reply")
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 233
Send, {AppsKey}
Sleep, 200
Send, {RShift Down}
Sleep, 200
Send, {m}
Sleep, 31
Click, 482, 423, 0
Sleep, 172
Send, {RShift Up}
Sleep, 219
Send, {NumpadDiv}
Sleep, 31
Click, 482, 423 Left, Down
Sleep, 31
Click, 482, 423 Left, Up
Sleep, 287
Send, {NumpadDiv}
Sleep, 63
Click, 482, 423 Left, Down
Click, 482, 423 Left, Up
Return

^+!r::
Resend:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking("Resend")
Sleep, 233
Send, {AppsKey}
Sleep, 175
Send, {RShift Down}
Sleep, 125
Send, {Right}
Sleep, 259
Send, {Right}
Sleep, 284
Send, {RShift Up}
Sleep, 166
Send, {RShift Down}
Sleep, 172
Send, {m}
Sleep, 16
Click, 482, 580, 0
Sleep, 125
Send, {RShift Up}
Sleep, 284
Send, {NumpadDiv}
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
speaking("answering in private")
Sleep, 333
Send, {AppsKey}
Sleep, 107
Send, {RShift Down}
Sleep, 94
Send, {Right}
Sleep, 175
Send, {Right}
Sleep, 184
Send, {RShift Up}
Sleep, 213
Send, {RShift Down}
Sleep, 109
Send, {m}
Sleep, 16
Click, 500, 571, 0
Sleep, 171
Send, {RShift Up}
Sleep, 194
Send, {NumpadDiv}
Sleep, 31
Click, 500, 571 Left, Down
Sleep, 16
Click, 500, 571 Left, Up
Sleep, 246
Send, {NumpadDiv}
Sleep, 47
Click, 500, 571 Left, Down
Sleep, 47
Click, 500, 571 Left, Up
Return

^+a::
attach:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking("attaching file")
Sleep, 333
Send, {NumpadDiv}
Sleep, 63
Click, 475, 711 Left, Down
Sleep, 15
Click, 475, 711 Left, Up
Sleep, 201
Send, {RShift Down}
Sleep, 188
Send, {Up}
Sleep, 221
Send, {Up}
Sleep, 161
Send, {Right}
Sleep, 109
Send, {Left}
Sleep, 101
Send, {Left}
Sleep, 120
Send, {Left}
Sleep, 112
Send, {Left}
Sleep, 114
Send, {Left}
Sleep, 114
Send, {Left}
Sleep, 111
Send, {RShift Up}
Sleep, 222
Send, {NumpadDown}
Sleep, 165
Send, {NumpadDown}
Sleep, 162
Send, {NumpadDown}
Sleep, 107
Send, {RShift Down}
Sleep, 63
Send, {m}
Sleep, 46
Click, 475, 635, 0
Sleep, 141
Send, {RShift Up}
Sleep, 238
Send, {NumpadDiv}
Sleep, 46
Click, 475, 635 Left, Down
Sleep, 16
Click, 475, 635 Left, Up
Sleep, 270
Send, {NumpadDiv}
Sleep, 47
Click, 475, 635 Left, Down
Click, 475, 635 Left, Up
Sleep, 128
Click, 467, 627, 0
Return

^+c::
copy:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {AppsKey}
Sleep, 132
Send, {RShift Down}
Sleep, 126
Send, {Right}
Sleep, 244
Send, {RShift Up}
Sleep, 175
Send, {RShift Down}
Sleep, 100
Send, {RShift Up}
Sleep, 200
Send, {NumpadDiv}
Sleep, 79
Click, 500, 335 Left, Down
Sleep, 15
Click, 500, 335 Left, Up
Sleep, 210
Send, {NumpadDiv}
Sleep, 31
Click, 500, 335 Left, Down
Click, 500, 335 Left, Up
speaking("the message has been copied to the clipboard.")
Return

^+o::
settings:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {RShift Down}
Sleep, 94
Send, {m}
Sleep, 16
Click, 354, 76, 0
Sleep, 140
Send, {RShift Up}
Sleep, 112
Send, {NumpadDiv}
Sleep, 32
Click, 354, 76 Left, Down
Click, 354, 76 Left, Up
speaking("WhatsApp settings have been opened")
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
Sleep, 197
Send, {NumpadDiv}
Sleep, 16
Click, 364, 336 Left, Down
Sleep, 15
Click, 364, 336 Left, Up
speaking("The message information has been opened.")
Return

^+d::
removeForME:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {AppsKey}
Sleep, 125
Send, {RShift Down}
Sleep, 94
Send, {Right}
Sleep, 243
Send, {Right}
Sleep, 244
Send, {Right}
Sleep, 244
Send, {Right}
Sleep, 191
Send, {Right}
Sleep, 175
Send, {Right}
Sleep, 221
Send, {Right}
Sleep, 232
Send, {Left}
Sleep, 237
Send, {Left}
Sleep, 175
Send, {Left}
Sleep, 206
Send, {Left}
Sleep, 238
Send, {Left}
Sleep, 231
Send, {Left}
Sleep, 197
Send, {Right}
Sleep, 213
Send, {Right}
Sleep, 206
Send, {Right}
Sleep, 187
Send, {Right}
Sleep, 178
Send, {Right}
Sleep, 213
Send, {Right}
Sleep, 219
Send, {RShift Up}
Sleep, 228
Send, {RShift Down}
Sleep, 157
Send, {m}
Sleep, 16
Click, 500, 427, 0
Sleep, 172
Send, {RShift Up}
Sleep, 165
Send, {NumpadDiv}
Sleep, 31
Click, 500, 427 Left, Down
Click, 500, 427 Left, Up
Sleep, 207
Send, {NumpadDiv}
Sleep, 47
Click, 500, 427 Left, Down
Sleep, 16
Click, 500, 427 Left, Up
Sleep, 220
Send, {RShift Down}
Sleep, 94
Send, {Right}
Sleep, 221
Send, {Left}
Sleep, 172
Send, {RShift Up}
Sleep, 203
Send, {RShift Down}
Sleep, 16
Send, {RShift Up}
Sleep, 109
Send, {m}
Sleep, 216
Send, {RShift Down}
Sleep, 78
Send, {m}
Sleep, 47
Click, 569, 444, 0
Sleep, 203
Send, {RShift Up}
Sleep, 238
Send, {m}
Sleep, 234
Send, {RShift Down}
Sleep, 109
Send, {m}
Sleep, 119
Send, {RShift Up}
Sleep, 256
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
Send, {RShift Down}
Sleep, 110
Send, {Right}
Sleep, 222
Send, {Left}
Sleep, 216
Send, {Right}
Sleep, 140
Send, {RShift Up}
speaking("The message has been deleted for you.")
Return

^!p::
playpause:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 333
Send, {NumpadDiv}
Click, 433, 556 Left, Down
Click, 433, 556 Left, Up
speaking("Voice message played / paused")
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
speaking("voice message set at the beginning of the audio.")
Return

^!s::
saveas:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking("Opening save as ...")
Sleep, 250
Send, {AppsKey}
Sleep, 250
Send, {RShift Down}
Sleep, 109
Send, {Right}
Sleep, 200
Send, {Right}
Sleep, 200
Send, {Right}
Sleep, 222
Send, {Left}
Sleep, 140
Send, {RShift Up}
Sleep, 208
Send, {RShift Down}
Sleep, 247
Click, 482, 453, 0
Sleep, 125
Send, {RShift Up}
Sleep, 101
Send, {NumpadDiv}
Sleep, 47
Click, 482, 453 Left, Down
Click, 482, 453 Left, Up
Sleep, 173
Send, {NumpadDiv}
Sleep, 63
Click, 482, 453 Left, Down
Click, 482, 453 Left, Up
Sleep, 207
Click, 474, 445, 0
Return

^!f::
searchchat:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking("Chat search box openned")
Sleep, 233
Send, {NumpadDiv}
Sleep, 32
Click, 46, 116 Left, Down
Sleep, 15
Click, 46, 116 Left, Up
Return

^!c::
Conversationinfo:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
Sleep, 233
Send, {NumpadDiv}
Sleep, 31
Click, 1348, 72 Left, Down
Sleep, 16
Click, 1348, 72 Left, Up
speaking("Chat information was opened.")
Return

!n::
nextchat:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking("Next chat.")
Sleep, 233
Send, {LControl Down}
Sleep, 125
Send, {Tab}
Sleep, 156
Send, {LControl Up}
Return

!p::
previeuschat:
WinActivate, WhatsApp Beta ahk_class ApplicationFrameWindow
speaking("Previeus chat")
Sleep, 233
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
speaking("Message sent.")
Return

^+q::
exitpersonaliced:
soundBeep, 350, 80
soundBeep, 420, 80
soundBeep, 560, 80
speaking("Closed.")
ExitApp
Return
