INCLUDE Irvine32.inc
;.386
;.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
OPTION PROC: PRIVATE


PutChAt PROTO :BYTE, :DWORD, :DWORD
DrawPlayer PROTO

Gotoxy        PROTO
WriteString   PROTO
WriteChar     PROTO



;global variables

EXTERNDEF stickX:DWORD
EXTERNDEF limbMask:DWORD

