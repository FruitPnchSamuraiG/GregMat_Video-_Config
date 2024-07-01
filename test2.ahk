^Esc::ExitApp  ; Press Ctrl + Esc to exit the script

^j::  ; Ctrl + J hotkey

; Save the image on your device and update the imagePath
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

        FoundY-=60
        Click, %FoundX%, %FoundY%   
        Sleep, 300

        
        Click, %FoundX%, %FoundY%  
        Sleep, 300

        
        FoundY+=60
        Click, %FoundX%, %FoundY%
        Sleep, 300

        
        FoundY-= 60
        Click, %FoundX%, %FoundY%  
        Sleep, 300

        ; pixel menu
        FoundY-= 60 
        Click, %FoundX%, %FoundY%  
        Sleep, 300

        ; pixel menu
        FoundY-= 40
        Click, %FoundX%, %FoundY%  
        Sleep, 300

        FoundX-= 380
        Click, %FoundX%, %FoundY%  ; Adjust offsets as needed

        Sleep, 300
        Click, %FoundX%, %FoundY% 


        return true
    }
    else {
        MsgBox, % "Image not found: " imagePath " `n Errorlevel: " errorLevel
        return false
    }
}

; Locate and click the settings button
; Usage example:
if (!ClickImage(FoundX, FoundY))
    return


