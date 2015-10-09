//
//


waitUntil {getPosASL player select 2 < 700}; playSound "aad_beeping";
waitUntil {getPosASL player select 2 < 400}; player action ["openParachute"];