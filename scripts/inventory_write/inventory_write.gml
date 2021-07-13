/// @description  inventory_write(Typ,SlotID,value)
/// @param Typ
/// @param SlotID
/// @param value
function inventory_write(argument0, argument1, argument2) {
	return ds_map_replace(global.inventory,argument0+string(argument1),argument2)



}
