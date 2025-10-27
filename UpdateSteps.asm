INCLUDE rocketGame.inc

UpdateSteps PROC USES eax edx ebx
    mov  eax, shipAcc
    add  eax, bgSpeed2x
    xor  edx, edx
    mov  ebx, 2
    div  ebx
    mov  shipStep, eax
    mov  shipAcc, edx
    ret
UpdateSteps ENDP

END
