
;SEQUENCE PURGE FILAMENT
T0		; Select tool
M109 S200	; set the current hotend temperature to 200 and wait for it
M400
M291 P"Press OK to purge..."  S3 
G1 E20 F100	; extrude 20mm
M300 S500 P200
G4 P200
M300 S600 P300
G4 P1000
M291 P"Continue purge?" R"Purge" S3 
G1 E20 F100	; extrude 20mm
M300 S500 P200
G4 P200
M300 S600 P300
G4 P1000
M291 P"Continue purge?" R"Purge" S3 
G1 E20 F100	; extrude 20mm
M300 S500 P200
G4 P200
M300 S600 P300
M291 P"..... done" T20

