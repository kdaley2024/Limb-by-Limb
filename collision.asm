INCLUDE rocketGame.inc

.code
CheckPlayerShipCollision PROC USES eax ebx ecx edx esi edi ebp
    cmp  playerIFrames, 0
    jg   @skip

    ; ship size -> (W=EDX, H=EBX)
    mov  edi, shipType
    mov  edx, 6
    mov  ebx, 2
    cmp  edi, 1
    jne  @maybeBig
    mov  edx, 8
    mov  ebx, 2
@maybeBig:
    cmp  edi, 2
    mov  edx, 10

@skip:
    ret
CheckPlayerShipCollision ENDP
END
