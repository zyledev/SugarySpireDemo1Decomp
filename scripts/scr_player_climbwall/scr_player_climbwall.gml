function scr_player_climbwall() //gml_Script_scr_player_climbwall
{
    if (windingAnim < 200)
        windingAnim++
    suplexmove = 0
    vsp = (-wallspeed)
    if (wallspeed > 0)
        wallspeed -= 0.4
    crouchslideAnim = 1
    sprite_index = spr_climbwall
    if (!key_attack)
    {
        state = 51
        sprite_index = spr_fall
    }
    if (!(scr_solid((x + xscale), y, 1)))
    {
        instance_create(x, y, obj_jumpdust)
        vsp = 0
        if scr_slope_ext((x + xscale), y)
        {
            if (wallspeed < 12)
            {
                state = 63
                movespeed = wallspeed
            }
            else if (wallspeed >= 12)
            {
                state = (83 << 0)
                movespeed = wallspeed
                sprite_index = spr_player_mach4
            }
            else
            {
                state = 0
                vsp = (-wallspeed)
            }
        }
        else if (mach2 < 100)
            state = 63
        else if (mach2 >= 100)
        {
            state = (83 << 0)
            sprite_index = spr_player_mach4
        }
        else
        {
            state = 0
            vsp = (-wallspeed)
        }
    }
    if ((grounded && wallspeed <= 0) || wallspeed <= 0)
    {
        state = (51 << 0)
        sprite_index = spr_fall
    }
    image_speed = 0.6
    if (!instance_exists(obj_cloudeffect))
        instance_create(x, (y + 43), obj_cloudeffect)
    if (key_jump && key_attack)
    {
        if (mach2 >= 100)
        {
            mach2 = 100
            instance_create(x, y, obj_jumpdust)
            vsp = -9
            sprite_index = spr_player_mach4
            state = 83
            if (global.starrmode == 1)
                state = 63
            xscale *= -1
        }
        else
        {
            sprite_index = spr_player_mach2jump
            mach2 = 35
            instance_create(x, y, obj_jumpdust)
            vsp = -9
            state = 63
            xscale *= -1
        }
    }
}

