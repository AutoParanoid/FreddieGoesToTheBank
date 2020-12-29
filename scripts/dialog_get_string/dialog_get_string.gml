/// @desc Gets the string of a given dialog key
function dialog_get_string(argument0) {

	return ds_map_find_value(global.dialog_map_strings, argument0);


}
