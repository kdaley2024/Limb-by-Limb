INCLUDE rocketGame.inc
.data
; strings
spcStr      BYTE    " ",0
stickHead   BYTE    "O",0
stickBody   BYTE    "|",0
stickArms   BYTE    "/-",0
stickLegs   BYTE    "/ \",0
gunChar     BYTE    "*",0
shipChar    BYTE    "^",0
hitChar     BYTE    "#",0
pillarChar  BYTE    "|",0
bulletChar  BYTE    ".",0

stickX      DWORD   6
stickY      DWORD   18           ; baseline row (0=top)
jumpStep    DWORD   2
jumpTimerMs DWORD   0            ; for double-jump detection
jumpWindow  DWORD   180          ; ms to allow a second UP for double jump
isDucking   DWORD   0

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