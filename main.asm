; Demonstrate the AddTwo Procedure     (AddTwo.asm)
; Demonstrates different procedure call protocols.
INCLUDE rocketGame.inc

.data
word1 WORD 1234h
word2 WORD 4111h
sum DWORD ?

.code
main PROC PUBLIC

    ;call    Example1
    ;call    Example2

    gameLoop:
    call Clrscr
    ;call CheckKeys
    ;call ApplyGravity
    ;call DrawObstacles
    ;call DrawShip
    ;call UpdateBullets
    ;call DrawHUD
    call DrawPlayer
    ;call UpdateDifficulty
    ;push frameDelay
    ;call Sleep@4
    jmp  gameLoop
    ;call    DumpRegs

    ;exit
    invoke ExitProcess, 0

main ENDP

END main