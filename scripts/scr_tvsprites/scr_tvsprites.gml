function scr_tvsprites() //scr_tvsprites
{
    if (obj_player.character == "P")
    {
        idletvspr = spr_pizzytv
        escapetvspr = spr_pizzytv_escape1
        tvchange1 = spr_pizzytv2
        tvchange2 = spr_pizzytv3
        cottontvspr = spr_pizzytvcotton
        hurttvspr = spr_pizzytvhurt
        minecarttvspr = spr_pizzytvmine
        bombtvspr = spr_pizzytvbomb
        firetvspr = spr_pizzytvfire
        angrytvspr = spr_pizzytvangry
		mach1spr = spr_pizzytvmach1
		mach2spr = spr_pizzytvmach2
		mach3spr = spr_pizzytvmach3
		mach4spr = spr_pizzytvmach4
    }
    if (obj_player.character == "N")
    {
        idletvspr = spr_pizzanotv
        escapetvspr = spr_pizzytv_escape1
        tvchange1 = spr_pizzanotv2
        tvchange2 = spr_pizzanotv2
        cottontvspr = spr_pizzytvcotton
    }
}

