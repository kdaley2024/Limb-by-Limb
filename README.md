# Contest-Github
Computer Architecture and Assembly Language contest code by Chervelle Pierre and Karla Daley.

# Overview

Arcade mini-game written in MASM using techniques shown in Kip Irvine, Assembly Language for x86 Processors (7th ed.). It runs as a Windows console app (text “graphics”) and uses Gotoxy, WriteString/WriteChar, Randomize/RandomRange, and Win32 timing (GetTickCount, Sleep).

You control a stickman on a rocket dodging scrolling obstacles and aiming a gun to shoot spaceships in the sky. Spaceships come in 3 sizes with different hit points (HP). Every 10 seconds the scroll speed (difficulty) increases. When a ship is destroyed it briefly flashes and respawns at a random vertical position.

## Core Mechanics

### Movement

Jump: Up arrow moves the stickman up by a fixed amount.

Double jump: Press Up twice quickly (≈180 ms window) to jump 2× the amount.

Duck: Down arrow makes the stickman shorter for one frame to clear low obstacles.

### Aiming & Shooting

Rotate aim: A (left) / D (right), clamped to 0–180° in coarse steps (integer math).

Fire: Space spawns a bullet from the stickman’s hand along the aim direction.

Collision: Bullets use AABB (bounding box) checks against the ship.

### Spaceships (Targets)

3 sizes with HP = 1, 2, 3 (larger ship = larger bbox and more hits).

On hit, the ship flashes for a few frames; at 0 HP it increments score and respawns with a random Y.

### Obstacles & Difficulty

Three vertical pillars scroll from right to left with a gap you must pass through.

Every 10 seconds the background speed increases (difficulty bump).

### HUD

Top-left shows Score, current ship HP, and current scroll Speed.

### Controls

↑: Jump (double-tap for double jump)

↓: Duck (one-frame clear)

A / D: Rotate aim left/right (0–180°)

Space: Shoot

Esc: Quit

## APIs used from the Textbook

Cursor & text: Gotoxy, WriteString, WriteChar, Clrscr (Irvine32)

Random: Randomize, RandomRange (Irvine32)

Timing: GetTickCount, Sleep (Win32 API called from MASM)

Keyboard (non-blocking): GetAsyncKeyState (Win32 API) for responsive polling

Arithmetic: integer-only updates; optional CDQ/IDIV patterns are documented for signed division (not required in the starter).

# Game Operations
showplayer
showbullet
printobsatcles
printscore
changecolor
gameover
checkpoint

