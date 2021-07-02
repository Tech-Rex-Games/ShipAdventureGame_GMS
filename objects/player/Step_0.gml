/// @description Insert description here
// You can write your code in this editor

//Snap to nearest 64 block
if (target_x > x) { x +=4 }; //right
if (target_x < x) { x -=4 }; //left
if (target_y > y) { y +=4 }; //down
if (target_y < y) { y -=4 }; //up

//check for destination
if (target_x == x && target_y == y ) {
	moving = false;
	if facing = 1 {
		sprite_index = player_idleRight
	}
	else if facing = 2 {
		sprite_index = player_idleLeft
	}
	else if facing = 3 {
		sprite_index = player_idleUp
	}
	else {
		sprite_index = player_idleDown
	}
}
//This is the movement system for smooth movement
if (keyboard_check(vk_left) or keyboard_check(ord("A")) && !moving) {
  moving = true
  facing = 2
  sprite_index = player_runLeft
  target_x -= 64
}
if (keyboard_check(vk_right) or keyboard_check(ord("D")) && !moving) {
  moving = true
  target_x += 64
  facing = 1
  sprite_index = player_runRight
}
if (keyboard_check(vk_up) or keyboard_check(ord("W")) && !moving) {
  moving = true
  target_y -= 64
  facing = 3
  sprite_index = player_runUp
}
if (keyboard_check(vk_down) or keyboard_check(ord("S")) && !moving) {
  moving = true
  target_y += 64
  facing = 4
  sprite_index = player_runDown
}

//end movement system