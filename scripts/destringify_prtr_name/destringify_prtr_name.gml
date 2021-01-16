// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destringify_prtr_name(argument0){
	var prtr_id = [ prtr_asian_dude, prtr_conductor, prtr_fem, prtr_info, prtr_mal, prtr_nico, prtr_samir ];
	var prtr_names = ["prtr_asian_dude", "prtr_conductor", "prtr_fem", "prtr_info", "prtr_mal", "prtr_nico", "prtr_samir"];

	
	for (var i = 0; i < array_length(prtr_names); ++i){
		if (argument0 == string(prtr_names[i])) return prtr_id[i];
	}
}