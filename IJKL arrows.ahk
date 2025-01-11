#Requires AutoHotkey v2.0

; Hold Caps Lock and use IJKL for arrows
CapsLock & I::Up
CapsLock & J::Left
CapsLock & K::Down
CapsLock & L::Right

; Hold Caps Lock and use H and N for PgUp and PgDn
CapsLock & H::PgUp
CapsLock & N::PgDn

; Hold Caps Lock and use U and O for Home and End
CapsLock & U::Home
CapsLock & O::End

; Double tap Caps Lock to toggle Caps Lock
CapsLock:: {
    if (A_PriorHotkey = "CapsLock" && A_TimeSincePriorHotkey < 200) {
        SetCapsLockState !GetKeyState("CapsLock", "T")
    }
}
