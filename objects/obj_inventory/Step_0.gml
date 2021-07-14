/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("Q")){
    //Just add random items to inventory, if the inventory is full, 
    //you'll get return the remaining stack
   var stack_remain;
   stack_remain = inventory_item_add(irandom_range(0, 50),16)
   show_debug_message("Remaining Stack: " + string(stack_remain))
   
}