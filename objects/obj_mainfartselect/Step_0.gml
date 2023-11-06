if abletomove
{
    if ((obj_player.key_right2) && selected > 0)
    {
        scr_sound(sound_step);
        selected--;
    }
    if (-obj_player.key_left2 && selected < 2)
    {
        scr_sound(sound_step);
        selected++;
    }
}
if (obj_player.key_jump2 && selected == 0 && obj_file1.sprite_index != spr_file1confirm)
{
    scr_sound(sound_toppingot);
    abletomove = 0;
    obj_file1.image_index = 0;
    obj_file1.sprite_index = spr_file1confirm;
}
if (obj_player.key_jump2 && selected == 1 && (!instance_exists(obj_options)))
{
    scr_sound(sound_toppingot);
    abletomove = 0;
	//show_message("Uh oh! Options arent implemented yet!")
    instance_create(0, 0, obj_options);
}

var asset = layer_sprite_get_id(layer_get_id("Assets_1"), "graphic_5C74AFEA");
layer_sprite_index(asset, selected);

/*var justfarded = 0
switch selected
{
    case 2:
        justfarded = 96
        break
    case 1:
        justfarded = 480
        break
    case 0:
        justfarded = 828
        break
}

lightX = lerp(lightX, justfarded, 0.2)
*/