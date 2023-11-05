with (obj_player)
{
    if (state == (100 << 0) || state == (110 << 0) || state == (111 << 0))
    {
        state = 0
        sprite_index = spr_idle
        instance_create(x, y, obj_poofeffect)
        image_index = 0
    }
}
