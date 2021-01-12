/// @desc Gets the available branches for a given dialog key
function dialog_get_available_branches(argument0) {

	var list = ds_list_create();
	var index = 0;
	while (true) {
		var __branch = ds_map_find_value(global.dialog_map_branches, string(argument0) + string(index));
		if(__branch != undefined)
		{
			ds_list_add(list, index);
			++index;
		}
		else break;
	}

	return list;


}
