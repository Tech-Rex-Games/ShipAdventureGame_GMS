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

//NewEffect Particle Types
//Right
global.pt_Right = part_type_create();
part_type_shape(global.pt_Right, pt_shape_square);
part_type_size(global.pt_Right, 0.10, 0.15, 0, 0.01);
part_type_scale(global.pt_Right, 1, 1);
part_type_orientation(global.pt_Right, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Right, 16184302, 10719590, 9662760);
part_type_alpha3(global.pt_Right, 1, 1, 1);
part_type_blend(global.pt_Right, 0);
part_type_life(global.pt_Right, 10, 20);
part_type_speed(global.pt_Right, .5, 2, 0, 0);
part_type_direction(global.pt_Right, 90, 274, 0, 0);
part_type_gravity(global.pt_Right, 0.20, 180);