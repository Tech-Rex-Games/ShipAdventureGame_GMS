depth = -10
scale = 3
show_inventory = false;

inv_slots = 16;
inv_slots_width = 8;
inv_slots_hight = 3;

gui_width = display_get_gui_width();
gui_hight = display_get_gui_height();

cell_size = 32;

inv_UI_width = 288;
inv_UI_hight = 192;

spr_inv_ui = spr_inventory_UI;
spr_inv_items = spr_inventory_items;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_hight(spr_inv_items)/cell_size;

inv_ui_x = (gui_width * .5) - (inv_UI_width * .5 * scale);
inv_ui_y = (gui_hight * .5) - (inv_UI_hight * .5 * scale);

info_x = inv_ui_x + (9 * scale);
info_y = inv_ui_y + (9 * scale);

//Slots
slots_x = info_x;
slots_y = inv_ui_y + (40 * scale);


//Setting up player Info

ds_player_info = ds_grid_create(2,4)
ds_player_info[# 0, 0] = "GOLD";
ds_player_info[# 0, 1] = "SILVER";
ds_player_info[# 0, 2] = "BRONZE";
ds_player_info[# 0, 3] = "Name";

ds_player_info[# 1, 0] = obj_controller.Gold;
ds_player_info[# 1, 1] = 2;
ds_player_info[# 1, 2] = 69;
ds_player_info[# 1, 3] = "Sea Dog";
//Down the road this ds needs to be change to the varable "name" once we get that setup. Also gold value
//not updating live in game for some reason. Probably cuz its set to create. Maybe move to step? IDK

//ds for inventory
ds_inventory = ds_grid_create(2, inv_slots)

//items
enum items {
	none		= 0,
	tomato		= 1,
	potato		= 2,
	carrot		= 3,
	
	
	height		= 17,
}

ds_inventory[# 0, 0] = item.carrot;