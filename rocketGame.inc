INCLUDE Irvine32.inc
;.386
;.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
OPTION PROC: PRIVATE

DrawHud PROTO
DrawPlayer PROTO
PutChAt PROTO
EXTERNDEF sum:DWORD