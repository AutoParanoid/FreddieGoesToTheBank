/// @desc Draw dialog

// Back up state
var font = draw_get_font();
var color = draw_get_color();
var alpha = draw_get_alpha();

// Set dialog state
draw_set_font(fnt_dialog);
draw_set_color($FFFFFF);
draw_set_alpha(image_alpha);

var line_height = string_height("a"); // std string height
var dialog_width = dialog_get_width();

// in case there are characters without a portrait
var x_offset = 0;

var x_std = 350 + x_offset;
var y_std = 400;

dialog_avatar = destringify_prtr_name(dialog_get_portrait(key));

if (dialog_avatar != "")
{
	if (left_facing) {
		draw_9slice(spr_portrait_box, 0, x_std - dialogHeight, y_std, dialogHeight, dialogHeight, 64, 64);
		draw_sprite_ext(dialog_avatar, 0, x_std, y_std, -1, 1, 0, c_white, 1);
	}
	else
	{
		draw_9slice(spr_portrait_box, 0, x_std + dialog_width, y_std, dialogHeight, dialogHeight, 64, 64);
		draw_sprite(dialog_avatar, 0, x_std + dialog_width, y_std);
	}
}

// Draw the dialog box
draw_9slice(spr_dialog_frame, 0, x_std, y_std, dialog_width, dialogHeight, 64, 64);

// Draw the dialog text
var text_x = 48 + x_std;
var text_y = 32 + y_std;
for(var i = 0; i <= _curstring_arr; ++i)
{
	var str;
	if(i < _curstring_arr) str = _strings[i];
	else str = _curstring;
	draw_text(text_x, text_y, str);
	text_y += line_height * 3 / 2;
}

// Draw all branches
if(_branching && _draw_branches)
{
	
	// Draw the branches box
	draw_9slice(spr_dialog_frame, 0, x_std, y_std + dialogHeight, dialog_width, branchesHeight, 64, 64);
	
	text_y = dialogHeight + 32 + y_std;
	for(var i = 0; i < options; ++i)
	{
		var name = dialog_get_branch_name(key, i);
		
		// Draw selection highlight
		if(i == selected_branch) draw_sprite(spr_dialog_selected, 0, x_std, text_y - 5);
		
		// Draw the branch
		draw_text(text_x, text_y, name);
		text_y += line_height * 3 / 2;
	}
	
	// Draw protag avatar
	if (left_facing) {
		draw_9slice(spr_portrait_box, 0, x_std + dialog_width, y_std + dialogHeight, branchesHeight, branchesHeight, 64, 64);
		draw_sprite(prtr_mal, 0, x_std + dialog_width, y_std + dialogHeight);	
	}
	else 
	{
		draw_9slice(spr_portrait_box, 0, x_std - branchesHeight, y_std + dialogHeight, branchesHeight, branchesHeight, 64, 64);
		draw_sprite_ext(prtr_mal, 0, x_std, y_std + dialogHeight, -1, 1, 0, c_white, 1);
	}
}
//else if (_branching && _draw_branches && minigame){
//	
//	
//	var branches = [];
//	
//	for(var i = 0; i < options; ++i)
//	{
//		branches[i]= dialog_get_branch_name(key, i);
//	}
//	
//	var max_x = 1024;
//	var max_y = 768;
//	
//	// use global timer
//	if (protag.inDialog && ((get_timer() % 10) == 0)){
//		// draw branch bubble at random coordinates
//		var rand_x = random(max_x + 1);
//		var rand_y = random(max_y + 1);
//		var rand_branch;
//		
//		if (options > 1){
//			rand_branch = branches[irandom(options - 1)];
//		}
//		else{
//			rand_branch = branches[options - 1];	
//		}
//		
//		// create instance 
//		instance_create_depth(rand_x, rand_y, depth, spr_dialog_frame);
//	}
//}

// Draw annoyance meter
draw_sprite(spr_Meter_BG, 0, protag.healthbar_x + 2, protag.healthbar_y);
draw_sprite_stretched(spr_Meter_Fill, 0, protag.healthbar_x + 2, protag.healthbar_y, (1 - protag.hp / protag.hp_max) * (dialog_width-8), protag.healthbar_height);
draw_sprite(spr_Meter_Border, 0, protag.healthbar_x + 2, protag.healthbar_y);

// Reset state
draw_set_font(font);
draw_set_color(color);
draw_set_alpha(alpha);