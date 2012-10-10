
// Include Files 
ExecVM "ExtractCounter.sqf";
ExecVM "notes.sqf";
ExecVM "tasks.sqf";

// Add actions to relevant characters :
CIA_Contact_action_id = CIA_Contact addAction ["Have you got the intel package ?", "ManageObjectives.sqf", "", 6, false];
helo2_action_id       = helo2       addAction ["Take Off", "takeoff.sqf", "" , 6, false]; 
CIA_Attache_action_id = CIA_Attache addAction ["Do you any more information about the mission ?", "ManageObjectives.sqf", "", 6, false];


// Create Tasks
[[
], [// Create Notes 
]] call compile preprocessfilelinenumbers "shk_taskmaster.sqf";

// Control vars. 
if (isServer) then {
	AddNotesFromContact = false;
	publicVariable "AddNotesFromContact";
	
	AddNotesFromAttache = false;
	publicVariable "AddNotesFromAttache";
	
	AddExplosionNotes = false;
	publicVariable "AddExplosionNotes";
	
	HeloTakeOff = false;
	publicVariable "HeloTakeOff";
};

// Hideous hacks :
ExecVM "AddNotesFromContact.sqf";
ExecVM "AddNotesFromAttache.sqf";
ExecVM "AddExplosionNotes.sqf";

