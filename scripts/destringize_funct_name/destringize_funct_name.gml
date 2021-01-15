// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destringize_funct_name(argument0){
	
	var funct_id = [ info_food, info_international, info_grant_lvl, smoke_no_smoke, smoke_outside, smoke_whats_wrong, smoke_dont_care, smoke_to_conductor, coffee_outside_dialog_help, coffee_outside_dialog_ID_forgot, coffee_outside_dialog_thanks, coffee_outside_dialog_whatever, super_dialog_bank, super_dialog_maestro, super_dialog_nope, bank_dialog_afraid, bank_dialog_cash, bank_dialog_cash, bank_dialog_excellent, bank_dialog_excellent2, bank_dialog_help, bank_dialog_second, bank_dialog_second2, bank_dialog_suggest, bank_dialog_then, bank_dialog_then2, dialog_nico0_extra, dialog_nico0_first, dialog_nico0_like, -1];
	var funct_names = ["info_food", "info_international", "info_grant_lvl", "smoke_no_smoke", "smoke_outside", "smoke_whats_wrong", "smoke_dont_care", "smoke_to_conductor", "coffee_outside_dialog_help", "coffee_outside_dialog_ID_forgot", "coffee_outside_dialog_thanks", "coffee_outside_dialog_whatever", "super_dialog_bank", "super_dialog_maestro", "super_dialog_nope", "bank_dialog_afraid", "bank_dialog_cash", "bank_dialog_cash", "bank_dialog_excellent", "bank_dialog_excellent2", "bank_dialog_help", "bank_dialog_second", "bank_dialog_second2", "bank_dialog_suggest", "bank_dialog_then", "bank_dialog_then2", "dialog_nico0_extra", "dialog_nico0_first", "dialog_nico0_like", "-1"];

	
	for (var i = 0; i < array_length(funct_names); ++i){
		if (argument0 == string(funct_names[i])) return funct_id[i];
	}
}