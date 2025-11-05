INCLUDE Irvine32.inc
;.386
;.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
OPTION PROC: PRIVATE


PutChAt PROTO :BYTE, :DWORD, :DWORD
DrawPlayer PROTO
DrawHUD    PROTO
DrawShip PROTO
CheckKeys PROTO
SpawnShip PROTO
MoveShipDown PROTO
UpdateSteps PROTO
UpdateDifficulty PROTO
CheckPlayerShipCollision PROTO
DamagePlayer PROTO

Gotoxy        PROTO
WriteString   PROTO
WriteChar     PROTO
WriteDec      PROTO
SetTextColor  PROTO
RandomRange   PROTO
Randomize     PROTO
Clrscr        PROTO

;This was not learnt in class. This is the Windows API which was learnt from the textbook.
;learn.microsoft.com
EXTERN  GetAsyncKeyState@4:PROC
;Chapter 11.1
EXTERN  GetTickCount@0:PROC
;Chapter 11.1
EXTERN  Sleep@4:PROC


;global variables



EXTERNDEF stickX:DWORD
EXTERNDEF shipType:DWORD
EXTERNDEF limbMask:DWORD
EXTERNDEF titleMsg:BYTE
EXTERNDEF lvlLbl:BYTE
EXTERNDEF level:DWORD
EXTERNDEF shipX:SDWORD
EXTERNDEF shipY:SDWORD
EXTERNDEF scrW:ABS, scrH:ABS
EXTERNDEF bgSpeed2x:DWORD
EXTERNDEF shipStep:DWORD
EXTERNDEF lastBumpMs:DWORD
EXTERNDEF shipAcc:DWORD
EXTERNDEF stickHead:BYTE, stickBody:BYTE, stickArms:BYTE, stickLegs:BYTE
EXTERNDEF frameDelay:DWORD
EXTERNDEF stickY:DWORD
EXTERNDEF nextDamageIdx:DWORD
EXTERNDEF damageOrder:DWORD
EXTERNDEF playerIFrames:DWORD, playerFlash:DWORD
