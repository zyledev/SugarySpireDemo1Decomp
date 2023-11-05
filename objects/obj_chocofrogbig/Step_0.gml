if (place_meeting((x + 1), y, obj_player) && obj_player.sprite_index == spr_cotton_attack)
{
    instance_destroy()
    with (instance_create(x, y, obj_sausageman_dead))
        sprite_index = spr_chocofrogbig
    instance_create(x, y, obj_poofeffect)
}
if (place_meeting((x - 1), y, obj_player) && obj_player.sprite_index == spr_cotton_attack)
{
    instance_destroy()
    with (instance_create(x, y, obj_sausageman_dead))
        sprite_index = spr_chocofrogbig
    instance_create(x, y, obj_poofeffect)
}
if (place_meeting(x, (y - 1), obj_player) && obj_player.sprite_index == spr_cotton_drill)
{
    instance_destroy()
    with (instance_create(x, y, obj_sausageman_dead))
        sprite_index = spr_chocofrogbig
    instance_create(x, y, obj_poofeffect)
}
if (place_meeting(x, (y + 1), obj_player) || place_meeting(x, (y - 1), obj_player) || place_meeting((x - 1), y, obj_player) || place_meeting((x + 1), y, obj_player))
{
    if (obj_player.state == (20 << 0) && (place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)))
    {
        with (obj_player)
        {
            sprite_index = spr_bombpep_runabouttoexplode
            bombpeptimer = 0
        }
    }
}
