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
