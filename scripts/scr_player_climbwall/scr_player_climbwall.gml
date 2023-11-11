function scr_player_climbwall() //scr_player_climbwall
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
	if ((scr_solid(x, y - 1, 1)) && (!(place_meeting(x, y - 1, obj_destructibles))))
	{
		scr_sound(sound_maximumspeedland)
		with (obj_camera)
		{
		    shake_mag = 20
		    shake_mag_acc = (40 / room_speed)
		}
		image_speed = 0.35
		with (obj_baddie)
		{
		    if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
		    {
		        stun = 1
		        alarm[0] = 200
		        ministun = 0
		        vsp = -5
		        hsp = 0
		    }
		}
		flash = 0
		combo = 0
		sprite_index = spr_player_ceilingcrash
		state = 65
		mach2 = 0
		image_index = 0
		instance_create((x + 10), (y + (10 * xscale)), obj_bumpeffect)
	}
    if (((grounded && wallspeed <= 0) || wallspeed <= 0))
    {
        state = (51 << 0)
        sprite_index = spr_fall
    }
	if ((sprite_index == spr_player_ceilingcrash && floor(image_number) >= image_number - 1))
    {
        state = (51 << 0)
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

