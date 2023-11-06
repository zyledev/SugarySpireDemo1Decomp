function scr_enemy_cherrywait() //gml_Script_scr_enemy_cherrywait
{
    image_speed = 0.35;
    if (global.panic == 0)
        sprite_index = spr_charcherry_wait;
    else if (global.panic == 1 && sprite_index != spr_charcherry_popout && sprite_index != spr_cardcherry_getup && obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60))
    {
        image_index = 0;
        sprite_index = spr_charcherry_popout;
		if object_index == obj_cherrycardboard
			sprite_index = spr_cardcherry_getup;
    }
    if (sprite_index == spr_charcherry_popout || sprite_index == spr_cardcherry_getup && floor(image_index) == (image_number - 1))
    {
        state = 200;
        sprite_index = spr_charcherry_run;
		if object_index == obj_cherrycardboard
		{
			sprite_index = spr_cardcherry_idle;
			state = 86;
		}
        movespeed = 8;
    }
}

