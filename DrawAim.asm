DrawAim PROC USES eax ebx ecx edx esi edi,
    x0:DWORD, y0:DWORD, deg:SDWORD
    ; clamp 0..180, then index 15-degree steps
    mov eax, deg
    cmp eax, 0
    jge @ok1
    mov eax, 0
@ok1: cmp eax, 180
    jle @ok2
    mov eax, 180
@ok2: mov ebx, 15
    cdq
    idiv ebx
