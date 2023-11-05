function scr_player_machtumble() //gml_Script_scr_player_machtumble
{
    if (sprite_index == spr_player_machtumble)
    {
        move = 0
        dir = 0
        image_speed = 0.5
        vsp += 0.2
    }
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_machtumble)
    {
        movespeed = 12
        state = (83 << 0)
        sprite_index = spr_player_mach4
    }
    if (scr_solid((x + xscale), y) && (!(scr_slope_ext((x + sign(hsp)), y))) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
    {
        movespeed = 0
        state = 0
    }
}

