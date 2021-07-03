audio_play_sound(s_coinPickUp,1,0)
instance_create_depth(x,y,-3,obj_FX_walkingDust)
obj_controller.Gold += 10
instance_destroy()