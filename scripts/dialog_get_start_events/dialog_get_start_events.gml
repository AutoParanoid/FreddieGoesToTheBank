/// @desc Gets the start events of a given dialog key
function dialog_get_start_events(argument0) {

	return ds_map_find_value(global.dialog_start_events, argument0);


}
