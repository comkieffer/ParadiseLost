
// tasks.sqf
//
// Contains all tasks that will be assigned to players during the mission
//

Rescue_hostage_task = [
	"RescueHostage",
	"Rescue the Journalist",
	"Mark Thompson, an American journalist has been captured by insurgents. He was on route to interview one of their leaders when he dispeared. Rescue him and take him to the LZ for extraction."
];

RescueHostage call SHK_TaskMaster_Add;


Talk_to_contact_task = [
	"TalkToContact", 
	"Talk To the CIA Contact", 
	"Your Contact will be waiting for you near the aircraft hangar. He has your intel package for the mission."
];

Get_in_chopper_task = [
	"GetInChopper", 
    "Take the Chopper to the Embassy", 
	"A Chopper is waiting to take you the US Embassy in Ovallestàn. Tell the pilot when you are ready to leave."
];

Talk_to_attache_task = [
	"TalkToAttache", 
	"Talk To the CIA attache", 
	"Talk to the CIA attache at the consulate, he has addtional intel on the compound"
];
	
Get_weapons_task = [
	"GetWeapons", 
	"Go and fetch your weapons at the cache",
	"The CIA has a weapons cache in Kespora. Go there and get some weapons."
];

Destroy_Cache_tasks = [
	"DestroyCache",
	"Destroy the weapons cache",
	"Thompson just told you about a weapon cache he saw on Etnikora, HQ let you know that it's your call. You can go in or get back to base, but don't forget that the extraction is timed whatever you chose don't get Thompson killed"
];