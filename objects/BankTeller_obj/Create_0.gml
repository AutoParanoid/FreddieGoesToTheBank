/// @description Insert description here
// You can write your code in this editor
if (!protag.heardRamadan2){
	init_bank_dialog();
	
	event_register_script(event.bank1, id, bank_dialog_begin);
}
else{
	init_bank2();	
	
	event_register_script(event.bank2, id, bank2_begin);
}