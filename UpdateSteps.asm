INCLUDE LimbbyLimb.inc

.code
;per-frame step update from fixed-point speed x2
UpdateSteps PROC USES eax edx ebx

    ; ship step that is the same speed as background
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

