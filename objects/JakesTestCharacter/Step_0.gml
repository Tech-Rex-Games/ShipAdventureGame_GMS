/// @description Insert description here
// You can write your code in this editor

//Snap to nearest 64 block
if (target_x > x) { x +=4 }; //right
if (target_x < x) { x -=4 }; //left
if (target_y > y) { y +=4 }; //down
if (target_y > y) { y -=4 }; //up

//check for destination
if (target_x == x && target_y == y ) {
	moving = false;
}
//This is the movement system for smooth movement
if (keyboard_check(vk_left) && !moving) {
  moving = true
  target_x -= 64
}
if (keyboard_check(vk_right) && !moving) {
  moving = true
  target_x += 64
  
}
if (keyboard_check(vk_up) && !moving) {
  moving = true
  target_y -= 64
  
}
if (keyboard_check(vk_down) && !moving) {
  moving = true
  target_y += 64
  
}

//end movement system