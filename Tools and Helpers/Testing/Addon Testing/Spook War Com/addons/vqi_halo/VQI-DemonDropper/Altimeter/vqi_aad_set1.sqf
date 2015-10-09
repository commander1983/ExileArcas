//
// Above Sea Level - EXTREMLY LOW! - Water ONLY!!!


waitUntil {getPosASL player select 2 < 400}; playSound "aad_beeping"; //Alert +300m
waitUntil {getPosASL player select 2 < 100}; player action ["openParachute"];