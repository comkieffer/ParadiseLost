
// Include Files 
ExecVM "ExtractCounter.sqf";


// Create Tasks
[[
], [// Create Notes 
]] call compile preprocessfilelinenumbers "shk_taskmaster.sqf";

Note0 = [
    "Mission Details",
    "You must rescue Mark Thompson, he was captured by insurgents 2 days ago. This morning a Global Hawk reconnaissance drone located the compound he is being held in [Grid ref 102170]. The compound, in the city of Agresoran is composed of 3 separate buildings. <br/> Once secured get Thompson to the consulate."
];

Note1 = [
    "Enemy Forces",
    "The UN forces will be neutral in regards to foreigners. The civilians though might be less friendly. A violent demonstration has started in front of the American consulate in Ovallstan.<br/> Insurgents will be present in the countryside west of Ovallestan. The town of Demenazhir is a hotspot of insurgent activity and you should expect a strong insurgent presence in the town and it's suburbs. We can’t estimate enemy forces strength due to high connexion with civilians in the region. Be ready for an important enemy presence."
];

Note2 = [
    "Allied Forces",
    "CIA has mobilised it's HUMINT assets in the area and will forward any extra information they have on the situation. There is a FAST platoon of marines at the US consulate but they will only defend the embassy <br/> There will be no air support or UAV because of the UN no-fly-zone <br/> In a word : You’re on your own."
];

Note3 = [
    "Meteo and terrain",
    "Terrain is usual Pakistani valley, but this is a heavily populated area so watch your fire<br/> We expect the weather to be calm and the sky clear. No wind."
];


Note4 = [
    "Commander intent",
    "The goal here is obvious : RESCUE the journalist. You haven’t been sent to eliminate taliban occupation in Pakistan, so don’t overdo it.<br/> Stay alive, keep Thompson alive and extract ASAP."
];

Note5 = [
    "Equipment",
    "There are two SUV parked in the consulate. Take them. You can ditch them if needed. The consul was extracted 2 days ago and won’t need them anymore. <br/> We have a weapon cache in Kespora [Gridref 143169]. You will meet our agent, codename Pedro, there and he will provide you with everything you need. <br/>Be advised, he employs locals to manage security around his compound."
];

Note6 = [
    "EXPLOSION AT US CONSULATE",
    "All hell is breaking loose at the US Consulate ! We just heard that there have been an explosion in front of the building in the middle of the crowd. UN declared martial law and there is no way you will be able to extract through here anymore <br/> Stand by for instruction."
];

Note7 = [
    "Extraction change",
    "Due to the no-fly-zone and the explosion at the embassy your extraction will be tight, the UN-radar crew change at 0305 AM and tonight we’ll manage so the next guy will be late by approximately 20 mins you will be able to call the extraction on the LZ between 0305 AM and 0325AM ONLY. <br/> Extraction will be assured by 2 160th SOAR Black Hawk already on station at the border, callsign “Ghost 1” and “Ghost 2” .<br/>LZ coordinates : [090171]<br/> If you miss that window your only exit will be to join the Afghanistan-Pakistan border [approx 6Km away]."
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
if (isServer) then {
	AddNotesFromContact = false;
	publicVariable "AddNotesFromContact";
	
	AddNotesFromPedro = false;
	publicVariable "addNotesFromAttache";
	
	AddExplosionNotes = false;
	publicVariable "AddExplosionNotes";
	
	HeloTakeOff = false;
	publicVariable "HeloTakeOff";
};

// Hideous hacks :
ExecVM "AddNotesFromContact.sqf";
ExecVM "AddNotesFromAttache.sqf";
ExecVM "AddExplosionNotes.sqf";






