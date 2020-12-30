M300 S500 P600     ; beep
T0		; Select tool
; 
M291 P"Insert filament. Press ok to start feeding filament..." S2; Display new message
M291 P"Feeding filament.... " S1 T25
;
G91                ; Set to Relative Positioning
G1 E90 F300	       ; Feed 90mm of filament at 300mm/min
G1 E15 F100	       ; Feed 15mm of filament at 100mm/min
G4 P1000	       ; Wait one second
;
M98 P"0:/macros/09 Filament Handling/purge.g"
;
G1 E-1 F200	   ; Retract 1mm of filament at 400mm/min
;
M400               ; Wait for the moves to finish
M84 E0             ; Turn off extruder drives 1 
;G10 S0		       ; Turn off the heater again
