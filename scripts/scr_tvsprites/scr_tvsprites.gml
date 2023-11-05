function scr_tvsprites() //gml_Script_scr_tvsprites
{
    if (obj_player.character == "P")
    {
        idletvspr = spr_pizzytv
        escapetvspr = spr_pizzytv_escape1
        tvchange1 = 248
        tvchange2 = 280
        cottontvspr = spr_pizzytvcotton
        hurttvspr = spr_pizzytvhurt
        minecarttvspr = spr_pizzytvmine
        bombtvspr = spr_pizzytvbomb
        firetvspr = spr_pizzytvfire
        angrytvspr = spr_pizzytvangry
    }
    if (obj_player.character == "N")
    {
        idletvspr = spr_pizzanotv
        escapetvspr = spr_pizzytv_escape1
        tvchange1 = 163
        tvchange2 = 163
        cottontvspr = spr_pizzytvcotton
    }
}

