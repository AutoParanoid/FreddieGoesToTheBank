/// @desc Add a string to a dialog
/// @arg dialog The dialog to add the string to
/// @arg str The string to add
function dialog_add_string(argument0, argument1, argument2) {

	var __map = global.dialog_map_strings;

	var dialog_id = argument0;
	var str_array = argument1;
	//var portrait = argument[2];
	//var lvls_ar = argument2;

	//show_message(lang_lvl);

	ds_map_replace(__map, dialog_id, str_array);

	//dialog_add_lvls(dialog_id, lvls_ar);

	if (argument_count > 2) {
		
		dialog_add_portrait(dialog_id, argument2);
	}




}
