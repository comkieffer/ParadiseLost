_target = _this select 0; // _target = hostage
_caller = _this select 1; // _caller = person that uses action
_action = _this select 2;

[_target] join (group _caller); //Join the group of the caller.
["RescueHostage", "succeded"] call SHK_TaskMaster_upd;
