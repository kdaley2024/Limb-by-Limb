INCLUDE rocketGame.inc

.code
PutChAt PROTO : BYTE, :DWORD, :DWORD
PutChAt PROC USES eax edx, chr:BYTE, x:DWORD, y:DWORD
    mov   dl, BYTE PTR x      ; column
    mov   dh, BYTE PTR y      ; row
    
    call  Gotoxy
    mov   al, chr
    call  WriteChar
    ret
PutChAt ENDP
END
