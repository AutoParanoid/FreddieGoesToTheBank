/// @desc Gets the start conditions of a given dialog key
function dialog_get_start_conditions(argument0) {

	return ds_map_find_value(global.dialog_start_condition, argument0);


}
