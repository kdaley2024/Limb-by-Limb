INCLUDE Irvine32.inc
;.386
;.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
OPTION PROC: PRIVATE

;constants
scrW        EQU 80
scrH        EQU 25

;Windows virtual-key codes (hex)
VK_LEFT   EQU 25h
VK_RIGHT  EQU 27h
VK_ESCAPE EQU 1Bh

;Win API proto
GetAsyncKeyState PROTO :DWORD
GetTickCount    PROTO
Sleep           PROTO :DWORD
PutChAt PROTO :BYTE, :DWORD, :DWORD
UpdateSteps PROTO
DrawShip  PROTO
SpawnShip PROTO
CheckPlayerShipCollision PROTO
MoveShipDown
DrawHud PROTO
CheckKeys PROTO
UpdateDifficulty PROTO
DrawPlayer PROTO
DamagePlayer PROTO


EXTERNDEF sum:DWORD
EXTERNDEF titleMsg:BYTE, lvlLbl:BYTE
EXTERNDEF scrW:DWORD, scrH:DWORD
EXTERNDEF stickX:DWORD, stickY:DWORD, jumpStep:DWORD
EXTERNDEF limbMask:DWORD, nextDamageIdx:DWORD
EXTERNDEF damageOrder:DWORD
EXTERN playerIFrames:DWORD, playerFlash:DWORD
EXTERNDEF shipX:SDWORD, shipY:SDWORD, shipType:DWORD
EXTERNDEF bgSpeed2x:DWORD, lastBumpMs:DWORD
EXTERNDEF frameDelay:DWORD
EXTERNDEF shipAcc:DWORD, shipStep:DWORD
EXTERNDEF stickHead:BYTE, stickBody:BYTE, stickArms:BYTE, stickLegs:BYTE
