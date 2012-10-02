
// Include Files 
ExecVM "ExtractCounter.sqf";


// Create Tasks
[[
], [// Create Notes 
]] call compile preprocessfilelinenumbers "shk_taskmaster.sqf";

Note0 = [
	"Mission Details",
	"You must rescue Mark Thompson, he was captured by insurgents 2 days ago. This morning a Global Hawk reconaissance drone located the compound he is being held in (Grid ref 102, 170). The compound, in the city of Agresoran is composed of 3 seperate buildings.<br/>We estimate no more than 15 enemy fighters in the Immediate area but they probably have support troops in the mountain villages to the south of the target compound.<br/> Once You have secured the hostage take him to grid ref 090, 171 and call for an extraction.<br/>The CIA has mobilised it's HUMINT assets in the area and will forward any extra information they have on the situation."
];

Note1 = [
	"Factions",
	"The region is for all intents and purposes out of reach of the government. The UN troops in the region rarely venture West of Ovallestàn for fear of being attacked by Islamist radicals that have made the region into a major open air training camp.<br/> The UN forces will be neutral with regards to foreigners. The civilians though might be less friendly. A violent demonstartion has started in front of the Amercan consulate in Ovallstàn.<br/> Insurgents will be present in the country side west of Ovallestàn. The town of Demenazhir is a hotspot of insurgent activity and you should expect a strong insurgent presence in the town and it's suburbs. There may also be patrols on the roads from Ovallestàn to Demenazhir."
];

Note2 = [
	"Mark Thompson",
	"Mark Thompson, a journalist for the 'Old Yorker' was in the country to write a profile on an insurgent leader. His newspaper tells us that he had secured an interview with him. Unfortunately he never returned from the interview.<br/>He was last seen driving out of Ovallstàn with his interpreter."
];

task0 = [
	"RescueHostage",
	"Rescue the Journalist",
	"Mark Thompson, an American journalist has been captured by insurgents. He was on route to interview one of their leaders when he dispeared. Rescue him and take him to the LZ for extraction."
];

task0 call SHK_TaskMaster_Add;

task0 = [
	"RescueHostage",
	"Rescue the Hostage",
	"Rescue the american captive and subdue his captors. Let the world know that America does not negotiate with terrorsits."
];

task1 = [
	"TalkToContact", 
	"Talk To the CIA Contact", 
	"Your Contact will be waiting for you near the aircraft hangar. He has your intel package for the mission."
];

task2 = [
	"GetInChopper", 
    "Take the Chopper to the Embassy", 
	"A Chopper is waiting to take you the US Embassy in Ovallestàn. Tell the pilot when you are ready to leave."
];

task3 = [
	"TalkToAttache", 
	"Talk To the CIA attache", 
	"Talk to the CIA attache at the consulate, he has addtional intel on the compound"
];
	
task4 = [
	"GetWeapons", 
	"Go and fetch your weapons at the cache",
	"The CIA has a weapons cache in Kespora. Go there and get some weapons."
];

// Control vars. 
GiveNotes = false;
"GiveNotes" addPublicVariableEventHandler {
	hint "broadcast Give notes change";
	Note0 call SHK_TaskMaster_addNote;
	Note1 call SHK_TaskMaster_addNote;
	Note2 call SHK_TaskMaster_addNote;
};

publicVariable "GiveNotes";


