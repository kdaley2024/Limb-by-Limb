INCLUDE rocketGame.inc

.code
SpawnShip PROC
    mov  eax, 3
    call RandomRange
    mov  shipType, eax

    mov  eax, shipType
    cmp  eax, 0
    je   @small
    cmp  eax, 1
    je   @med
    mov  eax, 3
    jmp  @sizeDone
@med:
    mov  eax, 2
    jmp  @sizeDone
