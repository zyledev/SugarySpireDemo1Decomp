with (obj_player)
{
    if (state != 100 && state != (110 << 0) && state != 71 && state != 111 && state != 112)
    {
        state = 100
        //instance_create(x, y, obj_poofeffectcotton)
        sprite_index = spr_cottonidle
    }
}
if (obj_player.state != 100 && obj_player.state != (110 << 0) && obj_player.state != 71 && obj_player.state != 111 && obj_player.state != 112)
    instance_create(obj_player.x, obj_player.y, obj_poofeffect)
