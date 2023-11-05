bgx++
bgy++
scr_getinput()
switch menu
{
    case "HOME":
        title = "OPTIONS"
        subtitle = "PRESS GRAB TO CLOSE THIS MENU"
        break
    case "VIDEO":
        title = "VIDEO SETTINGS"
        break
}

switch menu
{
    case "HOME":
        if key_jump
        {
            switch select
            {
                case 0:
                    menu = "VIDEO"
                    select = 0
                    break
                case 1:
                case 2:
                    menu = "KEY"
                    select = 0
                    break
            }

        }
        switch select
        {
            case 0:
                arrowy = 97
                break
            case 1:
                arrowy = 192
                break
            case 2:
                arrowy = 288
                break
        }

        if (key_down2 && select < 2)
        {
            select++
            scr_sound(43)
        }
        else if (key_down2 && select == 2)
        {
            select = 0
            scr_sound(43)
        }
        if (key_up2 && select > 0)
        {
            select--
            scr_sound(43)
        }
        else if (key_up2 && select == 0)
        {
            select = 2
            scr_sound(43)
        }
        break
    case "VIDEO":
        if key_jump
        {
            switch select
            {
                case 0:
                    if (global.fullscreen == 0)
                        global.fullscreen = 1
                    else
                        global.fullscreen = 0
                    break
                case 1:
                    if (global.smoothcam == 0)
                        global.smoothcam = 1
                    else
                        global.smoothcam = 0
                    break
                case 2:
                    if (global.screentilt == 0)
                        global.screentilt = 1
                    else
                        global.screentilt = 0
                    break
                case 3:
                    menu = "HOME"
                    select = 0
                    ini_open("saveData.ini")
                    ini_write_real("Settings", "fullscrn", global.fullscreen)
                    ini_write_real("Settings", "smthcam", global.smoothcam)
                    ini_write_real("Settings", "scrntilt", global.screentilt)
                    ini_close()
                    break
            }

        }
        switch select
        {
            case 0:
                arrowy = 97
                break
            case 1:
                arrowy = 192
                break
            case 2:
                arrowy = 288
                break
            case 3:
                arrowy = 450
                break
        }

        if (key_down2 && select < 3)
        {
            select++
            scr_sound(43)
        }
        else if (key_down2 && select == 3)
        {
            select = 0
            scr_sound(43)
        }
        if (key_up2 && select > 0)
        {
            select--
            scr_sound(43)
        }
        else if (key_up2 && select == 0)
        {
            select = 3
            scr_sound(43)
        }
        switch select
        {
            case 0:
                subtitle = "MAKES THE GAME TAKE UP YOUR WHOLE SCREEN"
                break
            case 1:
                subtitle = "SMOOTHS OUT CAMERA MOVEMENT"
                break
            case 2:
                subtitle = "ENABLES SCREEN TILTING DURING ESCAPE"
                break
            case 3:
                subtitle = "LEAVE VIDEO SETTINGS"
                break
        }

        break
    case "AUDIO":
        break
    case "KEY":
        break
    case "MISC":
        break
}

if (key_slap2 && menu == "HOME")
{
    if (room == realtitlescreen)
        obj_mainfartselect.abletomove = 1
    if instance_exists(obj_pause)
        obj_pause.canmove = 1
    instance_destroy()
}
if (global.fullscreen == 1 && window_get_fullscreen() == 0)
    window_set_fullscreen(true)
else if (global.fullscreen == 0 && window_get_fullscreen() == 1)
    window_set_fullscreen(false)
