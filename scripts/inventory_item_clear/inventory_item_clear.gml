/// @description  inventory_item_clear(SlotID)
/// @param SlotID
function inventory_item_clear(argument0) {
	var slot_id;
	slot_id = argument0;
	inventory_write("slot",slot_id,false)
	inventory_write("ID",slot_id,-1)
	inventory_write("Stack",slot_id,-1)



}
