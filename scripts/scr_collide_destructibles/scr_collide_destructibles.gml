function scr_collide_destructibles() //scr_collide_destructibles
{
    if (state == 63 || state == 83 || state == 30 || state == 2 || state == 17 || state == 61 || state == 101 || state == 105 || state == 108 || state == 109 || state == 999 || state == (71 << 0) || state == (54 << 0) || state == (120 << 0))
    {
        if place_meeting((x + hsp), y, obj_destructibles)
        {
            with (instance_place((x + hsp), y, obj_destructibles))
                instance_destroy();
        }
        if place_meeting((x + hsp), y, obj_bigdestructibles)
        {
            with (instance_place((x + hsp), y, obj_bigdestructibles))
                instance_destroy();
        }
    }
    if (state == 67 || state == 70 || state == 108)
    {
        if place_meeting(x, (y + 1), obj_destructibles)
        {
            with (instance_place(x, (y + 1), obj_destructibles))
                instance_destroy();
        }
        if place_meeting(x, (y + 1), obj_bigdestructibles)
        {
            with (instance_place(x, (y + 1), obj_bigdestructibles))
                instance_destroy();
            state = 70
            sprite_index = spr_player_bodyslamland
        }
    }
    if (state == 0 && global.cane == 1 && sprite_index == spr_caneslam)
    {
        if place_meeting(x, (y + 1), obj_destructibles)
        {
            with (instance_place(x, (y + 1), obj_destructibles))
                instance_destroy();
        }
        if place_meeting(x, (y + 1), obj_bigdestructibles)
        {
            with (instance_place(x, (y + 1), obj_bigdestructibles))
                instance_destroy();
        }
    }
    if (sprite_index == spr_null)
    {
        if place_meeting((x + hsp), y, obj_destructibles)
        {
            with (instance_place((x + hsp), y, obj_destructibles))
                instance_destroy();
        }
        if place_meeting((x + hsp), y, obj_bigdestructibles)
        {
            with (instance_place((x + hsp), y, obj_bigdestructibles))
                instance_destroy();
        }
        if place_meeting((x - hsp), y, obj_destructibles)
        {
            with (instance_place((x - hsp), y, obj_destructibles))
                instance_destroy();
        }
        if place_meeting((x - hsp), y, obj_bigdestructibles)
        {
            with (instance_place((x - hsp), y, obj_bigdestructibles))
                instance_destroy();
        }
    }
    if (state == 17 || state == 36 || state == 2)
    {
        if place_meeting(x, (y + 1), obj_destructibles)
        {
            with (instance_place(x, (y + 1), obj_destructibles))
                instance_destroy();
        }
        if place_meeting(x, (y - 1), obj_bigdestructibles)
        {
            with (instance_place(x, (y - 1), obj_bigdestructibles))
                instance_destroy();
        }
    }
    if place_meeting(x, (y + 1), obj_destructibleplatform)
    {
        with (instance_place(x, (y + 1), obj_destructibleplatform))
        {
            falling = 1
            if (falling == 1)
                image_speed = 0.35
        }
    }
    if (state == 51 || state == 56 || state == 63 || state == 83 || state == 999)
    {
        if place_meeting(x, (y - 1), obj_destructibles)
        {
            with (instance_place(x, (y - 1), obj_destructibles))
                instance_destroy();
        }
        if place_meeting(x, (y - 1), obj_bigdestructibles)
        {
            with (instance_place(x, (y - 1), obj_bigdestructibles))
                instance_destroy();
        }
    }
    if (state == 101)
    {
        if place_meeting(x, (y - 1), obj_destructibles)
        {
            with (instance_place(x, (y - 1), obj_destructibles))
                instance_destroy();
        }
        if place_meeting(x, (y - 1), obj_bigdestructibles)
        {
            with (instance_place(x, (y - 1), obj_bigdestructibles))
                instance_destroy();
        }
        if place_meeting(x, (y + 1), obj_destructibles)
        {
            with (instance_place(x, (y + 1), obj_destructibles))
                instance_destroy();
        }
        if place_meeting(x, (y + 1), obj_bigdestructibles)
        {
            with (instance_place(x, (y + 1), obj_bigdestructibles))
                instance_destroy();
        }
    }
    if (state == 15)
    {
        with (obj_bigdestructibles)
        {
            if place_meeting((x - obj_player.hsp), y, obj_player)
            {
				with(obj_player)
				{
	                hsp = ((-xscale) * 4)
	                vsp = -4
	                mach2 = 0
	                image_index = 0
	                sprite_index = choose(spr_player_blockbreak1, spr_player_blockbreak2, spr_player_blockbreak3, spr_player_blockbreak4, spr_player_blockbreak5)
	                state = 50
				}
                instance_destroy();
            }
        }
        with (obj_destructibles)
        {
            if place_meeting((x - obj_player.hsp), y, obj_player)
                instance_destroy();
        }
    }
    with (obj_baddie)
    {
		if(!variable_instance_exists(id, "hsp")) { hsp = 0; } 
		if(!variable_instance_exists(id, "vsp")) { vsp = 0; } 
		if(!variable_instance_exists(id, "state")) { state = 0; } 
		if(!variable_instance_exists(id, "grav")) { grav = 0; } 
		if(!variable_instance_exists(id, "thrown")) { thrown = 0; } 
		if(!variable_instance_exists(id, "flash")) { flash = 0; } 
		if(!variable_instance_exists(id, "movespeed")) { movespeed = 0; } 

        if (place_meeting((x + hsp), y, obj_destructibles) && thrown == 1)
        {
            instance_destroy(instance_place((x + hsp), y, obj_destructibles))
            grav = 0.5
        }
        if (place_meeting((x - hsp), y, obj_destructibles) && thrown == 1)
        {
            instance_destroy(instance_place((x - hsp), y, obj_destructibles))
            grav = 0.5
        }
        if (place_meeting((x + hsp), y, obj_bigdestructibles) && thrown == 1)
        {
            instance_destroy(instance_place((x + hsp), y, obj_bigdestructibles))
            grav = 0.5
        }
        if (place_meeting((x - hsp), y, obj_bigdestructibles) && thrown == 1)
        {
            instance_destroy(instance_place((x - hsp), y, obj_bigdestructibles))
            grav = 0.5
        }
    }
}

