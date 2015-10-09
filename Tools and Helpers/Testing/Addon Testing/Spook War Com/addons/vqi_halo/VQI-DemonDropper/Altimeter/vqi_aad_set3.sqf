//
//


waitUntil {getPosASL player select 2 < 500}; playSound "aad_beeping";
waitUntil {getPosASL player select 2 < 200}; player action ["openParachute"];