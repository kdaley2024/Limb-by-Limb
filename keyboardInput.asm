INCLUDE rocketGame.inc

.code

CheckKeys PROC USES eax ebx
    ; ESC -> quit sentinel
    push VK_ESCAPE
    call GetAsyncKeyState@4
    test ax, 8000h
    jz   @noEsc
    mov  bgSpeed, 0FFFFFFFFh
    ret
@noEsc:

    ; A -> aim left
    push VK_A
    call GetAsyncKeyState@4
    test ax, 8000h
    jz   @noA
    mov  eax, aimDeg
    sub  eax, 3
    cmp  eax, 0
    jge  @aok
    mov  eax, 0
@aok: mov  aimDeg, eax
