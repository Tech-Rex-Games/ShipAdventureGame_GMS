//If for showing inventory or not. Currently set to I key
if(!show_inventory) exit;

// Inventory backing

draw_sprite_part_ext(spr_inv_ui, 0, cell_size, 0, inv_UI_width, inv_UI_hight, inv_ui_x, inv_ui_y, 
	scale, scale, c_white, 1);
	
	
//Drawing player info on the screen	
var info_grid = ds_player_info
var c = make_color_rgb(251,245,208)

draw_text_color(info_x, info_y, info_grid[# 0, 3] + ":" + info_grid[# 1, 3], c, c, c, c, 1);

// Drawn gold value
