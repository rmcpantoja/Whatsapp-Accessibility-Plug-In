;Reader UDF de AU3 a AHK.
;Nota: Esta UDF no está completa... Faltan muchas funciones que agregar de la UDF original en AutoIt... :(
;Autor: Mateo Cedillo.
speaking(text)
{
reader:= "other"
process, Exist, nvda.exe
if ErrorLevel != 0
{
reader:= "NVDA"
NVDAController_CancelSpeech()
nvdaController_speakText(text)
NVDAController_BrailleMessage(text)
}
process, Exist, jfw.exe
if ErrorLevel != 0
{
reader:= "JAWS"
JFW := ComObjCreate("FreedomSci.JawsApi")
JFW.SayString(text)
}
If global Reader = "other"
{
Speak(text, 3)
}
}