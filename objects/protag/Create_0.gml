/// @description 

// annoyance meter stuff
hp = 50;
hp_max = hp;

//healthbar_width = 100;
healthbar_height = 12;
healthbar_x = 350;
healthbar_y = 400;


// set as a constant for now, while we still don't have an XP system
playerLvl = 1;

// Initialize the dialog system
dialog_init();

// set default mv speed
mvspd = 2;

// default to facing left
facingLeft = true;

// check if talking, to prevent movement or loading of new dialog
inDialog = false;

event_register_script(event.dialogFinished, id, dialog_exit);