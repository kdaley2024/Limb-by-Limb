INCLUDE rocketGame.inc

DrawShip PROC USES eax ebx ecx edx edi
    mov  edi, shipType
    mov  edx, 6
    mov  ebx, 2
    cmp  edi, 0
    cmp  edi, 1
    jne  @big
    mov  edx, 8
    mov  ebx, 2
@big:
    mov  edx, 10
    mov  ebx, 3

    mov  eax, (BLACK SHL 4) + LiGHTCYAN
    call SetTextColor

@draw:
    mov  ecx, ebx
    mov  eax, shipY
@rows:
    push ecx
    mov  ecx, edx
    mov  edi, shipX
@cols:
    cmp  edi, 0
    jl   @colNext
    cmp  edi, scrW
    jge  @colNext
    cmp  eax, 0
    jl   @colNext
    cmp  eax, scrH
    jge  @colNext

    INVOKE PutChAt, '^', edi, eax

@colNext:
    inc  edi
    loop @cols
    inc  eax
    pop  ecx
    loop @rows

    mov  eax, (BLACK SHL 4) + WHITE
    call SetTextColor
    ret
DrawShip ENDP
