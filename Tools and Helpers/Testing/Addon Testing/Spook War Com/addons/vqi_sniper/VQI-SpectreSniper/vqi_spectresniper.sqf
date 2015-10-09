/////////////////////////////////////////////////////////////////////////////
/*	ADDON: VQI-SPECTRESNIPER-v0.4	BY: R.Von Quest  aka the "Goblin"
	------------------------------------------------------------------------
	DEPT.: Von Quest Industries		STATUS: WORK-IN-PROGRESS
	PROJECT: SNIPER SYSTEM			SERIES: SPOOKWARCOM
	ADDON NAME: SpectreSniper		VERSION: v0.4 - 01.FEB.2015
	------------------------------------------------------------------------
	CREATOR: R. Von Quest - aka the "Goblin"
	CREDITS: thanks to mrflay (assist with target code)
	------------------------------------------------------------------------
	NOTES: SNIPER = A sniper is a highly trained marksman who operates alone, 
	in a pair, or within a sniper team to maintain close visual contact with 
	the enemy and engage targets from concealed positions or distances exceeding 
	the detection capabilities of enemy personnel. These sniper teams operate 
	independently, with little combat asset support from their parent units.
	
	Snipers typically have highly selective and specialized training and use 
	high-precision/special application rifles and optics, and often have 
	sophisticated communication assets to feed valuable combat information 
	back to their units. In addition to marksmanship, military snipers are 
	trained in camouflage, field craft, infiltration, special reconnaissance 
	and observation, surveillance and target acquisition. (Wikipedia)
*/
/////////////////////////////////////////////////////////////////////////////



// START VQI SniperSystem
//
if (VQI_HINTS_SNIPER == 1) then {
sleep 5; hint "SpectreSniper: START";};

sleep 5;
ScoutSniperStealth = false;
missionNamespace setVariable ["SniperSenses", 10005];