if (global.collectsound == 10)
    scr_sound(38)
global.collectsound = 0
global.collect += 10
global.pizzameter += 1
instance_create(x, y, obj_10)
if (global.combo >= 1 && global.combotime < 60)
{
    global.combotime += 2
    global.combofreeze += 2
}
instance_destroy();
