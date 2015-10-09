//
//


waitUntil {getPosASL player select 2 < 450}; playSound "aad_beeping";
waitUntil {getPosASL player select 2 < 150}; player action ["openParachute"];