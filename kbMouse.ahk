;kbmouse v4

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Escape & i::
{
MouseMove 0,-10,0,R
}
Return
Escape::Escape

Escape & k::
{
MouseMove 0,10,0,R
}
Return


Escape & j::
{
MouseMove -10,0,0,R
}
Return


Escape & l::
{
MouseMove 10,0,0,R
}
Return



Escape & u::
{
Click Left
}
Return


Escape & o::
{
Click Right
}
Return


RAlt & r::
{
Click WheelUp
}
Return
RAlt::RAlt

RAlt & f::
{
Click WheelDown
}
Return


LAlt & i::
{
Send {Up 1}
}
Return
LAlt::LAlt

LAlt & k::
{
Send {Down 1}
}
Return

LAlt & j::
{
Send {Left 1}
}
Return

LAlt & l::
{
Send {Right 1}
}
Return

#if GetKeyState("LControl","P")
LAlt & j::Send ^{Left 1}
#if GetKeyState("LControl","P")
LAlt & l::Send ^{Right 1}

#if GetKeyState("LWin","P")
LAlt & j::Send ^#{Left 1}
#if GetKeyState("LWin","P")
LAlt & l::Send ^#{Right 1}
#if GetKeyState("LWin","P")
LAlt & i::Send ^#d
#if GetKeyState("LWin","P")
LAlt & k::Send ^#{F4}


#if GetKeyState("LShift","P")
LAlt & j::Send ^+{Left 1}
#if GetKeyState("LShift","P")
LAlt & l::Send ^+{Right 1}
#if GetKeyState("LShift","P")
LAlt & i::Send +{Up 1}
#if GetKeyState("LShift","P")
LAlt & k::Send +{Down 1}
