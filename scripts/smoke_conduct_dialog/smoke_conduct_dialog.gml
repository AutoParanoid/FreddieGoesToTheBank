// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function smoke_conduct_dialog(){
	dialog_begin(DIALOG_SMOKE_01)
		
	protag.spokenWithSmoker = true;
	
	// prevent loading dialog while already in dialog
	protag.inDialog = true;
	
	return true;
}