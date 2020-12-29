/// @desc Gets the branch names of a given dialog key
function dialog_get_branch_name(argument0, argument1) {

	return ds_map_find_value(global.dialog_map_names, string(argument0) + string(argument1));


}
