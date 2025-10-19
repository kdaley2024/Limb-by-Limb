INCLUDE rocketGame.inc

.code
DrawPlayer PROC USES eax ebx
    ; duck shortens sprite by 1
    mov  eax, stickY
    mov  ebx, isDucking
    cmp  ebx, 0
    je   @normal
    inc  eax
@normal:
    ; head
    mov  eax, stickY
    INVOKE PutChAt, stickHead, stickX, eax
    ; body
    inc  eax
    INVOKE PutChAt, BYTE PTR [stickBody], BYTE PTR [stickX], eax
    ; arms "/-" start at x-1
    inc  eax
    mov  ebx, stickX
    dec  ebx
    mov  dl, bl
    mov  dh, al
    call Gotoxy
    mov  edx, OFFSET stickArms
    call WriteString
    ; legs
    inc  eax
    INVOKE PutChAt, BYTE PTR [stickLegs], BYTE PTR [stickX], eax
    ; aim guide from approx gun origin (x+2, baseline or ducked baseline)
    mov  eax, stickY
    mov  ebx, isDucking
    cmp  ebx, 0
    je   @aimy
    inc  eax
@aimy:
    mov  ebx, stickX
    add  ebx, 2
    ;INVOKE DrawAim, ebx, eax, aimDeg
    ret
DrawPlayer ENDP

END
