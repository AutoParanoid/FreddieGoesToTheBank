// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function info_dialog_begin(){
	if (npc1.spokenTo && protag.playerLvl == 1){
		dialog_begin(DIALOG_INFO_0);
	}
	else dialog_begin(DIALOG_INFO_1);
}