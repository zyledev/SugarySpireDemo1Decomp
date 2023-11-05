function scr_player_machfallback() //gml_Script_scr_player_machfallback
{
    if (sprite_index == (534 && floor(image_index) == (image_number - 1)))
    {
        if (movespeed < 12)
        {
            state = (63 << 0)
            movespeed = 8
        }
        if (movespeed > 12)
        {
            state = (83 << 0)
            movespeed = 14
        }
    }
}

