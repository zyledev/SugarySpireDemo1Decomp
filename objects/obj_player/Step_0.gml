scr_getinput();

scr_characterspr();
scr_playerstate();
with (obj_player)
{
    if (room == realtitlescreen || room == scootercutsceneidk)
        state = (1 << 0);
    if grounded
        groundedcot = 1;
    if (state != 48 && y > (room_height * 1.1) && room != outer_room2)
    {
        x = roomstartx
        y = roomstarty
    }
    if (state == 48 && sprite_index == spr_deathend && y > (room_height + 400))
        game_restart()
    if ((!instance_exists(baddiegrabbedID)) && (state == 39 || (state == 36 && sprite_index != spr_piledriverland) || state == 88))
        state = 0
    if (!((state == (39 << 0) || state == (88 << 0) || state == (36 << 0) || state == (90 << 0))))
        baddiegrabbedID = -4
    if (character == "P")
    {
        if (anger == 0)
            angry = 0
        if (anger > 0)
        {
            angry = 1
            anger -= 1
        }
    }
    if (angry == 1 && sprite_index == spr_idle)
        sprite_index = spr_player_3hpidle
    scr_playersounds()
    if (state == 30)
    {
        if (!audio_is_playing(sound_tumble))
            scr_sound(sound_tumble)
    }
    else
        audio_stop_sound(sound_tumble)
    if (sprite_index == spr_player_winding && state != 0)
        windingAnim = 0
    else
        audio_stop_sound(sound_superjumpcharge2)
    if (state == 111 && sprite_index == spr_cotton_run)
    {
        if (!audio_is_playing(sound_customdash1))
            scr_sound(sound_customdash1)
    }
    else
        audio_stop_sound(sound_customdash1)
    if (state == 111 && sprite_index == spr_cotton_maxrun)
    {
        if (!audio_is_playing(sound_customdash2))
            scr_sound(sound_customdash2)
    }
    else
        audio_stop_sound(sound_customdash2)
    if (suplexmove == 1 && scr_solid(x, (y + 1)))
    {
        suplexmove = 0
        flash = 1
    }
    if (obj_player.state != 15)
        grav = 0.5
    if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
        instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit)
    if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
        sprite_index = spr_vomit2
    if (angry == 1 && (!instance_exists(obj_angrycloud)) && obj_player.state == 0)
        instance_create(x, y, obj_angrycloud)
    if (global.combomode == 0)
    {
        if (global.combotime > 0)
            global.combotime -= 0.5
        if (global.combotime == 0 && global.combo != 0)
            global.combo = 0
    }
    if (global.combomode == 1)
    {
        if (global.combofreeze > 0)
            global.combofreeze -= 0.1
        if (global.combotime > 0 && global.combofreeze == 0)
            global.combotime -= 0.5
        if (global.combotime == 0 && global.combo != 0 && global.combofreeze == 0)
            global.combo = 0
    }
    if (input_buffer_jump < 8)
        input_buffer_jump++
    if (input_buffer_secondjump < 8)
        input_buffer_secondjump++
    if (input_buffer_highjump < 8)
        input_buffer_highjump++
    if (key_particles == 1)
        instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
    if (inv_frames == 0 && hurted == 0)
        image_alpha = 1
    if (state == 63 || state == 88 || state == 37 || state == 17 || state == 8 || state == 6 || state == 11 || state == 18 || state == 20 || state == 27 || state == 33 || state == 27 || state == 30 || state == 83 || state == 67 || state == 56)
        attacking = 1
    else
        attacking = 0
    if (state == 34 || state == 40 || state == 41 || state == 43 || state == 42)
        grabbing = 1
    else
        grabbing = 0
    if (state == 83 || state == 2 || state == 37 || state == 28 || state == 67 || state == 56 || state == 30 || state == 33 || state == 88 || (state == 36 && sprite_index == spr_piledriver) || (state == 36 && sprite_index == spr_player_piledriverstart) || state == 17 || state == 18 || state == 11 || state == 8 || state == 6 || state == 4 || state == 101)
        instakillmove = 1
    else
        instakillmove = 0
    if (flash == 1 && alarm[0] <= 0)
        alarm[0] = (0.15 * room_speed)
    if (state != 83 && state != 64)
        autodash = 0
    if ((state != 51 && state != 60 && state != 5) || vsp < 0)
        fallinganimation = 0
    if (state != 70 && state != 0 && state != 64)
        facehurt = 0
    if (state != 0 && state != 64)
        machslideAnim = 0
    if (state != 0)
    {
        idle = 0
        dashdust = 0
    }
    if (state != 62 && state != 51 && state != 2 && state != 15 && state != 0 && state != 63 && state != 83 && state != 84 && state != 17 && state != 31 && state != 11)
        momemtum = 0
    if (state != 56 && state != 58)
        a = 0
    if (state != 27)
        facestompAnim = 0
    if (state != 67 && state != 27 && state != 36 && state != 70)
        superslam = 0
    if (state != 63)
        machpunchAnim = 0
    if (state != 51)
        ladderbuffer = 0
    if (state != 51)
        stompAnim = 0
    if (toomuchalarm1 > 0)
        toomuchalarm1 -= 1
    if (toomuchalarm1 <= 0 && (state == 83 || state == 2 || state == 63 || state == 15 || state == 88 || (state == 64 && mach2 >= 100) || state == 30 || state == 110 || state == 111 || state == 117 || (state == 26 && mach2 >= 100)))
    {
		with(instance_create(x,y,obj_mach3effect))
		{
	        playerid = other.object_index
	        image_index = (other.image_index - 1)
	        image_xscale = other.xscale
	        sprite_index = other.sprite_index
		}
	    toomuchalarm1 = 6
    }
    if (state != 65 && state != 59 && state != 8 && state != 32 && state != 109 && sprite_index != spr_player_crouchshoot && state != 58 && state != 26 && state != 30 && state != 66 && state != 61 && state != 60)
        mask_index = spr_player_mask
    else
        mask_index = spr_crouchmask
    if (state == 16 || sprite_index == spr_knightpep_start || sprite_index == spr_knightpep_thunder || state == 49 || state == 71 || state == 57 || state == 54 || state == 48)
        cutscene = 1
    else
        cutscene = 0
    if (state != 66)
        hurtsound = 0
    if (((place_meeting(x, y, obj_door) && (!(place_meeting(x, y, obj_doorblocked)))) || place_meeting(x, y, obj_keydoorclock) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == 0)
        instance_create(x, y, obj_uparrow)
    if (state == 63 && (!instance_exists(obj_speedlines)))
        instance_create(x, y, obj_speedlines)
}
scr_collide_destructibles()
if (state != 1 && state != 71 && state != 56 && state != 54 && state != 81 && state != 49 && state != 57 && state != 12 && state != 29 && state != 16 && state != 48 && state != 71)
    scr_collide_player()
