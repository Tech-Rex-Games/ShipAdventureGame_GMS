/// @description  inventory_item_find(ID)
/// @param ID
function inventory_item_find(argument0) {
	var ID, amount;
	ID = argument0;
	amount = 0

	for (i=0; i<(global.InventorySlot*global.InventorySlotH); i+=1)
	{
	    if ds_map_find_value(global.inventory,"ID"+string(i)) = ID{
	       amount += ds_map_find_value(global.inventory,"Stack"+string(i));
	    }
	};

	return amount;



}
