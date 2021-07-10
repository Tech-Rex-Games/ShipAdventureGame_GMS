playAudio = true
image_speed = .25
image_index = random_range(0, 3)


//CutGrass Particle System
global.ps = part_system_create();
part_system_depth(global.ps, -1);

//CutGrass Particle Types
//GrassBlade1
global.pt_GrassBlade1 = part_type_create();
part_type_shape(global.pt_GrassBlade1, pt_shape_pixel);
//spr_grassPart1 = sprite_add("grassPart1.png", 1, 0, 0, 1, 5);
part_type_sprite(global.pt_GrassBlade1, spr_grassPart1, 1, 0, 0);
part_type_size(global.pt_GrassBlade1, 1, 2, 0, 0);
part_type_scale(global.pt_GrassBlade1, 0.50, 0.50);
part_type_orientation(global.pt_GrassBlade1, -349, 0, 0, 0, 1);
part_type_color3(global.pt_GrassBlade1, 4549689, 4549689, 4549689);
part_type_alpha3(global.pt_GrassBlade1, 1, 1, 1);
part_type_blend(global.pt_GrassBlade1, 0);
part_type_life(global.pt_GrassBlade1, 5, 20);
part_type_speed(global.pt_GrassBlade1, .2, 1, 0, 1);
part_type_direction(global.pt_GrassBlade1, -214, 22, 0, 0);
part_type_gravity(global.pt_GrassBlade1, 0.05, 273);

//GrassBlade2
global.pt_GrassBlade2 = part_type_create();
part_type_shape(global.pt_GrassBlade2, pt_shape_pixel);
//spr_spr_grassPart2 = sprite_add("spr_grassPart2.png", 1, 0, 0, 0, 3);
part_type_sprite(global.pt_GrassBlade2, spr_grassPart2, 1, 0, 0);
part_type_size(global.pt_GrassBlade2, 1, 2, 0, 0);
part_type_scale(global.pt_GrassBlade2, .5, .5);
part_type_orientation(global.pt_GrassBlade2, -349, 0, 0, 0, 1);
part_type_color3(global.pt_GrassBlade2, 4176005, 4176005, 4176005);
part_type_alpha3(global.pt_GrassBlade2, 1, 1, 1);
part_type_blend(global.pt_GrassBlade2, 0);
part_type_life(global.pt_GrassBlade2, 10, 20);
part_type_speed(global.pt_GrassBlade2, .2, 1, 0, 1);
part_type_direction(global.pt_GrassBlade2, -214, 22, 0, 0);
part_type_gravity(global.pt_GrassBlade2, 0.05, 273);

//Destroying Emitters
//part_emitter_destroy(global.ps, global.pe_GrassBlade1);
//part_emitter_destroy(global.ps, global.pe_GrassBlade2);