/// @desc Gets the finish events of a given dialog key
function dialog_get_finish_events(argument0) {

	return ds_map_find_value(global.dialog_finish_events, argument0);


}
