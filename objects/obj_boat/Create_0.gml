//Initialize the player
target_x = x
target_y = y
moving = false
image_speed = .2
depth = -1

//Tell Which Direction the Player is Facing to Display Correct Sprite
facing = 1
//Set Last Direction Left or Right "Looks Better after Leaving the Islands" 1 = Right
lastDirection = 1

//Setting Location
alarm[0] = 1

//Moving Water Particle FX
global.ps = part_system_create();
part_system_depth(global.ps, 2);
