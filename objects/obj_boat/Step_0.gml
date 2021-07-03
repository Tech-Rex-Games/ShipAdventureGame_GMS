/// @description Insert description here
// You can write your code in this editor

//Snap to nearest 64 block
if (target_x > x) { x +=4 }; //right
if (target_x < x) { x -=4 }; //left
if (target_y > y) { y +=4 }; //down
if (target_y < y) { y -=4 }; //up

//Check for Destination
if (target_x == x && target_y == y ) {
	moving = false;
}

//Smooth Movement
if (keyboard_check(vk_left) or keyboard_check(ord("A")) && !moving) {
  moving = true
  facing = 2
  sprite_index = spr_boatLeft
  target_x -= 32
  //Walking Dust Particles
  instance_create_depth(x+10,y + choose(15,20),1,obj_FX_walkingDust)
}
if (keyboard_check(vk_right) or keyboard_check(ord("D")) && !moving) {
  moving = true
  target_x += 32
  facing = 1
  sprite_index = spr_boatRight
  //Walking Dust Particles
  instance_create_depth(x,y + choose(15,20),1,obj_FX_walkingDust)
}
if (keyboard_check(vk_up) or keyboard_check(ord("W")) && !moving) {
  moving = true
  target_y -= 32
  facing = 3
  sprite_index = spr_boatUp
  //Walking Dust Particles
  instance_create_depth(x + choose(7,12),y,1,obj_FX_walkingDust)
}
if (keyboard_check(vk_down) or keyboard_check(ord("S")) && !moving) {
  moving = true
  target_y += 32
  facing = 4
  sprite_index = spr_boatDown
  //Walking Dust Particles
  instance_create_depth(x + choose(7,12),y + 10,1,obj_FX_walkingDust)
}