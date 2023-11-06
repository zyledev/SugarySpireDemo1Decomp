if (global.panic == 0)
{
    sprite_index = spr_cardboardpillaroff
    x = -900
    y = -900
}
else if (global.switchactivated == 1 || global.panic == 1)
{
    sprite_index = spr_cardboardpillaron
    x = xstart
    y = ystart
}
