depth = -10
scale = 2
show_inventory = false;

gui_width = display_get_gui_width();
gui_hight = display_get_gui_height();

cell_size = 32

inv_UI_width = 288;
inv_UI_hight = 192;

spr_inv_ui = spr_inventory_UI;

inv_ui_x = (gui_width * .5) - (inv_UI_width * .5 * scale);
inv_ui_y = (gui_hight * .5) - (inv_UI_hight * .5 * scale);

info_x = inv_ui_x + (9 * scale);
info_y = inv_ui_y + (9 * scale);

//Setting up player Info

ds_player_info = ds_grid_create(2,4)
ds_player_info[# 0, 0] = "GOLD";
ds_player_info[# 0, 1] = "SILVER";
ds_player_info[# 0, 2] = "BRONZE";
ds_player_info[# 0, 3] = "Name";

ds_player_info[# 1, 0] = 1;
ds_player_info[# 1, 1] = 2;
ds_player_info[# 1, 2] = 69;
ds_player_info[# 1, 3] = "Player";
//Down the road this ds needs to be change to the varable "name" once we get that setup