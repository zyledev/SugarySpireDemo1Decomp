with (obj_player)
{
    if (state != 56)
    {
        scr_sound(sound_superjumprelease)
        sprite_index = spr_player_superjump
        state = 56
        vsp = -10
        other.image_index = 0
        other.image_speed = 0.35
        metal = 0
    }
}
obj_player.x = x
