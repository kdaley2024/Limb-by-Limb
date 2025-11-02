INCLUDE LimbbyLimb.inc

;this procedure increases the difficulty of the game making the spaceships appear and fall on the screen faster
.code
UpdateDifficulty PROC USES eax

    call GetTickCount@0
    mov  edx, lastBumpMs
    cmp  eax, edx
    jb   @skip

@skip:
    ret
UpdateDifficulty ENDP

END
