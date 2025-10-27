INCLUDE rocketGame.inc

DamagePlayer PROC USES eax ebx ecx edx

    mov  eax, nextDamageIdx
    cmp  eax, 4
    jge  @done

    mov  ecx, eax
    shl  ecx, 2
    mov  ebx, damageOrder[ecx]
    not  ebx
    and  limbMask, ebx

    inc  eax
    mov  nextDamageIdx, eax

@done:
    ret
DamagePlayer ENDP

END
