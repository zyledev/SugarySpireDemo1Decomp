function scr_player_Sjump() //scr_player_Sjump
{
    hsp = 0
    mach2 = 0
    jumpAnim = 1
    dashAnim = 1
    landAnim = 0
    moveAnim = 1
    stopAnim = 1
    crouchslideAnim = 1
    crouchAnim = 0
    machhitAnim = 0
    if (sprite_index != spr_null && sprite_index != spr_null)
        move = (key_left + key_right)
    if (move != 0)
        xscale = move
    if (sprite_index == spr_player_superjump || sprite_index == spr_pizzano_sjump)
        vsp--
    if (sprite_index == spr_player_supersidejump || sprite_index == spr_null)
    {
        if (a < 25)
            a += 0.5
        hsp = (xscale * a)
        vsp = 0
    }
    if (sprite_index == spr_pizzano_sjump && floor(image_index) == (image_number - 1))
    {
        sprite_index = spr_pizzano_sjump
        vsp = -15
    }
    if (sprite_index == spr_null && floor(image_index) == (image_number - 1))
    {
        sprite_index = spr_null
        a = 15
    }
    if (sprite_index == spr_null || sprite_index == spr_null)
    {
        vsp = 0
        movespeed = 0
        hsp = 0
    }
    if (scr_solid(x, (y - 1)) && (!(place_meeting(x, (y - 1), obj_destructibles))) && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x - sign(hsp)), y, obj_slope))))
    {
        scr_sound(sound_maximumspeedland)
        a = 0
        if (sprite_index == spr_player_supersidejump)
            sprite_index = spr_player_supersidejumpland
        if (sprite_index == spr_player_superjump)
            sprite_index = spr_player_superjumpland
        if (sprite_index == spr_pizzano_sjump)
            sprite_index = spr_player_superjumpland
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = (30 / room_speed)
        }
        with (obj_baddie)
        {
            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
            {
                image_index = 0
                state = 86
                vsp = -7
                hsp = 0
            }
        }
        image_index = 0
        state = 85
        machhitAnim = 0
    }
    if (sprite_index == spr_null && place_meeting((x + hsp), y, obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))))
    {
        scr_sound(sound_maximumspeedland)
        a = 0
        sprite_index = spr_player_mach3hitwall
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = (30 / room_speed)
        }
        with (obj_baddie)
        {
            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
            {
                image_index = 0
                state = 86
                vsp = -7
                hsp = 0
            }
        }
        image_index = 0
        state = 85
        machhitAnim = 0
    }
    if (vsp > -20)
        vsp = -20
    image_speed = 0.5
    scr_collide_player()
    if (key_attack2 && (!grounded) && vsp < -10 && character == "P")
    {
        if (move != 0)
            xscale = move
        movespeed = 10
        machhitAnim = 0
        state = 83
        flash = 1
        vsp = -12
        sprite_index = spr_player_mach3
        with (instance_create(x, y, obj_jumpdust))
            image_xscale = other.xscale
    }
}

