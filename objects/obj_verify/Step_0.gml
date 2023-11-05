if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    if (obj_user.message == "PLAYTESTER20212012" && obj_pass.message == "5690T3ST01258")
    {
        with (obj_player)
        {
            targetDoor = "A"
            targetRoom = 59
        }
        if (!instance_exists(obj_fadeout))
        {
            scr_sound(37)
            instance_create(x, y, obj_fadeout)
        }
        global.login = 1
    }
    else
    {
        scr_sound(30)
        with (obj_tv)
        {
            message = "USER AND PASSWORD INCORRECT!"
            showtext = 1
            alarm[0] = 200
        }
    }
}
if (position_meeting(mouse_x, mouse_y, id) && instance_exists(obj_fadeout))
    global.login = 1
