if (other.state != (20 << 0) && other.Dashpad_buffer <= 0)
{
    with (other)
    {
        if (state != (58 << 0) && state != (59 << 0) && sprite_get_bbox_bottom(mask_index) <= other.bbox_bottom)
        {
            movespeed = max(movespeed, 12)
            if (character == "P")
            {
                state = (83 << 0)
                Dashpad_buffer = 10
                sprite_index = spr_player_dashpad
                xscale = sign(other.image_xscale)
                if (!(scr_solid(x, other.y)))
                    y = other.y
                image_index = 0
                vsp = 3
                flash = 1
            }
            if (character == "N")
            {
                state = (999 << 0)
                Dashpad_buffer = 10
                xscale = sign(other.image_xscale)
                image_index = 0
                flash = 1
            }
        }
    }
}
