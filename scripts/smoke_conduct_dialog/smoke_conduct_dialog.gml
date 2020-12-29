// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function smoke_conduct_dialog(){
	if (protag.playerLvl == 1){
		dialog_begin(DIALOG_SMOKE_01)
		
		npc1.spokenTo = true;
	}
	else{
		dialog_begin(DIALOG_SMOKE_1);
		protag.hp = protag.hp_max;
	}
}