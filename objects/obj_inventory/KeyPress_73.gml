//Show Inventory
if keyboard_check_pressed(ord("I")) && show = false {
	show = true
	audio_play_sound(s_alert,0,0)
}
else {
	show = false
	audio_play_sound(s_alertOff,0,0)
}