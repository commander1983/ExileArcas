//
//


waitUntil {getPosASL player select 2 < 900}; playSound "aad_beeping";
waitUntil {getPosASL player select 2 < 600}; player action ["openParachute"];