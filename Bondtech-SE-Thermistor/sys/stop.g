; =========================================================================================================
;
; stop.g
; called when M0 (Stop) is run (e.g. when a print is cancelled)
;
; =========================================================================================================
;
M104 S0     ; turn off temperature
M140 S0     ; turn off heatbed
M107        ; turn off fan

