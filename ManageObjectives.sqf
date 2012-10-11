
private ["_script_target"];

_script_target = _this select 0;
//hint format ["Script target : %1", _script_target];

// Uncomment to show the arguments passed to the script
// hint format["gen %1, caller %2, id %3", _this select 0, _this select 1, _this select 2];

if (_script_target == CIA_Contact) then {
	["TalkToContact", "succeeded"] call SHK_TaskMaster_upd;
	
	if (isServer) then {
		Get_in_chopper_task call SHK_TaskMaster_Add;
		sleep 1;
		Talk_to_contact_task call SHK_TaskMaster_Add;
	};
	
	sleep 1;
	AddNotesFromContact = true;
	publicVariable "AddNotesFromContact";
	
	Civilian_Pilot addAction ["We're ready to take off", "ManageObjectives.sqf", "", 6, false];
};

if (_script_target == Helo2) then {
	["GetInChopper", "succeeded"] call SHK_TaskMaster_upd;
	
	// tell the chopper to take off !
	helo_take_off = true;
	publicVariable "helo_take_off";
};

if (_script_target == CIA_Attache) then {
	["TalkToAttache", "succeeded"] call SHK_TaskMaster_upd;
	
	addNotesFromAttache = true;
	publicVariable "addNotesFromAttache";
	
	if (isServer) then {
		Get_weapons_task call SHK_TaskMasterAdd;
	};
};

