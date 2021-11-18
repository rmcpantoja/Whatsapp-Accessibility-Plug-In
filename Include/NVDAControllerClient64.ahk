;NVDA Controller library for Auto hotKey.
;Author: Mateo Cedillo
NVDAController_BrailleMessage(message)
{
Return DllCall("nvdaControllerClient64.dll\nvdaController_brailleMessage", "wstr", message)
if ErrorLevel
{
return 0
}
}
NVDAController_CancelSpeech()
{
Return DllCall("nvdaControllerClient64.dll\nvdaController_cancelSpeech")
if ErrorLevel
{
return 0
}
}
nvdaController_speakText(text)
{
Return DllCall("nvdaControllerClient64.dll\nvdaController_speakText", "wstr", text)
if ErrorLevel
{
return 0
}
}
NVDAController_TestIfRunning()
{
Return DllCall("nvdaControllerClient64.dll\nvdaController_testIfRunning")
if ErrorLevel
{
return 0
}
}