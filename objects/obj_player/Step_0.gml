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
if (keyboard_check(vk_left) or keyboard_check(ord("A"))) {
  facing = 2
  sprite_index = player_runLeft
  if !moving && place_free(x - 32, y) {
	moving = true
	target_x -= 32
	//Walking Dust Particles
	instance_create_depth(x+10,y + choose(15,20),1,obj_FX_walkingDust)
  }
	//Footstep Sound
	if ( floor(image_index) == 0 && floor(image_index) != lastFrame ) {
    audio_play_sound(s_footstep, 1, 0 )
    }
	if ( floor(image_index) == 2 && floor(image_index) != lastFrame ) {
    audio_play_sound(s_footstep, 1, 0 )
    }
}

if (keyboard_check(vk_right) or keyboard_check(ord("D"))){
  sprite_index = player_runRight
  facing = 1
  if !moving && place_free(x + 32, y) {
	moving = true
	target_x += 32
	//Walking Dust Particles
	instance_create_depth(x,y + choose(15,20),1,obj_FX_walkingDust)
  }
  //Footstep Sound
	if ( floor(image_index) == 0 && floor(image_index) != lastFrame ) {
    audio_play_sound(s_footstep, 1, 0 )
    }
	if ( floor(image_index) == 2 && floor(image_index) != lastFrame ) {
    audio_play_sound(s_footstep, 1, 0 )
    }
}

if (keyboard_check(vk_up) or keyboard_check(ord("W"))) {
  facing = 3
sprite_index = player_runUp
  if !moving && place_free(x, y - 32) {
	moving = true
	target_y -= 32
	//Walking Dust Particles
	instance_create_depth(x + choose(7,12),y,1,obj_FX_walkingDust)
  }
  //Footstep Sound
	if ( floor(image_index) == 0 && floor(image_index) != lastFrame ) {
    audio_play_sound(s_footstep, 1, 0 )
    }
	if ( floor(image_index) == 2 && floor(image_index) != lastFrame ) {
    audio_play_sound(s_footstep, 1, 0 )
    }
}

if (keyboard_check(vk_down) or keyboard_check(ord("S"))) {
  sprite_index = player_runDown
  facing = 4
  if !moving && place_free(x, y + 32) {
	moving = true
	target_y += 32
	//Walking Dust Particles
	instance_create_depth(x + choose(7,12),y + 10,1,obj_FX_walkingDust)
  }
  //Footstep Sound
	if ( floor(image_index) == 0 && floor(image_index) != lastFrame ) {
    audio_play_sound(s_footstep, 1, 0 )
    }
	if ( floor(image_index) == 2 && floor(image_index) != lastFrame ) {
    audio_play_sound(s_footstep, 1, 0 )
    }
}

lastFrame = floor(image_index)

//Sword Swinging
if mouse_check_button_pressed(mb_left) && canSwing = true {
	audio_play_sound(s_swing,1,0)
	canSwing = false
	if facing = 1 {
		sprite_index = spr_playerSwingRight
		swinging = true
		instance_create_depth(x + 25, y, -1, obj_FX_weaponSlash)
	}
	else if facing = 2 {
		sprite_index = spr_playerSwingLeft
		swinging = true
		instance_create_depth(x + 10, y + 30, -1, obj_FX_weaponSlash)
	}
	else if facing = 3 {
		sprite_index = spr_playerSwingUp
		swinging = true
		instance_create_depth(x, y + 10, -1, obj_FX_weaponSlash)
	}
	else {
		sprite_index = spr_playerSwingDown
		swinging = true
		instance_create_depth(x + 30, y + 23, -1, obj_FX_weaponSlash)
	}
alarm[0] = 30
}

//Player Dead
if obj_controller.Lives <= 0 {
	audio_play_sound(s_woosh,0,0)
	room_goto(r_playerDead)
}