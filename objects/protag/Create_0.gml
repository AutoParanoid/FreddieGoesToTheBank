/// @description 
instance_create_layer(x, y, layer, obj_Camera);

audio_play_sound(ambient, 10, true)

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

// check to launch small indication after talking to bank teller
spokenWithSmoker = false;
spokenWithBankTeller = false;
alreadySpokenWithBankTeller = false;

global.the_last_room = 0;