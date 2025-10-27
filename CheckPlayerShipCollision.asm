INCLUDE rocketGame.inc

CheckPlayerShipCollision PROC USES eax ebx ecx edx esi edi ebp

    cmp  playerIFrames, 0
    jg   @skip

    mov  edi, shipType
    mov  edx, 6
    mov  ebx, 2
    cmp  edi, 0
    je   @sz_ok
    cmp  edi, 1
    jne  @big
    mov  edx, 8
    mov  ebx, 2
    jmp  @sz_ok
@big:
    mov  edx, 10
    mov  ebx, 3

@sz_ok:

    mov  eax, shipX                   ; sx0
    mov  ecx, eax                     ; temp = sx0
    add  ecx, edx                     ; temp = sx0 + W
    dec  ecx                          ; sx1

    mov  esi, shipY                   ; sy0
    mov  edx, esi                     ; temp = sy0
    add  edx, ebx                     ; temp = sy0 + H
    dec  edx                          ; sy1   (EDX holds sy1)

    mov  ebx, stickX                  ; px center
    mov  edi, ebx                     ; px1 base
    sub  ebx, 1                       ; px0 = x-1
    add  edi, 1                       ; px1 = x+1

