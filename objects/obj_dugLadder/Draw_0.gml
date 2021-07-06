draw_self()

if distance_to_object(obj_player) <= 8 {
	draw_sprite(spr_HUD_E,0,x,y - 25)
}

draw_self()
draw_set_halign(fa_center)
draw_set_font(f_small)

if drawText = true {
	draw_text(self.x + 20, self.y + 35,"Dungeon")
	draw_text(self.x + 20, self.y + 45,"Discovered!")
}