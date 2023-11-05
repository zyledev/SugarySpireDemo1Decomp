global.font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.0123456789:", 1, 0)
global.smallfont = font_add_sprite_ext(spr_smallfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", 1, 0)
global.combofont = font_add_sprite_ext(spr_fontcombo, "0123456789", 1, 0)
global.collectfont = font_add_sprite_ext(spr_fontcollect, "0123456789", 1, 0)
global.shellactivate = 0
global.showcollisions = 0
global.fartcounter = 0
global.ParallaxArray = -4
global.ParallaxArraynumber = 0
scr_default_parallax(1)
global.FollowerList = ds_list_create()
global.mallowfollow = 0
global.crackfollow = 0
global.chocofollow = 0
global.wormfollow = 0
global.candyfollow = 0
