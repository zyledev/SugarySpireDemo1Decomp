scr_sound(58)
with (obj_baddie)
{
    if (object_index != obj_charcherry)
    {
        if (distance_to_object(obj_parryhitbox.id) < 64)
            instance_destroy();
    }
}
with (obj_player)
{
    state = 105
    sprite_index = spr_player_parry
    image_index = 0
    movespeed = -8
    flash = 1
}
