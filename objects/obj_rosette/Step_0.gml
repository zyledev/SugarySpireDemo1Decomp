if (place_meeting(x, y, obj_player) && global.treat == 0)
{
    global.treat = 1
    sprite_index = spr_rosettegivetreat
}
if (global.treat == 0)
    sprite_index = spr_rosette
