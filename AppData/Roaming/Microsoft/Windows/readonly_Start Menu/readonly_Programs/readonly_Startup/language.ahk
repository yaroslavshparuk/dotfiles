#Requires AutoHotkey v2.0

; LWin = Left GUI (Windows Key)

; Set to Ukrainian
<#F24:: {
    PostMessage(0x50, 0, 0x0422,, "A") ; 0x0422 is the hex code for Ukrainian
}

; Set to English (United States)
<#F23:: {
    PostMessage(0x50, 0, 0x0409,, "A") ; 0x0409 is the hex code for English (US)
}
; Keypad Remaps
Numpad1::Send(".")  ; Maps Numpad 1 to period
Numpad2::Send(",")  ; Maps Numpad 2 to comma
Numpad3::Send("?")  ; Maps Numpad 3 to question mark