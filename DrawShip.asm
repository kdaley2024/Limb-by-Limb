INCLUDE rocketGame.inc

DrawShip PROC USES eax ebx ecx edx edi
    mov  edi, shipType
    mov  edx, 3     ; w
    mov  ebx, 1     ; h
    cmp  edi, 0  
    je  @sz_ok
    cmp  edi, 1  
    jne @big
    mov  edx, 4
    mov  ebx, 2
    jmp  @sz_ok
