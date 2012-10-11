
// Include Files 
ExecVM "ExtractCounter.sqf";
ExecVM "notes.sqf";
ExecVM "tasks.sqf";

private [
	"CIA_Contact_action_id",
	"helo2_action_id",
	"CIA_Attache_action_id",
	"Consulate_explosion"
];

// Add actions to relevant characters :
CIA_Contact_action_id = CIA_Contact addAction [
	"Have you got the intel package ?", 
	"ManageObjectives.sqf", 
	"", 6, false
];

helo2_action_id = helo2 addAction [
	"Take Off", 
	"takeoff.sqf", 
	"" , 6, false
]; 

CIA_Attache_action_id = CIA_Attache addAction [
	"Do you any more information about the mission ?",
	"ManageObjectives.sqf",
	"", 6, false
];

// public variables 
if (isServer) then {
	Talked_to_CIA_contact = false;
	publicVariable "Talked_to_CIA_contact";
	
	Talked_to_CIA_attache = false;
	publicVariable "Talked_to_CIA_attache";
	
	Helo_take_off = false;
	publiVariable "Helo_take_off";
	
	Consulate_explosion = false;
	publicVariable "Consulate_explosion";
};

// Event handlers
Talked_to_CIA_contact_ev = {
	CIA_Contact removeAction CIA_Contact_action_id;

	Mission_overview_note  call SHK_TaskMaster_addNote;
	Cover_story_note       call SHK_TaskMaster_addNote;
	Extraction_note        call SHK_TaskMaster_addNote;
	Enemy_forces_note      call SHK_TaskMaster_addNote;
	friendly_forces_note   call SHK_TaskMaster_addNote;
	weather_notes          call SHK_TaskMaster_addNote;
	Commander_intent_note  call SHK_TaskMaster_addNote;
};

Talked_to_CIA_attache_ev = {
	CIA_Attache removeAction CIA_Attache_action_id;
	
	Weapons_cache_note call SHK_TaskMaster_addNote;
};

Helo_take_off_ev = {

};

// Warning -- contains sleep statement. Run only with spawn !
// Better yet don't call it directly and use Consulate_explosion_ev
Consulate_explosion_fnc = {
	Explosion_note call SHK_TaskMaster_addNote;
	sleep 120;
	hintSilent "We're working on a new extraction solution for you guys. We're not going to forget about you !";
	sleep 180;
	Extraction_update_note call SHK_TaskMaster_addNote;
};

// This is the real ev. Call this !
Consulate_explosion_ev {
	[] spawn Consulate_explosion_fnc;
}

// register event handlers 
"Talked_to_CIA_contact" addPublicVariableEventHandler Talked_to_CIA_contact_ev;
"Talked_to_CIA_attache" addPublicVariableEventHandler Talked_to_CIA_attache_ev;
"Helo_take_off"         addPublicVariableEventHandler Helo_take_off_ev;
"Consulate_explosion"   addPublicVariableEventHandler Consulate_explosion_ev;

// Create Tasks
[[
], [// Create Notes 
]] call compile preprocessfilelinenumbers "shk_taskmaster.sqf";