if (state == 81)
    scr_collide_player()
if (state != 104)
    bushdetection = 0
if (state != 59)
    crouchjumptimer = 0
if (global.combomode == 1)
{
    if (global.combo >= 5 && global.combotime <= 0.5)
        breakdanceammo += 1
}
if (gumbobpropellercooldown > 0)
    gumbobpropellercooldown--
if (global.starrmode == 1)
{
    if (global.starrmode == 1 && state == (83 << 0))
        movespeed = 12
    else if (state == (83 << 0) && movespeed > 12)
        movespeed = 12
}
if (state == 71 || place_meeting(x, y, obj_hallway) || state == 57)
    global.roomsave = 0
if (state == (90 << 0) && (!floor(image_index)) == (image_number - 1))
{
    with (instance_place(x, y, obj_baddie))
        vsp = 0
    grav = 0
}
if (state == (90 << 0) && floor(image_index) == (image_number - 0))
{
    with (instance_place(x, y, obj_baddie))
        vsp = 0.1
    grav = 0.5
}
if place_meeting(x, y, obj_molasseswater)
    grav = 0.35
else if (!(place_meeting(x, y, obj_molasseswater)))
    grav = 0.5
if (Dashpad_buffer > 0)
    Dashpad_buffer = max((Dashpad_buffer - 1), 0)
if (sprite_index == spr_player_machpunch1 && floor(image_index) == (image_number - 1))
    sprite_index = spr_mach
if (sprite_index == spr_player_machpunch2 && floor(image_index) == (image_number - 1))
    sprite_index = spr_mach
