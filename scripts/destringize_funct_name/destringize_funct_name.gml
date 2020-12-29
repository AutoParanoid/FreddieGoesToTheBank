// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destringize_funct_name(argument0){
	
	var funct_id = [ info_food, info_international, info_grant_lvl, smoke_no_smoke, smoke_outside, smoke_whats_wrong, smoke_dont_care, smoke_to_conductor, -1];
	var funct_names = ["info_food", "info_international", "info_grant_lvl", "smoke_no_smoke", "smoke_outside", "smoke_whats_wrong", "smoke_dont_care", "smoke_to_conductor", "-1"];

	
	for (var i = 0; i < array_length(funct_names); ++i){
		if (argument0 == string(funct_names[i])) return funct_id[i];
	}
}