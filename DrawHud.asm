INCLUDE rocketGame.inc

.code
DrawHUD PROC USES eax edx
    mov  dl, 0
    mov  dh, 0
    call Gotoxy
    mov  edx, OFFSET titleMsg
    call WriteString

 
DrawHUD ENDP
END
