if (other.sprite_index == spr_vilething)
{
    hit = 1
    vsp = -20
    hsp = 8
    scr_sound(sound_touchspike)
    instance_create(x, y, obj_bangeffect)
    sprite_index = spr_player_machfreefall
    other.sprite_index = spr_stupidvilethingihatethis
}
