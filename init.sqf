
// Include Files 
ExecVM "ExtractCounter.sqf";


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

