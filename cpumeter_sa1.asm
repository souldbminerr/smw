;BMF's CPU Meter
;SA-1 port by Souldbminer

@xkas
org $008072;Hijack the Run Game code
JSR $FF9C;Not made to a label to ensure that xkas doesn't make it into a JSL

org $00FF9C;Change the JSR too if you change this, must be in bank 0
JSR $9322;Restore original code
BRA HaveStar;Valid arguments are HaveAll, HaveStar, and HaveNone
HaveAll:
HaveStar:
HaveNone:
RTS
