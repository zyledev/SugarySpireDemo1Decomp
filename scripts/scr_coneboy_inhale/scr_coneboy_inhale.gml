function scr_coneboy_inhale() //gml_Script_scr_coneboy_inhale
{
    movespeed = 0
    vsp = 0
    if (!inhaling)
        inhaling = 1
    sprite_index = spr_coneboy_inhale
    if (!key_attack)
    {
        state = 0
        inhaling = 0
    }
}

