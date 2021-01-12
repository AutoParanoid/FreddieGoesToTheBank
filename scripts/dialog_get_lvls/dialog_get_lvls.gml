/// @desc get language level info
/// @arg key
function dialog_get_lvls(argument0) {

	//show_message(ds_list_find_value(global.dialog_map_lvl, argument0));
	return ds_map_find_value(global.dialog_map_lvls, argument0);


}
