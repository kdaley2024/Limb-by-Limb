INCLUDE Irvine32.inc

.data
goX DWORD 5
goY DWORD 5

goLine1 BYTE "  /\\\\\\\\\\    /\\      /\\   /\\\\\\\\\\\\   /\\\\\\\\\\   /\\\\\\\\\\  /\\\\\\\\\\ ",0
goLine2 BYTE " /       \\  /  \\    /  \\  \\      \\ /  \\   /  \\   /  \\  ",0
goLine3 BYTE "/   /\\   \\/ /\\ \\  / /\\ \\  \\  /\\  \\\\   / /\\ \\ / /\\ \\ ",0
goLine4 BYTE "\\  /  \\  / /  \\ \\/ /  \\ \\  \\/  \\/  \\ / /  \\ / /  \\ ",0
goLine5 BYTE " \\/ /\\ \\/ / /\\  \\/ / /\\ \\  / /\\  /  / /\\  / /\\  /",0
goLine6 BYTE "  \\/  \\/_/ /  \\   /  \\  \\/ /  \\/  / /  \\   /  \\/ ",0
goLine7 BYTE "   \\______/    \\_/    \\____/    \\/    \\_/    \\____/",0

.code
main PROC
    mov  eax, goX
    mov  ebx, goY

    mov  dl, al
    mov  dh, bl
    call Gotoxy
    mov  edx, OFFSET goLine1
    call WriteString

    inc  bl
    mov  dh, bl
    call Gotoxy
    mov  edx, OFFSET goLine2
    call WriteString

    inc  bl
    mov  dh, bl
    call Gotoxy
    mov  edx, OFFSET goLine3
    call WriteString

    inc  bl
    mov  dh, bl
    call Gotoxy
    mov  edx, OFFSET goLine4
    call WriteString

    inc  bl
    mov  dh, bl
    call Gotoxy
    mov  edx, OFFSET goLine5
    call WriteString

    inc  bl
    mov  dh, bl
    call Gotoxy
    mov  edx, OFFSET goLine6
    call WriteString

    inc  bl
    mov  dh, bl
    call Gotoxy
    mov  edx, OFFSET goLine7
    call WriteString

    call Crlf
        ; <— exits cleanly, provided by Irvine32
main ENDP

END main