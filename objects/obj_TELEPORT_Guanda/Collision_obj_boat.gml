audio_play_sound(s_woosh,1,0)
obj_controller.mapBoatX = 1800
obj_controller.mapBoatY = 380
if obj_boat.lastDirection = 1 {
	obj_controller.boatSprite = spr_boatRight
}
else {
	obj_controller.boatSprite = spr_boatLeft
}
room_goto(r_guanda)