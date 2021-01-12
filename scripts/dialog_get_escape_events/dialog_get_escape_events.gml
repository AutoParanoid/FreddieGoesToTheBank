/// @desc Gets the escape events of a given dialog key
function dialog_get_escape_events(argument0) {

	return ds_map_find_value(global.dialog_escape_events, argument0);


}
