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
  target_x -= 64
  lastDirection = 2
  //Walking Dust Particles
  instance_create_depth(x+130,y + choose(60,75),1,obj_FX_walkingDust)
}
if (keyboard_check(vk_right) or keyboard_check(ord("D")) && !moving) {
  moving = true
  target_x += 64
  facing = 1
  sprite_index = spr_boatRight
  //Walking Dust Particles
  lastDirection = 1
  instance_create_depth(x-5,y + choose(60,75),1,obj_FX_walkingDust)
}
if (keyboard_check(vk_up) or keyboard_check(ord("W")) && !moving) {
  moving = true
  target_y -= 64
  facing = 3
  sprite_index = spr_boatUp
  //Walking Dust Particles
  instance_create_depth(x + choose(65,75),y + 130,1,obj_FX_walkingDust)
}
if (keyboard_check(vk_down) or keyboard_check(ord("S")) && !moving) {
  moving = true
  target_y += 64
  facing = 4
  sprite_index = spr_boatDown
  //Walking Dust Particles
  instance_create_depth(x + choose(65,75),y - 5,1,obj_FX_walkingDust)
}

//Sailing Sound FX
if moving && !audio_is_playing(s_sailing) {
	audio_play_sound(s_sailing,0,0)
}