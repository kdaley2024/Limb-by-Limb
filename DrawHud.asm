INCLUDE rocketGame.inc
.data
titleMsg    BYTE    "Rocket Stickman (MASM/Irvine32)",0
scoreLbl    BYTE    "Score: ",0
hpLbl       BYTE    " Ship HP: ",0
diffLbl     BYTE    "  Speed: ",0
score       DWORD   0
shipHP      DWORD   1
bgSpeed     DWORD   1   

.code
DrawHUD PROC USES eax edx
    mov  dl, 0    ; x=0, y=0
    mov  dh, 0
    call Gotoxy
    mov  edx, OFFSET titleMsg
    call WriteString

    mov  dl, 0
    mov  dh, 1
    call Gotoxy
    mov  edx, OFFSET scoreLbl
    call WriteString
    mov  eax, score
    call WriteDec

    mov  dl, 18
    mov  dh, 1
    call Gotoxy
    mov  edx, OFFSET hpLbl
    call WriteString
    mov  eax, shipHP
    call WriteDec

    mov  dl, 34
    mov  dh, 1
    call Gotoxy
    mov  edx, OFFSET diffLbl
    call WriteString
    mov  eax, bgSpeed
    call WriteDec
    ret
DrawHUD ENDP

END