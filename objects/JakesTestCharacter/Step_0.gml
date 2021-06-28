/// @description Insert description here
// You can write your code in this editor

if (target_x > x) { x +=4 }; //right
if (target_x < x) { x -=4 }; //left
if (target_y > y) { y +=4 }; //down
if (target_y > y) { y -=4 }; //up

//This is the movement system for smooth movement
if (keyboard_check(vk_left)) {
  target_x -= 12
}
if (keyboard_check(vk_right)) {
  target_x += 12
}
if (keyboard_check(vk_up)) {
  target_y -= 12
}
if (keyboard_check(vk_down)) {
  target_x += 12
}

//end movement system