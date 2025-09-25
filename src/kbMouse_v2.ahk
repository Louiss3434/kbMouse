; --- Settings ---
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; --- Mouse Movement with Escape combos ---
Escape & i::MouseMove 0, -10, 0, R
Escape & k::MouseMove 0,  10, 0, R
Escape & j::MouseMove -10, 0, 0, R
Escape & l::MouseMove  10, 0, 0, R
Escape & u::Click Left
Escape & o::Click Right

; --- Handle Escape pressed alone (tap or hold) ---
~Escape::
    KeyWait, Escape, T0.15
    if (ErrorLevel) {
        ; still holding Escape
        ; no need to resend down/up if you just want natural Esc
    } else {
        ; quick tap
        ; do nothing extra, since ~ already sent Esc
    }
Return

; --- Mouse Wheel with RAlt ---
RAlt & r::Send {WheelUp}
RAlt & f::Send {WheelDown}
RAlt::Return   ; prevents menu activation when pressed alone

; --- Arrow Keys with LAlt ---
LAlt & i::Send {Up}
LAlt & k::Send {Down}
LAlt & j::Send {Left}
LAlt & l::Send {Right}

; --- Ctrl + Arrow (word navigation) ---
#If GetKeyState("LControl", "P")
    LAlt & j::Send ^{Left}
    LAlt & l::Send ^{Right}
#If

; --- Win + Arrow (window snapping & desktop mgmt) ---
#If GetKeyState("LWin", "P")
    LAlt & j::Send ^#{Left}
    LAlt & l::Send ^#{Right}
    LAlt & i::Send ^#d
    LAlt & k::Send ^#{F4}
#If

; --- Shift + Arrow (selection) ---
#If GetKeyState("LShift", "P")
    LAlt & j::Send ^+{Left}
    LAlt & l::Send ^+{Right}
    LAlt & i::Send +{Up}
    LAlt & k::Send +{Down}
#If

; --- Alt + Arrow (browser navigation, etc.) ---
#If GetKeyState("LAlt", "P")
    RAlt & j::Send !{Left}
    RAlt & l::Send !{Right}
#If
