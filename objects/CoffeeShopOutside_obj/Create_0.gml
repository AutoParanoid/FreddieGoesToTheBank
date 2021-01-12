/// @description Insert description here
// You can write your code in this editor

talkedToProtag = false;

init_coffee_outside();

event_register_script(event.dialogCall_coffeOut, id, coffee_outside_dialog_begin);
