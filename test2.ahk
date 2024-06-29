^Esc::ExitApp  ; Press Ctrl + Esc to exit the script

^j::  ; Ctrl + J hotkey

; Function to click on an image if found and return its coordinates
ClickImage(ByRef x := "", ByRef y := "", imagePath := "C:\Users\hrida\Pictures\Screenshots\Screenshot 2024-06-29 193113.png"){

    if (imagePath = "") {
        imagePath := "C:\Users\hrida\Pictures\Screenshots\Screenshot 2024-06-29 185124.png" 
    }

    CoordMode, Pixel, Screen
    CoordMode, Mouse, Screen
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, %imagePath%
    if (ErrorLevel = 0)  ; Image found
    {
        x := FoundX
        y := FoundY
        FoundX+=7
        FoundY+=4
        Click, %FoundX%, %FoundY%
        Sleep, 300

        ; Click the speed option relative to the settings button
        FoundY-=60
        Click, %FoundX%, %FoundY%   ; Adjust Y offset as needed
        Sleep, 300

        ; Click the 2x speed option relative to the settings button
        Click, %FoundX%, %FoundY%  ; Adjust Y offset as needed
        Sleep, 300

        ; Click the settings button again to open the menu
        FoundY+=60
        Click, %FoundX%, %FoundY%
        Sleep, 300

        ; Click the pixel option relative to the settings button
        FoundY-= 60
        Click, %FoundX%, %FoundY%  ; Adjust Y offset as needed
        Sleep, 300

        ; pixel menu
        FoundY-= 60 
        Click, %FoundX%, %FoundY%  ; Adjust Y offset as needed
        Sleep, 300

        ; pixel menu
        FoundY-= 40
        Click, %FoundX%, %FoundY%  ; Adjust Y offset as needed
        Sleep, 300


        ; Close the settings menu relative to the settings button
        FoundX-= 380
        Click, %FoundX%, %FoundY%  ; Adjust offsets as needed

        Sleep, 300
        Click, %FoundX%, %FoundY% 


        return true
    }
    else
    {
        MsgBox, Image not found: %imagePath%
        return false
    }
}

; Locate and click the settings button
; Usage example:
if (!ClickImage(FoundX, FoundY))
    return


; Click the speed option relative to the settings button
Click, %FoundX%, %FoundY% - 60  ; Adjust Y offset as needed
Sleep, 1000

; Click the 2x speed option relative to the settings button
Click, %FoundX%, %FoundY%- 60  ; Adjust Y offset as needed
Sleep, 500

; Click the settings button again to open the menu
Click, %FoundX%, %FoundY%
Sleep, 500

; Click the pixel option relative to the settings button
Click, %FoundX%, %FoundY% - 120  ; Adjust Y offset as needed
Sleep, 500

; Click the 540P option relative to the settings button
Click, %FoundX%, %FoundY% - 170  ; Adjust Y offset as needed
Sleep, 500

; Close the settings menu relative to the settings button
Click, %FoundX% + 175, %FoundY%  ; Adjust offsets as needed

MsgBox, Script completed successfully.
return
