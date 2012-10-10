waitUntil {AddExplosionNotes};

Explosion_note call SHK_TaskMaster_addNote;
sleep 120;
hintSilent "We're working on a new extraction solution for you guys. We're not going to forget about you !";
sleep 180;
Extraction_update_note call SHK_TaskMaster_addNote;