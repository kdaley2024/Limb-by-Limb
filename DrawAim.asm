DrawAim PROC USES eax ebx ecx edx esi edi,
    x0:DWORD, y0:DWORD, deg:SDWORD
    ; 0..180, then index 15-degree steps
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
mov esi, 1   ; dx default
    mov edi, 0   ; dy default
    cmp eax, 0
    je  DrawAim_Lset
    cmp eax, 1
    je  DrawAim_L1
    cmp eax, 2
    je  DrawAim_L2
    cmp eax, 3
    je  DrawAim_L3
    cmp eax, 4
    je  DrawAim_L4
