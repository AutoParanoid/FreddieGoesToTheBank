/// @desc Gets the currently active dialog, if any
/// @func dialog_current
/// @returns the current dialog constant
function dialog_current() {

	if(instance_number(obj_dialog) > 0)
		return obj_dialog.key;
	return undefined;


}
