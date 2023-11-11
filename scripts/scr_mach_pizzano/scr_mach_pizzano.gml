function scr_mach_pizzano() //scr_mach_pizzano
{
    move = (key_left + key_right)
    hsp = (xscale * movespeed)
    if (move != 0)
    {
        xscale = move
        if (movespeed < 12)
            movespeed += 0.07
        if (movespeed > 12)
            movespeed = 12
    }
    else if (movespeed > 0)
        movespeed--
    hsp = (xscale * movespeed)
    if ((!grounded) && move != 0 && move != xscale && movespeed > 1)
        movespeed -= 0.05
    if ((!grounded) && move != 0 && move == xscale && movespeed < 12)
        movespeed += 0.05
    if ((!grounded) && sprite_index != spr_pizzano_pogo_land)
        sprite_index = spr_pizzano_pogo_air
    if grounded
        sprite_index = spr_pizzano_pogo_land
    stop = 1
    if (sprite_index == spr_pizzano_pogo_land && floor(image_index) == (image_number - 1))
        sprite_index = spr_pizzano_pogo_air
    if (!key_attack)
        state = 0
    if (grounded && (!key_down) && (!key_jump2))
        vsp -= 11
    if (key_down && (!key_jump2) && grounded)
        vsp = -6
    if (key_jump2 && (!key_down) && grounded)
        vsp = -14
    if (movespeed == 12 && grounded)
        flash = 1
    if (movespeed == 12 && key_slap2)
    {
        state = 888
        sprite_index = spr_pizzano_sjumpprepside
    }
}

