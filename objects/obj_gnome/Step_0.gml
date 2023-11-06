if (place_meeting(x, y, obj_player) && global.treat == 1)
{
    global.treat = 0
    sprite_index = spr_gnomechompskiblowupbegin
    image_xscale *= -1
}
if (sprite_index == spr_gnomechompskiblowupbegin && floor(image_index) == (image_number - 1))
{
    with (instance_nearest(x, y, obj_gnomewall))
        instance_destroy();
    sprite_index = spr_gnomechompskiblowup
}
