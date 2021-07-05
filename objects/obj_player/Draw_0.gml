draw_sprite(spr_FX_shadowMedium,0,x + 8,y + 25)
draw_self()
draw_set_halign(fa_center)

draw_set_font(f_small)
if drawMoneyText = true {
	draw_text(self.x + 9, self.y - 20,"+" +string(goldCounter) + " Gold")
}

if drawLootText = true {
	draw_text(self.x + 9, self.y - 20,"+1 " + string(loot))
}