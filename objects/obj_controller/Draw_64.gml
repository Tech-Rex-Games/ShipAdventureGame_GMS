draw_set_font(f_main)

//Lives
if Lives = 6 {
	draw_sprite_stretched(spr_HUD_hearts,0,view_xport[0] + 30, view_yport[0] + 30, 140,44)
}
else if Lives = 5 {
	draw_sprite_stretched(spr_HUD_hearts,1,view_xport[0] + 30, view_yport[0] + 30, 140,44)
}
else if Lives = 4 {
	draw_sprite_stretched(spr_HUD_hearts,2,view_xport[0] + 30, view_yport[0] + 30, 140,44)
}
else if Lives = 3 {
	draw_sprite_stretched(spr_HUD_hearts,3,view_xport[0] + 30, view_yport[0] + 30, 140,44)
}
else if Lives = 2 {
	draw_sprite_stretched(spr_HUD_hearts,4,view_xport[0] + 30, view_yport[0] + 30, 140,44)
}
else if Lives = 1 {
	draw_sprite_stretched(spr_HUD_hearts,5,view_xport[0] + 30, view_yport[0] + 30, 140,44)
}
else if Lives = 0 {
	draw_sprite_stretched(spr_HUD_hearts,6,view_xport[0] + 30, view_yport[0] + 30, 140,44)
}

//Gold
draw_sprite_stretched(spr_coin,2,view_xport[0] + 20, view_yport[0] + 80, 64,64)
draw_text(view_xport[0] + 80, view_yport[0] + 92, Gold)