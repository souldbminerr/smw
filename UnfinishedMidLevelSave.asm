;-----------------------------------------------------------------------------------------------
;Mid Level Saving - By Soul								       
;This uberasm code, along with SRAM or BW-RAM plus, allows you to save positions in levels
;Insert in gamemode 0B (Fade to Overworld)
;SRAM tables in readme.txt
;-----------------------------------------------------------------------------------------------
;Defines

!InLevelFlag = $00 ;An empty RAM which determines if the player is in a level

;Code starts here

init:
JML LoadSaveData

LoadSaveData:
LDA !InLevelFlag ; check if in level
BNE InLevel

InLevel:
LDA #$14
STA $0100|!addr ; We are messing with gamemode code
LDA #$00
STA $0D9B ;Set up IRQ to level mode
