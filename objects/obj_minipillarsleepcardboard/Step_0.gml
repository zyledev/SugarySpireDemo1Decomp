if (global.panic == 0 || instance_exists(obj_cardboardgummy))
{
    sprite_index = spr_cardboardpillaroff
    x = -900
    y = -900
}
else if (global.switchactivated == 1 || global.panic == 1 || !instance_exists(obj_cardboardgummy))
{
    sprite_index = spr_cardboardpillaron
    x = xstart
    y = ystart
}
