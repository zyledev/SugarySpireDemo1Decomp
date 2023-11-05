if place_meeting(x, (y - 1), obj_player)
{
    with (obj_player)
    {
        sprite_index = spr_player_fireass
        state = 118
        image_index = 0
        vsp = -20
        audio_stop_sound(sound_fireass)
        scr_sound(82)
    }
    if (obj_player.state == (100 << 0) || obj_player.state == (110 << 0))
        instance_create(x, y, obj_poofeffect)
}
