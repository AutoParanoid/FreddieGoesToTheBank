// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function smoke_dialog_begin(){
	dialog_begin(DIALOG_SMOKE_1);
	protag.hp = protag.hp_max;
	
	// prevent loading dialog while already in dialog
	protag.inDialog = true;
		
	return true;
}