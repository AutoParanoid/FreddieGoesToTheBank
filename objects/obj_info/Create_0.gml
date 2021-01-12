/// @description Insert description here
// You can write your code in this editor

instance_deactivate_object(press_Enter);

// register for dialog event
init_info_dialog();

event_register_script(event.dialogCall_info, id, info_dialog_begin)

protagWasHere = 0;