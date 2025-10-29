INCLUDE LimbbyLimb.inc

;color constants that may be used for the implementation of the stickman
BLACK   EQU 0
WHITE   EQU 15
LIGHTRED EQU 12
LIGHTCYAN EQU 11

.code

;this procedure will draw the stickman in parts
DrawPlayer PROC USES eax ebx edx
    @draw:
        ; Draw the head looking like O
        mov  ebx, limbMask
        test ebx, 1
        jz   @noHead
        INVOKE PutChAt, 'O', stickX, eax
    @noHead:
        ; Draw the body looking like |
        inc  eax
        mov  ebx, limbMask
        test ebx, 2
        jz   @noBody
        INVOKE PutChAt, '|', stickX, eax
    @noBody:
        ; Draw the body looking like /-
        inc  eax
        mov  ebx, limbMask
        test ebx, 4
        jz   @noArms
        mov  ebx, stickX
        dec  ebx
        mov  dl, bl
        mov  dh, al
        call Gotoxy
        mov  edx, OFFSET stickArms
        call WriteString
    @noArms:
        ; Draw the legs looking like / \
        inc  eax
        mov  ebx, limbMask
        test ebx, 8
        jz   @noLegs
        mov  dl, BYTE PTR stickX
        mov  dh, al
        call Gotoxy
        mov  edx, OFFSET stickLegs
        call WriteString
    @noLegs:
    
        ; restore to white when the flashing of the player is later implemented
        mov  eax, (BLACK SHL 4) + WHITE
        call SetTextColor


    ret
DrawPlayer ENDP
END
