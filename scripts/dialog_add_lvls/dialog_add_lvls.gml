/// @descr add portrait for interlocutor
/// @arg dialog key
/// @arg lvls
function dialog_add_lvls() {

	var __map = global.dialog_map_lvls;
	ds_map_replace(__map, argument[0], argument[1]);


}
