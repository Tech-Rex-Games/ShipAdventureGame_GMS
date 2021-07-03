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
	if facing = 1 && swinging = false {
		sprite_index = player_idleRight
	}
	else if facing = 2 && swinging = false {
		sprite_index = player_idleLeft
	}
	else if facing = 3 && swinging = false {
		sprite_index = player_idleUp
	}
	else if facing = 4 && swinging = false {
		sprite_index = player_idleDown
	}
}
//Smooth Movement
if (keyboard_check(vk_left) or keyboard_check(ord("A")) && !moving) {
  moving = true
  facing = 2
  sprite_index = player_runLeft
  target_x -= 32
  //Walking Dust Particles
  instance_create_depth(x+10,y + choose(15,20),1,obj_FX_walkingDust)
}
if (keyboard_check(vk_right) or keyboard_check(ord("D")) && !moving) {
  moving = true
  target_x += 32
  facing = 1
  sprite_index = player_runRight
  //Walking Dust Particles
  instance_create_depth(x,y + choose(15,20),1,obj_FX_walkingDust)
}
if (keyboard_check(vk_up) or keyboard_check(ord("W")) && !moving) {
  moving = true
  target_y -= 32
  facing = 3
  sprite_index = player_runUp
  //Walking Dust Particles
  instance_create_depth(x + choose(7,12),y,1,obj_FX_walkingDust)
}
if (keyboard_check(vk_down) or keyboard_check(ord("S")) && !moving) {
  moving = true
  target_y += 32
  facing = 4
  sprite_index = player_runDown
  //Walking Dust Particles
  instance_create_depth(x + choose(7,12),y + 10,1,obj_FX_walkingDust)
}

//Sword Swinging
if mouse_check_button_pressed(mb_left) && canSwing = true {
	audio_play_sound(s_swing,1,0)
	canSwing = false
	if facing = 1 {
		sprite_index = spr_playerSwingRight
		swinging = true
		instance_create_depth(x + 20, y, -1, obj_FX_weaponSlash)
	}
	else if facing = 2 {
		sprite_index = spr_playerSwingLeft
		swinging = true
		instance_create_depth(x + 15, y + 30, -1, obj_FX_weaponSlash)
	}
	else if facing = 3 {
		sprite_index = spr_playerSwingUp
		swinging = true
		instance_create_depth(x, y + 15, -1, obj_FX_weaponSlash)
	}
	else {
		sprite_index = spr_playerSwingDown
		swinging = true
		instance_create_depth(x + 30, y + 18, -1, obj_FX_weaponSlash)
	}
alarm[0] = 30
}