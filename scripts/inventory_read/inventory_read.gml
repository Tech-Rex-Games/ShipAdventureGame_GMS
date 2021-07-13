/// @description  inventory_read(Typ,SlotID)
/// @param Typ
/// @param SlotID
function inventory_read(argument0, argument1) {
	return ds_map_find_value(global.inventory,argument0+string(argument1))



}
